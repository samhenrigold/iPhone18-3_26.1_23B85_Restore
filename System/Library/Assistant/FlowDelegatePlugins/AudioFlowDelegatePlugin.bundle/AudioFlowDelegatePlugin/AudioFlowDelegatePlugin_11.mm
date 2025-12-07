uint64_t sub_14BCE4()
{

  return _swift_task_switch(sub_14BE18, 0, 0);
}

uint64_t sub_14BE18()
{
  v1 = (*(v0 + 208) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_outputPublisher);
  v2 = v1[3];
  v3 = v1[4];
  sub_35E0(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 424) = v4;
  *v4 = v0;
  v4[1] = sub_14BEE0;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 96, v2, v3);
}

uint64_t sub_14BEE0()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_14C3F4;
  }

  else
  {
    v2 = sub_14BFF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_14BFF4()
{
  v32 = v0[49];
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  v9 = v0[30];
  v28 = v0[31];
  v29 = v0[29];
  v30 = v0[28];
  v31 = v0[27];
  v26 = v0[38];
  v27 = v0[26];
  (*(v2 + 104))(v1, enum case for AdditionalMetricsDescription.ModuleName.omif (_:));
  (*(v4 + 104))(v3, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v5);
  (*(v7 + 104))(v6, enum case for AdditionalMetricsDescription.StatusReason.noSearchResults(_:), v8);
  sub_2CCAD0();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v26);
  sub_35E0((v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
  (*(v9 + 104))(v28, enum case for TypeOfIntent.openMediaItem(_:), v29);
  v10 = enum case for ActivityType.failed(_:);
  v11 = sub_2C9C20();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v30, v10, v11);
  (*(v12 + 56))(v30, 0, 1, v11);
  v13 = enum case for SiriKitReliabilityCodes.success(_:);
  v14 = sub_2C98F0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v31, v13, v14);
  (*(v15 + 56))(v31, 0, 1, v14);
  v16 = v32;
  sub_2CB4B0();

  sub_A41AC(v32, 0);
  sub_A41AC(v32, 0);

  v18 = v0[43];
  v17 = v0[44];
  v19 = v0[42];
  v21 = v0[30];
  v20 = v0[31];
  v23 = v0[28];
  v22 = v0[29];
  sub_30B8(v0[27], &qword_34CB78, &unk_2D0D80);
  sub_30B8(v23, &qword_34CB88, &unk_2D0D90);
  (*(v21 + 8))(v20, v22);
  sub_306C(v0 + 12);
  (*(v18 + 8))(v17, v19);

  v24 = v0[1];

  return v24();
}

uint64_t sub_14C3F4()
{
  v32 = v0[49];
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[32];
  v9 = v0[30];
  v28 = v0[31];
  v29 = v0[29];
  v30 = v0[28];
  v31 = v0[27];
  v26 = v0[38];
  v27 = v0[26];
  (*(v2 + 104))(v1, enum case for AdditionalMetricsDescription.ModuleName.omif (_:));
  (*(v4 + 104))(v3, enum case for AdditionalMetricsDescription.SourceFunction.noResultsDlg(_:), v5);
  (*(v6 + 104))(v7, enum case for AdditionalMetricsDescription.StatusReason.noSearchResults(_:), v8);
  sub_2CCAD0();
  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v26);
  sub_35E0((v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
  (*(v9 + 104))(v28, enum case for TypeOfIntent.openMediaItem(_:), v29);
  v10 = enum case for ActivityType.failed(_:);
  v11 = sub_2C9C20();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v30, v10, v11);
  (*(v12 + 56))(v30, 0, 1, v11);
  v13 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v14 = sub_2C98F0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v31, v13, v14);
  (*(v15 + 56))(v31, 0, 1, v14);
  v16 = v32;
  sub_2CB4B0();

  sub_A41AC(v32, 0);

  sub_A41AC(v32, 0);

  sub_A41AC(v32, 0);
  v18 = v0[43];
  v17 = v0[44];
  v19 = v0[42];
  v21 = v0[30];
  v20 = v0[31];
  v23 = v0[28];
  v22 = v0[29];
  sub_30B8(v0[27], &qword_34CB78, &unk_2D0D80);
  sub_30B8(v23, &qword_34CB88, &unk_2D0D90);
  (*(v21 + 8))(v20, v22);
  sub_306C(v0 + 12);
  (*(v18 + 8))(v17, v19);

  v24 = v0[1];

  return v24();
}

uint64_t sub_14C808(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2CB260();
  __chkstk_darwin(v4 - 8);
  v5 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_2CA000();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  v9 = [a3 catId];
  sub_2CE270();

  return sub_2CA590();
}

uint64_t sub_14C984()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_outputPublisher));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_accountProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_musicSiriItemProvider));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OpenMediaItemFlow(uint64_t a1)
{
  result = qword_352658;
  if (!qword_352658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_14CABC(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_14CBFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E664;

  return sub_140F48(a1);
}

uint64_t sub_14CC98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OpenMediaItemFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_14CCF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_14CD40(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "AceServiceExecutorProviderWrapper#aceService initializing AceService...", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return (*(a1 + 16))(v10);
}

uint64_t sub_14CF04@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_F3F4(v1 + 88, &v4, &qword_34C6B8, &qword_2D0708);
  if (v5)
  {
    return sub_F338(&v4, a1);
  }

  sub_30B8(&v4, &qword_34C6B8, &qword_2D0708);
  sub_14CFE4(v1);
  sub_EEAC(a1, &v4);
  swift_beginAccess();
  sub_FECE8(&v4, v1 + 88, &qword_34C6B8, &qword_2D0708);
  return swift_endAccess();
}

uint64_t sub_14CFE4(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "AceServiceExecutorProviderWrapper#deviceState initializing DeviceState...", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return (*(a1 + 72))(v10);
}

BOOL sub_14D1A8()
{
  v0 = sub_2CB350();
  v51 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v1);
  v5 = &v50 - v4;
  v6 = sub_2CB260();
  v54 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  if (sub_2CB460())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v17, v18, v11);

    v19 = v11;
    v20 = sub_2CDFE0();
    v21 = sub_2CE670();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v54;
    if (v22)
    {
      v24 = swift_slowAlloc();
      v52 = v12;
      v25 = v24;
      v51 = swift_slowAlloc();
      v58[0] = v51;
      *v25 = 136315138;
      sub_2CB130();
      sub_2CD3C0();

      sub_14DAC4(&qword_352898, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
      v26 = sub_2CEE70();
      v50 = v19;
      v28 = v27;
      v23[1](v10, v6);
      v29 = sub_3F08(v26, v28, v58);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v20, v21, "AceServiceExecutorProviderWrapper#willSiriSpeak using SiriEnvironment, responseMode is %s", v25, 0xCu);
      sub_306C(v51);

      (*(v52 + 8))(v17, v50);
    }

    else
    {

      (*(v12 + 8))(v17, v11);
    }

    sub_2CB130();
    sub_2CD3C0();

    v44 = v53;
    sub_2CB210();
    sub_14DAC4(&qword_352890, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
    v45 = sub_2CE250();

    v46 = v23[1];
    v46(v44, v6);
    v46(v10, v6);
  }

  else
  {
    v53 = v5;
    v54 = v3;
    v30 = v0;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v31 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    v32 = v12;
    (*(v12 + 16))(v15, v31, v11);

    v33 = sub_2CDFE0();
    v34 = sub_2CE670();

    v35 = v30;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v50 = v11;
      v37 = v55;
      *v36 = 136315138;
      sub_14CF04(v56);
      sub_35E0(v56, v57);
      v38 = v53;
      sub_2C9A60();
      v39 = sub_2CE2A0();
      v41 = v40;
      sub_306C(v56);
      v42 = sub_3F08(v39, v41, &v55);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_0, v33, v34, "AceServiceExecutorProviderWrapper#willSiriSpeak using deviceState, interactionType is %s", v36, 0xCu);
      sub_306C(v37);

      (*(v32 + 8))(v15, v50);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
      v38 = v53;
    }

    v43 = v54;
    sub_14CF04(v56);
    sub_35E0(v56, v57);
    sub_2C9A60();
    v47 = v51;
    (v51[13])(v43, enum case for InteractionType.displayDriven(_:), v35);
    sub_14DAC4(&qword_352888, &type metadata accessor for InteractionType, &protocol conformance descriptor for InteractionType);
    v45 = sub_2CE250();
    v48 = v47[1];
    v48(v43, v35);
    v48(v38, v35);
    sub_306C(v56);
  }

  return (v45 & 1) == 0;
}

uint64_t sub_14D974()
{

  sub_30B8(v0 + 32, &qword_3528A0, &qword_2D5080);

  sub_30B8(v0 + 88, &qword_34C6B8, &qword_2D0708);

  return swift_deallocClassInstance();
}

uint64_t sub_14DA08(uint64_t a1, uint64_t a2)
{
  sub_10B60(v3);
  sub_35E0(v3, v3[3]);
  sub_2CA170();
  return sub_306C(v3);
}

uint64_t sub_14DAC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_14DB30()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CB440();
  if (sub_2CB460())
  {
    sub_2CB130();

    v5 = sub_2CD3B0();
  }

  else
  {
    v5 = 0;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_2CDFE0();
  v8 = sub_2CE670();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 67109634;
    *(v9 + 4) = v4 & 1;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v5 & 1;
    *(v9 + 14) = 2082;
    v11 = sub_2CCCA0();
    v16 = v0;
    v13 = sub_3F08(v11, v12, &v17);

    *(v9 + 16) = v13;
    _os_log_impl(&dword_0, v7, v8, "DetermineSnippetProvider#shouldShowMediaPlayerSnippet isSystemApertureEnabled = %{BOOL}d, isInAmbient = %{BOOL}d %{public}s", v9, 0x18u);
    sub_306C(v10);

    (*(v1 + 8))(v3, v16);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return (v4 | v5) & 1;
}

uint64_t sub_14DDCC(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v216 = a7;
  v217 = a3;
  v213 = a6;
  v215 = a2;
  v10 = sub_2CD230();
  v221 = *(v10 - 8);
  __chkstk_darwin(v10);
  v200 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_352960, &qword_2D5110);
  __chkstk_darwin(v12 - 8);
  v190 = &v185 - v13;
  v14 = sub_20410(&qword_352968, &qword_2D9780);
  __chkstk_darwin(v14 - 8);
  v189 = &v185 - v15;
  v199 = sub_2CD290();
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v196 = &v185 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_2CD350();
  v195 = *(v197 - 8);
  __chkstk_darwin(v197);
  v194 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v211 = *(v18 - 8);
  v19 = __chkstk_darwin(v18 - 8);
  v192 = &v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v185 - v22;
  v24 = __chkstk_darwin(v21);
  v187 = &v185 - v25;
  v26 = __chkstk_darwin(v24);
  v188 = &v185 - v27;
  v28 = __chkstk_darwin(v26);
  v202 = &v185 - v29;
  v30 = __chkstk_darwin(v28);
  v203 = &v185 - v31;
  v32 = __chkstk_darwin(v30);
  v207 = &v185 - v33;
  v212 = v34;
  __chkstk_darwin(v32);
  v208 = &v185 - v35;
  v36 = sub_2CE000();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v191 = &v185 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v193 = &v185 - v41;
  v42 = __chkstk_darwin(v40);
  v186 = &v185 - v43;
  v44 = __chkstk_darwin(v42);
  v201 = &v185 - v45;
  v46 = __chkstk_darwin(v44);
  v206 = &v185 - v47;
  __chkstk_darwin(v46);
  v49 = &v185 - v48;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v214 = v10;
  v50 = sub_3ED0(v36, static Logger.default);
  swift_beginAccess();
  v219 = v37[2];
  v220 = v37 + 2;
  v219(v49, v50, v36);
  v51 = a1;
  v52 = sub_2CDFE0();
  v218 = v37;
  v53 = v52;
  v54 = sub_2CE670();

  v55 = os_log_type_enabled(v53, v54);
  v185 = v23;
  v205 = v51;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v210 = v50;
    v57 = v56;
    v222[0] = swift_slowAlloc();
    *v57 = 136315395;
    v58 = v51;
    v209 = v36;
    v59 = v58;
    v60 = a5;
    v61 = [v58 description];
    v62 = sub_2CE270();
    v204 = a4;
    v64 = v63;

    v65 = v60;
    v66 = sub_3F08(v62, v64, v222);

    *(v57 + 4) = v66;
    *(v57 + 12) = 2081;
    v67 = sub_2CCCA0();
    v69 = sub_3F08(v67, v68, v222);
    v36 = v209;

    *(v57 + 14) = v69;
    a4 = v204;
    _os_log_impl(&dword_0, v53, v54, "DetermineSnippetProvider#handleIntent called for Intent: %s %{private}s", v57, 0x16u);
    swift_arrayDestroy();

    v50 = v210;

    v70 = *(v218 + 1);
    v70(v49, v36);
    if ((sub_2CB640() & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v94 = v206;
    v219(v206, v50, v36);
    v95 = sub_2CDFE0();
    v96 = sub_2CE660();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v209 = v36;
      v99 = v98;
      v222[0] = v98;
      *v97 = 136446210;
      v100 = sub_2CCCA0();
      v218 = v70;
      v102 = sub_3F08(v100, v101, v222);

      *(v97 + 4) = v102;
      _os_log_impl(&dword_0, v95, v96, "DetermineSnippetProvider#handleIntent won't return an AceView for CarPlay %{public}s", v97, 0xCu);
      sub_306C(v99);

      v218(v94, v209);
    }

    else
    {

      v70(v94, v36);
    }

    v103 = v208;
    (*(v221 + 56))(v208, 1, 1, v214);
    v104 = v215;
    v105 = v207;
    sub_14F388(v103, v207);
    v106 = (*(v211 + 80) + 56) & ~*(v211 + 80);
    v107 = swift_allocObject();
    v108 = v213;
    *(v107 + 16) = v104;
    *(v107 + 24) = v108;
    *(v107 + 32) = v216;
    *(v107 + 40) = a4;
    *(v107 + 48) = v65;
    sub_14F3F8(v105, v107 + v106);

    v109 = a4;
    v110 = v65;
    v111 = [v109 targetDeviceIds];
    if (v111)
    {
      v112 = v111;
      v113 = sub_2CE410();

      v114 = *(v113 + 16);

      if (v114)
      {
        v115 = sub_14F694;
LABEL_49:
        sub_4843C(v217, v109, v115, v107);
LABEL_52:

        v128 = v103;
        return sub_14F46C(v128);
      }
    }

    v116 = sub_14F694;
LABEL_51:
    sub_45370(v217, v109, v116, v107);
    goto LABEL_52;
  }

  v70 = *(v218 + 1);
  v70(v49, v36);
  v65 = a5;
  if (sub_2CB640())
  {
    goto LABEL_18;
  }

LABEL_5:
  v71 = [v205 nowPlayingIntentInfo];
  if (!v71)
  {
LABEL_44:
    v172 = v201;
    v219(v201, v50, v36);
    v173 = sub_2CDFE0();
    v174 = sub_2CE670();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&dword_0, v173, v174, "DetermineViewProvider#makeViewsForHandleIntent no view as no nowPlayingIntentInfo could be found", v175, 2u);
    }

    v70(v172, v36);
    v103 = v203;
    (*(v221 + 56))(v203, 1, 1, v214);
    v176 = v215;
    v177 = v202;
    sub_14F388(v103, v202);
    v178 = (*(v211 + 80) + 56) & ~*(v211 + 80);
    v107 = swift_allocObject();
    v179 = v213;
    *(v107 + 16) = v176;
    *(v107 + 24) = v179;
    *(v107 + 32) = v216;
    *(v107 + 40) = a4;
    *(v107 + 48) = v65;
    sub_14F3F8(v177, v107 + v178);

    v109 = a4;
    v180 = v65;
    v181 = [v109 targetDeviceIds];
    if (v181)
    {
      v182 = v181;
      v183 = sub_2CE410();

      v184 = *(v183 + 16);

      if (v184)
      {
        v115 = sub_14F468;
        goto LABEL_49;
      }
    }

    v116 = sub_14F468;
    goto LABEL_51;
  }

  v72 = v71;
  v210 = v50;
  type metadata accessor for NowPlayingIntentInfo();
  v73 = sub_2CE410();

  if (!(v73 >> 62))
  {
    result = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_43:

    v50 = v210;
    goto LABEL_44;
  }

LABEL_8:
  v204 = a4;
  if ((v73 & 0xC000000000000001) != 0)
  {
    v75 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v75 = *(v73 + 32);
  }

  v76 = v75;

  if (sub_14DB30())
  {
    v77 = v186;
    v219(v186, v210, v36);
    v78 = sub_2CDFE0();
    v79 = sub_2CE670();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_0, v78, v79, "DetermineViewProvider#makeViewsForHandleIntent isSystemApertureEnabled and isInAmbient are fall returning nil for snippet", v80, 2u);
    }

    v70(v77, v36);
    v81 = v188;
    (*(v221 + 56))(v188, 1, 1, v214);
    v82 = v215;
    v83 = v187;
    sub_14F388(v81, v187);
    v84 = (*(v211 + 80) + 56) & ~*(v211 + 80);
    v85 = swift_allocObject();
    v86 = v213;
    *(v85 + 16) = v82;
    *(v85 + 24) = v86;
    v87 = v204;
    *(v85 + 32) = v216;
    *(v85 + 40) = v87;
    *(v85 + 48) = v65;
    sub_14F3F8(v83, v85 + v84);

    v88 = v87;
    v89 = v65;
    v90 = [v88 targetDeviceIds];
    if (v90 && (v91 = v90, v92 = sub_2CE410(), v91, v93 = *(v92 + 16), , v93))
    {
      sub_4843C(v217, v88, sub_14F694, v85);
    }

    else
    {
      sub_45370(v217, v88, sub_14F694, v85);
    }

    v128 = v81;
    return sub_14F46C(v128);
  }

  v207 = v65;
  v117 = v193;
  v219(v193, v210, v36);
  v118 = v76;
  v119 = sub_2CDFE0();
  v120 = sub_2CE670();

  v121 = os_log_type_enabled(v119, v120);
  v218 = v70;
  v208 = v118;
  if (v121)
  {
    v209 = v36;
    v122 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    *v122 = 136315394;
    v123 = [v118 appBundleId];
    if (v123)
    {
      v124 = v123;
      v125 = sub_2CE270();
      v127 = v126;
    }

    else
    {
      v125 = 0;
      v127 = 0;
    }

    v222[0] = v125;
    v222[1] = v127;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v129 = sub_2CE2A0();
    v131 = sub_3F08(v129, v130, &v223);

    *(v122 + 4) = v131;
    *(v122 + 12) = 2082;
    v132 = sub_2CCCA0();
    v134 = sub_3F08(v132, v133, &v223);

    *(v122 + 14) = v134;
    _os_log_impl(&dword_0, v119, v120, "DetermineSnippetProvider#handleIntent bundleId: %s %{public}s", v122, 0x16u);
    swift_arrayDestroy();

    v36 = v209;
    v218(v193, v209);
    v118 = v208;
  }

  else
  {

    v70(v117, v36);
  }

  v135 = [v118 appBundleId];
  v136 = v191;
  if (v135)
  {
    v137 = v36;
    v138 = v135;
    sub_2CE270();

    v36 = v137;
  }

  v139 = v194;
  sub_2CD340();
  v140 = v195;
  v141 = v189;
  v142 = v197;
  (*(v195 + 16))(v189, v139, v197);
  (*(v140 + 56))(v141, 0, 1, v142);
  v143 = sub_2CD270();
  (*(*(v143 - 8) + 56))(v190, 1, 1, v143);
  v144 = v196;
  sub_2CD280();
  v145 = v200;
  (*(v198 + 16))(v200, v144, v199);
  v146 = v214;
  (*(v221 + 104))(v145, enum case for SiriAudioSnippets.mediaPlayer(_:), v214);
  v219(v136, v210, v36);
  v147 = sub_2CDFE0();
  v148 = sub_2CE660();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v222[0] = swift_slowAlloc();
    *v149 = 136315394;
    v223 = v146;
    sub_20410(&qword_352970, &qword_2D5118);
    v150 = sub_2CE2A0();
    v152 = sub_3F08(v150, v151, v222);

    *(v149 + 4) = v152;
    *(v149 + 12) = 2082;
    v153 = sub_2CCCA0();
    v155 = sub_3F08(v153, v154, v222);

    *(v149 + 14) = v155;
    _os_log_impl(&dword_0, v147, v148, "DetermineSnippetProvider#handleIntent Returning snippet for iOS: %s %{public}s", v149, 0x16u);
    swift_arrayDestroy();
  }

  v218(v136, v36);
  v156 = v185;
  v157 = v221;
  (*(v221 + 16))(v185, v200, v146);
  (*(v157 + 56))(v156, 0, 1, v146);
  v158 = v215;
  v159 = v192;
  sub_14F388(v156, v192);
  v160 = (*(v211 + 80) + 56) & ~*(v211 + 80);
  v161 = swift_allocObject();
  v162 = v213;
  *(v161 + 16) = v158;
  *(v161 + 24) = v162;
  v163 = v204;
  *(v161 + 32) = v216;
  *(v161 + 40) = v163;
  v164 = v146;
  v165 = v207;
  *(v161 + 48) = v207;
  sub_14F3F8(v159, v161 + v160);

  v166 = v163;
  v167 = v165;
  v168 = [v166 targetDeviceIds];
  if (v168 && (v169 = v168, v170 = sub_2CE410(), v169, v171 = *(v170 + 16), , v171))
  {
    sub_4843C(v217, v166, sub_14F694, v161);
  }

  else
  {
    sub_45370(v217, v166, sub_14F694, v161);
  }

  sub_14F46C(v156);
  (*(v221 + 8))(v200, v164);
  (*(v198 + 8))(v196, v199);
  return (*(v195 + 8))(v194, v197);
}

