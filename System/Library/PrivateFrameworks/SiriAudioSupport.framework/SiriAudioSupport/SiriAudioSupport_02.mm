uint64_t sub_2662D3CDC(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072548, &qword_2664E39B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2664E36F0;
  *(v6 + 32) = type metadata accessor for NowPlayingAppSignal();
  *(v6 + 40) = &off_2877EBA08;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  sub_266447850(a1, v6, 0, 0, sub_2662D4304, v7);
}

uint64_t PSESignalsStitcher.deinit()
{

  return v0;
}

uint64_t PSESignalsStitcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2662D3E2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a4;
  v29 = a1;
  v30 = a3;
  v4 = sub_2664E0038();
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664E00B8();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664E0018();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2664E00E8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v28 - v19;
  if (qword_280071A80 != -1)
  {
    swift_once();
  }

  v28[1] = qword_280072540;
  sub_2664E00C8();
  *v13 = v29;
  (*(v11 + 104))(v13, *MEMORY[0x277D85188], v10);
  MEMORY[0x266783140](v18, v13);
  (*(v11 + 8))(v13, v10);
  v21 = *(v15 + 8);
  v21(v18, v14);
  v22 = swift_allocObject();
  v23 = v30;
  v24 = v31;
  v22[2] = v31;
  v22[3] = v23;
  v22[4] = v32;
  aBlock[4] = sub_2662D42F8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_2;
  v25 = _Block_copy(aBlock);
  v26 = v24;

  sub_2664E0068();
  v36 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x2667837B0](v20, v9, v6, v25);
  _Block_release(v25);
  (*(v35 + 8))(v6, v4);
  (*(v33 + 8))(v9, v34);
  v21(v20, v14);
}

uint64_t sub_2662D4304(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return v2(v5);
}

uint64_t sub_2662D4340(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = v2 + 32;
    do
    {
      sub_2662A5550(v5, &v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
      v6 = type metadata accessor for NowPlayingAppSignal();
      result = swift_dynamicCast();
      if (result)
      {
        v7 = *a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_266384800(0, v7[2] + 1, 1, v7);
        }

        v9 = v7[2];
        v8 = v7[3];
        if (v9 >= v8 >> 1)
        {
          v7 = sub_266384800((v8 > 1), v9 + 1, 1, v7);
        }

        v12 = v6;
        v13 = &off_2877EBA08;
        *&v11 = v10;
        v7[2] = v9 + 1;
        result = sub_2662A8618(&v11, &v7[5 * v9 + 4]);
        *a2 = v7;
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2662D44A0(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "Int64: doing the crazy to unwrap Int64 as UInt64...", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  *swift_slowAlloc() = a1;
  MEMORY[0x266784AD0]();
  return a1;
}

unint64_t sub_2662D4690@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2662DADE8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t SiriAudioAppPredictorResult.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SAAudioAppPredictorResult_requestId);

  return v1;
}

uint64_t SiriAudioAppPredictorResult.selectedBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier);

  return v1;
}

id SiriAudioAppPredictorResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriAudioAppPredictorResult.__allocating_init(requestId:selectedBundleIdentifier:disambiguateBundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v11[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id SiriAudioAppPredictorResult.init(requestId:selectedBundleIdentifier:disambiguateBundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
  *v6 = a1;
  *(v6 + 1) = a2;
  v7 = &v5[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
  *v7 = a3;
  *(v7 + 1) = a4;
  *&v5[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for SiriAudioAppPredictorResult();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_2662D4BF0()
{
  v1 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2662D4C88(char a1)
{
  v3 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SiriAudioAppPredictorOptions.init()()
{
  v0[OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriAudioAppPredictorOptions();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2662D4DE0()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  v10[1] = 0;
  sub_2662A3CE8(&qword_280F8F5D0, MEMORY[0x277D85230], MEMORY[0x277D85240]);
  sub_2664E0F48();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001DLL, 0x80000002664F4110, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280F912B0 = v8;
  return result;
}

id SiriAudioAppPredictor.init(caller:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v50 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v43 - v8;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v11 = *(v5 + 16);
  v47 = v5 + 16;
  v48 = v10;
  v46 = v11;
  v11(v9, v10, v4);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    *(v14 + 4) = a1;
    _os_log_impl(&dword_26629C000, v12, v13, "SiriAudioAppPredictor#init for caller: %{public}ld...", v14, 0xCu);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  v16 = *(v5 + 8);
  v15 = v5 + 8;
  v45 = v16;
  v16(v9, v4);
  if (a1 != 6)
  {
    byte_28007CCC8 = 1;
  }

  if (qword_280F8F6F0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_280F91C10, qword_280F91C28);
  sub_2662D9E08();
  if (qword_280F90270 != -1)
  {
    swift_once();
  }

  sub_2662A5550(qword_280F91C10, v71);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  v49 = a1;
  v72[0] = qword_280F905C8;
  *(v72 + 5) = *(&qword_280F905C8 + 5);
  v44 = type metadata accessor for SelfEmitter();
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  v51 = v15;
  v52 = v4;
  v53 = v2;
  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, v70);
  *(&v67 + 1) = &type metadata for DeviceProvider;
  *&v68[0] = &protocol witness table for DeviceProvider;
  sub_266406880(&v66);
  *&v69 = &type metadata for FeatureFlagProvider;
  *(&v69 + 1) = &protocol witness table for FeatureFlagProvider;
  sub_266389EC0(v68 + 8);
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v17 = qword_280F8F808;
  v43[0] = qword_280F8F808;
  v18 = type metadata accessor for CompanionDeviceProvider();
  v19 = swift_allocObject();
  v19[5] = type metadata accessor for MultiUserConnectionProvider();
  v19[6] = &protocol witness table for MultiUserConnectionProvider;
  v19[2] = v17;
  v64 = v18;
  v65 = &protocol witness table for CompanionDeviceProvider;
  *&v63 = v19;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v71, v71[3]);
  v43[1] = v43;
  MEMORY[0x28223BE20](v20);
  v22 = (v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v61 = &type metadata for InstalledAppProvider;
  v62 = &protocol witness table for InstalledAppProvider;
  *&v60 = swift_allocObject();
  sub_2662B8E78(&qword_280F90278, v60 + 16);
  v59[3] = &type metadata for AppSelectionConfigurationProvider;
  v59[4] = &off_2877EDBD8;
  v58 = &protocol witness table for FeatureFlagProvider;
  v59[0] = v24;
  v57 = &type metadata for FeatureFlagProvider;
  *&v56 = v72[0];
  *(&v56 + 5) = *(v72 + 5);
  v55[3] = &type metadata for CoreAnalyticsLogger;
  v55[4] = &off_2877F2F78;
  v25 = type metadata accessor for PlayMediaAppSelector();
  v26 = swift_allocObject();
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v59, &type metadata for AppSelectionConfigurationProvider);
  MEMORY[0x28223BE20](v27);
  v29 = (v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  __swift_mutable_project_boxed_opaque_existential_1(v55, &type metadata for CoreAnalyticsLogger);
  v31 = *v29;
  *(v26 + 80) = &type metadata for AppSelectionConfigurationProvider;
  *(v26 + 88) = &off_2877EDBD8;
  *(v26 + 56) = v31;
  *(v26 + 160) = &type metadata for CoreAnalyticsLogger;
  *(v26 + 168) = &off_2877F2F78;
  sub_2662A8618(&v60, v26 + 16);
  sub_2662A8618(&v56, v26 + 96);
  *(v26 + 176) = v44;
  *(v26 + 184) = &protocol witness table for SelfEmitter;
  sub_2662A8618(v70, v26 + 192);
  v32 = v66;
  *(v26 + 248) = v67;
  v33 = v68[1];
  *(v26 + 264) = v68[0];
  *(v26 + 280) = v33;
  *(v26 + 296) = v69;
  *(v26 + 232) = v32;
  sub_2662A8618(&v63, v26 + 312);

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  v35 = v52;
  v34 = v53;
  v36 = &v53[OBJC_IVAR___SAAudioAppPredictor_selector];
  v36[3] = v25;
  v36[4] = &protocol witness table for PlayMediaAppSelector;
  *v36 = v26;
  v37 = v50;
  *&v34[OBJC_IVAR___SAAudioAppPredictor_caller] = v49;
  v46(v37, v48, v35);
  v38 = sub_2664DFE18();
  v39 = sub_2664E06E8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_26629C000, v38, v39, "SiriAudioAppPredictor#init complete.", v40, 2u);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  v45(v37, v35);
  v41 = type metadata accessor for SiriAudioAppPredictor();
  v54.receiver = v34;
  v54.super_class = v41;
  return objc_msgSendSuper2(&v54, sel_init);
}

uint64_t sub_2662D57FC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v43 = sub_2664DFE08();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v43);
  v7 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v39 - v8;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = v2;
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v40 = v4;
    v18 = a1;
    v19 = v17;
    *v17 = 134349056;
    *(v17 + 4) = *(v14 + OBJC_IVAR___SAAudioAppPredictor_caller);

    _os_log_impl(&dword_26629C000, v15, v16, "SiriAudioAppPredictor#warm for caller: %{public}ld...", v19, 0xCu);
    v20 = v19;
    a1 = v18;
    v7 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = v40;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  else
  {

    v15 = v14;
  }

  (*(v10 + 8))(v12, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v41;
  v40 = *(&v14->isa + OBJC_IVAR___SAAudioAppPredictor_caller);
  v22 = qword_280F91508;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_280F91D48;
  v24 = v42;
  sub_2664DFDE8();
  v25 = v43;
  (*(v4 + 16))(v7, v24, v43);
  v26 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v27 = (v5 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = "appPredictorWarm";
  *(v28 + 24) = 16;
  *(v28 + 32) = 2;
  (*(v4 + 32))(v28 + v26, v7, v25);
  v29 = (v28 + v27);
  *v29 = sub_2662DAE64;
  v29[1] = v21;

  v30 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D83B88];
  *(v31 + 16) = xmmword_2664E36F0;
  v33 = MEMORY[0x277D83C10];
  *(v31 + 56) = v32;
  *(v31 + 64) = v33;
  v34 = v40;
  *(v31 + 32) = v40;
  sub_2664DFDC8(v30, &dword_26629C000, v23, "appPredictorWarm", 16, 2, v24, "caller=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v31);

  v35 = swift_allocObject();
  *(v35 + 16) = sub_2662D3010;
  *(v35 + 24) = v28;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_2662DAE90;
  *(v36 + 24) = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_2662DAECC;
  *(v37 + 24) = v36;

  _s16SiriAudioSupport20PlayMediaAppSelectorC4warm6caller10completionyAA0abF15PredictorCallerO_ySbctFZ_0(v34, sub_2662DAF04, v37);

  return (*(v4 + 8))(v24, v25);
}

uint64_t sub_2662D5DB4(char a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v9, v10, "SiriAudioAppPredictor#warm complete. Success?:%{BOOL}d", v11, 8u);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return a2(a1 & 1);
}

uint64_t sub_2662D6024(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v39 = a2;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664E0038();
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664E00B8();
  v36 = *(v15 - 8);
  v37 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (swift_beginAccess(), (v18 = *(a1 + 184)) != 0))
  {
    v19 = qword_280F90D30;

    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v33[1] = qword_280F90D38;
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a4;
    v22 = v39;
    v21[4] = v35;
    v21[5] = v22;
    v21[6] = a3;
    v44 = sub_2662DBFE8;
    v45 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v33[4] = &v42;
    v42 = sub_2662A3F90;
    v43 = &block_descriptor_80;
    v23 = _Block_copy(&aBlock);
    v34 = v20;

    sub_2664E0068();
    v46 = MEMORY[0x277D84F90];
    v35 = sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    v33[2] = sub_2662A5AC8();
    sub_2664E0A08();
    MEMORY[0x266783800](0, v17, v14, v23);
    _Block_release(v23);
    v38 = *(v38 + 8);
    (v38)(v14, v12);
    v24 = v37;
    v36 = *(v36 + 8);
    (v36)(v17, v37);

    v25 = swift_allocObject();
    *(v25 + 16) = v39;
    *(v25 + 24) = a3;
    v44 = sub_2662DBFF8;
    v45 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_2662A3F90;
    v43 = &block_descriptor_86;
    v26 = _Block_copy(&aBlock);

    sub_2664E0068();
    v46 = MEMORY[0x277D84F90];
    sub_2664E0A08();
    MEMORY[0x266783800](0, v17, v14, v26);
    _Block_release(v26);

    (v38)(v14, v12);
    (v36)(v17, v24);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v11, v28, v8);

    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46 = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_2662A320C(v39, a3, &v46);
      _os_log_impl(&dword_26629C000, v29, v30, "SiriAudioAppPredictor#disambiguationSelected [%{public}s] unexpected error loading context (or context-intent) for request. Not donating interaction or recording", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    return (*(v9 + 8))(v11, v8);
  }
}

void sub_2662D666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:a1 response:0];
  v10 = sub_2664E02A8();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v13[4] = sub_2662DC040;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2663CE9D8;
  v13[3] = &block_descriptor_92;
  v12 = _Block_copy(v13);

  [v9 _donateInteractionWithBundleId_completion_];
  _Block_release(v12);
}

uint64_t sub_2662D67AC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  if (a1)
  {
    v39 = a4;
    v17 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v16, v18, v10);
    v19 = a1;

    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = a2;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v10;
      v25 = v24;
      v41 = v24;
      *v23 = 136446722;
      *(v23 + 4) = sub_2662A320C(v22, a3, &v41);
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_2662A320C(v39, a5, &v41);
      *(v23 + 22) = 2080;
      swift_getErrorValue();
      v26 = sub_2664E0DE8();
      v28 = sub_2662A320C(v26, v27, &v41);

      *(v23 + 24) = v28;
      _os_log_impl(&dword_26629C000, v20, v21, "SiriAudioAppPredictor#disambiguationSelected [%{public}s] failed to donate interaction for bundle: %{public}s: %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v25, -1, -1);
      MEMORY[0x266784AD0](v23, -1, -1);

      return (*(v11 + 8))(v16, v40);
    }

    v37 = *(v11 + 8);
    v38 = v16;
  }

  else
  {
    v30 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v14, v31, v10);

    v32 = sub_2664DFE18();
    v33 = sub_2664E06E8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v40 = v10;
      v35 = v34;
      v36 = swift_slowAlloc();
      v41 = v36;
      *v35 = 136446466;
      *(v35 + 4) = sub_2662A320C(v30, a3, &v41);
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_2662A320C(a4, a5, &v41);
      _os_log_impl(&dword_26629C000, v32, v33, "SiriAudioAppPredictor#disambiguationSelected [%{public}s] successfully donated interaction for bundle: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);

      return (*(v11 + 8))(v14, v40);
    }

    v37 = *(v11 + 8);
    v38 = v14;
  }

  return v37(v38, v10);
}

