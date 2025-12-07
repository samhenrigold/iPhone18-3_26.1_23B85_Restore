void sub_77EB0(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_2CDFE0();
  v8 = sub_2CE670();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    sub_334A0(0, &qword_34DD50, NSObject_ptr);
    v11 = sub_2CE210();
    v13 = sub_3F08(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "UnsupportedValueStrategy#logCoreAnalytics recording result analytics data due to unsupported result: %s", v9, 0xCu);
    sub_306C(v10);
  }

  (*(v3 + 8))(v5, v2);
  v14 = sub_2CE260();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  aBlock[4] = CommonFlowStrategy.makeParameterMetadata(intent:);
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25FA38;
  aBlock[3] = &unk_332848;
  v16 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

uint64_t sub_781C4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v32 = a2;
  v29 = a4;
  v33 = a3;
  v6 = sub_2CE000();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v30 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = __chkstk_darwin(v30);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v17);
  v19 = (&v29 - v18);
  sub_F3F4(a1, &v29 - v18, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35[0] = *v19;
    v36 = 1;
    swift_errorRetain();
    v32(v35);

    return sub_30B8(v35, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v22 = v32;
    v21 = v33;
    sub_14A58(v19, v16, &qword_34C6E8, &unk_2D0FF0);
    sub_7861C(v29, &qword_34FCC0, INPlayMediaIntent_ptr, v11);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v34 + 16))(v8, v23, v6);
    v24 = sub_2CDFE0();
    v25 = sub_2CE690();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "UnsupportedValueStrategy#makeUnsupportedValueOutput successfully created dialog / punchout for unsafeSelfHarm", v26, 2u);
    }

    (*(v34 + 8))(v8, v6);
    sub_F3F4(v16, v14, &qword_34C6E8, &unk_2D0FF0);
    v27 = *&v14[*(v30 + 48)];
    sub_7DE54(v14, v27, v11, v22, v21);

    sub_30B8(v11, &unk_353020, &unk_2D0970);
    sub_30B8(v16, &qword_34C6E8, &unk_2D0FF0);
    v28 = sub_2CA130();
    return (*(*(v28 - 8) + 8))(v14, v28);
  }
}

uint64_t sub_7861C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v28 = a1;
  v5 = sub_2CDAA0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25 = v11;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "CommonNLContextProvider: makeContextForUnsupportedIntent clearing conversation state", v19, 2u);
    v11 = v25;
  }

  (*(v13 + 8))(v15, v12);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2D0770;
  sub_334A0(0, v26, v27);
  *(v20 + 32) = sub_2CA740();
  sub_2C9F80();
  (*(v6 + 104))(v8, enum case for PommesContext.Source.pluginDefined(_:), v5);
  sub_2CDAB0();
  v21 = sub_2CDAC0();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  sub_2C9F20();
  v22 = sub_2CA000();
  return (*(*(v22 - 8) + 56))(a4, 0, 1, v22);
}

uint64_t sub_789F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v3 = sub_2CDAA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2CDFE0();
  v16 = sub_2CE670();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = v9;
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "CommonNLContextProvider: makeContextForUnsupportedIntent clearing conversation state", v17, 2u);
    v9 = v23;
  }

  (*(v11 + 8))(v13, v10);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2D0770;
  type metadata accessor for DetermineIntent();
  *(v18 + 32) = sub_2CA740();
  sub_2C9F80();
  (*(v4 + 104))(v6, enum case for PommesContext.Source.pluginDefined(_:), v3);
  sub_2CDAB0();
  v19 = sub_2CDAC0();
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  sub_2C9F20();
  v20 = sub_2CA000();
  return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
}

uint64_t sub_78DEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void (*a8)(void *), uint64_t a9, char a10, char *a11)
{
  v124 = a8;
  v117 = a7;
  v127 = a6;
  v115 = a5;
  v122 = a3;
  v123 = a4;
  v121 = a2;
  v112 = a1;
  v125 = a9;
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  v120 = &v102 - v12;
  v126 = sub_2CE000();
  v118 = *(v126 - 1);
  v13 = __chkstk_darwin(v126);
  v103 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v113 = &v102 - v15;
  v107 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v108 = *(v107 - 8);
  v16 = __chkstk_darwin(v107);
  v110 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v119 = &v102 - v19;
  v109 = v20;
  __chkstk_darwin(v18);
  v22 = &v102 - v21;
  v23 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v24 = __chkstk_darwin(v23 - 8);
  v114 = (&v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v106 = (&v102 - v26);
  v27 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v27 - 8);
  v105 = &v102 - v28;
  v29 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v29 - 8);
  v116 = &v102 - v30;
  v104 = sub_2CCB30();
  v31 = *(v104 - 8);
  __chkstk_darwin(v104);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2CCAC0();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v38);
  v40 = (&v102 - v39);
  sub_F3F4(v112, &v102 - v39, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v59 = v115;
    sub_14A58(v40, v22, &qword_34C6E8, &unk_2D0FF0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v111 = v22;
    v60 = v126;
    v61 = sub_3ED0(v126, static Logger.default);
    swift_beginAccess();
    v62 = v118[2];
    v62(v113, v61, v60);
    v63 = sub_2CDFE0();
    v64 = sub_2CE690();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_0, v63, v64, "UnsupportedValueStrategy#makeUnsupportedValueOutput successfully created dialog / punchout for GDPR", v65, 2u);
    }

    v116 = a11;

    v66 = v118[1];
    v66(v113, v126);
    v67 = _swiftEmptyArrayStorage;
    v130 = _swiftEmptyArrayStorage;
    if (a10)
    {
      goto LABEL_23;
    }

    v68 = sub_2CCF90();
    v70 = v69;
    v71 = sub_2CBE30();
    if (v70)
    {
      if (v68 == v71 && v70 == v72)
      {

LABEL_17:
        v76 = v103;
        v62(v103, v61, v126);
        v77 = sub_2CDFE0();
        v78 = sub_2CE670();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_0, v77, v78, "UnsupportedValueStrategy#makeUnsupportedValueOutput punching out to Podcasts app for GDPR", v79, 2u);
        }

        v66(v76, v126);
        v80 = [objc_allocWithZone(SAAppsLaunchApp) init];
        sub_2CBE30();
        v81 = sub_2CE260();

        [v80 setLaunchId:v81];

        v82 = v80;
        sub_2CE3F0();
        if (*(&dword_10 + (v130 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v130 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_2CE430();
        }

        sub_2CE460();

        v67 = v130;
        goto LABEL_23;
      }

      v75 = sub_2CEEA0();

      if (v75)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    sub_35E0(v59 + 10, v59[13]);
    sub_2CBC10();
    v67 = _swiftEmptyArrayStorage;
LABEL_23:
    v126 = v67;
    v114 = sub_35E0(v59 + 20, v59[23]);
    v83 = v111;
    v84 = v119;
    sub_F3F4(v111, v119, &qword_34C6E8, &unk_2D0FF0);
    v118 = *(v84 + *(v107 + 48));
    v85 = sub_2CA000();
    (*(*(v85 - 8) + 56))(v120, 1, 1, v85);
    v86 = v83;
    v87 = v110;
    sub_F3F4(v86, v110, &qword_34C6E8, &unk_2D0FF0);
    v88 = (*(v108 + 80) + 80) & ~*(v108 + 80);
    v89 = (v109 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = swift_allocObject();
    v91 = v122;
    v90[2] = v121;
    v90[3] = v91;
    v92 = v123;
    v90[4] = v123;
    v90[5] = v59;
    v93 = v117;
    v90[6] = v127;
    v90[7] = v93;
    v94 = v125;
    v90[8] = v124;
    v90[9] = v94;
    v95 = v93;
    sub_14A58(v87, v90 + v88, &qword_34C6E8, &unk_2D0FF0);
    *(v90 + v89) = v116;

    v96 = v92;

    v97 = v95;

    v99 = v118;
    v98 = v119;
    v100 = v120;
    sub_1C3480(v119, v118, v120, v126, sub_7EE9C, v90);

    sub_30B8(v100, &unk_353020, &unk_2D0970);
    sub_30B8(v111, &qword_34C6E8, &unk_2D0FF0);
    v101 = sub_2CA130();
    return (*(*(v101 - 8) + 8))(v98, v101);
  }

  v41 = *v40;
  (*(v35 + 104))(v37, enum case for AdditionalMetricsDescription.ModuleName.pmuvs(_:), v34);
  v42 = v104;
  (*(v31 + 104))(v33, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v104);
  swift_getErrorValue();
  sub_2CEEF0();
  v123 = sub_2CCAF0();
  v126 = v43;

  (*(v31 + 8))(v33, v42);
  (*(v35 + 8))(v37, v34);
  v44 = v115[18];
  v121 = v115[19];
  v122 = sub_35E0(v115 + 15, v44);
  v45 = enum case for ActivityType.failed(_:);
  v46 = sub_2C9C20();
  v47 = *(v46 - 8);
  v48 = v116;
  (*(v47 + 104))(v116, v45, v46);
  (*(v47 + 56))(v48, 0, 1, v46);
  v49 = sub_2CA130();
  v50 = v105;
  (*(*(v49 - 8) + 56))();
  v51 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v52 = sub_2C98F0();
  v53 = *(v52 - 8);
  v54 = *(v53 + 104);
  v55 = v114;
  v54(v114, v51, v52);
  v56 = *(v53 + 56);
  v56(v55, 0, 1, v52);
  if (sub_2CE740())
  {
    sub_30B8(v114, &qword_34CB78, &unk_2D0D80);
    v57 = v106;
    v54(v106, enum case for SiriKitReliabilityCodes.ampServerError(_:), v52);
    v58 = v57;
    v56(v57, 0, 1, v52);
  }

  else
  {
    v58 = v106;
    sub_14A58(v114, v106, &qword_34CB78, &unk_2D0D80);
  }

  sub_2CE710();
  v73 = v116;
  sub_2CB4E0();

  sub_30B8(v58, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v50, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v73, &qword_34CB88, &unk_2D0D90);
  v128[0] = v41;
  v129 = 1;
  swift_errorRetain();
  v124(v128);

  return sub_30B8(v128, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_79C64(char a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2CDFE0();
  v8 = sub_2CE690();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v7, v8, "UnsupportedValueStrategy#makeUnsupportedValueOutput result of call to requestCapabilities %{BOOL}d", v9, 8u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_79E24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(void *), uint64_t a9, uint64_t a10)
{
  v96 = a8;
  v93 = a7;
  v94 = a6;
  v92 = a5;
  v90 = a4;
  v89 = a3;
  v88 = a2;
  v87 = a1;
  v95 = a9;
  v82 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  __chkstk_darwin(v82);
  v83 = &v79 - v10;
  v79 = sub_2CCB20();
  v11 = *(v79 - 8);
  __chkstk_darwin(v79);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v15 = __chkstk_darwin(v14 - 8);
  v84 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v86 = &v79 - v18;
  v19 = __chkstk_darwin(v17);
  v81 = &v79 - v20;
  __chkstk_darwin(v19);
  v85 = &v79 - v21;
  v22 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v23 = __chkstk_darwin(v22 - 8);
  v80 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v91 = &v79 - v25;
  v26 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v79 - v30;
  v32 = sub_2CCB30();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2CCAC0();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v79 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3F4(v87, &v100, qword_34C798, &qword_2D0DA0);
  if (v101 == 1)
  {
    v40 = v100;
    (*(v37 + 104))(v39, enum case for AdditionalMetricsDescription.ModuleName.pmuvs(_:), v36);
    (*(v33 + 104))(v35, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v32);
    swift_getErrorValue();
    sub_2CEEF0();
    v89 = sub_2CCAF0();
    v90 = v41;

    (*(v33 + 8))(v35, v32);
    (*(v37 + 8))(v39, v36);
    v42 = v92[18];
    v87 = v92[19];
    v88 = sub_35E0(v92 + 15, v42);
    v43 = enum case for ActivityType.failed(_:);
    v44 = sub_2C9C20();
    v45 = *(v44 - 8);
    (*(v45 + 104))(v31, v43, v44);
    v46 = *(v45 + 56);
    v92 = v31;
    v46(v31, 0, 1, v44);
    v47 = sub_2CA130();
    (*(*(v47 - 8) + 56))(v91, 1, 1, v47);
    v48 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v49 = sub_2C98F0();
    v50 = *(v49 - 8);
    v51 = *(v50 + 104);
    v52 = v81;
    v51(v81, v48, v49);
    v53 = *(v50 + 56);
    v53(v52, 0, 1, v49);
    if (sub_2CE740())
    {
      sub_30B8(v52, &qword_34CB78, &unk_2D0D80);
      v54 = v85;
      v51(v85, enum case for SiriKitReliabilityCodes.ampServerError(_:), v49);
      v53(v54, 0, 1, v49);
    }

    else
    {
      v74 = v52;
      v54 = v85;
      sub_14A58(v74, v85, &qword_34CB78, &unk_2D0D80);
    }

    sub_2CE710();
    v75 = v92;
    v76 = v91;
    sub_2CB4E0();

    sub_30B8(v54, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v76, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v75, &qword_34CB88, &unk_2D0D90);
    v97[0] = v40;
    v98 = 1;
    swift_errorRetain();
    v96(v97);

    return sub_30B8(v97, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v87 = a10;
    sub_F338(&v100, v99);
    (*(v37 + 104))(v39, enum case for AdditionalMetricsDescription.ModuleName.pmuvs(_:), v36);
    (*(v33 + 104))(v35, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v32);
    v55 = v79;
    (*(v11 + 104))(v13, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v79);
    v90 = sub_2CCB00();
    v91 = v56;
    (*(v11 + 8))(v13, v55);
    (*(v33 + 8))(v35, v32);
    (*(v37 + 8))(v39, v36);
    v57 = v92[18];
    v89 = v92[19];
    v92 = sub_35E0(v92 + 15, v57);
    v58 = enum case for ActivityType.termConditionCheck(_:);
    v59 = sub_2C9C20();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v29, v58, v59);
    v61 = v29;
    (*(v60 + 56))(v29, 0, 1, v59);
    v62 = v83;
    sub_F3F4(v87, v83, &qword_34C6E8, &unk_2D0FF0);

    v63 = sub_2CA130();
    v64 = *(v63 - 8);
    v65 = v80;
    (*(v64 + 32))(v80, v62, v63);
    v66 = v65;
    (*(v64 + 56))(v65, 0, 1, v63);
    v67 = enum case for SiriKitReliabilityCodes.success(_:);
    v68 = sub_2C98F0();
    v69 = *(v68 - 8);
    v70 = *(v69 + 104);
    v71 = v84;
    v70(v84, v67, v68);
    v72 = *(v69 + 56);
    v72(v71, 0, 1, v68);
    if (sub_2CE740())
    {
      sub_30B8(v71, &qword_34CB78, &unk_2D0D80);
      v73 = v86;
      v70(v86, enum case for SiriKitReliabilityCodes.ampServerError(_:), v68);
      v72(v73, 0, 1, v68);
    }

    else
    {
      v78 = v71;
      v73 = v86;
      sub_14A58(v78, v86, &qword_34CB78, &unk_2D0D80);
    }

    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v73, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v66, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v61, &qword_34CB88, &unk_2D0D90);
    sub_EEAC(v99, v97);
    v98 = 0;
    v96(v97);
    sub_30B8(v97, qword_34C798, &qword_2D0DA0);
    return sub_306C(v99);
  }
}

uint64_t sub_7AB20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v121 = a8;
  v120 = a7;
  v141 = a5;
  v142 = a6;
  v144 = a2;
  v145 = a4;
  v140 = a3;
  v122 = sub_2CCB20();
  v119 = *(v122 - 8);
  __chkstk_darwin(v122);
  v118 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = __chkstk_darwin(v138);
  v125 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v123 = &v115 - v14;
  __chkstk_darwin(v13);
  v143 = &v115 - v15;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v124 = &v115 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v115 - v23;
  __chkstk_darwin(v22);
  v126 = &v115 - v25;
  v26 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v27 = __chkstk_darwin(v26 - 8);
  v136 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v139 = &v115 - v29;
  v30 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v31 = __chkstk_darwin(v30 - 8);
  v135 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v137 = &v115 - v33;
  v128 = sub_2CCB30();
  v134 = *(v128 - 8);
  __chkstk_darwin(v128);
  v131 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2CCAC0();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v127);
  v37 = (&v115 - v36);
  v38 = sub_2CE000();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v116 = &v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v115 - v42;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v44 = sub_3ED0(v38, static Logger.default);
  swift_beginAccess();
  v45 = *(v39 + 16);
  v129 = v38;
  v115 = v45;
  v45(v43, v44, v38);
  v46 = sub_2CDFE0();
  v47 = sub_2CE690();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v117 = a1;
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "UnsupportedValueStrategy#makeUnsupportedValueOutput...", v48, 2u);
    a1 = v117;
  }

  v49 = *(v39 + 8);
  v50 = v129;
  v117 = v39 + 8;
  v49(v43, v129);
  sub_F3F4(a1, v37, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v143 = v24;
    v51 = *v37;
    v52 = v116;
    v115(v116, v44, v50);
    swift_errorRetain();
    v53 = sub_2CDFE0();
    v54 = sub_2CE680();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v146 = v51;
      v147 = v56;
      *v55 = 136446210;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v57 = sub_2CE2A0();
      v59 = sub_3F08(v57, v58, &v147);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_0, v53, v54, "UnsupportedValueStrategy#makeUnsupportedValueOutput makeUnsupportedDialog failed with error: %{public}s", v55, 0xCu);
      sub_306C(v56);
    }

    v49(v52, v50);
    v85 = v132;
    v86 = v130;
    v87 = v133;
    (*(v132 + 104))(v130, enum case for AdditionalMetricsDescription.ModuleName.pmuvs(_:), v133);
    v88 = v134;
    v89 = v131;
    v90 = v128;
    (v134[13])(v131, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v128);
    swift_getErrorValue();
    sub_2CEEF0();
    v138 = sub_2CCAE0();

    (v88[1])(v89, v90);
    (*(v85 + 8))(v86, v87);
    v91 = v144[18];
    v136 = v144[19];
    v144 = sub_35E0(v144 + 15, v91);
    v92 = enum case for ActivityType.failed(_:);
    v93 = sub_2C9C20();
    v94 = *(v93 - 8);
    v95 = v137;
    (*(v94 + 104))(v137, v92, v93);
    (*(v94 + 56))(v95, 0, 1, v93);
    v96 = sub_2CA130();
    (*(*(v96 - 8) + 56))(v139, 1, 1, v96);
    v97 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v98 = sub_2C98F0();
    v99 = *(v98 - 8);
    v100 = *(v99 + 104);
    v101 = v143;
    v100(v143, v97, v98);
    v102 = *(v99 + 56);
    v102(v101, 0, 1, v98);
    if (sub_2CE740())
    {
      sub_30B8(v101, &qword_34CB78, &unk_2D0D80);
      v103 = v126;
      v100(v126, enum case for SiriKitReliabilityCodes.ampServerError(_:), v98);
      v104 = v103;
      v102(v103, 0, 1, v98);
    }

    else
    {
      v104 = v126;
      sub_14A58(v101, v126, &qword_34CB78, &unk_2D0D80);
    }

    sub_2CE710();
    v113 = v139;
    v114 = v137;
    sub_2CB4E0();

    sub_30B8(v104, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v113, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v114, &qword_34CB88, &unk_2D0D90);
    v147 = v51;
    v148 = 1;
    swift_errorRetain();
    v141(&v147);

    return sub_30B8(&v147, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_14A58(v37, v143, &qword_34C6E8, &unk_2D0FF0);
    v60 = v132;
    v61 = v130;
    v62 = v133;
    (*(v132 + 104))(v130, enum case for AdditionalMetricsDescription.ModuleName.pmuvs(_:), v133);
    v63 = v134;
    v64 = v131;
    v65 = v128;
    (v134[13])(v131, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v128);
    v66 = v119;
    v67 = *(v119 + 104);
    v68 = v118;
    v129 = v19;
    v69 = v122;
    v67(v118, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v122);
    v137 = sub_2CCB00();
    v139 = v70;
    (*(v66 + 8))(v68, v69);
    (v63[1])(v64, v65);
    (*(v60 + 8))(v61, v62);
    v134 = sub_35E0(v144 + 15, v144[18]);
    v71 = enum case for ActivityType.resolveSlotUnsupported(_:);
    v72 = sub_2C9C20();
    v73 = *(v72 - 8);
    v74 = v129;
    v75 = v135;
    (*(v73 + 104))(v135, v71, v72);
    (*(v73 + 56))(v75, 0, 1, v72);
    v76 = v123;
    sub_F3F4(v143, v123, &qword_34C6E8, &unk_2D0FF0);

    v77 = sub_2CA130();
    v78 = *(v77 - 8);
    v79 = v136;
    (*(v78 + 32))(v136, v76, v77);
    (*(v78 + 56))(v79, 0, 1, v77);
    v80 = sub_2C98F0();
    v81 = *(v80 - 8);
    v82 = *(v81 + 56);
    v82(v74, 1, 1, v80);
    if (sub_2CE740())
    {
      sub_30B8(v74, &qword_34CB78, &unk_2D0D80);
      v83 = v124;
      (*(v81 + 104))(v124, enum case for SiriKitReliabilityCodes.ampServerError(_:), v80);
      v84 = v83;
      v82(v83, 0, 1, v80);
    }

    else
    {
      v84 = v124;
      sub_14A58(v74, v124, &qword_34CB78, &unk_2D0D80);
    }

    v105 = v145;
    sub_2CE710();
    v106 = v140;
    v107 = v135;
    v108 = v136;
    sub_2CB4E0();

    sub_30B8(v84, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v108, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v107, &qword_34CB88, &unk_2D0D90);
    v109 = v143;
    v110 = v125;
    sub_F3F4(v143, v125, &qword_34C6E8, &unk_2D0FF0);
    v111 = *(v110 + *(v138 + 48));
    sub_7BC24(v110, v111, v106, v105, v141, v142);

    sub_30B8(v109, &qword_34C6E8, &unk_2D0FF0);
    return (*(v78 + 8))(v110, v77);
  }
}