uint64_t sub_14F388(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3530C0, &unk_2D0A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14F3F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3530C0, &unk_2D0A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_14F46C(uint64_t a1)
{
  v2 = sub_20410(&unk_3530C0, &unk_2D0A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14F4D4()
{
  v1 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_2CD230();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_14F60C(char *a1)
{
  v3 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_13B8CC(a1, v4, v5, v6, v7, v8, v9);
}

char *sub_14F698(uint64_t *a1, uint64_t a2, char **a3, char **a4)
{
  v7 = *a1;
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  v15[2] = v16;
  if (sub_13964(sub_13A68, v15, a2))
  {
    v8 = *a3;

    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((result & 1) == 0)
    {
      result = sub_B90C4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      result = sub_B90C4((v10 > 1), v11 + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }
  }

  else
  {
    v8 = *a4;

    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v8;
    if ((result & 1) == 0)
    {
      result = sub_B90C4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
      *a4 = result;
    }

    v11 = *(v8 + 2);
    v13 = *(v8 + 3);
    v12 = v11 + 1;
    if (v11 >= v13 >> 1)
    {
      result = sub_B90C4((v13 > 1), v11 + 1, 1, v8);
      v8 = result;
      *a4 = result;
    }
  }

  *(v8 + 2) = v12;
  v14 = &v8[16 * v11];
  *(v14 + 4) = v7;
  *(v14 + 5) = v6;
  return result;
}

__n128 sub_14F80C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_14F820(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_14F868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_14F8CC()
{
  result = qword_352978;
  if (!qword_352978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_352978);
  }

  return result;
}

uint64_t sub_14F938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v39 = a2;
  v2 = sub_2CDAA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_20410(&qword_34E940, &qword_2D28E8);
  __chkstk_darwin(v9 - 8);
  v38 = &v35 - v10;
  v11 = sub_2CE050();
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CA000();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v43 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v18, v19, v15);
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = v5;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "AudioNLContextUpdateProvider#makeContextForSuccessfulShazamMatch clearing conversation state", v22, 2u);
    v5 = v36;
  }

  (*(v16 + 8))(v18, v15);
  v23 = v43;
  sub_2C9FF0();
  v24 = v38;
  ShazamKitMatch.toRREntity()(v38);
  v26 = v40;
  v25 = v41;
  if ((*(v40 + 48))(v24, 1, v41) == 1)
  {
    sub_30B8(v24, &qword_34E940, &qword_2D28E8);
  }

  else
  {
    v27 = v37;
    (*(v26 + 32))(v37, v24, v25);
    sub_20410(&qword_34E950, &qword_2D5350);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2D0090;
    (*(v26 + 16))(v29 + v28, v27, v25);
    sub_2C9F00();
    (*(v26 + 8))(v27, v25);
  }

  (*(v3 + 104))(v5, enum case for PommesContext.Source.pluginDefined(_:), v2);
  sub_2CDAB0();
  v30 = sub_2CDAC0();
  (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
  sub_2C9F20();
  v32 = v44;
  v31 = v45;
  v33 = v39;
  (*(v44 + 32))(v39, v23, v45);
  return (*(v32 + 56))(v33, 0, 1, v31);
}

uint64_t sub_14FEE4(void (*a1)(char *), uint64_t a2)
{
  v5 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for AcousticIDFlow.State(0);
  __chkstk_darwin(v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
  swift_beginAccess();
  sub_16A2C0(v2 + v11, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_14A58(v10, v7, &qword_352D78, &unk_2D5320);
      sub_152D00(v7, a1, a2);
      return sub_30B8(v7, &qword_352D78, &unk_2D5320);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_153040(*v10, a1, a2);
    }

    sub_35E0((v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager), *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager + 24));
    if (sub_2CC730())
    {
      return sub_150100(a1, a2);
    }

    v14 = a1;
    v15 = a2;
    return sub_1524C4(v14, v15);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v14 = a1;
    v15 = a2;
    return sub_1524C4(v14, v15);
  }

  if (EnumCaseMultiPayload == 4)
  {
    return sub_152B48(a1, a2);
  }

  else
  {
    return sub_1534C8(a1, a2);
  }
}

uint64_t sub_150100(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v36 = a1;
  v39 = sub_2CDFD0();
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v39);
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v7, qword_35F6A8);
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "AcousticIDFlow#triggerSmartStackMatch Reached Logic", v14, 2u);
  }

  (*(v8 + 8))(v10, v7);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v15 = qword_35F760;
  sub_2CDFB0();
  v16 = *(v2 + 16);
  v35 = v6;
  v17 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v39;
  v16(v17, v6);
  v19 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v20 = (v3 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "shazamKitPerformMatch";
  *(v21 + 24) = 21;
  *(v21 + 32) = 2;
  (*(v2 + 32))(v21 + v19, v17, v18);
  v22 = (v21 + v20);
  v23 = v37;
  *v22 = v36;
  v22[1] = v23;

  v24 = sub_2CE9E0();
  sub_2CDF90(v24, &dword_0, v15, "shazamKitPerformMatch", 21, 2, v6, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2433C;
  *(v25 + 24) = v21;
  v26 = v2;
  v27 = v38;
  sub_35E0((v38 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), *(v38 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24));

  v28 = sub_2CB500();
  v29 = *(v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
  v30 = *(v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
  sub_35E0((v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v29);
  v31 = swift_allocObject();
  v31[2] = v27;
  v31[3] = sub_24350;
  v31[4] = v25;
  v31[5] = v28;
  v32 = *(v30 + 40);

  v32(sub_16A254, v31, v29, v30);

  return (*(v26 + 8))(v35, v39);
}

uint64_t sub_1505A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, qword_35F6A8);
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v14, v15, "AcousticIDFlow#triggerSmartStackMatch enableLiveActivity: %{BOOL}d", v16, 8u);
  }

  (*(v10 + 8))(v12, v9);
  *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = a1 & 1;
  v17 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
  v18 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
  sub_35E0((a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v17);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a3;
  v20[4] = a4;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v26;
  v22[4] = a3;
  v22[5] = a4;
  v23 = *(v18 + 8);

  swift_retain_n();

  v23(sub_16A260, v20, sub_16A2B4, v22, v17, v18);
}

uint64_t sub_1508B4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a2;
    v11[4] = a3;
    if (*(v10 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity))
    {
      v12 = swift_allocObject();
      *(v12 + 16) = sub_16A384;
      *(v12 + 24) = v11;
      swift_allocObject();
      swift_weakInit();

      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      sub_2CE4F0();
    }

    else
    {

      sub_150BB0(0, 0, 0, v10, a2, a3);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v13 = sub_3ED0(v5, qword_35F6A8);
    (*(v6 + 16))(v8, v13, v5);
    v14 = sub_2CDFE0();
    v15 = sub_2CE680();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "AcousticIDFlow#triggerSmartStackMatch self deallocated prematurely during performMatch start call", v16, 2u);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_150BB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v118 = a6;
  v117 = a5;
  v123 = a4;
  v112 = sub_2C9EC0();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v10 - 8);
  v12 = &v110 - v11;
  v116 = sub_2CA910();
  v115 = *(v116 - 1);
  __chkstk_darwin(v116);
  v121 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v14 - 8);
  v114 = &v110 - v15;
  v122 = type metadata accessor for AcousticIDFlow.State(0);
  v16 = __chkstk_darwin(v122);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v110 - v20;
  __chkstk_darwin(v19);
  *&v120 = &v110 - v22;
  v23 = sub_2CE000();
  v124 = *(v23 - 8);
  v125 = v23;
  v24 = __chkstk_darwin(v23);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v119 = &v110 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v110 - v30;
  v32 = __chkstk_darwin(v29);
  v113 = &v110 - v33;
  __chkstk_darwin(v32);
  v35 = &v110 - v34;
  sub_20410(&qword_352D88, &qword_2D5348);
  if (a3)
  {
    v130 = a1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v36 = v126[1];
      v37 = v125;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v38 = sub_3ED0(v37, qword_35F6A8);
      v39 = v124;
      v40 = *(v124 + 16);
      v40(v35, v38, v37);
      v41 = v36;
      v42 = sub_2CDFE0();
      v43 = sub_2CE680();

      v44 = os_log_type_enabled(v42, v43);
      v121 = v41;
      if (v44)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v119 = v38;
        v116 = v46;
        v126[0] = v46;
        *v45 = 136315138;
        v47 = v40;
        v48 = [v41 localizedDescription];
        v49 = sub_2CE270();
        v51 = v50;

        v40 = v47;
        *&v127 = v49;
        *(&v127 + 1) = v51;
        v52 = sub_2CE3C0();
        v54 = sub_3F08(v52, v53, v126);

        *(v45 + 4) = v54;
        _os_log_impl(&dword_0, v42, v43, "AcousticIDFlow#triggerSmartStackMatch Error grabbing session ID %s, issuing error dialog", v45, 0xCu);
        sub_306C(v116);
        v38 = v119;

        v37 = v125;
      }

      v55 = *(v39 + 8);
      v55(v35, v37);
      v56 = v123;
      v57 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      swift_beginAccess();
      v58 = v120;
      sub_16A2C0(v56 + v57, v120);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v59 = v113;
        v40(v113, v38, v37);
        v60 = sub_2CDFE0();
        v61 = sub_2CE680();
        v62 = os_log_type_enabled(v60, v61);
        v63 = v121;
        if (v62)
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_0, v60, v61, "AcousticIDFlow#triggerSmartStackMatch grabSessionID failed, but performMatch has already completed. Doing nothing.", v64, 2u);

          v65 = v63;
        }

        else
        {
          v65 = v60;
          v60 = v121;
        }

        v55(v59, v37);
      }

      else
      {
        v86 = sub_2CC950();
        v87 = v114;
        (*(*(v86 - 8) + 56))(v114, 1, 1, v86);
        v88 = v121;
        v89 = [v121 localizedDescription];
        v90 = sub_2CE270();
        v92 = v91;

        sub_1612C4(v87, v90, v92, v117, v118);

        sub_30B8(v87, &qword_352D78, &unk_2D5320);
        sub_16A324(v58, type metadata accessor for AcousticIDFlow.State);
      }
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else if (a2)
  {
    v66 = [objc_allocWithZone(SAUIAddViews) init];
    v67 = [objc_allocWithZone(SAUIUserUtteranceView) init];
    v68 = sub_2CE260();
    [v67 setCorrespondingSessionID:v68];

    sub_20410(&unk_351900, &unk_2D0960);
    v69 = swift_allocObject();
    v118 = a2;
    v120 = xmmword_2D0770;
    *(v69 + 16) = xmmword_2D0770;
    v122 = v67;
    *(v69 + 32) = v67;
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);
    isa = sub_2CE400().super.isa;

    [v66 setViews:isa];

    v71 = swift_allocObject();
    *(v71 + 16) = v120;
    *(v71 + 32) = v66;
    v72 = sub_2CA000();
    (*(*(v72 - 8) + 56))(v12, 1, 1, v72);
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    *&v120 = v66;
    v73 = v121;
    sub_2C9E20();

    sub_30B8(&v127, &qword_34CC80, &qword_2D1520);
    sub_30B8(v12, &unk_353020, &unk_2D0970);
    sub_35E0((v123 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(v123 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
    v74 = v116;
    *(&v128 + 1) = v116;
    v129 = &protocol witness table for AceOutput;
    v75 = sub_F390(&v127);
    v76 = v115;
    (*(v115 + 16))(v75, v73, v74);
    swift_allocObject();
    swift_weakInit();

    sub_2CA010();

    sub_306C(&v127);
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v77 = v125;
    v78 = sub_3ED0(v125, qword_35F6A8);
    v79 = v124;
    v80 = v119;
    (*(v124 + 16))(v119, v78, v77);
    v81 = v118;

    v82 = sub_2CDFE0();
    v83 = sub_2CE690();
    sub_16A0BC(a1, v81, 0);
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *&v127 = v85;
      *v84 = 136315138;
      *(v84 + 4) = sub_3F08(a1, v81, &v127);
      _os_log_impl(&dword_0, v82, v83, "AcousticIDFlow#triggerSmartStackMatch Got sessionID: %s", v84, 0xCu);
      sub_306C(v85);

      (*(v79 + 8))(v119, v77);
    }

    else
    {

      (*(v79 + 8))(v80, v77);
    }

    return (*(v76 + 8))(v121, v74);
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v93 = v125;
    v94 = sub_3ED0(v125, qword_35F6A8);
    v95 = v124;
    v121 = *(v124 + 16);
    (v121)(v31, v94, v93);
    v96 = sub_2CDFE0();
    v97 = sub_2CE690();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_0, v96, v97, "AcousticIDFlow#triggerSmartStackMatch Nil sessionID was sent, retriggering logic and setting state to .sessionIDWasCheckedAndIsNilForSmartStack", v98, 2u);
    }

    v99 = *(v95 + 8);
    v100 = v125;
    v124 = v95 + 8;
    v99(v31, v125);
    v101 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
    v102 = v123;
    swift_beginAccess();
    sub_16A2C0(v102 + v101, v21);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      (v121)(v26, v94, v100);
      v103 = sub_2CDFE0();
      v104 = sub_2CE680();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_0, v103, v104, "AcousticIDFlow#triggerSmartStackMatch grabSessionID sessionID is nil, but performMatch has already completed. Doing nothing.", v105, 2u);
      }

      return (v99)(v26, v100);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1694A4(v18, v102 + v101);
      swift_endAccess();
      v107 = *(v102 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v108 = *(v102 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0((v102 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v107);
      (*(v108 + 32))(v107, v108);
      v109 = v110;
      sub_2C9E70();
      v117(v109);
      (*(v111 + 8))(v109, v112);
      return sub_16A324(v21, type metadata accessor for AcousticIDFlow.State);
    }
  }

  return result;
}

uint64_t sub_151A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v10 = sub_3ED0(v3, qword_35F6A8);
    (*(v4 + 16))(v7, v10, v3);
    v11 = sub_2CDFE0();
    v12 = sub_2CE690();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "AcousticIDFlow#triggerSmartStackMatch Empty view successfully published", v13, 2u);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v3, qword_35F6A8);
    (*(v4 + 16))(v9, v14, v3);
    v15 = sub_2CDFE0();
    v16 = sub_2CE680();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "AcousticIDFlow#triggerSmartStackMatch self deallocated prematurely during publishing", v17, 2u);
    }

    v7 = v9;
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_151D38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v56 = a5;
  v57 = a4;
  v59 = a3;
  v58 = sub_2C9EC0();
  v55 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for AcousticIDFlow.State(0);
  v7 = __chkstk_darwin(v60);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v52 - v9;
  v11 = sub_20410(&qword_34FF10, qword_2D3620);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v52 = v15;
  v16 = __chkstk_darwin(v14);
  v61 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v52 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v52 - v22;
  __chkstk_darwin(v21);
  v25 = &v52 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    sub_F3F4(a1, v13, &qword_34FF10, qword_2D3620);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_30B8(v13, &qword_34FF10, qword_2D3620);
      v28 = v15;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v29 = sub_3ED0(v14, qword_35F6A8);
      v30 = *(v15 + 16);
      v30(v20, v29, v14);
      v31 = sub_2CDFE0();
      v32 = sub_2CE690();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_0, v31, v32, "AcousticIDFlow#triggerSmartStackMatch experienced an error during match", v33, 2u);
      }

      v23 = v20;
    }

    else
    {
      v28 = v15;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v39 = sub_3ED0(v14, qword_35F6A8);
      v40 = *(v15 + 16);
      v40(v23, v39, v14);
      v41 = sub_2CDFE0();
      v42 = sub_2CE690();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v41, v42, "AcousticIDFlow#triggerSmartStackMatch successfully completed match execution (may have found match)", v43, 2u);
        v28 = v15;
      }

      v30 = v40;
    }

    v44 = *(v28 + 8);
    v44(v23, v14);
    if (v59)
    {
      sub_2CB670();
    }

    v45 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
    swift_beginAccess();
    sub_16A2C0(v27 + v45, v10);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v46 = v53;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1694A4(v46, v27 + v45);
      swift_endAccess();
      v47 = v54;
      sub_2C9E70();
      v57(v47);

      return (*(v55 + 8))(v47, v58);
    }

    else
    {
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v48 = sub_3ED0(v14, qword_35F6A8);
      v30(v61, v48, v14);
      v49 = sub_2CDFE0();
      v50 = sub_2CE680();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_0, v49, v50, "AcousticIDFlow#triggerSmartStackMatch performMatch completed, but triggerSmartStackMatch has already returned comletion in grabSessionID. Doing nothing.", v51, 2u);
      }

      else
      {
      }

      v44(v61, v14);
      return sub_16A324(v10, type metadata accessor for AcousticIDFlow.State);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v34 = sub_3ED0(v14, qword_35F6A8);
    (*(v15 + 16))(v25, v34, v14);
    v35 = sub_2CDFE0();
    v36 = sub_2CE680();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "AcousticIDFlow#triggerSmartStackMatch self deallocated prematurely during performMatch call", v37, 2u);
    }

    return (*(v15 + 8))(v25, v14);
  }
}

uint64_t sub_1524C4(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v37 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v8 = &v35[-v7];
  __chkstk_darwin(v6);
  v10 = &v35[-v9];
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v2, qword_35F6A8);
  v40 = *(v3 + 16);
  v41 = v11;
  v40(v10);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "AcousticIDFlow#executeAtBeginning Reached Logic", v14, 2u);
  }

  v15 = *(v3 + 8);
  v15(v10, v2);
  v16 = sub_2CB460();
  if (v16)
  {
    sub_2CB130();
    v17 = sub_2CD3B0();
  }

  else
  {
    v17 = 0;
  }

  v36 = v17;
  v18 = v41;
  *(v42 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_isInAmbient) = v17 & 1;
  (v40)(v8, v18, v2);

  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    if (v16)
    {
      sub_2CB130();

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    *(v21 + 4) = v22;

    _os_log_impl(&dword_0, v19, v20, "AcousticIDFlow#executeAtBeginning is currentRequest present: %{BOOL}d", v21, 8u);
  }

  else
  {
  }

  v15(v8, v2);
  v23 = v37;
  (v40)(v37, v41, v2);
  v24 = sub_2CDFE0();
  v25 = sub_2CE690();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = v36 & 1;
    _os_log_impl(&dword_0, v24, v25, "AcousticIDFlow#executeAtBeginning isInAmbient: %{BOOL}d", v26, 8u);
  }

  v15(v23, v2);
  v27 = v42;
  v28 = *(v42 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
  v29 = *(v42 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
  sub_35E0((v42 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v28);
  v30 = swift_allocObject();
  v31 = v38;
  v32 = v39;
  v30[2] = v27;
  v30[3] = v31;
  v30[4] = v32;
  v33 = *(v29 + 40);

  v33(sub_16A248, v30, v28, v29);
}

uint64_t sub_15292C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, qword_35F6A8);
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v13, v14, "AcousticIDFlow#executeAtBeginning enableLiveActivity: %{BOOL}d", v15, 8u);
  }

  (*(v9 + 8))(v11, v8);
  *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = a1 & 1;
  sub_35E0((a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider), *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 24));
  if (sub_2CC4B0())
  {
    return sub_15634C(a3, a4);
  }

  else
  {
    return sub_154558(a3, a4);
  }
}

uint64_t sub_152B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, qword_35F6A8);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2CDFE0();
  v10 = sub_2CE690();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "AcousticIDFlow#executeStartMatch Reached Logic", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  return sub_153774(a1, a2);
}

uint64_t sub_152D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = sub_20410(&qword_352D78, &unk_2D5320);
  v8 = __chkstk_darwin(v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v13, qword_35F6A8);
  (*(v14 + 16))(v16, v17, v13);
  sub_F3F4(a1, v12, &qword_352D78, &unk_2D5320);
  v18 = sub_2CDFE0();
  v19 = sub_2CE690();
  v34 = v13;
  v20 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v32 = v4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31 = a3;
    v24 = v23;
    v35 = v23;
    *v22 = 136315138;
    v30 = a1;
    sub_F3F4(v12, v10, &qword_352D78, &unk_2D5320);
    v25 = sub_2CE2A0();
    v33 = a2;
    v27 = v26;
    sub_30B8(v12, &qword_352D78, &unk_2D5320);
    v28 = sub_3F08(v25, v27, &v35);
    a2 = v33;

    *(v22 + 4) = v28;
    a1 = v30;
    _os_log_impl(&dword_0, v18, v20, "AcousticIDFlow#executeIdentifyError With code: %s", v22, 0xCu);
    sub_306C(v24);
    a3 = v31;
  }

  else
  {

    sub_30B8(v12, &qword_352D78, &unk_2D5320);
  }

  (*(v14 + 8))(v16, v34);
  return sub_1612C4(a1, 0, 0, a2, a3);
}

uint64_t sub_153040(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v33 = &v31 - v10;
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v4, qword_35F6A8);
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v5;
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "AcousticIDFlow#executeIdentifyComplete Reached Logic", v17, 2u);
    v5 = v32;
  }

  v18 = *(v5 + 8);
  v18(v12, v4);
  if (a1)
  {
    v19 = v33;
    v14(v33, v13, v4);

    v20 = sub_2CDFE0();
    v21 = sub_2CE690();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "AcousticIDFlow#executeIdentifyComplete Found matched song from ShazamKit", v22, 2u);
    }

    v18(v19, v4);
    sub_35E0((v34 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider), *(v34 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 24));
    if (sub_2CC4B0())
    {
      sub_15F2A8(a1, v35, v36);
    }

    else
    {
      sub_15D388(a1, v35, v36);
    }
  }

  else
  {
    v14(v8, v13, v4);
    v23 = sub_2CDFE0();
    v24 = sub_2CE690();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "AcousticIDFlow#executeIdentifyComplete No matched song from ShazamKit", v25, 2u);
    }

    v18(v8, v4);
    sub_35E0((v34 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider), *(v34 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 24));
    if (sub_2CC4B0())
    {
      return sub_15BCC4(v35, v36);
    }

    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v29 = v35;
    v30 = v36;
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v30;

    sub_F4074(sub_16A12C, v28);
  }
}

uint64_t sub_1534C8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v21[1] = a2;
  v5 = sub_2C9EC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, qword_35F6A8);
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21[0] = v6;
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "AcousticIDFlow#executeCompleted Reached Logic", v16, 2u);
    v6 = v21[0];
  }

  (*(v10 + 8))(v12, v9);
  v17 = (v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
  v18 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
  v19 = v17[4];
  sub_35E0(v17, v18);
  (*(v19 + 24))(v18, v19);
  sub_2C9EB0();
  a1(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_153774(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v26 = a1;
  v25 = sub_2CDFD0();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v25);
  v5 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, qword_35F6A8);
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "AcousticIDFlow#triggerMatch Reached Logic", v15, 2u);
  }

  (*(v9 + 8))(v11, v8);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  v17 = v25;
  (*(v2 + 16))(v5, v7, v25);
  v18 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = "shazamKitPerformMatch";
  *(v19 + 24) = 21;
  *(v19 + 32) = 2;
  (*(v2 + 32))(v19 + v18, v5, v17);
  v20 = (v19 + ((v3 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;

  v22 = sub_2CE9E0();
  sub_2CDF90(v22, &dword_0, v16, "shazamKitPerformMatch", 21, 2, v7, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_13BD4;
  *(v23 + 24) = v19;

  sub_153B70(sub_13BD8, v23, v28);

  return (*(v2 + 8))(v7, v17);
}

uint64_t sub_153B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_35E0((a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), *(a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24));
  v6 = sub_2CB500();
  v7 = *(a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
  v8 = *(a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
  sub_35E0((a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v7);
  swift_weakInit();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = a1;
  v10[5] = a2;
  v11 = *(v8 + 8);

  v11(sub_153CE0, 0, sub_16A120, v10, v7, v8);

  swift_weakDestroy();
}

uint64_t sub_153CE0()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v4 = sub_3ED0(v0, qword_35F6A8);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2CDFE0();
  v6 = sub_2CE690();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "AcousticIDFlow#triggerMatch match was started", v7, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_153E6C(void (*a1)(char *, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v50 = a5;
  v51 = a4;
  v48 = a3;
  v43 = a1;
  v52 = sub_2C9EC0();
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CC950();
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for AcousticIDFlow.State(0);
  __chkstk_darwin(v46);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34FF10, qword_2D3620);
  __chkstk_darwin(v10);
  v12 = (&v43 - v11);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v43 - v19;
  __chkstk_darwin(v18);
  v22 = &v43 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_F3F4(v43, v12, &qword_34FF10, qword_2D3620);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = *(v45 + 32);
      v43(v44, v12, v6);
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v25 = sub_3ED0(v13, qword_35F6A8);
      (*(v14 + 16))(v17, v25, v13);
      v26 = sub_2CDFE0();
      v27 = sub_2CE690();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v26, v27, "AcousticIDFlow#triggerMatch switching to .identifyError", v28, 2u);
      }

      (*(v14 + 8))(v17, v13);
      v29 = *(v24 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v30 = *(v24 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0((v24 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v29);
      (*(v30 + 24))(v29, v30);
      v43(v9, v44, v6);
      (*(v45 + 56))(v9, 0, 1, v6);
    }

    else
    {
      v36 = *v12;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v37 = sub_3ED0(v13, qword_35F6A8);
      (*(v14 + 16))(v20, v37, v13);
      v38 = sub_2CDFE0();
      v39 = sub_2CE690();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "AcousticIDFlow#triggerMatch switching to .identifyComplete", v40, 2u);
      }

      (*(v14 + 8))(v20, v13);
      *v9 = v36;
    }

    swift_storeEnumTagMultiPayload();
    v41 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
    swift_beginAccess();
    sub_1694A4(v9, v24 + v41);
    swift_endAccess();
    if (v48)
    {
      sub_2CB670();
    }

    v42 = v47;
    sub_2C9E70();
    v51(v42);

    return (*(v49 + 8))(v42, v52);
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v31 = sub_3ED0(v13, qword_35F6A8);
    (*(v14 + 16))(v22, v31, v13);
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "AcousticIDFlow#triggerMatch self deallocated prematurely during performMatch call", v34, 2u);
    }

    return (*(v14 + 8))(v22, v13);
  }
}