uint64_t sub_2662D6C54(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06D8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2662A320C(a1, a2, &v14);
    _os_log_impl(&dword_26629C000, v9, v10, "SiriAudioAppPredictor#disambiguationSelected [%{public}s] training records not implemented", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_2662D6EF8(void (*a1)(void), uint64_t a2, char *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v88 = a6;
  v89 = a7;
  v84 = a5;
  v83 = a4;
  v82 = a3;
  v95 = a1;
  v96 = a2;
  v7 = sub_2664DFE08();
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v86 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v9;
  MEMORY[0x28223BE20](v8);
  v87 = &v81 - v10;
  v97 = sub_2664DFE38();
  v94 = *(v97 - 8);
  v11 = MEMORY[0x28223BE20](v97);
  v92 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v81 - v13;
  v15 = sub_2664DE4A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16SiriAudioSupport19AppSelectionContextC9removeAllyyFZ_0();
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  sub_2664DE498();
  v19 = sub_2664DE458();
  v21 = v20;
  v22 = *(v16 + 8);
  v22(v18, v15);
  v101 = &type metadata for SiriAudioAppPredictor.AppPredictorInternalExecutorProvider;
  v102 = &off_2877E6EF8;
  *&v100 = v19;
  *(&v100 + 1) = v21;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(qword_280F90B28);
  sub_2662A8618(&v100, qword_280F90B28);
  swift_endAccess();
  v24 = qword_280F90B40;
  v23 = unk_280F90B48;
  v25 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v28);
  v93 = (*(v23 + 16))(v24, v23);
  v30 = v29;
  (*(v26 + 8))(v28, v24);
  if (v30)
  {
    v31 = v30;
    v32 = v94;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = v97;
    v34 = __swift_project_value_buffer(v97, qword_280F914F0);
    swift_beginAccess();
    v35 = v92;
    (*(v32 + 16))(v92, v34, v33);
    v36 = v82;

    v37 = v83;
    v38 = v84;
    v39 = sub_2664DFE18();
    v40 = sub_2664E06E8();

    v41 = os_log_type_enabled(v39, v40);
    p_class_meths = &OBJC_PROTOCOL___NSSecureCoding.class_meths;
    v84 = v38;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = v36;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v99[0] = v46;
      *v43 = 136446978;
      *(v43 + 4) = sub_2662A320C(v93, v31, v99);
      *(v43 + 12) = 2050;
      *(v43 + 14) = *&v44[OBJC_IVAR___SAAudioAppPredictor_caller];

      *(v43 + 22) = 2114;
      *(v43 + 24) = v37;
      *(v43 + 32) = 2114;
      *(v43 + 34) = v38;
      *v45 = v37;
      v45[1] = v38;
      v47 = v37;
      v48 = v38;
      _os_log_impl(&dword_26629C000, v39, v40, "SiriAudioAppPredictor#predict [%{public}s] for caller: %{public}ld search:%{public}@, options:%{public}@...", v43, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B0, &unk_2664E3670);
      swift_arrayDestroy();
      v49 = v45;
      v36 = v44;
      MEMORY[0x266784AD0](v49, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266784AD0](v46, -1, -1);
      v50 = v43;
      p_class_meths = (&OBJC_PROTOCOL___NSSecureCoding + 32);
      MEMORY[0x266784AD0](v50, -1, -1);

      (*(v32 + 8))(v92, v97);
    }

    else
    {

      (*(v32 + 8))(v35, v33);
    }

    v82 = v36;
    v97 = v31;
    v65 = swift_allocObject();
    *(v65 + 16) = v95;
    *(v65 + 24) = v96;
    v95 = *(p_class_meths[176] + v36);
    v66 = qword_280F91508;

    if (v66 != -1)
    {
      swift_once();
    }

    v67 = qword_280F91D48;
    v68 = v87;
    sub_2664DFDE8();
    v69 = v90;
    v70 = v91;
    v71 = v86;
    (*(v90 + 16))(v86, v68, v91);
    v72 = (*(v69 + 80) + 33) & ~*(v69 + 80);
    v73 = (v85 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    *(v74 + 16) = "appPredictorPredict";
    *(v74 + 24) = 19;
    *(v74 + 32) = 2;
    (*(v69 + 32))(v74 + v72, v71, v70);
    v75 = (v74 + v73);
    *v75 = sub_2662DBE30;
    v75[1] = v65;

    v76 = sub_2664E0848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v77 = swift_allocObject();
    v78 = MEMORY[0x277D83B88];
    *(v77 + 16) = xmmword_2664E36F0;
    v79 = MEMORY[0x277D83C10];
    *(v77 + 56) = v78;
    *(v77 + 64) = v79;
    *(v77 + 32) = v95;
    sub_2664DFDC8(v76, &dword_26629C000, v67, "appPredictorPredict", 19, 2, v68, "caller=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v77);

    v80 = swift_allocObject();
    *(v80 + 16) = sub_2662C0D38;
    *(v80 + 24) = v74;

    sub_2662D792C(sub_2662C0DE0, v80, v82, v88, v93, v97, v84, v89);

    (*(v69 + 8))(v68, v70);
  }

  else
  {
    v51 = v94;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v52 = v97;
    v53 = __swift_project_value_buffer(v97, qword_280F914F0);
    swift_beginAccess();
    (*(v51 + 16))(v14, v53, v52);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06D8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26629C000, v54, v55, "SiriAudioAppPredictor#predict unexpected nil request id", v56, 2u);
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    (*(v51 + 8))(v14, v52);
    sub_2664DE498();
    v57 = sub_2664DE458();
    v59 = v58;
    v22(v18, v15);
    v60 = type metadata accessor for SiriAudioAppPredictorResult();
    v61 = objc_allocWithZone(v60);
    v62 = &v61[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
    *v62 = v57;
    v62[1] = v59;
    v63 = &v61[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
    *v63 = 0;
    *(v63 + 1) = 0;
    *&v61[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = 0;
    v98.receiver = v61;
    v98.super_class = v60;
    v64 = objc_msgSendSuper2(&v98, sel_init);
    v95();
  }
}

uint64_t sub_2662D792C(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = *&a3[OBJC_IVAR___SAAudioAppPredictor_selector + 24];
  v17 = *&a3[OBJC_IVAR___SAAudioAppPredictor_selector + 32];
  __swift_project_boxed_opaque_existential_1(&a3[OBJC_IVAR___SAAudioAppPredictor_selector], v16);
  v23 = *&a3[OBJC_IVAR___SAAudioAppPredictor_caller];
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = sub_2662C0CAC;
  v18[5] = v15;
  v18[6] = a3;
  v18[7] = a7;
  v18[8] = a4;
  v18[9] = a8;
  v19 = *(v17 + 16);

  v20 = a3;
  v21 = a7;
  v19(a4, v23, sub_2662DBE5C, v18, v16, v17);
}

void sub_2662D7A78(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v63 = a8;
  v55 = a6;
  v56 = a7;
  v58 = a4;
  v59 = a5;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  v18 = *(a1 + 8);
  v62 = *a1;
  v57 = *(a1 + 16);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v52 = *(v13 + 16);
  v53 = v19;
  v52(v17, v19, v12);
  swift_bridgeObjectRetain_n();

  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();

  v22 = os_log_type_enabled(v20, v21);
  v23 = v12;
  v60 = a2;
  v61 = a3;
  if (v22)
  {
    v24 = swift_slowAlloc();
    v51 = v12;
    v25 = v24;
    v26 = swift_slowAlloc();
    v65 = v26;
    *v25 = 136446722;
    *(v25 + 4) = sub_2662A320C(a2, a3, &v65);
    *(v25 + 12) = 2082;
    v64[0] = v62;
    v64[1] = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v27 = sub_2664E0318();
    v29 = sub_2662A320C(v27, v28, &v65);

    *(v25 + 14) = v29;
    *(v25 + 22) = 1024;

    *(v25 + 24) = v57;

    _os_log_impl(&dword_26629C000, v20, v21, "SiriAudioAppPredictor#predict [%{public}s] complete. bundleIdentifier:%{public}s, attempted?:%{BOOL}d", v25, 0x1Cu);
    swift_arrayDestroy();
    v30 = v63;
    MEMORY[0x266784AD0](v26, -1, -1);
    v31 = v25;
    v23 = v51;
    MEMORY[0x266784AD0](v31, -1, -1);

    v32 = *(v13 + 8);
    v32(v17, v23);
    if (v18)
    {
LABEL_5:
      sub_2662DB1B4(v62, v18, v30, v60, v61, v58, v59);
      return;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v32 = *(v13 + 8);
    v32(v17, v12);
    v30 = v63;
    if (v18)
    {
      goto LABEL_5;
    }
  }

  v62 = a9;
  v33 = v54;
  v52(v54, v53, v23);
  v34 = v61;

  v35 = sub_2664DFE18();
  v36 = v23;
  v37 = sub_2664E06C8();

  v38 = os_log_type_enabled(v35, v37);
  v39 = v60;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v64[0] = v41;
    *v40 = 136446210;
    *(v40 + 4) = sub_2662A320C(v39, v34, v64);
    _os_log_impl(&dword_26629C000, v35, v37, "SiriAudioAppPredictor#predict [%{public}s] getting apps for disambiguation...", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  v32(v33, v36);
  type metadata accessor for AppSelectionContext();
  v42 = swift_allocObject();
  v42[2] = v39;
  v42[3] = v34;
  v43 = v59;
  v42[4] = v58;
  v42[5] = v43;
  v45 = v55;
  v44 = v56;
  v42[6] = v55;
  v42[7] = v44;
  v46 = v62;
  v47 = v63;
  v42[8] = v63;
  v42[9] = v46;

  v48 = v45;
  v49 = v44;
  v50 = v47;
  static AppSelectionContext.shared(refId:completion:)(v39, v34, sub_2662DBEE8, v42);
}

void sub_2662D7F64(uint64_t a1, unint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v97 = a6;
  v98 = a4;
  v99 = a3;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v92 - v19;
  if (!a1)
  {
LABEL_18:
    v60 = a2;
    if (qword_280F914E8 == -1)
    {
LABEL_19:
      v61 = __swift_project_value_buffer(v14, qword_280F914F0);
      swift_beginAccess();
      (*(v15 + 16))(v18, v61, v14);
      v62 = v99;

      v63 = sub_2664DFE18();
      v64 = sub_2664E06D8();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v97 = v14;
        v67 = v15;
        v68 = v66;
        *&v126[0] = v66;
        *v65 = 136446210;
        *(v65 + 4) = sub_2662A320C(v60, v62, v126);
        _os_log_impl(&dword_26629C000, v63, v64, "SiriAudioAppPredictor#predict [%{public}s] error bundle confidences from request context", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x266784AD0](v68, -1, -1);
        MEMORY[0x266784AD0](v65, -1, -1);

        (*(v67 + 8))(v18, v97);
      }

      else
      {

        (*(v15 + 8))(v18, v14);
      }

      v69 = type metadata accessor for SiriAudioAppPredictorResult();
      v70 = objc_allocWithZone(v69);
      v71 = &v70[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
      *v71 = v60;
      v71[1] = v62;
      v72 = &v70[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
      *v72 = 0;
      *(v72 + 1) = 0;
      *&v70[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = 0;
      v130.receiver = v70;
      v130.super_class = v69;

      v45 = objc_msgSendSuper2(&v130, sel_init);
LABEL_23:
      v98();

      return;
    }

LABEL_37:
    swift_once();
    goto LABEL_19;
  }

  v95 = a7;
  swift_beginAccess();
  v21 = *(a1 + 96);
  v22 = *(a1 + 112);
  v23 = *(a1 + 128);
  v127 = *(a1 + 144);
  v126[6] = v22;
  v126[7] = v23;
  v126[5] = v21;
  v24 = *(a1 + 32);
  v25 = *(a1 + 48);
  v26 = *(a1 + 80);
  v126[3] = *(a1 + 64);
  v126[4] = v26;
  v126[1] = v24;
  v126[2] = v25;
  v126[0] = *(a1 + 16);
  v27 = *(a1 + 96);
  v106 = *(a1 + 80);
  v107 = v27;
  v28 = *(a1 + 128);
  v108[0] = *(a1 + 112);
  v108[1] = v28;
  v29 = *(a1 + 32);
  v102 = *(a1 + 16);
  v103 = v29;
  v30 = *(a1 + 64);
  v104 = *(a1 + 48);
  v105 = v30;
  v31 = v127;
  memmove(__dst, (a1 + 16), 0x80uLL);
  v129 = v31;
  if (sub_2662DBF1C(__dst) == 1)
  {
    v96 = a2;
    v123 = v106;
    v124 = v107;
    v125[0] = v108[0];
    v125[1] = v108[1];
    v119 = v102;
    v120 = v103;
    v121 = v104;
    v122 = v105;
    *&v125[2] = v31;
    sub_2662DBF34(v126, v117);
    sub_2662A9238(&v119, &qword_280072590, &qword_2664E3B48);
  }

  else
  {
    v123 = v106;
    v124 = v107;
    v125[0] = v108[0];
    v125[1] = v108[1];
    v119 = v102;
    v120 = v103;
    v121 = v104;
    v122 = v105;
    *&v125[2] = v31;
    sub_2662DBF34(v126, v117);

    sub_2662A9238(&v119, &qword_280072590, &qword_2664E3B48);
    if (v31)
    {
      v32 = v15;
      v94 = a5;
      v33 = a2;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v14, qword_280F914F0);
      swift_beginAccess();
      (*(v32 + 16))(v20, v34, v14);
      v35 = v99;

      v36 = sub_2664DFE18();
      v37 = sub_2664E06C8();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v101[0] = v39;
        *v38 = 136446210;
        *(v38 + 4) = sub_2662A320C(v33, v99, v101);
        _os_log_impl(&dword_26629C000, v36, v37, "SiriAudioAppPredictor#predict [%{public}s] with diamabiguation", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x266784AD0](v39, -1, -1);
        v40 = v38;
        v35 = v99;
        MEMORY[0x266784AD0](v40, -1, -1);
      }

      (*(v32 + 8))(v20, v14);
      v41 = type metadata accessor for SiriAudioAppPredictorResult();
      v42 = objc_allocWithZone(v41);
      v43 = &v42[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
      *v43 = v33;
      v43[1] = v35;
      v44 = &v42[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
      *v44 = 0;
      *(v44 + 1) = 0;
      *&v42[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = v31;
      v100.receiver = v42;
      v100.super_class = v41;

      v45 = objc_msgSendSuper2(&v100, sel_init);
      goto LABEL_23;
    }

    v96 = a2;
  }

  swift_beginAccess();
  v46 = *(a1 + 32);
  v47 = *(a1 + 48);
  v48 = *(a1 + 80);
  v117[3] = *(a1 + 64);
  v117[4] = v48;
  v49 = *(a1 + 96);
  v50 = *(a1 + 112);
  v51 = *(a1 + 128);
  v118 = *(a1 + 144);
  v117[6] = v50;
  v117[7] = v51;
  v117[5] = v49;
  v117[1] = v46;
  v117[2] = v47;
  v52 = *(a1 + 16);
  v53 = *(a1 + 64);
  v113 = *(a1 + 48);
  v114 = v53;
  v54 = *(a1 + 96);
  v115 = *(a1 + 80);
  v116 = v54;
  v117[0] = v52;
  v55 = *(a1 + 32);
  v111 = *(a1 + 16);
  v112 = v55;
  v56 = v50;
  v57 = *(a1 + 136);
  v109 = *(a1 + 120);
  v110 = v57;
  memmove(&v119, (a1 + 16), 0x60uLL);
  *&v125[0] = v56;
  v58 = *(a1 + 120);
  *(&v125[1] + 8) = *(a1 + 136);
  *(v125 + 8) = v58;
  if (sub_2662DBF1C(&v119) == 1)
  {
    v104 = v113;
    v105 = v114;
    v106 = v115;
    v107 = v116;
    v102 = v111;
    v103 = v112;
    *(v108 + 8) = v109;
    *&v108[0] = v56;
    *(&v108[1] + 8) = v110;
    sub_2662DBF34(v117, v101);
    sub_2662A9238(&v102, &qword_280072590, &qword_2664E3B48);
LABEL_17:
    a2 = v96;
    goto LABEL_18;
  }

  v104 = v113;
  v105 = v114;
  v106 = v115;
  v107 = v116;
  v102 = v111;
  v103 = v112;
  *(v108 + 8) = v109;
  *&v108[0] = v56;
  *(&v108[1] + 8) = v110;
  sub_2662DBF34(v117, v101);

  sub_2662A9238(&v102, &qword_280072590, &qword_2664E3B48);
  if (!v56)
  {
    goto LABEL_17;
  }

  v59 = *(v56 + 16);
  v93 = v56;
  v94 = a5;
  if (v59)
  {
    v14 = sub_26640C8A4(v59, 0);
    v92 = sub_26640CC9C(v101, (v14 + 32), v59, v56);
    v18 = v101[0];
    v15 = v101[3];

    sub_2662B793C(v18);
    if (v92 != v59)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v101[0] = v14;
  sub_2662DA3AC(v101);
  v92 = a8;
  v14 = v101[0];
  v73 = *(v101[0] + 16);
  if (v73)
  {
    v60 = 0;
    v15 = v101[0] + 40;
    v74 = MEMORY[0x277D84F90];
    while (v60 < *(v14 + 16))
    {
      v75 = *(v15 - 8);
      v76 = *v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_2663846F4(0, *(v74 + 2) + 1, 1, v74);
      }

      v78 = *(v74 + 2);
      v77 = *(v74 + 3);
      v18 = (v78 + 1);
      if (v78 >= v77 >> 1)
      {
        v74 = sub_2663846F4((v77 > 1), v78 + 1, 1, v74);
      }

      ++v60;
      *(v74 + 2) = v18;
      v79 = &v74[16 * v78];
      *(v79 + 4) = v75;
      *(v79 + 5) = v76;
      v15 += 24;
      if (v73 == v60)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v74 = MEMORY[0x277D84F90];
LABEL_35:
  v80 = swift_allocObject();

  *(v80 + 16) = v74;
  v81 = *(v97 + OBJC_IVAR___SAAudioAppPredictor_selector + 24);
  v82 = *(v97 + OBJC_IVAR___SAAudioAppPredictor_selector + 32);
  v97 = __swift_project_boxed_opaque_existential_1((v97 + OBJC_IVAR___SAAudioAppPredictor_selector), v81);
  v83 = swift_allocObject();
  v85 = v95;
  v84 = v96;
  v83[2] = v95;
  v83[3] = v84;
  v87 = v92;
  v86 = v93;
  v83[4] = v99;
  v83[5] = v86;
  v88 = v98;
  v83[6] = v87;
  v83[7] = v88;
  v83[8] = v94;
  v83[9] = v80;
  v83[10] = a9;
  v89 = *(v82 + 32);

  v90 = v85;
  v91 = v87;

  v89(sub_2662DBFA4, v83, v81, v82);
}

void sub_2662D8900(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v108 = a8;
  v104 = a6;
  v110 = a5;
  v14 = a9;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 1);
  v17 = MEMORY[0x28223BE20](v15);
  v109 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v106 = &v99 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v105 = &v99 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v99 - v23;
  v25 = *(a1 + 24);
  v26 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  swift_beginAccess();
  v27 = *(a2 + v26) == 1;
  v107 = a7;
  if (v27)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v29 = *(v16 + 16);
    v103 = v28;
    v102 = v16 + 16;
    v101 = v29;
    (v29)(v24, v28, v15);

    v30 = v110;

    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();

    LODWORD(v100) = v32;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v113[0] = v99;
      *v33 = 136446722;
      *(v33 + 4) = sub_2662A320C(a3, a4, v113);
      *(v33 + 12) = 2048;
      *(v33 + 14) = v25;
      *(v33 + 22) = 2082;
      v34 = sub_2664E01D8();
      v36 = v16;
      v37 = v15;
      v38 = a3;
      v39 = a4;
      v40 = sub_2662A320C(v34, v35, v113);
      v30 = v110;

      *(v33 + 24) = v40;
      a4 = v39;
      a3 = v38;
      v15 = v37;
      v16 = v36;
      _os_log_impl(&dword_26629C000, v31, v100, "SiriAudioAppPredictor#predict [%{public}s] trimming disambiguation. Threshold:%f for bundle confidences: %{public}s", v33, 0x20u);
      v41 = v99;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v100 = *(v16 + 8);
    v100(v24, v15);
    v42 = _s16SiriAudioSupport13ThresholdTrimV4trim17bundleConfidences9thresholdSaySSGSDySSSdG_SdtFZ_0(v30, v25);
    v43 = v42;
    v44 = *(v42 + 2);
    if (v44)
    {
      if (v44 == 1)
      {
        v46 = *(v42 + 4);
        v45 = *(v42 + 5);

        v47 = v105;
        (v101)(v105, v103, v15);

        v48 = sub_2664DFE18();
        v49 = sub_2664E06E8();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = v15;
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v110 = v16;
          v53 = a4;
          v54 = v52;
          v113[0] = v52;
          *v51 = 136446466;
          *(v51 + 4) = sub_2662A320C(a3, v53, v113);
          *(v51 + 12) = 2082;
          *(v51 + 14) = sub_2662A320C(v46, v45, v113);
          _os_log_impl(&dword_26629C000, v48, v49, "SiriAudioAppPredictor#predict [%{public}s] trimmed disambiguation to single bundle: %{public}s, selecting...", v51, 0x16u);
          swift_arrayDestroy();
          v55 = v54;
          a4 = v53;
          MEMORY[0x266784AD0](v55, -1, -1);
          MEMORY[0x266784AD0](v51, -1, -1);

          v56 = v105;
          v57 = v50;
        }

        else
        {

          v56 = v47;
          v57 = v15;
        }

        v100(v56, v57);
        sub_2662DB1B4(v46, v45, v104, a3, a4, v107, v108);

        return;
      }

      v58 = v106;
      (v101)(v106, v103, v15);

      v59 = sub_2664DFE18();
      v60 = sub_2664E06E8();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v104 = v15;
        v62 = v61;
        v102 = swift_slowAlloc();
        v113[0] = v102;
        *v62 = 136446722;
        *(v62 + 4) = sub_2662A320C(a3, a4, v113);
        *(v62 + 12) = 2080;
        swift_beginAccess();
        v101 = v59;

        v105 = a4;
        v64 = MEMORY[0x2667834D0](v63, MEMORY[0x277D837D0]);
        LODWORD(v99) = v60;
        v65 = v64;
        v103 = a9;
        v67 = v66;

        v68 = sub_2662A320C(v65, v67, v113);
        v14 = v103;

        *(v62 + 14) = v68;
        *(v62 + 22) = 2080;
        v69 = MEMORY[0x2667834D0](v43, MEMORY[0x277D837D0]);
        v71 = sub_2662A320C(v69, v70, v113);

        *(v62 + 24) = v71;
        a4 = v105;
        v72 = v101;
        _os_log_impl(&dword_26629C000, v101, v99, "SiriAudioAppPredictor#predict [%{public}s] replacing disambiguation:%s with trimmed:%s", v62, 0x20u);
        v73 = v102;
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v73, -1, -1);
        v74 = v62;
        v15 = v104;
        MEMORY[0x266784AD0](v74, -1, -1);

        v75 = v106;
      }

      else
      {

        v75 = v58;
      }

      v100(v75, v15);
      swift_beginAccess();
      *(v14 + 16) = v43;
    }

    a7 = v107;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v76 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v77 = v109;
  (*(v16 + 16))(v109, v76, v15);

  v78 = sub_2664DFE18();
  v79 = sub_2664E06E8();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v104 = v15;
    v82 = v81;
    v112[0] = v81;
    *v80 = 136446722;
    *(v80 + 4) = sub_2662A320C(a3, a4, v112);
    *(v80 + 12) = 2082;
    swift_beginAccess();
    v105 = a4;

    v106 = a3;
    v84 = v14;
    v85 = MEMORY[0x2667834D0](v83, MEMORY[0x277D837D0]);
    v87 = v86;

    v88 = v85;
    v14 = v84;
    v89 = sub_2662A320C(v88, v87, v112);

    *(v80 + 14) = v89;
    *(v80 + 22) = 2082;
    v90 = sub_2664E01D8();
    v92 = sub_2662A320C(v90, v91, v112);
    a4 = v105;

    *(v80 + 24) = v92;
    a3 = v106;
    a7 = v107;
    _os_log_impl(&dword_26629C000, v78, v79, "SiriAudioAppPredictor#predict [%{public}s] complete with disambiguation result for bundle identifiers: %{public}s with original confidences: %{public}s", v80, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v82, -1, -1);
    MEMORY[0x266784AD0](v80, -1, -1);

    (*(v16 + 8))(v109, v104);
  }

  else
  {

    (*(v16 + 8))(v77, v15);
  }

  swift_beginAccess();
  v93 = *(v14 + 16);
  v94 = type metadata accessor for SiriAudioAppPredictorResult();
  v95 = objc_allocWithZone(v94);
  v96 = &v95[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
  *v96 = a3;
  *(v96 + 1) = a4;
  v97 = &v95[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
  *v97 = 0;
  *(v97 + 1) = 0;
  *&v95[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = v93;
  v111.receiver = v95;
  v111.super_class = v94;

  v98 = objc_msgSendSuper2(&v111, sel_init);
  a7();
}

uint64_t sub_2662D9470(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  ObjectType = swift_getObjectType();
  v6 = sub_2664E0038();
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664E00B8();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = a1;
    v20 = v11;
    v21 = v8;
    v22 = v6;
    v23 = a2;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "SiriAudioAppPredictor#predict...", v19, 2u);
    v25 = v24;
    a2 = v23;
    v6 = v22;
    v8 = v21;
    v11 = v20;
    a1 = v41;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  v26 = a1;
  v27 = sub_2664E06F8();
  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v28 = sub_2664E08F8();
  v29 = sub_2664E08F8();
  v30 = [objc_allocWithZone(MEMORY[0x277CD3F10]) initWithAppSelectionEnabled:v28 appInferred:v29 audioSearchResults:0];

  [v27 setPrivatePlayMediaIntentData_];
  v31._object = 0x80000002664F3F30;
  v31._countAndFlagsBits = 0xD00000000000001DLL;
  INIntent.setLaunchId(launchId:caller:)(0, v31);
  if (qword_280F912A8 != -1)
  {
    swift_once();
  }

  v32 = swift_allocObject();
  v33 = v44;
  v32[2] = v43;
  v32[3] = v33;
  v34 = v45;
  v32[4] = v45;
  v32[5] = v26;
  v32[6] = a2;
  v32[7] = v27;
  v32[8] = ObjectType;
  aBlock[4] = sub_2662DB1A0;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_3;
  v35 = _Block_copy(aBlock);
  v36 = v26;

  v37 = v34;
  v38 = a2;
  v39 = v27;
  sub_2664E0068();
  v49 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v11, v8, v35);
  _Block_release(v35);

  (*(v48 + 8))(v8, v6);
  (*(v46 + 8))(v11, v47);
}

uint64_t sub_2662D9ADC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "SiriAudioAppPredictor#unsafeReleaseModel Releasing app prediction model", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (qword_280F8F6F0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_280F91C10, qword_280F91C28);
  sub_2662D9E08();
  return a1(1);
}

uint64_t sub_2662D9D5C()
{
  v1 = *v0;

  return v1;
}

id sub_2662D9DAC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2662D9E08()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = *(v0 + 16);
  sub_2662A98AC();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v7, v2);

  v8 = sub_2664DFE18();
  v9 = sub_2664E06E8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v28 = v6;
    v11 = v10;
    v12 = swift_slowAlloc();
    *&v30[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2662A320C(*&v1[*(*v1 + 128)], *&v1[*(*v1 + 128) + 8], v30);
    _os_log_impl(&dword_26629C000, v8, v9, "AtomicValue#reset [%{public}s] resetting value", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_2662DC04C(v29);
  v13 = &v1[*(*v1 + 112)];
  swift_beginAccess();
  v14 = v13[9];
  v30[8] = v13[8];
  v30[9] = v14;
  v15 = v13[11];
  v30[10] = v13[10];
  v30[11] = v15;
  v16 = v13[5];
  v30[4] = v13[4];
  v30[5] = v16;
  v17 = v13[7];
  v30[6] = v13[6];
  v30[7] = v17;
  v18 = v13[1];
  v30[0] = *v13;
  v30[1] = v18;
  v19 = v13[3];
  v30[2] = v13[2];
  v30[3] = v19;
  v20 = v29[9];
  v21 = v29[10];
  v22 = v29[7];
  v13[8] = v29[8];
  v13[9] = v20;
  v23 = v29[11];
  v13[10] = v21;
  v13[11] = v23;
  v24 = v29[5];
  v13[4] = v29[4];
  v13[5] = v24;
  v13[6] = v29[6];
  v13[7] = v22;
  v25 = v29[1];
  *v13 = v29[0];
  v13[1] = v25;
  v26 = v29[3];
  v13[2] = v29[2];
  v13[3] = v26;
  sub_2662A9238(v30, &qword_280073320, &unk_2664EF750);
  v1[24] = 0;
  return sub_2662AA89C();
}

uint64_t sub_2662DA108()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662A98AC();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_2664DFE18();
  v8 = sub_2664E06E8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_2662A320C(*&v1[*(*v1 + 128)], *&v1[*(*v1 + 128) + 8], v13);
    _os_log_impl(&dword_26629C000, v7, v8, "AtomicValue#reset [%{public}s] resetting value", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266784AD0](v10, -1, -1);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v11 = &v1[*(*v1 + 112)];
  swift_beginAccess();
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;

  v1[24] = 0;
  return sub_2662AA89C();
}

uint64_t sub_2662DA3AC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2663B88D8(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_2664E0D28();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 8);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072598, &unk_2664E3B50);
      v7 = sub_2664E04F8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_2662DA51C(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2662DA51C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2663B88C4(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2662DAAE0((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_266384948(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_266384948((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_2662DAAE0((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 1) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 1);
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v35;
    *(v33 - 1) = v31;
    *(v33 - 3) = v34;
    v33 -= 3;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_2662DAAE0(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_2662DAD1C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *))
{
  v8 = *a1;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v8);
}

unint64_t sub_2662DADE8(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2662DAE90(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_2662DAECC(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2662DAF0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = a2;
    v16 = a1;
    v17 = v15;
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_2662A320C(a3, a4, &v24);
    _os_log_impl(&dword_26629C000, v13, v14, "SiriAudioAppPredictor#disambiguationSelected [%{public}s]...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x266784AD0](v18, -1, -1);
    v19 = v17;
    a1 = v16;
    a2 = v23;
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  type metadata accessor for AppSelectionContext();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  v20[5] = a2;

  static AppSelectionContext.shared(refId:completion:)(a3, a4, sub_2662DBFDC, v20);
}

void sub_2662DB1B4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7)
{
  v56 = a7;
  v57 = a5;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  if (_s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(a1, a2))
  {
    v19 = [a3 privatePlayMediaIntentData];
    v55 = a6;
    if (v19 && (v21 = v19, v22 = [v19 audioSearchResults], v21, v22))
    {
      sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
      v23 = sub_2664E04A8();
    }

    else
    {
      v23 = 0;
    }

    v61.value._rawValue = v23;
    v61.is_nil = 0;
    v34 = INIntent.firstPartyResultsBundleIdentifier(internalSearchResults:canUseClassical:)(v61, v20);
    countAndFlagsBits = v34._countAndFlagsBits;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v18, v36, v12);
    v37 = v12;
    v38 = v57;

    v39 = sub_2664DFE18();
    v40 = sub_2664E06E8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v59 = v42;
      *v41 = 136446466;
      *(v41 + 4) = sub_2662A320C(a4, v57, &v59);
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_2662A320C(v34._countAndFlagsBits, v34._object, &v59);
      _os_log_impl(&dword_26629C000, v39, v40, "SiriAudioAppPredictor#finishSelect [%{public}s] complete with updated first party bundle identifier to: %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v42, -1, -1);
      v43 = v41;
      countAndFlagsBits = v34._countAndFlagsBits;
      v38 = v57;
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    (*(v13 + 8))(v18, v37);
    a6 = v55;
    v44 = type metadata accessor for SiriAudioAppPredictorResult();
    v45 = objc_allocWithZone(v44);
    v46 = &v45[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
    *v46 = a4;
    *(v46 + 1) = v38;
    v47 = &v45[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
    *v47 = countAndFlagsBits;
    v47[1] = v34._object;
    *&v45[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = 0;
    v58.receiver = v45;
    v58.super_class = v44;

    v48 = objc_msgSendSuper2(&v58, sel_init);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v16, v24, v12);
    v25 = v12;
    v26 = v57;

    v27 = sub_2664DFE18();
    v28 = sub_2664E06E8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v54 = v25;
      v30 = v29;
      v31 = swift_slowAlloc();
      v55 = a6;
      v32 = v31;
      v59 = v31;
      *v30 = 136446466;
      *(v30 + 4) = sub_2662A320C(a4, v26, &v59);
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_2662A320C(a1, a2, &v59);
      _os_log_impl(&dword_26629C000, v27, v28, "SiriAudioAppPredictor#finishSelect [%{public}s] complete with selected: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      v33 = v32;
      a6 = v55;
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v30, -1, -1);

      (*(v13 + 8))(v16, v54);
    }

    else
    {

      (*(v13 + 8))(v16, v25);
    }

    v49 = type metadata accessor for SiriAudioAppPredictorResult();
    v50 = objc_allocWithZone(v49);
    v51 = &v50[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
    *v51 = a4;
    *(v51 + 1) = v26;
    v52 = &v50[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
    *v52 = a1;
    *(v52 + 1) = a2;
    *&v50[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = 0;
    v60.receiver = v50;
    v60.super_class = v49;

    v48 = objc_msgSendSuper2(&v60, sel_init);
  }

  v53 = v48;
  a6();
}

uint64_t _s16SiriAudioSupport0aB12AppPredictorC18unsafeReleaseModel10completionyySbc_tFZ_0(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_2664E0038();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2664E00B8();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v8;
    v17 = v5;
    v18 = v3;
    v19 = v6;
    v20 = a1;
    v21 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "SiriAudioAppPredictor#unsafeReleaseModel Queueing app prediction model release", v16, 2u);
    v22 = v21;
    a1 = v20;
    v6 = v19;
    v3 = v18;
    v5 = v17;
    v8 = v27;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  if (qword_280F912A8 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  v24 = v28;
  *(v23 + 16) = a1;
  *(v23 + 24) = v24;
  aBlock[4] = sub_2662DBE28;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_47;
  v25 = _Block_copy(aBlock);

  sub_2664E0068();
  v31 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v8, v5, v25);
  _Block_release(v25);
  (*(v30 + 8))(v5, v3);
  (*(v6 + 8))(v8, v29);
}

unint64_t sub_2662DBBF0()
{
  result = qword_280072588;
  if (!qword_280072588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072588);
  }

  return result;
}

uint64_t objectdestroy_61Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662DBF1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2662DBF34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072590, &qword_2664E3B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_73Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_2662DC04C(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2662DC078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2662DC0C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

SiriAudioSupport::MusicSubscriptionStatus_optional __swiftcall MusicSubscriptionStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SiriAudioSupport::MusicSubscriptionType_optional __swiftcall MusicSubscriptionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2662DC16C()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

uint64_t sub_2662DC1B4(uint64_t a1)
{
  v2 = *v1;
  sub_2664E0E68();
  MEMORY[0x266783E90](v2);
  return sub_2664E0EB8();
}

SiriAudioSupport::SubscriptionDetails __swiftcall SubscriptionDetails.init(musicSubscriptionStatus:musicSubscriptionType:)(SiriAudioSupport::MusicSubscriptionStatus musicSubscriptionStatus, SiriAudioSupport::MusicSubscriptionType musicSubscriptionType)
{
  v3 = *musicSubscriptionType;
  *v2 = *musicSubscriptionStatus;
  v2[1] = v3;
  result.musicSubscriptionStatus = musicSubscriptionStatus;
  return result;
}

SiriAudioSupport::SubscriptionDetails __swiftcall SubscriptionProvider.statusSync(bypassingCache:)(Swift::Bool bypassingCache)
{
  v2 = bypassingCache;
  v3 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  v7 = v5;
  SubscriptionProvider.status(bypassingCache:completion:)(v2, sub_2662DC320, v6);

  sub_2664E0878();

  swift_beginAccess();
  *v3 = *(v4 + 16);
}

uint64_t sub_2662DC320(__int16 *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  swift_beginAccess();
  *(v2 + 16) = v3;
  return sub_2664E0888();
}

uint64_t SubscriptionProvider.token(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280F91508;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "subscriptionProviderToken";
  *(v16 + 24) = 25;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = sub_2662DE2C8;
  v17[1] = v11;

  sub_2664E0848();
  sub_2664DFDD8();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2662DE3C4;
  *(v18 + 24) = v16;

  sub_2662DC63C(sub_2662DE46C, v18);

  return (*(v5 + 8))(v10, v4);
}

void sub_2662DC63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = qword_280F914E8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v10, v4);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "SubscriptionProvider#token Requesting Music user token...", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v14 = [objc_opt_self() sharedProvider];
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2662DEAB0;
  *(v15 + 24) = v8;
  aBlock[4] = sub_2662DEAB8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26639F104;
  aBlock[3] = &block_descriptor_83_0;
  v16 = _Block_copy(aBlock);

  [v14 getTokenForcingRefresh:0 completion:v16];
  _Block_release(v16);
}

uint64_t sub_2662DC8F0(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v49 = a4;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v46 = *(v8 + 16);
  v46(v12, v13, v7);

  v14 = sub_2664DFE18();
  v52 = v8;
  v15 = v14;
  v16 = sub_2664E06C8();

  v17 = os_log_type_enabled(v15, v16);
  v50 = a1;
  v51 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v48 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v45 = a3;
    v21 = v20;
    v53 = v20;
    *v19 = 136315138;
    v22 = a2 == 0;
    v23 = a2;
    if (a2)
    {
      v24 = a1;
    }

    else
    {
      v24 = 0x3E6C696E3CLL;
    }

    v25 = v13;
    if (v22)
    {
      v26 = 0xE500000000000000;
    }

    else
    {
      v26 = v23;
    }

    v27 = sub_2662A320C(v24, v26, &v53);
    v13 = v25;

    *(v19 + 4) = v27;
    _os_log_impl(&dword_26629C000, v15, v16, "SubscriptionProvider#tokenToken received as: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v28 = v21;
    a3 = v45;
    MEMORY[0x266784AD0](v28, -1, -1);
    v29 = v19;
    v7 = v48;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v30 = *(v52 + 8);
  v30(v12, v7);
  if (a3)
  {
    v31 = v47;
    v46(v47, v13, v7);
    v32 = a3;
    v33 = sub_2664DFE18();
    v34 = sub_2664E06D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v7;
      v37 = v36;
      v53 = v36;
      *v35 = 136315138;
      swift_getErrorValue();
      v38 = sub_2664E0DE8();
      v40 = a3;
      v41 = sub_2662A320C(v38, v39, &v53);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_26629C000, v33, v34, "SubscriptionProvider#tokenError retrieving token: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);

      v42 = v31;
      v43 = v48;
    }

    else
    {

      v42 = v31;
      v43 = v7;
    }

    v30(v42, v43);
  }

  return v49(v50, v51);
}

uint64_t SubscriptionProvider.updateUserContext(queue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_280F91508;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "subscriptionProviderUpdateUserContext";
  *(v17 + 24) = 37;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_2662D2B60;
  v18[1] = v12;

  sub_2664E0848();
  sub_2664DFDD8();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2662D3010;
  *(v19 + 24) = v17;

  sub_2662DCF9C(sub_2662DAE90, v19, v22);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_2662DCF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v5 = sub_2664E0038();
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664E00B8();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v42 = v15;
  v16 = qword_280F914E8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v14, v17, v11);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "SubscriptionProvider#updateUserContext Updating user context", v20, 2u);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v57 = sub_2662DEA88;
  v58 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v45 = &v55;
  v55 = sub_2662A3F90;
  v56 = &block_descriptor_4;
  v23 = _Block_copy(&aBlock);
  v24 = v21;
  v25 = v10;
  sub_2664E0068();
  v52 = MEMORY[0x277D84F90];
  v48 = sub_2662A6120();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v40[1] = sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v10, v7, v23);
  _Block_release(v23);
  v43 = *(v51 + 8);
  v51 += 8;
  v43(v7, v5);
  v26 = *(v49 + 8);
  v49 += 8;
  v46 = v26;
  v26(v10, v50);

  dispatch_group_enter(v24);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  v57 = sub_2662DEA90;
  v58 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_2662A3F90;
  v56 = &block_descriptor_59;
  v28 = _Block_copy(&aBlock);
  v29 = v24;
  sub_2664E0068();
  v52 = MEMORY[0x277D84F90];
  sub_2664E0A08();
  MEMORY[0x266783800](0, v10, v7, v28);
  _Block_release(v28);
  v30 = v43;
  v43(v7, v5);
  v46(v25, v50);

  dispatch_group_enter(v29);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  v57 = sub_2662DEA98;
  v58 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_2662A3F90;
  v56 = &block_descriptor_65_1;
  v32 = _Block_copy(&aBlock);
  v41 = v29;
  sub_2664E0068();
  v52 = MEMORY[0x277D84F90];
  sub_2664E0A08();
  MEMORY[0x266783800](0, v25, v7, v32);
  _Block_release(v32);
  v30(v7, v5);
  v33 = v50;
  v34 = v46;
  v46(v25, v50);

  v35 = swift_allocObject();
  v36 = v42;
  *(v35 + 16) = sub_2662D2B74;
  *(v35 + 24) = v36;
  v57 = sub_2662DEAA0;
  v58 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_2662A3F90;
  v56 = &block_descriptor_71_0;
  v37 = _Block_copy(&aBlock);
  sub_2664E0068();
  v52 = MEMORY[0x277D84F90];
  sub_2664E0A08();
  v38 = v41;
  sub_2664E0758();
  _Block_release(v37);

  v43(v7, v5);
  v34(v25, v33);
}

uint64_t sub_2662DD754(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  SubscriptionProvider.status(bypassingCache:completion:)(0, sub_2662DEAA8, v2);
}

void sub_2662DD7C8(char *a1, NSObject *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [objc_allocWithZone(MEMORY[0x277CD3DD8]) init];
  v10 = [objc_opt_self() songsQuery];
  [v10 setEntityLimit_];
  [v10 _countOfItems];
  sub_2664E0828();
  [v9 setSubscriptionStatus_];
  v11 = [objc_opt_self() sharedStore];
  v12 = sub_2664E02A8();
  [v11 storeUserContext:v9 forBundleIdentifier:v12];

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v13, v4);
  v14 = v9;
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = [v14 subscriptionStatus];
    *(v17 + 12) = 2048;
    v18 = sub_2664E0818();
    if (v19)
    {
      v20 = -1;
    }

    else
    {
      v20 = v18;
    }

    *(v17 + 14) = v20;

    _os_log_impl(&dword_26629C000, v15, v16, "SubscriptionProvider#updateUserContext updated user context for Music. subscriptionStatus: %ld, numberOfLibraryItems: %ld", v17, 0x16u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  else
  {

    v15 = v14;
  }

  (*(v5 + 8))(v7, v4);
  dispatch_group_leave(a2);
}

void sub_2662DDADC(NSObject *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CD3DD8]) init];
  v7 = [objc_opt_self() podcastsQuery];
  [v7 _countOfItems];

  sub_2664E0828();
  [v6 setSubscriptionStatus_];
  v8 = [objc_opt_self() sharedStore];
  v9 = sub_2664E02A8();
  [v8 storeUserContext:v6 forBundleIdentifier:v9];

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v10, v2);
  v11 = v6;
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = [v11 subscriptionStatus];
    *(v14 + 12) = 2048;
    v15 = sub_2664E0818();
    if (v16)
    {
      v17 = -1;
    }

    else
    {
      v17 = v15;
    }

    *(v14 + 14) = v17;

    _os_log_impl(&dword_26629C000, v12, v13, "SubscriptionProvider#updateUserContext updated user context for Podcasts. subscriptionStatus: %ld, numberOfLibraryItems: %ld", v14, 0x16u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  (*(v3 + 8))(v5, v2);
  dispatch_group_leave(a1);
}

void sub_2662DDDCC(NSObject *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CD3DD8]) init];
  v7 = [objc_opt_self() audiobooksQuery];
  [v7 _countOfItems];

  sub_2664E0828();
  [v6 setSubscriptionStatus_];
  v8 = [objc_opt_self() sharedStore];
  v9 = sub_2664E02A8();
  [v8 storeUserContext:v6 forBundleIdentifier:v9];

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v10, v2);
  v11 = v6;
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = [v11 subscriptionStatus];
    *(v14 + 12) = 2048;
    v15 = sub_2664E0818();
    if (v16)
    {
      v17 = -1;
    }

    else
    {
      v17 = v15;
    }

    *(v14 + 14) = v17;

    _os_log_impl(&dword_26629C000, v12, v13, "SubscriptionProvider#updateUserContext updated user context for Books. subscriptionStatus: %ld, numberOfLibraryItems: %ld", v14, 0x16u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  (*(v3 + 8))(v5, v2);
  dispatch_group_leave(a1);
}

uint64_t sub_2662DE0BC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "SubscriptionProvider#updateUserContext successfully updated media user context", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return a1(1);
}

uint64_t sub_2662DE2F8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *))
{
  v8 = *a1;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v8);
}