uint64_t sub_7BC24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v112 = a5;
  v113 = a6;
  v120 = a4;
  v106 = a3;
  v8 = sub_20410(&unk_3530C0, &unk_2D0A40);
  __chkstk_darwin(v8 - 8);
  v107 = &v90 - v9;
  v118 = sub_2CD230();
  v110 = *(v118 - 8);
  v10 = __chkstk_darwin(v118);
  v101 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v11;
  __chkstk_darwin(v10);
  v109 = &v90 - v12;
  v13 = sub_2C9B80();
  __chkstk_darwin(v13 - 8);
  v104 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_2CA630();
  v111 = *(v119 - 8);
  v15 = __chkstk_darwin(v119);
  v99 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v16;
  __chkstk_darwin(v15);
  v18 = &v90 - v17;
  v92 = sub_2CB260();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v20 - 8);
  v116 = &v90 - v21;
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v114 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v90 - v26;
  v28 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v96 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v105 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v30;
  __chkstk_darwin(v29);
  v32 = &v90 - v31;
  v33 = sub_2CA130();
  v93 = *(v33 - 8);
  v34 = *(v93 + 16);
  v95 = v33;
  v34(v32, a1);
  v94 = v28;
  v35 = *(v28 + 48);
  v115 = v32;
  *&v32[v35] = a2;
  v36 = qword_34BF58;
  v37 = a2;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v102 = *(v23 + 16);
  v102(v27, v38, v22);
  v39 = sub_2CDFE0();
  v40 = sub_2CE690();
  v41 = os_log_type_enabled(v39, v40);
  v117 = v18;
  v103 = v23;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v121 = v43;
    *v42 = 136446210;
    v44 = sub_2CCCA0();
    v46 = sub_3F08(v44, v45, &v121);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_0, v39, v40, "UnsupportedValueStrategy#createOutput... %{public}s", v42, 0xCu);
    sub_306C(v43);
    v23 = v103;
  }

  v47 = *(v23 + 8);
  v47(v27, v22);
  v48 = v114;
  v49 = v116;
  sub_7861C(v120, &qword_34FCC0, INPlayMediaIntent_ptr, v116);
  v50 = sub_2CB460();
  if (!v50)
  {
    sub_2CB180();
    v50 = sub_2CB170();
  }

  v51 = v50;
  v102(v48, v38, v22);

  v52 = sub_2CDFE0();
  v53 = sub_2CE660();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v102 = v47;
    v56 = v51;
    v57 = v55;
    v121 = v55;
    *v54 = 136315138;
    sub_2CB130();
    v58 = v90;
    sub_2CD3C0();

    v59 = sub_2CB200();
    v61 = v60;
    (*(v91 + 8))(v58, v92);
    v62 = sub_3F08(v59, v61, &v121);

    *(v54 + 4) = v62;
    _os_log_impl(&dword_0, v52, v53, "UnsupportedValueStrategy#createOutput with responseMode = %s", v54, 0xCu);
    sub_306C(v57);
    v51 = v56;

    (v102)(v114, v22);
  }

  else
  {

    v47(v48, v22);
  }

  v63 = v117;
  v64 = sub_2C9B20();
  __chkstk_darwin(v64);
  *(&v90 - 4) = v49;
  *(&v90 - 3) = v51;
  v65 = v115;
  *(&v90 - 2) = v115;
  sub_2CA560();
  v66 = v108;
  sub_35E0((v108 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider), *(v108 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider + 24));
  v67 = v107;
  sub_F1E7C(v106, v120, v107);
  v68 = v49;
  v69 = v110;
  v70 = v118;
  if ((*(v110 + 48))(v67, 1, v118) == 1)
  {
    sub_30B8(v67, &unk_3530C0, &unk_2D0A40);
    sub_35E0((v66 + 160), *(v66 + 184));
    v71 = v105;
    sub_F3F4(v65, v105, &qword_34C6E8, &unk_2D0FF0);
    v72 = *(v71 + *(v94 + 48));
    sub_1C077C(v71, v72, v68, _swiftEmptyArrayStorage, v112, v113);

    (*(v111 + 8))(v63, v119);
    (*(v93 + 8))(v71, v95);
    v73 = v68;
  }

  else
  {
    v114 = *(v69 + 32);
    v74 = v109;
    (v114)(v109, v67, v70);
    v75 = *(v69 + 16);
    v120 = v51;
    v76 = v101;
    v75(v101, v74, v70);
    v77 = v105;
    sub_F3F4(v65, v105, &qword_34C6E8, &unk_2D0FF0);
    v78 = v111;
    v79 = v99;
    (*(v111 + 16))(v99, v63, v119);
    v80 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v81 = (v100 + *(v96 + 80) + v80) & ~*(v96 + 80);
    v82 = (v97 + *(v78 + 80) + v81) & ~*(v78 + 80);
    v83 = swift_allocObject();
    v84 = v76;
    v85 = v118;
    (v114)(v83 + v80, v84, v118);
    v86 = v83 + v81;
    v65 = v115;
    sub_14A58(v77, v86, &qword_34C6E8, &unk_2D0FF0);
    v87 = v79;
    v88 = v119;
    (*(v78 + 32))(v83 + v82, v87, v119);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    (*(v69 + 8))(v109, v85);
    (*(v78 + 8))(v117, v88);
    v73 = v116;
  }

  sub_30B8(v73, &unk_353020, &unk_2D0970);
  return sub_30B8(v65, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_7C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_7C8A0, 0, 0);
}

uint64_t sub_7C8A0()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  sub_2CA080();
  swift_allocObject();
  v0[13] = sub_2CA070();
  v5 = sub_2CD230();
  v0[5] = v5;
  v0[6] = sub_7DDA0(&qword_34CC78, &type metadata accessor for SiriAudioSnippets, &protocol conformance descriptor for SiriAudioSnippets);
  v6 = sub_F390(v0 + 2);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  sub_20410(&unk_351900, &unk_2D0960);
  v7 = swift_allocObject();
  v0[14] = v7;
  *(v7 + 16) = xmmword_2D0770;
  sub_F3F4(v3, v1, &qword_34C6E8, &unk_2D0FF0);
  *(v7 + 32) = *(v1 + *(v2 + 48));
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v1, v8);
  v13 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_2D160;
  v10 = v0[10];
  v11 = v0[7];

  return v13(v11, v0 + 2, v7, v10);
}

uint64_t sub_7CAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_2CB260();
  __chkstk_darwin(v10 - 8);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  sub_F3F4(a2, &v17 - v12, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a4, v9, &qword_34C6E8, &unk_2D0FF0);
  v13 = *&v9[*(v7 + 56)];
  v14 = [v13 catId];

  sub_2CE270();
  sub_2CA590();
  v15 = sub_2CA130();
  return (*(*(v15 - 8) + 8))(v9, v15);
}

uint64_t sub_7CCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_7CD6C, 0, 0);
}

uint64_t sub_7CD6C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  sub_2CA080();
  swift_allocObject();
  v0[13] = sub_2CA070();
  v5 = sub_2CD230();
  v0[5] = v5;
  v0[6] = sub_7DDA0(&qword_34CC78, &type metadata accessor for SiriAudioSnippets, &protocol conformance descriptor for SiriAudioSnippets);
  v6 = sub_F390(v0 + 2);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  sub_20410(&unk_351900, &unk_2D0960);
  v7 = swift_allocObject();
  v0[14] = v7;
  *(v7 + 16) = xmmword_2D0770;
  sub_F3F4(v3, v1, &qword_34C6E8, &unk_2D0FF0);
  *(v7 + 32) = *(v1 + *(v2 + 48));
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v1, v8);
  v13 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_7EF60;
  v10 = v0[10];
  v11 = v0[7];

  return v13(v11, v0 + 2, v7, v10);
}

char *PlayMedia.UnsupportedValueStrategy.deinit()
{

  sub_306C(v0 + 4);

  sub_306C(v0 + 10);
  sub_306C(v0 + 15);
  sub_306C(v0 + 20);
  sub_306C(v0 + 25);
  v1 = OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_featureFlagProvider;
  v2 = sub_2CC2B0();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  sub_306C(&v0[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider]);
  return v0;
}

uint64_t PlayMedia.UnsupportedValueStrategy.__deallocating_deinit()
{
  PlayMedia.UnsupportedValueStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_7D0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for PlayMedia.UnsupportedValueStrategy(0);

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_7D148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for PlayMedia.UnsupportedValueStrategy(0);

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_7D1E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v62 = a7;
  v60 = a6;
  v59 = a5;
  v63 = a4;
  v58 = *v7;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v61 = a3;
  if (a3 == 0x657449616964656DLL && v63 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    v19 = sub_2CCF90();
    if (v20)
    {
      v21 = v20;
      v56 = v19;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v57 = a1;
      v22 = sub_3ED0(v12, static Logger.default);
      swift_beginAccess();
      (*(v13 + 16))(v18, v22, v12);
      v23 = sub_2CDFE0();
      v24 = sub_2CE670();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "UnsupportedValueStrategy#makeUnsupportedValueOutput logCoreAnalytics...", v25, 2u);
      }

      (*(v13 + 8))(v18, v12);
      sub_2CC0E0();
      sub_2CBC60();
      sub_35E0(v64, v65);
      sub_2CBE60();
      v26 = swift_allocObject();
      v26[2] = v56;
      v26[3] = v21;
      v26[4] = a2;
      v27 = a2;
      sub_2CC0C0();

      sub_306C(v64);
      a1 = v57;
    }
  }

  if (sub_2CE790())
  {
    v28 = swift_allocObject();
    v29 = v62;
    *(v28 + 16) = v60;
    *(v28 + 24) = v29;
    *(v28 + 32) = a2;
    *(v28 + 40) = v8;
    *(v28 + 48) = a1;
    v30 = a2;

    v31 = sub_112C0(_swiftEmptyArrayStorage);
    v65 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v66 = &off_3381B8;
    v64[0] = v30;
    v32 = v30;
    sub_24D82C(v31, a1, v64, sub_7DD64, v28);
  }

  else
  {
    if (!sub_2CE750())
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v8;
      *(v47 + 24) = a1;
      v48 = v60;
      *(v47 + 32) = a2;
      *(v47 + 40) = v48;
      v49 = v61;
      *(v47 + 48) = v62;
      *(v47 + 56) = v49;
      v50 = v63;
      v51 = v59;
      *(v47 + 64) = v63;
      *(v47 + 72) = v51;
      *(v47 + 80) = v58;
      v52 = a2;

      sub_19E928(a1, v49, v50, v51, v52, sub_7DCE8, v47);
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v33 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v16, v33, v12);
    v34 = sub_2CDFE0();
    v35 = sub_2CE690();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "UnsupportedValueStrategy#makeUnsupportedValueOutput We need to prompt the user to sign GDPR", v36, 2u);
    }

    (*(v13 + 8))(v16, v12);
    v37 = sub_2CE6F0();
    v57 = v8[2];
    v38 = swift_allocObject();
    v39 = v63;
    *(v38 + 16) = v61;
    *(v38 + 24) = v39;
    v40 = v59;
    *(v38 + 32) = v59;
    *(v38 + 40) = v8;
    *(v38 + 48) = a1;
    *(v38 + 56) = a2;
    v41 = v62;
    *(v38 + 64) = v60;
    *(v38 + 72) = v41;
    v42 = v37;
    *(v38 + 80) = v42;
    *(v38 + 88) = v58;
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0E40;
    *(inited + 32) = 0x61667275536E6163;
    *(inited + 40) = 0xEF7055706F506563;
    v44 = a2;

    v45 = v40;
    if (sub_2CB610() & 1) != 0 || (sub_2CB5F0())
    {
      v46 = 1;
    }

    else
    {
      v46 = sub_2CB630();
    }

    *(inited + 48) = v46 & 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD000000000000027;
    *(inited + 88) = 0x80000000002DB4B0;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = v42;
    v54 = sub_112C0(inited);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v65 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v66 = &off_3381B8;
    v64[0] = v44;
    v55 = v44;
    sub_24D1A8(v54, a1, v64, sub_7DD20, v38);
  }

  return sub_30B8(v64, &qword_34C6C0, &qword_2D0710);
}