uint64_t sub_154558(uint64_t a1, uint64_t a2)
{
  v4 = sub_112C0(_swiftEmptyArrayStorage);
  v11 = &type metadata for Bool;
  LOBYTE(v10) = 0;
  sub_E2DC(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_237690(v9, 0x636E7973417369, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;

  sub_F3368(v4, sub_16A060, v7);
}

uint64_t sub_154690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v148 = a1;
  v6 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v6 - 8);
  v145 = &v126 - v7;
  v8 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v8 - 8);
  v144 = &v126 - v9;
  v10 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v10 - 8);
  v143 = &v126 - v11;
  v12 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v12 - 8);
  v142 = &v126 - v13;
  v149 = sub_2CB970();
  v141 = *(v149 - 8);
  __chkstk_darwin(v149);
  v139 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_2CCB20();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_2CCB30();
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v131 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2CCAC0();
  v130 = *(v132 - 8);
  __chkstk_darwin(v132);
  v18 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v19 = __chkstk_darwin(v151);
  v146 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v140 = &v126 - v22;
  v23 = __chkstk_darwin(v21);
  v138 = &v126 - v24;
  __chkstk_darwin(v23);
  v150 = &v126 - v25;
  v26 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v26);
  v28 = (&v126 - v27);
  v29 = sub_2CE000();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v147 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v126 - v34;
  __chkstk_darwin(v33);
  v37 = &v126 - v36;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v128 = a3;
    v129 = a4;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v38 = sub_3ED0(v29, qword_35F6A8);
    v127 = *(v30 + 16);
    v127(v35, v38, v29);
    v39 = sub_2CDFE0();
    v40 = sub_2CE690();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v126 = v29;
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "AcousticIDFlow#listeningDialogAndViewNonRF", v41, 2u);
      v29 = v126;
    }

    v42 = *(v30 + 8);
    v42(v35, v29);
    sub_F3F4(v148, v28, &unk_3519A0, &qword_2D0980);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v155[2] = *v28;
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v43 = v155[1];
        v44 = v147;
        v127(v147, v38, v29);
        v45 = v43;
        v46 = sub_2CDFE0();
        v47 = sub_2CE680();

        v48 = &selRef_hasTwoOrMoreRooms;
        if (os_log_type_enabled(v46, v47))
        {
          v49 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v155[0] = v151;
          *v49 = 136315138;
          v50 = [v45 localizedDescription];
          v51 = sub_2CE270();
          v53 = v52;

          v153 = v51;
          v154 = v53;
          v54 = sub_2CE3C0();
          v56 = sub_3F08(v54, v55, v155);
          v48 = &selRef_hasTwoOrMoreRooms;

          *(v49 + 4) = v56;
          _os_log_impl(&dword_0, v46, v47, "AcousticIDFlow#listeningDialogAndViewNonRF Error creating dialog %s, issuing error dialog", v49, 0xCu);
          sub_306C(v151);

          v57 = v147;
        }

        else
        {

          v57 = v44;
        }

        v42(v57, v29);
        v107 = sub_2CC950();
        v108 = v145;
        (*(*(v107 - 8) + 56))(v145, 1, 1, v107);
        v109 = [v45 v48[130]];
        v110 = sub_2CE270();
        v112 = v111;

        sub_1612C4(v108, v110, v112, v128, v129);

        sub_30B8(v108, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      sub_14A58(v28, v150, &qword_34C6E8, &unk_2D0FF0);
      v63 = v130;
      v64 = v132;
      (*(v130 + 104))(v18, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v132);
      v65 = v133;
      v66 = v131;
      v67 = v135;
      (*(v133 + 104))(v131, enum case for AdditionalMetricsDescription.SourceFunction.lstnDlgView(_:), v135);
      v68 = v136;
      v69 = v134;
      v70 = v137;
      (v136[13])(v134, enum case for AdditionalMetricsDescription.StatusReason.listening(_:), v137);
      v71 = sub_2CCAD0();
      v147 = v72;
      v148 = v71;
      (v68[1])(v69, v70);
      (*(v65 + 8))(v66, v67);
      (*(v63 + 8))(v18, v64);
      v137 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v145 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v136 = sub_35E0((Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v137);
      v73 = v141;
      v74 = v139;
      (*(v141 + 104))(v139, enum case for TypeOfIntent.acousticID(_:), v149);
      v75 = enum case for ActivityType.showInterstitial(_:);
      v76 = sub_2C9C20();
      v77 = *(v76 - 8);
      v78 = v142;
      (*(v77 + 104))(v142, v75, v76);
      (*(v77 + 56))(v78, 0, 1, v76);
      v79 = sub_2CA130();
      v80 = *(v79 - 8);
      v81 = v143;
      (*(v80 + 56))(v143, 1, 1, v79);
      v82 = enum case for SiriKitReliabilityCodes.inProgress(_:);
      v83 = sub_2C98F0();
      v84 = *(v83 - 8);
      v85 = v144;
      (*(v84 + 104))(v144, v82, v83);
      v86 = v83;
      v87 = v150;
      (*(v84 + 56))(v85, 0, 1, v86);
      sub_2CB4C0();

      v88 = v85;
      v89 = v79;
      sub_30B8(v88, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v81, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v78, &qword_34CB88, &unk_2D0D90);
      (*(v73 + 8))(v74, v149);
      v90 = v138;
      sub_F3F4(v87, v138, &qword_34C6E8, &unk_2D0FF0);

      v91 = sub_2CA100();
      v92 = *(v80 + 8);
      v92(v90, v89);
      v93 = (v91 + 40);
      v94 = *(v91 + 16) + 1;
      while (--v94)
      {
        v96 = *(v93 - 1);
        v95 = *v93;
        v93 += 2;
        v97 = HIBYTE(v95) & 0xF;
        if ((v95 & 0x2000000000000000) == 0)
        {
          v97 = v96 & 0xFFFFFFFFFFFFLL;
        }

        if (v97)
        {

          goto LABEL_22;
        }
      }

      v95 = 0;
LABEL_22:

      v98 = v140;
      sub_F3F4(v87, v140, &qword_34C6E8, &unk_2D0FF0);

      v99 = sub_2CA110();
      v92(v98, v89);
      v100 = (v99 + 40);
      v101 = *(v99 + 16) + 1;
      while (--v101)
      {
        v103 = *(v100 - 1);
        v102 = *v100;
        v100 += 2;
        v104 = HIBYTE(v102) & 0xF;
        if ((v102 & 0x2000000000000000) == 0)
        {
          v104 = v103 & 0xFFFFFFFFFFFFLL;
        }

        if (v104)
        {

          goto LABEL_29;
        }
      }

      v102 = 0;
LABEL_29:

      v105 = [objc_allocWithZone(SADialogText) init];
      if (v95)
      {
        v106 = sub_2CE260();
      }

      else
      {
        v106 = 0;
      }

      [v105 setText:v106];

      if (v102)
      {
        v113 = sub_2CE260();
      }

      else
      {
        v113 = 0;
      }

      [v105 setSpeakableTextOverride:v113];

      v114 = [objc_allocWithZone(SADialog) init];
      [v114 setCanUseServerTTS:1];
      [v114 setPrintedOnly:0];
      [v114 setSpokenOnly:1];
      v115 = v105;
      [v114 setCaption:v115];
      [v114 setContent:v115];

      v116 = v146;
      sub_F3F4(v87, v146, &qword_34C6E8, &unk_2D0FF0);

      sub_2CA0D0();
      v117 = sub_2CE260();

      v92(v116, v89);
      [v114 setDialogIdentifier:v117];

      v118 = swift_allocObject();
      *(v118 + 16) = _swiftEmptyArrayStorage;
      v119 = swift_allocObject();
      v120 = Strong;
      v119[2] = Strong;
      v119[3] = v114;
      v121 = v128;
      v119[4] = v118;
      v119[5] = v121;
      v122 = v129;
      v119[6] = v129;
      if (*(v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) == 1)
      {
        v123 = swift_allocObject();
        *(v123 + 16) = sub_16A06C;
        *(v123 + 24) = v119;
        swift_allocObject();
        swift_weakInit();
        swift_retain_n();

        v124 = v114;

        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        sub_2CE4F0();
      }

      else
      {
        swift_retain_n();

        v125 = v114;

        sub_15595C(0, 0, 0, v120, v125, v118, v121, v122);
      }

      sub_30B8(v87, &qword_34C6E8, &unk_2D0FF0);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v58 = sub_3ED0(v29, qword_35F6A8);
    (*(v30 + 16))(v37, v58, v29);
    v59 = sub_2CDFE0();
    v60 = sub_2CE680();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_0, v59, v60, "AcousticIDFlow#listeningDialogAndViewNonRF self deallocated prematurely", v61, 2u);
    }

    return (*(v30 + 8))(v37, v29);
  }

  return result;
}

uint64_t sub_15595C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a7;
  v87 = a4;
  v14 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v14 - 8);
  v80 = &v78 - v15;
  v16 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v16 - 8);
  v81 = &v78 - v17;
  v18 = sub_2CA910();
  v19 = *(v18 - 8);
  v83 = v18;
  v84 = v19;
  __chkstk_darwin(v18);
  v82 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2CE000();
  v85 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v78 - v25;
  sub_20410(&qword_352D88, &qword_2D5348);
  if (a3)
  {
    v91 = a1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v27 = v92[1];
      v28 = v85;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v29 = sub_3ED0(v21, qword_35F6A8);
      (*(v28 + 16))(v24, v29, v21);
      v30 = v27;
      v31 = sub_2CDFE0();
      v32 = sub_2CE680();

      v33 = &selRef_hasTwoOrMoreRooms;
      if (os_log_type_enabled(v31, v32))
      {
        v34 = swift_slowAlloc();
        v35 = v28;
        v36 = swift_slowAlloc();
        v92[0] = v36;
        *v34 = 136315138;
        v37 = [v30 localizedDescription];
        v83 = v21;
        v84 = v30;
        v38 = v37;
        v39 = sub_2CE270();
        v40 = a8;
        v42 = v41;

        *&v88 = v39;
        *(&v88 + 1) = v42;
        a8 = v40;
        v43 = sub_2CE3C0();
        v45 = sub_3F08(v43, v44, v92);
        v30 = v84;

        *(v34 + 4) = v45;
        v33 = &selRef_hasTwoOrMoreRooms;
        _os_log_impl(&dword_0, v31, v32, "AcousticIDFlow#listeningDialogAndViewNonRF Error grabbing session ID %s, issuing error dialog", v34, 0xCu);
        sub_306C(v36);

        (*(v35 + 8))(v24, v83);
      }

      else
      {

        (*(v28 + 8))(v24, v21);
      }

      v48 = sub_2CC950();
      v49 = v80;
      (*(*(v48 - 8) + 56))(v80, 1, 1, v48);
      v50 = [v30 v33[130]];
      v51 = sub_2CE270();
      v53 = v52;

      sub_1612C4(v49, v51, v53, v86, a8);

      sub_30B8(v49, &qword_352D78, &unk_2D5320);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    v46 = sub_16848C();
    if (v46)
    {
      v80 = v46;
      [v80 setDialog:a5];
      if (a2)
      {
        v47 = sub_2CE260();
      }

      else
      {
        v47 = 0;
      }

      v55 = v21;
      v56 = v85;
      [v80 setCorrespondingSessionID:v47];

      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v57 = sub_3ED0(v21, qword_35F6A8);
      (*(v56 + 16))(v26, v57, v21);

      v58 = sub_2CDFE0();
      v59 = sub_2CE670();
      sub_16A0BC(a1, a2, 0);
      if (os_log_type_enabled(v58, v59))
      {
        v79 = a8;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        if (a2)
        {
          sub_10C40();
          swift_allocError();
          *v62 = a1;
          v62[1] = a2;

          v55 = v21;
          v63 = _swift_stdlib_bridgeErrorToNSError();
          v64 = v63;
        }

        else
        {
          v63 = 0;
          v64 = 0;
        }

        *(v60 + 4) = v63;
        *v61 = v64;
        _os_log_impl(&dword_0, v58, v59, "AcousticIDFlow#listeningDialogAndViewNonRF sessionID: %@", v60, 0xCu);
        sub_30B8(v61, &unk_34FC00, &unk_2D0150);

        a8 = v79;
        v56 = v85;
      }

      (*(v56 + 8))(v26, v55);
      v65 = sub_2CE260();
      v66 = v80;
      [v80 setViewId:v65];

      swift_beginAccess();
      sub_2CE3F0();
      if (*(&dword_10 + (*(a6 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a6 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_2CE430();
      }

      sub_2CE460();
      swift_endAccess();
    }

    v67 = [objc_allocWithZone(SAUIAddViews) init];
    swift_beginAccess();
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);

    isa = sub_2CE400().super.isa;

    [v67 setViews:isa];

    v69 = sub_2CA000();
    v70 = v81;
    (*(*(v69 - 8) + 56))(v81, 1, 1, v69);
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v71 = v82;
    sub_2C9E30();
    sub_30B8(&v88, &qword_34CC80, &qword_2D1520);
    sub_30B8(v70, &unk_353020, &unk_2D0970);
    sub_35E0((v87 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(v87 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
    v72 = v83;
    *(&v89 + 1) = v83;
    v90 = &protocol witness table for AceOutput;
    v73 = sub_F390(&v88);
    v74 = v84;
    (*(v84 + 2))(v73, v71, v72);
    v75 = swift_allocObject();
    swift_weakInit();
    v76 = swift_allocObject();
    v77 = v86;
    v76[2] = v75;
    v76[3] = v77;
    v76[4] = a8;

    sub_2CA010();

    v74[1](v71, v72);

    return sub_306C(&v88);
  }

  return result;
}

uint64_t sub_15634C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, qword_35F6A8);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2CDFE0();
  v12 = sub_2CE690();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27[1] = v3;
    v16 = a1;
    v17 = v15;
    *&v31 = v15;
    *v14 = 136446210;
    v18 = sub_2CCCA0();
    v20 = sub_3F08(v18, v19, &v31);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "AcousticIDFlow#listeningDialogAndViewWithRF Reached Logic %{public}s", v14, 0xCu);
    sub_306C(v17);
    a1 = v16;

    a2 = v28;
  }

  (*(v7 + 8))(v9, v6);
  v21 = sub_112C0(_swiftEmptyArrayStorage);
  v32 = &type metadata for Bool;
  LOBYTE(v31) = 0;
  sub_E2DC(&v31, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v21;
  sub_237690(v30, 0x636E7973417369, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v23 = v29;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a1;
  v25[4] = a2;

  sub_F3368(v23, sub_169FE0, v25);
}

uint64_t sub_15665C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v7 - 8);
  v9 = &v53[-v8];
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v53[-v15];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_F3F4(a1, v61, qword_34C798, &qword_2D0DA0);
    sub_20410(qword_34C798, &qword_2D0DA0);
    if (v62)
    {
      v58 = a3;
      v60[2] = *&v61[0];
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v19 = v60[1];
        if (qword_34BF60 != -1)
        {
          swift_once();
        }

        v20 = sub_3ED0(v10, qword_35F6A8);
        (*(v11 + 16))(v16, v20, v10);
        v21 = v19;
        v22 = sub_2CDFE0();
        v23 = sub_2CE680();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v57 = a4;
          v25 = v24;
          v55 = swift_slowAlloc();
          v60[0] = v55;
          *v25 = 136315394;
          v26 = [v21 localizedDescription];
          v27 = sub_2CE270();
          v56 = v21;
          v28 = v27;
          v54 = v23;
          v30 = v29;

          v59[0] = v28;
          v59[1] = v30;
          v31 = sub_2CE3C0();
          v33 = sub_3F08(v31, v32, v60);

          *(v25 + 4) = v33;
          *(v25 + 12) = 2082;
          v34 = sub_2CCCA0();
          v36 = sub_3F08(v34, v35, v60);

          *(v25 + 14) = v36;
          v21 = v56;
          _os_log_impl(&dword_0, v22, v54, "AcousticIDFlow#publishShazam Error creating output %s %{public}s", v25, 0x16u);
          swift_arrayDestroy();

          a4 = v57;
        }

        (*(v11 + 8))(v16, v10);
        v37 = sub_2CC950();
        (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
        v38 = [v21 localizedDescription];
        v39 = sub_2CE270();
        v41 = v40;

        sub_1612C4(v9, v39, v41, v58, a4);

        sub_30B8(v9, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      sub_F338(v61, v59);
      sub_35E0((v18 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(v18 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
      v51 = swift_allocObject();
      swift_weakInit();
      v52 = swift_allocObject();
      v52[2] = v51;
      v52[3] = a3;
      v52[4] = a4;

      sub_2CA010();

      sub_306C(v59);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v43 = sub_3ED0(v10, qword_35F6A8);
    (*(v11 + 16))(v14, v43, v10);
    v44 = sub_2CDFE0();
    v45 = sub_2CE680();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v61[0] = v47;
      *v46 = 136446210;
      v48 = sub_2CCCA0();
      v50 = sub_3F08(v48, v49, v61);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_0, v44, v45, "AcousticIDFlow#publishShazam self deallocated prematurely %{public}s", v46, 0xCu);
      sub_306C(v47);
    }

    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_156D10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v7 = sub_2C9EC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v43 = v8;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v18 = sub_3ED0(v11, qword_35F6A8);
    (*(v12 + 16))(v17, v18, v11);
    v19 = sub_2CDFE0();
    v20 = sub_2CE690();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v40 = v11;
      v22 = v21;
      v23 = swift_slowAlloc();
      v42 = a4;
      v24 = v23;
      v44 = v23;
      *v22 = 136446210;
      v25 = sub_2CCCA0();
      v39 = v12;
      v41 = a5;
      v27 = v7;
      v28 = sub_3F08(v25, v26, &v44);

      *(v22 + 4) = v28;
      v7 = v27;
      _os_log_impl(&dword_0, v19, v20, "AcousticIDFlow#publish dialog successfully generated %{public}s", v22, 0xCu);
      sub_306C(v24);
      a4 = v42;

      (*(v39 + 8))(v17, v40);
    }

    else
    {

      (*(v12 + 8))(v17, v11);
    }

    sub_2C9E70();
    a4(v10);

    return (*(v43 + 8))(v10, v7);
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v29 = sub_3ED0(v11, qword_35F6A8);
    (*(v12 + 16))(v15, v29, v11);
    v30 = sub_2CDFE0();
    v31 = sub_2CE680();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136446210;
      v34 = sub_2CCCA0();
      v36 = sub_3F08(v34, v35, &v44);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v30, v31, "AcousticIDFlow#publish self deallocated prematurely during publishing %{public}s", v32, 0xCu);
      sub_306C(v33);
    }

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_157198(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v115 = a3;
  v118 = a5;
  v109 = a4;
  v95 = sub_2CB260();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CD330();
  v112 = *(v10 - 8);
  v113 = v10;
  __chkstk_darwin(v10);
  v110 = v11;
  v111 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&unk_353020, &unk_2D0970);
  v107 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v104 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v120 = &v93 - v16;
  v117 = v17;
  __chkstk_darwin(v15);
  v108 = &v93 - v18;
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v100 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v93 - v23;
  v25 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v26 = v25 - 8;
  v105 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v103 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v93 - v30;
  v32 = __chkstk_darwin(v29);
  v106 = &v93 - v33;
  v116 = v34;
  __chkstk_darwin(v32);
  v36 = &v93 - v35;
  v37 = sub_2CA130();
  (*(*(v37 - 8) + 16))(v36, a1, v37);
  v38 = *(v26 + 56);
  v119 = v36;
  *&v36[v38] = a2;
  v39 = qword_34BF58;
  v40 = a2;
  if (v39 != -1)
  {
    swift_once();
  }

  v121 = a6;
  v41 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v42 = *(v20 + 16);
  v98 = v41;
  v97 = v20 + 16;
  v96 = v42;
  v42(v24, v41, v19);
  v43 = sub_2CDFE0();
  v44 = sub_2CE690();
  v45 = os_log_type_enabled(v43, v44);
  v102 = v19;
  v101 = v20;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v122 = v47;
    *v46 = 136446210;
    v48 = sub_2CCCA0();
    v50 = sub_3F08(v48, v49, &v122);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_0, v43, v44, "SiriAudioOutputProvider#buildShazamOutput...  %{public}s", v46, 0xCu);
    sub_306C(v47);
  }

  v99 = *(v20 + 8);
  v99(v24, v19);
  v51 = v108;
  sub_F3F4(v109, v108, &unk_353020, &unk_2D0970);
  v52 = v106;
  sub_F3F4(v119, v106, &qword_34C6E8, &unk_2D0FF0);
  v54 = v111;
  v53 = v112;
  v55 = v113;
  (*(v112 + 16))(v111, v115, v113);
  sub_F3F4(v51, v120, &unk_353020, &unk_2D0970);
  v115 = v31;
  sub_F3F4(v52, v31, &qword_34C6E8, &unk_2D0FF0);
  v56 = *(v107 + 80);
  v57 = (v56 + 32) & ~v56;
  v58 = *(v105 + 80);
  v59 = (v117 + v58 + v57) & ~v58;
  v109 = v58;
  v107 = v56;
  v60 = (v116 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = (*(v53 + 80) + v60 + 8) & ~*(v53 + 80);
  v110 = v56 | v58 | 7;
  v62 = swift_allocObject();
  v63 = v121;
  *(v62 + 16) = v118;
  *(v62 + 24) = v63;
  sub_14A58(v51, v62 + v57, &unk_353020, &unk_2D0970);
  sub_14A58(v52, v62 + v59, &qword_34C6E8, &unk_2D0FF0);
  v64 = v114;
  *(v62 + v60) = v114;
  (*(v53 + 32))(v62 + v61, v54, v55);
  if (*(v64 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) == 1)
  {
    v65 = swift_allocObject();
    *(v65 + 16) = sub_169804;
    *(v65 + 24) = v62;
    swift_allocObject();
    swift_weakInit();

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    sub_2CE4F0();

    v66 = v120;
    v67 = v115;
  }

  else
  {

    v68 = sub_2CB460();
    if (!v68)
    {
      sub_2CB180();
      v68 = sub_2CB170();
    }

    v69 = v68;
    v70 = v102;
    v71 = v100;
    v72 = ~v107;
    v114 = ~v109;
    v96(v100, v98, v102);

    v73 = sub_2CDFE0();
    v74 = sub_2CE660();

    v75 = os_log_type_enabled(v73, v74);
    v113 = v69;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v112 = v72;
      v78 = v77;
      v122 = v77;
      *v76 = 136315138;
      sub_2CB130();
      v79 = v93;
      sub_2CD3C0();

      v80 = sub_2CB200();
      v82 = v81;
      (*(v94 + 8))(v79, v95);
      v83 = sub_3F08(v80, v82, &v122);

      *(v76 + 4) = v83;
      _os_log_impl(&dword_0, v73, v74, "AcousticIDFlow#buildShazamOutput with responseMode = %s", v76, 0xCu);
      sub_306C(v78);
      v72 = v112;
    }

    v99(v71, v70);
    v66 = v120;
    v84 = v104;
    sub_F3F4(v120, v104, &unk_353020, &unk_2D0970);
    v67 = v115;
    v85 = v103;
    sub_F3F4(v115, v103, &qword_34C6E8, &unk_2D0FF0);
    v86 = (v107 + 16) & v72;
    v87 = (v117 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
    v89 = (v109 + v88 + 8) & v114;
    v90 = swift_allocObject();
    sub_14A58(v84, v90 + v86, &unk_353020, &unk_2D0970);
    v91 = (v90 + v87);
    *v91 = 0;
    v91[1] = 0;
    *(v90 + v88) = v113;
    sub_14A58(v85, v90 + v89, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();
  }

  sub_30B8(v67, &qword_34C6E8, &unk_2D0FF0);
  sub_30B8(v66, &unk_353020, &unk_2D0970);
  return sub_30B8(v119, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_157D00(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v127 = a6;
  v128 = a7;
  v135 = a4;
  v136 = a5;
  v12 = sub_2CD330();
  v126 = *(v12 - 8);
  __chkstk_darwin(v12);
  v124 = v13;
  v125 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v132 = *(v120 - 1);
  v14 = *(v132 + 64);
  v15 = __chkstk_darwin(v120);
  v138 = (&v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v15);
  v18 = &v113 - v17;
  __chkstk_darwin(v16);
  v134 = &v113 - v19;
  v20 = sub_20410(&unk_353020, &unk_2D0970);
  v129 = *(v20 - 8);
  v21 = __chkstk_darwin(v20 - 8);
  v137 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v22;
  __chkstk_darwin(v21);
  v131 = &v113 - v23;
  v123 = sub_2CB260();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CE000();
  v139 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v113 - v30;
  __chkstk_darwin(v29);
  v33 = &v113 - v32;
  sub_20410(&qword_352D88, &qword_2D5348);
  v133 = v14;
  if (a3)
  {
    v119 = v12;
    v127 = v18;
    v141 = a1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v117 = v28;
      v34 = v140[4];
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v35 = v25;
      v36 = sub_3ED0(v25, qword_35F6A8);
      v37 = v139;
      v38 = *(v139 + 16);
      v38(v31, v36, v25);
      v39 = v34;
      v40 = sub_2CDFE0();
      v41 = sub_2CE680();

      v42 = os_log_type_enabled(v40, v41);
      v118 = v39;
      if (v42)
      {
        v43 = swift_slowAlloc();
        v116 = v38;
        v44 = v43;
        v45 = swift_slowAlloc();
        v140[0] = v45;
        *v44 = 136315138;
        v46 = [v39 localizedDescription];
        v47 = sub_2CE270();
        v49 = v48;

        v140[1] = v47;
        v140[2] = v49;
        v50 = sub_2CE3C0();
        v52 = sub_3F08(v50, v51, v140);

        *(v44 + 4) = v52;
        _os_log_impl(&dword_0, v40, v41, "AcousticIDFlow#buildShazamOutput Error creating dialog %s", v44, 0xCu);
        sub_306C(v45);

        v38 = v116;

        v53 = v139;
      }

      else
      {

        v53 = v37;
      }

      v77 = *(v53 + 8);
      v77(v31, v35);
      v78 = v35;
      v79 = v127;
      sub_F3F4(v128, v127, &qword_34C6E8, &unk_2D0FF0);
      v80 = v120;
      v81 = *(v79 + v120[12]);
      v82 = sub_2CA000();
      (*(*(v82 - 8) + 56))(v137, 1, 1, v82);
      v83 = sub_2CA130();
      v116 = *(v83 - 8);
      v84 = *(v116 + 2);
      v85 = v138;
      v128 = v83;
      v84(v138, v79);
      *(v85 + v80[12]) = v81;
      v120 = v81;
      v86 = sub_2CB460();
      v87 = v117;
      if (!v86)
      {
        sub_2CB180();
        v86 = sub_2CB170();
      }

      v88 = v86;
      v89 = a9;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v90 = sub_3ED0(v78, static Logger.default);
      swift_beginAccess();
      v38(v87, v90, v78);

      v91 = sub_2CDFE0();
      v92 = sub_2CE660();

      v93 = os_log_type_enabled(v91, v92);
      v115 = v88;
      if (v93)
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v114 = v77;
        v96 = v95;
        v140[0] = v95;
        *v94 = 136315138;
        sub_2CB130();
        v97 = v87;
        v98 = v121;
        sub_2CD3C0();

        v99 = sub_2CB200();
        v101 = v100;
        (*(v122 + 8))(v98, v123);
        v102 = sub_3F08(v99, v101, v140);

        *(v94 + 4) = v102;
        _os_log_impl(&dword_0, v91, v92, "AcousticIDFlow#buildTraditionalRFShazamOutput with responseMode = %s", v94, 0xCu);
        sub_306C(v96);
        v89 = a9;

        v114(v97, v78);
      }

      else
      {

        v77(v87, v78);
      }

      v103 = v131;
      sub_F3F4(v137, v131, &unk_353020, &unk_2D0970);
      v104 = v134;
      sub_F3F4(v138, v134, &qword_34C6E8, &unk_2D0FF0);
      v106 = v125;
      v105 = v126;
      v107 = v119;
      (*(v126 + 16))(v125, v89, v119);
      v108 = (*(v129 + 80) + 16) & ~*(v129 + 80);
      v109 = (v130 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
      v110 = (*(v132 + 80) + v109 + 8) & ~*(v132 + 80);
      v111 = (v133 + *(v105 + 80) + v110) & ~*(v105 + 80);
      v112 = swift_allocObject();
      sub_14A58(v103, v112 + v108, &unk_353020, &unk_2D0970);
      *(v112 + v109) = v115;
      sub_14A58(v104, v112 + v110, &qword_34C6E8, &unk_2D0FF0);
      (*(v105 + 32))(v112 + v111, v106, v107);

      sub_20410(&unk_353030, &unk_2D1450);
      sub_2CE4F0();

      sub_30B8(v138, &qword_34C6E8, &unk_2D0FF0);
      sub_30B8(v137, &unk_353020, &unk_2D0970);
      (*(v116 + 1))(v127, v128);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    v138 = a1;

    v54 = sub_2CB460();
    if (!v54)
    {
      sub_2CB180();
      v54 = sub_2CB170();
    }

    v55 = v54;
    v56 = v139;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v137 = a2;
    v57 = sub_3ED0(v25, static Logger.default);
    swift_beginAccess();
    (*(v56 + 16))(v33, v57, v25);

    v58 = sub_2CDFE0();
    v59 = sub_2CE660();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v141 = v61;
      *v60 = 136315138;
      sub_2CB130();
      v62 = v121;
      sub_2CD3C0();

      v63 = sub_2CB200();
      v65 = v64;
      (*(v122 + 8))(v62, v123);
      v66 = sub_3F08(v63, v65, &v141);

      *(v60 + 4) = v66;
      _os_log_impl(&dword_0, v58, v59, "AcousticIDFlow#buildShazamOutput with responseMode = %s", v60, 0xCu);
      sub_306C(v61);

      (*(v139 + 8))(v33, v25);
    }

    else
    {

      (*(v56 + 8))(v33, v25);
    }

    v67 = v131;
    sub_F3F4(v127, v131, &unk_353020, &unk_2D0970);
    v68 = v134;
    sub_F3F4(v128, v134, &qword_34C6E8, &unk_2D0FF0);
    v69 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v70 = (v130 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
    v72 = (*(v132 + 80) + v71 + 8) & ~*(v132 + 80);
    v73 = swift_allocObject();
    sub_14A58(v67, v73 + v69, &unk_353020, &unk_2D0970);
    v74 = (v73 + v70);
    v75 = v137;
    *v74 = v138;
    v74[1] = v75;
    *(v73 + v71) = v55;
    sub_14A58(v68, v73 + v72, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();
  }

  return result;
}

uint64_t sub_158B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v6[11] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v6[12] = swift_task_alloc();
  v7 = sub_2CE000();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_2C9B80();
  v6[16] = swift_task_alloc();
  v8 = sub_2CA630();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_158CB4, 0, 0);
}

uint64_t sub_158CB4(uint64_t a1)
{
  v32 = v1;
  v2 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = *(v1 + 72);
  sub_2C9B20();
  v3 = swift_task_alloc();
  *(v3 + 16) = v28;
  *(v3 + 32) = v2;
  *(v3 + 40) = v29;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v5 = *(v1 + 112);
  v4 = *(v1 + 120);
  v6 = *(v1 + 104);
  v7 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v1 + 112);
  v11 = *(v1 + 120);
  v13 = *(v1 + 104);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136446210;
    v16 = sub_2CCCA0();
    v18 = sub_3F08(v16, v17, &v31);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v8, v9, "SiriAudioOutputProvider#buildShazamOutput returning dialog only output. %{public}s", v14, 0xCu);
    sub_306C(v15);
  }

  (*(v12 + 8))(v11, v13);
  v20 = *(v1 + 88);
  v19 = *(v1 + 96);
  v21 = *(v1 + 80);
  sub_2CA080();
  swift_allocObject();
  *(v1 + 160) = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v22 = swift_allocObject();
  *(v1 + 168) = v22;
  *(v22 + 16) = xmmword_2D0770;
  sub_F3F4(v21, v19, &qword_34C6E8, &unk_2D0FF0);
  *(v22 + 32) = *(v19 + *(v20 + 48));
  v23 = sub_2CA130();
  (*(*(v23 - 8) + 8))(v19, v23);
  v30 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v24 = swift_task_alloc();
  *(v1 + 176) = v24;
  *v24 = v1;
  v24[1] = sub_159004;
  v25 = *(v1 + 152);
  v26 = *(v1 + 40);

  return v30(v26, v22, v25);
}