uint64_t sub_2662DE3C4(__int128 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2662DE2F8(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_2662DE46C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

unint64_t sub_2662DE4AC()
{
  result = qword_2800725A0;
  if (!qword_2800725A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800725A0);
  }

  return result;
}

unint64_t sub_2662DE504()
{
  result = qword_2800725A8;
  if (!qword_2800725A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800725A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicSubscriptionStatus(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicSubscriptionStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicSubscriptionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicSubscriptionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionDetails(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for SubscriptionDetails(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionProvider(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SubscriptionProvider(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

SiriAudioSupport::PlaybackRepeatMode_optional __swiftcall PlaybackRepeatMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PlaybackRepeatMode.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 7105633;
  v4 = 0x6E776F6E6B6E75;
  if (v1 != 3)
  {
    v4 = 0x726F707075736E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6647407;
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

unint64_t sub_2662DEC0C()
{
  result = qword_2800725B0;
  if (!qword_2800725B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800725B0);
  }

  return result;
}

uint64_t sub_2662DEC60()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2662DED34(uint64_t a1)
{
  sub_2664E0368();
}

uint64_t sub_2662DEDF4(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

void sub_2662DEED0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE300000000000000;
  v6 = 7105633;
  v7 = 0xE700000000000000;
  v8 = 0x6E776F6E6B6E75;
  if (v2 != 3)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6647407;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_2662DEF64()
{
  result = qword_2800725B8;
  if (!qword_2800725B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800725C0, &qword_2664E3EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800725B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackRepeatMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackRepeatMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2662DF128()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (v5 == 1)
  {
    LOBYTE(v5) = 0;
    v6 = 3;
  }

  else if (*v0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v1, qword_280F914F0);
    swift_beginAccess();
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_2664DFE18();
    v9 = sub_2664E06D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_26629C000, v8, v9, "DisambiguateItemsReason.asSelfResolutionType: Called with unmapped DisambiguateItemsReason, which is an error", v10, 2u);
      MEMORY[0x266784AD0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v6 = 0;
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = 2;
  }

  return v6 | (v5 << 32);
}

uint64_t sub_2662DF30C()
{
  if (qword_280F8FA20 != -1)
  {
    swift_once();
  }

  v0 = swift_retain_n();
  v1 = sub_2662DFCF8(v0);

  qword_280F91C78 = v1;
  return result;
}

uint64_t sub_2662DF384(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = qword_280F914E8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v12, v6);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "NowPlayingUsageCache: recomputing bundle affinity", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2662C0CAC;
  *(v16 + 24) = v10;
  sub_2664C8F4C(sub_2662DFEB4, v16);
}

uint64_t sub_2662DF5C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26629C000, v9, v10, "NowPlayingUsageCache: done recomputing bundle affinity", v11, 2u);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return a2(a1);
}

uint64_t sub_2662DF794(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "NowPlayingUsageCache: retrieving bundle affinity", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(v3 + 16);

  sub_266310808(0x4014000000000000, 0, v14, a1, a2);
}

uint64_t sub_2662DF980(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = *a1;
  if (v11)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v12, v4);
    v13 = sub_2664DFE18();
    v14 = sub_2664E06C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26629C000, v13, v14, "NowPlayingUsageCache: retrieved affinity from usage provider", v15, 2u);
      MEMORY[0x266784AD0](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return a2(v11);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v10, v17, v4);
    v18 = sub_2664DFE18();
    v19 = sub_2664E06D8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26629C000, v18, v19, "NowPlayingUsageCache: Unable to get affinity from usage provider", v20, 2u);
      MEMORY[0x266784AD0](v20, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    sub_266385ABC(MEMORY[0x277D84F90]);
    (a2)();
  }
}

uint64_t sub_2662DFC9C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2662DFCF8(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingUsageProvider();
  v15[3] = v2;
  v15[4] = &off_2877F4DC8;
  v15[0] = a1;
  type metadata accessor for NowPlayingUsageCache();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v15, v2);
  MEMORY[0x28223BE20](v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v14[3] = v2;
  v14[4] = &off_2877F4DC8;
  v14[0] = v8;
  *(v3 + 24) = 0x4014000000000000;
  sub_2662A5550(v14, v13);
  v9 = swift_allocObject();
  sub_2662A8618(v13, v9 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800725C8, &qword_2664E4088);
  swift_allocObject();
  v10 = sub_2662EDC64();

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  *(v3 + 16) = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v3;
}

uint64_t sub_2662DFEC0()
{
  type metadata accessor for InternalSignalsManager();
  v0 = swift_allocObject();
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000001ALL, 0x80000002664F42E0, 1, v3);
  *(v0 + 16) = result;
  off_2800725D0 = v0;
  return result;
}

uint64_t static InternalSignalsManager.doesIntent(_:haveInternalSignalWith:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  if (qword_280071A88 != -1)
  {
LABEL_20:
    swift_once();
  }

  v42 = v12;
  v46 = off_2800725D0;

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v44 = *(v7 + 16);
  v44(v14, v15, v6);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v48 = v15;
    v19 = a1;
    v20 = v7;
    v21 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "InternalSignalsManager#doesIntent#haveInternalSignalWith (lock aquired)", v18, 2u);
    v22 = v21;
    v7 = v20;
    a1 = v19;
    v15 = v48;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = *(v7 + 8);
  v47 = v7 + 8;
  v48 = v6;
  v45 = v23;
  v23(v14, v6);
  v24 = _s16SiriAudioSupport22InternalSignalsManagerC08internalE03forSaySSGSo8INIntentC_tFZ_0(a1);
  v12 = v24;
  v7 = *(v24 + 16);
  if (v7)
  {
    v25 = 0;
    v6 = (v24 + 40);
    while (1)
    {
      if (v25 >= *(v12 + 2))
      {
        __break(1u);
        goto LABEL_20;
      }

      v14 = *(v6 - 1);
      a1 = *v6;

      if (sub_2664E03F8())
      {
        break;
      }

      ++v25;
      v6 += 2;
      if (v7 == v25)
      {
        goto LABEL_11;
      }
    }

    v33 = v42;
    v34 = v48;
    v44(v42, v15, v48);

    v35 = sub_2664DFE18();
    v36 = sub_2664E06E8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = 136315138;
      v39 = sub_2662A320C(v14, a1, &v49);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_26629C000, v35, v36, "InternalSignalsManager#doesIntent#haveInternalSignalWith %s is present. (unlock)", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    else
    {
    }

    v45(v33, v34);
    v32 = 1;
  }

  else
  {
LABEL_11:

    v26 = v43;
    v27 = v48;
    v44(v43, v15, v48);

    v28 = sub_2664DFE18();
    v29 = sub_2664E06E8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_2662A320C(a2, a3, &v49);
      _os_log_impl(&dword_26629C000, v28, v29, "InternalSignalsManager#doesIntenthaveInternalSignalWith prefix: %s is not present in intent. (unlock)", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x266784AD0](v31, -1, -1);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    v45(v26, v27);
    v32 = 0;
  }

  sub_2662AA89C();

  return v32;
}

uint64_t sub_2662E0500(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v48 = v9;

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v16 = *(v6 + 16);
  v51 = v6 + 16;
  v52 = v15;
  v50 = v16;
  v16(v14, v15, v5);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v5;
    v20 = a1;
    v21 = a2;
    v22 = v12;
    v23 = v6;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "InternalSignalsManager#add#fromPlayMediaIntent (lock aquired)", v24, 2u);
    v25 = v24;
    v6 = v23;
    v12 = v22;
    a2 = v21;
    a1 = v20;
    v5 = v19;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v28 = *(v6 + 8);
  v26 = (v6 + 8);
  v27 = v28;
  v28(v14, v5);
  v29 = [v49 backingStore];
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (v30)
  {
    v31 = v30;
    v49 = v26;
    v32 = [v30 privatePlayMediaIntentData];
    if (!v32)
    {
      v33 = [objc_allocWithZone(MEMORY[0x277CD4390]) init];
      [v31 setPrivatePlayMediaIntentData_];
      v32 = v33;
    }

    v34 = [v31 privatePlayMediaIntentData];
    if (v34)
    {
      v35 = v34;
      v36 = sub_2664E02A8();
      [v35 addInternalSignal_];
    }

    v50(v12, v52, v5);

    v37 = sub_2664DFE18();
    v38 = sub_2664E06E8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = a2;
      v42 = v40;
      v53 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_2662A320C(a1, v41, &v53);
      _os_log_impl(&dword_26629C000, v37, v38, "InternalSignalsManager#add#fromPlayMediaIntent added %s to playMediaIntent. (unlock)", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v27(v12, v5);

    sub_2662AA89C();
  }

  else
  {

    v44 = v48;
    v50(v48, v52, v5);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06D8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_26629C000, v45, v46, "InternalSignalsManager#add#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v47, 2u);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    v27(v44, v5);
    return sub_2662AA89C();
  }
}

uint64_t sub_2662E0A3C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2662E0B20(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t InternalSignalsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2662E0B34(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v43 = a1;
  v44 = a3;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v42 = a2;
  v45 = off_2800725D0;

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v10;
    v18 = v5;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "InternalSignalsManager#add#fromAddMediaIntent (lock aquired)", v19, 2u);
    v20 = v19;
    v5 = v18;
    v10 = v17;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v21(v12, v4);
  v22 = [v44 backingStore];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v44 = v21;
    v25 = [v23 privateAddMediaIntentData];
    if (!v25)
    {
      v26 = [objc_allocWithZone(MEMORY[0x277CD4378]) init];
      [v24 setPrivateAddMediaIntentData_];
      v25 = v26;
    }

    v27 = [v24 privateAddMediaIntentData];
    v28 = v42;
    if (v27)
    {
      v29 = v27;
      v30 = sub_2664E02A8();
      [v29 addInternalSignal_];
    }

    v14(v10, v13, v4);

    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2662A320C(v43, v28, &v46);
      _os_log_impl(&dword_26629C000, v31, v32, "InternalSignalsManager#add#fromAddMediaIntent added %s to addMediaIntent. (unlock)", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v44(v10, v4);

    sub_2662AA89C();
  }

  else
  {

    v35 = v41;
    v14(v41, v13, v4);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "InternalSignalsManager#add#fromAddMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v21(v35, v4);

    sub_2662AA89C();
  }
}

uint64_t sub_2662E1094(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v43 = a1;
  v44 = a3;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v42 = a2;
  v45 = off_2800725D0;

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v10;
    v18 = v5;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent (lock aquired)", v19, 2u);
    v20 = v19;
    v5 = v18;
    v10 = v17;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v21(v12, v4);
  v22 = [v44 backingStore];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v44 = v21;
    v25 = [v23 privateUpdateMediaAffinityIntentData];
    if (!v25)
    {
      v26 = [objc_allocWithZone(MEMORY[0x277CD43A0]) init];
      [v24 setPrivateUpdateMediaAffinityIntentData_];
      v25 = v26;
    }

    v27 = [v24 privateUpdateMediaAffinityIntentData];
    v28 = v42;
    if (v27)
    {
      v29 = v27;
      v30 = sub_2664E02A8();
      [v29 addInternalSignal_];
    }

    v14(v10, v13, v4);

    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2662A320C(v43, v28, &v46);
      _os_log_impl(&dword_26629C000, v31, v32, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent added %s to updateMediaIntent. (unlock)", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v44(v10, v4);

    sub_2662AA89C();
  }

  else
  {

    v35 = v41;
    v14(v41, v13, v4);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent Unexpected backing store error while adding internal signal. (unlock)", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v21(v35, v4);

    sub_2662AA89C();
  }
}

uint64_t sub_2662E15F4(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v43 = a1;
  v44 = a3;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v42 = a2;
  v45 = off_2800725D0;

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v10;
    v18 = v5;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "InternalSignalsManager#add#fromSearchMediaIntent (lock aquired)", v19, 2u);
    v20 = v19;
    v5 = v18;
    v10 = v17;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v21(v12, v4);
  v22 = [v44 backingStore];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v44 = v21;
    v25 = [v23 privateSearchForMediaIntentData];
    if (!v25)
    {
      v26 = [objc_allocWithZone(MEMORY[0x277CD4398]) init];
      [v24 setPrivateSearchForMediaIntentData_];
      v25 = v26;
    }

    v27 = [v24 privateSearchForMediaIntentData];
    v28 = v42;
    if (v27)
    {
      v29 = v27;
      v30 = sub_2664E02A8();
      [v29 addInternalSignal_];
    }

    v14(v10, v13, v4);

    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2662A320C(v43, v28, &v46);
      _os_log_impl(&dword_26629C000, v31, v32, "InternalSignalsManager#add#fromSearchMediaIntent added %s to searchMediaIntent. (unlock)", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v44(v10, v4);

    sub_2662AA89C();
  }

  else
  {

    v35 = v41;
    v14(v41, v13, v4);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "InternalSignalsManager#add#fromSearchMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v21(v35, v4);

    sub_2662AA89C();
  }
}