uint64_t type metadata accessor for PlayMedia.UnsupportedValueStrategy(uint64_t a1)
{
  result = qword_34DC38;
  if (!qword_34DC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7DA68(uint64_t a1)
{
  result = sub_2CC2B0();
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

uint64_t sub_7DB3C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_7C7FC(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_7DD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7DDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_7DDE8()
{
  result = qword_34FF30;
  if (!qword_34FF30)
  {
    sub_2DB30(&qword_34DD48, &qword_2D5F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34FF30);
  }

  return result;
}

uint64_t sub_7DE54(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v119 = a4;
  v120 = a5;
  v8 = sub_20410(&unk_3530C0, &unk_2D0A40);
  __chkstk_darwin(v8 - 8);
  v113 = &v97 - v9;
  v125 = sub_2CD230();
  v116 = *(v125 - 8);
  v10 = __chkstk_darwin(v125);
  v110 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v11;
  __chkstk_darwin(v10);
  v115 = &v97 - v12;
  v13 = sub_2C9B80();
  __chkstk_darwin(v13 - 8);
  v112 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_2CA630();
  v118 = *(v128 - 8);
  v15 = __chkstk_darwin(v128);
  v108 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v16;
  __chkstk_darwin(v15);
  v18 = &v97 - v17;
  v101 = sub_2CB260();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CE000();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v111 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v97 - v25;
  __chkstk_darwin(v24);
  v28 = &v97 - v27;
  v29 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v102 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v114 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v31;
  __chkstk_darwin(v30);
  v33 = &v97 - v32;
  v34 = sub_2CA130();
  v105 = *(v34 - 8);
  v35 = *(v105 + 16);
  v107 = v34;
  v35(v33, a1);
  v106 = v29;
  v36 = *(v29 + 48);
  v129 = v33;
  *&v33[v36] = a2;
  v37 = qword_34BF58;
  v38 = a2;
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = sub_3ED0(v20, static Logger.default);
  swift_beginAccess();
  v40 = v21[2];
  v123 = v39;
  v121 = v40;
  v40(v28, v39, v20);
  v41 = sub_2CDFE0();
  v42 = sub_2CE690();
  v43 = os_log_type_enabled(v41, v42);
  v124 = v21;
  v127 = v18;
  v117 = a3;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v130 = v45;
    *v44 = 136446210;
    v46 = sub_2CCCA0();
    v48 = sub_3F08(v46, v47, &v130);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_0, v41, v42, "UnsupportedValueStrategy#createSafetySelfHarmOutput... %{public}s", v44, 0xCu);
    sub_306C(v45);
    v21 = v124;
  }

  v122 = v21[1];
  v122(v28, v20);
  v49 = sub_2CB460();
  if (!v49)
  {
    sub_2CB180();
    v49 = sub_2CB170();
  }

  v50 = v49;
  v121(v26, v123, v20);

  v51 = sub_2CDFE0();
  v52 = sub_2CE660();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v98 = v26;
    v55 = v54;
    v130 = v54;
    *v53 = 136315138;
    sub_2CB130();
    v56 = v99;
    sub_2CD3C0();

    v57 = sub_2CB200();
    v58 = v50;
    v60 = v59;
    (*(v100 + 8))(v56, v101);
    v61 = sub_3F08(v57, v60, &v130);
    v50 = v58;

    *(v53 + 4) = v61;
    _os_log_impl(&dword_0, v51, v52, "UnsupportedValueStrategy#createSafetySelfHarmOutput with responseMode = %s", v53, 0xCu);
    sub_306C(v55);

    v62 = v98;
  }

  else
  {

    v62 = v26;
  }

  v122(v62, v20);
  v63 = v127;
  v64 = v113;
  v65 = sub_2C9B30();
  __chkstk_darwin(v65);
  v66 = v117;
  *(&v97 - 4) = v117;
  *(&v97 - 3) = v50;
  v67 = v129;
  *(&v97 - 2) = v129;
  sub_2CA560();
  sub_35E0((v126 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider), *(v126 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider + 24));
  sub_F2CA4(v64);
  v68 = v116;
  v69 = v125;
  if ((*(v116 + 48))(v64, 1, v125) == 1)
  {
    sub_30B8(v64, &unk_3530C0, &unk_2D0A40);
    v70 = v111;
    v121(v111, v123, v20);
    v71 = sub_2CDFE0();
    v72 = sub_2CE680();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v130 = v74;
      *v73 = 136446210;
      v75 = sub_2CCCA0();
      v77 = sub_3F08(v75, v76, &v130);
      v67 = v129;

      *(v73 + 4) = v77;
      _os_log_impl(&dword_0, v71, v72, "UnsupportedValueStrategy#createSafetySelfHarmOutput snippet generation failed! %{public}s", v73, 0xCu);
      sub_306C(v74);

      v78 = v111;
    }

    else
    {

      v78 = v70;
    }

    v122(v78, v20);
    sub_35E0((v126 + 160), *(v126 + 184));
    v94 = v114;
    sub_F3F4(v67, v114, &qword_34C6E8, &unk_2D0FF0);
    v95 = *(v94 + *(v106 + 48));
    sub_1C077C(v94, v95, v66, _swiftEmptyArrayStorage, v119, v120);

    (*(v118 + 8))(v63, v128);
    (*(v105 + 8))(v94, v107);
  }

  else
  {
    v124 = *(v68 + 32);
    v79 = v115;
    (v124)(v115, v64, v69);
    v80 = v110;
    (*(v68 + 16))(v110, v79, v69);
    v81 = v114;
    sub_F3F4(v67, v114, &qword_34C6E8, &unk_2D0FF0);
    v82 = v118;
    v83 = v108;
    (*(v118 + 16))(v108, v63, v128);
    v84 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v85 = *(v102 + 80);
    v126 = v50;
    v86 = (v109 + v85 + v84) & ~v85;
    v87 = (v103 + *(v82 + 80) + v86) & ~*(v82 + 80);
    v88 = swift_allocObject();
    v89 = v88 + v84;
    v67 = v129;
    v90 = v80;
    v91 = v125;
    (v124)(v89, v90, v125);
    sub_14A58(v81, v88 + v86, &qword_34C6E8, &unk_2D0FF0);
    v92 = v83;
    v93 = v128;
    (*(v82 + 32))(v88 + v87, v92, v128);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    (*(v68 + 8))(v115, v91);
    (*(v82 + 8))(v127, v93);
  }

  return sub_30B8(v67, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_7EADC()
{
  v0 = sub_2CD230();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v5 = (v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = sub_2CA630();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v8 + 64);
  (*(v1 + 8))(v13 + v2, v0);
  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v13 + v5, v10);

  (*(v8 + 8))(v13 + v9, v7);

  return _swift_deallocObject(v13, v9 + v12);
}

uint64_t sub_7ECF0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24C84;

  return sub_7CCC8(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_7EF68(void *a1)
{
  if (!a1[2])
  {
    return 0;
  }

  v1 = a1[4];

  return v1;
}

uint64_t sub_7EFAC(void *a1)
{
  if (!a1[2])
  {
    return 0;
  }

  v1 = a1[4];

  return v1;
}

uint64_t sub_7F014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2CAB40();
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    (*(v10 + 16))(a2, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v5);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t sub_7F104(uint64_t a1)
{
  v2 = sub_2CEC20();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_7FF74(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t static ShazamKitMatch.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ShazamKitMatch.supportsSecureCoding = a1;
  return result;
}

uint64_t ShazamKitMatch.skId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShazamKitMatch.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShazamKitMatch.subtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ShazamKitMatch.artist.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ShazamKitMatch.appleMusicID.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ShazamKitMatch.lyricsSnippet.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t ShazamKitMatch.genre.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t ShazamKitMatch.isrc.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc);

  return v1;
}

void *ShazamKitMatch.init(matchedSong:)(void *a1)
{
  v3 = sub_20410(&unk_3519B0, &qword_2D1230);
  v4 = __chkstk_darwin(v3 - 8);
  v87 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v84 - v8;
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v13 = &v84 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v84 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v84 - v18;
  __chkstk_darwin(v17);
  v23 = &v84 - v22;
  if (a1)
  {
    v85 = v21;
    v86 = v20;
    v24 = [a1 shazamID];
    if (v24)
    {
      v25 = v24;
      v26 = sub_2CE270();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v1[2] = v26;
    v1[3] = v28;
    v29 = [a1 title];
    if (v29)
    {
      v30 = v29;
      v31 = sub_2CE270();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v1[4] = v31;
    v1[5] = v33;
    v34 = [a1 subtitle];
    if (v34)
    {
      v35 = v34;
      v36 = sub_2CE270();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v1[6] = v36;
    v1[7] = v38;
    v39 = [a1 artist];
    if (v39)
    {
      v40 = v39;
      v41 = sub_2CE270();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v1[8] = v41;
    v1[9] = v43;
    v44 = [a1 appleMusicID];
    if (v44)
    {
      v45 = v44;
      v46 = sub_2CE270();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v1[10] = v46;
    v1[11] = v48;
    v49 = [a1 lyricsSnippet];
    if (v49)
    {
      v50 = v49;
      v51 = sub_2CE270();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    v1[12] = v51;
    v1[13] = v53;
    v54 = [a1 genres];
    v55 = sub_2CE410();

    if (v55[2])
    {
      v56 = v55[4];
      v57 = v55[5];
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    v1[14] = v56;
    v1[15] = v57;
    v58 = [a1 webURL];
    if (v58)
    {
      v59 = v58;
      sub_2C8D60();

      v60 = sub_2C8D90();
      (*(*(v60 - 8) + 56))(v19, 0, 1, v60);
    }

    else
    {
      v61 = sub_2C8D90();
      (*(*(v61 - 8) + 56))(v19, 1, 1, v61);
    }

    sub_7FD30(v19, v23);
    sub_7FD30(v23, v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_webURL);
    v62 = [a1 artworkURL];
    if (v62)
    {
      v63 = v62;
      sub_2C8D60();

      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    v65 = sub_2C8D90();
    v66 = *(*(v65 - 8) + 56);
    v67 = 1;
    v66(v13, v64, 1, v65);
    sub_7FD30(v13, v16);
    sub_7FD30(v16, v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_artworkURL);
    v68 = [a1 videoURL];
    if (v68)
    {
      v69 = v68;
      sub_2C8D60();

      v67 = 0;
    }

    v70 = 1;
    v66(v9, v67, 1, v65);
    v71 = v85;
    sub_7FD30(v9, v85);
    sub_7FD30(v71, v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_videoURL);
    v72 = [a1 appleMusicURL];
    v73 = v87;
    if (v72)
    {
      v74 = v72;
      sub_2C8D60();

      v70 = 0;
    }

    v66(v73, v70, 1, v65);
    v75 = v86;
    sub_7FD30(v73, v86);
    sub_7FD30(v75, v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_appleMusicURL);
    v76 = [a1 explicitContent];
    *(v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_explicitContent) = v76;
    v77 = [a1 isrc];
    if (v77)
    {
      v78 = v77;
      v79 = sub_2CE270();
      v81 = v80;
    }

    else
    {

      v79 = 0;
      v81 = 0;
    }

    v82 = (v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc);
    *v82 = v79;
    v82[1] = v81;
  }

  else
  {
    type metadata accessor for ShazamKitMatch(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

void *ShazamKitMatch.deinit()
{

  sub_7FDA0(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_webURL);
  sub_7FDA0(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_artworkURL);
  sub_7FDA0(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_videoURL);
  sub_7FDA0(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_appleMusicURL);

  return v0;
}

uint64_t ShazamKitMatch.__deallocating_deinit()
{
  ShazamKitMatch.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_7FC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3519B0, &qword_2D1230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ShazamKitMatch(uint64_t a1)
{
  result = qword_34DD88;
  if (!qword_34DD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7FD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3519B0, &qword_2D1230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7FDA0(uint64_t a1)
{
  v2 = sub_20410(&unk_3519B0, &qword_2D1230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_7FE10(uint64_t a1)
{
  sub_7FEC8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_7FEC8(uint64_t a1)
{
  if (!qword_34DD98)
  {
    sub_2C8D90();
    v1 = sub_2CEB90();
    if (!v2)
    {
      atomic_store(v1, &qword_34DD98);
    }
  }
}

uint64_t sub_7FF20(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_7FF74(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_7FFC8()
{

  sub_306C(v0 + 4);
  sub_306C(v0 + 9);

  sub_306C(v0 + 15);

  return swift_deallocClassInstance();
}

uint64_t _s27NeedsDisambiguationStrategyCMa_0(uint64_t a1)
{
  result = qword_34DEA8;
  if (!qword_34DEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static AudioAceOutputHelper.makeCompletionViewOutput(templateResult:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:disableDeviceRacing:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v80 = a2;
  v81 = a6;
  LODWORD(v84) = a5;
  v83 = a4;
  v16 = a10;
  v79 = a11;
  v76 = sub_2CA3C0();
  v17 = *(v76 - 8);
  v18 = __chkstk_darwin(v76);
  v75 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v68 - v20;
  v82 = sub_2C8E80();
  v22 = *(v82 - 8);
  __chkstk_darwin(v82);
  v24 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_81330();
  v72 = a9;
  if (v25)
  {
    if (a3 >> 62)
    {
      goto LABEL_31;
    }

    if (!*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_32;
    }

    goto LABEL_4;
  }

  v68[3] = a3;
  v31 = sub_2CA100();
  a3 = *(v31 + 16);
  if (a3)
  {
    v69 = a10;
    v68[1] = a7;
    v68[2] = a8;
    v86 = _swiftEmptyArrayStorage;
    v79 = v31;
    sub_2CED20();
    v32 = v79;
    v16 = 0;
    v33 = 0;
    v34 = *(v79 + 16);
    v77 = (v22 + 8);
    v78 = v34;
    v74 = (v17 + 88);
    v73 = enum case for BehaviorAfterSpeaking.dingAndListen(_:);
    v70 = (v17 + 96);
    v71 = (v17 + 8);
    while (1)
    {
      if (v78 == v33)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        if (!sub_2CEDA0())
        {
LABEL_32:
          v69 = v16;
          v60 = a1;
          v61 = [objc_allocWithZone(SAUIAddDialogs) init];
          sub_2C8E70();
          sub_2C8E50();
          (*(v22 + 8))(v24, v82);
          v62 = sub_2CE260();

          [v61 setAceId:v62];

          sub_81D44(v60, v84 & 1);
          sub_334A0(0, &qword_34DFC8, SADialog_ptr);
          isa = sub_2CE400().super.isa;

          [v61 setDialogs:isa];

          sub_334A0(0, &qword_353110, NSNumber_ptr);
          v64 = sub_2CEB10(v83 & 1).super.super.isa;
          [v61 setListenAfterSpeaking:v64];

          sub_2CA0E0();
          v65 = v76;
          if ((*(v17 + 88))(v21, v76) == enum case for BehaviorAfterSpeaking.dingAndListen(_:))
          {
            (*(v17 + 96))(v21, v65);
            v66 = [objc_allocWithZone(SAUIListenAfterSpeakingBehavior) init];
            v67 = sub_2CE260();

            [v66 setStartAlertSoundID:v67];

            [v61 setListenAfterSpeakingBehavior:v66];
          }

          else
          {
            (*(v17 + 8))(v21, v65);
          }

          if (v79)
          {
            [v61 setRequestEndBehavior:?];
          }

          sub_2C9E10();

          return;
        }

LABEL_4:
        v26 = sub_81D44(a1, v84 & 1);
        v27 = sub_82014(v26, a3, v83 & 1);

        v28 = sub_2CE270();
        v84 = sub_829E4(v28, v29, v27, _swiftEmptyArrayStorage);

        sub_2C9E30();
        v30 = v84;

        return;
      }

      if (v33 >= *(v32 + 16))
      {
        goto LABEL_29;
      }

      v17 = *(v32 + v16 + 40);
      v35 = objc_allocWithZone(SAUIAssistantUtteranceView);

      v36 = a1;
      v37 = [v35 init];
      sub_2C8E70();
      sub_2C8E50();
      (*v77)(v24, v82);
      v38 = sub_2CE260();

      [v37 setAceId:v38];

      sub_2CA0D0();
      v39 = sub_2CE260();

      [v37 setDialogIdentifier:v39];

      v40 = sub_2CE260();
      [v37 setText:v40];

      v41 = v37;
      a1 = v36;
      v21 = v41;
      [v41 setCanUseServerTTS:v84 & 1];
      [v21 setDisableDeviceRacing:v81 & 1];
      if (v80)
      {
        v22 = *(sub_2CA110() + 16);

        if (v33 < v22)
        {
          if (v33 >= *(sub_2CA110() + 16))
          {
            goto LABEL_30;
          }

          a1 = v36;

          v42 = sub_2CE260();

          [v21 setSpeakableText:v42];
        }
      }

      if ((v83 & 1) != 0 && (v43 = *(sub_2CA100() + 16), , v33 == v43 - 1))
      {
        sub_334A0(0, &qword_353110, NSNumber_ptr);
        v44 = sub_2CEB10(1).super.super.isa;
        [v21 setListenAfterSpeaking:v44];

        v45 = v75;
        sub_2CA0E0();
        v46 = v45;
        v47 = v45;
        v48 = v76;
        v49 = (*v74)(v47, v76);
        if (v49 != v73)
        {

          (*v71)(v46, v48);

          goto LABEL_11;
        }

        (*v70)(v46, v48);
        v50 = [objc_allocWithZone(SAUIListenAfterSpeakingBehavior) init];
        v51 = sub_2CE260();

        [v50 setStartAlertSoundID:v51];

        [v21 setListenAfterSpeakingBehavior:v50];

        a1 = v36;
      }

      else
      {
      }

LABEL_11:
      ++v33;
      sub_2CED00();
      v22 = v86[2];
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      v16 += 16;
      v32 = v79;
      if (a3 == v33)
      {

        v52 = v86;
        goto LABEL_25;
      }
    }
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_25:
  v53 = SAUIDialogPhaseCompletionValue;
  v54 = objc_allocWithZone(SAUIAddViews);
  v55 = v53;
  v56 = [v54 init];
  if (v52 >> 62)
  {
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);

    v57 = sub_2CED90();
  }

  else
  {

    sub_2CEEB0();
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);
    v57 = v52;
  }

  v85 = v57;

  sub_80E58(v58, sub_80FF0);
  sub_80E58(_swiftEmptyArrayStorage, sub_80FF0);
  sub_334A0(0, &qword_34CD10, SAAceView_ptr);
  v59 = sub_2CE400().super.isa;

  [v56 setViews:v59];

  [v56 setDialogPhase:v55];
  sub_2C9E30();
}

uint64_t sub_80B10(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_B8FA8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_80C08(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_B91D0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_2C9BA0();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_80D34(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_B90C4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_80E58(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2CEDA0();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v2 >> 62))
  {
    v6 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_2CEDA0();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_80F50(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_80F50(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
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

  sub_2CEDA0();
LABEL_9:
  result = sub_2CECE0();
  *v2 = result;
  return result;
}

uint64_t sub_80FF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2CEDA0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_2CEDA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_82AFC(&qword_34DFF0, &qword_34DFE8, &qword_2D1D38);
          for (i = 0; i != v6; ++i)
          {
            sub_20410(&qword_34DFE8, &qword_2D1D38);
            v9 = sub_205994(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_334A0(0, &qword_34CD10, SAAceView_ptr);
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

uint64_t sub_81190(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2CEDA0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_2CEDA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_82AFC(&qword_34DFD8, &qword_34DFD0, &qword_2D1D28);
          for (i = 0; i != v6; ++i)
          {
            sub_20410(&qword_34DFD0, &qword_2D1D28);
            v9 = sub_205A20(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_334A0(0, &unk_351910, SFCardSection_ptr);
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

uint64_t sub_81330()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = sub_20410(&qword_34DFF8, &qword_2D1D40);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  if (sub_2CB460())
  {
    sub_2CB140();

    sub_2CB2C0();

    v10 = sub_2CB3A0();
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) != 1)
    {
      sub_30B8(v9, &qword_34DFF8, &qword_2D1D40);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v11 = sub_3ED0(v0, static Logger.default);
      swift_beginAccess();
      (*(v1 + 16))(v4, v11, v0);
      v12 = sub_2CDFE0();
      v13 = sub_2CE670();
      if (!os_log_type_enabled(v12, v13))
      {
        v15 = 0;
        goto LABEL_19;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "AceOutputHelper found a setting for personalDomainsAuthenticationMode. Assuming companion mode and not generating Modes compatible output.", v14, 2u);
      v15 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v16 = sub_2CB3A0();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  sub_30B8(v9, &qword_34DFF8, &qword_2D1D40);
  if (sub_2CB610() & 1) != 0 || (sub_2CB5F0() & 1) != 0 || (sub_2CB600())
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_2CB640();
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v6, v17, v0);
  v12 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (!os_log_type_enabled(v12, v18))
  {
    v4 = v6;
    goto LABEL_19;
  }

  v19 = swift_slowAlloc();
  *v19 = 67109120;
  *(v19 + 4) = v15 & 1;
  _os_log_impl(&dword_0, v12, v18, "AceOutputHelper will use Modes compatible output: %{BOOL}d", v19, 8u);
  v4 = v6;
LABEL_16:

LABEL_19:

  (*(v1 + 8))(v4, v0);
  return v15 & 1;
}

id sub_81754(uint64_t a1, int a2)
{
  LODWORD(v40) = a2;
  v2 = sub_20410(&qword_34DFE0, &qword_2D1D30);
  __chkstk_darwin(v2 - 8);
  v42 = v39 - v3;
  v4 = sub_2C9DB0();
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  v6 = __chkstk_darwin(v4);
  v43 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v41 = v39 - v9;
  __chkstk_darwin(v8);
  v11 = v39 - v10;
  v12 = sub_2C8E80();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(SADialog) init];
  sub_2C8E70();
  sub_2C8E50();
  v17 = *(v13 + 8);
  v17(v15, v12);
  v18 = sub_2CE260();

  [v16 setAceId:v18];

  sub_2CA1E0();
  v19 = sub_2CE260();

  [v16 setDialogIdentifier:v19];

  [v16 setSpokenOnly:sub_2CA1D0() & 1];
  [v16 setCanUseServerTTS:v40 & 1];
  v20 = [objc_allocWithZone(SADialogText) init];
  sub_2C8E70();
  sub_2C8E50();
  v39[1] = v13 + 8;
  v40 = v12;
  v39[0] = v17;
  v17(v15, v12);
  v21 = sub_2CE260();

  [v20 setAceId:v21];

  sub_2CA200();
  sub_2C9DA0();
  v22 = *(v45 + 8);
  v23 = v11;
  v24 = v44;
  v22(v23, v44);
  v25 = sub_2CE260();

  [v20 setText:v25];

  v26 = v24;
  v27 = v41;
  sub_2CA200();
  sub_2C9D90();
  v29 = v28;
  v41 = v22;
  v22(v27, v26);
  if (v29)
  {
    v30 = sub_2CE260();
  }

  else
  {
    v30 = 0;
  }

  [v20 setSpeakableTextOverride:v30];

  [v16 setContent:v20];
  v31 = v42;
  sub_2CA1F0();
  v32 = v45;
  if ((*(v45 + 48))(v31, 1, v26) == 1)
  {

    sub_30B8(v31, &qword_34DFE0, &qword_2D1D30);
  }

  else
  {
    (*(v32 + 32))(v43, v31, v26);
    v33 = [objc_allocWithZone(SADialogText) init];
    sub_2C8E70();
    sub_2C8E50();
    (v39[0])(v15, v40);
    v34 = sub_2CE260();

    [v33 setAceId:v34];

    sub_2C9DA0();
    v35 = sub_2CE260();

    [v33 setText:v35];

    sub_2C9D90();
    if (v36)
    {
      v37 = sub_2CE260();
    }

    else
    {
      v37 = 0;
    }

    [v33 setSpeakableTextOverride:v37];

    [v16 setCaption:v33];
    (v41)(v43, v44);
  }

  return v16;
}

void *sub_81D44(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_2CA210();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CA120();
  v8 = *(v7 + 16);
  if (v8)
  {
    v16 = _swiftEmptyArrayStorage;
    sub_2CED20();
    v9 = *(v4 + 16);
    v10 = *(v4 + 80);
    v13 = v7;
    v11 = v7 + ((v10 + 32) & ~v10);
    v14 = *(v4 + 72);
    v15 = v9;
    do
    {
      v15(v6, v11, v3);
      sub_81754(v6, v2 & 1);
      (*(v4 + 8))(v6, v3);
      sub_2CED00();
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      v11 += v14;
      --v8;
    }

    while (v8);

    return v16;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_81F00(void x0_0, uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (!(*v4 >> 62))
    {
      v8 = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_2CEDA0();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_80F50(result, 1);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*(&dword_18 + (v11 & 0xFFFFFFFFFFFFFF8)) >> 1) - *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_334A0(0, &qword_34CD10, SAAceView_ptr);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_82014(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v71 = a3;
  v72 = a1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v69 = v4;
  v70 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v67 = &v64 - v10;
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v68 = a2 >> 62;
  v13 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    goto LABEL_90;
  }

  v14 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v15 = 0;
  v16 = a2 & 0xC000000000000001;
  while (v14 != v15)
  {
    if (v16)
    {
      v17 = sub_2CECD0();
    }

    else
    {
      if (v15 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_88;
      }

      v17 = *(a2 + 8 * v15 + 32);
    }

    v18 = v17;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v14 = sub_2CEDA0();
      goto LABEL_3;
    }

    v19 = [v17 dialog];

    ++v15;
    if (v19)
    {

      if (qword_34BF58 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_93;
    }
  }

  v20 = v72;
  v64 = v72 >> 62;
  if (v72 >> 62)
  {
    v21 = sub_2CEDA0();
  }

  else
  {
    v21 = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
  }

  v22 = v69;
  v8 = v70;
  if (v68)
  {
    v23 = sub_2CEDA0();
  }

  else
  {
    v23 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v66 = v21;
  if (v23 < v21)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v22, static Logger.default);
    swift_beginAccess();
    (*(v70 + 16))(v12, v30, v22);
    v20 = v72;

    v31 = sub_2CDFE0();
    v32 = sub_2CE680();
    if (os_log_type_enabled(v31, v32))
    {
      v65 = v14;
      v33 = swift_slowAlloc();
      *v33 = 134218240;
      if (v64)
      {
        v34 = sub_2CEDA0();
      }

      else
      {
        v34 = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
      }

      *(v33 + 4) = v34;

      *(v33 + 12) = 2048;
      if (v68)
      {
        v35 = sub_2CEDA0();
      }

      else
      {
        v35 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
      }

      *(v33 + 14) = v35;

      _os_log_impl(&dword_0, v31, v32, "AceOutputHelper is applying dialogs to snippets but there are %ld dialogs and %ld snippets. We will attempt to attach dialogs to as many snippets as possible and add empty AceViews as needed.", v33, 0x16u);

      v20 = v72;
      v14 = v65;
    }

    else
    {
    }

    v8 = v70;
    (*(v70 + 8))(v12, v22);
    v21 = v66;
  }

  if (v21 < 0)
  {
    __break(1u);
LABEL_93:
    swift_once();
LABEL_17:
    v24 = v69;
    v25 = sub_3ED0(v69, static Logger.default);
    swift_beginAccess();
    v26 = v70;
    (*(v70 + 16))(v8, v25, v24);
    v27 = sub_2CDFE0();
    v28 = sub_2CE660();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "AceOutputHelper detected SADialogs on one or more snippets. Declining to modify provided snippets", v29, 2u);
    }

    (*(v26 + 8))(v8, v24);

    return a2;
  }

  v36 = _swiftEmptyArrayStorage;
  if (!v21)
  {
    goto LABEL_56;
  }

  v65 = v14;
  v37 = v23;
  v74[0] = _swiftEmptyArrayStorage;
  v12 = v74;
  sub_2CED20();
  v38 = v20 & 0xC000000000000001;
  v8 = 4;
  v39 = v21;
  do
  {
    if (v8 - 4 < v37)
    {
      if (v16)
      {
        v40 = sub_2CECD0();
        if (!v38)
        {
LABEL_43:
          v41 = *(v72 + 8 * v8);
LABEL_44:
          v42 = v41;
          [v40 setDialog:{v41, v64}];

          if (v16)
          {
            v43 = sub_2CECD0();
          }

          else
          {
            v43 = *(a2 + 8 * v8);
          }

          v48 = v43;
          sub_334A0(0, &qword_353110, NSNumber_ptr);
          isa = sub_2CEB10(v71 & 1).super.super.isa;
          [v48 setListenAfterSpeaking:isa];

          if (v16)
          {
            sub_2CECD0();
          }

          else
          {
            v50 = *(a2 + 8 * v8);
          }

          goto LABEL_38;
        }
      }

      else
      {
        if ((v8 - 4) >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_89;
        }

        v40 = *(a2 + 8 * v8);
        if (!v38)
        {
          goto LABEL_43;
        }
      }

      v41 = sub_2CECD0();
      goto LABEL_44;
    }

    v44 = [objc_allocWithZone(SAAceView) init];
    if (v38)
    {
      v45 = sub_2CECD0();
    }

    else
    {
      v45 = *(v72 + 8 * v8);
    }

    v46 = v45;
    [v44 setDialog:{v45, v64}];

    sub_334A0(0, &qword_353110, NSNumber_ptr);
    v47 = sub_2CEB10(v71 & 1).super.super.isa;
    [v44 setListenAfterSpeaking:v47];

LABEL_38:
    v12 = v74;
    sub_2CED00();
    sub_2CED30();
    sub_2CED40();
    sub_2CED10();
    ++v8;
    --v39;
  }

  while (v39);
  v36 = v74[0];
  v22 = v69;
  v8 = v70;
  v23 = v37;
  v14 = v65;
  v21 = v66;
LABEL_56:
  if (v21 >= v23)
  {
    return v36;
  }

  v71 = v36;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v51 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v52 = v8;
  (*(v8 + 16))(v67, v51, v22);

  v53 = sub_2CDFE0();
  v54 = sub_2CE670();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134218240;
    if (v64)
    {
      v56 = sub_2CEDA0();
    }

    else
    {
      v56 = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
    }

    *(v55 + 4) = v56;

    *(v55 + 12) = 2048;
    if (v68)
    {
      v57 = sub_2CEDA0();
    }

    else
    {
      v57 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    }

    *(v55 + 14) = v57;

    _os_log_impl(&dword_0, v53, v54, "AceOutputHelper received %ld dialogs but there are %ld snippets. Adding remaining snippets without dialog.", v55, 0x16u);

    v21 = v66;
  }

  else
  {
  }

  result = (*(v52 + 8))(v67, v22);
  if (v14 < v21)
  {
    __break(1u);
    goto LABEL_95;
  }

  if (v68)
  {
    goto LABEL_73;
  }

  result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  if (result >= v21)
  {
LABEL_75:
    if (result >= v14)
    {
      if (!v16 || v21 == v14)
      {

        if (!v68)
        {
LABEL_82:
          v61 = v13 + 32;
          v62 = (2 * v14) | 1;
LABEL_85:
          v73 = v71;
          sub_81F00(v13, v61, v21, v62);
          swift_unknownObjectRelease();
          return v73;
        }
      }

      else
      {
        if (v21 >= v14)
        {
          goto LABEL_97;
        }

        sub_334A0(0, &qword_34CD10, SAAceView_ptr);

        v59 = v21;
        do
        {
          v60 = v59 + 1;
          sub_2CECC0(v59);
          v59 = v60;
        }

        while (v14 != v60);
        if (!v68)
        {
          goto LABEL_82;
        }
      }

      v13 = sub_2CEDB0();
      v21 = v63;
      goto LABEL_85;
    }

LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  __break(1u);
LABEL_73:
  result = sub_2CEDA0();
  if (result >= v21)
  {
    result = sub_2CEDA0();
    goto LABEL_75;
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

id sub_829E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [objc_allocWithZone(SAUIAddViews) init];

  sub_80E58(v5, sub_80FF0);
  sub_334A0(0, &qword_34CD10, SAAceView_ptr);
  isa = sub_2CE400().super.isa;

  [v4 setViews:isa];

  v7 = sub_2CE260();
  [v4 setDialogPhase:v7];

  return v4;
}

uint64_t sub_82AFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2DB30(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_82B50(uint64_t a1)
{
  v3 = sub_20410(&qword_34E000, &qword_2D1D48);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = objc_allocWithZone(v1);
  v7 = sub_2CE260();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  sub_2CBAA0();
  if (v10)
  {
    v11 = sub_2CE260();
  }

  else
  {
    v11 = 0;
  }

  [v9 setTitle:v11];

  sub_2CBA40();
  if (v12)
  {
    v13 = sub_2CE260();
  }

  else
  {
    v13 = 0;
  }

  [v9 setTrackArtist:v13];

  sub_2CBA20();
  if (v14)
  {
    v15 = sub_2CE260();
  }

  else
  {
    v15 = 0;
  }

  [v9 setAlbumArtist:v15];

  sub_2CBA90();
  if (v16)
  {
    v17 = sub_2CE260();
  }

  else
  {
    v17 = 0;
  }

  [v9 setAlbum:v17];

  sub_2CBAC0();
  if (v18)
  {
    v19 = sub_2CE260();
  }

  else
  {
    v19 = 0;
  }

  [v9 setContentId:v19];

  if (sub_2CBA70() == 2)
  {
    isa = 0;
  }

  else
  {
    isa = sub_2CE480().super.super.isa;
  }

  [v9 setLyricsAvailable:isa];

  v21 = COERCE_DOUBLE(sub_2CBAB0());
  if (v22)
  {
    v21 = 0.0;
  }

  [v9 setDuration:v21];
  sub_2CBA30();
  v23 = sub_2C8E30();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v5, 1, v23) != 1)
  {
    v25 = sub_2C8DE0().super.isa;
    (*(v24 + 8))(v5, v23);
  }

  [v9 setReleaseDate:v25];

  if (sub_2CBAD0() == 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_2CE480().super.super.isa;
  }

  [v9 setIsLoading:v26];

  sub_2CBA60();
  if (v27)
  {
    v28 = sub_2CE260();
  }

  else
  {
    v28 = 0;
  }

  [v9 setPlaylistTitle:v28];

  sub_2CBA50();
  if (v29)
  {
    v30 = sub_2CE260();
  }

  else
  {
    v30 = 0;
  }

  [v9 setStationTitle:v30];

  if (sub_2CBA80() == 2)
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_2CE480().super.super.isa;
  }

  [v9 setNoAppProvidedData:v31];

  v32 = sub_2CBAF0();
  (*(*(v32 - 8) + 8))(a1, v32);
  return v9;
}

uint64_t _s23AudioFlowDelegatePlugin8AddMediaO20HandleIntentStrategyC011makeSiriKitH7Handler3app6intent0klB00klhM0VSg0K13AppResolution0P0C_So05INAddfH0CtF_0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v12, v13);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  swift_allocObject();
  v7 = sub_2CC3D0();
  sub_306C(v12);
  v13 = v6;
  v14 = &protocol witness table for AirPlayRouteProvider;
  v12[0] = v7;
  v11[3] = sub_2CB9E0();
  v11[4] = &protocol witness table for DeviceProvider;
  sub_F390(v11);
  sub_2CB9C0();
  v10[3] = sub_2CC7A0();
  v10[4] = &protocol witness table for MediaRemoteAPIProvider;
  v10[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v9, v9[3]);
  sub_2CBE60();
  sub_306C(v9);
  sub_893E8(a1, a2, v12, v11, v10, &qword_34DD28, a3, INAddMediaIntent_ptr, &protocol witness table for INAddMediaIntent, sub_2A07EC, _s23AudioFlowDelegatePlugin8AddMediaO20HandleIntentStrategyC011makeSiriKitH7Handler3app6intent0klB00klhM0VSg0K13AppResolution0P0C_So05INAddfH0CtF_0, &unk_332A58, sub_91D58, &qword_34BF30, &static AddMedia.intentHandler, sub_27DF8);

  sub_306C(v10);
  sub_306C(v11);
  return sub_306C(v12);
}

uint64_t _s23AudioFlowDelegatePlugin14SearchForMediaO20HandleIntentStrategyC011makeSiriKitI7Handler3app6intent0lmB00lmiN0VSg0L13AppResolution0Q0C_So08INSearchfgI0CtF_0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v12, v13);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  swift_allocObject();
  v7 = sub_2CC3D0();
  sub_306C(v12);
  v13 = v6;
  v14 = &protocol witness table for AirPlayRouteProvider;
  v12[0] = v7;
  v11[3] = sub_2CB9E0();
  v11[4] = &protocol witness table for DeviceProvider;
  sub_F390(v11);
  sub_2CB9C0();
  v10[3] = sub_2CC7A0();
  v10[4] = &protocol witness table for MediaRemoteAPIProvider;
  v10[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v9, v9[3]);
  sub_2CBE60();
  sub_306C(v9);
  sub_893E8(a1, a2, v12, v11, v10, &qword_34CB98, a3, INSearchForMediaIntent_ptr, &protocol witness table for INSearchForMediaIntent, sub_2A07EC, _s23AudioFlowDelegatePlugin14SearchForMediaO20HandleIntentStrategyC011makeSiriKitI7Handler3app6intent0lmB00lmiN0VSg0L13AppResolution0Q0C_So08INSearchfgI0CtF_0, &unk_332A30, sub_91D58, &qword_34BFF8, &static SearchForMedia.intentHandler, sub_1D3508);

  sub_306C(v10);
  sub_306C(v11);
  return sub_306C(v12);
}

uint64_t _s23AudioFlowDelegatePlugin019UpdateMediaAffinityB8StrategyC24makeSiriKitIntentHandler3app6intent0jkB00jklM0VSg0J13AppResolution0P0C_So08INUpdatefgL0CtF_0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v12, v13);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  swift_allocObject();
  v7 = sub_2CC3D0();
  sub_306C(v12);
  v13 = v6;
  v14 = &protocol witness table for AirPlayRouteProvider;
  v12[0] = v7;
  v11[3] = sub_2CB9E0();
  v11[4] = &protocol witness table for DeviceProvider;
  sub_F390(v11);
  sub_2CB9C0();
  v10[3] = sub_2CC7A0();
  v10[4] = &protocol witness table for MediaRemoteAPIProvider;
  v10[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v9, v9[3]);
  sub_2CBE60();
  sub_306C(v9);
  sub_893E8(a1, a2, v12, v11, v10, &qword_34D368, a3, INUpdateMediaAffinityIntent_ptr, &protocol witness table for INUpdateMediaAffinityIntent, sub_2A07EC, _s23AudioFlowDelegatePlugin019UpdateMediaAffinityB8StrategyC24makeSiriKitIntentHandler3app6intent0jkB00jklM0VSg0J13AppResolution0P0C_So08INUpdatefgL0CtF_0, &unk_332A08, sub_91D58, &qword_34BFB0, &static UpdateMediaAffinity.intentHandler, sub_187554);

  sub_306C(v10);
  sub_306C(v11);
  return sub_306C(v12);
}

uint64_t _s23AudioFlowDelegatePlugin9PlayMediaO20HandleIntentStrategyC011makeSiriKitH7Handler3app6intent0klB00klhM0VSg0K13AppResolution0P0C_So06INPlayfH0CtF_0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v12, v13);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  swift_allocObject();
  v7 = sub_2CC3D0();
  sub_306C(v12);
  v13 = v6;
  v14 = &protocol witness table for AirPlayRouteProvider;
  v12[0] = v7;
  v11[3] = sub_2CB9E0();
  v11[4] = &protocol witness table for DeviceProvider;
  sub_F390(v11);
  sub_2CB9C0();
  v10[3] = sub_2CC7A0();
  v10[4] = &protocol witness table for MediaRemoteAPIProvider;
  v10[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v9, v9[3]);
  sub_2CBE60();
  sub_306C(v9);
  sub_8ABFC(a1, a2, v12, v11, v10, a3);

  sub_306C(v10);
  sub_306C(v11);
  return sub_306C(v12);
}

uint64_t sub_83764(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void *, uint64_t *, void *, uint64_t, uint64_t))
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v15, v16);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  swift_allocObject();
  v7 = sub_2CC3D0();
  sub_306C(v15);
  v16 = v6;
  v17 = &protocol witness table for AirPlayRouteProvider;
  v15[0] = v7;
  v14[3] = sub_2CB9E0();
  v14[4] = &protocol witness table for DeviceProvider;
  sub_F390(v14);
  sub_2CB9C0();
  v13[3] = sub_2CC7A0();
  v13[4] = &protocol witness table for MediaRemoteAPIProvider;
  v13[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v12, v12[3]);
  v8 = sub_2CBE60();
  v10 = v9;
  sub_306C(v12);
  a3(a1, a2, v15, v14, v13, v8, v10);

  sub_306C(v13);
  sub_306C(v14);
  return sub_306C(v15);
}

uint64_t sub_838F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v12, v13);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  swift_allocObject();
  v7 = sub_2CC3D0();
  sub_306C(v12);
  v13 = v6;
  v14 = &protocol witness table for AirPlayRouteProvider;
  v12[0] = v7;
  v11[3] = sub_2CB9E0();
  v11[4] = &protocol witness table for DeviceProvider;
  sub_F390(v11);
  sub_2CB9C0();
  v10[3] = sub_2CC7A0();
  v10[4] = &protocol witness table for MediaRemoteAPIProvider;
  v10[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v9, v9[3]);
  sub_2CBE60();
  sub_306C(v9);
  sub_8E570(a1, a2, v12, v11, v10, &qword_34D368, a3, INUpdateMediaAffinityIntent_ptr, &protocol witness table for INUpdateMediaAffinityIntent, sub_2A07EC, sub_838F8, &unk_332990, sub_91D58, &qword_34BFB0, &static UpdateMediaAffinity.intentHandler, sub_187554);

  sub_306C(v10);
  sub_306C(v11);
  return sub_306C(v12);
}

uint64_t sub_83B08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v12, v13);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  swift_allocObject();
  v7 = sub_2CC3D0();
  sub_306C(v12);
  v13 = v6;
  v14 = &protocol witness table for AirPlayRouteProvider;
  v12[0] = v7;
  v11[3] = sub_2CB9E0();
  v11[4] = &protocol witness table for DeviceProvider;
  sub_F390(v11);
  sub_2CB9C0();
  v10[3] = sub_2CC7A0();
  v10[4] = &protocol witness table for MediaRemoteAPIProvider;
  v10[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v9, v9[3]);
  sub_2CBE60();
  sub_306C(v9);
  sub_8E570(a1, a2, v12, v11, v10, &qword_34CB98, a3, INSearchForMediaIntent_ptr, &protocol witness table for INSearchForMediaIntent, sub_2A07EC, sub_83B08, &unk_332968, sub_91D58, &qword_34BFF8, &static SearchForMedia.intentHandler, sub_1D3508);

  sub_306C(v10);
  sub_306C(v11);
  return sub_306C(v12);
}

uint64_t sub_83D18@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v12, v13);
  sub_2CBE60();
  v6 = sub_2CC3E0();
  swift_allocObject();
  v7 = sub_2CC3D0();
  sub_306C(v12);
  v13 = v6;
  v14 = &protocol witness table for AirPlayRouteProvider;
  v12[0] = v7;
  v11[3] = sub_2CB9E0();
  v11[4] = &protocol witness table for DeviceProvider;
  sub_F390(v11);
  sub_2CB9C0();
  v10[3] = sub_2CC7A0();
  v10[4] = &protocol witness table for MediaRemoteAPIProvider;
  v10[0] = sub_2CC790();
  sub_2CBC60();
  sub_35E0(v9, v9[3]);
  sub_2CBE60();
  sub_306C(v9);
  sub_8E570(a1, a2, v12, v11, v10, &qword_34DD28, a3, INAddMediaIntent_ptr, &protocol witness table for INAddMediaIntent, sub_2A07EC, sub_83D18, &unk_3329B8, sub_91D58, &qword_34BF30, &static AddMedia.intentHandler, sub_27DF8);

  sub_306C(v10);
  sub_306C(v11);
  return sub_306C(v12);
}

uint64_t AddMedia.HandleIntentStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, unint64_t a3, void *a4, uint64_t a5)
{
  v43 = a5;
  v10 = sub_2CE000();
  v42 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  sub_35E0(v5 + 3, v5[6]);
  if (sub_2CC4B0())
  {
    v39 = a2;
    v40 = a4;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v41 = a3;
    v13 = v10;
    v14 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    v15 = v42;
    (*(v42 + 16))(v12, v14, v13);
    v16 = a1;

    v17 = sub_2CDFE0();
    v18 = sub_2CE670();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v15;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v16;
      v45 = v21;
      *v20 = 136315394;
      sub_2CCFB0();
      v38 = v13;
      sub_91C6C(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
      v22 = sub_2CEE70();
      v24 = sub_3F08(v22, v23, &v45);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = sub_2CCCA0();
      v27 = sub_3F08(v25, v26, &v45);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_0, v17, v18, "HandleIntentStrategy#makeIntentHandledResponseUsingRF for app: %s using RF 2.0 %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      (*(v19 + 8))(v12, v38);
    }

    else
    {

      (*(v15 + 8))(v12, v13);
    }

    sub_35E0(v5 + 23, v5[26]);
    v30 = swift_allocObject();
    v30[2] = v5;
    v30[3] = v16;
    v32 = v39;
    v31 = v40;
    v33 = v41;
    v30[4] = v39;
    v30[5] = v33;
    v34 = v43;
    v30[6] = v31;
    v30[7] = v34;

    v35 = v32;
    v36 = v33;

    sub_2CC2F0();
  }

  else
  {
    v28 = v43;

    return sub_869A0(a1, a2, a3, a4, v28);
  }
}

uint64_t sub_84320(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a2;
  v33 = a3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_2CDFE0();
  v14 = sub_2CE670();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = a5;
    v16 = v15;
    v29 = swift_slowAlloc();
    v34 = a1;
    v35 = v29;
    *v16 = 136315394;
    sub_2CCFB0();
    sub_91C6C(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
    v17 = sub_2CEE70();
    v19 = sub_3F08(v17, v18, &v35);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v20 = sub_2CCCA0();
    v22 = sub_3F08(v20, v21, &v35);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_0, v13, v14, "HandleIntentStrategy#makeIntentHandledResponseUsingRF for app: %s using RF 2.0 %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a5 = v30;
  }

  (*(v9 + 8))(v11, v8);
  sub_35E0((v5 + 184), *(v5 + 208));
  v23 = swift_allocObject();
  v23[2] = v5;
  v23[3] = a1;
  v25 = v32;
  v24 = v33;
  v23[4] = v32;
  v23[5] = v24;
  v23[6] = v31;
  v23[7] = a5;

  v26 = v25;
  v27 = v24;

  sub_2CC2F0();
}

uint64_t sub_84670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (a4)
  {
    sub_2CBD30();
  }

  v14 = swift_allocObject();
  v14[2] = a8;
  v14[3] = a10;
  v14[4] = a9;
  v14[5] = a12;
  v14[6] = a13;
  v14[7] = a11;

  v15 = a10;

  v16 = a11;
  v17 = INUpdateMediaAffinityIntent.firstMediaItemType()();
  if (v17 == &dword_0 + 2)
  {
    v19 = 0x6D75626C61;
    v18 = 0xE500000000000000;
  }

  else if (v17 == &dword_4 + 2)
  {
    v18 = 0xE700000000000000;
    v19 = 0x74736163646F70;
  }

  else
  {
    v19 = 0;
    v18 = 0xE000000000000000;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1010;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1E9600();
  *(inited + 56) = v21;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954616964656DLL;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v19;
  *(inited + 104) = v18;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000000002DB710;
  v22 = [v15 mediaDestination];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 mediaDestinationType];

    v25 = v24 == &dword_0 + 2;
  }

  else
  {
    v25 = 0;
  }

  *(inited + 144) = v25;
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "playlistTitle");
  *(inited + 190) = -4864;
  v26 = sub_1E960C();
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v26;
  *(inited + 200) = v27;
  v28 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v31[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v31[4] = &off_338D38;
  v31[0] = v15;
  v29 = v15;
  sub_124608(v28, a9, v31, sub_90DF0, v14);

  return sub_30B8(v31, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_84944(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7)
{
  v117 = a7;
  v140 = a6;
  v141 = a5;
  v138 = a4;
  v139 = a3;
  v135 = a2;
  v132 = a1;
  v121 = sub_2CCB20();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v8 - 8);
  v128 = &v117 - v9;
  v10 = sub_20410(&unk_3530C0, &unk_2D0A40);
  __chkstk_darwin(v10 - 8);
  v127 = &v117 - v11;
  v123 = sub_20410(&qword_34E1C8, &qword_2D1F20);
  v12 = __chkstk_darwin(v123);
  v124 = (&v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v134 = &v117 - v14;
  v126 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v15 = __chkstk_darwin(v126);
  v122 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v142 = &v117 - v18;
  __chkstk_darwin(v17);
  v133 = &v117 - v19;
  v20 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v20 - 8);
  v137 = &v117 - v21;
  v22 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v22 - 8);
  v131 = &v117 - v23;
  v24 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v24 - 8);
  v136 = &v117 - v25;
  v130 = sub_2CE000();
  v129 = *(v130 - 8);
  v26 = __chkstk_darwin(v130);
  v120 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v125 = &v117 - v28;
  v29 = sub_2CCB30();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2CCAC0();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v37);
  v39 = (&v117 - v38);
  sub_F3F4(v132, &v117 - v38, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v39;
    (*(v34 + 104))(v36, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v33);
    (*(v30 + 104))(v32, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v29);
    swift_getErrorValue();
    sub_2CEEF0();
    v134 = sub_2CCAE0();
    v142 = v41;

    (*(v30 + 8))(v32, v29);
    (*(v34 + 8))(v36, v33);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v42 = v130;
    v43 = sub_3ED0(v130, static Logger.default);
    swift_beginAccess();
    v44 = v129;
    v45 = v125;
    (*(v129 + 16))(v125, v43, v42);
    swift_errorRetain();
    v46 = sub_2CDFE0();
    v47 = sub_2CE680();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v48 = 136315394;
      swift_getErrorValue();
      v49 = sub_2CEEF0();
      v51 = sub_3F08(v49, v50, &v143);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2082;
      v52 = sub_2CCCA0();
      v54 = sub_3F08(v52, v53, &v143);

      *(v48 + 14) = v54;
      _os_log_impl(&dword_0, v46, v47, "AddMedia+HandleIntentStrategy#handleFailure with error: %s %{public}s", v48, 0x16u);
      swift_arrayDestroy();
    }

    (*(v44 + 8))(v45, v42);
    sub_35E0(v135 + 8, v135[11]);
    v55 = enum case for ActivityType.failed(_:);
    v56 = sub_2C9C20();
    v57 = *(v56 - 8);
    v58 = v136;
    (*(v57 + 104))(v136, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v59 = sub_2CA130();
    v60 = v131;
    (*(*(v59 - 8) + 56))(v131, 1, 1, v59);
    v61 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v62 = sub_2C98F0();
    v63 = *(v62 - 8);
    v64 = v137;
    (*(v63 + 104))(v137, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();
    sub_30B8(v64, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v60, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v58, &qword_34CB88, &unk_2D0D90);
    v143 = v40;
    v144 = 1;
    swift_errorRetain();
    v141(&v143);
    sub_30B8(&v143, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v66 = v39;
    v67 = v133;
    sub_14A58(v66, v133, &qword_34C6E8, &unk_2D0FF0);
    sub_F3F4(v67, v142, &qword_34C6E8, &unk_2D0FF0);
    v68 = sub_2CD230();
    v69 = v134;
    (*(*(v68 - 8) + 56))(v134, 1, 1, v68);
    swift_storeEnumTagMultiPayload();
    v70 = v124;
    sub_F3F4(v69, v124, &qword_34E1C8, &qword_2D1F20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v71 = *v70;
      (*(v34 + 104))(v36, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v33);
      (*(v30 + 104))(v32, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v29);
      swift_getErrorValue();
      sub_2CEEF0();
      v128 = sub_2CCAE0();
      v132 = v72;

      (*(v30 + 8))(v32, v29);
      (*(v34 + 8))(v36, v33);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v73 = v130;
      v74 = sub_3ED0(v130, static Logger.default);
      swift_beginAccess();
      v75 = v129;
      v76 = v120;
      (*(v129 + 16))(v120, v74, v73);
      swift_errorRetain();
      v77 = sub_2CDFE0();
      v78 = sub_2CE680();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        *v79 = 136315394;
        swift_getErrorValue();
        v80 = sub_2CEEF0();
        v82 = sub_3F08(v80, v81, &v143);

        *(v79 + 4) = v82;
        *(v79 + 12) = 2082;
        v83 = sub_2CCCA0();
        v85 = sub_3F08(v83, v84, &v143);

        *(v79 + 14) = v85;
        _os_log_impl(&dword_0, v77, v78, "AddMedia+HandleIntentStrategy#handleFailure with error: %s %{public}s", v79, 0x16u);
        swift_arrayDestroy();
      }

      (*(v75 + 8))(v76, v73);
      sub_35E0(v135 + 8, v135[11]);
      v86 = enum case for ActivityType.failed(_:);
      v87 = sub_2C9C20();
      v88 = *(v87 - 8);
      v89 = v136;
      (*(v88 + 104))(v136, v86, v87);
      (*(v88 + 56))(v89, 0, 1, v87);
      v90 = sub_2CA130();
      v91 = v131;
      (*(*(v90 - 8) + 56))(v131, 1, 1, v90);
      v92 = enum case for SiriKitReliabilityCodes.renderingError(_:);
      v93 = sub_2C98F0();
      v94 = *(v93 - 8);
      v95 = v137;
      (*(v94 + 104))(v137, v92, v93);
      (*(v94 + 56))(v95, 0, 1, v93);
      INUpdateMediaAffinityIntent.firstMediaItemType()();
      sub_2CB4E0();
      sub_30B8(v95, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v91, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v89, &qword_34CB88, &unk_2D0D90);
      v143 = v71;
      v144 = 1;
      swift_errorRetain();
      v141(&v143);
      sub_30B8(&v143, qword_34C798, &qword_2D0DA0);

      sub_30B8(v134, &qword_34E1C8, &qword_2D1F20);
      sub_30B8(v142, &qword_34C6E8, &unk_2D0FF0);
      return sub_30B8(v133, &qword_34C6E8, &unk_2D0FF0);
    }

    else
    {
      sub_14A58(v70, v127, &unk_3530C0, &unk_2D0A40);
      sub_28C3E8(v139, v128);
      (*(v34 + 104))(v36, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v33);
      v96 = v29;
      (*(v30 + 104))(v32, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v29);
      v97 = v119;
      v98 = v118;
      v99 = v121;
      (*(v119 + 104))(v118, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v121);
      v132 = sub_2CCAD0();
      v131 = v100;
      (*(v97 + 8))(v98, v99);
      (*(v30 + 8))(v32, v96);
      (*(v34 + 8))(v36, v33);
      v135 = sub_35E0(v135 + 8, v135[11]);
      v101 = enum case for ActivityType.completed(_:);
      v102 = sub_2C9C20();
      v103 = *(v102 - 8);
      v104 = v136;
      (*(v103 + 104))(v136, v101, v102);
      (*(v103 + 56))(v104, 0, 1, v102);
      v105 = v122;
      sub_F3F4(v142, v122, &qword_34C6E8, &unk_2D0FF0);
      v106 = *(v105 + *(v126 + 48));
      v107 = enum case for SiriKitReliabilityCodes.success(_:);
      v108 = sub_2C98F0();
      v109 = *(v108 - 8);
      v110 = v137;
      (*(v109 + 104))(v137, v107, v108);
      (*(v109 + 56))(v110, 0, 1, v108);
      INUpdateMediaAffinityIntent.firstMediaItemType()();
      sub_2CB4D0();

      sub_30B8(v110, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v104, &qword_34CB88, &unk_2D0D90);
      v111 = sub_2CA130();
      v112 = *(*(v111 - 8) + 8);
      v112(v105, v111);
      v113 = v142;
      sub_F3F4(v142, v105, &qword_34C6E8, &unk_2D0FF0);
      v114 = *(v105 + *(v126 + 48));
      v115 = v127;
      v116 = v128;
      sub_90E20(v127, v105, v114, v128, v141, v140);

      sub_30B8(v116, &unk_353020, &unk_2D0970);
      sub_30B8(v115, &unk_3530C0, &unk_2D0A40);
      sub_30B8(v134, &qword_34E1C8, &qword_2D1F20);
      sub_30B8(v113, &qword_34C6E8, &unk_2D0FF0);
      sub_30B8(v133, &qword_34C6E8, &unk_2D0FF0);
      return (v112)(v105, v111);
    }
  }
}

uint64_t sub_85F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_2CB260();
  __chkstk_darwin(v10 - 8);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  sub_F3F4(a2, &v17 - v12, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a4, v9, &qword_34C6E8, &unk_2D0FF0);
  v13 = *&v9[*(v7 + 56)];
  v14 = [v13 catId];

  sub_2CE270();
  sub_2CA590();
  v15 = sub_2CA130();
  (*(*(v15 - 8) + 8))(v9, v15);
  return sub_2CA610();
}

uint64_t sub_86144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[12] = swift_task_alloc();
  sub_20410(&unk_3530C0, &unk_2D0A40);
  v4[13] = swift_task_alloc();
  v5 = sub_2CD230();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_8627C, 0, 0);
}