uint64_t sub_159004()
{

  return _swift_task_switch(sub_159138, 0, 0);
}

uint64_t sub_159138()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1591E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v19 = a6;
  v7 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = sub_2CB260();
  __chkstk_darwin(v11 - 8);
  v12 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v12 - 8);
  sub_F3F4(a2, &v18 - v13, &unk_353020, &unk_2D0970);
  sub_2CA5B0();

  sub_2CA600();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(v19, v10, &qword_34C6E8, &unk_2D0FF0);
  v14 = *&v10[*(v8 + 56)];
  v15 = [v14 catId];

  sub_2CE270();
  sub_2CA590();
  v16 = sub_2CA130();
  (*(*(v16 - 8) + 8))(v10, v16);
  return sub_2CA610();
}

uint64_t sub_159424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v5[15] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5[16] = swift_task_alloc();
  v6 = sub_2CE000();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  sub_2C9B80();
  v5[20] = swift_task_alloc();
  v7 = sub_2CA630();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_1595B0, 0, 0);
}

uint64_t sub_1595B0(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 104);
  v32 = *(v1 + 88);
  sub_2C9B20();
  v3 = swift_task_alloc();
  *(v3 + 16) = v32;
  *(v3 + 32) = v2;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v5 = *(v1 + 144);
  v4 = *(v1 + 152);
  v6 = *(v1 + 136);
  v7 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v1 + 144);
  v11 = *(v1 + 152);
  v13 = *(v1 + 136);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446210;
    v16 = sub_2CCCA0();
    v18 = sub_3F08(v16, v17, &v34);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v8, v9, "SiriAudioOutputProvider#buildTraditionalRFShazamOutput returning old snippet. %{public}s", v14, 0xCu);
    sub_306C(v15);
  }

  (*(v12 + 8))(v11, v13);
  v20 = *(v1 + 120);
  v19 = *(v1 + 128);
  v21 = *(v1 + 104);
  v22 = *(v1 + 112);
  sub_2CA080();
  swift_allocObject();
  *(v1 + 192) = sub_2CA070();
  v23 = sub_2CD230();
  *(v1 + 40) = v23;
  *(v1 + 48) = sub_169F98(&qword_34CC78, &type metadata accessor for SiriAudioSnippets, &protocol conformance descriptor for SiriAudioSnippets);
  v24 = sub_F390((v1 + 16));
  v25 = sub_2CD330();
  (*(*(v25 - 8) + 16))(v24, v22, v25);
  (*(*(v23 - 8) + 104))(v24, enum case for SiriAudioSnippets.shazam(_:), v23);
  sub_20410(&unk_351900, &unk_2D0960);
  v26 = swift_allocObject();
  *(v1 + 200) = v26;
  *(v26 + 16) = xmmword_2D0770;
  sub_F3F4(v21, v19, &qword_34C6E8, &unk_2D0FF0);
  *(v26 + 32) = *(v19 + *(v20 + 48));
  v27 = sub_2CA130();
  (*(*(v27 - 8) + 8))(v19, v27);
  v33 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v28 = swift_task_alloc();
  *(v1 + 208) = v28;
  *v28 = v1;
  v28[1] = sub_1599C8;
  v29 = *(v1 + 184);
  v30 = *(v1 + 80);

  return v33(v30, v1 + 16, v26, v29);
}

uint64_t sub_1599C8()
{
  v1 = *v0;

  sub_306C((v1 + 16));

  return _swift_task_switch(sub_159B0C, 0, 0);
}

uint64_t sub_159B0C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_159BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_159DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v150 = a1;
  v6 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v6 - 8);
  v147 = &v127 - v7;
  v8 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v8 - 8);
  v146 = &v127 - v9;
  v10 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v10 - 8);
  v145 = &v127 - v11;
  v12 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v12 - 8);
  v144 = &v127 - v13;
  v151 = sub_2CB970();
  v143 = *(v151 - 8);
  __chkstk_darwin(v151);
  v141 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_2CCB20();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_2CCB30();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_2CCAC0();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v19 = __chkstk_darwin(v152);
  v148 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v142 = &v127 - v22;
  v23 = __chkstk_darwin(v21);
  v140 = &v127 - v24;
  __chkstk_darwin(v23);
  v154 = &v127 - v25;
  v26 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v26);
  v28 = (&v127 - v27);
  v29 = sub_2CE000();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v149 = &v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v127 - v34;
  __chkstk_darwin(v33);
  v37 = &v127 - v36;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v130 = a3;
    v131 = a4;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v38 = sub_3ED0(v29, qword_35F6A8);
    v39 = *(v30 + 16);
    v129 = v38;
    v128 = v39;
    (v39)(v35);
    v40 = sub_2CDFE0();
    v41 = sub_2CE690();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "AcousticIDFlow#noMatchFoundDialogAndViewNonRF", v42, 2u);
    }

    v43 = *(v30 + 8);
    v43(v35, v29);
    sub_F3F4(v150, v28, &unk_3519A0, &qword_2D0980);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v157 = *v28;
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v44 = v156;
        v45 = [v156 localizedDescription];
        v46 = sub_2CE270();
        v48 = v47;

        v155[0] = v46;
        v155[1] = v48;
        v49 = sub_2CE3C0();
        v51 = v50;
        v52 = v149;
        v128(v149, v129, v29);
        v53 = sub_2CDFE0();
        v54 = sub_2CE680();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = v43;
          v57 = swift_slowAlloc();
          v155[0] = v57;
          *v55 = 136315138;
          v58 = sub_3F08(v49, v51, v155);

          *(v55 + 4) = v58;
          _os_log_impl(&dword_0, v53, v54, "AcousticIDFlow#noMatchFoundDialogAndViewNonRF Error creating dialog %s, issuing error dialog", v55, 0xCu);
          sub_306C(v57);

          v56(v149, v29);
        }

        else
        {

          v43(v52, v29);
        }

        v107 = v131;
        v108 = v130;
        v109 = sub_2CC950();
        v110 = v147;
        (*(*(v109 - 8) + 56))(v147, 1, 1, v109);
        v111 = [v44 localizedDescription];
        v112 = sub_2CE270();
        v114 = v113;

        sub_1612C4(v110, v112, v114, v108, v107);

        sub_30B8(v110, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      sub_14A58(v28, v154, &qword_34C6E8, &unk_2D0FF0);
      v64 = v132;
      v65 = v134;
      (*(v132 + 104))(v18, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v134);
      v66 = v135;
      v67 = v133;
      v68 = v137;
      (*(v135 + 104))(v133, enum case for AdditionalMetricsDescription.SourceFunction.noMatch(_:), v137);
      v69 = v138;
      v70 = v136;
      v71 = v139;
      (v138[13])(v136, enum case for AdditionalMetricsDescription.StatusReason.noMatchFound(_:), v139);
      v72 = sub_2CCAD0();
      v149 = v73;
      v150 = v72;
      (v69[1])(v70, v71);
      (*(v66 + 8))(v67, v68);
      (*(v64 + 8))(v18, v65);
      v139 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v147 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v138 = sub_35E0((Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v139);
      v74 = v143;
      v75 = v141;
      (*(v143 + 104))(v141, enum case for TypeOfIntent.acousticID(_:), v151);
      v76 = enum case for ActivityType.failed(_:);
      v77 = sub_2C9C20();
      v78 = *(v77 - 8);
      v79 = v144;
      (*(v78 + 104))(v144, v76, v77);
      (*(v78 + 56))(v79, 0, 1, v77);
      v80 = sub_2CA130();
      v81 = *(v80 - 8);
      v82 = v145;
      (*(v81 + 56))(v145, 1, 1, v80);
      v83 = enum case for SiriKitReliabilityCodes.noReadableItems(_:);
      v84 = sub_2C98F0();
      v85 = *(v84 - 8);
      v86 = v146;
      (*(v85 + 104))(v146, v83, v84);
      (*(v85 + 56))(v86, 0, 1, v84);
      sub_2CB4C0();

      v87 = v86;
      v88 = v80;
      sub_30B8(v87, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v82, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v79, &qword_34CB88, &unk_2D0D90);
      (*(v74 + 8))(v75, v151);
      v89 = v140;
      sub_F3F4(v154, v140, &qword_34C6E8, &unk_2D0FF0);

      v90 = sub_2CA100();
      v91 = *(v81 + 8);
      v91(v89, v80);
      v92 = (v90 + 40);
      v93 = *(v90 + 16) + 1;
      v94 = v131;
      while (--v93)
      {
        v96 = *(v92 - 1);
        v95 = *v92;
        v92 += 2;
        v97 = HIBYTE(v95) & 0xF;
        if ((v95 & 0x2000000000000000) == 0)
        {
          v97 = v96 & 0xFFFFFFFFFFFFLL;
        }

        if (v97)
        {

          goto LABEL_22;
        }
      }

      v95 = 0;
LABEL_22:

      v98 = v142;
      sub_F3F4(v154, v142, &qword_34C6E8, &unk_2D0FF0);

      v99 = sub_2CA110();
      v91(v98, v88);
      v100 = (v99 + 40);
      v101 = *(v99 + 16) + 1;
      while (--v101)
      {
        v103 = *(v100 - 1);
        v102 = *v100;
        v100 += 2;
        v104 = HIBYTE(v102) & 0xF;
        if ((v102 & 0x2000000000000000) == 0)
        {
          v104 = v103 & 0xFFFFFFFFFFFFLL;
        }

        if (v104)
        {

          goto LABEL_29;
        }
      }

      v102 = 0;
LABEL_29:

      v105 = [objc_allocWithZone(SADialogText) init];
      if (v95)
      {
        v106 = sub_2CE260();
      }

      else
      {
        v106 = 0;
      }

      [v105 setText:v106];

      if (v102)
      {
        v115 = sub_2CE260();
      }

      else
      {
        v115 = 0;
      }

      [v105 setSpeakableTextOverride:v115];

      v116 = [objc_allocWithZone(SADialog) init];
      [v116 setCanUseServerTTS:1];
      [v116 setPrintedOnly:0];
      [v116 setSpokenOnly:1];
      v117 = v105;
      [v116 setCaption:v117];
      [v116 setContent:v117];

      v118 = v148;
      sub_F3F4(v154, v148, &qword_34C6E8, &unk_2D0FF0);

      sub_2CA0D0();
      v119 = sub_2CE260();

      v91(v118, v88);
      [v116 setDialogIdentifier:v119];

      v120 = swift_allocObject();
      *(v120 + 16) = _swiftEmptyArrayStorage;
      v121 = swift_allocObject();
      v122 = Strong;
      v121[2] = Strong;
      v121[3] = v116;
      v123 = v130;
      v121[4] = v120;
      v121[5] = v123;
      v121[6] = v94;
      if (*(v122 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) == 1)
      {
        v124 = swift_allocObject();
        *(v124 + 16) = sub_16A188;
        *(v124 + 24) = v121;
        swift_allocObject();
        swift_weakInit();
        swift_retain_n();

        v125 = v116;

        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        sub_2CE4F0();
      }

      else
      {
        swift_retain_n();

        v126 = v116;

        sub_15B094(0, 0, 0, v122, v126, v120, v123, v94);
      }

      sub_30B8(v154, &qword_34C6E8, &unk_2D0FF0);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v59 = sub_3ED0(v29, qword_35F6A8);
    (*(v30 + 16))(v37, v59, v29);
    v60 = sub_2CDFE0();
    v61 = sub_2CE680();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "AcousticIDFlow#noMatchFoundDialogAndViewNonRF self deallocated prematurely", v62, 2u);
    }

    return (*(v30 + 8))(v37, v29);
  }

  return result;
}

uint64_t sub_15B094(uint64_t a1, NSString a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a7;
  v69 = a8;
  v63 = a5;
  v67 = a4;
  v12 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v12 - 8);
  v66 = &v62 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v18 - 8);
  v20 = &v62 - v19;
  v21 = sub_2CA910();
  v22 = *(v21 - 8);
  v64 = v21;
  v65 = v22;
  __chkstk_darwin(v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_352D88, &qword_2D5348);
  if (a3)
  {
    v73 = a1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v25 = v74[1];
      v26 = v15;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v27 = sub_3ED0(v14, qword_35F6A8);
      (*(v15 + 16))(v17, v27, v14);
      v28 = v25;
      v29 = sub_2CDFE0();
      v30 = sub_2CE680();

      v31 = &selRef_hasTwoOrMoreRooms;
      if (os_log_type_enabled(v29, v30))
      {
        v32 = swift_slowAlloc();
        v65 = v26;
        v33 = v32;
        v34 = swift_slowAlloc();
        v74[0] = v34;
        *v33 = 136315138;
        v35 = [v28 localizedDescription];
        v36 = sub_2CE270();
        v38 = v37;

        *&v70 = v36;
        *(&v70 + 1) = v38;
        v39 = sub_2CE3C0();
        v41 = sub_3F08(v39, v40, v74);
        v31 = &selRef_hasTwoOrMoreRooms;

        *(v33 + 4) = v41;
        _os_log_impl(&dword_0, v29, v30, "AcousticIDFlow#noMatchFoundDialogAndViewNonRF Error grabbing session ID %s, issuing error dialog", v33, 0xCu);
        sub_306C(v34);

        (*(v65 + 8))(v17, v14);
      }

      else
      {

        (*(v26 + 8))(v17, v14);
      }

      v56 = sub_2CC950();
      v57 = v66;
      (*(*(v56 - 8) + 56))(v66, 1, 1, v56);
      v58 = [v28 v31[130]];
      v59 = sub_2CE270();
      v61 = v60;

      sub_1612C4(v57, v59, v61, v68, v69);

      sub_30B8(v57, &qword_352D78, &unk_2D5320);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    v42 = sub_168BEC();
    if (v42)
    {
      v43 = v42;
      [v43 setDialog:v63];
      if (a2)
      {
        a2 = sub_2CE260();
      }

      [v43 setCorrespondingSessionID:a2];

      v44 = sub_2CE260();
      [v43 setViewId:v44];

      swift_beginAccess();
      sub_2CE3F0();
      if (*(&dword_10 + (*(a6 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a6 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_2CE430();
      }

      sub_2CE460();
      swift_endAccess();
    }

    v45 = [objc_allocWithZone(SAUIAddViews) init];
    swift_beginAccess();
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);

    isa = sub_2CE400().super.isa;

    [v45 setViews:isa];

    v47 = sub_2CA000();
    (*(*(v47 - 8) + 56))(v20, 1, 1, v47);
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    sub_2C9E30();
    sub_30B8(&v70, &qword_34CC80, &qword_2D1520);
    sub_30B8(v20, &unk_353020, &unk_2D0970);
    sub_35E0((v67 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(v67 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
    v48 = v64;
    *(&v71 + 1) = v64;
    v72 = &protocol witness table for AceOutput;
    v49 = sub_F390(&v70);
    v50 = v65;
    (*(v65 + 16))(v49, v24, v48);
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v53 = v68;
    v54 = v69;
    v52[2] = v51;
    v52[3] = v53;
    v52[4] = v54;

    sub_2CA010();

    (*(v50 + 8))(v24, v48);

    return sub_306C(&v70);
  }

  return result;
}

uint64_t sub_15B894(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, const char *a6, unsigned int a7, const char *a8)
{
  v38 = a7;
  v36 = a6;
  v40 = a4;
  v10 = sub_2C9EC0();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AcousticIDFlow.State(0);
  __chkstk_darwin(v37);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v35 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v35 = a5;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v24 = sub_3ED0(v15, qword_35F6A8);
    (*(v16 + 16))(v19, v24, v15);
    v25 = sub_2CDFE0();
    v26 = sub_2CE690();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, v36, v27, 2u);
    }

    (*(v16 + 8))(v19, v15);
    swift_storeEnumTagMultiPayload();
    v28 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
    swift_beginAccess();
    sub_1694A4(v14, v23 + v28);
    swift_endAccess();
    sub_2C9E70();
    v40(v12);

    return (*(v39 + 8))(v12, v10);
  }

  else
  {
    v30 = a8;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v31 = sub_3ED0(v15, qword_35F6A8);
    (*(v16 + 16))(v21, v31, v15);
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, v30, v34, 2u);
    }

    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_15BCC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, qword_35F6A8);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2CDFE0();
  v12 = sub_2CE690();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24[1] = v3;
    v16 = a1;
    v17 = v15;
    v26 = v15;
    *v14 = 136446210;
    v18 = sub_2CCCA0();
    v20 = sub_3F08(v18, v19, &v26);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "AcousticIDFlow#noMatchFoundDialogAndViewWithRF... %{public}s", v14, 0xCu);
    sub_306C(v17);
    a1 = v16;

    a2 = v25;
  }

  (*(v7 + 8))(v9, v6);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;

  sub_F4074(sub_169784, v22);
}