uint64_t _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0(uint64_t a1, unint64_t a2, void *a3)
{
  v41 = a1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v38 = *(v6 + 16);
  v39 = v11;
  v38(v10, v11, v5);

  v12 = a3;
  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = v5;
    v16 = a2;
    v17 = v15;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    *v17 = 136315394;
    *(v17 + 4) = sub_2662A320C(v41, v16, &v42);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v12;
    *v18 = v12;
    v20 = v12;
    _os_log_impl(&dword_26629C000, v13, v14, "InternalSignalsManager#add signal: %s, to intent: %@...", v17, 0x16u);
    sub_2662E4324(v18);
    MEMORY[0x266784AD0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    v21 = v17;
    a2 = v16;
    v5 = v37;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v22 = *(v6 + 8);
  v22(v10, v5);
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    if (qword_280071A88 != -1)
    {
      swift_once();
    }

    return sub_2662E0500(v41, a2, v24);
  }

  else
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      if (qword_280071A88 != -1)
      {
        swift_once();
      }

      return sub_2662E0B34(v41, a2, v27);
    }

    else
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        if (qword_280071A88 != -1)
        {
          swift_once();
        }

        return sub_2662E1094(v41, a2, v29);
      }

      else
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v31 = v30;
          if (qword_280071A88 != -1)
          {
            swift_once();
          }

          return sub_2662E15F4(v41, a2, v31);
        }

        else
        {
          v32 = v40;
          v38(v40, v39, v5);
          v33 = sub_2664DFE18();
          v34 = sub_2664E06D8();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_26629C000, v33, v34, "InternalSignalsManager#add Unexpected intent type when adding internal signal", v35, 2u);
            MEMORY[0x266784AD0](v35, -1, -1);
          }

          return (v22)(v32, v5);
        }
      }
    }
  }
}