uint64_t sub_8627C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_F3F4(v0[8], v3, &unk_3530C0, &unk_2D0A40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[12];
    v5 = v0[11];
    v6 = v0[9];
    sub_30B8(v0[13], &unk_3530C0, &unk_2D0A40);
    sub_2CA080();
    swift_allocObject();
    v0[17] = sub_2CA070();
    sub_20410(&unk_351900, &unk_2D0960);
    v7 = swift_allocObject();
    v0[18] = v7;
    *(v7 + 16) = xmmword_2D0770;
    sub_F3F4(v6, v4, &qword_34C6E8, &unk_2D0FF0);
    *(v7 + 32) = *(v4 + *(v5 + 48));
    v8 = sub_2CA130();
    (*(*(v8 - 8) + 8))(v4, v8);
    v25 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_86640;
    v10 = v0[10];
    v11 = v0[7];

    return v25(v11, v7, v10);
  }

  else
  {
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[9];
    (*(v14 + 32))(v13, v0[13], v15);
    sub_2CA080();
    swift_allocObject();
    v0[20] = sub_2CA070();
    v0[5] = v15;
    v0[6] = sub_91C6C(&qword_34CC78, 255, &type metadata accessor for SiriAudioSnippets, &protocol conformance descriptor for SiriAudioSnippets);
    v19 = sub_F390(v0 + 2);
    (*(v14 + 16))(v19, v13, v15);
    sub_20410(&unk_351900, &unk_2D0960);
    v20 = swift_allocObject();
    v0[21] = v20;
    *(v20 + 16) = xmmword_2D0770;
    sub_F3F4(v18, v16, &qword_34C6E8, &unk_2D0FF0);
    *(v20 + 32) = *(v16 + *(v17 + 48));
    v21 = sub_2CA130();
    (*(*(v21 - 8) + 8))(v16, v21);
    v26 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
    v22 = swift_task_alloc();
    v0[22] = v22;
    *v22 = v0;
    v22[1] = sub_867CC;
    v23 = v0[10];
    v24 = v0[7];

    return v26(v24, v0 + 2, v20, v23);
  }
}