uint64_t sub_15BF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, char *a11, uint64_t a12, const char *a13)
{
  v156 = a8;
  v155 = a7;
  LODWORD(v154) = a6;
  v153 = a5;
  v176 = a3;
  v177 = a4;
  v170 = a1;
  v13 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v13 - 8);
  v164 = (&v145 - v14);
  v15 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v15 - 8);
  v167 = &v145 - v16;
  v17 = sub_2CE000();
  v179 = *(v17 - 8);
  v180 = v17;
  v18 = __chkstk_darwin(v17);
  v169 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v168 = &v145 - v21;
  __chkstk_darwin(v20);
  v166 = &v145 - v22;
  v23 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v23 - 8);
  v161 = &v145 - v24;
  v25 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v25 - 8);
  v160 = &v145 - v26;
  v27 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v27 - 8);
  v159 = &v145 - v28;
  v171 = sub_2CB970();
  v158 = *(v171 - 8);
  __chkstk_darwin(v171);
  v157 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_2CCB20();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = &v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_2CCB30();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v32 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2CCAC0();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AcousticIDFlow.State(0);
  __chkstk_darwin(v35);
  v37 = &v145 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2CD1E0();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v145 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2CD330();
  v163 = *(v165 - 8);
  __chkstk_darwin(v165);
  v175 = &v145 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v43 = __chkstk_darwin(v172);
  v162 = &v145 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v173 = &v145 - v46;
  v47 = __chkstk_darwin(v45);
  v174 = &v145 - v48;
  __chkstk_darwin(v47);
  v178 = &v145 - v49;
  v50 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v50);
  v52 = (&v145 - v51);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v169 = Strong;
    sub_F3F4(v170, v52, &unk_3519A0, &qword_2D0980);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v182[2] = *v52;
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v54 = v182[1];
        v55 = v179;
        v56 = v180;
        if (qword_34BF60 != -1)
        {
          swift_once();
        }

        v57 = sub_3ED0(v56, qword_35F6A8);
        v58 = v168;
        (*(v55 + 16))(v168, v57, v56);
        v59 = v54;
        v60 = sub_2CDFE0();
        v61 = sub_2CE680();

        v62 = &selRef_hasTwoOrMoreRooms;
        if (os_log_type_enabled(v60, v61))
        {
          v63 = swift_slowAlloc();
          v182[0] = swift_slowAlloc();
          *v63 = 136315394;
          v64 = [v59 localizedDescription];
          v65 = sub_2CE270();
          v67 = v66;

          v181[0] = v65;
          v181[1] = v67;
          v68 = sub_2CE3C0();
          v70 = sub_3F08(v68, v69, v182);

          *(v63 + 4) = v70;
          *(v63 + 12) = 2082;
          v71 = sub_2CCCA0();
          v73 = sub_3F08(v71, v72, v182);

          *(v63 + 14) = v73;
          v62 = &selRef_hasTwoOrMoreRooms;
          _os_log_impl(&dword_0, v60, v61, "AcousticIDFlow#listeningDialogAndViewWithRF Error creating dialog %s %{public}s", v63, 0x16u);
          swift_arrayDestroy();

          (*(v55 + 8))(v168, v56);
        }

        else
        {

          (*(v55 + 8))(v58, v56);
        }

        v139 = sub_2CC950();
        v140 = v164;
        (*(*(v139 - 8) + 56))(v164, 1, 1, v139);
        v141 = [v59 v62[130]];
        v142 = sub_2CE270();
        v144 = v143;

        sub_1612C4(v140, v142, v144, v176, v177);

        sub_30B8(v140, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      v170 = a12;
      v168 = a11;
      v164 = a10;
      v145 = a9;
      sub_14A58(v52, v178, &qword_34C6E8, &unk_2D0FF0);
      (*(v39 + 104))(v41, *v153, v38);
      sub_2CD320();
      swift_storeEnumTagMultiPayload();
      v86 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      v87 = v169;
      swift_beginAccess();
      sub_1694A4(v37, &v87[v86]);
      swift_endAccess();
      v88 = v146;
      v89 = v147;
      (*(v146 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v147);
      v90 = v148;
      v91 = v150;
      (*(v148 + 104))(v32, *v155, v150);
      v92 = v151;
      v93 = v149;
      v94 = v152;
      (*(v151 + 104))(v149, *v156, v152);
      v156 = sub_2CCAD0();
      v155 = v95;
      (*(v92 + 8))(v93, v94);
      (*(v90 + 8))(v32, v91);
      (*(v88 + 8))(v34, v89);
      v153 = *&v87[OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24];
      v154 = *&v87[OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32];
      v152 = sub_35E0(&v87[OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider], v153);
      v96 = v158;
      v97 = v157;
      (*(v158 + 104))(v157, enum case for TypeOfIntent.acousticID(_:), v171);
      v98 = *v145;
      v99 = sub_2C9C20();
      v100 = *(v99 - 8);
      v101 = v159;
      (*(v100 + 104))(v159, v98, v99);
      (*(v100 + 56))(v101, 0, 1, v99);
      v102 = sub_2CA130();
      v103 = *(v102 - 8);
      v104 = v160;
      (*(v103 + 56))(v160, 1, 1, v102);
      v105 = *v164;
      v106 = sub_2C98F0();
      v107 = *(v106 - 8);
      v108 = v161;
      (*(v107 + 104))(v161, v105, v106);
      (*(v107 + 56))(v108, 0, 1, v106);
      sub_2CB4C0();

      sub_30B8(v108, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v104, &qword_34CB80, &unk_2D0B30);
      v109 = v101;
      v110 = v102;
      sub_30B8(v109, &qword_34CB88, &unk_2D0D90);
      (*(v96 + 8))(v97, v171);
      v111 = v174;
      sub_F3F4(v178, v174, &qword_34C6E8, &unk_2D0FF0);
      v113 = v172;
      v112 = v173;
      v114 = *(v111 + *(v172 + 48));
      v171 = v103;
      (*(v103 + 16))(v173, v111, v110);
      *(v112 + *(v113 + 48)) = v114;
      v115 = qword_34BF60;
      v164 = v114;
      if (v115 != -1)
      {
        swift_once();
      }

      v116 = v180;
      v117 = sub_3ED0(v180, qword_35F6A8);
      v118 = v179;
      v119 = v166;
      (*(v179 + 16))(v166, v117, v116);
      v120 = sub_2CDFE0();
      v121 = sub_2CE690();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = v118;
        v124 = swift_slowAlloc();
        v181[0] = v124;
        *v122 = 136446210;
        v125 = sub_2CCCA0();
        v127 = sub_3F08(v125, v126, v181);

        *(v122 + 4) = v127;
        _os_log_impl(&dword_0, v120, v121, "AcousticIDFlow#publishShazam Reached Logic %{public}s", v122, 0xCu);
        sub_306C(v124);

        (*(v123 + 8))(v119, v116);
      }

      else
      {

        (*(v118 + 8))(v119, v116);
      }

      v128 = v173;
      v129 = v162;
      sub_F3F4(v173, v162, &qword_34C6E8, &unk_2D0FF0);
      v130 = *(v129 + *(v172 + 48));
      v131 = sub_2CA000();
      v132 = v167;
      (*(*(v131 - 8) + 56))(v167, 1, 1, v131);
      v133 = swift_allocObject();
      swift_weakInit();
      v134 = swift_allocObject();
      v135 = v176;
      v136 = v177;
      v134[2] = v133;
      v134[3] = v135;
      v134[4] = v136;

      v137 = v175;
      sub_157198(v129, v130, v175, v132, v170, v134);

      sub_30B8(v132, &unk_353020, &unk_2D0970);
      sub_30B8(v128, &qword_34C6E8, &unk_2D0FF0);

      v138 = *(v171 + 8);
      v138(v129, v110);

      (*(v163 + 8))(v137, v165);
      sub_30B8(v178, &qword_34C6E8, &unk_2D0FF0);
      return (v138)(v174, v110);
    }
  }

  else
  {
    v74 = v169;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v75 = v180;
    v76 = sub_3ED0(v180, qword_35F6A8);
    v77 = v179;
    (*(v179 + 16))(v74, v76, v75);
    v78 = sub_2CDFE0();
    v79 = sub_2CE680();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v181[0] = v81;
      *v80 = 136446210;
      v82 = sub_2CCCA0();
      v84 = sub_3F08(v82, v83, v181);

      *(v80 + 4) = v84;
      _os_log_impl(&dword_0, v78, v79, a13, v80, 0xCu);
      sub_306C(v81);
    }

    return (*(v77 + 8))(v74, v75);
  }

  return result;
}

uint64_t sub_15D388(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_112C0(_swiftEmptyArrayStorage);
  v22 = v6;
  v7 = a1[5];
  if (v7)
  {
    v8 = v6;
    v9 = a1[4];
    v21 = &type metadata for String;
    *&v20 = v9;
    *(&v20 + 1) = v7;
    sub_E2DC(&v20, v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_237690(v19, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v22 = v8;
  }

  else
  {
    sub_236110(0x656C746974, 0xE500000000000000, &v20);
    sub_30B8(&v20, &qword_34CEA0, &qword_2D0FC0);
  }

  v11 = a1[9];
  if (v11)
  {
    v12 = a1[8];
    v21 = &type metadata for String;
    *&v20 = v12;
    *(&v20 + 1) = v11;
    sub_E2DC(&v20, v19);

    v13 = v22;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_237690(v19, 0x747369747261, 0xE600000000000000, v14);
    v15 = v13;
  }

  else
  {
    sub_236110(0x747369747261, 0xE600000000000000, &v20);
    sub_30B8(&v20, &qword_34CEA0, &qword_2D0FC0);
    v15 = v22;
  }

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;

  sub_F39DC(v15, sub_1695EC, v17);
}

uint64_t sub_15D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v161 = a3;
  v159 = a1;
  v7 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v7 - 8);
  v156 = &v136 - v8;
  v9 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v9 - 8);
  v155 = &v136 - v10;
  v11 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v11 - 8);
  v154 = &v136 - v12;
  v13 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v13 - 8);
  v153 = &v136 - v14;
  v160 = sub_2CB970();
  v152 = *(v160 - 8);
  __chkstk_darwin(v160);
  v151 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_2CCB20();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_2CCB30();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v142 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_2CCAC0();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v19 - 8);
  v21 = &v136 - v20;
  v162 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v22 = __chkstk_darwin(v162);
  v157 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v150 = &v136 - v25;
  v26 = __chkstk_darwin(v24);
  v149 = &v136 - v27;
  __chkstk_darwin(v26);
  v164 = (&v136 - v28);
  v29 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v29);
  v31 = (&v136 - v30);
  v32 = sub_2CE000();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v158 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v136 - v37;
  __chkstk_darwin(v36);
  v40 = &v136 - v39;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v137 = v21;
    v138 = a4;
    v139 = a5;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v41 = sub_3ED0(v32, qword_35F6A8);
    v42 = *(v33 + 16);
    v42(v38, v41, v32);
    v43 = sub_2CDFE0();
    v44 = sub_2CE690();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v136 = v32;
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "AcousticIDFlow#successfulMatchDialogAndViewNonRF", v45, 2u);
      v32 = v136;
    }

    v46 = *(v33 + 8);
    v46(v38, v32);
    sub_F3F4(v159, v31, &unk_3519A0, &qword_2D0980);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v167[2] = *v31;
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v47 = v167[1];
        v48 = v158;
        v42(v158, v41, v32);
        v49 = v47;
        v50 = sub_2CDFE0();
        v51 = sub_2CE680();

        v52 = &selRef_hasTwoOrMoreRooms;
        if (os_log_type_enabled(v50, v51))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v167[0] = v54;
          *v53 = 136315138;
          v55 = [v49 localizedDescription];
          v56 = sub_2CE270();
          v164 = v46;
          v57 = v56;
          v59 = v58;

          v165 = v57;
          v166 = v59;
          v52 = &selRef_hasTwoOrMoreRooms;
          v60 = sub_2CE3C0();
          v62 = sub_3F08(v60, v61, v167);

          *(v53 + 4) = v62;
          _os_log_impl(&dword_0, v50, v51, "AcousticIDFlow#successfulMatchDialogAndViewNonRF Error creating dialog %s, issuing error dialog", v53, 0xCu);
          sub_306C(v54);

          v164(v158, v32);
        }

        else
        {

          v46(v48, v32);
        }

        v112 = v139;
        v113 = v138;
        v114 = sub_2CC950();
        v115 = v156;
        (*(*(v114 - 8) + 56))(v156, 1, 1, v114);
        v116 = [v49 v52[130]];
        v117 = sub_2CE270();
        v119 = v118;

        sub_1612C4(v115, v117, v119, v113, v112);

        sub_30B8(v115, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      sub_14A58(v31, v164, &qword_34C6E8, &unk_2D0FF0);
      sub_14F938(v161, v137);
      v68 = v141;
      v69 = v140;
      v70 = v143;
      (*(v141 + 104))(v140, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v143);
      v71 = v144;
      v72 = v142;
      v73 = v146;
      (*(v144 + 104))(v142, enum case for AdditionalMetricsDescription.SourceFunction.successfulMatch(_:), v146);
      v74 = v147;
      v75 = v145;
      v76 = v148;
      (v147[13])(v145, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v148);
      v77 = sub_2CCAD0();
      v158 = v78;
      v159 = v77;
      (v74[1])(v75, v76);
      (*(v71 + 8))(v72, v73);
      (*(v68 + 8))(v69, v70);
      v148 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v156 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v147 = sub_35E0((Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v148);
      v79 = v152;
      v80 = v151;
      (*(v152 + 104))(v151, enum case for TypeOfIntent.acousticID(_:), v160);
      v81 = enum case for ActivityType.completed(_:);
      v82 = sub_2C9C20();
      v83 = *(v82 - 8);
      v84 = v153;
      (*(v83 + 104))(v153, v81, v82);
      (*(v83 + 56))(v84, 0, 1, v82);
      v85 = sub_2CA130();
      v86 = *(v85 - 8);
      v87 = v154;
      (*(v86 + 56))(v154, 1, 1, v85);
      v88 = enum case for SiriKitReliabilityCodes.success(_:);
      v89 = sub_2C98F0();
      v90 = *(v89 - 8);
      v91 = v155;
      (*(v90 + 104))(v155, v88, v89);
      (*(v90 + 56))(v91, 0, 1, v89);
      sub_2CB4C0();

      v92 = v91;
      v93 = v85;
      sub_30B8(v92, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v87, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v84, &qword_34CB88, &unk_2D0D90);
      (*(v79 + 8))(v80, v160);
      v94 = v149;
      sub_F3F4(v164, v149, &qword_34C6E8, &unk_2D0FF0);

      v95 = sub_2CA100();
      v96 = *(v86 + 8);
      v96(v94, v93);
      v97 = (v95 + 40);
      v98 = *(v95 + 16) + 1;
      v99 = v139;
      while (--v98)
      {
        v101 = *(v97 - 1);
        v100 = *v97;
        v97 += 2;
        v102 = HIBYTE(v100) & 0xF;
        if ((v100 & 0x2000000000000000) == 0)
        {
          v102 = v101 & 0xFFFFFFFFFFFFLL;
        }

        if (v102)
        {

          goto LABEL_22;
        }
      }

      v100 = 0;
LABEL_22:

      v103 = v150;
      sub_F3F4(v164, v150, &qword_34C6E8, &unk_2D0FF0);

      v104 = sub_2CA110();
      v96(v103, v93);
      v105 = (v104 + 40);
      v106 = *(v104 + 16) + 1;
      while (--v106)
      {
        v108 = *(v105 - 1);
        v107 = *v105;
        v105 += 2;
        v109 = HIBYTE(v107) & 0xF;
        if ((v107 & 0x2000000000000000) == 0)
        {
          v109 = v108 & 0xFFFFFFFFFFFFLL;
        }

        if (v109)
        {

          goto LABEL_29;
        }
      }

      v107 = 0;
LABEL_29:

      v110 = [objc_allocWithZone(SADialogText) init];
      if (v100)
      {
        v111 = sub_2CE260();
      }

      else
      {
        v111 = 0;
      }

      [v110 setText:v111];

      if (v107)
      {
        v120 = sub_2CE260();
      }

      else
      {
        v120 = 0;
      }

      [v110 setSpeakableTextOverride:v120];

      v121 = [objc_allocWithZone(SADialog) init];
      [v121 setCanUseServerTTS:1];
      [v121 setPrintedOnly:0];
      [v121 setSpokenOnly:1];
      v122 = v110;
      [v121 setCaption:v122];
      [v121 setContent:v122];

      v123 = v157;
      sub_F3F4(v164, v157, &qword_34C6E8, &unk_2D0FF0);

      sub_2CA0D0();
      v124 = sub_2CE260();

      v96(v123, v93);
      [v121 setDialogIdentifier:v124];

      v125 = swift_allocObject();
      *(v125 + 16) = _swiftEmptyArrayStorage;
      v126 = swift_allocObject();
      v127 = Strong;
      v128 = v161;
      v126[2] = Strong;
      v126[3] = v128;
      v126[4] = v121;
      v126[5] = v125;
      v129 = v138;
      v126[6] = v138;
      v126[7] = v99;
      if (*(v127 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) == 1)
      {
        v130 = swift_allocObject();
        *(v130 + 16) = sub_1695F8;
        *(v130 + 24) = v126;
        swift_allocObject();
        swift_weakInit();

        v131 = v121;

        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        sub_2CE4F0();
      }

      else
      {
        v132 = swift_allocObject();
        v132[2] = v121;
        v132[3] = 0;
        v132[4] = 0;
        v132[5] = v125;
        v132[6] = v127;
        v132[7] = v129;
        v132[8] = v99;
        swift_retain_n();
        swift_retain_n();
        v133 = v121;
        swift_retain_n();
        v134 = v133;

        sub_165924(v135, sub_16962C, v132);
      }

      sub_30B8(v137, &unk_353020, &unk_2D0970);
      sub_30B8(v164, &qword_34C6E8, &unk_2D0FF0);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v63 = sub_3ED0(v32, qword_35F6A8);
    (*(v33 + 16))(v40, v63, v32);
    v64 = sub_2CDFE0();
    v65 = sub_2CE680();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v64, v65, "AcousticIDFlow#successfulMatchDialogAndViewNonRF self deallocated prematurely", v66, 2u);
    }

    return (*(v33 + 8))(v40, v32);
  }

  return result;
}

uint64_t sub_15E968(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v56 = a5;
  v16 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v16 - 8);
  v58 = &v53 - v17;
  v59 = sub_2CE000();
  v18 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_352D88, &qword_2D5348);
  if (a3)
  {
    v54 = a8;
    v55 = a9;
    v56 = a4;
    v62[2] = a1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v20 = v62[1];
      v21 = v18;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v22 = v59;
      v23 = sub_3ED0(v59, qword_35F6A8);
      v24 = *(v18 + 16);
      v25 = v57;
      v24(v57, v23, v22);
      v26 = v20;
      v27 = sub_2CDFE0();
      v28 = sub_2CE680();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = v21;
        v31 = swift_slowAlloc();
        v62[0] = v31;
        *v29 = 136315138;
        v32 = v26;
        v33 = [v26 localizedDescription];
        v34 = sub_2CE270();
        v36 = v35;

        v60 = v34;
        v61 = v36;
        v37 = sub_2CE3C0();
        v39 = sub_3F08(v37, v38, v62);
        v26 = v32;

        *(v29 + 4) = v39;
        v40 = &selRef_hasTwoOrMoreRooms;
        _os_log_impl(&dword_0, v27, v28, "AcousticIDFlow#successfulMatchDialogAndViewNonRF Error grabbing session ID %s, issuing error dialog", v29, 0xCu);
        sub_306C(v31);

        (*(v30 + 8))(v25, v59);
        v41 = v55;
      }

      else
      {

        (*(v21 + 8))(v25, v22);
        v41 = v55;
        v40 = &selRef_hasTwoOrMoreRooms;
      }

      v45 = v54;
      v46 = sub_2CC950();
      v47 = v58;
      (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
      v48 = v26;
      v49 = [v26 v40[130]];
      v50 = sub_2CE270();
      v52 = v51;

      sub_1612C4(v47, v50, v52, v45, v41);

      sub_30B8(v47, &qword_352D78, &unk_2D5320);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    v42 = swift_allocObject();
    v42[2] = a6;
    v42[3] = a1;
    v42[4] = a2;
    v42[5] = a7;
    v42[6] = a4;
    v42[7] = a8;
    v42[8] = a9;
    sub_169774(a1, a2, 0);
    v43 = a6;

    sub_165924(v56, sub_16A3D8, v42);
  }

  return result;
}

uint64_t sub_15EE68(void *a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v32 = a8;
  v13 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_2CA910();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    [a1 setDialog:a2];
    v20 = a1;
    if (a4)
    {
      a4 = sub_2CE260();
    }

    [a1 setCorrespondingSessionID:{a4, v31, v32}];

    v21 = sub_2CE260();
    [a1 setViewId:v21];

    swift_beginAccess();
    sub_2CE3F0();
    if (*(&dword_10 + (*(a5 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a5 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_2CE430();
    }

    sub_2CE460();
    swift_endAccess();
  }

  v22 = [objc_allocWithZone(SAUIAddViews) init];
  swift_beginAccess();
  sub_334A0(0, &qword_34CD10, SAAceView_ptr);

  isa = sub_2CE400().super.isa;

  [v22 setViews:isa];

  v24 = sub_2CA000();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_2C9E30();
  sub_30B8(&v33, &qword_34CC80, &qword_2D1520);
  sub_30B8(v15, &unk_353020, &unk_2D0970);
  sub_35E0((a6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(a6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
  *(&v34 + 1) = v16;
  v35 = &protocol witness table for AceOutput;
  v25 = sub_F390(&v33);
  (*(v17 + 16))(v25, v19, v16);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v28 = v31;
  v29 = v32;
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v29;

  sub_2CA010();

  (*(v17 + 8))(v19, v16);

  return sub_306C(&v33);
}

uint64_t sub_15F2A8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, qword_35F6A8);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2CDFE0();
  v12 = sub_2CE690();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v35 = a2;
    v16 = v15;
    *&v39 = v15;
    *v14 = 136446210;
    v17 = sub_2CCCA0();
    v34 = a1;
    v19 = sub_3F08(v17, v18, &v39);
    a1 = v34;

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v11, v12, "AcousticIDFlow#successfulMatchDialogAndViewWithRF... %{public}s", v14, 0xCu);
    sub_306C(v16);
    a2 = v35;

    a3 = v36;
  }

  (*(v7 + 8))(v9, v6);
  v20 = sub_112C0(_swiftEmptyArrayStorage);
  v41 = v20;
  v21 = a1[5];
  if (v21)
  {
    v22 = v20;
    v23 = a1[4];
    v40 = &type metadata for String;
    *&v39 = v23;
    *(&v39 + 1) = v21;
    sub_E2DC(&v39, v38);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v22;
    sub_237690(v38, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v41 = v37;
  }

  else
  {
    sub_236110(0x656C746974, 0xE500000000000000, &v39);
    sub_30B8(&v39, &qword_34CEA0, &qword_2D0FC0);
  }

  v25 = a1[9];
  if (v25)
  {
    v26 = a1[8];
    v40 = &type metadata for String;
    *&v39 = v26;
    *(&v39 + 1) = v25;
    sub_E2DC(&v39, v38);

    v27 = v41;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v27;
    sub_237690(v38, 0x747369747261, 0xE600000000000000, v28);
    v29 = v37;
  }

  else
  {
    sub_236110(0x747369747261, 0xE600000000000000, &v39);
    sub_30B8(&v39, &qword_34CEA0, &qword_2D0FC0);
    v29 = v41;
  }

  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = a1;
  *(v31 + 32) = a2;
  *(v31 + 40) = a3;

  sub_F39DC(v29, sub_169508, v31);
}

uint64_t sub_15F6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v134 = a4;
  v135 = a5;
  v128 = a3;
  v131 = a1;
  v5 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v5 - 8);
  v127 = &v112 - v6;
  v7 = sub_2CE000();
  v136 = *(v7 - 8);
  v137 = v7;
  v8 = __chkstk_darwin(v7);
  v129 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v130 = &v112 - v10;
  v11 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v11 - 8);
  v125 = &v112 - v12;
  v13 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v13 - 8);
  v124 = &v112 - v14;
  v15 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v15 - 8);
  v123 = &v112 - v16;
  v132 = sub_2CB970();
  v122 = *(v132 - 1);
  __chkstk_darwin(v132);
  v121 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2CCB20();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CCB30();
  v115 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2CCAC0();
  v114 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v119 = *(v118 - 8);
  v26 = *(v119 + 64);
  v27 = __chkstk_darwin(v118);
  v120 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v126 = &v112 - v29;
  v30 = __chkstk_darwin(v28);
  v133 = &v112 - v31;
  __chkstk_darwin(v30);
  v33 = &v112 - v32;
  v34 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v34);
  v36 = (&v112 - v35);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v138 = Strong;
    sub_F3F4(v131, v36, &unk_3519A0, &qword_2D0980);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v140[2] = *v36;
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v38 = v140[1];
        v39 = v136;
        v40 = v137;
        v41 = v130;
        if (qword_34BF60 != -1)
        {
          swift_once();
        }

        v42 = sub_3ED0(v40, qword_35F6A8);
        (*(v39 + 16))(v41, v42, v40);
        v43 = v38;
        v44 = sub_2CDFE0();
        v45 = sub_2CE680();

        v46 = &selRef_hasTwoOrMoreRooms;
        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v140[0] = swift_slowAlloc();
          *v47 = 136315394;
          v48 = [v43 localizedDescription];
          v49 = sub_2CE270();
          v51 = v50;

          v139[0] = v49;
          v139[1] = v51;
          v52 = sub_2CE3C0();
          v54 = sub_3F08(v52, v53, v140);

          *(v47 + 4) = v54;
          *(v47 + 12) = 2082;
          v55 = sub_2CCCA0();
          v57 = sub_3F08(v55, v56, v140);
          v46 = &selRef_hasTwoOrMoreRooms;

          *(v47 + 14) = v57;
          _os_log_impl(&dword_0, v44, v45, "AcousticIDFlow#successfulMatchDialogAndViewWithRF Error creating dialog %s %{public}s", v47, 0x16u);
          swift_arrayDestroy();

          (*(v39 + 8))(v130, v40);
        }

        else
        {

          (*(v39 + 8))(v41, v40);
        }

        v106 = sub_2CC950();
        v107 = v127;
        (*(*(v106 - 8) + 56))(v127, 1, 1, v106);
        v108 = [v43 v46[130]];
        v109 = sub_2CE270();
        v111 = v110;

        sub_1612C4(v107, v109, v111, v134, v135);

        sub_30B8(v107, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      v113 = v33;
      sub_14A58(v36, v33, &qword_34C6E8, &unk_2D0FF0);
      v70 = v114;
      (*(v114 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v23);
      v71 = v115;
      (*(v115 + 104))(v22, enum case for AdditionalMetricsDescription.SourceFunction.successfulMatch(_:), v20);
      v72 = v116;
      v73 = v117;
      (*(v116 + 104))(v19, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v117);
      v74 = sub_2CCAD0();
      v130 = v75;
      v131 = v74;
      (*(v72 + 8))(v19, v73);
      (*(v71 + 8))(v22, v20);
      (*(v70 + 8))(v25, v23);
      v76 = *(v138 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v127 = *(v138 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v129 = v76;
      sub_35E0((v138 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v127);
      v77 = v122;
      v78 = v121;
      (*(v122 + 104))(v121, enum case for TypeOfIntent.acousticID(_:), v132);
      v79 = enum case for ActivityType.completed(_:);
      v80 = sub_2C9C20();
      v81 = *(v80 - 8);
      v82 = v123;
      (*(v81 + 104))(v123, v79, v80);
      (*(v81 + 56))(v82, 0, 1, v80);
      v83 = sub_2CA130();
      v84 = *(v83 - 8);
      v136 = v83;
      v137 = v84;
      v85 = v124;
      (*(v84 + 56))(v124, 1, 1, v83);
      v86 = enum case for SiriKitReliabilityCodes.success(_:);
      v87 = sub_2C98F0();
      v88 = *(v87 - 8);
      v89 = v125;
      (*(v88 + 104))(v125, v86, v87);
      (*(v88 + 56))(v89, 0, 1, v87);
      sub_2CB4C0();

      sub_30B8(v89, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v85, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v82, &qword_34CB88, &unk_2D0D90);
      (*(v77 + 8))(v78, v132);
      v90 = v133;
      sub_F3F4(v113, v133, &qword_34C6E8, &unk_2D0FF0);
      v91 = v118;
      v132 = *(v90 + *(v118 + 48));
      v92 = v132;
      v93 = v126;
      (*(v137 + 16))(v126, v90, v136);
      *(v93 + *(v91 + 48)) = v92;
      v94 = swift_allocObject();
      v95 = v138;
      swift_weakInit();
      v96 = v120;
      sub_F3F4(v93, v120, &qword_34C6E8, &unk_2D0FF0);
      v97 = (*(v119 + 80) + 24) & ~*(v119 + 80);
      v98 = swift_allocObject();
      *(v98 + 16) = v94;
      sub_14A58(v96, v98 + v97, &qword_34C6E8, &unk_2D0FF0);
      v99 = (v98 + ((v26 + v97 + 7) & 0xFFFFFFFFFFFFFFF8));
      v100 = v135;
      *v99 = v134;
      v99[1] = v100;
      v101 = swift_allocObject();
      v101[2] = sub_169514;
      v101[3] = v98;
      v101[4] = v128;
      v102 = (v95 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider);
      v103 = *(v95 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider + 24);
      v134 = v102[4];
      sub_35E0(v102, v103);
      v104 = swift_allocObject();
      *(v104 + 16) = sub_1695C4;
      *(v104 + 24) = v101;
      v105 = v132;

      sub_2CC750();

      sub_30B8(v93, &qword_34C6E8, &unk_2D0FF0);
      sub_30B8(v113, &qword_34C6E8, &unk_2D0FF0);

      return (*(v137 + 8))(v133, v136);
    }
  }

  else
  {
    v58 = v129;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v59 = v137;
    v60 = sub_3ED0(v137, qword_35F6A8);
    v61 = v136;
    (*(v136 + 16))(v58, v60, v59);
    v62 = sub_2CDFE0();
    v63 = sub_2CE680();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v139[0] = v65;
      *v64 = 136446210;
      v66 = sub_2CCCA0();
      v68 = sub_3F08(v66, v67, v139);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_0, v62, v63, "AcousticIDFlow#successfulMatchDialogAndViewWithRF self deallocated prematurely  %{public}s", v64, 0xCu);
      sub_306C(v65);
    }

    return (*(v61 + 8))(v58, v59);
  }

  return result;
}