uint64_t _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  if (qword_280071A88 != -1)
  {
LABEL_19:
    swift_once();
  }

  v48 = v10;
  v52 = off_2800725D0;

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v50 = *(v5 + 16);
  v50(v12, v13, v4);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v54 = v13;
    v17 = a3;
    v18 = v5;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "InternalSignalsManager#getSignal (lock aquired)", v16, 2u);
    v20 = v19;
    v5 = v18;
    a3 = v17;
    v13 = v54;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v53 = v5 + 8;
  v54 = v4;
  v51 = v21;
  v21(v12, v4);
  v22 = _s16SiriAudioSupport22InternalSignalsManagerC08internalE03forSaySSGSo8INIntentC_tFZ_0(a3);
  v10 = v22;
  v5 = *(v22 + 16);
  if (v5)
  {
    v23 = 0;
    v4 = (v22 + 40);
    while (1)
    {
      if (v23 >= *(v10 + 2))
      {
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v4 - 1);
      a3 = *v4;

      if (sub_2664E03F8())
      {
        break;
      }

      ++v23;
      v4 += 2;
      if (v5 == v23)
      {
        goto LABEL_11;
      }
    }

    v30 = v48;
    v31 = v54;
    v50(v48, v13, v54);
    v32 = v30;

    v33 = sub_2664DFE18();
    v34 = sub_2664E06E8();

    v35 = v33;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2662A320C(v12, a3, &v55);
      _os_log_impl(&dword_26629C000, v35, v34, "InternalSignalsManager#getSignal returning signal: %s. (unlock)", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    else
    {
    }

    v51(v32, v31);

    sub_2662AA89C();

    v38 = sub_2664E0378();
    v39 = sub_2664ACFCC(v38, v12, a3);
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = MEMORY[0x266783360](v39, v41, v43, v45);

    return v46;
  }

  else
  {
LABEL_11:

    v24 = v49;
    v25 = v54;
    v50(v49, v13, v54);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06E8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "InternalSignalsManager#getSignal could not find signal. (unlock)", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    v51(v24, v25);

    sub_2662AA89C();

    return 0;
  }
}

uint64_t sub_2662E2594(uint64_t a1, unint64_t a2, void *a3)
{
  v58 = a1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v54 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v57 = off_2800725D0;

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v55 = *(v6 + 16);
  v55(v13, v14, v5);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v56 = (v6 + 16);
    v18 = a2;
    v19 = v9;
    v20 = v5;
    v21 = v14;
    v22 = v6;
    v23 = a3;
    v24 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "InternalSignalsManager#remove#fromPlayMediaIntent (lock aquired)", v17, 2u);
    v25 = v24;
    a3 = v23;
    v6 = v22;
    v14 = v21;
    v5 = v20;
    v9 = v19;
    a2 = v18;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v56 = *(v6 + 8);
  v56(v13, v5);
  v26 = [a3 backingStore];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v53 = v27;
    v28 = [v27 privatePlayMediaIntentData];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 internalSignals];

      if (v30)
      {
        v31 = sub_2664E04A8();

        v32 = *(v31 + 16);
        v33 = v58;
        if (v32)
        {
          v34 = 0;
          v35 = (v31 + 40);
          while (*(v35 - 1) != v33 || *v35 != a2)
          {
            v37 = sub_2664E0D88();
            v33 = v58;
            if (v37)
            {
              break;
            }

            ++v34;
            v35 += 2;
            if (v32 == v34)
            {
              goto LABEL_18;
            }
          }

          v41 = [v53 privatePlayMediaIntentData];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 internalSignals];
            if (v43)
            {
              v44 = v43;
              v45 = sub_2664E04A8();

              v59 = v45;
              sub_2662E0A3C(v34);

              if (v59)
              {
                v46 = sub_2664E0488();
              }

              else
              {
                v46 = 0;
              }

              [v42 setInternalSignals_];
            }

            else
            {
              [v42 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v47 = v54;
    v55(v54, v14, v5);

    v48 = sub_2664DFE18();
    v49 = sub_2664E06E8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_2662A320C(v58, a2, &v59);
      _os_log_impl(&dword_26629C000, v48, v49, "InternalSignalsManager#remove#fromPlayMediaIntent removed %s from playMediaIntent. (unlock)", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    v56(v47, v5);

    sub_2662AA89C();
  }

  else
  {

    v55(v9, v14, v5);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "InternalSignalsManager#remove#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v56(v9, v5);

    sub_2662AA89C();
  }
}

uint64_t sub_2662E2BC8(uint64_t a1, unint64_t a2, void *a3)
{
  v58 = a1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v54 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v57 = off_2800725D0;

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v55 = *(v6 + 16);
  v55(v13, v14, v5);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v56 = (v6 + 16);
    v18 = a2;
    v19 = v9;
    v20 = v5;
    v21 = v14;
    v22 = v6;
    v23 = a3;
    v24 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "InternalSignalsManager#remove#fromAddMediaIntent (lock aquired)", v17, 2u);
    v25 = v24;
    a3 = v23;
    v6 = v22;
    v14 = v21;
    v5 = v20;
    v9 = v19;
    a2 = v18;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v56 = *(v6 + 8);
  v56(v13, v5);
  v26 = [a3 backingStore];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v53 = v27;
    v28 = [v27 privateAddMediaIntentData];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 internalSignals];

      if (v30)
      {
        v31 = sub_2664E04A8();

        v32 = *(v31 + 16);
        v33 = v58;
        if (v32)
        {
          v34 = 0;
          v35 = (v31 + 40);
          while (*(v35 - 1) != v33 || *v35 != a2)
          {
            v37 = sub_2664E0D88();
            v33 = v58;
            if (v37)
            {
              break;
            }

            ++v34;
            v35 += 2;
            if (v32 == v34)
            {
              goto LABEL_18;
            }
          }

          v41 = [v53 privateAddMediaIntentData];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 internalSignals];
            if (v43)
            {
              v44 = v43;
              v45 = sub_2664E04A8();

              v59 = v45;
              sub_2662E0A3C(v34);

              if (v59)
              {
                v46 = sub_2664E0488();
              }

              else
              {
                v46 = 0;
              }

              [v42 setInternalSignals_];
            }

            else
            {
              [v42 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v47 = v54;
    v55(v54, v14, v5);

    v48 = sub_2664DFE18();
    v49 = sub_2664E06E8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_2662A320C(v58, a2, &v59);
      _os_log_impl(&dword_26629C000, v48, v49, "InternalSignalsManager#remove#fromAddMediaIntent removed %s from addMediaIntent. (unlock)", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    v56(v47, v5);

    sub_2662AA89C();
  }

  else
  {

    v55(v9, v14, v5);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "InternalSignalsManager#remove#fromAddMediaIntent Unexpected backing store error adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v56(v9, v5);

    sub_2662AA89C();
  }
}

uint64_t sub_2662E31FC(uint64_t a1, unint64_t a2, void *a3)
{
  v58 = a1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v54 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v57 = off_2800725D0;

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v55 = *(v6 + 16);
  v55(v13, v14, v5);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v56 = (v6 + 16);
    v18 = a2;
    v19 = v9;
    v20 = v5;
    v21 = v14;
    v22 = v6;
    v23 = a3;
    v24 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "InternalSignalsManager#remove#fromUpdateMediaIntent (lock aquired)", v17, 2u);
    v25 = v24;
    a3 = v23;
    v6 = v22;
    v14 = v21;
    v5 = v20;
    v9 = v19;
    a2 = v18;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v56 = *(v6 + 8);
  v56(v13, v5);
  v26 = [a3 backingStore];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v53 = v27;
    v28 = [v27 privateUpdateMediaAffinityIntentData];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 internalSignals];

      if (v30)
      {
        v31 = sub_2664E04A8();

        v32 = *(v31 + 16);
        v33 = v58;
        if (v32)
        {
          v34 = 0;
          v35 = (v31 + 40);
          while (*(v35 - 1) != v33 || *v35 != a2)
          {
            v37 = sub_2664E0D88();
            v33 = v58;
            if (v37)
            {
              break;
            }

            ++v34;
            v35 += 2;
            if (v32 == v34)
            {
              goto LABEL_18;
            }
          }

          v41 = [v53 privateUpdateMediaAffinityIntentData];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 internalSignals];
            if (v43)
            {
              v44 = v43;
              v45 = sub_2664E04A8();

              v59 = v45;
              sub_2662E0A3C(v34);

              if (v59)
              {
                v46 = sub_2664E0488();
              }

              else
              {
                v46 = 0;
              }

              [v42 setInternalSignals_];
            }

            else
            {
              [v42 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v47 = v54;
    v55(v54, v14, v5);

    v48 = sub_2664DFE18();
    v49 = sub_2664E06E8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_2662A320C(v58, a2, &v59);
      _os_log_impl(&dword_26629C000, v48, v49, "InternalSignalsManager#remove#fromUpdateMediaIntent removed %s from updateMediaIntent. (unlock)", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    v56(v47, v5);

    sub_2662AA89C();
  }

  else
  {

    v55(v9, v14, v5);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "InternalSignalsManager#remove#fromUpdateMediaIntent Unexpected backing store error adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v56(v9, v5);

    sub_2662AA89C();
  }
}

uint64_t sub_2662E3830(uint64_t a1, unint64_t a2, void *a3)
{
  v58 = a1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v54 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v57 = off_2800725D0;

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v55 = *(v6 + 16);
  v55(v13, v14, v5);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v56 = (v6 + 16);
    v18 = a2;
    v19 = v9;
    v20 = v5;
    v21 = v14;
    v22 = v6;
    v23 = a3;
    v24 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "InternalSignalsManager#remove#fromSearchMediaIntent (lock aquired)", v17, 2u);
    v25 = v24;
    a3 = v23;
    v6 = v22;
    v14 = v21;
    v5 = v20;
    v9 = v19;
    a2 = v18;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v56 = *(v6 + 8);
  v56(v13, v5);
  v26 = [a3 backingStore];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v53 = v27;
    v28 = [v27 privateSearchForMediaIntentData];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 internalSignals];

      if (v30)
      {
        v31 = sub_2664E04A8();

        v32 = *(v31 + 16);
        v33 = v58;
        if (v32)
        {
          v34 = 0;
          v35 = (v31 + 40);
          while (*(v35 - 1) != v33 || *v35 != a2)
          {
            v37 = sub_2664E0D88();
            v33 = v58;
            if (v37)
            {
              break;
            }

            ++v34;
            v35 += 2;
            if (v32 == v34)
            {
              goto LABEL_18;
            }
          }

          v41 = [v53 privateSearchForMediaIntentData];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 internalSignals];
            if (v43)
            {
              v44 = v43;
              v45 = sub_2664E04A8();

              v59 = v45;
              sub_2662E0A3C(v34);

              if (v59)
              {
                v46 = sub_2664E0488();
              }

              else
              {
                v46 = 0;
              }

              [v42 setInternalSignals_];
            }

            else
            {
              [v42 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v47 = v54;
    v55(v54, v14, v5);

    v48 = sub_2664DFE18();
    v49 = sub_2664E06E8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_2662A320C(v58, a2, &v59);
      _os_log_impl(&dword_26629C000, v48, v49, "InternalSignalsManager#remove#fromSearchMediaIntent removed %s from searchMediaIntent. (unlock)", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    v56(v47, v5);

    sub_2662AA89C();
  }

  else
  {

    v55(v9, v14, v5);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "InternalSignalsManager#remove#fromSearchMediaIntent Unexpected backing store error adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v56(v9, v5);

    sub_2662AA89C();
  }
}

uint64_t _s16SiriAudioSupport22InternalSignalsManagerC6remove_4fromySS_So8INIntentCtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v34 = *(v6 + 16);
  v35 = v12;
  v34(v11, v12, v5);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v6;
    v17 = a1;
    v18 = v16;
    v37 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_2662A320C(v17, a2, &v37);
    _os_log_impl(&dword_26629C000, v13, v14, "InternalSignalsManager#remove %s...", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v19 = v18;
    a1 = v17;
    v6 = v33;
    MEMORY[0x266784AD0](v19, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  v20 = *(v6 + 8);
  v20(v11, v5);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    if (qword_280071A88 != -1)
    {
      swift_once();
    }

    return sub_2662E2594(a1, a2, v22);
  }

  else
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      if (qword_280071A88 != -1)
      {
        swift_once();
      }

      return sub_2662E2BC8(a1, a2, v25);
    }

    else
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = v26;
        if (qword_280071A88 != -1)
        {
          swift_once();
        }

        return sub_2662E31FC(a1, a2, v27);
      }

      else
      {
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28)
        {
          v29 = v28;
          if (qword_280071A88 != -1)
          {
            swift_once();
          }

          return sub_2662E3830(a1, a2, v29);
        }

        else
        {
          v34(v9, v35, v5);
          v30 = sub_2664DFE18();
          v31 = sub_2664E06D8();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_26629C000, v30, v31, "InternalSignalsManager#remove Unexpected intent type when removing internal signal", v32, 2u);
            MEMORY[0x266784AD0](v32, -1, -1);
          }

          return (v20)(v9, v5);
        }
      }
    }
  }
}