uint64_t sub_86640()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_867CC()
{
  v1 = *v0;

  sub_306C((v1 + 16));

  return _swift_task_switch(sub_86910, 0, 0);
}

uint64_t sub_86910()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_869A0(uint64_t a1, void *a2, unint64_t a3, void *a4, unint64_t a5)
{
  v6 = v5;
  v90 = a2;
  v91 = a5;
  v101 = a3;
  v102 = a4;
  v8 = sub_2CDFD0();
  v105 = *(v8 - 8);
  v106 = v8;
  v9 = __chkstk_darwin(v8);
  v92 = v10;
  v93 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v104 = &v89 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v89 - v17;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v20 = *(v13 + 16);
  v96 = v13 + 16;
  v97 = v19;
  v95 = v20;
  v20(v18, v19, v12);

  v21 = sub_2CDFE0();
  v22 = sub_2CE670();

  v23 = os_log_type_enabled(v21, v22);
  v99 = v13;
  v100 = a1;
  v103 = v12;
  v98 = v16;
  if (v23)
  {
    v24 = v13;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v109[0] = v26;
    *v25 = 136315138;
    v107 = a1;
    sub_2CCFB0();
    sub_91C6C(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
    v27 = sub_2CEE70();
    v29 = sub_3F08(v27, v28, v109);

    *(v25 + 4) = v29;
    a1 = v100;
    _os_log_impl(&dword_0, v21, v22, "AddMedia+HandleIntentStrategy#makeIntentHandledResponseUsingDialogProvider for app: %s", v25, 0xCu);
    sub_306C(v26);

    v30 = *(v24 + 8);
    v30(v18, v103);
  }

  else
  {

    v30 = *(v13 + 8);
    v30(v18, v12);
  }

  v31 = *(v6 + 272);
  v32 = swift_allocObject();
  v32[2] = v6;
  v32[3] = a1;
  v33 = v90;
  v34 = v91;
  v36 = v101;
  v35 = v102;
  v32[4] = v90;
  v32[5] = v35;
  v32[6] = v34;
  v32[7] = v36;
  v102 = v32;
  v32[8] = _swiftEmptyArrayStorage;

  v37 = v33;

  v38 = v36;
  v39 = INUpdateMediaAffinityIntent.firstMediaItemType()();
  v94 = v30;
  if (v39 == &dword_0 + 2)
  {
    v41 = 0x6D75626C61;
    v40 = 0xE500000000000000;
  }

  else if (v39 == &dword_4 + 2)
  {
    v40 = 0xE700000000000000;
    v41 = 0x74736163646F70;
  }

  else
  {
    v41 = 0;
    v40 = 0xE000000000000000;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1010;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1E9600();
  *(inited + 56) = v43;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954616964656DLL;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v41;
  *(inited + 104) = v40;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000000002DB710;
  v44 = [v37 mediaDestination];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 mediaDestinationType];

    v47 = v46 == &dword_0 + 2;
  }

  else
  {
    v47 = 0;
  }

  *(inited + 144) = v47;
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "playlistTitle");
  *(inited + 190) = -4864;
  v48 = sub_1E960C();
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v48;
  *(inited + 200) = v49;
  v91 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v50 = *(v31 + 120);
  v109[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v109[4] = &off_338D38;
  v109[0] = v37;
  v51 = v50[4];
  v89 = v50[5];
  v90 = v51;
  v52 = v50[6];
  v101 = 0x80000000002DB730;
  v53 = qword_34BF98;
  v54 = v37;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = qword_35F760;
  v56 = v104;
  sub_2CDFB0();
  v57 = v105;
  v58 = v106;
  v59 = v93;
  (*(v105 + 16))(v93, v56, v106);
  v60 = (*(v57 + 80) + 33) & ~*(v57 + 80);
  v61 = (v92 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  *(v62 + 16) = "catServiceExecute";
  *(v62 + 24) = 17;
  *(v62 + 32) = 2;
  (*(v57 + 32))(v62 + v60, v59, v58);
  v63 = (v62 + v61);
  v64 = v102;
  *v63 = sub_91CB4;
  v63[1] = v64;

  v65 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_2D0E40;
  *(v66 + 56) = &type metadata for String;
  v67 = sub_1087C();
  v68 = v89;
  *(v66 + 32) = v89;
  *(v66 + 40) = v52;
  *(v66 + 96) = &type metadata for String;
  *(v66 + 104) = v67;
  *(v66 + 64) = v67;
  *(v66 + 72) = 0xD000000000000015;
  v69 = v101;
  *(v66 + 80) = v101;

  LOBYTE(v87) = 2;
  sub_2CDF90(v65, &dword_0, v55, "catServiceExecute", 17, 2, v56, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v87, v66);

  v70 = swift_allocObject();
  *(v70 + 16) = sub_13CD4;
  *(v70 + 24) = v62;
  v71 = v98;
  v72 = v103;
  v95(v98, v97, v103);

  v73 = sub_2CDFE0();
  v74 = sub_2CE660();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v75 = 136315394;
    *(v75 + 4) = sub_3F08(v68, v52, &v107);
    *(v75 + 12) = 2080;
    *(v75 + 14) = sub_3F08(0xD000000000000015, v101, &v107);
    _os_log_impl(&dword_0, v73, v74, "Evaluating CAT family:%s id:%s...", v75, 0x16u);
    swift_arrayDestroy();

    v69 = v101;

    v76 = v71;
    v77 = v103;
  }

  else
  {

    v76 = v71;
    v77 = v72;
  }

  v94(v76, v77);
  v107 = v68;
  v108 = v52;

  v110._countAndFlagsBits = 35;
  v110._object = 0xE100000000000000;
  sub_2CE350(v110);
  v111._countAndFlagsBits = 0xD000000000000015;
  v111._object = v69;
  sub_2CE350(v111);
  v79 = v107;
  v78 = v108;
  v80 = sub_2CB460();
  if (!v80)
  {
    sub_2CB180();
    v80 = sub_2CB170();
  }

  v81 = v80;
  v82 = swift_allocObject();
  v82[2] = v81;
  v82[3] = sub_13D84;
  v82[4] = v70;
  v83 = sub_2CB180();
  __chkstk_darwin(v83);
  v84 = v91;
  *(&v89 - 10) = v90;
  *(&v89 - 9) = v84;
  *(&v89 - 8) = v100;
  *(&v89 - 7) = v109;
  *(&v89 - 6) = 0;
  *(&v89 - 5) = v79;
  v86 = v78;
  v87 = sub_3E010;
  v88 = v82;

  sub_2CB0F0();

  (*(v105 + 8))(v104, v106);
  return sub_30B8(v109, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_87434(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(__int128 *), uint64_t a6, void *a7, uint64_t a8)
{
  v63 = a8;
  v64 = a7;
  v79 = a6;
  v80 = a5;
  v77 = a3;
  v78 = a4;
  v71 = a2;
  v70 = a1;
  v69 = sub_2CA910();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v9 - 8);
  v72 = (&v63 - v10);
  v65 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = __chkstk_darwin(v65);
  v66 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v67 = &v63 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v14 - 8);
  v76 = &v63 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v16 - 8);
  v75 = &v63 - v17;
  v18 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v18 - 8);
  v74 = &v63 - v19;
  v20 = sub_2CCB30();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCAC0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v28);
  v30 = (&v63 - v29);
  sub_F3F4(v70, &v63 - v29, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v24);
    (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.dlgProvHandled(_:), v20);
    swift_getErrorValue();
    sub_2CEEF0();
    v73 = sub_2CCAE0();

    (*(v21 + 8))(v23, v20);
    (*(v25 + 8))(v27, v24);
    v72 = sub_35E0(v71 + 8, v71[11]);
    v32 = enum case for ActivityType.failed(_:);
    v33 = sub_2C9C20();
    v34 = *(v33 - 8);
    v35 = v74;
    (*(v34 + 104))(v74, v32, v33);
    (*(v34 + 56))(v35, 0, 1, v33);
    v36 = sub_2CA130();
    v37 = v75;
    (*(*(v36 - 8) + 56))(v75, 1, 1, v36);
    v38 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v39 = sub_2C98F0();
    v40 = *(v39 - 8);
    v41 = v76;
    (*(v40 + 104))(v76, v38, v39);
    (*(v40 + 56))(v41, 0, 1, v39);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v41, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v37, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v35, &qword_34CB88, &unk_2D0D90);
    *&v81 = v31;
    v84 = 1;
    swift_errorRetain();
    v80(&v81);
  }

  else
  {
    v42 = v30;
    v43 = v67;
    sub_14A58(v42, v67, &qword_34C6E8, &unk_2D0FF0);
    v44 = v64;
    sub_28C3E8(v78, v72);
    sub_2CB5B0();
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    sub_2C9DC0();
    sub_30B8(&v81, &qword_34CC80, &qword_2D1520);
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v24);
    (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.dlgProvHandled(_:), v20);
    *&v81 = [v44 code];
    sub_2CEE70();
    v70 = sub_2CCAE0();
    v64 = v45;

    (*(v21 + 8))(v23, v20);
    (*(v25 + 8))(v27, v24);
    v71 = sub_35E0(v71 + 8, v71[11]);
    v46 = enum case for ActivityType.completed(_:);
    v47 = sub_2C9C20();
    v48 = *(v47 - 8);
    v49 = v74;
    (*(v48 + 104))(v74, v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    v50 = v66;
    sub_F3F4(v43, v66, &qword_34C6E8, &unk_2D0FF0);

    v51 = sub_2CA130();
    v52 = *(v51 - 8);
    v53 = v75;
    (*(v52 + 32))(v75, v50, v51);
    (*(v52 + 56))(v53, 0, 1, v51);
    v54 = enum case for SiriKitReliabilityCodes.success(_:);
    v55 = sub_2C98F0();
    v56 = *(v55 - 8);
    v57 = v76;
    (*(v56 + 104))(v76, v54, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v57, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v53, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v49, &qword_34CB88, &unk_2D0D90);
    v58 = v69;
    *(&v82 + 1) = v69;
    v83 = &protocol witness table for AceOutput;
    v59 = sub_F390(&v81);
    v60 = v68;
    v61 = v73;
    (*(v68 + 16))(v59, v73, v58);
    v84 = 0;
    v80(&v81);
    (*(v60 + 8))(v61, v58);
    sub_30B8(v72, &unk_353020, &unk_2D0970);
    sub_30B8(v43, &qword_34C6E8, &unk_2D0FF0);
  }

  return sub_30B8(&v81, qword_34C798, &qword_2D0DA0);
}

uint64_t AddMedia.HandleIntentStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34 = a4;
  v35 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "AddMedia+HandleIntentStrategy#makeFailureHandlingIntentResponse", v17, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v33 = *(v6 + 272);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "MetricsError");
  *(inited + 16) = xmmword_2D0090;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v19 = 0xE000000000000000;
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_2CECB0(39);

  v37 = 0xD000000000000022;
  v38 = 0x80000000002DB660;
  v20 = [a3 userActivity];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 activityType];

    v23 = sub_2CE270();
    v19 = v24;
  }

  else
  {
    v23 = 0;
  }

  v39._countAndFlagsBits = v23;
  v39._object = v19;
  sub_2CE350(v39);

  v40._countAndFlagsBits = 95;
  v40._object = 0xE100000000000000;
  sub_2CE350(v40);
  v36 = [a3 code];
  v41._countAndFlagsBits = sub_2CEE70();
  sub_2CE350(v41);

  v25 = v37;
  v26 = v38;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v25;
  *(inited + 56) = v26;
  v27 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v28 = swift_allocObject();
  *(v28 + 16) = v6;
  *(v28 + 24) = a1;
  v29 = v34;
  v30 = v35;
  *(v28 + 32) = a2;
  *(v28 + 40) = v29;
  *(v28 + 48) = v30;
  *(v28 + 56) = a3;

  v31 = a2;

  sub_CEEB0(v27, a1, v31, a3, sub_8FEF4, v28);
}

uint64_t sub_883E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, void *a7)
{
  v62 = a7;
  v74 = a5;
  v75 = a6;
  v72 = a3;
  v73 = a4;
  v68 = a2;
  v65 = a1;
  v7 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v7 - 8);
  v64 = v61 - v8;
  v66 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = __chkstk_darwin(v66);
  v63 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = v61 - v11;
  v12 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v12 - 8);
  v71 = v61 - v13;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v14 - 8);
  v70 = v61 - v15;
  v16 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v16 - 8);
  v69 = v61 - v17;
  v18 = sub_2CCB30();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CCAC0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v26);
  v28 = (v61 - v27);
  sub_F3F4(v65, v61 - v27, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v22);
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v18);
    swift_getErrorValue();
    sub_2CEEF0();
    v67 = sub_2CCAE0();

    (*(v19 + 8))(v21, v18);
    (*(v23 + 8))(v25, v22);
    v68 = sub_35E0(v68 + 8, v68[11]);
    v30 = enum case for ActivityType.failed(_:);
    v31 = sub_2C9C20();
    v32 = *(v31 - 8);
    v33 = v69;
    (*(v32 + 104))(v69, v30, v31);
    (*(v32 + 56))(v33, 0, 1, v31);
    v34 = sub_2CA130();
    v35 = v70;
    (*(*(v34 - 8) + 56))(v70, 1, 1, v34);
    v36 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v37 = sub_2C98F0();
    v38 = *(v37 - 8);
    v39 = v71;
    (*(v38 + 104))(v71, v36, v37);
    (*(v38 + 56))(v39, 0, 1, v37);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v39, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v35, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v33, &qword_34CB88, &unk_2D0D90);
    v76[0] = v29;
    v77 = 1;
    swift_errorRetain();
    v74(v76);

    return sub_30B8(v76, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v41 = v67;
    sub_14A58(v28, v67, &qword_34C6E8, &unk_2D0FF0);
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.amhis(_:), v22);
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v18);
    v76[0] = [v62 code];
    sub_2CEE70();
    v62 = sub_2CCAE0();
    v61[2] = v42;

    (*(v19 + 8))(v21, v18);
    (*(v23 + 8))(v25, v22);
    v43 = v68;
    v44 = v68[11];
    v61[0] = v68[12];
    v61[1] = sub_35E0(v68 + 8, v44);
    v45 = enum case for ActivityType.failed(_:);
    v46 = sub_2C9C20();
    v47 = *(v46 - 8);
    v48 = v69;
    (*(v47 + 104))(v69, v45, v46);
    (*(v47 + 56))(v48, 0, 1, v46);
    v49 = v63;
    sub_F3F4(v41, v63, &qword_34C6E8, &unk_2D0FF0);

    v50 = sub_2CA130();
    v65 = v50;
    v51 = *(v50 - 8);
    v52 = v70;
    (*(v51 + 32))(v70, v49, v50);
    (*(v51 + 56))(v52, 0, 1, v50);
    v53 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
    v54 = sub_2C98F0();
    v55 = *(v54 - 8);
    v56 = v71;
    (*(v55 + 104))(v71, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v56, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v52, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v48, &qword_34CB88, &unk_2D0D90);
    sub_35E0(v43 + 13, v43[16]);
    v57 = v67;
    sub_F3F4(v67, v49, &qword_34C6E8, &unk_2D0FF0);
    v58 = *(v49 + *(v66 + 48));
    v59 = sub_2CA000();
    v60 = v64;
    (*(*(v59 - 8) + 56))(v64, 1, 1, v59);
    sub_1C077C(v49, v58, v60, _swiftEmptyArrayStorage, v74, v75);

    sub_30B8(v60, &unk_353020, &unk_2D0970);
    sub_30B8(v57, &qword_34C6E8, &unk_2D0FF0);
    return (*(v51 + 8))(v49, v65);
  }
}