uint64_t sub_1606B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = a4;
  v87 = a5;
  v82 = a3;
  v80 = a1;
  v5 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v5 - 8);
  v88 = &v76 - v6;
  v7 = sub_2CE000();
  v90 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v76 - v10;
  v81 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = __chkstk_darwin(v81);
  v85 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v76 - v14;
  __chkstk_darwin(v13);
  v17 = &v76 - v16;
  v18 = type metadata accessor for AcousticIDFlow.State(0);
  __chkstk_darwin(v18);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2CD1E0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CD330();
  v83 = *(v25 - 8);
  v84 = v25;
  __chkstk_darwin(v25);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v79 = v7;
    v30 = sub_2CD370();
    (*(*(v30 - 8) + 16))(v24, v80, v30);
    (*(v22 + 104))(v24, enum case for ShazamSnippetRole.success(_:), v21);
    sub_2CD320();
    swift_storeEnumTagMultiPayload();
    v31 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
    swift_beginAccess();
    v80 = v29;
    sub_1694A4(v20, v29 + v31);
    swift_endAccess();
    sub_F3F4(v82, v17, &qword_34C6E8, &unk_2D0FF0);
    v32 = v81;
    v33 = *&v17[*(v81 + 48)];
    v34 = sub_2CA130();
    v77 = *(v34 - 8);
    v35 = *(v77 + 16);
    v82 = v34;
    v35(v15, v17);
    *&v15[*(v32 + 48)] = v33;
    v36 = qword_34BF60;
    v76 = v33;
    v37 = v17;
    if (v36 != -1)
    {
      swift_once();
    }

    v38 = v79;
    v39 = sub_3ED0(v79, qword_35F6A8);
    v40 = v89;
    v41 = v90;
    (*(v90 + 16))(v89, v39, v38);
    v42 = sub_2CDFE0();
    v43 = sub_2CE690();
    v44 = os_log_type_enabled(v42, v43);
    v78 = v37;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v91[0] = v46;
      *v45 = 136446210;
      v47 = sub_2CCCA0();
      v49 = v32;
      v50 = v27;
      v51 = v15;
      v52 = sub_3F08(v47, v48, v91);

      *(v45 + 4) = v52;
      v15 = v51;
      v27 = v50;
      v32 = v49;
      _os_log_impl(&dword_0, v42, v43, "AcousticIDFlow#publishShazam Reached Logic %{public}s", v45, 0xCu);
      sub_306C(v46);

      (*(v90 + 8))(v89, v38);
    }

    else
    {

      (*(v41 + 8))(v40, v38);
    }

    v65 = v85;
    sub_F3F4(v15, v85, &qword_34C6E8, &unk_2D0FF0);
    v66 = *(v65 + *(v32 + 48));
    v67 = sub_2CA000();
    v68 = v15;
    v69 = v88;
    (*(*(v67 - 8) + 56))(v88, 1, 1, v67);
    v70 = swift_allocObject();
    swift_weakInit();
    v71 = swift_allocObject();
    v72 = v86;
    v73 = v87;
    v71[2] = v70;
    v71[3] = v72;
    v71[4] = v73;

    sub_157198(v65, v66, v27, v69, sub_1695D0, v71);

    sub_30B8(v69, &unk_353020, &unk_2D0970);
    sub_30B8(v68, &qword_34C6E8, &unk_2D0FF0);

    v74 = *(v77 + 8);
    v75 = v82;
    v74(v65, v82);

    (*(v83 + 8))(v27, v84);
    return (v74)(v78, v75);
  }

  else
  {
    v53 = v79;
    v54 = v7;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v55 = sub_3ED0(v7, qword_35F6A8);
    v56 = v90;
    (*(v90 + 16))(v53, v55, v7);
    v57 = sub_2CDFE0();
    v58 = sub_2CE680();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v91[0] = v60;
      *v59 = 136446210;
      v61 = sub_2CCCA0();
      v63 = sub_3F08(v61, v62, v91);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_0, v57, v58, "AcousticIDFlow#publishSuccessfulResponse self deallocated prematurely  %{public}s", v59, 0xCu);
      sub_306C(v60);
    }

    return (*(v56 + 8))(v53, v54);
  }
}

uint64_t sub_160F98(int a1, void (*a2)(char *), uint64_t a3, void *a4)
{
  v31 = a3;
  v32 = a2;
  v30 = a1;
  v5 = sub_20410(&unk_3519B0, &qword_2D1230);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v27 - v10;
  v27[1] = v27 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v27 - v13;
  v27[4] = v27 - v13;
  __chkstk_darwin(v12);
  v16 = v27 - v15;
  v27[6] = v27 - v15;
  v17 = sub_2CD370();
  v28 = *(v17 - 8);
  v29 = v17;
  __chkstk_darwin(v17);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a4[2];
  v21 = a4[3];
  v22 = a4[5];
  v27[11] = a4[4];
  v27[12] = v20;
  v27[2] = v21;
  v27[3] = v22;
  v23 = a4[6];
  v27[9] = a4[8];
  v27[10] = v23;
  v24 = a4[14];
  v25 = a4[11];
  v27[7] = a4[10];
  v27[8] = v24;
  v27[5] = v25;
  sub_F3F4(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_appleMusicURL, v16, &unk_3519B0, &qword_2D1230);
  sub_F3F4(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_webURL, v14, &unk_3519B0, &qword_2D1230);
  sub_F3F4(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_artworkURL, v11, &unk_3519B0, &qword_2D1230);
  sub_F3F4(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_videoURL, v8, &unk_3519B0, &qword_2D1230);

  sub_2CD360();
  v32(v19);
  return (*(v28 + 8))(v19, v29);
}