uint64_t sub_2662E4324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B0, &unk_2664E3670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2662E43D4(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = [v2 privateMediaIntentData];

  return v3;
}

id sub_2662E4434(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = [v4 privateMediaIntentData];

  return v5;
}

uint64_t ConfirmInterruptionLocation.deviceLocation.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmInterruptionLocation.roomLocation.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall ConfirmInterruptionLocation.init(deviceLocation:multipleDevices:roomLocation:multipleRooms:)(SiriAudioSupport::ConfirmInterruptionLocation *__return_ptr retstr, Swift::String_optional deviceLocation, Swift::Bool multipleDevices, Swift::String_optional roomLocation, Swift::Bool multipleRooms)
{
  retstr->deviceLocation = deviceLocation;
  retstr->multipleDevices = multipleDevices;
  retstr->roomLocation = roomLocation;
  retstr->multipleRooms = multipleRooms;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2662E4524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_2662E4580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void __swiftcall InstalledApp.init(bundleIdentifier:supportedMediaCategories:supportedIntents:appInstalledAs:counterpartBundleIdentifiers:appName:)(SiriAudioSupport::InstalledApp *__return_ptr retstr, Swift::String bundleIdentifier, Swift::OpaquePointer supportedMediaCategories, Swift::OpaquePointer supportedIntents, SiriAudioSupport::AppInstalledAs appInstalledAs, Swift::OpaquePointer counterpartBundleIdentifiers, Swift::String_optional appName)
{
  v7 = *appInstalledAs;
  retstr->bundleIdentifier = bundleIdentifier;
  retstr->supportedMediaCategories = supportedMediaCategories;
  retstr->supportedIntents = supportedIntents;
  retstr->appInstalledAs = v7;
  retstr->appName.value._object = appName.value._object;
  retstr->counterpartBundleIdentifiers = counterpartBundleIdentifiers;
  retstr->appName.value._countAndFlagsBits = appName.value._countAndFlagsBits;
}

uint64_t InstalledApp.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InstalledApp.appName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_2662E46E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34D0;
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072480, &qword_2664E3690);
  *(inited + 32) = sub_2664E0318();
  *(inited + 40) = v1;
  sub_2662C1744(0, &unk_280F8F588, 0x277CD4030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072488, &qword_2664E3698);
  *(inited + 48) = sub_2664E0318();
  *(inited + 56) = v2;
  sub_2662C1744(0, &qword_280F8F580, 0x277CD42B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072490, &qword_2664E36A0);
  *(inited + 64) = sub_2664E0318();
  *(inited + 72) = v3;
  sub_2662C1744(0, &qword_280F8F5F8, 0x277CD39F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072498, &qword_2664E36A8);
  *(inited + 80) = sub_2664E0318();
  *(inited + 88) = v4;
  v5 = sub_2662C3A68(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_2800725D8 = v5;
  return result;
}

uint64_t static InstalledApp.supportedIntents.getter()
{
  if (qword_280071A90 != -1)
  {
    swift_once();
  }
}

uint64_t static InstalledApp.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88();
  }
}

uint64_t sub_2662E490C@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v81 = a3;
  v84 = sub_2664DFE38();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v80 = *(a1 + 32);
  v12 = a1[6];
  v77 = a1[5];
  v91 = v12;
  v13 = a1[7];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[6];
  v76 = a2[5];
  v75 = v16;
  v17 = a2[7];
  *&v87 = v10;

  sub_2662F9CB0(v15);
  v18 = sub_26639EB98(v87);

  v19 = *(v18 + 16);
  if (v19)
  {
    *(&v79 + 1) = sub_26640C820(*(v18 + 16), 0);
    v20 = sub_26640C9BC(&v87, (*(&v79 + 1) + 32), v19, v18);
    sub_2662B793C(v87);
    if (v20 == v19)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  *(&v79 + 1) = MEMORY[0x277D84F90];
LABEL_5:
  *&v87 = v11;
  sub_2662F9CB0(v14);
  v21 = sub_26639EB98(v87);

  v22 = *(v21 + 16);
  if (v22)
  {
    *&v79 = sub_26640C820(*(v21 + 16), 0);
    v23 = sub_26640C9BC(&v87, (v79 + 32), v22, v21);
    sub_2662B793C(v87);
    if (v23 == v22)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  *&v79 = MEMORY[0x277D84F90];
LABEL_9:
  *&v87 = v13;
  sub_2662F9CB0(v17);
  v24 = sub_26639EB98(v87);

  v25 = *(v24 + 16);
  v78 = v4;
  if (v25)
  {
    v26 = sub_26640C820(v25, 0);
    v27 = sub_26640C9BC(&v87, v26 + 4, v25, v24);
    result = sub_2662B793C(v87);
    if (v27 != v25)
    {
      __break(1u);
      return result;
    }

    v29 = v26[2];
    if (v29)
    {
      goto LABEL_12;
    }
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
    v29 = *(MEMORY[0x277D84F90] + 16);
    if (v29)
    {
LABEL_12:
      v30 = 0;
      v31 = (v26 + 5);
      v74 = v29 - 1;
      v85 = MEMORY[0x277D84F90];
      do
      {
        v32 = (v31 + 16 * v30);
        v33 = v30;
        while (1)
        {
          if (v33 >= v26[2])
          {
            __break(1u);
            goto LABEL_38;
          }

          v34 = *(v32 - 1);
          v35 = *v32;
          v36 = v34 == v9 && v35 == v8;
          if (!v36 && (sub_2664E0D88() & 1) == 0)
          {
            break;
          }

          ++v33;
          v32 += 2;
          if (v29 == v33)
          {
            goto LABEL_29;
          }
        }

        v37 = v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v37;
        v73 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2662FCF24(0, *(v37 + 16) + 1, 1);
          v37 = v87;
        }

        v40 = *(v37 + 16);
        v39 = *(v37 + 24);
        v41 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          v85 = v40 + 1;
          sub_2662FCF24((v39 > 1), v40 + 1, 1);
          v41 = v85;
          v37 = v87;
        }

        v30 = v33 + 1;
        *(v37 + 16) = v41;
        v85 = v37;
        v42 = v37 + 16 * v40;
        *(v42 + 32) = v34;
        *(v42 + 40) = v35;
        v31 = v73;
      }

      while (v74 != v33);
      goto LABEL_29;
    }
  }

  v85 = MEMORY[0x277D84F90];
LABEL_29:

  v43 = v91;
  if (v91)
  {
    v31 = v84;
    v26 = v83;
    v29 = v82;
    v44 = v80;
    v45 = v77;
  }

  else
  {
    v43 = v75;

    v45 = v76;
    v31 = v84;
    v26 = v83;
    v29 = v82;
    v44 = v80;
  }

  *&v87 = v9;
  *(&v87 + 1) = v8;
  v88 = v79;
  LOBYTE(v89) = v44;
  *(&v89 + 1) = v45;
  *&v90 = v43;
  v9 = v85;
  *(&v90 + 1) = v85;
  v46 = qword_280F914E8;

  v91 = v43;

  if (v46 != -1)
  {
LABEL_38:
    swift_once();
  }

  v47 = __swift_project_value_buffer(v31, qword_280F914F0);
  swift_beginAccess();
  (v26[2])(v29, v47, v31);

  sub_2662C0AE0(&v87, v86);
  v48 = sub_2664DFE18();
  v49 = sub_2664E06E8();
  sub_2662C0B3C(&v87);

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v86[0] = v51;
    *v50 = 136446978;
    v52 = v87;

    v53 = v9;
    v54 = sub_2662A320C(v52, *(&v52 + 1), v86);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2082;

    v56 = MEMORY[0x277D837D0];
    v57 = MEMORY[0x2667834D0](v55, MEMORY[0x277D837D0]);
    v59 = v58;

    v60 = sub_2662A320C(v57, v59, v86);

    *(v50 + 14) = v60;
    *(v50 + 22) = 2082;

    v62 = MEMORY[0x2667834D0](v61, v56);
    v64 = v63;

    v65 = sub_2662A320C(v62, v64, v86);

    *(v50 + 24) = v65;
    *(v50 + 32) = 2082;
    v66 = MEMORY[0x2667834D0](v53, v56);
    v68 = v67;

    v69 = sub_2662A320C(v66, v68, v86);

    *(v50 + 34) = v69;

    _os_log_impl(&dword_26629C000, v48, v49, "InstalledAppProvider#apps merged bundle: %{public}s, supportedCategories: %{public}s, supportedIntents: %{public}s, counterpartBundleIdentifiers: %{public}s", v50, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v51, -1, -1);
    MEMORY[0x266784AD0](v50, -1, -1);

    result = (*(v83 + 8))(v82, v84);
  }

  else
  {

    result = (v26[1])(v29, v31);
  }

  v70 = v88;
  v71 = v81;
  *v81 = v87;
  v71[1] = v70;
  v72 = v90;
  v71[2] = v89;
  v71[3] = v72;
  return result;
}

Swift::String __swiftcall InstalledApp.slimDescription()()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000021, 0x80000002664F36A0);
  MEMORY[0x2667833B0](v1, v2);
  MEMORY[0x2667833B0](0xD000000000000012, 0x80000002664F36D0);
  sub_2664E0C28();
  MEMORY[0x2667833B0](32032, 0xE200000000000000);
  v3 = 0;
  v4 = 0xE000000000000000;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t InstalledApp.hashValue.getter()
{
  sub_2664E0E68();
  sub_2664E0368();
  return sub_2664E0EB8();
}

uint64_t sub_2662E5218()
{
  sub_2664E0E68();
  sub_2664E0368();
  return sub_2664E0EB8();
}

uint64_t sub_2662E526C(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0368();
  return sub_2664E0EB8();
}

uint64_t sub_2662E52B4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88();
  }
}

void sub_2662E52E4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, uint64_t a5)
{
  v93 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = v6; ; v6 = i)
  {
    if (!v9)
    {
      v22 = v11;
      while (1)
      {
        v21 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v21 >= v10)
        {
          goto LABEL_26;
        }

        v20 = *(v6 + 8 * v21);
        ++v22;
        if (v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_2664E0DD8();
      __break(1u);
      goto LABEL_34;
    }

    v20 = v9;
    v21 = v11;
LABEL_14:
    v23 = __clz(__rbit64(v20)) | (v21 << 6);
    v24 = (*(a1 + 48) + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    v27 = (*(a1 + 56) + (v23 << 6));
    v28 = v27[3];
    v30 = *v27;
    v29 = v27[1];
    v80 = v27[2];
    v81 = v28;
    v78 = v30;
    v79 = v29;
    v74 = *v27;
    v75 = v27[1];
    v76 = v27[2];
    v77 = v27[3];
    *&v73 = v26;
    *(&v73 + 1) = v25;

    sub_2662C0AE0(&v78, &v82);
    a2(&v87, &v73);
    v84 = v75;
    v85 = v76;
    v86 = v77;
    v82 = v73;
    v83 = v74;
    sub_2662E5DE8(&v82);
    v31 = v88;
    if (!v88)
    {
LABEL_26:
      sub_2662B793C(a1);

      return;
    }

    v71 = v87;
    v32 = v87;
    v72 = v88;
    v82 = v89;
    v83 = v90;
    v84 = v91;
    v85 = v92;
    v33 = *v93;
    v35 = sub_2662A3E98(v87, v88);
    v36 = v33[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_31;
    }

    v39 = v34;
    if (v33[3] < v38)
    {
      break;
    }

    if (a4)
    {
      if (v34)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_2664538FC();
      if (v39)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    v12 = *v93;
    v12[(v35 >> 6) + 8] |= 1 << v35;
    v13 = (v12[6] + 16 * v35);
    *v13 = v32;
    v13[1] = v31;
    v14 = (v12[7] + (v35 << 6));
    v15 = v90;
    *v14 = v89;
    v14[1] = v15;
    v16 = v92;
    v14[2] = v91;
    v14[3] = v16;
    v17 = v12[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_32;
    }

    v12[2] = v19;
LABEL_7:
    v9 = (v20 - 1) & v20;
    a4 = 1;
    v11 = v21;
  }

  sub_26644FFAC(v38, a4 & 1);
  v40 = sub_2662A3E98(v32, v31);
  if ((v39 & 1) != (v41 & 1))
  {
    goto LABEL_33;
  }

  v35 = v40;
  if ((v39 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v42 = *v93;
  v43 = (*(*v93 + 56) + (v35 << 6));
  v44 = v43[3];
  v46 = *v43;
  v45 = v43[1];
  v75 = v43[2];
  v76 = v44;
  v73 = v46;
  v74 = v45;
  v78 = *v43;
  v79 = v43[1];
  v80 = v43[2];
  v81 = v43[3];
  sub_2662C0AE0(&v73, &v66);
  sub_2662E490C(&v78, &v82, v70);
  if (!v56)
  {
    *v58 = v78;
    v59 = v79;
    v60 = v80;
    v61 = v81;
    sub_2662C0B3C(v58);
    v62 = v82;
    v63 = v83;
    v64 = v84;
    v65 = v85;
    sub_2662C0B3C(&v62);

    v47 = (v42[7] + (v35 << 6));
    v48 = *v47;
    v49 = v47[1];
    v50 = v47[3];
    v68 = v47[2];
    v69 = v50;
    v66 = v48;
    v67 = v49;
    v51 = v70[1];
    *v47 = v70[0];
    v47[1] = v51;
    v52 = v70[3];
    v47[2] = v70[2];
    v47[3] = v52;
    sub_2662C0B3C(&v66);
    goto LABEL_7;
  }

  v66 = v78;
  v67 = v79;
  v68 = v80;
  v69 = v81;
  sub_2662C0B3C(&v66);
  v58[0] = v56;
  v53 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v62 = v82;
    v63 = v83;
    v64 = v84;
    v65 = v85;
    sub_2662C0B3C(&v62);
    sub_2662B793C(a1);

    return;
  }

LABEL_34:
  *&v62 = 0;
  *(&v62 + 1) = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000001BLL, 0x80000002664F4320);
  sub_2664E0C28();
  MEMORY[0x2667833B0](39, 0xE100000000000000);
  sub_2664E0C48();
  __break(1u);
}

uint64_t sub_2662E5814@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 2);
  v9[0] = *(a1 + 1);
  v9[1] = v4;
  v6 = *(a1 + 4);
  v10 = *(a1 + 3);
  v5 = v10;
  v11 = v6;
  *(a2 + 16) = v9[0];
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = v3;
  *(a2 + 8) = v2;

  return sub_2662C0AE0(v9, &v8);
}