void *AddMedia.HandleIntentStrategy.deinit()
{

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);
  sub_306C(v0 + 13);
  sub_306C(v0 + 18);
  sub_306C(v0 + 23);
  sub_306C(v0 + 28);

  return v0;
}

uint64_t AddMedia.HandleIntentStrategy.__deallocating_deinit()
{
  AddMedia.HandleIntentStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_88F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_89010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_8908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_89108(uint64_t a1, void *a2, void *a3, void *a4, unint64_t a5)
{
  v11 = *v5;
  sub_2CB450();
  sub_35E0((v11 + 24), *(v11 + 48));
  if (sub_2CC4B0())
  {
    return sub_84320(a1, a2, a3, a4, a5);
  }

  else
  {
    return sub_869A0(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_891C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_8923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_892DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_89328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_8937C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_893E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t *a8@<X7>, uint64_t a9@<X8>, void *a10, uint64_t a11, uint64_t (*a12)(uint64_t), void (*a13)(uint64_t, id), uint64_t a14, uint64_t a15, uint64_t *a16, void **a17, char *a18)
{
  v213 = a5;
  v219 = a4;
  v214 = a3;
  v222 = a9;
  v216 = sub_2CC760();
  v217 = *(v216 - 8);
  v21 = __chkstk_darwin(v216);
  v212 = &v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v215 = &v199 - v23;
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v223 = v24;
  v224 = v25;
  v26 = __chkstk_darwin(v24);
  v220 = &v199 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v218 = &v199 - v29;
  v30 = __chkstk_darwin(v28);
  v221 = &v199 - v31;
  v32 = __chkstk_darwin(v30);
  v210 = &v199 - v33;
  v34 = __chkstk_darwin(v32);
  v209 = &v199 - v35;
  v36 = __chkstk_darwin(v34);
  v211 = &v199 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v199 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v199 - v42;
  __chkstk_darwin(v41);
  v45 = &v199 - v44;
  v46 = sub_334A0(0, a8, a10);
  v229 = v46;
  v230 = a11;
  *&v228 = a2;
  sub_35E0(&v228, v46);
  v47 = a2;
  v48 = &off_34B000;
  if (!sub_2CC120())
  {
    v208 = v46;
    sub_306C(&v228);
    v60 = a12(a1);
    v61 = a1;
    v62 = v223;
    if ((v60 & 1) == 0)
    {
      goto LABEL_24;
    }

    v207 = v47;
    sub_35E0(v219, v219[3]);
    v48 = &off_34B000;
    v47 = v207;
    if ((sub_2CBBC0() & 1) == 0)
    {
      sub_35E0(v219, v219[3]);
      v48 = &off_34B000;
      v47 = v207;
      if ((sub_2CBBB0() & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    objc_opt_self();
    v63 = swift_dynamicCastObjCClass();
    if (!v63)
    {
      goto LABEL_24;
    }

    v64 = v63;
    v65 = sub_2CC8E0();
    v66 = v47;
    v206 = v65;
    v67 = sub_2CC8D0();
    if (!v67)
    {

LABEL_23:
      v48 = &off_34B000;
LABEL_24:
      if (v48[491] != -1)
      {
        swift_once();
      }

      v96 = sub_3ED0(v62, static Logger.default);
      swift_beginAccess();
      v97 = v224;
      v98 = v221;
      v217 = *(v224 + 16);
      (v217)(v221, v96, v62);
      v99 = v47;
      v100 = sub_2CDFE0();
      v101 = sub_2CE690();

      v102 = os_log_type_enabled(v100, v101);
      v219 = v99;
      if (v102)
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v216 = v96;
        v105 = v104;
        *&v226 = v104;
        *v103 = 136315138;
        v106 = v99;
        v107 = [v106 description];
        v108 = sub_2CE270();
        v109 = v61;
        v111 = v110;

        v112 = v108;
        v62 = v223;
        v113 = v224;
        v114 = sub_3F08(v112, v111, &v226);
        v61 = v109;

        *(v103 + 4) = v114;
        _os_log_impl(&dword_0, v100, v101, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v103, 0xCu);
        sub_306C(v105);
        v96 = v216;

        v115 = *(v113 + 8);
        v115(v221, v62);
      }

      else
      {

        v116 = v98;
        v115 = *(v97 + 8);
        v115(v116, v62);
      }

      if ((sub_8FD94(v61) & 1) == 0)
      {
        (v217)(v220, v96, v62);
        v126 = v219;

        v127 = sub_2CDFE0();
        v128 = sub_2CE670();

        if (os_log_type_enabled(v127, v128))
        {
          v223 = v115;
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          *v129 = 138412546;
          sub_2CCF90();
          if (v131)
          {
            v132 = sub_2CE2F0();
            v134 = v133;

            sub_10C40();
            swift_allocError();
            *v135 = v132;
            v135[1] = v134;
            v136 = _swift_stdlib_bridgeErrorToNSError();
            v137 = v136;
          }

          else
          {
            v136 = 0;
            v137 = 0;
          }

          *(v129 + 4) = v136;
          *v130 = v137;
          *(v129 + 12) = 2112;
          v147 = [v126 launchId];
          if (v147)
          {
            v148 = v147;
            v149 = sub_2CE270();
            v151 = v150;

            sub_10C40();
            swift_allocError();
            *v152 = v149;
            v152[1] = v151;
            v147 = _swift_stdlib_bridgeErrorToNSError();
            v153 = v147;
          }

          else
          {
            v153 = 0;
          }

          *(v129 + 14) = v147;
          v130[1] = v153;
          _os_log_impl(&dword_0, v127, v128, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v129, 0x16u);
          sub_20410(&unk_34FC00, &unk_2D0150);
          swift_arrayDestroy();

          v115 = v223;
        }

        v115(v220, v62);
        v143 = sub_2C9880();
        v144 = *(*(v143 - 8) + 56);
        v145 = v222;
        v146 = 1;
        return v144(v145, v146, 1, v143);
      }

      v221 = a18;
      v117 = v218;
      (v217)(v218, v96, v62);
      v118 = sub_2CDFE0();
      v119 = sub_2CE670();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = v115;
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *&v226 = v122;
        *v121 = 136315138;
        if (*a16 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        ObjectType = swift_getObjectType();
        sub_20410(&unk_34FC10, &qword_2D1EE8);
        v123 = sub_2CE2A0();
        v125 = sub_3F08(v123, v124, &v226);

        *(v121 + 4) = v125;
        _os_log_impl(&dword_0, v118, v119, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v121, 0xCu);
        sub_306C(v122);

        v120(v218, v223);
      }

      else
      {

        v115(v117, v62);
      }

      v138 = *a16;

      if (v138 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v139 = *a17;
      v140 = v219;
      v141 = v139;
      v142 = v222;
      sub_2C9870();
      v143 = sub_2C9880();
      v144 = *(*(v143 - 8) + 56);
      v145 = v142;
LABEL_41:
      v146 = 0;
      return v144(v145, v146, 1, v143);
    }

    v68 = v67;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v203 = v64;
    v205 = v61;
    v69 = sub_3ED0(v62, static Logger.default);
    swift_beginAccess();
    v70 = v224;
    v71 = *(v224 + 16);
    v202 = v69;
    v201 = v224 + 16;
    v200 = v71;
    v71(v43, v69, v62);
    v72 = v66;

    v73 = sub_2CDFE0();
    v74 = sub_2CE670();
    v204 = v72;

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      *&v228 = v199;
      *v75 = 136315394;
      *&v226 = v68;
      sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
      v76 = sub_2CEE70();
      v78 = v68;
      v79 = sub_3F08(v76, v77, &v228);

      *(v75 + 4) = v79;
      *(v75 + 12) = 2080;
      v80 = [v203 debugDescription];
      v81 = sub_2CE270();
      v83 = v82;

      v84 = v81;
      v68 = v78;
      v85 = sub_3F08(v84, v83, &v228);

      *(v75 + 14) = v85;
      _os_log_impl(&dword_0, v73, v74, "CommonMedia#makeSiriKitIntentHandler Handling AirPlay Route setup for 3p app on iOS. Context: %s Intent: %s", v75, 0x16u);
      swift_arrayDestroy();

      v86 = v224;
    }

    else
    {

      v86 = v70;
    }

    v87 = *(v86 + 8);
    v87(v43, v62);
    v88 = v216;
    v89 = v215;
    sub_2CC8B0();
    v90 = (*(v217 + 88))(v89, v88);
    if (v90 == enum case for AirPlayRouteSetupState.none(_:))
    {
      v200(v40, v202, v62);
      v91 = sub_2CDFE0();
      v92 = sub_2CE670();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_0, v91, v92, "CommonMedia#makeSiriKitIntentHandler Suppressing common WHA routes", v93, 2u);
        v88 = v216;
      }

      v87(v40, v62);
      sub_2CE700();
      (*(v217 + 104))(v212, enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:), v88);
      sub_2CC8C0();
      v94 = v214;
      sub_35E0(v214, v214[3]);
      sub_EEAC(v94, &v228);
      sub_EEAC(v219, &v226);
      sub_EEAC(v213, v225);
      v95 = swift_allocObject();
      sub_F338(&v228, v95 + 16);
      sub_F338(&v226, v95 + 56);
      sub_F338(v225, v95 + 96);
      sub_2CC660();

LABEL_22:
      v61 = v205;
      v47 = v207;
      goto LABEL_23;
    }

    if (v90 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
    {
      v154 = v214;
      sub_35E0(v214, v214[3]);
      sub_2CC690();
      sub_35E0(v154, v154[3]);
      sub_2CC670();
    }

    else
    {
      if (v90 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
      {
        v155 = v214;
        sub_35E0(v214, v214[3]);
        sub_2CC690();
        v156 = v155[3];
        v157 = v155;
      }

      else
      {
        if (v90 != enum case for AirPlayRouteSetupState.startedRouteSetup(_:))
        {
          if (v90 != enum case for AirPlayRouteSetupState.complete(_:))
          {
            if (v90 == enum case for AirPlayRouteSetupState.error(_:))
            {
              v172 = v209;
              v200(v209, v202, v62);

              v173 = sub_2CDFE0();
              v174 = sub_2CE680();

              if (os_log_type_enabled(v173, v174))
              {
                v175 = swift_slowAlloc();
                v176 = swift_slowAlloc();
                *&v228 = v176;
                *v175 = 136315138;
                *&v226 = v68;
                sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
                v177 = sub_2CEE70();
                v179 = sub_3F08(v177, v178, &v228);

                *(v175 + 4) = v179;
                _os_log_impl(&dword_0, v173, v174, "CommonMedia#makeSiriKitIntentHandler Something went wrong setting up AirPlay routes %s. Nothing to do here, will create error dialog in makePreHandleIntentOutput or makeIntentHandledResponse", v175, 0xCu);
                sub_306C(v176);

                v180 = v209;
              }

              else
              {

                v180 = v172;
              }

              v87(v180, v62);
              v196 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

              [v196 init];
              v197 = v204;
              v198 = v222;
              sub_2C9870();

              v143 = sub_2C9880();
              v144 = *(*(v143 - 8) + 56);
              v145 = v198;
              goto LABEL_41;
            }

            v181 = v210;
            v200(v210, v202, v62);
            v182 = v204;

            v183 = sub_2CDFE0();
            v184 = sub_2CE660();

            if (os_log_type_enabled(v183, v184))
            {
              v185 = swift_slowAlloc();
              v214 = swift_slowAlloc();
              *&v228 = v214;
              *v185 = 136315394;
              sub_2CC8B0();
              v186 = sub_2CE2A0();
              v188 = sub_3F08(v186, v187, &v228);
              v219 = v68;
              v189 = v188;

              *(v185 + 4) = v189;
              *(v185 + 12) = 2080;
              v190 = [v182 debugDescription];
              v191 = sub_2CE270();
              v193 = v192;

              v194 = sub_3F08(v191, v193, &v228);

              *(v185 + 14) = v194;
              _os_log_impl(&dword_0, v183, v184, "CommonMedia#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v185, 0x16u);
              swift_arrayDestroy();
              v88 = v216;

              v195 = v210;
            }

            else
            {

              v195 = v181;
            }

            v87(v195, v62);
            v47 = v207;
            (*(v217 + 8))(v215, v88);
            v61 = v205;
            goto LABEL_23;
          }

          v159 = v211;
          v200(v211, v202, v62);
          v160 = v204;
          v161 = sub_2CDFE0();
          v162 = sub_2CE660();

          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *&v228 = v164;
            *v163 = 136315138;
            v165 = [v160 debugDescription];
            v166 = sub_2CE270();
            v219 = v68;
            v167 = v166;
            v169 = v168;

            v170 = sub_3F08(v167, v169, &v228);

            *(v163 + 4) = v170;
            _os_log_impl(&dword_0, v161, v162, "CommonMedia#makeSiriKitIntentHandler AirPlay route setup is complete, no need to wait before executing Handle, intent: %s", v163, 0xCu);
            sub_306C(v164);

            v171 = v211;
          }

          else
          {

            v171 = v159;
          }

          v87(v171, v62);
          goto LABEL_22;
        }

        v157 = v214;
        v156 = v214[3];
      }

      sub_35E0(v157, v156);
      sub_2CC6A0();
    }

    v158 = v204;
    a13(v205, v204);
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v49 = v223;
  v50 = sub_3ED0(v223, static Logger.default);
  swift_beginAccess();
  v51 = v224;
  (*(v224 + 16))(v45, v50, v49);
  v52 = sub_2CDFE0();
  v53 = sub_2CE690();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v54, 2u);
  }

  (*(v51 + 8))(v45, v49);
  v55 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

  [v55 init];
  v56 = v47;
  v57 = v222;
  sub_2C9870();
  v58 = sub_2C9880();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  return sub_306C(&v228);
}

uint64_t sub_8ABFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a8@<X8>)
{
  v193 = a5;
  v198 = a4;
  v194 = a3;
  v203 = a8;
  v197 = sub_2CC760();
  v196 = *(v197 - 8);
  v10 = __chkstk_darwin(v197);
  v192 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v195 = &v180 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v204 = v13;
  v205 = v14;
  v15 = __chkstk_darwin(v13);
  v199 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v200 = &v180 - v18;
  v19 = __chkstk_darwin(v17);
  v201 = &v180 - v20;
  v21 = __chkstk_darwin(v19);
  v190 = &v180 - v22;
  v23 = __chkstk_darwin(v21);
  v189 = &v180 - v24;
  v25 = __chkstk_darwin(v23);
  v191 = &v180 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v180 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v180 - v31;
  __chkstk_darwin(v30);
  v34 = &v180 - v33;
  v35 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v210 = v35;
  v211 = &protocol witness table for INPlayMediaIntent;
  *&v209 = a2;
  sub_35E0(&v209, v35);
  v36 = a2;
  v202 = v35;
  if (sub_2CC120())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = v204;
    v38 = sub_3ED0(v204, static Logger.default);
    swift_beginAccess();
    v39 = v205;
    (*(v205 + 16))(v34, v38, v37);
    v40 = sub_2CDFE0();
    v41 = sub_2CE690();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v42, 2u);
    }

    (*(v39 + 8))(v34, v37);
    v43 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

    [v43 init];
    v44 = v36;
    v45 = v203;
    sub_2C9870();
    v46 = sub_2C9880();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    return sub_306C(&v209);
  }

  sub_306C(&v209);
  v188 = a1;
  if (sub_2A07EC())
  {
    sub_35E0(v198, v198[3]);
    if (sub_2CBBC0() & 1) != 0 || (sub_35E0(v198, v198[3]), (sub_2CBBB0()))
    {
      sub_2CC8E0();
      v48 = sub_2CC8D0();
      if (v48)
      {
        v49 = v48;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v50 = v204;
        v51 = sub_3ED0(v204, static Logger.default);
        swift_beginAccess();
        v52 = v205;
        v53 = *(v205 + 16);
        v186 = v51;
        v185 = v205 + 16;
        v184 = v53;
        v53(v32, v51, v50);
        v183 = v36;
        v54 = v36;

        v55 = sub_2CDFE0();
        v56 = sub_2CE670();

        v57 = os_log_type_enabled(v55, v56);
        v187 = v54;
        if (v57)
        {
          v58 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          *&v209 = v181;
          *v58 = 136315394;
          *&v207 = v49;
          sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
          v59 = sub_2CEE70();
          v61 = sub_3F08(v59, v60, &v209);
          v182 = v49;
          v62 = v61;

          *(v58 + 4) = v62;
          *(v58 + 12) = 2080;
          v63 = [v54 debugDescription];
          v64 = sub_2CE270();
          v66 = v65;

          v49 = v182;
          v67 = sub_3F08(v64, v66, &v209);

          *(v58 + 14) = v67;
          _os_log_impl(&dword_0, v55, v56, "CommonMedia#makeSiriKitIntentHandler Handling AirPlay Route setup for 3p app on iOS. Context: %s Intent: %s", v58, 0x16u);
          swift_arrayDestroy();

          v52 = v205;
        }

        v68 = *(v52 + 8);
        v68(v32, v50);
        v69 = v50;
        v70 = v195;
        sub_2CC8B0();
        v71 = v196;
        v72 = v197;
        v73 = (*(v196 + 88))(v70, v197);
        if (v73 == enum case for AirPlayRouteSetupState.none(_:))
        {
          v184(v29, v186, v69);
          v74 = sub_2CDFE0();
          v75 = sub_2CE670();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 0;
            _os_log_impl(&dword_0, v74, v75, "CommonMedia#makeSiriKitIntentHandler Suppressing common WHA routes", v76, 2u);
          }

          v68(v29, v69);
          sub_2CE700();
          (*(v71 + 104))(v192, enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:), v72);
          sub_2CC8C0();
          v77 = v194;
          sub_35E0(v194, v194[3]);
          sub_EEAC(v77, &v209);
          sub_EEAC(v198, &v207);
          sub_EEAC(v193, v206);
          v78 = swift_allocObject();
          sub_F338(&v209, v78 + 16);
          sub_F338(&v207, v78 + 56);
          sub_F338(v206, v78 + 96);
          sub_2CC660();

LABEL_19:
          v36 = v183;
          goto LABEL_20;
        }

        if (v73 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
        {
          v129 = v194;
          sub_35E0(v194, v194[3]);
          sub_2CC690();
          sub_35E0(v129, v129[3]);
          sub_2CC670();
        }

        else
        {
          if (v73 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
          {
            v138 = v194;
            sub_35E0(v194, v194[3]);
            sub_2CC690();
            v139 = v138[3];
            v140 = v138;
          }

          else
          {
            if (v73 != enum case for AirPlayRouteSetupState.startedRouteSetup(_:))
            {
              if (v73 == enum case for AirPlayRouteSetupState.complete(_:))
              {
                v141 = v191;
                v184(v191, v186, v69);
                v142 = v187;
                v143 = sub_2CDFE0();
                v144 = sub_2CE660();

                if (os_log_type_enabled(v143, v144))
                {
                  v145 = swift_slowAlloc();
                  v182 = v49;
                  v146 = v145;
                  v147 = swift_slowAlloc();
                  *&v209 = v147;
                  *v146 = 136315138;
                  v148 = [v142 debugDescription];
                  v149 = sub_2CE270();
                  v151 = v150;

                  v152 = sub_3F08(v149, v151, &v209);

                  *(v146 + 4) = v152;
                  _os_log_impl(&dword_0, v143, v144, "CommonMedia#makeSiriKitIntentHandler AirPlay route setup is complete, no need to wait before executing Handle, intent: %s", v146, 0xCu);
                  sub_306C(v147);

                  v153 = v191;
                }

                else
                {

                  v153 = v141;
                }

                v68(v153, v69);
              }

              else
              {
                if (v73 == enum case for AirPlayRouteSetupState.error(_:))
                {
                  v154 = v189;
                  v184(v189, v186, v69);

                  v155 = sub_2CDFE0();
                  v156 = v49;
                  v157 = sub_2CE680();

                  if (os_log_type_enabled(v155, v157))
                  {
                    v158 = swift_slowAlloc();
                    v159 = swift_slowAlloc();
                    *&v209 = v159;
                    *v158 = 136315138;
                    *&v207 = v156;
                    sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
                    v160 = sub_2CEE70();
                    v162 = sub_3F08(v160, v161, &v209);

                    *(v158 + 4) = v162;
                    _os_log_impl(&dword_0, v155, v157, "CommonMedia#makeSiriKitIntentHandler Something went wrong setting up AirPlay routes %s. Nothing to do here, will create error dialog in makePreHandleIntentOutput or makeIntentHandledResponse", v158, 0xCu);
                    sub_306C(v159);

                    v163 = v189;
                  }

                  else
                  {

                    v163 = v154;
                  }

                  v68(v163, v69);
                  v178 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

                  [v178 init];
                  v179 = v187;
                  v127 = v203;
                  sub_2C9870();

LABEL_37:
                  v128 = sub_2C9880();
                  return (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
                }

                v164 = v190;
                v184(v190, v186, v69);
                v165 = v187;

                v166 = sub_2CDFE0();
                v167 = sub_2CE660();

                if (os_log_type_enabled(v166, v167))
                {
                  v168 = swift_slowAlloc();
                  *&v209 = swift_slowAlloc();
                  *v168 = 136315394;
                  sub_2CC8B0();
                  v169 = sub_2CE2A0();
                  v171 = sub_3F08(v169, v170, &v209);

                  *(v168 + 4) = v171;
                  *(v168 + 12) = 2080;
                  v172 = [v165 debugDescription];
                  v173 = sub_2CE270();
                  v175 = v174;

                  v176 = sub_3F08(v173, v175, &v209);

                  *(v168 + 14) = v176;
                  _os_log_impl(&dword_0, v166, v167, "CommonMedia#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v168, 0x16u);
                  swift_arrayDestroy();
                  v72 = v197;

                  v177 = v190;
                }

                else
                {

                  v177 = v164;
                }

                v68(v177, v69);
                (*(v196 + 8))(v195, v72);
              }

              goto LABEL_19;
            }

            v140 = v194;
            v139 = v194[3];
          }

          sub_35E0(v140, v139);
          sub_2CC6A0();
        }

        _s23AudioFlowDelegatePlugin9PlayMediaO20HandleIntentStrategyC011makeSiriKitH7Handler3app6intent0klB00klhM0VSg0K13AppResolution0P0C_So06INPlayfH0CtF_0(v188, v187);
      }
    }
  }

LABEL_20:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v79 = v204;
  v80 = sub_3ED0(v204, static Logger.default);
  swift_beginAccess();
  v81 = v205;
  v82 = *(v205 + 16);
  v83 = v201;
  v82(v201, v80, v79);
  v84 = v36;
  v85 = sub_2CDFE0();
  v86 = sub_2CE690();

  v87 = os_log_type_enabled(v85, v86);
  v198 = v84;
  if (v87)
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v197 = v82;
    v90 = v89;
    *&v207 = v89;
    *v88 = 136315138;
    v91 = v84;
    v92 = [v91 description];
    v93 = sub_2CE270();
    v95 = v94;

    v79 = v204;
    v96 = sub_3F08(v93, v95, &v207);

    *(v88 + 4) = v96;
    _os_log_impl(&dword_0, v85, v86, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v88, 0xCu);
    sub_306C(v90);
    v82 = v197;
    v97 = v205;

    v98 = *(v97 + 8);
    v98(v201, v79);
  }

  else
  {

    v98 = *(v81 + 8);
    v98(v83, v79);
  }

  v99 = v200;
  if (sub_8FD94(v188))
  {
    v82(v99, v80, v79);
    v100 = sub_2CDFE0();
    v101 = sub_2CE670();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *&v207 = v103;
      *v102 = 136315138;
      if (qword_34C040 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      ObjectType = swift_getObjectType();
      sub_20410(&unk_34FC10, &qword_2D1EE8);
      v104 = sub_2CE2A0();
      v106 = sub_3F08(v104, v105, &v207);

      *(v102 + 4) = v106;
      _os_log_impl(&dword_0, v100, v101, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v102, 0xCu);
      sub_306C(v103);

      v107 = v204;
      v108 = v200;
    }

    else
    {

      v108 = v99;
      v107 = v79;
    }

    v98(v108, v107);
    v121 = qword_34C040;

    v122 = v121 == -1;
    v123 = v198;
    if (!v122)
    {
      swift_once();
    }

    swift_beginAccess();
    v124 = static PlayMedia.intentHandler;
    v125 = v123;
    v126 = v124;
    v127 = v203;
    sub_2C9870();
    goto LABEL_37;
  }

  v82(v199, v80, v79);
  v109 = v198;

  v110 = sub_2CDFE0();
  v111 = sub_2CE670();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *v112 = 138412546;
    sub_2CCF90();
    if (v114)
    {
      v115 = sub_2CE2F0();
      v117 = v116;

      sub_10C40();
      swift_allocError();
      *v118 = v115;
      v118[1] = v117;
      v119 = _swift_stdlib_bridgeErrorToNSError();
      v120 = v119;
    }

    else
    {
      v119 = 0;
      v120 = 0;
    }

    *(v112 + 4) = v119;
    *v113 = v120;
    *(v112 + 12) = 2112;
    v130 = [v109 launchId];
    if (v130)
    {
      v131 = v130;
      v132 = sub_2CE270();
      v134 = v133;

      sub_10C40();
      swift_allocError();
      *v135 = v132;
      v135[1] = v134;
      v130 = _swift_stdlib_bridgeErrorToNSError();
      v136 = v130;
    }

    else
    {
      v136 = 0;
    }

    v79 = v204;
    *(v112 + 14) = v130;
    v113[1] = v136;
    _os_log_impl(&dword_0, v110, v111, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v112, 0x16u);
    sub_20410(&unk_34FC00, &unk_2D0150);
    swift_arrayDestroy();
  }

  v98(v199, v79);
  v137 = sub_2C9880();
  return (*(*(v137 - 8) + 56))(v203, 1, 1, v137);
}