uint64_t sub_1612C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a2;
  v64 = a3;
  v65 = a5;
  v63 = a4;
  v6 = sub_2CB850();
  v57 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v12 = sub_20410(&qword_352D78, &unk_2D5320);
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v59 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_2CC950();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v56 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  v60 = a1;
  v23 = v22;
  v25 = v24;
  sub_F3F4(a1, v16, &qword_352D78, &unk_2D5320);
  if ((*(v23 + 48))(v16, 1, v25) != 1)
  {
    v54 = v23;
    v52 = *(v23 + 32);
    v53 = v23 + 32;
    v52(v21, v16, v25);
    v55 = v21;
    sub_2CC940();
    v34 = v57;
    (*(v57 + 104))(v9, enum case for PlaybackCode.acousticIDPrivDiscAckNeeded(_:), v6);
    sub_169F98(&qword_352D80, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v66[0] == v68)
    {
      v35 = *(v34 + 8);
      v35(v9, v6);
      v35(v11, v6);
    }

    else
    {
      v36 = sub_2CEEA0();
      v51 = v25;
      v37 = *(v34 + 8);
      v37(v9, v6);
      v37(v11, v6);
      v25 = v51;

      if ((v36 & 1) == 0)
      {
        (*(v54 + 8))(v55, v25);
        goto LABEL_3;
      }
    }

    v60 = *(v61 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService);
    v59 = sub_112C0(_swiftEmptyArrayStorage);
    sub_2CCFB0();
    v38 = sub_2CCF80();
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    v39 = swift_allocObject();
    swift_weakInit();
    v41 = v54;
    v40 = v55;
    v42 = v56;
    (*(v54 + 16))(v56, v55, v25);
    v43 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v44 = (v18 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    v46 = v62;
    *(v45 + 16) = v39;
    *(v45 + 24) = v46;
    *(v45 + 32) = v64;
    v52((v45 + v43), v42, v25);
    v47 = (v45 + v44);
    v48 = v65;
    *v47 = v63;
    v47[1] = v48;

    sub_37600(v59, v38, v66, sub_1693FC, v45);

    sub_30B8(v66, &qword_34C6C0, &qword_2D0710);
    (*(v41 + 8))(v40, v25);
  }

  sub_30B8(v16, &qword_352D78, &unk_2D5320);
LABEL_3:
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v59;
  sub_F3F4(v60, v59, &qword_352D78, &unk_2D5320);
  v28 = (*(v58 + 80) + 40) & ~*(v58 + 80);
  v29 = (v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v62;
  v30[2] = v26;
  v30[3] = v31;
  v30[4] = v64;
  sub_14A58(v27, v30 + v28, &qword_352D78, &unk_2D5320);
  v32 = (v30 + v29);
  v33 = v65;
  *v32 = v63;
  v32[1] = v33;

  sub_F4708(sub_169348, v30);
}

uint64_t sub_161994(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v161 = a7;
  v162 = a6;
  v135 = a5;
  v142 = a4;
  v136 = a3;
  v147 = a1;
  v7 = sub_2C9EC0();
  v163 = *(v7 - 8);
  v164 = v7;
  __chkstk_darwin(v7);
  v160 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AcousticIDFlow.State(0);
  __chkstk_darwin(v9);
  v154 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v11 - 8);
  v159 = &v132 - v12;
  v13 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v13 - 8);
  v157 = &v132 - v14;
  v15 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v15 - 8);
  v156 = &v132 - v16;
  v17 = sub_2CB970();
  v158 = *(v17 - 8);
  __chkstk_darwin(v17);
  v155 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_2CC950();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v20 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_2CCB30();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v149 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_2CCAC0();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v148 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v23 = __chkstk_darwin(v143);
  v144 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v165 = &v132 - v25;
  v26 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v26);
  v28 = (&v132 - v27);
  v167 = sub_2CE000();
  v29 = *(v167 - 8);
  v30 = __chkstk_darwin(v167);
  v32 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v145 = &v132 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v132 - v36;
  __chkstk_darwin(v35);
  v39 = &v132 - v38;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v166 = Strong;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v41 = sub_3ED0(v167, qword_35F6A8);
    v42 = *(v29 + 16);
    v138 = v41;
    v140 = v29 + 16;
    v139 = v42;
    (v42)(v37);
    v43 = sub_2CDFE0();
    v44 = sub_2CE690();
    v45 = os_log_type_enabled(v43, v44);
    v146 = v9;
    if (v45)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v43, v44, "AcousticIDFlow#errorDialog (privacy disclosure acknowledgement needed)", v46, 2u);
    }

    v47 = *(v29 + 8);
    v48 = v167;
    v141 = v29 + 8;
    v47(v37, v167);
    sub_F3F4(v147, v28, &unk_3519A0, &qword_2D0980);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v137 = v17;
    if (EnumCaseMultiPayload == 1)
    {
      v50 = *v28;
      v139(v32, v138, v48);
      swift_errorRetain();
      v51 = sub_2CDFE0();
      v52 = sub_2CE680();

      v53 = os_log_type_enabled(v51, v52);
      v165 = v50;
      if (v53)
      {
        v54 = v47;
        v55 = v17;
        v56 = swift_slowAlloc();
        v57 = v48;
        v58 = swift_slowAlloc();
        v168 = v58;
        *v56 = 136315138;
        swift_getErrorValue();
        v169 = sub_2CEEF0();
        v170 = v59;
        v60 = sub_2CE3C0();
        v62 = sub_3F08(v60, v61, &v168);

        *(v56 + 4) = v62;
        _os_log_impl(&dword_0, v51, v52, "AcousticIDFlow#errorDialog Could not properly create dialog %s, silently failing (privacy disclosure acknowledgement needed)", v56, 0xCu);
        sub_306C(v58);

        v17 = v55;

        v54(v32, v57);
      }

      else
      {

        v47(v32, v48);
      }

      v77 = v148;
      v78 = v154;
      swift_storeEnumTagMultiPayload();
      v79 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      v80 = v166;
      swift_beginAccess();
      sub_1694A4(v78, v80 + v79);
      swift_endAccess();
      v81 = (v80 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
      v82 = v80;
      v83 = *(v80 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v84 = *(v80 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0(v81, v83);
      (*(v84 + 24))(v83, v84);
      v85 = v150;
      v86 = v151;
      (*(v150 + 104))(v77, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v151);
      v87 = v152;
      v88 = v149;
      v89 = v153;
      (*(v152 + 104))(v149, enum case for AdditionalMetricsDescription.SourceFunction.pdanDlg(_:), v153);
      swift_getErrorValue();
      sub_2CEEF0();
      v167 = sub_2CCAE0();
      v154 = v90;

      (*(v87 + 8))(v88, v89);
      (*(v85 + 8))(v77, v86);
      v91 = *(v82 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v153 = *(v82 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      sub_35E0((v82 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v91);
      v92 = v158;
      v93 = v155;
      (*(v158 + 104))(v155, enum case for TypeOfIntent.acousticID(_:), v17);
      v94 = enum case for ActivityType.failed(_:);
      v95 = sub_2C9C20();
      v96 = *(v95 - 8);
      v97 = v156;
      (*(v96 + 104))(v156, v94, v95);
      (*(v96 + 56))(v97, 0, 1, v95);
      v98 = sub_2CA130();
      v99 = v157;
      (*(*(v98 - 8) + 56))(v157, 1, 1, v98);
      v100 = enum case for SiriKitReliabilityCodes.renderingError(_:);
      v101 = sub_2C98F0();
      v102 = *(v101 - 8);
      v103 = v159;
      (*(v102 + 104))(v159, v100, v101);
      (*(v102 + 56))(v103, 0, 1, v101);
      sub_2CB4C0();

      sub_30B8(v103, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v99, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v97, &qword_34CB88, &unk_2D0D90);
      (*(v92 + 8))(v93, v137);
      v104 = v160;
      sub_2C9E70();
      v162(v104);

      return (*(v163 + 8))(v104, v164);
    }

    else
    {
      v147 = v47;
      sub_14A58(v28, v165, &qword_34C6E8, &unk_2D0FF0);
      v69 = v148;
      v70 = v150;
      v71 = v151;
      if (v142)
      {
        (*(v150 + 104))(v148, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v151);
        v72 = v152;
        v73 = v149;
        v74 = v153;
        (*(v152 + 104))(v149, enum case for AdditionalMetricsDescription.SourceFunction.pdanDlg(_:), v153);
        v136 = sub_2CCAE0();
        v142 = v75;
        v76 = &enum case for SiriKitReliabilityCodes.renderingError(_:);
      }

      else
      {
        (*(v150 + 104))(v148, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v151);
        v72 = v152;
        v73 = v149;
        v74 = v153;
        (*(v152 + 104))(v149, enum case for AdditionalMetricsDescription.SourceFunction.pdanDlg(_:), v153);
        (*(v133 + 16))(v20, v135, v134);
        sub_2CE2A0();
        v136 = sub_2CCAE0();
        v142 = v105;

        v76 = &enum case for SiriKitReliabilityCodes.genericError(_:);
      }

      (*(v72 + 8))(v73, v74);
      (*(v70 + 8))(v69, v71);
      v152 = *(v166 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v153 = *(v166 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v151 = sub_35E0((v166 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v152);
      v106 = v158;
      v107 = v155;
      (*(v158 + 104))(v155, enum case for TypeOfIntent.acousticID(_:), v17);
      v108 = enum case for ActivityType.failed(_:);
      v109 = sub_2C9C20();
      v110 = *(v109 - 8);
      v111 = v156;
      (*(v110 + 104))(v156, v108, v109);
      (*(v110 + 56))(v111, 0, 1, v109);
      v112 = sub_2CA130();
      v113 = *(v112 - 8);
      v114 = v157;
      (*(v113 + 56))(v157, 1, 1, v112);
      v115 = *v76;
      v116 = sub_2C98F0();
      v117 = *(v116 - 8);
      v118 = v159;
      (*(v117 + 104))(v159, v115, v116);
      (*(v117 + 56))(v118, 0, 1, v116);
      sub_2CB4C0();

      sub_30B8(v118, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v114, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v111, &qword_34CB88, &unk_2D0D90);
      (*(v106 + 8))(v107, v137);
      v119 = v144;
      sub_F3F4(v165, v144, &qword_34C6E8, &unk_2D0FF0);
      v120 = *(v119 + *(v143 + 48));
      sub_1645F8(v119, v120);

      (*(v113 + 8))(v119, v112);
      v121 = v145;
      v122 = v167;
      v139(v145, v138, v167);
      v123 = sub_2CDFE0();
      v124 = sub_2CE690();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&dword_0, v123, v124, "AcousticIDFlow#errorDialog Dialog successfully generated, responding and exiting (privacy disclosure acknowledgement needed)", v125, 2u);
      }

      v147(v121, v122);
      v126 = v154;
      swift_storeEnumTagMultiPayload();
      v127 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      v128 = v166;
      swift_beginAccess();
      sub_1694A4(v126, v128 + v127);
      swift_endAccess();
      v129 = *(v128 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v130 = *(v128 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0((v128 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v129);
      (*(v130 + 24))(v129, v130);
      v131 = v160;
      sub_2C9E70();
      v162(v131);

      (*(v163 + 8))(v131, v164);
      return sub_30B8(v165, &qword_34C6E8, &unk_2D0FF0);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v63 = v167;
    v64 = sub_3ED0(v167, qword_35F6A8);
    (*(v29 + 16))(v39, v64, v63);
    v65 = sub_2CDFE0();
    v66 = sub_2CE680();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_0, v65, v66, "AcousticIDFlow#errorDialog self deallocated prematurely (privacy disclosure acknowledgement needed)", v67, 2u);
    }

    return (*(v29 + 8))(v39, v63);
  }
}

uint64_t sub_162E88(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v160 = a7;
  v161 = a6;
  v135 = a5;
  v142 = a4;
  v136 = a3;
  v146 = a1;
  v7 = sub_2C9EC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v159 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for AcousticIDFlow.State(0);
  __chkstk_darwin(v153);
  v154 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v11 - 8);
  v158 = &v130 - v12;
  v13 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v13 - 8);
  v157 = &v130 - v14;
  v15 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v15 - 8);
  v156 = &v130 - v16;
  v164 = sub_2CB970();
  v17 = *(v164 - 8);
  __chkstk_darwin(v164);
  v155 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v134);
  v133 = &v130 - v19;
  v152 = sub_2CCB30();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v148 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_2CCAC0();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v147 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v22 = __chkstk_darwin(v143);
  v144 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v162 = &v130 - v24;
  v25 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v25);
  v27 = (&v130 - v26);
  v165 = sub_2CE000();
  v28 = *(v165 - 8);
  v29 = __chkstk_darwin(v165);
  v31 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v145 = &v130 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v130 - v35;
  __chkstk_darwin(v34);
  v38 = &v130 - v37;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v163 = Strong;
    v141 = v7;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v40 = v165;
    v41 = sub_3ED0(v165, qword_35F6A8);
    v42 = *(v28 + 16);
    v137 = v41;
    v139 = v28 + 16;
    v138 = v42;
    (v42)(v36);
    v43 = sub_2CDFE0();
    v44 = sub_2CE690();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "AcousticIDFlow#errorDialog", v45, 2u);
      v40 = v165;
    }

    v48 = *(v28 + 8);
    v46 = v28 + 8;
    v47 = v48;
    v48(v36, v40);
    sub_F3F4(v146, v27, &unk_3519A0, &qword_2D0980);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v140 = v8;
    if (EnumCaseMultiPayload == 1)
    {
      v50 = *v27;
      v138(v31, v137, v40);
      swift_errorRetain();
      v51 = sub_2CDFE0();
      v52 = sub_2CE680();

      v53 = os_log_type_enabled(v51, v52);
      v131 = v17;
      if (v53)
      {
        v54 = v40;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v146 = v47;
        v57 = v56;
        v166 = v56;
        *v55 = 136315138;
        swift_getErrorValue();
        v167 = sub_2CEEF0();
        v168 = v58;
        v59 = sub_2CE3C0();
        v61 = v50;
        v62 = sub_3F08(v59, v60, &v166);

        *(v55 + 4) = v62;
        v50 = v61;
        _os_log_impl(&dword_0, v51, v52, "AcousticIDFlow#errorDialog Could not properly create dialog %s, silently failing", v55, 0xCu);
        sub_306C(v57);

        v146(v31, v54);
      }

      else
      {

        v47(v31, v40);
      }

      v78 = v147;
      v165 = v50;
      v79 = v154;
      swift_storeEnumTagMultiPayload();
      v80 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      v81 = v163;
      swift_beginAccess();
      sub_1694A4(v79, v81 + v80);
      swift_endAccess();
      v82 = *(v81 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v83 = *(v81 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0((v81 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v82);
      (*(v83 + 24))(v82, v83);
      v84 = v149;
      v85 = v150;
      (*(v149 + 104))(v78, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v150);
      v86 = v151;
      v87 = v148;
      v88 = v152;
      (*(v151 + 104))(v148, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v152);
      swift_getErrorValue();
      sub_2CEEF0();
      v162 = sub_2CCAE0();
      v154 = v89;

      (*(v86 + 8))(v87, v88);
      (*(v84 + 8))(v78, v85);
      v90 = *(v81 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v153 = *(v81 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      sub_35E0((v81 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v90);
      v91 = v131;
      v92 = v155;
      (*(v131 + 104))(v155, enum case for TypeOfIntent.acousticID(_:), v164);
      v93 = enum case for ActivityType.failed(_:);
      v94 = sub_2C9C20();
      v95 = *(v94 - 8);
      v96 = v156;
      (*(v95 + 104))(v156, v93, v94);
      (*(v95 + 56))(v96, 0, 1, v94);
      v97 = sub_2CA130();
      v98 = v157;
      (*(*(v97 - 8) + 56))(v157, 1, 1, v97);
      v99 = enum case for SiriKitReliabilityCodes.renderingError(_:);
      v100 = sub_2C98F0();
      v101 = *(v100 - 8);
      v102 = v158;
      (*(v101 + 104))(v158, v99, v100);
      (*(v101 + 56))(v102, 0, 1, v100);
      sub_2CB4C0();

      sub_30B8(v102, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v98, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v96, &qword_34CB88, &unk_2D0D90);
      (*(v91 + 8))(v92, v164);
      v103 = v159;
      sub_2C9E70();
      v161(v103);

      return (*(v140 + 8))(v103, v141);
    }

    else
    {
      v146 = v47;
      v69 = v17;
      sub_14A58(v27, v162, &qword_34C6E8, &unk_2D0FF0);
      v70 = v147;
      v132 = v46;
      v71 = v149;
      v72 = v150;
      if (v142)
      {
        (*(v149 + 104))(v147, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v150);
        v73 = v151;
        v74 = v148;
        v75 = v152;
        (*(v151 + 104))(v148, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v152);
        v136 = sub_2CCAE0();
        v142 = v76;
        v77 = &enum case for SiriKitReliabilityCodes.renderingError(_:);
      }

      else
      {
        (*(v149 + 104))(v147, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v150);
        v73 = v151;
        v74 = v148;
        v75 = v152;
        (*(v151 + 104))(v148, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v152);
        sub_F3F4(v135, v133, &qword_352D78, &unk_2D5320);
        sub_2CE2A0();
        v136 = sub_2CCAE0();
        v142 = v104;

        v77 = &enum case for SiriKitReliabilityCodes.genericError(_:);
      }

      (*(v73 + 8))(v74, v75);
      (*(v71 + 8))(v70, v72);
      v151 = *(v163 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v152 = *(v163 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v150 = sub_35E0((v163 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v151);
      v105 = v155;
      (*(v69 + 104))(v155, enum case for TypeOfIntent.acousticID(_:), v164);
      v106 = enum case for ActivityType.failed(_:);
      v107 = sub_2C9C20();
      v108 = *(v107 - 8);
      v109 = v156;
      (*(v108 + 104))(v156, v106, v107);
      (*(v108 + 56))(v109, 0, 1, v107);
      v110 = sub_2CA130();
      v111 = *(v110 - 8);
      v112 = v157;
      (*(v111 + 56))(v157, 1, 1, v110);
      v113 = *v77;
      v114 = sub_2C98F0();
      v115 = *(v114 - 8);
      v116 = v158;
      (*(v115 + 104))(v158, v113, v114);
      (*(v115 + 56))(v116, 0, 1, v114);
      sub_2CB4C0();

      sub_30B8(v116, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v112, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v109, &qword_34CB88, &unk_2D0D90);
      (*(v69 + 8))(v105, v164);
      v117 = v144;
      sub_F3F4(v162, v144, &qword_34C6E8, &unk_2D0FF0);
      v118 = *(v117 + *(v143 + 48));
      sub_1645F8(v117, v118);

      (*(v111 + 8))(v117, v110);
      v119 = v145;
      v120 = v165;
      v138(v145, v137, v165);
      v121 = sub_2CDFE0();
      v122 = sub_2CE690();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_0, v121, v122, "AcousticIDFlow#errorDialog Dialog successfully generated, responding and exiting", v123, 2u);
      }

      v146(v119, v120);
      v124 = v154;
      swift_storeEnumTagMultiPayload();
      v125 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      v126 = v163;
      swift_beginAccess();
      sub_1694A4(v124, v126 + v125);
      swift_endAccess();
      v127 = *(v126 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v128 = *(v126 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0((v126 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v127);
      (*(v128 + 24))(v127, v128);
      v129 = v159;
      sub_2C9E70();
      v161(v129);

      (*(v140 + 8))(v129, v141);
      return sub_30B8(v162, &qword_34C6E8, &unk_2D0FF0);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v63 = v165;
    v64 = sub_3ED0(v165, qword_35F6A8);
    (*(v28 + 16))(v38, v64, v63);
    v65 = sub_2CDFE0();
    v66 = sub_2CE680();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_0, v65, v66, "AcousticIDFlow#errorDialog self deallocated prematurely", v67, 2u);
    }

    return (*(v28 + 8))(v38, v63);
  }
}

uint64_t sub_164330(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_164350, 0, 0);
}

uint64_t sub_164350()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_EEAC(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager, (v0 + 2));

    v2 = v0[5];
    v3 = v0[6];
    sub_35E0(v0 + 2, v2);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_164488;

    return dispatch thunk of ShazamSessionManaging.sessionIDString()(v2, v3);
  }

  else
  {
    v5 = v0[10];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_164488(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;

  return _swift_task_switch(sub_164588, 0, 0);
}

uint64_t sub_164588()
{
  sub_306C((v0 + 16));
  **(v0 + 80) = *(v0 + 104);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1645F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v38 = sub_2CE000();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = sub_2CA130();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  v37 = v8;
  *&v13[*(v8 + 48)] = a2;
  sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 24));
  v16 = a2;
  if (sub_2CC4B0())
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v34 = v15;
    v35 = v14;
    v17 = v38;
    v18 = sub_3ED0(v38, qword_35F6A8);
    v19 = v36;
    (*(v36 + 16))(v7, v18, v17);
    v20 = sub_2CDFE0();
    v21 = sub_2CE690();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136446210;
      v24 = sub_2CCCA0();
      v33 = v3;
      v26 = sub_3F08(v24, v25, &v39);
      v3 = v33;

      *(v22 + 4) = v26;
      _os_log_impl(&dword_0, v20, v21, "AcousticIDFlow#publishCancelOutputWithRF... %{public}s", v22, 0xCu);
      sub_306C(v23);

      (*(v19 + 8))(v7, v38);
    }

    else
    {

      (*(v19 + 8))(v7, v17);
    }

    v29 = sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider + 24));
    sub_F3F4(v13, v11, &qword_34C6E8, &unk_2D0FF0);
    v30 = *&v11[*(v37 + 48)];
    v31 = swift_allocObject();
    swift_weakInit();
    sub_1C4EF8(v11, v30, *v29, v31);

    sub_30B8(v13, &qword_34C6E8, &unk_2D0FF0);

    return (*(v34 + 8))(v11, v35);
  }

  else
  {
    v27 = sub_2C9BE0();
    sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync + 24));
    sub_2CA3E0();

    return sub_30B8(v13, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_164A58(uint64_t a1, uint64_t a2)
{
  v90 = a1;
  v98 = sub_2CE000();
  v97 = *(v98 - 8);
  v2 = __chkstk_darwin(v98);
  v4 = &v85[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v88 = &v85[-v5];
  v6 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v6 - 8);
  v96 = &v85[-v7];
  v8 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v8 - 8);
  v94 = &v85[-v9];
  v10 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v10 - 8);
  v93 = &v85[-v11];
  v99 = sub_2CB970();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v92 = &v85[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2CCB20();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v85[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = sub_2CCB30();
  v17 = *(v91 - 8);
  __chkstk_darwin(v91);
  v19 = &v85[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_2CCAC0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v85[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_F3F4(v90, v102, qword_34C798, &qword_2D0DA0);
    v89 = v25;
    if (v103)
    {
      v87 = v20;
      v90 = *&v102[0];
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v26 = v98;
      v27 = sub_3ED0(v98, qword_35F6A8);
      v28 = v97;
      v29 = v88;
      (*(v97 + 16))(v88, v27, v26);
      swift_errorRetain();
      v30 = sub_2CDFE0();
      v31 = sub_2CE680();

      v86 = v31;
      v32 = v31;
      v33 = v30;
      if (os_log_type_enabled(v30, v32))
      {
        v34 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *v34 = 136315394;
        swift_getErrorValue();
        v100[0] = sub_2CEEF0();
        v100[1] = v35;
        v36 = sub_2CE3C0();
        v38 = sub_3F08(v36, v37, &v101);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2082;
        v39 = sub_2CCCA0();
        v41 = sub_3F08(v39, v40, &v101);

        *(v34 + 14) = v41;
        _os_log_impl(&dword_0, v33, v86, "AcousticIDFlow#publishCancelOutput failed to create output %s  %{public}s", v34, 0x16u);
        swift_arrayDestroy();

        (*(v28 + 8))(v88, v98);
      }

      else
      {

        (*(v28 + 8))(v29, v26);
      }

      v69 = v87;
      (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v87);
      v70 = v91;
      (*(v17 + 104))(v19, enum case for AdditionalMetricsDescription.SourceFunction.pubCnclOutput(_:), v91);
      swift_getErrorValue();
      sub_2CEEF0();
      v98 = sub_2CCAE0();
      v97 = v71;

      (*(v17 + 8))(v19, v70);
      (*(v21 + 8))(v23, v69);
      v72 = *(v89 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v91 = *(v89 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      sub_35E0((v89 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v72);
      v73 = v95;
      v74 = v92;
      (*(v95 + 104))(v92, enum case for TypeOfIntent.acousticID(_:), v99);
      v75 = enum case for ActivityType.failed(_:);
      v76 = sub_2C9C20();
      v77 = *(v76 - 8);
      v78 = v93;
      (*(v77 + 104))(v93, v75, v76);
      (*(v77 + 56))(v78, 0, 1, v76);
      v79 = sub_2CA130();
      v80 = v94;
      (*(*(v79 - 8) + 56))(v94, 1, 1, v79);
      v81 = enum case for SiriKitReliabilityCodes.renderingError(_:);
      v82 = sub_2C98F0();
      v83 = *(v82 - 8);
      v84 = v96;
      (*(v83 + 104))(v96, v81, v82);
      (*(v83 + 56))(v84, 0, 1, v82);
      sub_2CB4C0();

      sub_30B8(v84, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v80, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v78, &qword_34CB88, &unk_2D0D90);
      return (*(v73 + 8))(v74, v99);
    }

    else
    {
      sub_F338(v102, v100);
      (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v20);
      v53 = v91;
      (*(v17 + 104))(v19, enum case for AdditionalMetricsDescription.SourceFunction.pubCnclOutput(_:), v91);
      (*(v14 + 104))(v16, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v13);
      v98 = sub_2CCAD0();
      v97 = v54;
      (*(v14 + 8))(v16, v13);
      (*(v17 + 8))(v19, v53);
      (*(v21 + 8))(v23, v20);
      v55 = (v25 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider);
      v56 = *(v25 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v91 = v55[4];
      sub_35E0(v55, v56);
      v57 = v95;
      v58 = v92;
      (*(v95 + 104))(v92, enum case for TypeOfIntent.acousticID(_:), v99);
      v59 = enum case for ActivityType.completed(_:);
      v60 = sub_2C9C20();
      v61 = *(v60 - 8);
      v62 = v93;
      (*(v61 + 104))(v93, v59, v60);
      (*(v61 + 56))(v62, 0, 1, v60);
      v63 = sub_2CA130();
      v64 = v94;
      (*(*(v63 - 8) + 56))(v94, 1, 1, v63);
      v65 = enum case for SiriKitReliabilityCodes.success(_:);
      v66 = sub_2C98F0();
      v67 = *(v66 - 8);
      v68 = v96;
      (*(v67 + 104))(v96, v65, v66);
      (*(v67 + 56))(v68, 0, 1, v66);
      sub_2CB4C0();

      sub_30B8(v68, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v64, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v62, &qword_34CB88, &unk_2D0D90);
      (*(v57 + 8))(v58, v99);
      sub_35E0((v89 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(v89 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
      sub_2CA010();

      return sub_306C(v100);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v42 = v98;
    v43 = sub_3ED0(v98, qword_35F6A8);
    v44 = v97;
    (*(v97 + 16))(v4, v43, v42);
    v45 = sub_2CDFE0();
    v46 = sub_2CE680();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v102[0] = v48;
      *v47 = 136446210;
      v49 = sub_2CCCA0();
      v51 = sub_3F08(v49, v50, v102);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_0, v45, v46, "AcousticIDFlow#errorDialog self deallocated prematurely  %{public}s", v47, 0xCu);
      sub_306C(v48);
    }

    return (*(v44 + 8))(v4, v42);
  }
}

uint64_t sub_165924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, qword_35F6A8);
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "AcousticIDFlow#successfulMatchSnippet executing", v15, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  sub_35E0((v4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider), *(v4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1674B4;
  *(v17 + 24) = v16;

  sub_2CC750();
}

uint64_t sub_165B88(int a1, void *a2, void (*a3)(id), uint64_t a4)
{
  v144 = a4;
  v145 = a3;
  LODWORD(v143) = a1;
  v136 = sub_2C8E80();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_352D38, &unk_2D52E0);
  __chkstk_darwin(v6 - 8);
  v133 = &v115 - v7;
  v139 = sub_2C9360();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v132);
  v131 = &v115 - v9;
  v10 = sub_2CE000();
  v153 = *(v10 - 8);
  v154 = v10;
  v11 = __chkstk_darwin(v10);
  v141 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v142 = &v115 - v14;
  __chkstk_darwin(v13);
  v140 = &v115 - v15;
  matched = type metadata accessor for ShazamSuccessfulMatchModel(0);
  v17 = __chkstk_darwin(matched);
  v19 = (&v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a2[2];
  v22 = a2[4];
  v21 = a2[5];
  v146 = a2[3];
  v147 = v22;
  *&v155 = v21;
  v23 = a2[7];
  v148 = a2[6];
  v149 = v23;
  v25 = a2[8];
  v24 = a2[9];
  v26 = a2[15];
  v150 = a2[14];
  v151 = v26;
  v27 = a2[10];
  v152 = a2[11];
  v28 = *(v17 + 40);
  v124 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_appleMusicURL;
  sub_F3F4(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_appleMusicURL, v19 + v28, &unk_3519B0, &qword_2D1230);
  v29 = matched[11];
  v125 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_webURL;
  sub_F3F4(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_webURL, v19 + v29, &unk_3519B0, &qword_2D1230);
  v30 = matched[12];
  v126 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_artworkURL;
  sub_F3F4(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_artworkURL, v19 + v30, &unk_3519B0, &qword_2D1230);
  v31 = matched[13];
  v127 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_videoURL;
  sub_F3F4(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_videoURL, v19 + v31, &unk_3519B0, &qword_2D1230);
  v32 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_explicitContent);
  v33 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc);
  v34 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc + 8);
  v121 = v20;
  *v19 = v20;
  v35 = v147;
  v36 = v155;
  v19[1] = v146;
  v19[2] = v35;
  v37 = v148;
  v38 = v149;
  v19[3] = v36;
  v19[4] = v37;
  v19[5] = v38;
  v19[6] = v25;
  v122 = v25;
  v39 = v150;
  v40 = v151;
  v19[7] = v24;
  v19[8] = v39;
  v19[9] = v40;
  v19[10] = v27;
  v123 = v27;
  v19[11] = v152;
  v41 = matched[14];
  v128 = v32;
  *(v19 + v41) = v32;
  v42 = (v19 + matched[15]);
  v129 = v33;
  *v42 = v33;
  v42[1] = v34;
  *(v19 + matched[16]) = v143;
  sub_2C8B80();
  v143 = swift_allocObject();
  v130 = v34;

  sub_2C8B70();
  sub_169F98(&qword_352D40, type metadata accessor for ShazamSuccessfulMatchModel, &protocol conformance descriptor for ShazamSuccessfulMatchModel);
  v43 = sub_2C8B60();
  v117 = v24;
  v44 = v131;
  v45 = v140;
  v142 = v46;
  v143 = v43;
  sub_16A324(v19, type metadata accessor for ShazamSuccessfulMatchModel);

  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v47 = v154;
  v48 = sub_3ED0(v154, qword_35F6A8);
  v49 = v153;
  v50 = *(v153 + 16);
  v120 = v48;
  v119 = v153 + 16;
  v118 = v50;
  (v50)(v45);
  v51 = a2;

  v52 = sub_2CDFE0();
  v53 = sub_2CE690();

  v54 = os_log_type_enabled(v52, v53);
  v55 = v155;
  if (v54)
  {
    v56 = v44;
    v57 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v158 = v116;
    *v57 = 136317954;
    v156 = v121;
    v157 = v146;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    LODWORD(v146) = v53;
    v58 = sub_2CE2A0();
    v121 = v52;
    v60 = sub_3F08(v58, v59, &v158);

    *(v57 + 4) = v60;
    *(v57 + 12) = 2080;
    v156 = v147;
    v157 = v55;

    v61 = sub_2CE2A0();
    v63 = sub_3F08(v61, v62, &v158);

    *(v57 + 14) = v63;
    *(v57 + 22) = 2080;
    v156 = v148;
    v157 = v149;

    v64 = sub_2CE2A0();
    v66 = sub_3F08(v64, v65, &v158);

    *(v57 + 24) = v66;
    *(v57 + 32) = 2080;
    v156 = v122;
    v157 = v117;

    v67 = sub_2CE2A0();
    v69 = sub_3F08(v67, v68, &v158);

    *(v57 + 34) = v69;
    *(v57 + 42) = 2080;
    v156 = v150;
    v157 = v151;

    v70 = sub_2CE2A0();
    v72 = sub_3F08(v70, v71, &v158);

    *(v57 + 44) = v72;
    *(v57 + 52) = 2080;
    v156 = v123;
    v157 = v152;

    v73 = sub_2CE2A0();
    v75 = sub_3F08(v73, v74, &v158);

    *(v57 + 54) = v75;
    *(v57 + 62) = 2080;
    sub_F3F4(v51 + v124, v56, &unk_3519B0, &qword_2D1230);
    v76 = sub_2CE2A0();
    v78 = sub_3F08(v76, v77, &v158);

    *(v57 + 64) = v78;
    *(v57 + 72) = 2080;
    sub_F3F4(v51 + v125, v56, &unk_3519B0, &qword_2D1230);
    v79 = sub_2CE2A0();
    v81 = sub_3F08(v79, v80, &v158);

    *(v57 + 74) = v81;
    *(v57 + 82) = 2080;
    sub_F3F4(v51 + v126, v56, &unk_3519B0, &qword_2D1230);
    v82 = sub_2CE2A0();
    v84 = sub_3F08(v82, v83, &v158);

    *(v57 + 84) = v84;
    *(v57 + 92) = 2080;
    sub_F3F4(v51 + v127, v56, &unk_3519B0, &qword_2D1230);
    v85 = sub_2CE2A0();
    v87 = sub_3F08(v85, v86, &v158);

    *(v57 + 94) = v87;
    *(v57 + 102) = 2080;
    LOBYTE(v156) = v128;
    sub_20410(&qword_352D58, &qword_2D5308);
    v88 = sub_2CE2A0();
    v90 = sub_3F08(v88, v89, &v158);

    *(v57 + 104) = v90;
    *(v57 + 112) = 2080;
    v91 = v153;
    v47 = v154;
    v156 = v129;
    v157 = v130;

    v92 = sub_2CE2A0();
    v94 = sub_3F08(v92, v93, &v158);

    *(v57 + 114) = v94;
    v95 = v121;
    _os_log_impl(&dword_0, v121, v146, "AcousticIDFlow#successfulMatchSnippet Logs skID: %s title: %s subtitle: %s artist: %s genre: %s appleMusicID: %s appleMusicURL: %s webURL: %s artworkURL: %s videoURL: %s explicitContent: %s isrc: %s...", v57, 0x7Au);
    swift_arrayDestroy();

    v96 = *(v91 + 8);
    v96(v140, v47);
  }

  else
  {

    v96 = *(v49 + 8);
    v96(v45, v47);
  }

  v97 = v139;
  v98 = v138;
  sub_20410(&qword_352D48, &qword_2D52F0);
  v99 = swift_allocObject();
  v155 = xmmword_2D0090;
  *(v99 + 16) = xmmword_2D0090;
  sub_20410(&qword_352D50, &unk_2D52F8);
  v100 = swift_allocObject();
  *(v100 + 16) = v155;
  *(v100 + 56) = sub_2C9310();
  *(v100 + 64) = &protocol witness table for CustomCanvas;
  sub_F390((v100 + 32));
  sub_525D4(v143, v142);
  sub_2C9300();
  v101 = sub_2C92F0();
  (*(*(v101 - 8) + 56))(v133, 1, 1, v101);
  v102 = sub_2C9320();
  sub_1682F0(v102);

  *(v99 + 56) = sub_2C9340();
  *(v99 + 64) = &protocol witness table for Section;
  sub_F390((v99 + 32));
  sub_2C9350();
  v103 = v137;
  sub_2C9370();
  v104 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  v105 = v134;
  sub_2C8E70();
  sub_2C8E50();
  (*(v135 + 8))(v105, v136);
  v106 = sub_2CE260();

  [v104 setAceId:v106];

  v107 = v104;
  v108 = sub_2CE260();
  [v107 setViewId:v108];

  v109 = v141;
  v118(v141, v120, v47);
  v110 = sub_2CDFE0();
  v111 = sub_2CE690();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_0, v110, v111, "AcousticIDFlow#successfulMatchSnippet Successfully generate iOS view", v112, 2u);
    v109 = v141;
  }

  v96(v109, v47);
  v113 = v107;
  v145(v107);

  sub_52628(v143, v142);
  return (*(v98 + 8))(v103, v97);
}

uint64_t sub_166AE8(uint64_t a1, uint64_t (*a2)(BOOL), uint64_t a3)
{
  v44 = a2;
  v5 = sub_2CC860();
  v43 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = sub_2CC380();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v14, qword_35F6A8);
  (*(v15 + 16))(v17, v18, v14);
  v19 = *(v11 + 16);
  v41 = a1;
  v19(v13, a1, v10);
  v20 = v14;
  v21 = sub_2CDFE0();
  v22 = sub_2CE690();
  v40 = v10;
  v23 = v22;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    v39 = a3;
    v25 = v24;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v25 = 136315138;
    v37 = v20;
    sub_2CC370();
    v26 = sub_2CE2A0();
    v38 = v5;
    v28 = v27;
    (*(v11 + 8))(v13, v40);
    v29 = sub_3F08(v26, v28, &v46);
    v5 = v38;

    *(v25 + 4) = v29;
    _os_log_impl(&dword_0, v21, v23, "AcousticIDFlow#checkSubscriptionStatus subscription status: %s", v25, 0xCu);
    sub_306C(v36);

    (*(v15 + 8))(v17, v37);
  }

  else
  {

    (*(v11 + 8))(v13, v40);
    (*(v15 + 8))(v17, v20);
  }

  v30 = v9;
  sub_2CC370();
  v32 = v42;
  v31 = v43;
  (*(v43 + 104))(v42, enum case for MusicSubscriptionStatus.subscribed(_:), v5);
  sub_169F98(&qword_352D30, &type metadata accessor for MusicSubscriptionStatus, &protocol conformance descriptor for MusicSubscriptionStatus);
  sub_2CE3E0();
  sub_2CE3E0();
  v33 = *(v31 + 8);
  v33(v32, v5);
  v33(v30, v5);
  return v44(v46 == v45);
}

uint64_t sub_166F90()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input, &qword_34E480, &qword_2D2280);
  sub_16A324(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state, type metadata accessor for AcousticIDFlow.State);
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider));
  return v0;
}

uint64_t sub_16708C()
{
  sub_166F90();

  return swift_deallocClassInstance();
}