void *_s16SiriAudioSupport12InstalledAppV13additiveMerge4left5rightSayACGAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2663855DC(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    while (1)
    {
      v14 = v6[1];
      v73 = *v6;
      v74 = v14;
      v15 = v6[3];
      v75 = v6[2];
      v76 = v15;
      v16 = v73;
      sub_2662C0AE0(&v73, &v69);
      sub_2662C0AE0(&v73, &v69);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v4;
      v18 = sub_2662A3E98(v16, *(&v16 + 1));
      v20 = *(v4 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        result = sub_2664E0DD8();
        __break(1u);
        return result;
      }

      v24 = v19;
      if (*(v4 + 24) < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v32 = v18;
      sub_2664538FC();
      v18 = v32;
      if (v24)
      {
LABEL_3:
        v4 = v68;
        v7 = (v68[7] + (v18 << 6));
        v8 = v7[3];
        v10 = *v7;
        v9 = v7[1];
        v71 = v7[2];
        v72 = v8;
        v69 = v10;
        v70 = v9;
        v11 = v73;
        v12 = v74;
        v13 = v76;
        v7[2] = v75;
        v7[3] = v13;
        *v7 = v11;
        v7[1] = v12;
        sub_2662C0B3C(&v69);
        sub_2662C0B3C(&v73);
        goto LABEL_4;
      }

LABEL_11:
      v4 = v68;
      v68[(v18 >> 6) + 8] |= 1 << v18;
      *(v68[6] + 16 * v18) = v16;
      v26 = (v68[7] + (v18 << 6));
      v28 = v75;
      v27 = v76;
      v29 = v74;
      *v26 = v73;
      v26[1] = v29;
      v26[2] = v28;
      v26[3] = v27;

      sub_2662C0B3C(&v73);
      v30 = v68[2];
      v22 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v22)
      {
        goto LABEL_36;
      }

      v68[2] = v31;
LABEL_4:
      v6 += 4;
      if (!--v5)
      {
        goto LABEL_15;
      }
    }

    sub_26644FFAC(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_2662A3E98(v16, *(&v16 + 1));
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_39;
    }

LABEL_10:
    if (v24)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  v33 = sub_2663855DC(MEMORY[0x277D84F90]);
  v34 = *(a2 + 16);
  if (v34)
  {
    v35 = (a2 + 32);
    while (1)
    {
      v43 = v35[1];
      v73 = *v35;
      v74 = v43;
      v44 = v35[3];
      v75 = v35[2];
      v76 = v44;
      v45 = v73;
      sub_2662C0AE0(&v73, &v69);
      sub_2662C0AE0(&v73, &v69);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v47 = sub_2662A3E98(v45, *(&v45 + 1));
      v49 = v33[2];
      v50 = (v48 & 1) == 0;
      v22 = __OFADD__(v49, v50);
      v51 = v49 + v50;
      if (v22)
      {
        goto LABEL_35;
      }

      v52 = v48;
      if (v33[3] < v51)
      {
        break;
      }

      if (v46)
      {
        goto LABEL_24;
      }

      v60 = v47;
      sub_2664538FC();
      v47 = v60;
      if (v52)
      {
LABEL_17:
        v36 = (v33[7] + (v47 << 6));
        v37 = v36[3];
        v39 = *v36;
        v38 = v36[1];
        v71 = v36[2];
        v72 = v37;
        v69 = v39;
        v70 = v38;
        v40 = v73;
        v41 = v74;
        v42 = v76;
        v36[2] = v75;
        v36[3] = v42;
        *v36 = v40;
        v36[1] = v41;
        sub_2662C0B3C(&v69);
        sub_2662C0B3C(&v73);
        goto LABEL_18;
      }

LABEL_25:
      v33[(v47 >> 6) + 8] |= 1 << v47;
      *(v33[6] + 16 * v47) = v45;
      v54 = (v33[7] + (v47 << 6));
      v56 = v75;
      v55 = v76;
      v57 = v74;
      *v54 = v73;
      v54[1] = v57;
      v54[2] = v56;
      v54[3] = v55;

      sub_2662C0B3C(&v73);
      v58 = v33[2];
      v22 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v22)
      {
        goto LABEL_37;
      }

      v33[2] = v59;
LABEL_18:
      v35 += 4;
      if (!--v34)
      {
        goto LABEL_29;
      }
    }

    sub_26644FFAC(v51, v46);
    v47 = sub_2662A3E98(v45, *(&v45 + 1));
    if ((v52 & 1) != (v53 & 1))
    {
      goto LABEL_39;
    }

LABEL_24:
    if (v52)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_29:
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *&v73 = v4;
  sub_2662E52E4(v33, sub_2662E5814, 0, v61, &v73);
  v62 = v73;
  v63 = *(v73 + 16);
  if (v63)
  {
    v64 = sub_26640C79C(*(v73 + 16), 0);
    v65 = sub_26640CB14(&v73, v64 + 2, v63, v62);
    v66 = v73;

    sub_2662B793C(v66);
    if (v65 != v63)
    {
      goto LABEL_38;
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v64;
}

unint64_t sub_2662E5CBC()
{
  result = qword_2800725E0;
  if (!qword_2800725E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800725E0);
  }

  return result;
}

uint64_t sub_2662E5D40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2662E5D88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2662E5DE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800725E8, qword_2664E4390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AtomicDictionary.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AtomicDictionary.init(name:)(a1, a2, v5, v6);
  return v4;
}

void *AtomicDictionary.init(name:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v5;
  v9 = *(*v5 + 80);
  v10 = type metadata accessor for AtomicValue(255, *(*v5 + 88), a3, a4);
  swift_getTupleTypeMetadata2();
  v11 = sub_2664E04E8();
  v12 = sub_2662E87F0(v11, v9, v10, *(v8 + 96));

  v5[2] = v12;
  v5[4] = a1;
  v5[5] = a2;
  v13 = qword_280F91468;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_280F91470;
  v16[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v16[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v16[0] = v14;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v5[3] = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v16);
  return v5;
}

uint64_t sub_2662E6230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = v7;
  v78 = a7;
  v77 = a6;
  v76 = a5;
  v79 = a4;
  v69 = a3;
  v68 = a2;
  v73 = *v7;
  v10 = *(v73 + 80);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v80 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v82 = &v65[-v14];
  v88 = sub_2664DFE38();
  v15 = *(v88 - 8);
  v16 = MEMORY[0x28223BE20](v88);
  v75 = &v65[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v70 = &v65[-v19];
  MEMORY[0x28223BE20](v18);
  v87 = &v65[-v20];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = v88;
  v22 = __swift_project_value_buffer(v88, qword_280F914F0);
  swift_beginAccess();
  v23 = *(v15 + 16);
  v84 = v22;
  v74 = v15 + 16;
  v83 = v23;
  v23(v87, v22, v21);
  v24 = *(v11 + 16);
  v85 = a1;
  v24(v82, a1, v10);

  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();

  v27 = os_log_type_enabled(v25, v26);
  v81 = v15;
  v86 = v10;
  v72 = v11 + 16;
  v71 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v92[0] = v67;
    *v28 = 136446466;
    *(v28 + 4) = sub_2662A320C(v7[4], v7[5], v92);
    *(v28 + 12) = 2082;
    v66 = v26;
    v29 = v82;
    v24(v80, v82, v10);
    v30 = sub_2664E0318();
    v31 = v10;
    v33 = v32;
    (*(v11 + 8))(v29, v31);
    v34 = v88;
    v35 = sub_2662A320C(v30, v33, v92);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_26629C000, v25, v66, "AtomicDictionary#computeIfAbsent [%{public}s] key: %{public}s", v28, 0x16u);
    v36 = v67;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v36, -1, -1);
    v37 = v28;
    v38 = v81;
    MEMORY[0x266784AD0](v37, -1, -1);

    v39 = *(v38 + 8);
    (v39)(v87, v34);
  }

  else
  {

    (*(v11 + 8))(v82, v10);
    v39 = *(v15 + 8);
    (v39)(v87, v88);
  }

  sub_2662A98AC();
  v40 = v70;
  v83(v70, v84, v88);

  v41 = sub_2664DFE18();
  v42 = sub_2664E06E8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v92[0] = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_2662A320C(v8[4], v8[5], v92);
    _os_log_impl(&dword_26629C000, v41, v42, "AtomicDictionary#computeIfAbsent [%{public}s] global lock acquired", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v45 = v88;
    MEMORY[0x266784AD0](v44, -1, -1);
    MEMORY[0x266784AD0](v43, -1, -1);

    v46 = v40;
    v47 = v45;
  }

  else
  {

    v46 = v40;
    v47 = v88;
  }

  (v39)(v46, v47);
  v48 = v71;
  v87 = v39;
  swift_beginAccess();
  type metadata accessor for AtomicValue(0, *(v73 + 88), v49, v50);

  sub_2664E0238();

  v51 = v91;
  if (!v91)
  {
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_2664E0B28();

    v89 = 0xD000000000000022;
    v90 = 0x80000002664F4340;
    MEMORY[0x2667833B0](v8[4], v8[5]);
    MEMORY[0x2667833B0](41, 0xE100000000000000);
    v52 = v89;
    v53 = v90;
    v54 = v69;

    v51 = sub_26630D9D0(v52, v53, v68, v54);
  }

  v48(v80, v85, v86);
  v91 = v51;
  swift_beginAccess();
  sub_2664E0228();

  sub_2664E0248();
  swift_endAccess();
  sub_2662AA89C();
  v55 = v75;
  v83(v75, v84, v88);

  v56 = sub_2664DFE18();
  v57 = sub_2664E06E8();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v91 = v59;
    *v58 = 136446466;
    *(v58 + 4) = sub_2662A320C(v8[4], v8[5], &v91);
    *(v58 + 12) = 2080;
    v89 = v79;
    v60 = v76;
    LOBYTE(v90) = v76 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v61 = sub_2664E0318();
    v63 = sub_2662A320C(v61, v62, &v91);

    *(v58 + 14) = v63;
    _os_log_impl(&dword_26629C000, v56, v57, "AtomicDictionary#computeIfAbsent [%{public}s] found existing value for key, releasing global lock, computing with expiry: %s...", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v59, -1, -1);
    MEMORY[0x266784AD0](v58, -1, -1);

    (v87)(v55, v88);
  }

  else
  {

    (v87)(v55, v88);
    v60 = v76;
  }

  sub_26630AFF8(v79, v60 & 1, v77, v78);
}

uint64_t sub_2662E6B24(void *a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v10 - v3;
  (*(v5 + 16))(&v10 - v3, v6);
  v7 = *(**a2 + 176);

  return v7(v8, v4);
}

uint64_t sub_2662E6C14(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v53 = *v1;
  v4 = *(v53 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  v10 = sub_2664DFE38();
  v61 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v55 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v18 = *(v61 + 16);
  v59 = v61 + 16;
  v60 = v17;
  v58 = v18;
  v18(v16, v17, v10);
  v19 = *(v5 + 16);
  v54 = a1;
  v19(v9, a1, v4);

  v52 = v16;
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();

  v22 = os_log_type_enabled(v20, v21);
  v57 = v10;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v64[0] = v50;
    *v23 = 136446466;
    *(v23 + 4) = sub_2662A320C(v2[4], v2[5], v64);
    *(v23 + 12) = 2082;
    v19(v51, v9, v4);
    v24 = sub_2664E0318();
    v26 = v25;
    (*(v5 + 8))(v9, v4);
    v27 = sub_2662A320C(v24, v26, v64);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_26629C000, v20, v21, "AtomicDictionary#get [%{public}s] for key: %{public}s, acquiring global lock...", v23, 0x16u);
    v28 = v50;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v28, -1, -1);
    v29 = v23;
    v10 = v57;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v30 = *(v61 + 8);
  v30(v52, v10);
  sub_2662A98AC();
  swift_beginAccess();
  type metadata accessor for AtomicValue(0, *(v53 + 88), v31, v32);

  sub_2664E0238();

  v33 = v63;
  v34 = v55;
  v58(v55, v60, v10);

  v35 = sub_2664DFE18();
  v36 = sub_2664E06E8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v63 = v38;
    *v37 = 136446466;
    *(v37 + 4) = sub_2662A320C(v2[4], v2[5], &v63);
    *(v37 + 12) = 2080;
    v62 = v33;
    sub_2664E0948();
    v54 = v30;

    v39 = sub_2664E0318();
    v41 = sub_2662A320C(v39, v40, &v63);

    *(v37 + 14) = v41;
    _os_log_impl(&dword_26629C000, v35, v36, "AtomicDictionary#get [%{public}s] got value %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v38, -1, -1);
    v42 = v37;
    v10 = v57;
    MEMORY[0x266784AD0](v42, -1, -1);

    v30 = v54;
    v54(v34, v10);
  }

  else
  {

    v30(v34, v10);
  }

  sub_2662AA89C();
  v43 = v56;
  v58(v56, v60, v10);

  v44 = sub_2664DFE18();
  v45 = sub_2664E06E8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v63 = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_2662A320C(v2[4], v2[5], &v63);
    _os_log_impl(&dword_26629C000, v44, v45, "AtomicDictionary#get [%{public}s] released global lock", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x266784AD0](v47, -1, -1);
    MEMORY[0x266784AD0](v46, -1, -1);
  }

  v30(v43, v10);
  return v33;
}

uint64_t sub_2662E7324(uint64_t a1, char *a2)
{
  v3 = v2;
  v65 = a2;
  v59 = *v2;
  v5 = *(v59 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v60 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = &v50 - v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v18 = *(v13 + 16);
  v58 = v17;
  v55 = v18;
  v56 = v13 + 16;
  v18(v63, v17, v12);
  v64 = v13;
  v62 = *(v6 + 16);
  v62(v11, v65, v5);

  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();

  v21 = os_log_type_enabled(v19, v20);
  v61 = v6;
  v54 = v9;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v52 = v20;
    v23 = v22;
    v53 = swift_slowAlloc();
    v66[0] = v53;
    *v23 = 136446722;
    *(v23 + 4) = sub_2662A320C(v3[4], v3[5], v66);
    *(v23 + 12) = 2082;
    v62(v9, v11, v5);
    v24 = sub_2664E0318();
    v25 = v6;
    v26 = v24;
    v51 = v12;
    v28 = v27;
    v57 = *(v25 + 8);
    v57(v11, v5);
    v29 = sub_2662A320C(v26, v28, v66);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2080;
    v67 = a1;
    v30 = v59;
    type metadata accessor for AtomicValue(255, *(v59 + 88), v31, v32);
    sub_2664E0948();

    v33 = sub_2664E0318();
    v35 = sub_2662A320C(v33, v34, v66);

    *(v23 + 24) = v35;
    _os_log_impl(&dword_26629C000, v19, v52, "AtomicDictionary#set [%{public}s] for key: %{public}s, value: %s, acquiring global lock...", v23, 0x20u);
    v36 = v53;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v36, -1, -1);
    MEMORY[0x266784AD0](v23, -1, -1);

    v37 = v63;
    v38 = v51;
    v63 = *(v64 + 8);
    (v63)(v37, v51);
    v39 = v5;
  }

  else
  {

    v57 = *(v6 + 8);
    v57(v11, v5);
    v40 = v63;
    v63 = *(v64 + 8);
    (v63)(v40, v12);
    v39 = v5;
    v38 = v12;
    v30 = v59;
  }

  sub_2662A98AC();
  v62(v54, v65, v39);
  v67 = a1;
  swift_beginAccess();
  type metadata accessor for AtomicValue(255, *(v30 + 88), v41, v42);
  sub_2664E0228();

  sub_2664E0248();
  swift_endAccess();
  sub_2662AA89C();
  v43 = v60;
  v44 = v38;
  v55(v60, v58, v38);

  v45 = sub_2664DFE18();
  v46 = sub_2664E06E8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v66[0] = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_2662A320C(v3[4], v3[5], v66);
    _os_log_impl(&dword_26629C000, v45, v46, "AtomicDictionary#set [%{public}s] released global lock", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  v57(v65, v39);
  return (v63)(v43, v44);
}

void (*sub_2662E7990(uint64_t **a1, void (*a2)(char *, uint64_t)))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[1] = v2;
  v8 = *(*v2 + 80);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  *v7 = sub_2662E6C14(a2);
  return sub_2662E7AD0;
}

void sub_2662E7AD0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    (*(v2[3] + 32))((*a1)[4], v4, v2[2]);

    sub_2662E7324(v5, v3);
  }

  else
  {
    sub_2662E7324(**a1, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2662E7B7C(uint64_t a1)
{
  v2 = v1;
  v50 = *v1;
  v4 = *(v50 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - v8;
  v10 = sub_2664DFE38();
  v59 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v52 = &v48 - v14;
  MEMORY[0x28223BE20](v13);
  v55 = &v48 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v17 = *(v59 + 16);
  v57 = v59 + 16;
  v58 = v16;
  v56 = v17;
  v17(v55, v16, v10);
  v18 = *(v5 + 16);
  v51 = a1;
  v18(v9, a1, v4);

  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();

  v21 = os_log_type_enabled(v19, v20);
  v54 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v60[0] = v48;
    *v22 = 136446466;
    *(v22 + 4) = sub_2662A320C(v2[4], v2[5], v60);
    *(v22 + 12) = 2082;
    v18(v49, v9, v4);
    v23 = sub_2664E0318();
    v25 = v24;
    (*(v5 + 8))(v9, v4);
    v26 = sub_2662A320C(v23, v25, v60);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_26629C000, v19, v20, "AtomicDictionary#removeValue [%{public}s] for key: %{public}s, acquiring global lock...", v22, 0x16u);
    v27 = v48;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v27, -1, -1);
    v28 = v22;
    v10 = v54;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v29 = *(v59 + 8);
  v29(v55, v10);
  sub_2662A98AC();
  swift_beginAccess();
  type metadata accessor for AtomicValue(255, *(v50 + 88), v30, v31);
  sub_2664E0228();
  sub_2664E01E8();
  swift_endAccess();
  v32 = v61;
  v33 = v52;
  v56(v52, v58, v10);

  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v60[0] = v37;
    *v36 = 136446466;
    *(v36 + 4) = sub_2662A320C(v2[4], v2[5], v60);
    *(v36 + 12) = 2080;
    v61 = v32;
    sub_2664E0948();
    v55 = v29;

    v38 = sub_2664E0318();
    v40 = sub_2662A320C(v38, v39, v60);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_26629C000, v34, v35, "AtomicDictionary#removeValue [%{public}s] got value %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v37, -1, -1);
    v41 = v36;
    v10 = v54;
    MEMORY[0x266784AD0](v41, -1, -1);

    v29 = v55;
    (v55)(v33, v10);
  }

  else
  {

    v29(v33, v10);
  }

  sub_2662AA89C();
  v42 = v53;
  v56(v53, v58, v10);

  v43 = sub_2664DFE18();
  v44 = sub_2664E06E8();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v60[0] = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_2662A320C(v2[4], v2[5], v60);
    _os_log_impl(&dword_26629C000, v43, v44, "AtomicDictionary#removeValue [%{public}s] released global lock", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x266784AD0](v46, -1, -1);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  v29(v42, v10);
  return v32;
}