uint64_t sub_8C31C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a8@<X8>)
{
  v195 = a5;
  v200 = a4;
  v196 = a3;
  v205 = a8;
  v199 = sub_2CC760();
  v198 = *(v199 - 8);
  v10 = __chkstk_darwin(v199);
  v194 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v197 = &v183 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v206 = v13;
  v207 = v14;
  v15 = __chkstk_darwin(v13);
  v201 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v202 = &v183 - v18;
  v19 = __chkstk_darwin(v17);
  v203 = &v183 - v20;
  v21 = __chkstk_darwin(v19);
  v192 = &v183 - v22;
  v23 = __chkstk_darwin(v21);
  v191 = &v183 - v24;
  v25 = __chkstk_darwin(v23);
  v193 = &v183 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v183 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v183 - v31;
  __chkstk_darwin(v30);
  v34 = &v183 - v33;
  v35 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v212 = v35;
  v213 = &protocol witness table for INPlayMediaIntent;
  *&v211 = a2;
  sub_35E0(&v211, v35);
  v36 = a2;
  v204 = v35;
  v37 = &off_34B000;
  if (!sub_2CC120())
  {
    sub_306C(&v211);
    v190 = a1;
    v49 = sub_2A07EC();
    v50 = v207;
    if ((v49 & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_35E0(v200, v200[3]);
    if ((sub_2CBBC0() & 1) == 0)
    {
      sub_35E0(v200, v200[3]);
      if ((sub_2CBBB0() & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    sub_2CC8E0();
    v51 = v36;
    v52 = sub_2CC8D0();
    if (!v52)
    {

      goto LABEL_21;
    }

    v53 = v52;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v185 = v36;
    v54 = v206;
    v55 = sub_3ED0(v206, static Logger.default);
    swift_beginAccess();
    v56 = *(v50 + 16);
    v188 = v55;
    v187 = v50 + 16;
    v186 = v56;
    v56(v32, v55, v54);
    v57 = v51;

    v58 = sub_2CDFE0();
    v59 = sub_2CE670();

    v60 = os_log_type_enabled(v58, v59);
    v189 = v57;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      *&v211 = v184;
      *v61 = 136315394;
      *&v209 = v53;
      sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
      v62 = sub_2CEE70();
      v64 = sub_3F08(v62, v63, &v211);

      *(v61 + 4) = v64;
      *(v61 + 12) = 2080;
      v65 = [v57 debugDescription];
      v66 = sub_2CE270();
      v68 = v67;

      v50 = v207;
      v69 = sub_3F08(v66, v68, &v211);

      *(v61 + 14) = v69;
      _os_log_impl(&dword_0, v58, v59, "CommonMedia#makeSiriKitIntentHandler Handling AirPlay Route setup for 3p app on iOS. Context: %s Intent: %s", v61, 0x16u);
      swift_arrayDestroy();

      v54 = v206;
    }

    v70 = *(v50 + 8);
    v70(v32, v54);
    v71 = v197;
    sub_2CC8B0();
    v72 = v198;
    v73 = v199;
    v74 = (*(v198 + 88))(v71, v199);
    if (v74 == enum case for AirPlayRouteSetupState.none(_:))
    {
      v186(v29, v188, v54);
      v75 = sub_2CDFE0();
      v76 = sub_2CE670();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_0, v75, v76, "CommonMedia#makeSiriKitIntentHandler Suppressing common WHA routes", v77, 2u);
      }

      v70(v29, v54);
      v78 = v189;
      sub_2CE700();
      (*(v72 + 104))(v194, enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:), v73);
      sub_2CC8C0();
      v79 = v196;
      sub_35E0(v196, v196[3]);
      sub_EEAC(v79, &v211);
      sub_EEAC(v200, &v209);
      sub_EEAC(v195, v208);
      v80 = swift_allocObject();
      sub_F338(&v211, v80 + 16);
      sub_F338(&v209, v80 + 56);
      sub_F338(v208, v80 + 96);
      sub_2CC660();

LABEL_19:
      v36 = v185;
      v37 = &off_34B000;
LABEL_21:
      if (v37[491] != -1)
      {
        swift_once();
      }

      v81 = v206;
      v82 = sub_3ED0(v206, static Logger.default);
      swift_beginAccess();
      v83 = *(v50 + 16);
      v84 = v203;
      v83(v203, v82, v81);
      v85 = v36;
      v86 = sub_2CDFE0();
      v87 = sub_2CE690();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *&v209 = v200;
        *v88 = 136315138;
        v89 = v85;
        v90 = [v89 description];
        LODWORD(v199) = v87;
        v91 = v83;
        v92 = v82;
        v93 = v85;
        v94 = v90;
        v95 = sub_2CE270();
        v97 = v96;

        v85 = v93;
        v82 = v92;
        v83 = v91;
        v98 = sub_3F08(v95, v97, &v209);

        *(v88 + 4) = v98;
        _os_log_impl(&dword_0, v86, v199, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v88, 0xCu);
        sub_306C(v200);
        v81 = v206;

        v99 = *(v207 + 8);
        v99(v203, v81);
      }

      else
      {

        v99 = *(v50 + 8);
        v99(v84, v81);
      }

      v100 = v202;
      if ((sub_8FD94(v190) & 1) == 0)
      {
        v83(v201, v82, v81);
        v108 = v85;

        v109 = sub_2CDFE0();
        v110 = sub_2CE670();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *v111 = 138412546;
          sub_2CCF90();
          if (v113)
          {
            v114 = sub_2CE2F0();
            v116 = v115;

            sub_10C40();
            swift_allocError();
            *v117 = v114;
            v117[1] = v116;
            v118 = _swift_stdlib_bridgeErrorToNSError();
            v119 = v118;
          }

          else
          {
            v118 = 0;
            v119 = 0;
          }

          *(v111 + 4) = v118;
          *v112 = v119;
          *(v111 + 12) = 2112;
          v130 = [v108 launchId];
          if (v130)
          {
            v131 = v130;
            v132 = sub_2CE270();
            v134 = v133;

            sub_10C40();
            swift_allocError();
            *v135 = v132;
            v135[1] = v134;
            v130 = _swift_stdlib_bridgeErrorToNSError();
            v136 = v130;
          }

          else
          {
            v136 = 0;
          }

          *(v111 + 14) = v130;
          v112[1] = v136;
          _os_log_impl(&dword_0, v109, v110, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v111, 0x16u);
          sub_20410(&unk_34FC00, &unk_2D0150);
          swift_arrayDestroy();
        }

        v99(v201, v206);
        v125 = sub_2C9880();
        v126 = *(*(v125 - 8) + 56);
        v127 = v205;
        v128 = 1;
        return v126(v127, v128, 1, v125);
      }

      v83(v100, v82, v81);
      v101 = sub_2CDFE0();
      v102 = sub_2CE670();
      if (os_log_type_enabled(v101, v102))
      {
        v203 = v85;
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *&v209 = v104;
        *v103 = 136315138;
        if (qword_34C040 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        ObjectType = swift_getObjectType();
        sub_20410(&unk_34FC10, &qword_2D1EE8);
        v105 = sub_2CE2A0();
        v107 = sub_3F08(v105, v106, &v209);

        *(v103 + 4) = v107;
        _os_log_impl(&dword_0, v101, v102, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v103, 0xCu);
        sub_306C(v104);

        v99(v202, v206);
        v85 = v203;
      }

      else
      {

        v99(v100, v81);
      }

      v120 = qword_34C040;

      if (v120 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v121 = static PlayMedia.intentHandler;
      v122 = v85;
      v123 = v121;
      v124 = v205;
      sub_2C9870();
      v125 = sub_2C9880();
      v126 = *(*(v125 - 8) + 56);
      v127 = v124;
LABEL_38:
      v128 = 0;
      return v126(v127, v128, 1, v125);
    }

    if (v74 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
    {
      v129 = v196;
      sub_35E0(v196, v196[3]);
      sub_2CC690();
      sub_35E0(v129, v129[3]);
      sub_2CC670();
    }

    else
    {
      if (v74 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
      {
        v137 = v196;
        sub_35E0(v196, v196[3]);
        sub_2CC690();
        v138 = v137[3];
        v139 = v137;
      }

      else
      {
        if (v74 != enum case for AirPlayRouteSetupState.startedRouteSetup(_:))
        {
          if (v74 == enum case for AirPlayRouteSetupState.complete(_:))
          {
            v200 = v53;
            v141 = v193;
            v186(v193, v188, v54);
            v142 = v189;
            v143 = sub_2CDFE0();
            v144 = sub_2CE660();

            if (os_log_type_enabled(v143, v144))
            {
              v145 = swift_slowAlloc();
              v146 = swift_slowAlloc();
              *&v211 = v146;
              *v145 = 136315138;
              v147 = [v142 debugDescription];
              v148 = v54;
              v149 = sub_2CE270();
              v151 = v150;

              v152 = sub_3F08(v149, v151, &v211);

              *(v145 + 4) = v152;
              _os_log_impl(&dword_0, v143, v144, "CommonMedia#makeSiriKitIntentHandler AirPlay route setup is complete, no need to wait before executing Handle, intent: %s", v145, 0xCu);
              sub_306C(v146);

              v153 = v148;
              v50 = v207;
              v70(v193, v153);
            }

            else
            {

              v70(v141, v54);
            }
          }

          else
          {
            if (v74 == enum case for AirPlayRouteSetupState.error(_:))
            {
              v154 = v191;
              v186(v191, v188, v54);

              v155 = sub_2CDFE0();
              v156 = v53;
              v157 = sub_2CE680();

              if (os_log_type_enabled(v155, v157))
              {
                v158 = swift_slowAlloc();
                v159 = swift_slowAlloc();
                *&v211 = v159;
                *v158 = 136315138;
                *&v209 = v156;
                sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
                v160 = sub_2CEE70();
                v162 = sub_3F08(v160, v161, &v211);

                *(v158 + 4) = v162;
                _os_log_impl(&dword_0, v155, v157, "CommonMedia#makeSiriKitIntentHandler Something went wrong setting up AirPlay routes %s. Nothing to do here, will create error dialog in makePreHandleIntentOutput or makeIntentHandledResponse", v158, 0xCu);
                sub_306C(v159);

                v163 = v191;
              }

              else
              {

                v163 = v154;
              }

              v70(v163, v54);
              v180 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

              [v180 init];
              v181 = v189;
              v182 = v205;
              sub_2C9870();

              v125 = sub_2C9880();
              v126 = *(*(v125 - 8) + 56);
              v127 = v182;
              goto LABEL_38;
            }

            v164 = v192;
            v186(v192, v188, v54);
            v165 = v189;

            v166 = sub_2CDFE0();
            v167 = sub_2CE660();

            if (os_log_type_enabled(v166, v167))
            {
              v168 = swift_slowAlloc();
              *&v211 = swift_slowAlloc();
              *v168 = 136315394;
              v169 = v165;
              sub_2CC8B0();
              v170 = sub_2CE2A0();
              v172 = sub_3F08(v170, v171, &v211);

              *(v168 + 4) = v172;
              *(v168 + 12) = 2080;
              v173 = [v169 debugDescription];
              v174 = sub_2CE270();
              v176 = v175;

              v177 = sub_3F08(v174, v176, &v211);

              *(v168 + 14) = v177;
              _os_log_impl(&dword_0, v166, v167, "CommonMedia#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v168, 0x16u);
              swift_arrayDestroy();

              v73 = v199;

              v178 = v206;
              v179 = v192;
              v50 = v207;
            }

            else
            {

              v179 = v164;
              v178 = v54;
            }

            v70(v179, v178);
            (*(v198 + 8))(v197, v73);
          }

          goto LABEL_19;
        }

        v139 = v196;
        v138 = v196[3];
      }

      sub_35E0(v139, v138);
      sub_2CC6A0();
    }

    v140 = v189;
    sub_83764(v190, v189, sub_8C31C);
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v38 = v206;
  v39 = sub_3ED0(v206, static Logger.default);
  swift_beginAccess();
  v40 = v207;
  (*(v207 + 16))(v34, v39, v38);
  v41 = sub_2CDFE0();
  v42 = sub_2CE690();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v43, 2u);
  }

  (*(v40 + 8))(v34, v38);
  v44 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

  [v44 init];
  v45 = v36;
  v46 = v205;
  sub_2C9870();
  v47 = sub_2C9880();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  return sub_306C(&v211);
}

uint64_t sub_8DAE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v96 = a1;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v94 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v93 = &v85 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v85 - v14;
  __chkstk_darwin(v13);
  v17 = &v85 - v16;
  v98 = a2;
  v18 = type metadata accessor for DetermineIntent();
  v19 = a2;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  v20 = swift_dynamicCast();
  v95 = a4;
  if (v20)
  {
    sub_F338(v99, v101);
    sub_35E0(v101, v101[3]);
    if (sub_2CC120())
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v21 = sub_3ED0(v7, static Logger.default);
      swift_beginAccess();
      (*(v8 + 16))(v17, v21, v7);
      v22 = sub_2CDFE0();
      v23 = sub_2CE690();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_0, v22, v23, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v24, 2u);
      }

      (*(v8 + 8))(v17, v7);
      v25 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

      [v25 init];
      v26 = v19;
      sub_2C9870();
      v27 = sub_2C9880();
      (*(*(v27 - 8) + 56))(a4, 0, 1, v27);
      return sub_306C(v101);
    }

    sub_306C(v101);
  }

  else
  {
    v100 = 0;
    memset(v99, 0, sizeof(v99));
    sub_30B8(v99, &qword_3530A0, &qword_2D1EF8);
  }

  v29 = v96;
  if (sub_28E988(v96))
  {
    sub_35E0(a3, a3[3]);
    if ((sub_2CBBC0() & 1) == 0)
    {
      sub_35E0(a3, a3[3]);
      sub_2CBBB0();
    }
  }

  v87 = v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v30 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v31 = *(v8 + 16);
  v90 = v30;
  v89 = v8 + 16;
  v88 = v31;
  v31(v15, v30, v7);
  v32 = v19;
  v33 = sub_2CDFE0();
  v34 = sub_2CE690();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v95;
  v91 = v32;
  v92 = v8;
  if (v35)
  {
    v37 = swift_slowAlloc();
    v86 = v15;
    v38 = v37;
    v85 = swift_slowAlloc();
    *&v99[0] = v85;
    *v38 = 136315138;
    v39 = v32;
    v40 = v36;
    v41 = [v39 description];
    v42 = sub_2CE270();
    v43 = v7;
    v45 = v44;

    v36 = v40;
    v29 = v96;
    v46 = sub_3F08(v42, v45, v99);
    v7 = v43;

    *(v38 + 4) = v46;
    v47 = v92;
    _os_log_impl(&dword_0, v33, v34, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v38, 0xCu);
    sub_306C(v85);

    v48 = *(v47 + 8);
    v48(v86, v43);
  }

  else
  {

    v48 = *(v8 + 8);
    v48(v15, v7);
  }

  if (sub_8FD94(v29))
  {
    v49 = v93;
    v88(v93, v90, v7);
    v50 = sub_2CDFE0();
    v51 = sub_2CE670();
    if (os_log_type_enabled(v50, v51))
    {
      v94 = v7;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v99[0] = v53;
      *v52 = 136315138;
      if (qword_34BF80 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      ObjectType = swift_getObjectType();
      sub_20410(&unk_34FC10, &qword_2D1EE8);
      v54 = sub_2CE2A0();
      v56 = sub_3F08(v54, v55, v99);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_0, v50, v51, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v52, 0xCu);
      sub_306C(v53);

      v48(v93, v94);
    }

    else
    {

      v48(v49, v7);
    }

    v70 = qword_34BF80;

    v71 = v70 == -1;
    v72 = v91;
    if (!v71)
    {
      swift_once();
    }

    swift_beginAccess();
    v73 = static Determine.intentHandler;
    v74 = v72;
    v75 = v73;
    sub_2C9870();
    v76 = sub_2C9880();
    return (*(*(v76 - 8) + 56))(v36, 0, 1, v76);
  }

  else
  {
    v88(v94, v90, v7);
    v57 = v91;

    v58 = sub_2CDFE0();
    v59 = sub_2CE670();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v7;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412546;
      sub_2CCF90();
      if (v63)
      {
        v64 = sub_2CE2F0();
        v66 = v65;

        sub_10C40();
        swift_allocError();
        *v67 = v64;
        v67[1] = v66;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        v69 = v68;
      }

      else
      {
        v68 = 0;
        v69 = 0;
      }

      *(v61 + 4) = v68;
      *v62 = v69;
      *(v61 + 12) = 2112;
      v77 = [v57 launchId];
      if (v77)
      {
        v78 = v77;
        v79 = sub_2CE270();
        v81 = v80;

        sub_10C40();
        swift_allocError();
        *v82 = v79;
        v82[1] = v81;
        v77 = _swift_stdlib_bridgeErrorToNSError();
        v83 = v77;
      }

      else
      {
        v83 = 0;
      }

      v7 = v60;
      *(v61 + 14) = v77;
      v62[1] = v83;
      _os_log_impl(&dword_0, v58, v59, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v61, 0x16u);
      sub_20410(&unk_34FC00, &unk_2D0150);
      swift_arrayDestroy();

      v36 = v95;
    }

    v48(v94, v7);
    v84 = sub_2C9880();
    return (*(*(v84 - 8) + 56))(v36, 1, 1, v84);
  }
}