void sub_16710C(uint64_t a1)
{
  sub_1672D0(319, &qword_34E5A0, &type metadata accessor for Input);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AcousticIDFlow.State(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_167224(uint64_t a1)
{
  sub_1672D0(319, &qword_352CF8, &type metadata accessor for PlaybackCodeAndDescription);
  if (v1 <= 0x3F)
  {
    sub_1672D0(319, &unk_352D00, type metadata accessor for ShazamKitMatch);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1672D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_167324(uint64_t a1)
{
  v3 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = sub_2CA7B0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input;
  swift_beginAccess();
  sub_A4888(v5, v6 + v9);
  swift_endAccess();
  return 1;
}

uint64_t sub_167478(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AcousticIDFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_1674C8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2C9330();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_169F98(&qword_352D60, &type metadata accessor for _ProtoResponse.LevelOfDetail, &protocol conformance descriptor for _ProtoResponse.LevelOfDetail);
  v33 = a2;
  v11 = sub_2CE220();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_169F98(&qword_352D68, &type metadata accessor for _ProtoResponse.LevelOfDetail, &protocol conformance descriptor for _ProtoResponse.LevelOfDetail);
      v21 = sub_2CE250();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1677A8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1677A8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2C9330();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_167F94(v12);
    }

    else
    {
      sub_167C78(v12);
    }

    v13 = *v3;
    sub_169F98(&qword_352D60, &type metadata accessor for _ProtoResponse.LevelOfDetail, &protocol conformance descriptor for _ProtoResponse.LevelOfDetail);
    v14 = sub_2CE220();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_169F98(&qword_352D68, &type metadata accessor for _ProtoResponse.LevelOfDetail, &protocol conformance descriptor for _ProtoResponse.LevelOfDetail);
        v22 = sub_2CE250();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_167A40();
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2CEED0();
  __break(1u);
  return result;
}

void *sub_167A40()
{
  v1 = v0;
  v2 = sub_2C9330();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_352D70, &unk_2D5310);
  v6 = *v0;
  v7 = sub_2CEC70();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_167C78(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2C9330();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_20410(&qword_352D70, &unk_2D5310);
  v7 = sub_2CEC80();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_169F98(&qword_352D60, &type metadata accessor for _ProtoResponse.LevelOfDetail, &protocol conformance descriptor for _ProtoResponse.LevelOfDetail);
      result = sub_2CE220();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_167F94(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2C9330();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_20410(&qword_352D70, &unk_2D5310);
  result = sub_2CEC80();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_169F98(&qword_352D60, &type metadata accessor for _ProtoResponse.LevelOfDetail, &protocol conformance descriptor for _ProtoResponse.LevelOfDetail);
      result = sub_2CE220();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1682F0(uint64_t a1)
{
  v2 = sub_2C9330();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_169F98(&qword_352D60, &type metadata accessor for _ProtoResponse.LevelOfDetail, &protocol conformance descriptor for _ProtoResponse.LevelOfDetail);
  result = sub_2CE540();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v8, v14, v2);
      sub_1674C8(v6, v8);
      (*(v11 - 8))(v6, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

id sub_16848C()
{
  v0 = sub_2C8E80();
  v41 = *(v0 - 8);
  v42 = v0;
  __chkstk_darwin(v0);
  v40 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20410(&qword_352D38, &unk_2D52E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_2C9360();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v7, qword_35F6A8);
  v47 = *(v8 + 16);
  v47(v13, v14, v7);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "AcousticIDFlow#listeningSnippet executing", v17, 2u);
  }

  v18 = *(v8 + 8);
  v18(v13, v7);
  sub_2C8B80();
  swift_allocObject();
  sub_2C8B70();
  sub_16A0CC();
  v19 = sub_2C8B60();
  v37 = v18;
  v21 = v20;

  sub_20410(&qword_352D48, &qword_2D52F0);
  v22 = swift_allocObject();
  v39 = xmmword_2D0090;
  *(v22 + 16) = xmmword_2D0090;
  sub_20410(&qword_352D50, &unk_2D52F8);
  v23 = swift_allocObject();
  *(v23 + 16) = v39;
  *(v23 + 56) = sub_2C9310();
  *(v23 + 64) = &protocol witness table for CustomCanvas;
  sub_F390((v23 + 32));
  sub_525D4(v19, v21);
  v38 = v21;
  *&v39 = v19;
  sub_2C9300();
  v24 = sub_2C92F0();
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  v25 = sub_2C9320();
  sub_1682F0(v25);

  *(v22 + 56) = sub_2C9340();
  *(v22 + 64) = &protocol witness table for Section;
  sub_F390((v22 + 32));
  sub_2C9350();
  v26 = v43;
  sub_2C9370();
  v27 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  v28 = v40;
  sub_2C8E70();
  sub_2C8E50();
  (*(v41 + 8))(v28, v42);
  v29 = sub_2CE260();

  [v27 setAceId:v29];

  v30 = v27;
  v31 = sub_2CE260();
  [v30 setViewId:v31];
  v32 = v30;

  v47(v46, v14, v7);
  v33 = sub_2CDFE0();
  v34 = sub_2CE690();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "AcousticIDFlow#listeningSnippet Successfully generate iOS view", v35, 2u);
  }

  sub_52628(v39, v38);
  v37(v46, v7);
  (*(v44 + 8))(v26, v45);
  return v32;
}

id sub_168BEC()
{
  v0 = sub_2C8E80();
  v41 = *(v0 - 8);
  v42 = v0;
  __chkstk_darwin(v0);
  v40 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20410(&qword_352D38, &unk_2D52E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_2C9360();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v7, qword_35F6A8);
  v47 = *(v8 + 16);
  v47(v13, v14, v7);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "AcousticIDFlow#noMatchSnippet executing", v17, 2u);
  }

  v18 = *(v8 + 8);
  v18(v13, v7);
  sub_2C8B80();
  swift_allocObject();
  sub_2C8B70();
  sub_16A1F4();
  v19 = sub_2C8B60();
  v37 = v18;
  v21 = v20;

  sub_20410(&qword_352D48, &qword_2D52F0);
  v22 = swift_allocObject();
  v39 = xmmword_2D0090;
  *(v22 + 16) = xmmword_2D0090;
  sub_20410(&qword_352D50, &unk_2D52F8);
  v23 = swift_allocObject();
  *(v23 + 16) = v39;
  *(v23 + 56) = sub_2C9310();
  *(v23 + 64) = &protocol witness table for CustomCanvas;
  sub_F390((v23 + 32));
  sub_525D4(v19, v21);
  v38 = v21;
  *&v39 = v19;
  sub_2C9300();
  v24 = sub_2C92F0();
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  v25 = sub_2C9320();
  sub_1682F0(v25);

  *(v22 + 56) = sub_2C9340();
  *(v22 + 64) = &protocol witness table for Section;
  sub_F390((v22 + 32));
  sub_2C9350();
  v26 = v43;
  sub_2C9370();
  v27 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  v28 = v40;
  sub_2C8E70();
  sub_2C8E50();
  (*(v41 + 8))(v28, v42);
  v29 = sub_2CE260();

  [v27 setAceId:v29];

  v30 = v27;
  v31 = sub_2CE260();
  [v30 setViewId:v31];
  v32 = v30;

  v47(v46, v14, v7);
  v33 = sub_2CDFE0();
  v34 = sub_2CE690();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "AcousticIDFlow#noMatchSnippet Successfully generate iOS view", v35, 2u);
  }

  sub_52628(v39, v38);
  v37(v46, v7);
  (*(v44 + 8))(v26, v45);
  return v32;
}

uint64_t sub_169348(void (*a1)(char *, uint64_t))
{
  v3 = *(sub_20410(&qword_352D78, &unk_2D5320) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_162E88(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1693FC(void (*a1)(char *, uint64_t))
{
  v3 = *(sub_2CC950() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_161994(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1694A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcousticIDFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_169514(uint64_t a1)
{
  v3 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1606B4(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_169634(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24C84;

  return sub_164330(a1, v1);
}

uint64_t sub_169708()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_169774(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_169804(void *a1, uint64_t a2, char a3)
{
  v7 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_2CD330() - 8);
  return sub_157D00(a1, a2, a3 & 1, *(v3 + 16), *(v3 + 24), (v3 + v8), v3 + v11, *(v3 + v12), v3 + ((v12 + *(v13 + 80) + 8) & ~*(v13 + 80)));
}

uint64_t sub_169980(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24C84;

  return sub_158B28(a1, v1 + v6, v12, v13, v14, v1 + v10);
}

uint64_t sub_169B10(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_E664;

  return sub_164330(a1, v1);
}

uint64_t sub_169BBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CD330() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24C84;

  return sub_159424(a1, v1 + v6, v13, v1 + v9, v1 + v12);
}

uint64_t sub_169D88()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = sub_2CA000();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v9 = (((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;

  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return _swift_deallocObject(v0, v9 + v6);
}

uint64_t sub_169F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_16A0BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_16A0CC()
{
  result = qword_352D90;
  if (!qword_352D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_352D90);
  }

  return result;
}

uint64_t sub_16A138()
{

  return _swift_deallocObject(v0, 56);
}

unint64_t sub_16A1F4()
{
  result = qword_352D98;
  if (!qword_352D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_352D98);
  }

  return result;
}

uint64_t sub_16A26C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_16A2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcousticIDFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16A324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DetermineFlowStrategy.actionForInput(input:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v88 = a1;
  v3 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  __chkstk_darwin(v3 - 8);
  v83 = &v74 - v4;
  v5 = sub_2CD490();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v75 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v79 = &v74 - v10;
  __chkstk_darwin(v9);
  v82 = &v74 - v11;
  v12 = sub_2CA870();
  v89 = *(v12 - 8);
  v90 = v12;
  v13 = __chkstk_darwin(v12);
  v85 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &v74 - v15;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v81 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v77 = &v74 - v21;
  v22 = __chkstk_darwin(v20);
  v84 = &v74 - v23;
  v24 = __chkstk_darwin(v22);
  v78 = &v74 - v25;
  __chkstk_darwin(v24);
  v27 = &v74 - v26;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v29 = v17 + 16;
  v87 = *(v17 + 16);
  v87(v27, v28, v16);
  v30 = sub_2CDFE0();
  v31 = sub_2CE670();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v80 = v17 + 16;
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "DetermineFlowStrategy#actionForInput called", v32, 2u);
    v29 = v80;
  }

  v34 = *(v17 + 8);
  v33 = (v17 + 8);
  v86 = v34;
  v34(v27, v16);
  v35 = v91;
  sub_2CA790();
  v36 = v89;
  v37 = v35;
  v38 = v90;
  v39 = (*(v89 + 88))(v37, v90);
  if (v39 != enum case for Parse.NLv3IntentOnly(_:) && v39 != enum case for Parse.uso(_:))
  {
    v40 = v84;
    v87(v84, v28, v16);
    v41 = sub_2CDFE0();
    v42 = sub_2CE680();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "DetermineFlowStrategy#actionForInput received non NLv3IntentOnly or Uso parse", v43, 2u);
    }

    v86(v40, v16);
    sub_2C9CF0();
    return (*(v89 + 8))(v91, v90);
  }

  v74 = v5;
  v76 = v6;
  v84 = a2;
  v45 = *(v36 + 8);
  v45(v91, v38);
  v46 = v85;
  sub_2CA790();
  v47 = sub_D2F98(v46, &v94);
  (v45)(v46, v38, v47);
  v48 = v96;
  sub_30B8(&v94, &qword_34CF98, &unk_2D1A40);
  if (v48)
  {
    sub_2CA790();
    v49 = sub_D2F98(v46, &v94);
    (v45)(v46, v38, v49);
    if (v96)
    {
      sub_35E0(&v94, v96);
      v50 = v83;
      sub_2CD480();
      sub_306C(&v94);
      v51 = v76;
      v52 = v74;
      if ((*(v76 + 48))(v50, 1, v74) != 1)
      {
        v80 = v29;
        v90 = v28;
        v91 = v33;
        (*(v51 + 32))(v82, v50, v52);
        v53 = *(v51 + 104);
        v53(v79, enum case for CommonAudio.Confirmation.cancel(_:), v52);
        sub_16C37C(&qword_34CCF8, 255, &type metadata accessor for CommonAudio.Confirmation, &protocol conformance descriptor for CommonAudio.Confirmation);
        sub_2CE3E0();
        sub_2CE3E0();
        if (v94 == v92 && v95 == v93)
        {
          v54 = 1;
        }

        else
        {
          v54 = sub_2CEEA0();
        }

        v63 = v51 + 8;
        v64 = *(v51 + 8);
        v65 = v74;
        v76 = v63;
        v64(v79, v74);

        if (v54)
        {
LABEL_30:
          v70 = v77;
          v87(v77, v90, v16);
          v71 = sub_2CDFE0();
          v72 = sub_2CE690();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_0, v71, v72, "DetermineFlowStrategy#actionForInput found cancellation node - treating state as cancelled", v73, 2u);
          }

          v86(v70, v16);
          sub_2C9CD0();
          return (v64)(v82, v74);
        }

        v66 = v75;
        v53(v75, enum case for CommonAudio.Confirmation.no(_:), v65);
        sub_2CE3E0();
        sub_2CE3E0();
        if (v94 == v92 && v95 == v93)
        {
          v64(v66, v74);

          goto LABEL_30;
        }

        v67 = sub_2CEEA0();
        v68 = v66;
        v69 = v74;
        v64(v68, v74);

        if (v67)
        {
          goto LABEL_30;
        }

        v64(v82, v69);
        v28 = v90;
        goto LABEL_21;
      }
    }

    else
    {
      sub_30B8(&v94, &qword_34CF98, &unk_2D1A40);
      v50 = v83;
      (*(v76 + 56))(v83, 1, 1, v74);
    }

    sub_30B8(v50, &qword_34CCE8, &unk_2D0E20);
LABEL_21:
    v59 = v81;
    v87(v81, v28, v16);
    v60 = sub_2CDFE0();
    v61 = sub_2CE670();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "DetermineFlowStrategy#actionForInput handling", v62, 2u);
    }

    v86(v59, v16);
    return sub_2C9CE0();
  }

  v55 = v78;
  v87(v78, v28, v16);
  v56 = sub_2CDFE0();
  v57 = sub_2CE680();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_0, v56, v57, "DetermineFlowStrategy#actionForInput received unsupported parse", v58, 2u);
  }

  v86(v55, v16);
  return sub_2C9CF0();
}

uint64_t DetermineFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v93 = a3;
  v94 = a4;
  v6 = sub_2CA870();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v92 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v12 = &v77[-v11];
  __chkstk_darwin(v10);
  v14 = &v77[-v13];
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v91 = &v77[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v80 = &v77[-v20];
  __chkstk_darwin(v19);
  v22 = &v77[-v21];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v23 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v24 = *(v16 + 16);
  v87 = v23;
  v86 = v16 + 16;
  v85 = v24;
  v24(v22, v23, v15);
  v90 = v16;
  v95 = *(v7 + 16);
  v96 = a1;
  v95(v14, a1, v6);
  v25 = a2;
  v88 = v22;
  v26 = sub_2CDFE0();
  v89 = v15;
  v27 = a2;
  v28 = v6;
  v29 = v26;
  v30 = sub_2CE670();

  v31 = os_log_type_enabled(v29, v30);
  v82 = a2;
  v81 = v25;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v84 = v7;
    v33 = v32;
    v79 = swift_slowAlloc();
    *&v99 = v79;
    *v33 = 136446722;
    v34 = sub_2CCCC0();
    v78 = v30;
    v36 = sub_3F08(v34, v35, &v99);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v95(v12, v14, v28);
    v37 = v28;
    v38 = sub_2CE2A0();
    v40 = v39;
    v41 = *(v84 + 8);
    v41(v14, v37);
    v42 = sub_3F08(v38, v40, &v99);

    *(v33 + 14) = v42;
    *(v33 + 22) = 2080;
    *&v97 = v27;
    v43 = v25;
    sub_20410(&qword_352DA0, &qword_2D53B0);
    v44 = sub_2CE2A0();
    v46 = sub_3F08(v44, v45, &v99);

    *(v33 + 24) = v46;
    v47 = v41;
    _os_log_impl(&dword_0, v29, v78, "DetermineFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v33, 0x20u);
    swift_arrayDestroy();

    v7 = v84;

    v48 = *(v90 + 8);
    v49 = v89;
    v48(v88, v89);
    v50 = v37;
  }

  else
  {

    v47 = *(v7 + 8);
    v47(v14, v28);
    v50 = v28;
    v48 = *(v90 + 8);
    v49 = v89;
    v48(v88, v89);
  }

  v51 = v92;
  v95(v92, v96, v50);
  v52 = (*(v7 + 88))(v51, v50);
  if (v52 == enum case for Parse.NLv3IntentOnly(_:) || v52 == enum case for Parse.uso(_:))
  {
    v47(v51, v50);
    sub_D2F98(v96, &v97);
    if (v98)
    {
      sub_420A4(&v97, &v99);
      v60 = v81;
      v61 = v81;
      if (!v82)
      {
        v61 = [objc_allocWithZone(type metadata accessor for DetermineIntent()) init];
      }

      v62 = v100;
      v63 = v101;
      v64 = sub_35E0(&v99, v100);
      v65 = swift_allocObject();
      v66 = v93;
      v67 = v94;
      v65[2] = v61;
      v65[3] = v66;
      v65[4] = v67;
      v68 = v60;
      v69 = v61;

      sub_219DBC(v64, (v83 + 16), v83 + 56, sub_16C22C, v65, v69, v62, v63);

      return sub_306C(&v99);
    }

    else
    {
      sub_30B8(&v97, &qword_34CF98, &unk_2D1A40);
      v70 = v80;
      v85(v80, v87, v49);
      v71 = sub_2CDFE0();
      v72 = sub_2CE680();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_0, v71, v72, "DetermineFlowStrategy#makeIntentFromParse received unsupported NLv3IntentOnly parse", v73, 2u);
      }

      v48(v70, v49);
      v74 = sub_2CB850();
      sub_16C37C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v75 = swift_allocError();
      (*(*(v74 - 8) + 104))(v76, enum case for PlaybackCode.ceGE63(_:), v74);
      v93(v75, 1);
    }
  }

  else
  {
    v85(v91, v87, v49);
    v53 = sub_2CDFE0();
    v54 = sub_2CE680();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "DetermineFlowStrategy#makeIntentFromParse received non NLv3IntentOnly or Uso parse", v55, 2u);
    }

    v48(v91, v49);
    v56 = sub_2CB850();
    sub_16C37C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v57 = swift_allocError();
    (*(*(v56 - 8) + 104))(v58, enum case for PlaybackCode.ceGE64(_:), v56);
    v93(v57, 1);

    return (v47)(v51, v50);
  }
}

uint64_t sub_16B924(void *a1, uint64_t (*a2)(id, void))
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_2CDFE0();
  v11 = sub_2CE670();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_0, v10, v11, "DetermineFlowStrategy#makeIntentFromParse returning intent: %@", v12, 0xCu);
    sub_30B8(v13, &unk_34FC00, &unk_2D0150);
  }

  (*(v5 + 8))(v7, v4);
  return a2(v9, 0);
}

uint64_t DetermineFlowStrategy.makeSiriKitIntentHandler(app:intent:)@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_2CDFE0();
  v11 = sub_2CE670();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "DetermineFlowStrategy#makeSiriKitIntentHandler reached here", v12, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v13 = qword_34BF80;

  if (v13 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static Determine.intentHandler;
  type metadata accessor for DetermineIntent();
  v15 = v14;
  v16 = a2;
  sub_2C9870();
  v17 = sub_2C9880();
  return (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
}

uint64_t sub_16BDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DetermineFlowStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_16BE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DetermineFlowStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_16BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DetermineFlowStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_16BF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DetermineFlowStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_16BFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DetermineFlowStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_16C010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for DetermineFlowStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_16C08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DetermineFlowStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_16C0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DetermineFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_16C144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DetermineFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_16C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for DetermineFlowStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_16C37C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *sub_16C3F4(void *a1, void *a2)
{
  v67 = a2;
  v69 = a1;
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v63 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v63 - v11;
  __chkstk_darwin(v10);
  v14 = &v63 - v13;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  v68 = *(v3 + 16);
  v68(v14, v15, v2);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v65 = v12;
    v19 = v18;
    v20 = swift_slowAlloc();
    v66 = v3;
    v64 = v2;
    v21 = v20;
    v71 = v20;
    *v19 = 136446210;
    v22 = sub_2CCCA0();
    v63 = v9;
    v24 = v15;
    v25 = v6;
    v26 = sub_3F08(v22, v23, &v71);
    v9 = v63;

    *(v19 + 4) = v26;
    v6 = v25;
    v15 = v24;
    _os_log_impl(&dword_0, v16, v17, "PlayMediaAdditionalCommandsProvider#shouldCreateAdditionalCommands... %{public}s", v19, 0xCu);
    sub_306C(v21);
    v2 = v64;
    v3 = v66;

    v12 = v65;
  }

  v27 = *(v3 + 8);
  v27(v14, v2);
  v28 = v69;
  if (!sub_2CE810())
  {
    v68(v6, v15, v2);
    v35 = sub_2CDFE0();
    v36 = sub_2CE670();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v6;
      v39 = swift_slowAlloc();
      v71 = v39;
      *v37 = 136446210;
      v40 = sub_2CCCA0();
      v41 = v2;
      v43 = sub_3F08(v40, v42, &v71);

      *(v37 + 4) = v43;
      v44 = "PlayMediaAdditionalCommandsProvider#shouldCreateAdditionalCommands won't return an AceView because no view actions on next/later destinations (or create radio). %{public}s";
      v45 = v36;
LABEL_16:
      _os_log_impl(&dword_0, v35, v45, v44, v37, 0xCu);
      sub_306C(v39);

      v50 = v38;
      v51 = v41;
LABEL_20:
      v27(v50, v51);
      return 0;
    }

    v50 = v6;
LABEL_19:
    v51 = v2;
    goto LABEL_20;
  }

  v29 = [v28 mediaItems];
  if (!v29 || ((v30 = v29, sub_736BC(), v31 = sub_2CE410(), v30, v31 >> 62) ? (v32 = sub_2CEDA0()) : (v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8))), , !v32))
  {
    v68(v9, v15, v2);
    v35 = sub_2CDFE0();
    v46 = sub_2CE680();
    if (os_log_type_enabled(v35, v46))
    {
      v37 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v71 = v39;
      *v37 = 136446210;
      v47 = sub_2CCCA0();
      v41 = v2;
      v38 = v9;
      v49 = sub_3F08(v47, v48, &v71);

      *(v37 + 4) = v49;
      v44 = "PlayMediaAdditionalCommandsProvider#shouldCreateAdditionalCommands won't return an AceView because nil or empty mediaItems. %{public}s";
      v45 = v46;
      goto LABEL_16;
    }

    v50 = v9;
    goto LABEL_19;
  }

  v33 = v67;
  if ([v67 code] == &dword_4)
  {
    return (&dword_0 + 1);
  }

  result = [v33 code];
  if (result != &dword_0 + 1)
  {
    v66 = v3;
    v68(v12, v15, v2);
    v52 = v33;
    v53 = sub_2CDFE0();
    v54 = sub_2CE660();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = v12;
      v56 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v56 = 136446466;
      v70 = [v52 code];
      v57 = sub_2CEE70();
      v59 = sub_3F08(v57, v58, &v71);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2082;
      v60 = sub_2CCCA0();
      v62 = sub_3F08(v60, v61, &v71);

      *(v56 + 14) = v62;
      _os_log_impl(&dword_0, v53, v54, "PlayMediaAdditionalCommandsProvider#shouldCreateAdditionalCommands won't return an AceView because non-success code: %{public}s. %{public}s", v56, 0x16u);
      swift_arrayDestroy();

      v50 = v55;
    }

    else
    {

      v50 = v12;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_16CAAC(void *a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v38 = *(v5 + 16);
  v39 = v5 + 16;
  v38(v10, v11, v4);
  v40 = v10;
  v12 = sub_2CDFE0();
  v13 = sub_2CE670();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v8;
    v16 = v15;
    v41 = v15;
    *v14 = 136446210;
    v17 = sub_2CCCA0();
    v36 = a2;
    v19 = v11;
    v20 = a1;
    v21 = v4;
    v22 = v5;
    v23 = sub_3F08(v17, v18, &v41);
    a2 = v36;

    *(v14 + 4) = v23;
    v5 = v22;
    v4 = v21;
    a1 = v20;
    v11 = v19;
    _os_log_impl(&dword_0, v12, v13, "PlayMediaAdditionalCommandsProvider#additionalCommands... %{public}s", v14, 0xCu);
    sub_306C(v16);
    v8 = v37;
  }

  v24 = *(v5 + 8);
  v24(v40, v4);
  if ((sub_16C3F4(a1, a2) & 1) == 0)
  {
    v38(v8, v11, v4);
    v25 = sub_2CDFE0();
    v26 = sub_2CE670();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v8;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136446210;
      v30 = sub_2CCCA0();
      v32 = sub_3F08(v30, v31, &v41);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v25, v26, "PlayMediaAdditionalCommandsProvider#additionalCommands will not return additional commands. %{public}s", v28, 0xCu);
      sub_306C(v29);

      v33 = v27;
    }

    else
    {

      v33 = v8;
    }

    v24(v33, v4);
  }

  return 0;
}