uint64_t sub_2662E828C()
{
  v1 = *v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v25 = *(v3 + 16);
  v25(v8, v9, v2);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v3;
    v13 = v1;
    v14 = v6;
    v15 = v12;
    *v12 = 0;
    _os_log_impl(&dword_26629C000, v10, v11, "AtomicDictionary#clear acquiring global lock...", v12, 2u);
    v16 = v15;
    v6 = v14;
    v1 = v13;
    v3 = v24;
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  v17 = *(v3 + 8);
  v17(v8, v2);
  sub_2662A98AC();
  swift_beginAccess();
  type metadata accessor for AtomicValue(255, *(v1 + 88), v18, v19);
  sub_2664E0228();
  sub_2664E0218();
  swift_endAccess();
  sub_2662AA89C();
  v25(v6, v9, v2);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "AtomicDictionary#removeAll released global lock", v22, 2u);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  return (v17)(v6, v2);
}

void *AtomicDictionary.deinit()
{

  return v0;
}

uint64_t AtomicDictionary.__deallocating_deinit()
{
  AtomicDictionary.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_2662E860C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664E0258();

  return sub_2662E8668(a1, v6, a2, a3);
}

unint64_t sub_2662E8668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_2664E0298();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2662E87F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2664E0528())
  {
    sub_2664E0CA8();
    v13 = sub_2664E0C98();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2664E0528();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2664E0508())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2664E0B48();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2662E860C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t CircularBuffer.__allocating_init(size:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CircularBuffer.init(size:)(a1);
  return v2;
}

void *CircularBuffer.init(size:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = sub_2664E0948();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  v1[3] = 0;
  v1[4] = 0;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v9 = qword_280F91470;
  v13[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v13[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v13[0] = v9;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v2[5] = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000012, 0x80000002664F4380, 1, v13);
  (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
  v10 = sub_2662E9744(v8, a1, v5);
  (*(v6 + 8))(v8, v5);
  v2[2] = v10;
  return v2;
}

uint64_t sub_2662E8EE4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = sub_2664E0948();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  sub_2662A98AC();
  v9 = v1[4];
  swift_beginAccess();

  v10 = sub_2664E0528();

  if (v10)
  {
    if (v9 == 0x8000000000000000 && v10 == -1)
    {
      goto LABEL_8;
    }

    v12 = v9 % v10;
    v13 = *(v4 - 8);
    (*(v13 + 16))(v8, a1, v4);
    (*(v13 + 56))(v8, 0, 1, v4);
    swift_beginAccess();
    sub_2664E0548();
    sub_2664E04D8();
    v14 = v2[2];
    sub_2662E96F0(v12, v14, v5);
    (*(v6 + 40))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v8, v5);
    result = swift_endAccess();
    v15 = v2[4];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      v2[4] = v17;
      return sub_2662AA89C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2662E9134(uint64_t a1)
{
  sub_2662A98AC();
  swift_beginAccess();
  sub_2664E0948();
  sub_2664E0548();

  swift_getWitnessTable();
  v1 = sub_2664E0458();

  sub_2662AA89C();
  return v1 & 1;
}

uint64_t sub_2662E924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v41 = a1;
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664E0948();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v32 - v11;
  v13 = *(v8 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v39 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  (*(v6 + 16))(&v32 - v16, a2, a3);
  (*(v6 + 56))(v17, 0, 1, a3);
  v37 = TupleTypeMetadata2;
  v18 = *(TupleTypeMetadata2 + 48);
  v19 = *(v13 + 16);
  v19(v12, v41, v8);
  v40 = v18;
  v19(&v12[v18], v17, v8);
  v38 = v6;
  v20 = *(v6 + 48);
  v41 = a3;
  if (v20(v12, 1, a3) != 1)
  {
    v33 = v13;
    v23 = v39;
    v19(v39, v12, v8);
    v25 = v40;
    v24 = v41;
    if (v20(&v12[v40], 1, v41) != 1)
    {
      v26 = v38;
      v27 = v34;
      (*(v38 + 32))(v34, &v12[v25], v24);
      v28 = v24;
      v22 = sub_2664E0298();
      v29 = *(v26 + 8);
      v29(v27, v28);
      v30 = *(v33 + 8);
      v30(v17, v8);
      v29(v39, v28);
      v30(v12, v8);
      return v22 & 1;
    }

    (*(v33 + 8))(v17, v8);
    (*(v38 + 8))(v23, v24);
    goto LABEL_6;
  }

  v21 = *(v13 + 8);
  v21(v17, v8);
  if (v20(&v12[v40], 1, v41) != 1)
  {
LABEL_6:
    (*(v36 + 8))(v12, v37);
    v22 = 0;
    return v22 & 1;
  }

  v21(v12, v8);
  v22 = 1;
  return v22 & 1;
}

uint64_t CircularBuffer.deinit()
{

  return v0;
}

uint64_t CircularBuffer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2662E96F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2662E9744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2664E04E8();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_2664E0548();
    return v8;
  }

  return result;
}

uint64_t sub_2662E995C()
{
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v0 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v0;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v1 = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000016, 0x80000002664F4430, 1, v3);
  type metadata accessor for MorphunProvider();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84FA0];
  *(result + 24) = v1;
  qword_280072678 = result;
  return result;
}

uint64_t static MorphunProvider.shared.getter()
{
  if (qword_280071A98 != -1)
  {
    swift_once();
  }
}

uint64_t MorphunProvider.deinit()
{

  return v0;
}

uint64_t MorphunProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2662E9B0C()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "#MorphunProvider unexpectedly called on non-tvOS.  returning false", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t SearchPodcastsAppIntent.init(criteria:)@<X0>(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072680, &qword_2664E4578);
  swift_allocObject();
  result = sub_2664DFA28();
  *a3 = result;
  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SearchPodcastsAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchPodcastsAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2662E9F54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v34 = a7;
  v35 = a8;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(sub_2664DE708());

  v21 = sub_2664DE6F8();
  if (v21)
  {
    v22 = v21;
    v23 = sub_2662CD3A4(v21, a3, a4, a5, a6, v34, v35, a9, a10);
  }

  else
  {
    v24 = a1;
    v25 = v17;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = v16;
    v27 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v28 = v19;
    (*(v25 + 16))(v19, v27, v26);

    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_2662A320C(v24, a2, &v36);
      _os_log_impl(&dword_26629C000, v29, v30, "Unexpected error unpacking storeid for show: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v25 + 8))(v28, v26);
    return 0;
  }

  return v23;
}

uint64_t sub_2662EA1F4(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  MEMORY[0x28223BE20](v5);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v17[3] = type metadata accessor for MediaPlaybackProvider();
  v17[4] = &off_2877F3740;
  v17[0] = v9;
  sub_2662A5550(v17, v16);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v16[3]);
  MEMORY[0x28223BE20](v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_2664DD13C(a1, *v12, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v14;
}

void sub_2662EA404(void (*a1)(void *), uint64_t a2)
{
  v5 = sub_2664DEC48();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v12);
  v14 = (*(v13 + 16))(1025, v12, v13);
  v15 = [*(v2 + 16) privatePlayMediaIntentData];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [v15 internalSignals];
  if (!v17)
  {

LABEL_15:
    if (v14)
    {

      sub_26636B8D0();
    }

    *v9 = 0;
    (*(v6 + 104))(v9, *MEMORY[0x277D60170], v5);
    a1(v9);

    goto LABEL_18;
  }

  v26[0] = v11;
  v26[1] = a2;
  v27 = a1;
  v28 = v5;
  v18 = v17;
  v19 = sub_2664E04A8();

  v20 = (v19 + 40);
  v21 = -*(v19 + 16);
  v22 = -1;
  do
  {
    v23 = v21 + v22;
    if (v21 + v22 == -1)
    {
      break;
    }

    if (++v22 >= *(v19 + 16))
    {
      __break(1u);
      return;
    }

    if (*(v20 - 1) == 0x6552656E65726950 && *v20 == 0xEC000000746C7573)
    {
      break;
    }

    v20 += 2;
  }

  while ((sub_2664E0D88() & 1) == 0);

  v9 = v26[0];
  *v26[0] = v23 != -1;
  v5 = v28;
  (*(v6 + 104))(v9, *MEMORY[0x277D60170], v28);
  v25 = v27;
  if (v14)
  {

    sub_26636B8D0();
  }

  v25(v9);

LABEL_18:
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_2662EA720()
{
  v0 = qword_280072688;

  return v0;
}

void sub_2662EA768()
{
  sub_2662EA8CC();

  JUMPOUT(0x266781DA0);
}

uint64_t sub_2662EA7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2662EA8CC();

  return MEMORY[0x2821C57B8](a1, a2, a3, a4, v8);
}

uint64_t sub_2662EA810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2662EA8CC();

  return MEMORY[0x2821C5798](a1, a2, a3, a4, v8);
}

unint64_t sub_2662EA878()
{
  result = qword_280F90318[0];
  if (!qword_280F90318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F90318);
  }

  return result;
}

unint64_t sub_2662EA8CC()
{
  result = qword_280F90310;
  if (!qword_280F90310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F90310);
  }

  return result;
}

uint64_t static Completions.protect<A>(name:completion:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t (*)(), void *), uint64_t a6, uint64_t a7)
{
  sub_2664E0B28();

  MEMORY[0x2667833B0](a1, a2);
  MEMORY[0x2667833B0](41, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072698, &unk_2664E4810);
  swift_allocObject();
  v13 = sub_2662ED444(0xD000000000000015, 0x80000002664F44B0, sub_2662EAAE8, 0);
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = sub_2662ED5D0;
  v15[4] = v14;

  a5(sub_2662ED5E0, v15);
}

uint64_t sub_2662EAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14);
  v15 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a7;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  *(v16 + 6) = a6;
  (*(v12 + 32))(&v16[v15], v14, a7);

  sub_266489BC4(sub_2662EDC1C, v16);
}

uint64_t sub_2662EAC8C(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = sub_2664DFE38();
  v12 = MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    return a4(a6);
  }

  v23 = v13;
  v24 = v15;
  v25 = v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = v25;
  v18 = __swift_project_value_buffer(v25, qword_280F914F0);
  swift_beginAccess();
  (*(v23 + 16))(v24, v18, v17);

  v19 = sub_2664DFE18();
  v20 = sub_2664E06D8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2662A320C(a2, a3, v26);
    _os_log_impl(&dword_26629C000, v19, v20, "Completions#protect FATAL! Double computing completion with name: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x266784AD0](v22, -1, -1);
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v23 + 8))(v24, v25);
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000043, 0x80000002664F4570);
  MEMORY[0x2667833B0](a2, a3);
  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t static Completions.timeout<A>(name:timeoutQueue:workQueue:completion:timeoutMillis:fileABC:defaultValue:_:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, NSObject *a11, uint64_t a12)
{
  v126 = a8;
  v128 = a6;
  v127 = a5;
  v120 = a4;
  v129 = a3;
  v14 = a1;
  v15 = a12;
  v136 = *(a12 - 8);
  v135 = a9;
  MEMORY[0x28223BE20](a1);
  v123 = v16;
  v124 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2664E0038();
  v17 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v141 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_2664E00B8();
  v146 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v139 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_2664DE438();
  v138 = *(v145 - 8);
  v20 = MEMORY[0x28223BE20](v145);
  v134 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v21;
  MEMORY[0x28223BE20](v20);
  v144 = &v104 - v22;
  v23 = sub_2664DFE38();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v121 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v104 - v27;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v23, qword_280F914F0);
  swift_beginAccess();
  v30 = *(v24 + 16);
  v118 = v29;
  v117 = v24 + 16;
  v116 = v30;
  v30(v28, v29, v23);

  v31 = sub_2664DFE18();
  v32 = sub_2664E06C8();

  v33 = os_log_type_enabled(v31, v32);
  v147 = v17;
  v125 = a7;
  v130 = v24;
  if (v33)
  {
    v34 = a7;
    v35 = swift_slowAlloc();
    v36 = v14;
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v35 = 136446466;
    *(v35 + 4) = sub_2662A320C(v36, a2, &aBlock);
    *(v35 + 12) = 2050;
    *(v35 + 14) = v34;
    v15 = a12;
    _os_log_impl(&dword_26629C000, v31, v32, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v38 = v37;
    v14 = v36;
    MEMORY[0x266784AD0](v38, -1, -1);
    MEMORY[0x266784AD0](v35, -1, -1);

    v39 = v130;
  }

  else
  {

    v39 = v24;
  }

  (*(v39 + 8))(v28, v23);
  v137 = v15;
  v143 = v14;
  v122 = v23;
  v131 = a11;
  v119 = a10;
  v40 = v144;
  sub_2664DE428();
  v41 = dispatch_group_create();
  v132 = swift_allocBox();
  v42 = *(v136 + 16);
  v115 = v136 + 16;
  v114 = v42;
  v42(v43, v135, v15);
  aBlock = 0;
  v151 = 0xE000000000000000;
  sub_2664E0B28();

  aBlock = 0xD00000000000001ALL;
  v151 = 0x80000002664F44D0;
  MEMORY[0x2667833B0](v14, a2);
  v45 = aBlock;
  v44 = v151;
  type metadata accessor for AtomicOnce();
  v46 = swift_allocObject();
  v148 = a2;
  v47 = v46;
  *(v46 + 24) = 0;
  *(v46 + 32) = v45;
  *(v46 + 40) = v44;
  v48 = qword_280F91468;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = qword_280F91470;
  v153 = type metadata accessor for SiriKitTaskLoggingProvider();
  v154 = &protocol witness table for SiriKitTaskLoggingProvider;
  aBlock = v49;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v47 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v45, v44, 1, &aBlock);
  dispatch_group_enter(v41);
  v50 = v138;
  v51 = *(v138 + 16);
  v52 = v41;
  v53 = v134;
  v54 = v40;
  v55 = v145;
  v110 = v138 + 16;
  v109 = v51;
  v51(v134, v54, v145);
  v56 = *(v50 + 80);
  v108 = ~v56;
  v57 = (v56 + 64) & ~v56;
  v58 = (v133 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v104 = v56;
  v60 = swift_allocObject();
  v61 = v119;
  *(v60 + 2) = v137;
  *(v60 + 3) = v61;
  *(v60 + 4) = v131;
  *(v60 + 5) = v47;
  v62 = v148;
  *(v60 + 6) = v143;
  *(v60 + 7) = v62;
  v63 = *(v50 + 32);
  v113 = v50 + 32;
  v112 = v63;
  v63(&v60[v57], v53, v55);
  *&v60[v58] = v132;
  v64 = v52;
  *&v60[v59] = v52;
  v154 = sub_2662ED608;
  v155 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v151 = 1107296256;
  v152 = sub_2662A3F90;
  v153 = &block_descriptor_5;
  v65 = _Block_copy(&aBlock);
  v66 = v148;

  v119 = v47;

  v131 = v64;
  v67 = v139;
  sub_2664E0068();
  v149 = MEMORY[0x277D84F90];
  v68 = sub_2662A6120();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v70 = sub_2662A5AC8();
  v71 = v141;
  v107 = v69;
  v106 = v70;
  v72 = v142;
  v111 = v68;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v67, v71, v65);
  _Block_release(v65);
  v73 = v147 + 8;
  v120 = *(v147 + 8);
  v120(v71, v72);
  v74 = *(v146 + 8);
  v146 += 8;
  v105 = v74;
  v74(v67, v140);

  v75 = v121;
  v76 = v122;
  v116(v121, v118, v122);

  v77 = sub_2664DFE18();
  v78 = sub_2664E06E8();
  v79 = v66;

  v80 = os_log_type_enabled(v77, v78);
  v81 = v143;
  v147 = v73;
  if (v80)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    aBlock = v83;
    *v82 = 136446210;
    *(v82 + 4) = sub_2662A320C(v81, v79, &aBlock);
    _os_log_impl(&dword_26629C000, v77, v78, "Completions#timeout waiting for completion: %{public}s...", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x266784AD0](v83, -1, -1);
    MEMORY[0x266784AD0](v82, -1, -1);
  }

  (*(v130 + 8))(v75, v76);
  v84 = v124;
  v85 = v137;
  v114(v124, v135, v137);
  v86 = v134;
  v109(v134, v144, v145);
  v87 = v136;
  v88 = (*(v136 + 80) + 56) & ~*(v136 + 80);
  v89 = (v123 + v104 + v88) & v108;
  v90 = v89 + v133;
  v91 = (((v89 + v133) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  v93 = v131;
  *(v92 + 2) = v85;
  *(v92 + 3) = v93;
  v94 = v143;
  *(v92 + 4) = v125;
  *(v92 + 5) = v94;
  *(v92 + 6) = v148;
  (*(v87 + 32))(&v92[v88], v84, v85);
  v95 = v145;
  v112(&v92[v89], v86, v145);
  v92[v90] = v126 & 1;
  v96 = &v92[v90 & 0xFFFFFFFFFFFFFFF8];
  v97 = v128;
  *(v96 + 1) = v127;
  *(v96 + 2) = v97;
  *&v92[v91] = v132;
  v154 = sub_2662ED6B8;
  v155 = v92;
  aBlock = MEMORY[0x277D85DD0];
  v151 = 1107296256;
  v152 = sub_2662A3F90;
  v153 = &block_descriptor_12;
  v98 = _Block_copy(&aBlock);

  v99 = v131;

  v100 = v139;
  sub_2664E0068();
  v149 = MEMORY[0x277D84F90];
  v102 = v141;
  v101 = v142;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v100, v102, v98);
  _Block_release(v98);

  v120(v102, v101);
  v105(v100, v140);
  (*(v138 + 8))(v144, v95);
}