uint64_t sub_8E570@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t *a8@<X7>, uint64_t a9@<X8>, void *a10, uint64_t a11, uint64_t (*a12)(uint64_t), void (*a13)(uint64_t, id), uint64_t a14, uint64_t a15, uint64_t *a16, void **a17, char *a18)
{
  v214 = a5;
  v220 = a4;
  v215 = a3;
  v223 = a9;
  v217 = sub_2CC760();
  v218 = *(v217 - 8);
  v21 = __chkstk_darwin(v217);
  v213 = &v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v216 = &v199 - v23;
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v224 = v24;
  v225 = v25;
  v26 = __chkstk_darwin(v24);
  v221 = &v199 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v219 = &v199 - v29;
  v30 = __chkstk_darwin(v28);
  v222 = &v199 - v31;
  v32 = __chkstk_darwin(v30);
  v211 = &v199 - v33;
  v34 = __chkstk_darwin(v32);
  v210 = &v199 - v35;
  v36 = __chkstk_darwin(v34);
  v212 = &v199 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v199 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v199 - v42;
  __chkstk_darwin(v41);
  v45 = &v199 - v44;
  v46 = sub_334A0(0, a8, a10);
  v230 = v46;
  v231 = a11;
  *&v229 = a2;
  sub_35E0(&v229, v46);
  v47 = a2;
  v48 = &off_34B000;
  if (!sub_2CC120())
  {
    v209 = v46;
    sub_306C(&v229);
    v60 = a12(a1);
    v61 = a1;
    v62 = v224;
    if ((v60 & 1) == 0)
    {
      goto LABEL_24;
    }

    v208 = v47;
    sub_35E0(v220, v220[3]);
    v48 = &off_34B000;
    v47 = v208;
    if ((sub_2CBBC0() & 1) == 0)
    {
      sub_35E0(v220, v220[3]);
      v48 = &off_34B000;
      v47 = v208;
      if ((sub_2CBBB0() & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    objc_opt_self();
    v63 = swift_dynamicCastObjCClass();
    if (!v63)
    {
      goto LABEL_24;
    }

    v64 = v63;
    v65 = sub_2CC8E0();
    v66 = v47;
    v207 = v65;
    v67 = sub_2CC8D0();
    if (!v67)
    {

LABEL_23:
      v48 = &off_34B000;
LABEL_24:
      if (v48[491] != -1)
      {
        swift_once();
      }

      v96 = sub_3ED0(v62, static Logger.default);
      swift_beginAccess();
      v97 = v225;
      v98 = v222;
      v218 = *(v225 + 16);
      (v218)(v222, v96, v62);
      v99 = v47;
      v100 = sub_2CDFE0();
      v101 = sub_2CE690();

      v102 = os_log_type_enabled(v100, v101);
      v220 = v99;
      if (v102)
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v217 = v96;
        v105 = v104;
        *&v227 = v104;
        *v103 = 136315138;
        v106 = v99;
        v107 = [v106 description];
        v108 = sub_2CE270();
        v109 = v61;
        v111 = v110;

        v112 = v108;
        v62 = v224;
        v113 = v225;
        v114 = sub_3F08(v112, v111, &v227);
        v61 = v109;

        *(v103 + 4) = v114;
        _os_log_impl(&dword_0, v100, v101, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v103, 0xCu);
        sub_306C(v105);
        v96 = v217;

        v115 = *(v113 + 8);
        v115(v222, v62);
      }

      else
      {

        v116 = v98;
        v115 = *(v97 + 8);
        v115(v116, v62);
      }

      if ((sub_8FD94(v61) & 1) == 0)
      {
        (v218)(v221, v96, v62);
        v126 = v220;

        v127 = sub_2CDFE0();
        v128 = sub_2CE670();

        if (os_log_type_enabled(v127, v128))
        {
          v224 = v115;
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          *v129 = 138412546;
          sub_2CCF90();
          if (v131)
          {
            v132 = sub_2CE2F0();
            v134 = v133;

            sub_10C40();
            swift_allocError();
            *v135 = v132;
            v135[1] = v134;
            v136 = _swift_stdlib_bridgeErrorToNSError();
            v137 = v136;
          }

          else
          {
            v136 = 0;
            v137 = 0;
          }

          *(v129 + 4) = v136;
          *v130 = v137;
          *(v129 + 12) = 2112;
          v147 = [v126 launchId];
          if (v147)
          {
            v148 = v147;
            v149 = sub_2CE270();
            v151 = v150;

            sub_10C40();
            swift_allocError();
            *v152 = v149;
            v152[1] = v151;
            v147 = _swift_stdlib_bridgeErrorToNSError();
            v153 = v147;
          }

          else
          {
            v153 = 0;
          }

          *(v129 + 14) = v147;
          v130[1] = v153;
          _os_log_impl(&dword_0, v127, v128, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v129, 0x16u);
          sub_20410(&unk_34FC00, &unk_2D0150);
          swift_arrayDestroy();

          v115 = v224;
        }

        v115(v221, v62);
        v143 = sub_2C9880();
        v144 = *(*(v143 - 8) + 56);
        v145 = v223;
        v146 = 1;
        return v144(v145, v146, 1, v143);
      }

      v222 = a18;
      v117 = v219;
      (v218)(v219, v96, v62);
      v118 = sub_2CDFE0();
      v119 = sub_2CE670();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = v115;
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *&v227 = v122;
        *v121 = 136315138;
        if (*a16 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        ObjectType = swift_getObjectType();
        sub_20410(&unk_34FC10, &qword_2D1EE8);
        v123 = sub_2CE2A0();
        v125 = sub_3F08(v123, v124, &v227);

        *(v121 + 4) = v125;
        _os_log_impl(&dword_0, v118, v119, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v121, 0xCu);
        sub_306C(v122);

        v120(v219, v224);
      }

      else
      {

        v115(v117, v62);
      }

      v138 = *a16;

      if (v138 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v139 = *a17;
      v140 = v220;
      v141 = v139;
      v142 = v223;
      sub_2C9870();
      v143 = sub_2C9880();
      v144 = *(*(v143 - 8) + 56);
      v145 = v142;
LABEL_41:
      v146 = 0;
      return v144(v145, v146, 1, v143);
    }

    v68 = v67;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v204 = v64;
    v206 = v61;
    v69 = sub_3ED0(v62, static Logger.default);
    swift_beginAccess();
    v70 = v225;
    v71 = *(v225 + 16);
    v203 = v69;
    v202 = v225 + 16;
    v201 = v71;
    v71(v43, v69, v62);
    v72 = v66;

    v73 = sub_2CDFE0();
    v74 = sub_2CE670();
    v205 = v72;

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *&v229 = v200;
      *v75 = 136315394;
      *&v227 = v68;
      sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
      v76 = sub_2CEE70();
      v78 = v68;
      v79 = sub_3F08(v76, v77, &v229);

      *(v75 + 4) = v79;
      *(v75 + 12) = 2080;
      v80 = [v204 debugDescription];
      v81 = sub_2CE270();
      v83 = v82;

      v84 = v81;
      v68 = v78;
      v85 = sub_3F08(v84, v83, &v229);

      *(v75 + 14) = v85;
      _os_log_impl(&dword_0, v73, v74, "CommonMedia#makeSiriKitIntentHandler Handling AirPlay Route setup for 3p app on iOS. Context: %s Intent: %s", v75, 0x16u);
      swift_arrayDestroy();

      v86 = v225;
    }

    else
    {

      v86 = v70;
    }

    v87 = *(v86 + 8);
    v87(v43, v62);
    v88 = v217;
    v89 = v216;
    sub_2CC8B0();
    v90 = (*(v218 + 88))(v89, v88);
    if (v90 == enum case for AirPlayRouteSetupState.none(_:))
    {
      v201(v40, v203, v62);
      v91 = sub_2CDFE0();
      v92 = sub_2CE670();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_0, v91, v92, "CommonMedia#makeSiriKitIntentHandler Suppressing common WHA routes", v93, 2u);
        v88 = v217;
      }

      v87(v40, v62);
      sub_2CE700();
      (*(v218 + 104))(v213, enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:), v88);
      sub_2CC8C0();
      v94 = v215;
      sub_35E0(v215, v215[3]);
      sub_EEAC(v94, &v229);
      sub_EEAC(v220, &v227);
      sub_EEAC(v214, v226);
      v95 = swift_allocObject();
      sub_F338(&v229, v95 + 16);
      sub_F338(&v227, v95 + 56);
      sub_F338(v226, v95 + 96);
      sub_2CC660();

LABEL_22:
      v61 = v206;
      v47 = v208;
      goto LABEL_23;
    }

    if (v90 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
    {
      v154 = v215;
      sub_35E0(v215, v215[3]);
      sub_2CC690();
      sub_35E0(v154, v154[3]);
      sub_2CC670();
    }

    else
    {
      if (v90 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
      {
        v155 = v215;
        sub_35E0(v215, v215[3]);
        sub_2CC690();
        v156 = v155[3];
        v157 = v155;
      }

      else
      {
        if (v90 != enum case for AirPlayRouteSetupState.startedRouteSetup(_:))
        {
          if (v90 != enum case for AirPlayRouteSetupState.complete(_:))
          {
            if (v90 == enum case for AirPlayRouteSetupState.error(_:))
            {
              v172 = v210;
              v201(v210, v203, v62);

              v173 = sub_2CDFE0();
              v174 = sub_2CE680();

              if (os_log_type_enabled(v173, v174))
              {
                v175 = swift_slowAlloc();
                v176 = swift_slowAlloc();
                *&v229 = v176;
                *v175 = 136315138;
                *&v227 = v68;
                sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
                v177 = sub_2CEE70();
                v179 = sub_3F08(v177, v178, &v229);

                *(v175 + 4) = v179;
                _os_log_impl(&dword_0, v173, v174, "CommonMedia#makeSiriKitIntentHandler Something went wrong setting up AirPlay routes %s. Nothing to do here, will create error dialog in makePreHandleIntentOutput or makeIntentHandledResponse", v175, 0xCu);
                sub_306C(v176);

                v180 = v210;
              }

              else
              {

                v180 = v172;
              }

              v87(v180, v62);
              v196 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

              [v196 init];
              v197 = v205;
              v198 = v223;
              sub_2C9870();

              v143 = sub_2C9880();
              v144 = *(*(v143 - 8) + 56);
              v145 = v198;
              goto LABEL_41;
            }

            v181 = v211;
            v201(v211, v203, v62);
            v182 = v205;

            v183 = sub_2CDFE0();
            v184 = sub_2CE660();

            if (os_log_type_enabled(v183, v184))
            {
              v185 = swift_slowAlloc();
              v215 = swift_slowAlloc();
              *&v229 = v215;
              *v185 = 136315394;
              sub_2CC8B0();
              v186 = sub_2CE2A0();
              v188 = sub_3F08(v186, v187, &v229);
              v220 = v68;
              v189 = v188;

              *(v185 + 4) = v189;
              *(v185 + 12) = 2080;
              v190 = [v182 debugDescription];
              v191 = sub_2CE270();
              v193 = v192;

              v194 = sub_3F08(v191, v193, &v229);

              *(v185 + 14) = v194;
              _os_log_impl(&dword_0, v183, v184, "CommonMedia#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v185, 0x16u);
              swift_arrayDestroy();
              v88 = v217;

              v195 = v211;
            }

            else
            {

              v195 = v181;
            }

            v87(v195, v62);
            v47 = v208;
            (*(v218 + 8))(v216, v88);
            v61 = v206;
            goto LABEL_23;
          }

          v159 = v212;
          v201(v212, v203, v62);
          v160 = v205;
          v161 = sub_2CDFE0();
          v162 = sub_2CE660();

          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *&v229 = v164;
            *v163 = 136315138;
            v165 = [v160 debugDescription];
            v166 = sub_2CE270();
            v220 = v68;
            v167 = v166;
            v169 = v168;

            v170 = sub_3F08(v167, v169, &v229);

            *(v163 + 4) = v170;
            _os_log_impl(&dword_0, v161, v162, "CommonMedia#makeSiriKitIntentHandler AirPlay route setup is complete, no need to wait before executing Handle, intent: %s", v163, 0xCu);
            sub_306C(v164);

            v171 = v212;
          }

          else
          {

            v171 = v159;
          }

          v87(v171, v62);
          goto LABEL_22;
        }

        v157 = v215;
        v156 = v215[3];
      }

      sub_35E0(v157, v156);
      sub_2CC6A0();
    }

    v158 = v205;
    a13(v206, v205);
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v49 = v224;
  v50 = sub_3ED0(v224, static Logger.default);
  swift_beginAccess();
  v51 = v225;
  (*(v225 + 16))(v45, v50, v49);
  v52 = sub_2CDFE0();
  v53 = sub_2CE690();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v54, 2u);
  }

  (*(v51 + 8))(v45, v49);
  v55 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

  [v55 init];
  v56 = v47;
  v57 = v223;
  sub_2C9870();
  v58 = sub_2C9880();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  return sub_306C(&v229);
}

uint64_t sub_8FD94(uint64_t a1)
{
  v1 = sub_2CCF90();
  v3 = v2;
  v4 = sub_2CBE10();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {
      goto LABEL_16;
    }

    v6 = sub_2CEEA0();

    if (v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v7 = sub_2CCF90();
  v9 = v8;
  v10 = sub_2CBE30();
  if (!v9)
  {

    goto LABEL_13;
  }

  if (v7 == v10 && v9 == v11)
  {
    goto LABEL_16;
  }

  v12 = sub_2CEEA0();

  if ((v12 & 1) == 0)
  {
LABEL_13:
    v14 = sub_2CCF90();
    v16 = v15;
    v17 = sub_2CBDD0();
    if (!v16)
    {
      v13 = 0;
      goto LABEL_18;
    }

    if (v14 != v17 || v16 != v18)
    {
      v13 = sub_2CEEA0();
      goto LABEL_17;
    }

LABEL_16:
    v13 = 1;
LABEL_17:

LABEL_18:

    return v13 & 1;
  }

LABEL_11:
  v13 = 1;
  return v13 & 1;
}

unint64_t sub_8FF78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E190, &unk_2D1ED8);
    v3 = sub_2CEDE0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_4F538(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90074(uint64_t a1)
{
  v2 = sub_20410(&qword_34E130, &qword_2D1E78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_20410(&qword_34E138, &qword_2D1E80);
    v7 = sub_2CEDE0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_F3F4(v9, v5, &qword_34E130, &qword_2D1E78);
      result = sub_4F660(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2CD540();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_9025C(uint64_t a1)
{
  v2 = sub_20410(&qword_34E140, &qword_2D1E88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_20410(&qword_34E148, &qword_2D1E90);
    v7 = sub_2CEDE0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_F3F4(v9, v5, &qword_34E140, &qword_2D1E88);
      result = sub_4F734(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2CD4B0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90444(uint64_t a1)
{
  v2 = sub_20410(&qword_34E150, &qword_2D1E98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_20410(&qword_34E158, &qword_2D1EA0);
    v7 = sub_2CEDE0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_F3F4(v9, v5, &qword_34E150, &qword_2D1E98);
      result = sub_4F808(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2CD4D0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_9062C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E180, &qword_2D7FE0);
    v3 = sub_2CEDE0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_4F538(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E188, &qword_2D1ED0);
    v3 = sub_2CEDE0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_4F538(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_9082C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E1B0, &qword_2D1F10);
    v3 = sub_2CEDE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_F3F4(v4, v13, &qword_34E1B8, &qword_2D1F18);
      result = sub_4F5B0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_E2DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E1A0, &qword_2D1F00);
    v3 = sub_2CEDE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_F3F4(v4, &v13, &qword_34E1A8, &qword_2D1F08);
      v5 = v13;
      v6 = v14;
      result = sub_4F538(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_420A4(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E178, &unk_2D1EC0);
    v3 = sub_2CEDE0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_4F538(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90BB0(uint64_t a1)
{
  v2 = sub_20410(&qword_34E160, &qword_2D1EA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_20410(&qword_34E168, &qword_2D1EB0);
    v7 = sub_2CEDE0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_F3F4(v9, v5, &qword_34E160, &qword_2D1EA8);
      result = sub_4F9B4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2CB0A0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_90DA8()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_90E20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v126 = a5;
  v127 = a6;
  v120 = a4;
  v131 = a1;
  v8 = sub_2C9B80();
  __chkstk_darwin(v8 - 8);
  v119 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CA630();
  v124 = *(v10 - 8);
  v125 = v10;
  v11 = __chkstk_darwin(v10);
  v121 = v12;
  v122 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v123 = &v99 - v13;
  v106 = sub_2CB260();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v117 = *(v107 - 8);
  v15 = __chkstk_darwin(v107);
  v130 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v16;
  __chkstk_darwin(v15);
  v18 = &v99 - v17;
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v129 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v99 - v23;
  v25 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v114 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v116 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v108 = &v99 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v99 - v31;
  v115 = v33;
  __chkstk_darwin(v30);
  v35 = &v99 - v34;
  v36 = sub_2CA130();
  v37 = *(v36 - 8);
  v38 = *(v37 + 16);
  v39 = a2;
  v40 = v35;
  v103 = v36;
  v38(v35, v39);
  *&v35[*(v25 + 48)] = a3;
  v41 = qword_34BF58;
  v42 = a3;
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v44 = *(v20 + 16);
  v113 = v43;
  v112 = v20 + 16;
  v111 = v44;
  v44(v24, v43, v19);
  sub_F3F4(v131, v18, &unk_3530C0, &unk_2D0A40);
  sub_F3F4(v40, v32, &qword_34C6E8, &unk_2D0FF0);
  v45 = sub_2CDFE0();
  v46 = sub_2CE670();
  v47 = os_log_type_enabled(v45, v46);
  v128 = v40;
  v110 = v19;
  v109 = v20;
  if (v47)
  {
    v101 = v46;
    v102 = v24;
    v48 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v132 = v100;
    *v48 = 136315650;
    sub_F3F4(v18, v130, &unk_3530C0, &unk_2D0A40);
    v49 = sub_2CE2A0();
    v51 = v50;
    sub_30B8(v18, &unk_3530C0, &unk_2D0A40);
    v52 = sub_3F08(v49, v51, &v132);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    v53 = v108;
    sub_F3F4(v32, v108, &qword_34C6E8, &unk_2D0FF0);
    v54 = *(v53 + *(v25 + 48));
    v55 = [v54 dialog];

    sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
    v56 = sub_2CE410();

    if (v56 >> 62)
    {
      result = sub_2CEDA0();
    }

    else
    {
      result = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
    }

    v58 = v102;
    if (result)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v59 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v59 = *(v56 + 32);
      }

      v60 = v59;

      v61 = [v60 fullPrint];

      v62 = sub_2CE270();
      v64 = v63;
    }

    else
    {

      v62 = 0;
      v64 = 0xE000000000000000;
    }

    (*(v37 + 8))(v53, v103);
    sub_30B8(v32, &qword_34C6E8, &unk_2D0FF0);
    v66 = sub_3F08(v62, v64, &v132);

    *(v48 + 14) = v66;
    *(v48 + 22) = 2082;
    v67 = sub_2CCCA0();
    v69 = sub_3F08(v67, v68, &v132);

    *(v48 + 24) = v69;
    _os_log_impl(&dword_0, v45, v101, "HandleIntentStrategy#handleResponse with snippet: %s, dialog: %s %{public}s", v48, 0x20u);
    swift_arrayDestroy();

    v65 = *(v109 + 8);
    v70 = v58;
    v19 = v110;
    v65(v70, v110);
    v40 = v128;
  }

  else
  {

    sub_30B8(v32, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v18, &unk_3530C0, &unk_2D0A40);
    v65 = *(v20 + 8);
    v65(v24, v19);
  }

  v71 = sub_2CB460();
  v72 = v129;
  if (v71)
  {
    v73 = v71;
    v74 = v40;
  }

  else
  {
    v74 = v40;
    sub_2CB180();
    v73 = sub_2CB170();
  }

  v111(v72, v113, v19);

  v75 = sub_2CDFE0();
  v76 = sub_2CE660();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v132 = v78;
    *v77 = 136315138;
    sub_2CB130();
    v79 = v104;
    sub_2CD3C0();

    v80 = sub_2CB200();
    v82 = v81;
    (*(v105 + 8))(v79, v106);
    v83 = sub_3F08(v80, v82, &v132);

    *(v77 + 4) = v83;
    _os_log_impl(&dword_0, v75, v76, "AddMedia+HandleIntentStrategy#handleResponse with responseMode = %s", v77, 0xCu);
    sub_306C(v78);

    v84 = v129;
    v85 = v110;
  }

  else
  {

    v84 = v72;
    v85 = v19;
  }

  v65(v84, v85);
  v86 = v117;
  v108 = v73;
  v87 = sub_2C9B20();
  __chkstk_darwin(v87);
  *(&v99 - 4) = v120;
  *(&v99 - 3) = v73;
  *(&v99 - 2) = v74;
  v88 = v123;
  sub_2CA560();
  v89 = v130;
  sub_F3F4(v131, v130, &unk_3530C0, &unk_2D0A40);
  v90 = v74;
  v91 = v116;
  sub_F3F4(v90, v116, &qword_34C6E8, &unk_2D0FF0);
  v92 = v124;
  v93 = v125;
  v94 = v122;
  (*(v124 + 16))(v122, v88, v125);
  v95 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v96 = (v118 + *(v114 + 80) + v95) & ~*(v114 + 80);
  v97 = (v115 + *(v92 + 80) + v96) & ~*(v92 + 80);
  v98 = swift_allocObject();
  sub_14A58(v89, v98 + v95, &unk_3530C0, &unk_2D0A40);
  sub_14A58(v91, v98 + v96, &qword_34C6E8, &unk_2D0FF0);
  (*(v92 + 32))(v98 + v97, v94, v93);
  sub_20410(&unk_353030, &unk_2D1450);
  sub_2CE4F0();

  (*(v92 + 8))(v88, v93);
  return sub_30B8(v128, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_91AB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_86144(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_91C6C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_91CC8()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_91D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB920;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_923E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB900;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_92A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB8E0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_930EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB8C0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_93770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB8A0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001BLL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001BLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001BLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_93DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB880;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ELL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ELL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ELL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}