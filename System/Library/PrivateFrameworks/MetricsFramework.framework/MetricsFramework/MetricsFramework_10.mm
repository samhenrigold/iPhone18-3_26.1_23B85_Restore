uint64_t sub_258EC1AD0()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = (*(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
    v5 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
    *(v0 + 96) = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService;
    *(v0 + 104) = v5;
    *(v0 + 112) = *v4;
    *(v0 + 120) = v4[1];
    *(v0 + 184) = *(v3 + 80);
    *(v0 + 128) = 0;
    if (*(v1 + 16))
    {
      v6 = 0;
      while (1)
      {
        v7 = *(v0 + 112);
        v8 = *(v0 + 32);
        sub_258EC2610(v1 + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(*(v0 + 24) + 72) * v6, v8);
        v9 = v7(v8);
        *(v0 + 136) = v9;
        sub_258EC2674(v8);
        result = v9 >> 62 ? sub_258F0AA20() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 144) = result;
        v11 = *(v0 + 136);
        if (result)
        {
          break;
        }

        v12 = *(v0 + 128);
        v13 = *(v0 + 88);

        if (v12 + 1 == v13)
        {
          goto LABEL_11;
        }

        v6 = *(v0 + 128) + 1;
        *(v0 + 128) = v6;
        v1 = *(v0 + 40);
        if (v6 >= *(v1 + 16))
        {
          goto LABEL_20;
        }
      }

      if ((v11 & 0xC000000000000001) == 0)
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v15 = *(v11 + 32);
        goto LABEL_17;
      }
    }

    else
    {
LABEL_20:
      __break(1u);
    }

    v15 = MEMORY[0x259C9E3B0](0);
LABEL_17:
    v16 = v15;
    *(v0 + 152) = v15;
    *(v0 + 160) = 1;
    v17 = *(v0 + 104);
    v18 = *(v0 + 16);
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    *v19 = v0;
    v19[1] = sub_258EC1D0C;

    return sub_258EB5738(v16, v18 + v17);
  }

LABEL_11:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_258EC1D0C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_258EC22E8;
  }

  else
  {
    v2 = sub_258EC1E28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258EC1E28()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  if (v1 != v2)
  {
    v4 = *(v0 + 160);
LABEL_10:
    v12 = *(v0 + 136);
    if ((v12 & 0xC000000000000001) != 0)
    {
LABEL_21:
      v13 = MEMORY[0x259C9E3B0](v4);
    }

    else
    {
      if (v4 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v13 = *(v12 + 8 * v4 + 32);
    }

    v14 = v13;
    *(v0 + 152) = v13;
    *(v0 + 160) = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      v15 = *(v0 + 104);
      v16 = *(v0 + 16);
      v17 = swift_task_alloc();
      *(v0 + 168) = v17;
      *v17 = v0;
      v17[1] = sub_258EC1D0C;

      sub_258EB5738(v14, v16 + v15);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  while (1)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 88);

    if (v3 + 1 == v4)
    {
      break;
    }

    v5 = *(v0 + 128) + 1;
    *(v0 + 128) = v5;
    v6 = *(v0 + 40);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = *(v0 + 112);
    v8 = *(v0 + 32);
    sub_258EC2610(v6 + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(*(v0 + 24) + 72) * v5, v8);
    v9 = v7(v8);
    *(v0 + 136) = v9;
    sub_258EC2674(v8);
    if (v9 >> 62)
    {
      v11 = sub_258F0AA20();
      *(v0 + 144) = v11;
      if (v11)
      {
LABEL_8:
        v4 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 144) = v10;
      if (v10)
      {
        goto LABEL_8;
      }
    }
  }

  v18 = *(v0 + 8);

  v18();
}

uint64_t sub_258EC202C()
{
  v1 = sub_258F0A350();
  v2 = sub_258F0A820();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 80);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "Unable to report execution Event", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = *(v0 + 40);
  v7 = *(v6 + 16);
  *(v0 + 88) = v7;
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = (*(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
    v10 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
    *(v0 + 96) = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService;
    *(v0 + 104) = v10;
    *(v0 + 112) = *v9;
    *(v0 + 120) = v9[1];
    *(v0 + 184) = *(v8 + 80);
    *(v0 + 128) = 0;
    if (*(v6 + 16))
    {
      v11 = 0;
      while (1)
      {
        v12 = *(v0 + 112);
        v13 = *(v0 + 32);
        sub_258EC2610(v6 + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(*(v0 + 24) + 72) * v11, v13);
        v14 = v12(v13);
        *(v0 + 136) = v14;
        sub_258EC2674(v13);
        result = v14 >> 62 ? sub_258F0AA20() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 144) = result;
        v16 = *(v0 + 136);
        if (result)
        {
          break;
        }

        v17 = *(v0 + 128);
        v18 = *(v0 + 88);

        if (v17 + 1 == v18)
        {
          goto LABEL_13;
        }

        v11 = *(v0 + 128) + 1;
        *(v0 + 128) = v11;
        v6 = *(v0 + 40);
        if (v11 >= *(v6 + 16))
        {
          goto LABEL_22;
        }
      }

      if ((v16 & 0xC000000000000001) == 0)
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v20 = *(v16 + 32);
        goto LABEL_19;
      }
    }

    else
    {
LABEL_22:
      __break(1u);
    }

    v20 = MEMORY[0x259C9E3B0](0);
LABEL_19:
    v21 = v20;
    *(v0 + 152) = v20;
    *(v0 + 160) = 1;
    v22 = *(v0 + 104);
    v23 = *(v0 + 16);
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v24[1] = sub_258EC1D0C;

    return sub_258EB5738(v21, v23 + v22);
  }

LABEL_13:

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_258EC22E8(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 152);

  swift_willThrow();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_258EC23E8()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t SiriDeviceExperimentMetricsSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SiriDeviceExperimentMetricsSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258EC2610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExperimentMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EC2674(uint64_t a1)
{
  v2 = type metadata accessor for DeviceExperimentMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SiriDeviceExperimentMetricsSELFReporter(uint64_t a1)
{
  result = qword_27F98A580;
  if (!qword_27F98A580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EC2724(uint64_t a1)
{
  result = sub_258F0A370();
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

uint64_t SiriDigestMetrics.__allocating_init(defaults:logger:)(void *a1, char *a2)
{
  v4 = swift_allocObject();
  SiriDigestMetrics.init(defaults:logger:)(a1, a2);
  return v4;
}

uint64_t SiriDigestMetrics.init(defaults:logger:)(void *a1, char *a2)
{
  v108 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v100 = (&v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v8);
  v105 = &v89 - v9;
  v97 = sub_258F09B00();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v10);
  v94 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_258F09A20();
  v93 = *(v95 - 1);
  MEMORY[0x28223BE20](v95, v12);
  v92 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258F0A370();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v104 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v113 = &v89 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v107 = (&v89 - v23);
  v24 = sub_258F09A70();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v103 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v89 - v30;
  v122 = v15;
  v32 = *(v15 + 16);
  v101 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_logger;
  v32(v2 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_logger, a2, v14);
  sub_258F09A60();
  v114 = v25;
  v115 = v2;
  v33 = *(v25 + 32);
  v109 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_oddId;
  v102 = v31;
  v110 = v24;
  v99 = v25 + 32;
  v98 = v33;
  v33(v2 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_oddId, v31, v24);
  v34 = sub_258F0A1F0();
  swift_allocObject();
  v35 = v108;
  v36 = sub_258F0A1E0();
  v120 = v34;
  v121 = MEMORY[0x277D04548];
  v119 = v36;
  v37 = a2;
  v38 = a2;
  v39 = v14;
  v106 = v15 + 16;
  v112 = v32;
  v32(v107, v38, v14);
  v40 = sub_258F09C20();
  swift_allocObject();
  v41 = v111;
  v42 = sub_258F09BE0();
  v111 = v41;
  if (v41)
  {
    v43 = *(v122 + 8);
    v43(v37, v39);

    v44 = v115;
    v43((v115 + v101), v39);
    (*(v114 + 8))(&v109[v44], v110);
    type metadata accessor for SiriDigestMetrics(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v45 = v42;
    v46 = v92;
    sub_258F0A090();
    v90 = v35;
    v47 = v94;
    sub_258F09AC0();
    v108 = v45;
    sub_258F09C10();
    (*(v96 + 8))(v47, v97);
    (*(v93 + 8))(v46, v95);
    v48 = v113;
    v91 = v37;
    v49 = v112;
    v112(v113, v37, v39);
    type metadata accessor for SiriDigestMetricsDataProvider(0);
    v50 = swift_allocObject();
    v51 = *(v122 + 32);
    v101 = v122 + 32;
    v107 = v51;
    v51(v50 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsDataProvider_logger, v48, v39);
    v52 = v115;
    *(v115 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsDataProvider) = v50;
    v53 = v52;
    v49(v48, v37, v39);
    v54 = *(v114 + 16);
    v55 = &v109[v53];
    v56 = v102;
    v57 = v110;
    v54(v102, v55, v110);
    v109 = v90;

    v97 = v40;
    v58 = v105;
    sub_258EC3550(v105);
    v49(v104, v48, v39);
    v59 = v100;
    sub_258DECF90(v58, v100);
    v54(v103, v56, v57);
    sub_258F09F30();
    v60 = sub_258F09F20();
    v61 = type metadata accessor for CAAnalyticsEventSubmitter();
    v62 = swift_allocObject();
    type metadata accessor for BiomeResultsWrapperFactory();
    v96 = swift_allocObject();
    v120 = v61;
    v121 = &off_286A2C648;
    v119 = v62;
    type metadata accessor for SiriDigestMetricsCalculator(0);
    v63 = swift_allocObject();
    v64 = __swift_mutable_project_boxed_opaque_existential_1(&v119, v61);
    v95 = &v89;
    MEMORY[0x28223BE20](v64, v64);
    v66 = v39;
    v67 = (&v89 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))(v67);
    v69 = *v67;
    v117 = v61;
    v118 = &off_286A2C648;
    *&v116 = v69;
    v70 = v104;
    v112(v63 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_logger, v104, v66);
    sub_258DECF90(v59, v63 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_sqlFileURL);
    v71 = (v63 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bookmarkService);
    v71[3] = v97;
    v71[4] = &off_286A2FA30;
    *v71 = v108;
    sub_258DED000(v59);
    v72 = v122 + 8;
    v73 = *(v122 + 8);
    v73(v70, v66);
    v100 = v73;
    v122 = v72;
    sub_258DED000(v105);
    (*(v114 + 8))(v102, v57);
    v74 = v113;
    v73(v113, v66);
    v98(v63 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_oddId, v103, v57);
    *(v63 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_defaults) = v109;
    *(v63 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bugReporter) = v60;
    sub_258DEE384(&v116, v63 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_analyticsEventSubmitter);
    *(v63 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_biomeResultsFactory) = v96;
    __swift_destroy_boxed_opaque_existential_1Tm(&v119);
    *(v115 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsCalculator) = v63;
    v75 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v76 = [v75 Metrics];
    swift_unknownObjectRelease();
    v77 = [v76 OnDeviceDigestUsageMetrics];
    swift_unknownObjectRelease();
    v78 = [v77 source];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A5A0, &unk_258F155F8);
    swift_allocObject();
    v79 = sub_258F09B80();
    v80 = v91;
    v81 = v112;
    v112(v74, v91, v66);
    type metadata accessor for SiriDigestMetricsBiomeReporter(0);
    v82 = swift_allocObject();
    *(v82 + 16) = v79;
    v83 = v107;
    v107(v82 + OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger, v74, v66);
    v81(v74, v80, v66);

    v84 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0, 0);
    type metadata accessor for SiriDigestMetricsSELFReporter(0);
    v85 = swift_allocObject();
    *(v85 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
    v83(v85 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger, v113, v66);
    v44 = v115;
    *(v85 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_reportingService) = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_258F0F6D0;
    *(v86 + 32) = v82;
    *(v86 + 40) = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A5A8, &qword_258F15608);
    swift_allocObject();

    v119 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A5B0, qword_258F15610);
    swift_allocObject();
    v87 = sub_258F09BC0();

    v100(v91, v66);
    *(v44 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsReporter) = v87;
  }

  return v44;
}

uint64_t sub_258EC3550@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriDigestMetricsCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t type metadata accessor for SiriDigestMetrics(uint64_t a1)
{
  result = qword_280CC5B18;
  if (!qword_280CC5B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EC36D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EC36F4, 0, 0);
}

uint64_t sub_258EC36F4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258ECA04C();
}

uint64_t sub_258EC3798(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EC37C8, 0, 0);
}

uint64_t sub_258EC37C8()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DED218;

  return v4(v0 + 16);
}

uint64_t sub_258EC3894(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EC38B4, 0, 0);
}

uint64_t sub_258EC38B4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED408;
  v2 = *(v0 + 16);

  return sub_258EC55DC(v2);
}

uint64_t SiriDigestMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SiriDigestMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258EC3B34(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EC3B58, 0, 0);
}

uint64_t sub_258EC3B58()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258ECA04C();
}

uint64_t sub_258EC3BFC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EC3C20, 0, 0);
}

uint64_t sub_258EC3C20()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED984;
  v2 = *(v0 + 16);

  return sub_258EC55DC(v2);
}

uint64_t sub_258EC3CC4(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EC3CF8, 0, 0);
}

uint64_t sub_258EC3CF8()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DEDBC8;

  return v4(v0 + 16);
}

uint64_t sub_258EC3E60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriDigestMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258EC3EA4()
{
  result = qword_27F98A5D8;
  if (!qword_27F98A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A5D8);
  }

  return result;
}

unint64_t sub_258EC3EF8()
{
  result = qword_27F98A5E0;
  if (!qword_27F98A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A5E0);
  }

  return result;
}

uint64_t dispatch thunk of SiriDigestMetrics.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of SiriDigestMetrics.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of SiriDigestMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t SiriDigestMetricsBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t SiriDigestMetricsBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258EC440C(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = *(type metadata accessor for DeviceUsageMetrics(0) - 8);
  v4 = swift_task_alloc();
  v5 = *(a1 + 16);
  v2[4] = v4;
  v2[5] = v5;

  return MEMORY[0x2822009F8](sub_258EC44D0, 0, 0);
}

uint64_t sub_258EC44D0(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: SiriDigestMetricsBiomeReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[5];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v1[3];
    v8 = v1[5] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      v10 = v1[4];
      sub_258E76CD0(v8, v10);
      v11 = _s16MetricsFramework010SiriDigestA13BiomeReporterC06createe8OnDeviced5UsageA5Event05usageA0So06BMSirihidjA0CAA0ijA0V_tFZ_0(v10);
      sub_258E76D34(v10);
      sub_258F09B90();

      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v12 = v1[1];

  return v12();
}

uint64_t sub_258EC462C()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t SiriDigestMetricsBiomeReporter.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriDigestMetricsBiomeReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id _s16MetricsFramework010SiriDigestA13BiomeReporterC06createe8OnDeviced5UsageA5Event05usageA0So06BMSirihidjA0CAA0ijA0V_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for DeviceUsageMetrics(0);
  v3 = *(a1 + v2[37]);
  if (v3)
  {
    v54 = MEMORY[0x277D84F90];
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      do
      {
        v6 = *v5++;
        if ([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_])
        {
          MEMORY[0x259C9DF50]();
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_258F0A6D0();
          }

          sub_258F0A700();
        }

        --v4;
      }

      while (v4);
    }
  }

  v37 = _s16MetricsFramework13EventMetadataV07toBiomeC005usagecD0So025BMSiriOnDeviceDigestUsageacD0CACSg_tFZ_0(a1);
  v30 = *(a1 + v2[6] + 8);
  if (*(a1 + v2[7] + 4))
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_258F0AE20();
  }

  if (*(a1 + v2[8]) == 3)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_258F0A7D0();
  }

  v28 = *(a1 + v2[9] + 8);
  if (*(a1 + v2[10] + 4))
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_258F0AE20();
  }

  if (*(a1 + v2[11] + 4))
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_258F0AE20();
  }

  v25 = *(a1 + v2[12] + 8);
  v26 = *(a1 + v2[13] + 8);
  if (*(a1 + v2[14] + 4))
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_258F0AE20();
  }

  if (*(a1 + v2[15] + 4))
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_258F0AE20();
  }

  v7 = v2[16];
  v8 = *(a1 + v7);
  if (v8)
  {
    [*(a1 + v7) languageCode];
    v9 = sub_258F0AE20();
    [v8 countryCode];
    v8 = sub_258F0AE20();
  }

  else
  {
    v9 = 0;
  }

  v52 = [objc_allocWithZone(MEMORY[0x277CF1538]) initWithLanguageCode:v9 countryCode:v8];

  v10 = v2[17];
  v11 = *(a1 + v10);
  if (v11)
  {
    [*(a1 + v10) languageCode];
    v12 = sub_258F0AE20();
    [v11 countryCode];
    v11 = sub_258F0AE20();
  }

  else
  {
    v12 = 0;
  }

  v50 = [objc_allocWithZone(MEMORY[0x277CF1538]) initWithLanguageCode:v12 countryCode:v11];

  v23 = *(a1 + v2[18] + 8);
  if (*(a1 + v2[19] + 4))
  {
    v48 = 0;
  }

  else
  {
    v48 = sub_258F0AEB0();
  }

  if (*(a1 + v2[20] + 4))
  {
    v46 = 0;
  }

  else
  {
    v46 = sub_258F0AEB0();
  }

  if (*(a1 + v2[21] + 4))
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_258F0AEB0();
  }

  if (*(a1 + v2[22] + 4))
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_258F0AEB0();
  }

  if (*(a1 + v2[23] + 4))
  {
    v51 = 0;
  }

  else
  {
    v51 = sub_258F0AEB0();
  }

  if (*(a1 + v2[24] + 4))
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_258F0AEB0();
  }

  if (*(a1 + v2[25] + 4))
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_258F0AEB0();
  }

  if (*(a1 + v2[26] + 4))
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_258F0AEB0();
  }

  if (*(a1 + v2[27] + 4))
  {
    v47 = 0;
  }

  else
  {
    v47 = sub_258F0AEB0();
  }

  if (*(a1 + v2[28] + 4))
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_258F0AEB0();
  }

  if (*(a1 + v2[29] + 4))
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_258F0AEB0();
  }

  if (*(a1 + v2[30] + 4))
  {
    v40 = 0;
  }

  else
  {
    v40 = sub_258F0AEB0();
  }

  if (*(a1 + v2[31] + 4))
  {
    v39 = 0;
  }

  else
  {
    v39 = sub_258F0AEB0();
  }

  if (*(a1 + v2[32] + 4))
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_258F0AEB0();
  }

  v14 = *(a1 + v2[33] + 8);
  if (*(a1 + v2[34] + 4))
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_258F0AE20();
  }

  if (*(a1 + v2[36]) == 2)
  {
    v16 = 0;
    if (v30)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v16 = sub_258F0A730();
    if (v30)
    {
LABEL_80:
      v31 = sub_258F0A4E0();
      if (v28)
      {
        goto LABEL_81;
      }

LABEL_85:
      v29 = 0;
      if (v25)
      {
        goto LABEL_82;
      }

      goto LABEL_86;
    }
  }

  v31 = 0;
  if (!v28)
  {
    goto LABEL_85;
  }

LABEL_81:
  v29 = sub_258F0A4E0();
  if (v25)
  {
LABEL_82:
    v17 = sub_258F0A4E0();
    goto LABEL_87;
  }

LABEL_86:
  v17 = 0;
LABEL_87:
  if (v26)
  {
    v18 = sub_258F0A4E0();
    if (v23)
    {
      goto LABEL_89;
    }

LABEL_92:
    v19 = 0;
    if (v14)
    {
      goto LABEL_90;
    }

LABEL_93:
    v20 = 0;
    goto LABEL_94;
  }

  v18 = 0;
  if (!v23)
  {
    goto LABEL_92;
  }

LABEL_89:
  v19 = sub_258F0A4E0();
  if (!v14)
  {
    goto LABEL_93;
  }

LABEL_90:
  v20 = sub_258F0A4E0();
LABEL_94:
  v21 = objc_allocWithZone(MEMORY[0x277CF1520]);
  sub_258E76E10();
  v27 = sub_258F0A6A0();

  v24 = [v21 initWithEventMetadata:v37 deviceType:v31 programCode:v36 productId:v35 systemBuild:v29 dataSharingOptInStatus:v34 viewInterface:v33 audioInterfaceVendorId:v17 audioInterfaceProductId:v18 asrLocation:v32 nlLocation:v53 siriInputLocale:v52 dictationLocale:v50 subDomain:v19 totalTurnCount:v48 validTurnCount:v46 siriTasksStarted:v45 siriTasksCompleted:v43 flowTasksStarted:v51 flowTasksCompleted:v41 reliabilityRequestCount:v49 reliabilityTurnCount:v38 clientErrorCount:v47 undesiredResponseCount:v44 fatalResponseCount:v42 failureResponseCount:v40 siriUnavailableResponseCount:v39 asrTurnCount:v13 siriResponseId:v20 responseCategory:v15 isIntelligenceEngineRequest:v16 intelligenceEngineRouting:v27];

  return v24;
}

uint64_t type metadata accessor for SiriDigestMetricsBiomeReporter(uint64_t a1)
{
  result = qword_27F98A5F0;
  if (!qword_27F98A5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriDigestMetricsCalculator.__allocating_init(defaults:logger:sqlFileURL:bookmarkService:oddId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a1;
  v44 = a5;
  v42 = a4;
  v38 = a3;
  v39 = a2;
  v6 = sub_258F09A70();
  v36 = *(v6 - 8);
  v7 = v36;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v34 - v13;
  v15 = sub_258F0A370();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v34 = *(v16 + 16);
  v35 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34();
  v19 = v14;
  sub_258DE20C0(a3, v14, &qword_27F988720, &qword_258F0B830);
  (*(v7 + 16))(v10, v44, v6);
  sub_258F09F30();
  v40 = sub_258F09F20();
  v20 = type metadata accessor for CAAnalyticsEventSubmitter();
  v21 = swift_allocObject();
  type metadata accessor for BiomeResultsWrapperFactory();
  v37 = swift_allocObject();
  v45[3] = v20;
  v45[4] = &off_286A2C648;
  v45[0] = v21;
  type metadata accessor for SiriDigestMetricsCalculator(0);
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v45, v20);
  MEMORY[0x28223BE20](v23, v23);
  v25 = (&v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v28 = (v22 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_analyticsEventSubmitter);
  v28[3] = v20;
  v28[4] = &off_286A2C648;
  *v28 = v27;
  v29 = v35;
  (v34)(v22 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_logger, v35, v15);
  sub_258DE20C0(v19, v22 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v30 = (v22 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bookmarkService);
  v30[3] = sub_258F09C20();
  v30[4] = &off_286A2FA30;
  *v30 = v42;
  v31 = v36;
  (*(v36 + 8))(v44, v6);
  sub_258DE2184(v38, &qword_27F988720, &qword_258F0B830);
  v32 = *(v16 + 8);
  v32(v39, v15);
  sub_258DE2184(v19, &qword_27F988720, &qword_258F0B830);
  v32(v29, v15);
  (*(v31 + 32))(v22 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_oddId, v41, v6);
  *(v22 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_defaults) = v43;
  *(v22 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bugReporter) = v40;
  *(v22 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_biomeResultsFactory) = v37;
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  return v22;
}

uint64_t type metadata accessor for SiriDigestMetricsCalculator(uint64_t a1)
{
  result = qword_280CC5A28;
  if (!qword_280CC5A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriDigestMetricsResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SiriDigestMetricsResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SiriDigestMetricsResults.deviceUsageMetricsResults.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_258EC55DC(uint64_t a1)
{
  v2[259] = v1;
  v2[258] = a1;
  v3 = sub_258F09F40();
  v2[260] = v3;
  v2[261] = *(v3 - 8);
  v2[262] = swift_task_alloc();
  v4 = sub_258F09F50();
  v2[263] = v4;
  v2[264] = *(v4 - 8);
  v2[265] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v2[266] = swift_task_alloc();
  v2[267] = swift_task_alloc();
  v2[268] = *(type metadata accessor for DeviceUsageMetrics(0) - 8);
  v2[269] = swift_task_alloc();
  v2[270] = swift_task_alloc();
  v5 = type metadata accessor for EventMetadata(0);
  v2[271] = v5;
  v2[272] = *(v5 - 8);
  v2[273] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[274] = swift_task_alloc();
  v2[275] = swift_task_alloc();
  v2[276] = swift_task_alloc();
  v2[277] = swift_task_alloc();
  v2[278] = swift_task_alloc();
  v2[279] = swift_task_alloc();
  v2[280] = swift_task_alloc();
  v2[281] = type metadata accessor for CommonDigestElements(0);
  v2[282] = swift_task_alloc();
  v6 = sub_258F09B00();
  v2[283] = v6;
  v2[284] = *(v6 - 8);
  v2[285] = swift_task_alloc();
  v7 = sub_258F09A20();
  v2[286] = v7;
  v2[287] = *(v7 - 8);
  v2[288] = swift_task_alloc();
  v2[289] = swift_task_alloc();
  v2[290] = swift_task_alloc();
  v2[291] = swift_task_alloc();
  v8 = sub_258F0A2C0();
  v2[292] = v8;
  v2[293] = *(v8 - 8);
  v2[294] = swift_task_alloc();
  v2[295] = swift_task_alloc();
  v9 = sub_258F0A2F0();
  v2[296] = v9;
  v2[297] = *(v9 - 8);
  v2[298] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EC5A50, 0, 0);
}

void sub_258EC5A50()
{
  v297 = v0;
  sub_258F0A2E0();
  sub_258F0A2D0();
  sub_258F0A2A0();
  v1 = sub_258F0A2D0();
  v2 = sub_258F0A860();
  if (sub_258F0A900())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_258F0A2B0();
    _os_signpost_emit_with_name_impl(&dword_258DD8000, v1, v2, v4, "SiriDigestMetricsCalculatorSP", "", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v5 = v0[295];
  v6 = v0[294];
  v7 = v0[293];
  v8 = v0[292];

  (*(v7 + 16))(v6, v5, v8);
  sub_258F0A330();
  swift_allocObject();
  v9 = sub_258F0A320();
  v10 = sub_258F0A350();
  v11 = sub_258F0A810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_258DD8000, v10, v11, "SQL calculator invoked: SiriDigestMetricsCalculator", v12, 2u);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  sub_258F0A190();
  *(swift_allocObject() + 16) = xmmword_258F0F8A0;
  sub_258F0A160();
  sub_258F0A160();
  sub_258DE0360();
  v13 = sub_258DE064C();
  v250 = v9;
  v14 = *(v0[259] + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_defaults);
  v15 = sub_258F0A4E0();
  v16 = [v14 BOOLForKey_];

  v294 = v0;
  if (v16)
  {
    sub_258F09A10();
  }

  else
  {
    v17 = v0[285];
    v18 = v0[284];
    v19 = v0[283];
    sub_258F09AC0();
    sub_258F09BB0();
    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[291];
  v21 = v0[287];
  v22 = v0[286];
  sub_258F0A0E0();
  swift_allocObject();
  sub_258F0A0D0();
  sub_258F0A0C0();

  v249 = *(v21 + 8);
  v249(v20, v22);
  v251 = v13;
  v23 = sub_258F0A4E0();
  LODWORD(v20) = [v14 BOOLForKey_];

  v24 = sub_258F0A350();
  v25 = sub_258F0A810();
  v26 = os_log_type_enabled(v24, v25);
  if (v20)
  {
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v296[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_258DE3018(0x747365676944474FLL, 0xEF7363697274654DLL, v296);
      _os_log_impl(&dword_258DD8000, v24, v25, "%s: Include current date data for aggregation.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x259C9EF40](v28, -1, -1);
      MEMORY[0x259C9EF40](v27, -1, -1);
    }

    v29 = v251;
  }

  else
  {
    if (v26)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v296[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_258DE3018(0x747365676944474FLL, 0xEF7363697274654DLL, v296);
      _os_log_impl(&dword_258DD8000, v24, v25, "%s: current date data NOT included for aggregation.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x259C9EF40](v31, -1, -1);
      MEMORY[0x259C9EF40](v30, -1, -1);
    }

    v29 = v251;
    v32 = v251;
  }

  v33 = v0[285];
  v34 = v0[284];
  v35 = v0[283];
  sub_258F0A050();

  v36 = sub_258F0A010();
  v37 = sub_258F0A040();

  type metadata accessor for BiomeResultsWrapper();
  v248 = swift_allocObject();
  *(v248 + 16) = v37;
  sub_258F09B50();
  sub_258F09AC0();
  sub_258F09930();
  v247 = *(v34 + 8);
  v247(v33, v35);
  if ((sub_258F0A070() & 1) == 0)
  {

    v261 = 0;
    v262 = 0;
    v257 = 0;
    v258 = 0;
    v210 = 0;
    v259 = 0;
    v211 = MEMORY[0x277D84F90];
LABEL_387:

    v212 = sub_258F0A350();
    v213 = sub_258F0A810();
    v281 = v211;
    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      *v214 = 134217984;
      *(v214 + 4) = v211[2];

      _os_log_impl(&dword_258DD8000, v212, v213, "SiriDigestMetricsCalculator query yielded %ld results", v214, 0xCu);
      MEMORY[0x259C9EF40](v214, -1, -1);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BE8, &unk_258F13720);
    v215 = swift_allocObject();
    v215[4] = v259;
    v215[5] = 0x69737361206C696ELL;
    v215[6] = 0xEF6449746E617473;
    v216 = v257;
    v215[7] = v257;
    v215[8] = 0xD000000000000015;
    v215[9] = 0x8000000258F1D230;
    v215[10] = v210;
    v215[11] = 0xD000000000000014;
    v215[12] = 0x8000000258F1CBD0;
    if (v259 >= 1)
    {

      sub_258E2DEA4(v259, 0x69737361206C696ELL, 0xEF6449746E617473);

      v216 = v215[7];
    }

    if (v216 >= 1)
    {
      v218 = v215[8];
      v217 = v215[9];

      sub_258E2DEA4(v216, v218, v217);
    }

    v219 = v215[10];
    v220 = v294;
    if (v219 >= 1)
    {
      v222 = v215[11];
      v221 = v215[12];

      sub_258E2DEA4(v219, v222, v221);
      v220 = v294;
    }

    v223 = v220[264];
    v224 = v220[261];
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v225 = swift_allocObject();
    v225[4] = v261;
    v225[5] = sub_258F09F00();
    v225[6] = v226;
    v225[7] = v258;
    v227 = 0;
    v225[8] = sub_258F09EF0();
    v225[9] = v228;
    v225[10] = v262;
    v225[11] = 0xD00000000000002CLL;
    v293 = v225;
    v225[12] = 0x8000000258F1C570;
    v292 = *MEMORY[0x277D5D9E0];
    v288 = (v223 + 8);
    v291 = (v223 + 104);
    v284 = *MEMORY[0x277D5D9B8];
    do
    {
      v229 = v293[v227 + 4];
      v230 = v293[v227 + 5];
      v231 = v293[v227 + 6];

      v232 = v220[265];
      v233 = v220[263];
      if (v229 < 1)
      {
        (*v291)(v220[265], v292, v220[263]);
      }

      else
      {
        v234 = v220[262];
        v235 = v294[260];
        sub_258E2DEA4(v229, v230, v231);
        (*v291)(v232, v292, v233);
        (*(v224 + 104))(v234, v284, v235);
        sub_258F09F10();
        v220 = v294;
        (*(v224 + 8))(v234, v235);
      }

      (*v288)(v220[265], v220[263]);

      v227 += 3;
    }

    while (v227 != 9);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258DFD02C(v248, 1);
    v236 = v220[298];
    v270 = v220[297];
    v272 = v220[296];
    v268 = v220[295];
    v263 = v220[293];
    v265 = v220[292];
    v237 = v220[290];
    v260 = v220[289];
    v238 = v220[288];
    v239 = v220[286];
    v240 = v220[285];
    v241 = v220[283];
    v242 = v220[258];
    sub_258F0A0F0();
    sub_258F09AC0();
    sub_258F09BB0();
    v247(v240, v241);
    v243 = v238;
    v244 = sub_258F09B70();
    v249(v243, v239);

    v249(v260, v239);
    v249(v237, v239);
    v245 = MEMORY[0x277D84F90];
    *v242 = v244;
    v242[1] = v245;
    v242[2] = v281;
    sub_258EC93DC(v236, "SiriDigestMetricsCalculatorSP", 29, 2, v250);

    (*(v263 + 8))(v268, v265);
    (*(v270 + 8))(v236, v272);

    v246 = v220[1];

    v246();
    return;
  }

  v261 = 0;
  v262 = 0;
  v257 = 0;
  v258 = 0;
  v264 = 0;
  v259 = 0;
  v38 = v294;
  v283 = v294 + 154;
  v279 = v294[282];
  v254 = v294[281];
  v282 = v294[271];
  v256 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_oddId;
  v253 = (v294[272] + 56);
  v252 = v294[268];
  v280 = MEMORY[0x277D84F90];
  v255 = v294[259];
  while (1)
  {
    v39 = sub_258F0A060();
    if (!v39)
    {
      goto LABEL_22;
    }

    v40 = v39;
    v41 = sub_258F0A350();
    v42 = sub_258F0A810();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v296[0] = v44;
      *v43 = 136315138;
      v45 = sub_258F0A420();
      v47 = sub_258DE3018(v45, v46, v296);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_258DD8000, v41, v42, "SiriDigestMetrics row data: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x259C9EF40](v44, -1, -1);
      MEMORY[0x259C9EF40](v43, -1, -1);
    }

    v49 = sub_258E2ACFC(v40, *(v38 + 289), 0xD000000000000022, 0x8000000258F1C440);
    if ((v48 & 0x10000) == 0)
    {
      break;
    }

LABEL_22:
    if ((sub_258F0A070() & 1) == 0)
    {

      v211 = v280;
      v210 = v264;
      goto LABEL_387;
    }
  }

  if ((v48 & 0x100) != 0)
  {
    v50 = __OFADD__(v262++, 1);
    if (v50)
    {
      goto LABEL_407;
    }
  }

  if (v48)
  {
    if (__OFADD__(v261, 1))
    {
      goto LABEL_408;
    }

    ++v261;
  }

  sub_258E2BAA0(v40, *(v38 + 282));
  v51 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  *(v38 + 224) = 0xD000000000000015;
  *(v38 + 225) = 0x8000000258F1BA40;
  sub_258F0AA80();
  if (*(v40 + 16) && (v52 = sub_258E2EA2C((v38 + 56)), (v53 & 1) != 0))
  {
    sub_258DE4090(*(v40 + 56) + 32 * v52, (v38 + 816));
    sub_258E0F590((v38 + 56));
    if (swift_dynamicCast())
    {
      v54 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(*(v38 + 254), *(v38 + 255));

      v51 = v54;
    }
  }

  else
  {
    sub_258E0F590((v38 + 56));
  }

  v278 = v51;
  v55 = *(v38 + 280);
  v56 = sub_258F09A70();
  v285 = *(v56 - 8);
  v286 = *(v285 + 56);
  v286(v55, 1, 1, v56);
  strcpy(v38 + 1696, "assistant_id");
  v38[1709] = 0;
  *(v38 + 855) = -5120;
  sub_258F0AA80();
  v289 = v56;
  v277 = v49;
  if (*(v40 + 16) && (v57 = sub_258E2EA2C((v38 + 176)), (v58 & 1) != 0))
  {
    sub_258DE4090(*(v40 + 56) + 32 * v57, (v38 + 912));
    sub_258E0F590((v38 + 176));
    if (swift_dynamicCast())
    {
      v59 = *(v38 + 280);
      v60 = *(v38 + 279);
      sub_258F09A30();

      sub_258DE2184(v59, &qword_27F988730, &unk_258F0F8E0);
      v61 = v60;
      v56 = v289;
      sub_258E2EAD8(v61, v59, &qword_27F988730, &unk_258F0F8E0);
    }
  }

  else
  {
    sub_258E0F590((v38 + 176));
  }

  v62 = *(v38 + 278);
  sub_258DE20C0(*(v38 + 280), v62, &qword_27F988730, &unk_258F0F8E0);
  v63 = *(v285 + 48);
  v64 = v63(v62, 1, v56);
  sub_258DE2184(v62, &qword_27F988730, &unk_258F0F8E0);
  if (v64 == 1)
  {
    v65 = sub_258F0A350();
    v66 = sub_258F0A820();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_258DD8000, v65, v66, "observed NilAssistantId", v67, 2u);
      MEMORY[0x259C9EF40](v67, -1, -1);
    }

    v68 = v289;
    if (__OFADD__(v259, 1))
    {
      goto LABEL_409;
    }

    ++v259;
  }

  else
  {
    v68 = v289;
  }

  v286(v294[277], 1, 1, v68);
  v294[200] = 0xD000000000000015;
  v294[201] = 0x8000000258F189D0;
  sub_258F0AA80();
  if (*(v40 + 16) && (v69 = sub_258E2EA2C((v294 + 37)), (v70 & 1) != 0))
  {
    sub_258DE4090(*(v40 + 56) + 32 * v69, (v294 + 138));
    sub_258E0F590((v294 + 37));
    if (swift_dynamicCast())
    {
      v71 = v294[279];
      v72 = v294[277];
      sub_258F09A30();

      sub_258DE2184(v72, &qword_27F988730, &unk_258F0F8E0);
      v73 = v72;
      v68 = v289;
      sub_258E2EAD8(v71, v73, &qword_27F988730, &unk_258F0F8E0);
    }
  }

  else
  {
    sub_258E0F590((v294 + 37));
  }

  v74 = v294[276];
  sub_258DE20C0(v294[277], v74, &qword_27F988730, &unk_258F0F8E0);
  v75 = v63(v74, 1, v68);
  sub_258DE2184(v74, &qword_27F988730, &unk_258F0F8E0);
  if (v75 == 1)
  {
    v76 = sub_258F0A350();
    v77 = sub_258F0A820();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_258DD8000, v76, v77, "observed NilDeviceAggregationId", v78, 2u);
      MEMORY[0x259C9EF40](v78, -1, -1);
    }

    v79 = v289;
    if (__OFADD__(v258, 1))
    {
      goto LABEL_410;
    }

    ++v258;
  }

  else
  {
    v79 = v289;
  }

  v286(v294[275], 1, 1, v79);
  v294[198] = 0xD000000000000013;
  v294[199] = 0x8000000258F1A5E0;
  sub_258F0AA80();
  if (*(v40 + 16) && (v80 = sub_258E2EA2C((v294 + 52)), (v81 & 1) != 0))
  {
    sub_258DE4090(*(v40 + 56) + 32 * v80, (v294 + 158));
    sub_258E0F590((v294 + 52));
    if (swift_dynamicCast())
    {
      v82 = v294[279];
      v83 = v294[275];
      sub_258F09A30();

      sub_258DE2184(v83, &qword_27F988730, &unk_258F0F8E0);
      v84 = v83;
      v79 = v289;
      sub_258E2EAD8(v82, v84, &qword_27F988730, &unk_258F0F8E0);
    }
  }

  else
  {
    sub_258E0F590((v294 + 52));
  }

  v85 = v294[274];
  sub_258DE20C0(v294[275], v85, &qword_27F988730, &unk_258F0F8E0);
  v86 = v63(v85, 1, v79);
  sub_258DE2184(v85, &qword_27F988730, &unk_258F0F8E0);
  if (v86 == 1)
  {
    v87 = sub_258F0A350();
    v88 = sub_258F0A820();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_258DD8000, v87, v88, "observed NilUserAggregationId", v89, 2u);
      MEMORY[0x259C9EF40](v89, -1, -1);
    }

    v90 = v294;
    if (__OFADD__(v257, 1))
    {
      goto LABEL_411;
    }

    ++v257;
  }

  else
  {
    v90 = v294;
  }

  v90[192] = 0xD000000000000029;
  v90[193] = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(v40 + 16) && (v91 = sub_258E2EA2C((v90 + 67)), (v92 & 1) != 0))
  {
    sub_258DE4090(*(v40 + 56) + 32 * v91, (v90 + 106));
  }

  else
  {
    *(v90 + 53) = 0u;
    *(v90 + 54) = 0u;
  }

  sub_258E0F590((v90 + 67));
  if (v90[109])
  {
    v93 = swift_dynamicCast();
    if (v93)
    {
      v94 = v294[257];
    }

    else
    {
      v94 = 0;
    }

    v95 = v93 ^ 1;
  }

  else
  {
    sub_258DE2184((v90 + 106), &qword_27F989868, &unk_258F12D70);
    v94 = 0;
    v95 = 1;
  }

  v90[206] = 0xD00000000000002BLL;
  v90[207] = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(v40 + 16) && (v96 = sub_258E2EA2C((v90 + 82)), (v97 & 1) != 0))
  {
    sub_258DE4090(*(v40 + 56) + 32 * v96, v283);
  }

  else
  {
    *v283 = 0u;
    *(v294 + 78) = 0u;
  }

  sub_258E0F590((v90 + 82));
  if (v90[157])
  {
    v98 = swift_dynamicCast();
    if (v98)
    {
      v99 = v294[256];
    }

    else
    {
      v99 = 0;
    }

    v100 = v98 ^ 1;
  }

  else
  {
    sub_258DE2184(v283, &qword_27F989868, &unk_258F12D70);
    v99 = 0;
    v100 = 1;
  }

  v274 = v100;
  v90[222] = 0xD000000000000016;
  v90[223] = 0x8000000258F1BA60;
  sub_258F0AA80();
  sub_258E262F8((v90 + 97), v40, v90 + 61);
  sub_258E0F590((v90 + 97));
  v276 = v95;
  v275 = v99;
  if (v90[125])
  {
    if (swift_dynamicCast())
    {
      v101 = v90[190];
      v102 = v90[191];

      v103._countAndFlagsBits = v101;
      v103._object = v102;
      SiriReponseCategory.init(rawValue:)(v103);
      if (v295 == 21)
      {
        goto LABEL_412;
      }

      LOBYTE(v296[0]) = v295;
      v104 = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(v296);
      v105 = 0;
      goto LABEL_99;
    }
  }

  else
  {
    sub_258DE2184((v90 + 122), &qword_27F989868, &unk_258F12D70);
  }

  v106 = sub_258F0A350();
  v107 = sub_258F0A820();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_258DD8000, v106, v107, "observed NilResponseCategory", v108, 2u);
    MEMORY[0x259C9EF40](v108, -1, -1);
  }

  v50 = __OFADD__(v264++, 1);
  if (v50)
  {
    goto LABEL_406;
  }

  v104 = 0;
  v105 = 1;
LABEL_99:
  v90[218] = 0x6974756F725F6569;
  v90[219] = 0xEA0000000000676ELL;
  sub_258F0AA80();
  sub_258E262F8((v90 + 2), v40, v90 + 89);
  sub_258E0F590((v90 + 2));
  v267 = v94;
  if (v90[181])
  {
    if (swift_dynamicCast())
    {
      v109 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v90[252], v90[253]);

      goto LABEL_106;
    }
  }

  else
  {
    sub_258DE2184((v90 + 178), &qword_27F989868, &unk_258F12D70);
  }

  v110 = sub_258F0A350();
  v111 = sub_258F0A800();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_258DD8000, v110, v111, "No ieRouting found.", v112, 2u);
    MEMORY[0x259C9EF40](v112, -1, -1);
  }

  v109 = 0;
LABEL_106:
  v90[216] = 0xD000000000000011;
  v90[217] = 0x8000000258F1BA80;
  sub_258F0AA80();
  sub_258E262F8((v90 + 92), v40, v90 + 59);
  sub_258E0F590((v90 + 92));
  v273 = v104;
  v271 = v105;
  v269 = v109;
  if (!v90[121])
  {
    sub_258DE2184((v90 + 118), &qword_27F989868, &unk_258F12D70);
    goto LABEL_111;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_111:
    v115 = 0;
    v266 = 1;
    goto LABEL_319;
  }

  v113 = sub_258F0A4E0();

  v114 = v113;
  if ([v114 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"])
  {
    v115 = 0;
  }

  else if ([v114 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
  {
    v115 = 1;
  }

  else if ([v114 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
  {
    v115 = 2;
  }

  else if ([v114 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
  {
    v115 = 3;
  }

  else if ([v114 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
  {
    v115 = 4;
  }

  else if ([v114 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
  {
    v115 = 5;
  }

  else if ([v114 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
  {
    v115 = 6;
  }

  else if ([v114 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
  {
    v115 = 7;
  }

  else if ([v114 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
  {
    v115 = 8;
  }

  else if ([v114 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
  {
    v115 = 9;
  }

  else if ([v114 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
  {
    v115 = 10;
  }

  else if ([v114 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
  {
    v115 = 11;
  }

  else
  {
    if ([v114 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
    {
      v115 = 12;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
    {
      v115 = 13;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
    {
      v115 = 14;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
    {
      v115 = 15;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
    {
      v115 = 16;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
    {
      v115 = 17;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
    {
      v115 = 18;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
    {
      v115 = 19;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
    {
      v115 = 20;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
    {
      v115 = 21;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
    {
      v115 = 22;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
    {
      v115 = 23;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
    {
      v115 = 24;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
    {
      v115 = 25;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
    {
      v115 = 26;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
    {
      v115 = 27;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
    {
      v115 = 28;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
    {
      v115 = 29;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
    {
      v115 = 30;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
    {
      v115 = 31;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
    {
      v115 = 32;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
    {
      v115 = 33;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
    {
      v115 = 34;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
    {
      v115 = 35;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
    {
      v115 = 36;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
    {
      v115 = 37;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
    {
      v115 = 38;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
    {
      v115 = 39;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
    {
      v115 = 40;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
    {
      v115 = 41;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
    {
      v115 = 42;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
    {
      v115 = 43;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
    {
      v115 = 44;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
    {
      v115 = 45;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
    {
      v115 = 46;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
    {
      v115 = 47;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
    {
      v115 = 48;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
    {
      v115 = 49;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
    {
      v115 = 50;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
    {
      v115 = 51;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
    {
      v115 = 52;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
    {
      v115 = 53;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
    {
      v115 = 54;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
    {
      v115 = 55;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
    {
      v115 = 56;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
    {
      v115 = 57;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
    {
      v115 = 58;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
    {
      v115 = 59;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
    {
      v115 = 60;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
    {
      v115 = 61;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
    {
      v115 = 62;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
    {
      v115 = 63;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
    {
      v115 = 64;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
    {
      v115 = 65;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v115 = 66;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v115 = 67;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
    {
      v115 = 68;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
    {
      v115 = 69;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
    {
      v115 = 70;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
    {
      v115 = 71;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
    {
      v115 = 72;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
    {
      v115 = 73;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
    {
      v115 = 74;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
    {
      v115 = 75;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
    {
      v115 = 76;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
    {
      v115 = 77;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
    {
      v115 = 78;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
    {
      v115 = 79;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
    {
      v115 = 80;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
    {
      v115 = 81;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
    {
      v115 = 82;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
    {
      v115 = 83;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
    {
      v115 = 84;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
    {
      v115 = 85;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
    {
      v115 = 87;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
    {
      v115 = 88;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
    {
      v115 = 89;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
    {
      v115 = 90;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
    {
      v115 = 91;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
    {
      v115 = 92;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
    {
      v115 = 93;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
    {
      v115 = 94;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
    {
      v115 = 95;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
    {
      v115 = 96;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
    {
      v115 = 97;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
    {
      v115 = 98;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
    {
      v115 = 99;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
    {
      v115 = 100;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
    {
      v115 = 101;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
    {
      v115 = 102;
    }

    else if ([v114 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
    {
      v115 = 103;
    }

    else
    {
      v115 = 0;
    }

    v90 = v294;
  }

  v266 = 0;
LABEL_319:
  v116 = v90[277];
  v117 = v90[275];
  v118 = v90[273];
  (*(v285 + 16))(v118, v255 + v256, v289);
  v286(v118, 0, 1, v289);
  sub_258DE20C0(v116, v118 + v282[5], &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v117, v118 + v282[6], &qword_27F988730, &unk_258F0F8E0);
  sub_258F099E0();
  if ((*&v119 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v119 <= -1.0)
    {
      goto LABEL_403;
    }

    if (v119 >= 1.84467441e19)
    {
      goto LABEL_404;
    }

    if (!is_mul_ok(v119, 0x3E8uLL))
    {
      goto LABEL_405;
    }

    v290 = v115;
    v120 = 1000 * v119;
    v121 = v90[280];
    v122 = v90[279];
    v123 = v90[273];
    v124 = [objc_opt_self() sharedPreferences];
    v125 = [v124 longLivedIdentifierUploadingEnabled];

    v126 = v123 + v282[7];
    *v126 = v120;
    *(v126 + 8) = 0;
    *(v123 + v282[8]) = v277;
    v127 = v123 + v282[9];
    *v127 = v267;
    *(v127 + 8) = v276;
    v128 = v123 + v282[10];
    *v128 = v275;
    *(v128 + 8) = v274;
    v129 = v123 + v282[11];
    *v129 = 0;
    *(v129 + 4) = 1;
    *(v123 + v282[12]) = v125 ^ 1;
    type metadata accessor for DeviceUsageMetricsBuilderImpl(0);
    swift_allocObject();
    v130 = DeviceUsageMetricsBuilderImpl.init()();
    sub_258DE20C0(v121, v122, &qword_27F988730, &unk_258F0F8E0);
    v131 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
    swift_beginAccess();
    sub_258E2EA70(v122, v130 + v131, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    v90[204] = 0x5F746375646F7270;
    v90[205] = 0xEA00000000006469;
    sub_258F0AA80();
    sub_258E262F8((v90 + 87), v40, v90 + 67);
    sub_258E0F590((v90 + 87));
    if (v90[137])
    {
      if (swift_dynamicCast())
      {
        v132 = v90[248];
        v133 = v90[249];
        if (v132 == 0x4E41545349535341 && v133 == 0xE900000000000054 || (sub_258F0AD80() & 1) != 0)
        {

          v134 = 1;
LABEL_331:
          v135 = v90[273];
          v136 = v90[271];
          v137 = v90[267];
          v138 = v90[266];
          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = v134;
          sub_258E7F2AC(v135, v137, type metadata accessor for EventMetadata);
          (*v253)(v137, 0, 1, v136);
          sub_258E2EAD8(v137, v138, &qword_27F9894E0, &unk_258F106A0);
          v139 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
          swift_beginAccess();
          sub_258E2EA70(v138, v130 + v139, &qword_27F9894E0, &unk_258F106A0);
          swift_endAccess();
          v90[194] = 0x745F656369766564;
          v90[195] = 0xEB00000000657079;
          sub_258F0AA80();
          sub_258E262F8((v90 + 77), v40, v90 + 75);
          sub_258E0F590((v90 + 77));
          if (v90[153])
          {
            v140 = swift_dynamicCast();
            v141 = v90[246];
            v142 = v90[247];
            if (!v140)
            {
              v141 = 0;
              v142 = 0;
            }
          }

          else
          {
            sub_258DE2184((v90 + 150), &qword_27F989868, &unk_258F12D70);
            v141 = 0;
            v142 = 0;
          }

          v143 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
          *v143 = v141;
          v143[1] = v142;

          strcpy(v90 + 1680, "system_build");
          *(v90 + 1693) = 0;
          *(v90 + 847) = -5120;
          sub_258F0AA80();
          sub_258E262F8((v90 + 72), v40, v90 + 81);
          sub_258E0F590((v90 + 72));
          if (v90[165])
          {
            v144 = swift_dynamicCast();
            v145 = v90[244];
            v146 = v90[245];
            if (!v144)
            {
              v145 = 0;
              v146 = 0;
            }
          }

          else
          {
            sub_258DE2184((v90 + 162), &qword_27F989868, &unk_258F12D70);
            v145 = 0;
            v146 = 0;
          }

          v147 = v90[282];
          v148 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
          *v148 = v145;
          v148[1] = v146;

          v149 = *(v279 + 44);
          v150 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
          *v150 = *(v279 + 40);
          *(v150 + 4) = v149;
          v151 = *(v279 + 12);
          v152 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
          *v152 = *(v279 + 8);
          *(v152 + 4) = v151;
          v153 = *(v279 + 32);
          v154 = *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = v153;

          v155 = *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = v278;
          v156 = v153;

          v157 = *(v279 + 4);
          v158 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
          *v158 = *v147;
          *(v158 + 4) = v157;
          v90[188] = 0xD000000000000012;
          v90[189] = 0x8000000258F1A600;
          v287 = v278;
          sub_258F0AA80();
          sub_258E262F8((v90 + 62), v40, v90 + 87);
          sub_258E0F590((v90 + 62));
          if (v90[177])
          {
            v159 = swift_dynamicCast();
            v160 = v90[242];
            v161 = v90[243];
            if (!v159)
            {
              v160 = 0;
              v161 = 0;
            }
          }

          else
          {
            sub_258DE2184((v90 + 174), &qword_27F989868, &unk_258F12D70);
            v160 = 0;
            v161 = 0;
          }

          v162 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
          *v162 = v160;
          v162[1] = v161;

          v90[228] = 0xD000000000000013;
          v90[229] = 0x8000000258F1A620;
          sub_258F0AA80();
          sub_258E262F8((v90 + 57), v40, v90 + 85);
          sub_258E0F590((v90 + 57));
          if (v90[173])
          {
            v163 = swift_dynamicCast();
            v164 = v90[240];
            v165 = v90[241];
            if (!v163)
            {
              v164 = 0;
              v165 = 0;
            }
          }

          else
          {
            sub_258DE2184((v90 + 170), &qword_27F989868, &unk_258F12D70);
            v164 = 0;
            v165 = 0;
          }

          v166 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
          *v166 = v164;
          v166[1] = v165;

          v167 = *(v279 + 20);
          v168 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
          *v168 = *(v279 + 16);
          *(v168 + 4) = v167;
          v169 = *(v279 + 28);
          v170 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
          *v170 = *(v279 + 24);
          *(v170 + 4) = v169;
          v90[196] = 0x616D6F645F627573;
          v90[197] = 0xEA00000000006E69;
          sub_258F0AA80();
          sub_258E262F8((v90 + 47), v40, v90 + 83);
          sub_258E0F590((v90 + 47));
          if (v90[169])
          {
            v171 = swift_dynamicCast();
            v172 = v90[238];
            v173 = v90[239];
            if (!v171)
            {
              v172 = 0;
              v173 = 0;
            }
          }

          else
          {
            sub_258DE2184((v90 + 166), &qword_27F989868, &unk_258F12D70);
            v172 = 0;
            v173 = 0;
          }

          v174 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
          *v174 = v172;
          v174[1] = v173;

          v90[202] = 0x746E635F6E727574;
          v90[203] = 0xE800000000000000;
          sub_258F0AA80();
          sub_258E262F8((v90 + 42), v40, v90 + 73);
          sub_258E0F590((v90 + 42));
          if (v90[149])
          {
            v175 = swift_dynamicCast();
            v176 = *(v294 + 598);
            if (!v175)
            {
              v176 = 0;
            }

            v177 = v175 ^ 1;
          }

          else
          {
            sub_258DE2184((v90 + 146), &qword_27F989868, &unk_258F12D70);
            v176 = 0;
            v177 = 1;
          }

          v178 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
          *v178 = v176;
          *(v178 + 4) = v177;
          strcpy(v90 + 1664, "user_turn_cnt");
          *(v90 + 839) = -4864;
          sub_258F0AA80();
          sub_258E262F8((v90 + 32), v40, v90 + 71);
          sub_258E0F590((v90 + 32));
          if (v90[145])
          {
            v179 = swift_dynamicCast();
            v180 = *(v294 + 599);
            if (!v179)
            {
              v180 = 0;
            }

            v181 = v179 ^ 1;
          }

          else
          {
            sub_258DE2184((v90 + 142), &qword_27F989868, &unk_258F12D70);
            v180 = 0;
            v181 = 1;
          }

          v182 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
          *v182 = v180;
          *(v182 + 4) = v181;
          strcpy(v90 + 1712, "asr_turn_cnt");
          *(v90 + 1725) = 0;
          *(v90 + 863) = -5120;
          sub_258F0AA80();
          sub_258E262F8((v90 + 27), v40, v90 + 65);
          sub_258E0F590((v90 + 27));
          if (v90[133])
          {
            v183 = swift_dynamicCast();
            v184 = *(v294 + 600);
            if (!v183)
            {
              v184 = 0;
            }

            v185 = v183 ^ 1;
          }

          else
          {
            sub_258DE2184((v90 + 130), &qword_27F989868, &unk_258F12D70);
            v184 = 0;
            v185 = 1;
          }

          v186 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrTurnCount;
          *v186 = v184;
          *(v186 + 4) = v185;
          v90[220] = 0xD000000000000014;
          v90[221] = 0x8000000258F1E240;
          sub_258F0AA80();
          sub_258E262F8((v90 + 17), v40, v90 + 63);
          sub_258E0F590((v90 + 17));
          if (v90[129])
          {
            v187 = swift_dynamicCast();
            v188 = v90[230];
            v189 = v90[231];
            if (!v187)
            {
              v188 = 0;
              v189 = 0;
            }
          }

          else
          {
            sub_258DE2184((v90 + 126), &qword_27F989868, &unk_258F12D70);
            v188 = 0;
            v189 = 0;
          }

          v190 = v90[282];
          v191 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
          *v191 = v188;
          v191[1] = v189;

          v192 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
          *v192 = v273;
          *(v192 + 4) = v271;
          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds) = *(v190 + *(v254 + 44));

          v90[226] = 0xD00000000000001BLL;
          v90[227] = 0x8000000258F1BAA0;

          sub_258F0AA80();
          sub_258E262F8((v90 + 12), v40, v90 + 55);

          sub_258E0F590((v90 + 12));
          if (v90[113])
          {
            v193 = swift_dynamicCast();
            v194 = *(v90 + 2404);
            if (!v193)
            {
              v194 = 2;
            }
          }

          else
          {
            sub_258DE2184((v90 + 110), &qword_27F989868, &unk_258F12D70);
            v194 = 2;
          }

          v195 = v280;
          v196 = v90[270];
          v197 = v90[269];
          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = v194;
          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting) = v269;

          v198 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
          *v198 = v290;
          *(v198 + 4) = v266;
          sub_258E4D51C(v196);

          sub_258E7F2AC(v196, v197, type metadata accessor for DeviceUsageMetrics);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v195 = sub_258DE2968(0, v280[2] + 1, 1, v280);
          }

          v200 = v195[2];
          v199 = v195[3];
          if (v200 >= v199 >> 1)
          {
            v280 = sub_258DE2968((v199 > 1), v200 + 1, 1, v195);
          }

          else
          {
            v280 = v195;
          }

          v201 = v90[282];
          v202 = v90[280];
          v203 = v90[277];
          v204 = v90[275];
          v205 = v90[273];
          v206 = v294[270];
          v207 = v294[269];

          v208 = v206;
          v38 = v294;
          sub_258E7F378(v208, type metadata accessor for DeviceUsageMetrics);
          sub_258E7F378(v205, type metadata accessor for EventMetadata);
          sub_258DE2184(v204, &qword_27F988730, &unk_258F0F8E0);
          sub_258DE2184(v203, &qword_27F988730, &unk_258F0F8E0);
          sub_258DE2184(v202, &qword_27F988730, &unk_258F0F8E0);
          v280[2] = v200 + 1;
          sub_258E7F314(v207, v280 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v200);
          sub_258E7F378(v201, type metadata accessor for CommonDigestElements);
          goto LABEL_22;
        }

        if (v132 == 0x4F49544154434944 && v133 == 0xE90000000000004ELL)
        {

          v134 = 2;
          goto LABEL_331;
        }

        v209 = sub_258F0AD80();

        if (v209)
        {
          v134 = 2;
          goto LABEL_331;
        }
      }
    }

    else
    {
      sub_258DE2184((v90 + 134), &qword_27F989868, &unk_258F12D70);
    }

    v134 = 0;
    goto LABEL_331;
  }

  __break(1u);
LABEL_403:
  __break(1u);
LABEL_404:
  __break(1u);
LABEL_405:
  __break(1u);
LABEL_406:
  __break(1u);
LABEL_407:
  __break(1u);
LABEL_408:
  __break(1u);
LABEL_409:
  __break(1u);
LABEL_410:
  __break(1u);
LABEL_411:
  __break(1u);
LABEL_412:
  __break(1u);
}

uint64_t sub_258EC93DC(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v24 = a2;
  v6 = sub_258F0A300();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_258F0A2C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_258F0A2D0();
  sub_258F0A310();
  v23 = sub_258F0A850();
  result = sub_258F0A900();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v15, v11);
  }

  if ((a4 & 1) == 0)
  {
    v18 = v24;
    if (v24)
    {
LABEL_9:

      sub_258F0A340();

      if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v10, v6);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_258F0A2B0();
      _os_signpost_emit_with_name_impl(&dword_258DD8000, v16, v23, v21, v18, v19, v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v24 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v24 & 0xFFFFF800) != 0xD800)
  {
    if (v24 >> 16 <= 0x10)
    {
      v18 = &v25;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t SiriDigestMetricsCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_analyticsEventSubmitter));
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bookmarkService));

  v3 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SiriDigestMetricsCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_analyticsEventSubmitter));
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bookmarkService));

  v3 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258EC9938@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258EC99C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EC55DC(a1);
}

id sub_258EC9A5C()
{
  result = sub_258EC9A7C();
  qword_280CC6068 = result;
  return result;
}

id sub_258EC9A7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989390, &unk_258F159D0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v10 - v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = sub_258F0A4E0();
  [v4 setDateFormat_];

  sub_258F09B10();
  v6 = sub_258F09B40();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v3, 1, v6) != 1)
  {
    v8 = sub_258F09B20();
    (*(v7 + 8))(v3, v6);
  }

  [v4 setTimeZone_];

  return v4;
}

uint64_t sub_258EC9BFC(uint64_t a1)
{
  result = sub_258EC9C84(&qword_27F98A608, &unk_258F15890);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EC9C40(uint64_t a1)
{
  result = sub_258EC9C84(&qword_27F98A610, &protocol conformance descriptor for SiriDigestMetricsCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EC9C84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriDigestMetricsCalculator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258EC9CE0(uint64_t a1)
{
  sub_258F0A370();
  if (v1 <= 0x3F)
  {
    sub_258DE3B74(319);
    if (v2 <= 0x3F)
    {
      sub_258F09A70();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of SiriDigestMetricsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t SiriDigestMetricsDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t SiriDigestMetricsDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258ECA06C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SiriDigestMetricsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t SiriDigestMetricsDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriDigestMetricsDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258ECA248()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258ECA04C();
}

uint64_t type metadata accessor for SiriDigestMetricsDataProvider(uint64_t a1)
{
  result = qword_27F98A620;
  if (!qword_27F98A620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SiriDigestMetricsDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t sub_258ECA540(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t dispatch thunk of SiriDigestMetricsReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t SiriDigestMetricsSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_reportingService) = a2;
  return v4;
}

uint64_t sub_258ECA868(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_258ECA8D0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_258ECA918(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SiriDigestMetricsSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_reportingService) = a2;
  return v2;
}

uint64_t sub_258ECAA64(uint64_t a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = *a1;
  *(v2 + 88) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258ECAA94, 0, 0);
}

uint64_t sub_258ECAA94()
{
  v13 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = v1;
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  *(v0 + 96) = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v4 = sub_258ECCB98(&v11, v2 + v3);
  v5 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents;
  *(v0 + 104) = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *(v2 + v5) = v4;

  v6 = sub_258F0A350();
  v7 = sub_258F0A810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_258DD8000, v6, v7, "#SiriDigestMetricsSELFReporter: Start Emitting extension execution metadata event", v8, 2u);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_258ECAC18;

  return sub_258E6422C(1, 1);
}

uint64_t sub_258ECAC18(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_258ECAD18, 0, 0);
}

void sub_258ECAD18(uint64_t a1)
{
  v2 = v1[15];
  v3 = v1[8];
  if (v2)
  {
    v4 = v1[13];
    swift_beginAccess();
    v5 = v2;
    MEMORY[0x259C9DF50]();
    if (*((*(v3 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_258F0A6D0();
    }

    sub_258F0A700();
    swift_endAccess();
    v6 = sub_258F0A350();
    v7 = sub_258F0A810();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_258DD8000, v6, v7, "#SiriDigestMetricsSELFReporter: Emitting extension execution metadata event", v8, 2u);
      MEMORY[0x259C9EF40](v8, -1, -1);
    }
  }

  else
  {
    v6 = sub_258F0A350();
    v9 = sub_258F0A820();
    if (os_log_type_enabled(v6, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_258DD8000, v6, v9, "Unable to create execution metadata event", v10, 2u);
      MEMORY[0x259C9EF40](v10, -1, -1);
    }
  }

  v11 = *(v1[8] + v1[13]);
  v1[16] = v11;
  if (v11 >> 62)
  {
    v12 = sub_258F0AA20();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_reportingService;
  v1[17] = v12;
  v1[18] = v13;

  v14 = v1[16];
  if (v12)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x259C9E3B0](0);
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v15 = *(v14 + 32);
    }

    v1[19] = v15;
    v1[20] = 1;
    v16 = v1[12];
    v17 = v1[8];
    v18 = v15;
    v19 = swift_task_alloc();
    v1[21] = v19;
    *v19 = v1;
    v19[1] = sub_258ECB014;

    sub_258EB5738(v18, v17 + v16);
  }

  else
  {

    v20 = v1[1];

    v20();
  }
}

uint64_t sub_258ECB014()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_258ECB280;
  }

  else
  {
    v2 = sub_258ECB130;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258ECB130()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  if (v1 == v2)
  {

    v3 = *(v0 + 8);

    v3();
    return;
  }

  v4 = *(v0 + 160);
  v5 = *(v0 + 128);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x259C9E3B0](*(v0 + 160));
  }

  else
  {
    if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * v4 + 32);
  }

  v7 = v6;
  *(v0 + 152) = v6;
  *(v0 + 160) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(v0 + 96);
  v9 = *(v0 + 64);
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_258ECB014;

  sub_258EB5738(v7, v9 + v8);
}

uint64_t sub_258ECB280(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 152);

  swift_willThrow();
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_258ECB36C()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t SiriDigestMetricsSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SiriDigestMetricsSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_258ECB570(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    if (*(a1 + *(v4 + 24) + 8))
    {
      v5 = sub_258F0A4E0();
      [v3 setDeviceType_];
    }

    v6 = (a1 + *(v4 + 28));
    if ((v6[1] & 1) == 0)
    {
      [v3 setProgramCode_];
    }
  }

  else
  {
    v7 = sub_258F0A350();
    v8 = sub_258F0A820();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_258DD8000, v7, v8, "Unable to compose ODDSiriSchemaODDFixedDimensions SELF Event", v9, 2u);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECB69C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59248]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    if (*(a1 + v4[9] + 8))
    {
      v5 = sub_258F0A4E0();
      [v3 setSystemBuild_];
    }

    v6 = (a1 + v4[10]);
    if ((v6[1] & 1) == 0)
    {
      [v3 setDataSharingOptInStatus_];
    }

    v7 = (a1 + v4[11]);
    if ((v7[1] & 1) == 0)
    {
      [v3 setViewInterface_];
    }

    if (*(a1 + v4[12] + 8))
    {
      v8 = sub_258F0A4E0();
      [v3 setAudioInterfaceVendorId_];
    }

    if (*(a1 + v4[13] + 8))
    {
      v9 = sub_258F0A4E0();
      [v3 setAudioInterfaceProductId_];
    }

    v10 = (a1 + v4[14]);
    if ((v10[1] & 1) == 0)
    {
      [v3 setAsrLocation_];
    }

    v11 = (a1 + v4[15]);
    if ((v11[1] & 1) == 0)
    {
      [v3 setNlLocation_];
    }

    if (*(a1 + v4[16]))
    {
      [v3 setSiriInputLocale_];
    }

    if (*(a1 + v4[18] + 8))
    {
      v12 = sub_258F0A4E0();
      [v3 setSubDomain_];
    }

    v13 = (a1 + v4[34]);
    if ((v13[1] & 1) == 0)
    {
      [v3 setResponseCategory_];
    }

    v14 = *(a1 + v4[36]);
    if (v14 != 2)
    {
      [v3 setIsIntelligenceEngineRequest_];
    }

    v15 = *(a1 + v4[37]);
    if (v15)
    {
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = (v15 + 32);
        do
        {
          v18 = *v17++;
          [v3 addRouting_];
          --v16;
        }

        while (v16);
      }

      v19 = v3;
      v20 = sub_258F0A350();
      v21 = sub_258F0A800();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = [v19 routingCount];

        _os_log_impl(&dword_258DD8000, v20, v21, "#MetricsSELFReporter: oddAssistantDimensions.IERouting count is %ld", v22, 0xCu);
        MEMORY[0x259C9EF40](v22, -1, -1);
      }

      else
      {

        v20 = v19;
      }
    }

    v26 = (a1 + v4[38]);
    if ((v26[1] & 1) == 0)
    {
      [v3 setInvocationSource_];
    }
  }

  else
  {
    v23 = sub_258F0A350();
    v24 = sub_258F0A820();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_258DD8000, v23, v24, "Unable to compose ODDSiriSchemaODDAssistantDimensions SELF Event", v25, 2u);
      MEMORY[0x259C9EF40](v25, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECBA38(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59400]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    v5 = (a1 + *(v4 + 76));
    if ((v5[1] & 1) == 0)
    {
      [v3 setTotalTurnCount_];
    }

    v6 = (a1 + *(v4 + 80));
    if ((v6[1] & 1) == 0)
    {
      [v3 setValidTurnCount_];
    }
  }

  else
  {
    v7 = sub_258F0A350();
    v8 = sub_258F0A820();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_258DD8000, v7, v8, "Unable to compose ODDSiriSchemaODDTurnCounts SELF Event", v9, 2u);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECBB54(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D593F0]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    v5 = (a1 + v4[21]);
    if ((v5[1] & 1) == 0)
    {
      [v3 setSiriTasksStarted_];
    }

    v6 = (a1 + v4[22]);
    if ((v6[1] & 1) == 0)
    {
      [v3 setSiriTasksCompleted_];
    }

    v7 = (a1 + v4[23]);
    if ((v7[1] & 1) == 0)
    {
      [v3 setFlowTasksStarted_];
    }

    v8 = (a1 + v4[24]);
    if ((v8[1] & 1) == 0)
    {
      [v3 setFlowTasksCompleted_];
    }
  }

  else
  {
    v9 = sub_258F0A350();
    v10 = sub_258F0A820();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_258DD8000, v9, v10, "Unable to compose ODDSiriSchemaODDTaskCounts SELF Event", v11, 2u);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECBCB8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D593A8]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    v5 = (a1 + v4[25]);
    if ((v5[1] & 1) == 0)
    {
      [v3 setReliabilityRequestCount_];
    }

    v6 = (a1 + v4[26]);
    if ((v6[1] & 1) == 0)
    {
      [v3 setReliabilityTurnCount_];
    }

    v7 = (a1 + v4[27]);
    if ((v7[1] & 1) == 0)
    {
      [v3 setClientErrorCount_];
    }

    v8 = (a1 + v4[28]);
    if ((v8[1] & 1) == 0)
    {
      [v3 setUndesiredResponseCount_];
    }

    v9 = (a1 + v4[29]);
    if ((v9[1] & 1) == 0)
    {
      [v3 setFatalResponseCount_];
    }

    v10 = (a1 + v4[30]);
    if ((v10[1] & 1) == 0)
    {
      [v3 setFailureResponseCount_];
    }

    v11 = (a1 + v4[31]);
    if ((v11[1] & 1) == 0)
    {
      [v3 setSiriUnavailableResponseCount_];
    }
  }

  else
  {
    v12 = sub_258F0A350();
    v13 = sub_258F0A820();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_258DD8000, v12, v13, "Unable to compose ODDSiriSchemaODDReliabilityCounts SELF Event", v14, 2u);
      MEMORY[0x259C9EF40](v14, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECBE88(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59220]) init];
  if (v2)
  {
    v3 = v2;
    v4 = sub_258ECBA38(a1);
    [v3 setTurnCounts_];

    v5 = sub_258ECBB54(a1);
    [v3 setTaskCounts_];

    v6 = sub_258ECBCB8(a1);
    [v3 setReliabilityCounts_];
  }

  else
  {
    v6 = sub_258F0A350();
    v7 = sub_258F0A820();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_258DD8000, v6, v7, "Unable to compose ODDSiriSchemaODDAssistantCounts SELF Event", v8, 2u);
      MEMORY[0x259C9EF40](v8, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

void *sub_258ECBFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D59240]) init];
  if (v9)
  {
    v10 = v9;
    v11 = sub_258ECB69C(a1);
    [v10 setDimensions_];

    v12 = sub_258ECBE88(a1);
    [v10 setCounts_];

    v13 = [objc_opt_self() sharedPreferences];
    v14 = [v13 longLivedIdentifierUploadingEnabled];

    if (v14)
    {
      v15 = *(a1 + *(type metadata accessor for DeviceUsageMetrics(0) + 140));
      if (v15)
      {
        v31 = a2;
        v16 = *(v15 + 16);
        if (v16)
        {
          v32 = *(v5 + 16);
          v17 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
          v18 = *(v5 + 72);
          v19 = (v5 + 8);
          do
          {
            v32(v8, v17, v4);
            v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v21 = sub_258F09A50();
            (*v19)(v8, v4);
            v22 = [v20 initWithNSUUID_];

            [v10 addTurnIds_];
            v17 += v18;
            --v16;
          }

          while (v16);
        }

        v23 = v10;
        v24 = sub_258F0A350();
        v25 = sub_258F0A800();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          *(v26 + 4) = [v23 turnIdsCount];

          _os_log_impl(&dword_258DD8000, v24, v25, "#MetricsSELFReporter: Added %ld turnIds to ODDAssistantDigest.", v26, 0xCu);
          MEMORY[0x259C9EF40](v26, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v27 = sub_258F0A350();
    v28 = sub_258F0A820();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_258DD8000, v27, v28, "#MetricsSELFReporter: Unable to compose ODDSiriSchemaODDAssistantDigest SELF Event", v29, 2u);
      MEMORY[0x259C9EF40](v29, -1, -1);
    }

    return 0;
  }

  return v10;
}

void *sub_258ECC324(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59308]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    if (*(a1 + v4[9] + 8))
    {
      v5 = sub_258F0A4E0();
      [v3 setSystemBuild_];
    }

    v6 = (a1 + v4[10]);
    if ((v6[1] & 1) == 0)
    {
      [v3 setDataSharingOptInStatus_];
    }

    v7 = (a1 + v4[11]);
    if ((v7[1] & 1) == 0)
    {
      [v3 setViewInterface_];
    }

    if (*(a1 + v4[12] + 8))
    {
      v8 = sub_258F0A4E0();
      [v3 setAudioInterfaceVendorId_];
    }

    if (*(a1 + v4[13] + 8))
    {
      v9 = sub_258F0A4E0();
      [v3 setAudioInterfaceProductId_];
    }

    v10 = (a1 + v4[14]);
    if ((v10[1] & 1) == 0)
    {
      [v3 setAsrLocation_];
    }

    if (*(a1 + v4[17]))
    {
      [v3 setDictationLocale_];
    }

    v11 = (a1 + v4[38]);
    if ((v11[1] & 1) == 0)
    {
      [v3 setInvocationSource_];
    }
  }

  else
  {
    v12 = sub_258F0A350();
    v13 = sub_258F0A820();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_258DD8000, v12, v13, "Unable to compose ODDSiriSchemaODDDictationDimensions SELF Event", v14, 2u);
      MEMORY[0x259C9EF40](v14, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECC540(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D592F0]) init];
  if (v2)
  {
    v3 = v2;
    v4 = sub_258ECBA38(a1);
    [v3 setTurnCounts_];
  }

  else
  {
    v4 = sub_258F0A350();
    v5 = sub_258F0A820();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_258DD8000, v4, v5, "Unable to compose ODDSiriSchemaODDDictationCounts SELF Event", v6, 2u);
      MEMORY[0x259C9EF40](v6, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

void *sub_258ECC62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D59300]) init];
  if (v9)
  {
    v10 = v9;
    v11 = sub_258ECC324(a1);
    [v10 setDimensions_];

    v12 = sub_258ECC540(a1);
    [v10 setCounts_];

    v13 = [objc_opt_self() sharedPreferences];
    v14 = [v13 longLivedIdentifierUploadingEnabled];

    if (v14)
    {
      v15 = *(a1 + *(type metadata accessor for DeviceUsageMetrics(0) + 140));
      if (v15)
      {
        v31 = a2;
        v16 = *(v15 + 16);
        if (v16)
        {
          v32 = *(v5 + 16);
          v17 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
          v18 = *(v5 + 72);
          v19 = (v5 + 8);
          do
          {
            v32(v8, v17, v4);
            v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v21 = sub_258F09A50();
            (*v19)(v8, v4);
            v22 = [v20 initWithNSUUID_];

            [v10 addTurnIds_];
            v17 += v18;
            --v16;
          }

          while (v16);
        }

        v23 = v10;
        v24 = sub_258F0A350();
        v25 = sub_258F0A800();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          *(v26 + 4) = [v23 turnIdsCount];

          _os_log_impl(&dword_258DD8000, v24, v25, "#MetricsSELFReporter: Added %ld turnIds to ODDDictationDigest.", v26, 0xCu);
          MEMORY[0x259C9EF40](v26, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v27 = sub_258F0A350();
    v28 = sub_258F0A820();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_258DD8000, v27, v28, "Unable to compose ODDSiriSchemaODDDictationDigest SELF Event", v29, 2u);
      MEMORY[0x259C9EF40](v29, -1, -1);
    }

    return 0;
  }

  return v10;
}

NSObject *sub_258ECC98C(uint64_t a1, uint64_t a2, Class *a3, uint64_t (*a4)(uint64_t, uint64_t), const char *a5, const char *a6)
{
  v11 = [objc_allocWithZone(*a3) init];
  if (!v11)
  {
    v12 = sub_258F0A350();
    v20 = sub_258F0A820();
    if (os_log_type_enabled(v12, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_258DD8000, v12, v20, a6, v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
    }

    goto LABEL_12;
  }

  v12 = v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    v22 = sub_258F0A350();
    v23 = sub_258F0A820();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_258DD8000, v22, v23, a5, v24, 2u);
      MEMORY[0x259C9EF40](v24, -1, -1);
    }

LABEL_12:
    return 0;
  }

  v14 = *(type metadata accessor for DeviceUsageMetrics(0) - 8);
  v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v16 = sub_258ECB570(v15);
  [v12 setFixedDimensions:v16];

  v17 = *(v14 + 72);
  do
  {
    v18 = a4(v15, a2);
    if (v18)
    {
      v19 = v18;
      [v12 addDigests:v18];
    }

    v15 += v17;
    --v13;
  }

  while (v13);
  return v12;
}

uint64_t sub_258ECCB98(uint64_t a1, uint64_t a2)
{
  v199 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A650, &unk_258F15C10);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v218 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v217 = &v199 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v199 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v199 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v199 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v199 - v23;
  v216 = type metadata accessor for EventMetadata(0);
  v25 = *(v216 - 8);
  v27 = MEMORY[0x28223BE20](v216, v26);
  v224 = &v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v219 = &v199 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v225 = &v199 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v206 = &v199 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v210 = &v199 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = &v199 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v205 = &v199 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v200 = &v199 - v50;
  MEMORY[0x28223BE20](v49, v51);
  v211 = &v199 - v52;
  v53 = type metadata accessor for DeviceUsageMetrics(0);
  v55 = MEMORY[0x28223BE20](v53, v54);
  v203 = &v199 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v55, v57);
  v214 = &v199 - v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v202 = &v199 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v66 = &v199 - v65;
  MEMORY[0x28223BE20](v64, v67);
  v70 = &v199 - v69;
  v71 = *(a1 + 16);
  v223 = v71[2];
  if (!v223)
  {
    v195 = sub_258F0A350();
    v196 = sub_258F0A800();
    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc();
      *v197 = 0;
      _os_log_impl(&dword_258DD8000, v195, v196, "No On-Device Digest metrics available", v197, 2u);
      MEMORY[0x259C9EF40](v197, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v220 = v13;
  v72 = 0;
  v230 = MEMORY[0x277D84F90];
  v73 = *(v68 + 80);
  v228 = MEMORY[0x277D84F98];
  v229 = MEMORY[0x277D84F98];
  v201 = (v73 + 32) & ~v73;
  v222 = (v71 + v201);
  v215 = (v25 + 48);
  v74 = v25;
  v226 = v25;
  v209 = v21;
  v208 = v24;
  v212 = v44;
  v204 = v53;
  v75 = v68;
  v207 = v68;
  v213 = v66;
  v221 = v71;
  while (v72 < v71[2])
  {
    v76 = *(v75 + 72);
    sub_258E8BAD0(v222 + v76 * v72, v70, type metadata accessor for DeviceUsageMetrics);
    v77 = v70[*(v53 + 32)];
    switch(v77)
    {
      case 3:
        goto LABEL_3;
      case 2:
        v78 = v214;
        sub_258E8BAD0(v70, v214, type metadata accessor for DeviceUsageMetrics);
        v79 = v209;
        sub_258E9F57C(v78, v209);
        if ((*v215)(v79, 1, v216) == 1)
        {
          sub_258E8BB38(v78, type metadata accessor for DeviceUsageMetrics);
          sub_258E8BB38(v70, type metadata accessor for DeviceUsageMetrics);
          sub_258E4B7F0(v79);
          v74 = v226;
        }

        else
        {
          sub_258ECE464(v79, v44, type metadata accessor for EventMetadata);
          v80 = v228;
          if (!v228[2] || (sub_258E2EF70(v44), (v81 & 1) == 0))
          {
            v82 = v210;
            sub_258E8BAD0(v44, v210, type metadata accessor for EventMetadata);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v227[0] = v80;
            v84 = sub_258E2EF70(v82);
            v86 = *(v80 + 16);
            v87 = (v85 & 1) == 0;
            v88 = __OFADD__(v86, v87);
            v89 = v86 + v87;
            if (v88)
            {
              goto LABEL_109;
            }

            v90 = v85;
            if (*(v80 + 24) >= v89)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v131 = v84;
                sub_258ED8A68();
                v84 = v131;
                v75 = v207;
              }
            }

            else
            {
              sub_258ED60EC(v89, isUniquelyReferenced_nonNull_native);
              v84 = sub_258E2EF70(v210);
              if ((v90 & 1) != (v91 & 1))
              {
                goto LABEL_113;
              }
            }

            v44 = v212;
            v105 = v227[0];
            if (v90)
            {
              *(*(v227[0] + 56) + 8 * v84) = MEMORY[0x277D84F90];
            }

            else
            {
              *(v227[0] + 8 * (v84 >> 6) + 64) |= 1 << v84;
              v106 = v84;
              sub_258E8BAD0(v210, v105[6] + *(v226 + 72) * v84, type metadata accessor for EventMetadata);
              *(v105[7] + 8 * v106) = MEMORY[0x277D84F90];
              v107 = v105[2];
              v88 = __OFADD__(v107, 1);
              v108 = v107 + 1;
              if (v88)
              {
                goto LABEL_112;
              }

              v105[2] = v108;
              v75 = v207;
            }

            sub_258E8BB38(v210, type metadata accessor for EventMetadata);
            v228 = v105;
          }

          v109 = v44;
          v110 = v44;
          v111 = v206;
          sub_258E8BAD0(v109, v206, type metadata accessor for EventMetadata);
          v113 = sub_258ED02C4(v227, v111);
          if (*v112)
          {
            v114 = v112;
            sub_258E8BAD0(v214, v203, type metadata accessor for DeviceUsageMetrics);
            v115 = *v114;
            v116 = swift_isUniquelyReferenced_nonNull_native();
            *v114 = v115;
            if ((v116 & 1) == 0)
            {
              v115 = sub_258DE2968(0, v115[2] + 1, 1, v115);
              *v114 = v115;
            }

            v66 = v213;
            v118 = v115[2];
            v117 = v115[3];
            if (v118 >= v117 >> 1)
            {
              v115 = sub_258DE2968((v117 > 1), v118 + 1, 1, v115);
              *v114 = v115;
            }

            v24 = v208;
            v115[2] = v118 + 1;
            sub_258ECE464(v203, v115 + v201 + v118 * v76, type metadata accessor for DeviceUsageMetrics);
            (v113)(v227, 0);
            sub_258E8BB38(v206, type metadata accessor for EventMetadata);
            v44 = v212;
            sub_258E8BB38(v212, type metadata accessor for EventMetadata);
            sub_258E8BB38(v214, type metadata accessor for DeviceUsageMetrics);
            sub_258E8BB38(v70, type metadata accessor for DeviceUsageMetrics);
            v74 = v226;
LABEL_54:
            v53 = v204;
            v75 = v207;
            break;
          }

          (v113)(v227, 0);
          sub_258E8BB38(v111, type metadata accessor for EventMetadata);
          sub_258E8BB38(v110, type metadata accessor for EventMetadata);
          sub_258E8BB38(v214, type metadata accessor for DeviceUsageMetrics);
          sub_258E8BB38(v70, type metadata accessor for DeviceUsageMetrics);
          v74 = v226;
          v24 = v208;
          v44 = v110;
        }

        v66 = v213;
        break;
      case 1:
        sub_258E8BAD0(v70, v66, type metadata accessor for DeviceUsageMetrics);
        sub_258E9F57C(v66, v24);
        if ((*v215)(v24, 1, v216) != 1)
        {
          v92 = v211;
          sub_258ECE464(v24, v211, type metadata accessor for EventMetadata);
          v93 = v229;
          v94 = v200;
          if (!v229[2] || (sub_258E2EF70(v92), (v95 & 1) == 0))
          {
            sub_258E8BAD0(v92, v94, type metadata accessor for EventMetadata);
            v96 = swift_isUniquelyReferenced_nonNull_native();
            v227[0] = v93;
            v97 = sub_258E2EF70(v94);
            v99 = *(v93 + 16);
            v100 = (v98 & 1) == 0;
            v88 = __OFADD__(v99, v100);
            v101 = v99 + v100;
            if (v88)
            {
              goto LABEL_110;
            }

            v102 = v98;
            if (*(v93 + 24) >= v101)
            {
              v104 = v226;
              if ((v96 & 1) == 0)
              {
                v132 = v97;
                sub_258ED8A68();
                v104 = v226;
                v97 = v132;
              }
            }

            else
            {
              sub_258ED60EC(v101, v96);
              v97 = sub_258E2EF70(v94);
              if ((v102 & 1) != (v103 & 1))
              {
                goto LABEL_113;
              }

              v104 = v226;
            }

            v44 = v212;
            v119 = v227[0];
            if (v102)
            {
              *(*(v227[0] + 56) + 8 * v97) = MEMORY[0x277D84F90];

              sub_258E8BB38(v94, type metadata accessor for EventMetadata);
            }

            else
            {
              *(v227[0] + 8 * (v97 >> 6) + 64) |= 1 << v97;
              v120 = v97;
              sub_258E8BAD0(v94, v119[6] + *(v104 + 72) * v97, type metadata accessor for EventMetadata);
              *(v119[7] + 8 * v120) = MEMORY[0x277D84F90];
              sub_258E8BB38(v94, type metadata accessor for EventMetadata);
              v121 = v119[2];
              v88 = __OFADD__(v121, 1);
              v122 = v121 + 1;
              if (v88)
              {
                goto LABEL_111;
              }

              v119[2] = v122;
            }

            v229 = v119;
            v92 = v211;
          }

          v123 = v205;
          sub_258E8BAD0(v92, v205, type metadata accessor for EventMetadata);
          v125 = sub_258ED02C4(v227, v123);
          if (*v124)
          {
            v126 = v124;
            v66 = v213;
            sub_258E8BAD0(v213, v202, type metadata accessor for DeviceUsageMetrics);
            v127 = *v126;
            v128 = swift_isUniquelyReferenced_nonNull_native();
            *v126 = v127;
            if ((v128 & 1) == 0)
            {
              v127 = sub_258DE2968(0, v127[2] + 1, 1, v127);
              *v126 = v127;
            }

            v130 = v127[2];
            v129 = v127[3];
            if (v130 >= v129 >> 1)
            {
              v127 = sub_258DE2968((v129 > 1), v130 + 1, 1, v127);
              *v126 = v127;
            }

            v24 = v208;
            v127[2] = v130 + 1;
            sub_258ECE464(v202, v127 + v201 + v130 * v76, type metadata accessor for DeviceUsageMetrics);
            (v125)(v227, 0);
            sub_258E8BB38(v205, type metadata accessor for EventMetadata);
            sub_258E8BB38(v211, type metadata accessor for EventMetadata);
            sub_258E8BB38(v66, type metadata accessor for DeviceUsageMetrics);
            sub_258E8BB38(v70, type metadata accessor for DeviceUsageMetrics);
            v74 = v226;
            v44 = v212;
          }

          else
          {
            (v125)(v227, 0);
            sub_258E8BB38(v123, type metadata accessor for EventMetadata);
            sub_258E8BB38(v92, type metadata accessor for EventMetadata);
            v66 = v213;
            sub_258E8BB38(v213, type metadata accessor for DeviceUsageMetrics);
            sub_258E8BB38(v70, type metadata accessor for DeviceUsageMetrics);
            v74 = v226;
            v24 = v208;
          }

          goto LABEL_54;
        }

        sub_258E8BB38(v66, type metadata accessor for DeviceUsageMetrics);
        sub_258E8BB38(v70, type metadata accessor for DeviceUsageMetrics);
        sub_258E4B7F0(v24);
        v74 = v226;
        break;
      default:
LABEL_3:
        sub_258E8BB38(v70, type metadata accessor for DeviceUsageMetrics);
        break;
    }

    ++v72;
    v71 = v221;
    if (v223 == v72)
    {
      v133 = v229 + 8;
      v134 = 1 << *(v229 + 32);
      v135 = -1;
      if (v134 < 64)
      {
        v135 = ~(-1 << v134);
      }

      v136 = v135 & v229[8];
      v137 = (v134 + 63) >> 6;
      v222 = v229;

      v138 = 0;
      v216 = MEMORY[0x277D84F90];
      v223 = v16;
      while (1)
      {
        v139 = v138;
        if (!v136)
        {
          break;
        }

        v140 = v138;
LABEL_68:
        v142 = __clz(__rbit64(v136));
        v136 &= v136 - 1;
        v143 = v142 | (v140 << 6);
        v144 = v222;
        v145 = v225;
        sub_258E8BAD0(v222[6] + *(v74 + 72) * v143, v225, type metadata accessor for EventMetadata);
        v146 = *(v144[7] + 8 * v143);
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A658, &unk_258F15C20);
        v148 = *(v147 + 48);
        v149 = v145;
        v150 = v220;
        sub_258ECE464(v149, v220, type metadata accessor for EventMetadata);
        *&v150[v148] = v146;
        (*(*(v147 - 8) + 56))(v150, 0, 1, v147);

        v138 = v140;
        v151 = v150;
LABEL_69:
        v152 = v223;
        sub_258ECE3F4(v151, v223);
        v153 = v152;
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A658, &unk_258F15C20);
        v155 = *(v154 - 8);
        v156 = *(v155 + 48);
        if (v156(v152, 1, v154) == 1)
        {

          v166 = v228 + 8;
          v167 = 1 << *(v228 + 32);
          v168 = -1;
          if (v167 < 64)
          {
            v168 = ~(-1 << v167);
          }

          v169 = v168 & v228[8];
          v170 = (v167 + 63) >> 6;
          v223 = (v155 + 56);
          v221 = v228;

          v171 = 0;
          while (1)
          {
            v172 = v226;
LABEL_81:
            v173 = v171;
            if (!v169)
            {
              break;
            }

            while (1)
            {
              v174 = v173;
LABEL_90:
              v176 = __clz(__rbit64(v169));
              v169 &= v169 - 1;
              v177 = v176 | (v174 << 6);
              v178 = v221;
              v179 = v221[6] + *(v172 + 72) * v177;
              v180 = v225;
              sub_258E8BAD0(v179, v225, type metadata accessor for EventMetadata);
              v181 = *(v178[7] + 8 * v177);
              v182 = *(v154 + 48);
              v183 = v180;
              v184 = v218;
              sub_258ECE464(v183, v218, type metadata accessor for EventMetadata);
              *(v184 + v182) = v181;
              (*v223)(v184, 0, 1, v154);

              v171 = v174;
              v185 = v184;
LABEL_91:
              v186 = v217;
              sub_258ECE3F4(v185, v217);
              if (v156(v186, 1, v154) == 1)
              {

                return v216;
              }

              v187 = *(v186 + *(v154 + 48));
              v188 = v186;
              v189 = v224;
              sub_258ECE464(v188, v224, type metadata accessor for EventMetadata);
              v190 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
              if (v190)
              {
                break;
              }

              sub_258E8BB38(v189, type metadata accessor for EventMetadata);

              v173 = v171;
              v172 = v226;
              if (!v169)
              {
                goto LABEL_83;
              }
            }

            v192 = v190;
            v172 = v226;
            if (!*(v187 + 16))
            {
              sub_258E8BB38(v224, type metadata accessor for EventMetadata);

              goto LABEL_81;
            }

            LOBYTE(v227[0]) = 1;
            v220 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
            [v192 setEventMetadata_];
            v193 = sub_258ECC98C(v187, v199, 0x277D592F8, sub_258ECC62C, "Received empty DeviceUsageMetrics. Not going to compose ODDSiriSchemaODDDictationDeviceDigestsReported SELF Event", "Unable to compose ODDSiriSchemaODDDictationDeviceDigestsReported SELF Event");

            [v192 setDictationDeviceDigestReported_];

            v194 = v192;
            MEMORY[0x259C9DF50]();
            if (*((v230 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_258F0A6D0();
            }

            sub_258F0A700();

            sub_258E8BB38(v224, type metadata accessor for EventMetadata);
            v216 = v230;
          }

LABEL_83:
          if (v170 <= v173 + 1)
          {
            v175 = v173 + 1;
          }

          else
          {
            v175 = v170;
          }

          v171 = v175 - 1;
          while (1)
          {
            v174 = v173 + 1;
            if (__OFADD__(v173, 1))
            {
              goto LABEL_107;
            }

            if (v174 >= v170)
            {
              v191 = v218;
              (*v223)(v218, 1, 1, v154);
              v185 = v191;
              v169 = 0;
              goto LABEL_91;
            }

            v169 = v166[v174];
            ++v173;
            if (v169)
            {
              goto LABEL_90;
            }
          }
        }

        v157 = *&v152[*(v154 + 48)];
        v158 = v219;
        sub_258ECE464(v153, v219, type metadata accessor for EventMetadata);
        v159 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
        v74 = v226;
        if (v159)
        {
          v160 = v159;
          if (*(v157 + 16))
          {
            LOBYTE(v227[0]) = 1;
            v163 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
            [v160 setEventMetadata_];
            v164 = sub_258ECC98C(v157, v199, 0x277D59228, sub_258ECBFC4, "Assistant Device Digest Metrics is empty. Unable to compose ODDSiriSchemaODDAssistantDeviceDigestsReported SELF Event", "Unable to compose ODDSiriSchemaODDAssistantDeviceDigestsReported SELF Event");

            [v160 setAssistantDeviceDigestReported_];

            v165 = v160;
            MEMORY[0x259C9DF50]();
            if (*((v230 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_258F0A6D0();
              v158 = v219;
            }

            sub_258F0A700();

            sub_258E8BB38(v158, type metadata accessor for EventMetadata);
            v216 = v230;
            v74 = v226;
          }

          else
          {
            sub_258E8BB38(v158, type metadata accessor for EventMetadata);
          }
        }

        else
        {
          sub_258E8BB38(v158, type metadata accessor for EventMetadata);
        }
      }

      if (v137 <= v138 + 1)
      {
        v141 = v138 + 1;
      }

      else
      {
        v141 = v137;
      }

      v138 = v141 - 1;
      while (1)
      {
        v140 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          break;
        }

        if (v140 >= v137)
        {
          v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A658, &unk_258F15C20);
          v162 = v220;
          (*(*(v161 - 8) + 56))(v220, 1, 1, v161);
          v151 = v162;
          v136 = 0;
          goto LABEL_69;
        }

        v136 = v133[v140];
        ++v139;
        if (v136)
        {
          goto LABEL_68;
        }
      }

      __break(1u);
LABEL_107:
      __break(1u);
      break;
    }
  }

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
  result = sub_258F0ADC0();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SiriDigestMetricsSELFReporter(uint64_t a1)
{
  result = qword_27F98A640;
  if (!qword_27F98A640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258ECE274(uint64_t a1)
{
  result = sub_258F0A370();
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

uint64_t sub_258ECE3F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A650, &unk_258F15C10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258ECE464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

MetricsFramework::SiriReponseCategory_optional __swiftcall SiriReponseCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0AD90();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_258ECE5F8()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001ALL;
  if (v2 == 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000012;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_258ECE6BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258ECF4C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258ECE6E4(uint64_t a1)
{
  v2 = sub_258ECEB74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258ECE720(uint64_t a1)
{
  v2 = sub_258ECEB74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriResponseIdentifierMapping.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A660, &qword_258F15C30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258ECEB74();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v39[0]) = 0;
  v10 = sub_258F0AC50();
  v12 = v11;
  v33 = v10;
  LOBYTE(v34) = 1;
  sub_258ECEBC8();
  sub_258F0AC70();
  v13 = LOBYTE(v39[0]);
  LOBYTE(v39[0]) = 2;
  v31 = sub_258F0ABF0();
  v49 = v13;
  v32 = v14;
  LOBYTE(v39[0]) = 3;
  v29 = sub_258F0ABF0();
  v30 = v15;
  LOBYTE(v39[0]) = 4;
  v28 = sub_258F0AC00();
  LOBYTE(v39[0]) = 5;
  v27 = sub_258F0AC00();
  v50 = 6;
  v16 = sub_258F0ABF0();
  v17 = v9;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  v20 = v33;
  *&v34 = v33;
  *(&v34 + 1) = v12;
  v21 = v49;
  LOBYTE(v35) = v49;
  v22 = v32;
  *(&v35 + 1) = v31;
  *&v36 = v32;
  *(&v36 + 1) = v29;
  *&v37 = v30;
  BYTE8(v37) = v28;
  BYTE9(v37) = v27;
  *&v38 = v16;
  *(&v38 + 1) = v19;
  v23 = v37;
  a2[2] = v36;
  a2[3] = v23;
  a2[4] = v38;
  v24 = v35;
  *a2 = v34;
  a2[1] = v24;
  sub_258ECEC1C(&v34, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v39[0] = v20;
  v39[1] = v12;
  v40 = v21;
  v41 = v31;
  v42 = v22;
  v43 = v29;
  v44 = v30;
  v45 = v28;
  v46 = v27;
  v47 = v16;
  v48 = v19;
  return sub_258ECEC54(v39);
}

unint64_t sub_258ECEB74()
{
  result = qword_27F98A668;
  if (!qword_27F98A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A668);
  }

  return result;
}

unint64_t sub_258ECEBC8()
{
  result = qword_27F98A670;
  if (!qword_27F98A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A670);
  }

  return result;
}

uint64_t sub_258ECECA0()
{
  result = 0x454C505041;
  switch(*v0)
  {
    case 1:
      result = 0x44454E4E4143;
      break;
    case 2:
      result = 0x4F445F544E4143;
      break;
    case 3:
      result = 0x444E555F544E4143;
      break;
    case 4:
      result = 0x4D5249464E4F43;
      break;
    case 5:
      result = 0x4749424D41534944;
      break;
    case 6:
      result = 0x4E49414D4F44;
      break;
    case 7:
      result = 0x4C41544146;
      break;
    case 8:
      result = 0x44454C444E4148;
      break;
    case 9:
      result = 0x454C504D4F434E49;
      break;
    case 0xA:
      result = 0x4954535245544E49;
      break;
    case 0xB:
      result = 0x524546464FLL;
      break;
    case 0xC:
      result = 0x4843544150;
      break;
    case 0xD:
      result = 0x54504D4F5250;
      break;
    case 0xE:
      result = 0x494E495F49524953;
      break;
    case 0xF:
      result = 0x4C4149434F53;
      break;
    case 0x10:
      result = 0x4954534547475553;
      break;
    case 0x11:
      result = 0x455F4D4554535953;
      break;
    case 0x12:
      result = 0x53524F4644455355;
      break;
    case 0x13:
      result = 0x4345445F52455355;
      break;
    case 0x14:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258ECEEE0()
{
  v0 = SiriReponseCategory.getCategoryCode()();
  v1 = SiriReponseCategory.getCategoryCode()();
  if (v0._countAndFlagsBits == v1._countAndFlagsBits && v0._object == v1._object)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_258F0AD80();
  }

  return v3 & 1;
}

unint64_t sub_258ECEF80()
{
  result = qword_27F98A678;
  if (!qword_27F98A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A678);
  }

  return result;
}

uint64_t sub_258ECEFD4()
{
  sub_258F0AE40();
  SiriReponseCategory.getCategoryCode()();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258ECF03C(uint64_t a1)
{
  SiriReponseCategory.getCategoryCode()();
  sub_258F0A5B0();
}

uint64_t sub_258ECF0A0(uint64_t a1)
{
  sub_258F0AE40();
  SiriReponseCategory.getCategoryCode()();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258ECF110@<X0>(Swift::String *a1@<X8>)
{
  v3 = SiriReponseCategory.getCategoryCode()();
  result = v3._countAndFlagsBits;
  *a1 = v3;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_258ECF1B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_258ECF1FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriReponseCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriReponseCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258ECF3C4()
{
  result = qword_27F98A680;
  if (!qword_27F98A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A680);
  }

  return result;
}

unint64_t sub_258ECF41C()
{
  result = qword_27F98A688;
  if (!qword_27F98A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A688);
  }

  return result;
}

unint64_t sub_258ECF474()
{
  result = qword_27F98A690;
  if (!qword_27F98A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A690);
  }

  return result;
}

uint64_t sub_258ECF4C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000258F1CC50 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000258F1E510 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000258F1E530 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000258F1E550 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000258F1E570 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000258F1E590 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F1E5B0 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_258F0AD80();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_258ECF70C()
{
  result = qword_27F98A698;
  if (!qword_27F98A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A698);
  }

  return result;
}

uint64_t SiriSegmentCohortBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t SiriSegmentCohortBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258ECF864(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = *(type metadata accessor for DeviceSegmentsCohorts(0) - 8);
  v4 = swift_task_alloc();
  v5 = *(a1 + 16);
  v2[4] = v4;
  v2[5] = v5;

  return MEMORY[0x2822009F8](sub_258ECF928, 0, 0);
}

uint64_t sub_258ECF928(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: SiriDigestMetricsBiomeReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[5];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v1[3];
    v8 = v1[5] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      v10 = v1[4];
      sub_258E9906C(v8, v10);
      v11 = _s16MetricsFramework30SiriSegmentCohortBiomeReporterC06createF34OnDeviceDigestSegmentsCohortsEvent08segmentsmA0So06BMSiriijklM0CAA0jlM0V_tFZ_0(v10);
      sub_258E990D0(v10);
      sub_258F09B90();

      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v12 = v1[1];

  return v12();
}

uint64_t sub_258ECFA84()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t SiriSegmentCohortBiomeReporter.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriSegmentCohortBiomeReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id _s16MetricsFramework30SiriSegmentCohortBiomeReporterC06createF34OnDeviceDigestSegmentsCohortsEvent08segmentsmA0So06BMSiriijklM0CAA0jlM0V_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AE0, &qword_258F114B0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v39 - v4;
  v6 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  v7 = type metadata accessor for DeviceSegmentsCohorts(0);
  v8 = a1;
  v9 = *(a1 + *(v7 + 20));
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v40 = v7;
      v41 = v8;
      v42 = v5;
      v11 = (v9 + 60);
      while (1)
      {
        v12 = *(v11 - 16);
        v13 = *(v11 - 8);
        v14 = *v11;
        if (*(v11 - 24))
        {
          v15 = 0;
          if ((*(v11 - 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v15 = sub_258F0AE20();
          if ((v12 & 1) == 0)
          {
LABEL_6:
            v16 = sub_258F0AE20();
            if ((v13 & 1) == 0)
            {
              goto LABEL_7;
            }

            goto LABEL_11;
          }
        }

        v16 = 0;
        if ((v13 & 1) == 0)
        {
LABEL_7:
          v17 = sub_258F0AEB0();
          if (v14)
          {
            goto LABEL_12;
          }

          goto LABEL_8;
        }

LABEL_11:
        v17 = 0;
        if (v14)
        {
LABEL_12:
          v18 = 0;
          goto LABEL_13;
        }

LABEL_8:
        v18 = sub_258F0AEB0();
LABEL_13:
        [objc_allocWithZone(MEMORY[0x277CF1508]) initWithSegmentType:v15 segmentDataAvailabilityState:v16 daysWithTwoValidAssistantTurnsPerWeek:v17 daysWithTwoAssistantSpeechRequestsPerWeek:v18];

        MEMORY[0x259C9DF50]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_258F0A6D0();
        }

        sub_258F0A700();
        v11 += 32;
        if (!--v10)
        {
          v6 = v44;
          v8 = v41;
          v5 = v42;
          v7 = v40;
          break;
        }
      }
    }
  }

  v19 = *(v8 + *(v7 + 24));
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v39 = v6;
      v40 = v7;
      v41 = v8;
      v42 = v5;
      v21 = (v19 + 48);
      while (1)
      {
        v22 = *(v21 - 12);
        v23 = *(v21 - 4);
        v24 = *v21;
        if (*v21)
        {
          v25 = v24;
          [v25 startTimestampInSecondsSince1970];
          [v25 numberOfSeconds];
          v26 = sub_258F0AEC0();
          v27 = sub_258F0AEB0();
        }

        else
        {
          v27 = 0;
          v26 = 0;
        }

        v28 = [objc_allocWithZone(MEMORY[0x277CF1518]) initWithStartTimestampInSecondsSince1970:v26 numberOfSeconds:v27];

        if (v22)
        {
          v29 = 0;
          if (v23)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v29 = sub_258F0AE20();
          if (v23)
          {
LABEL_27:
            v30 = 0;
            goto LABEL_28;
          }
        }

        v30 = sub_258F0AE20();
LABEL_28:
        v31 = objc_allocWithZone(MEMORY[0x277CF1500]);
        v32 = v28;
        [v31 initWithTimeInterval:v32 cohortType:v29 cohortDataAvailabilityState:v30];

        MEMORY[0x259C9DF50]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_258F0A6D0();
        }

        v21 += 3;
        sub_258F0A700();

        if (!--v20)
        {
          v5 = v42;
          v7 = v40;
          v8 = v41;
          break;
        }
      }
    }
  }

  sub_258E9906C(v8, v5);
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v33 = _s16MetricsFramework13EventMetadataV07toBiomeC021deviceSegmentsCohortsSo020BMSiriOnDeviceDigesthicD0CAA0lhI0VSg_tFZ_0(v5);
  sub_258ED0124(v5);
  v34 = objc_allocWithZone(MEMORY[0x277CF14F8]);
  sub_258DEB8C8(0, &qword_27F98A6B8, 0x277CF1508);
  v35 = sub_258F0A6A0();

  sub_258DEB8C8(0, &qword_27F98A6C0, 0x277CF1500);
  v36 = sub_258F0A6A0();

  v37 = [v34 initWithEventMetadata:v33 deviceSegmentsReported:v35 deviceCohortsReported:v36];

  return v37;
}

uint64_t type metadata accessor for SiriSegmentCohortBiomeReporter(uint64_t a1)
{
  result = qword_27F98A6A8;
  if (!qword_27F98A6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258ED0124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AE0, &qword_258F114B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258ED018C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a1 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      sub_258ED404C(v16, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t (*sub_258ED02C4(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for EventMetadata(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_258EDA33C(a2, v8, type metadata accessor for EventMetadata);
  v6[5] = sub_258ED90C0(v6, v9);
  return sub_258ED03A0;
}

uint64_t (*sub_258ED03B8(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_258ED91D4(v6, a2, a3);
  return sub_258ED0440;
}

void sub_258ED0440(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t (*sub_258ED048C(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_258F09A20();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_258ED92E0(v4, v9);
  return sub_258ED05A4;
}

void sub_258ED05A4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t (*sub_258ED061C(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for FunnelEventMetadata(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_258EDA33C(a2, v8, type metadata accessor for FunnelEventMetadata);
  v6[5] = sub_258ED94B4(v6, v9);
  return sub_258ED06F8;
}

void sub_258ED0710(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_258EDA40C(v5, a3);
  free(v5);

  free(v4);
}

uint64_t SiriSegmentCohortResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SiriSegmentCohortResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SiriSegmentCohortResults.deviceSegmentsCohorts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SiriSegmentCohortResults.deviceBatchData.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t SiriSegmentCohortCalculator.__allocating_init(defaults:logger:sqlFileURL:bookmarkService:oddId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v50 = a3;
  v51 = a4;
  v52 = a2;
  v53 = a1;
  v40 = sub_258F09A70();
  v49 = *(v40 - 8);
  v8 = v49;
  MEMORY[0x28223BE20](v40, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v40 - v14;
  v54 = &v40 - v14;
  v42 = sub_258F0A370();
  v47 = *(v42 - 8);
  v16 = v47;
  MEMORY[0x28223BE20](v42, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v16 + 16);
  v44 = v19;
  v43(v19, a2);
  sub_258DE20C0(a3, v15, &qword_27F988720, &qword_258F0B830);
  v20 = *(v8 + 16);
  v21 = v40;
  v20(v11, a5, v40);
  sub_258F09F30();
  v45 = sub_258F09F20();
  v22 = type metadata accessor for CAAnalyticsEventSubmitter();
  v23 = swift_allocObject();
  type metadata accessor for BiomeResultsWrapperFactory();
  v41 = swift_allocObject();
  v56[3] = v22;
  v56[4] = &off_286A2C648;
  v56[0] = v23;
  type metadata accessor for SiriSegmentCohortCalculator(0);
  v24 = swift_allocObject();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v56, v22);
  MEMORY[0x28223BE20](v25, v25);
  v27 = (&v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  v55[3] = v22;
  v55[4] = &off_286A2C648;
  v55[0] = v29;
  v30 = v19;
  v31 = v42;
  (v43)(v24 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_logger, v30, v42);
  sub_258DE20C0(v54, v24 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v32 = (v24 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bookmarkService);
  v32[3] = sub_258F09C20();
  v32[4] = &off_286A2FA30;
  *v32 = v51;
  v33 = v46;
  v34 = v21;
  v20((v24 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_oddId), v46, v21);
  *(v24 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_defaults) = v53;
  *(v24 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bugReporter) = v45;
  sub_258DE3FD8(v55, v24 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_analyticsEventSubmitter);
  *(v24 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_biomeResultsFactory) = v41;
  v35 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v24 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlDateFormatter) = v35;
  v36 = sub_258F0A4E0();
  [v35 setDateFormat_];

  v37 = *(v49 + 8);
  v37(v48, v34);
  sub_258DE2184(v50, &qword_27F988720, &qword_258F0B830);
  v38 = *(v47 + 8);
  v38(v52, v31);
  v37(v33, v34);
  sub_258DE2184(v54, &qword_27F988720, &qword_258F0B830);
  v38(v44, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  return v24;
}

uint64_t type metadata accessor for SiriSegmentCohortCalculator(uint64_t a1)
{
  result = qword_27F98A6F8;
  if (!qword_27F98A6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258ED0E2C(uint64_t a1)
{
  v2[167] = v1;
  v2[166] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v2[168] = swift_task_alloc();
  v2[169] = swift_task_alloc();
  v3 = type metadata accessor for DeviceSegmentsCohorts(0);
  v2[170] = v3;
  v2[171] = *(v3 - 8);
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[174] = swift_task_alloc();
  v2[175] = swift_task_alloc();
  v2[176] = swift_task_alloc();
  v2[177] = swift_task_alloc();
  v4 = sub_258F09B00();
  v2[178] = v4;
  v2[179] = *(v4 - 8);
  v2[180] = swift_task_alloc();
  v5 = sub_258F09A20();
  v2[181] = v5;
  v2[182] = *(v5 - 8);
  v2[183] = swift_task_alloc();
  v2[184] = swift_task_alloc();
  v2[185] = swift_task_alloc();
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v2[188] = swift_task_alloc();
  v2[189] = swift_task_alloc();
  v2[190] = swift_task_alloc();
  v2[191] = swift_task_alloc();
  v2[192] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v2[193] = swift_task_alloc();
  v2[194] = swift_task_alloc();
  v2[195] = swift_task_alloc();
  v2[196] = swift_task_alloc();
  v6 = sub_258F0A2C0();
  v2[197] = v6;
  v2[198] = *(v6 - 8);
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();
  v7 = sub_258F0A2F0();
  v2[201] = v7;
  v2[202] = *(v7 - 8);
  v2[203] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258ED11E0, 0, 0);
}

void sub_258ED11E0()
{
  v290 = v0;
  v1 = v0;
  sub_258F0A2E0();
  sub_258F0A2D0();
  sub_258F0A2A0();
  v2 = sub_258F0A2D0();
  v3 = sub_258F0A860();
  if (sub_258F0A900())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_258F0A2B0();
    _os_signpost_emit_with_name_impl(&dword_258DD8000, v2, v3, v5, "SiriSegmentCohortCalculatorSP", "", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v1[200];
  v7 = v1[199];
  v8 = v1[198];
  v9 = v1[197];

  (*(v8 + 16))(v7, v6, v9);
  sub_258F0A330();
  swift_allocObject();
  v10 = sub_258F0A320();
  v11 = sub_258F0A350();
  v12 = sub_258F0A810();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_258DD8000, v11, v12, "SQL calculator invoked: SiriSegmentCohortCalculator", v13, 2u);
    MEMORY[0x259C9EF40](v13, -1, -1);
  }

  v14 = v1[196];
  v15 = v1[167];

  sub_258DE20C0(v15 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlFileURL, v14, &qword_27F988720, &qword_258F0B830);
  v16 = sub_258F098D0();
  v17 = *(v16 - 8);
  v284 = *(v17 + 48);
  LODWORD(v15) = v284(v14, 1, v16);
  sub_258DE2184(v14, &qword_27F988720, &qword_258F0B830);
  if (v15 == 1)
  {
    v18 = v1[203];
    sub_258DE403C();
    swift_allocError();
    *v19 = 9;
    swift_willThrow();
LABEL_159:
    sub_258ED3DB0(v18, "SiriSegmentCohortCalculatorSP", 29, 2, v10);

    v188 = v1[203];
    v189 = v1;
    v190 = v1[202];
    v191 = v189[201];
    (*(v189[198] + 8))(v189[200], v189[197]);
    (*(v190 + 8))(v188, v191);

    v192 = v189[1];
LABEL_160:

    v192();
    return;
  }

  v283 = v17;
  sub_258DE0388();
  v20 = sub_258DE0674();
  __swift_project_boxed_opaque_existential_1((v1[167] + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bookmarkService), *(v1[167] + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bookmarkService + 24));
  v21 = sub_258F09BD0();
  v226 = v20;
  sub_258F0A100();
  v23 = v22;

  v248 = v1;
  v227 = v10;
  v228 = v16;
  if (v23)
  {
    v24 = v1[191];
    v275 = v1[190];
    v25 = v1[189];
    v26 = v1[182];
    v27 = v1[181];
    v28 = v1[180];
    v29 = v1[179];
    v30 = v248[178];
    sub_258F0A090();
    sub_258F09AC0();
    sub_258F09960();
    v31 = *(v29 + 8);
    v31(v28, v30);
    v32 = *(v26 + 8);
    v32(v25, v27);
    sub_258F09AC0();
    sub_258F09940();
    v31(v28, v30);
    v32(v275, v27);
    sub_258F09AC0();
    sub_258F09950();
    v31(v28, v30);
    v1 = v248;
    v32(v24, v27);
  }

  else
  {
    sub_258F09910();
  }

  v273 = v1[187];
  v276 = v1[186];
  v33 = v1[180];
  v34 = v1[179];
  v35 = v1[178];
  sub_258F09AC0();
  sub_258F09960();
  v36 = *(v34 + 8);
  v36(v33, v35);
  sub_258F0A140();
  sub_258F09920();
  v37 = sub_258F0A120();
  sub_258F09AC0();
  sub_258F09960();
  v36(v33, v35);
  sub_258F09AC0();
  sub_258F09BB0();
  v232 = v36;
  v36(v33, v35);
  v38 = sub_258ED47C8(v273, v276);
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FC0, &qword_258F13C30);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_258F0B820;
  *(v41 + 56) = MEMORY[0x277D837D0];
  *(v41 + 64) = sub_258E98FA8();
  *(v41 + 32) = v38;
  *(v41 + 40) = v40;

  v42 = sub_258F0A520();
  v44 = v43;

  v45 = sub_258F0A350();
  v46 = sub_258F0A810();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v289[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_258DE3018(v42, v44, v289);
    _os_log_impl(&dword_258DD8000, v45, v46, "SQL: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x259C9EF40](v48, -1, -1);
    MEMORY[0x259C9EF40](v47, -1, -1);
  }

  v288 = MEMORY[0x277D84F98];
  sub_258F0A050();
  v225 = v37;
  v229 = sub_258F0A020();
  sub_258F0A040();
  sub_258F0A090();
  if ((sub_258F0A070() & 1) == 0)
  {
    v255 = 0;
    v249 = 0;
    v251 = 0;
    v280 = MEMORY[0x277D84F90];
LABEL_141:

    v157 = sub_258F0A350();
    v158 = sub_258F0A810();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 134217984;
      *(v159 + 4) = v280[2];

      _os_log_impl(&dword_258DD8000, v157, v158, "SiriSegmentCohortCalculator query yielded %ld results", v159, 0xCu);
      MEMORY[0x259C9EF40](v159, -1, -1);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BE8, &unk_258F13720);
    v160 = swift_allocObject();
    v161 = v249;
    v160[4] = v251;
    v160[5] = 0xD000000000000017;
    v160[6] = 0x8000000258F1AF40;
    v160[7] = v249;
    v160[8] = 0xD000000000000015;
    v160[9] = 0x8000000258F1D230;
    v160[10] = v255;
    v160[11] = 0xD00000000000001CLL;
    v160[12] = 0x8000000258F1D250;
    if (v251 >= 1)
    {

      sub_258E2E0FC(v251, 0xD000000000000017, 0x8000000258F1AF40);

      v161 = v160[7];
    }

    if (v161 >= 1)
    {
      v162 = v160[8];
      v163 = v160[9];

      sub_258E2E0FC(v161, v162, v163);
    }

    v164 = v160[10];
    if (v164 >= 1)
    {
      v166 = v160[11];
      v165 = v160[12];

      sub_258E2E0FC(v164, v166, v165);
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v167 = sub_258F0A350();
    v168 = sub_258F0A810();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&dword_258DD8000, v167, v168, "SQL calculator invoked for SiriLogicClockIds", v169, 2u);
      MEMORY[0x259C9EF40](v169, -1, -1);
    }

    type metadata accessor for SiriSegmentCohortMetrics(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v171 = [objc_opt_self() bundleForClass_];
    v172 = sub_258F0A4E0();
    v173 = sub_258F0A4E0();
    v174 = [v171 URLForResource:v172 withExtension:v173];

    if (v174)
    {
      sub_258F098B0();

      v175 = 0;
    }

    else
    {
      v175 = 1;
    }

    v176 = v1[195];
    v177 = v1[194];
    (*(v17 + 56))(v177, v175, 1, v228);
    sub_258E2EAD8(v177, v176, &qword_27F988720, &qword_258F0B830);
    if (v284(v176, 1, v228) == 1)
    {
      v18 = v1[203];
      v286 = v1[195];
      v178 = v1[192];
      v179 = v1[188];
      v180 = v1[187];
      v181 = v1[186];
      v182 = v1[185];
      v183 = v248[182];
      v184 = v248[181];

      sub_258DE403C();
      swift_allocError();
      *v185 = 9;
      swift_willThrow();

      v186 = *(v183 + 8);
      v186(v182, v184);
      v186(v181, v184);
      v186(v180, v184);
      v186(v179, v184);
      v186(v178, v184);
      v1 = v248;
      sub_258DE2184(v286, &qword_27F988720, &qword_258F0B830);

      v10 = v227;
      goto LABEL_159;
    }

    v187 = v1[193];
    sub_258DE20C0(v1[195], v187, &qword_27F988720, &qword_258F0B830);
    if (v284(v187, 1, v228) == 1)
    {
      goto LABEL_204;
    }

    sub_258F0A4D0();
    (*(v17 + 8))(v1[193], v228);
    sub_258F0A040();
    v193 = sub_258F0A070();
    if ((v193 & 1) == 0)
    {
LABEL_190:

      v289[0] = MEMORY[0x277D84F90];
      if (*(v288 + 16))
      {

        sub_258ED018C(v216, &v288, v289);

        v241 = v289[0];
      }

      else
      {
        v241 = MEMORY[0x277D84F90];
      }

      v259 = v248[202];
      v261 = v248[201];
      v250 = v248[203];
      v252 = v248[198];
      v254 = v248[197];
      v256 = v248[200];
      v246 = v248[195];
      v244 = v248[192];
      v217 = v248[188];
      v243 = v248[187];
      v218 = v248[186];
      v219 = v248[185];
      v220 = v248[182];
      v221 = v248[181];
      v222 = v248[166];
      sub_258F0A0F0();
      v242 = sub_258F09B70();

      v223 = *(v220 + 8);
      v223(v219, v221);
      v223(v218, v221);
      v223(v243, v221);
      v223(v217, v221);
      v223(v244, v221);
      *v222 = v242;
      v222[1] = MEMORY[0x277D84F90];
      v222[2] = v280;
      v222[3] = v241;
      sub_258DE2184(v246, &qword_27F988720, &qword_258F0B830);

      sub_258ED3DB0(v250, "SiriSegmentCohortCalculatorSP", 29, 2, v227);

      (*(v252 + 8))(v256, v254);
      (*(v259 + 8))(v250, v261);

      v192 = v248[1];
      goto LABEL_160;
    }

    v285 = (v1 + 111);
    while (1)
    {
      v194 = sub_258F0A060();
      if (v194)
      {
        v195 = v194;
        v1[156] = 0x61645F746E657665;
        v1[157] = 0xEA00000000006574;
        sub_258F0AA80();
        if (*(v195 + 16) && (v196 = sub_258E2EA2C((v1 + 7)), (v197 & 1) != 0))
        {
          sub_258DE4090(*(v195 + 56) + 32 * v196, (v1 + 67));
          sub_258E0F590((v1 + 7));
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_189;
          }

          v198 = v1[147];
          if (*(v288 + 16))
          {
            v199 = v1[146];
            sub_258E2E9B4(v199, v1[147]);
            if ((v200 & 1) == 0)
            {
              goto LABEL_185;
            }

            v1[132] = 0xD000000000000011;
            v1[133] = 0x8000000258F1E650;
            sub_258F0AA80();
            if (*(v195 + 16))
            {
              v201 = sub_258E2EA2C((v1 + 27));
              if (v202)
              {
                sub_258DE4090(*(v195 + 56) + 32 * v201, (v1 + 103));
                sub_258E0F590((v1 + 27));
                if (swift_dynamicCast())
                {
                  v203 = sub_258ED03B8(v285, v199, v198);
                  v204 = v203;
                  v282 = v205;
                  if (*v205)
                  {
                    v279 = v203;
                    v206 = v1[174];
                    sub_258F09A30();
                    v207 = sub_258F09A70();
                    v208 = *(v207 - 8);
                    if ((*(v208 + 48))(v206, 1, v207) == 1)
                    {
                      goto LABEL_205;
                    }

                    v209 = *v282;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v282 = v209;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v209 = sub_258DE26A4(0, v209[2] + 1, 1, v209);
                      *v282 = v209;
                    }

                    v212 = v209[2];
                    v211 = v209[3];
                    v213 = v212 + 1;
                    v281 = v207;
                    if (v212 >= v211 >> 1)
                    {
                      v215 = sub_258DE26A4((v211 > 1), v212 + 1, 1, v209);
                      v213 = v212 + 1;
                      v209 = v215;
                      *v282 = v215;
                    }

                    v1 = v248;
                    v214 = v248[174];
                    v209[2] = v213;
                    (*(v208 + 32))(v209 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v212, v214, v281);
                    v279();
                  }

                  else
                  {

                    v204();
                  }
                }

                else
                {
LABEL_185:
                }

LABEL_189:

                goto LABEL_166;
              }
            }

            sub_258E0F590((v1 + 27));
          }

          else
          {
          }
        }

        else
        {

          sub_258E0F590((v1 + 7));
        }
      }

LABEL_166:
      if ((sub_258F0A070() & 1) == 0)
      {
        goto LABEL_190;
      }
    }
  }

  v255 = 0;
  v249 = 0;
  v251 = 0;
  v49 = v1 + 71;
  v267 = v1 + 107;
  v268 = v1 + 95;
  v266 = v1 + 119;
  v233 = v1 + 165;
  v234 = v1 + 164;
  v224 = (v1 + 204);
  v245 = (v1 + 205);
  v247 = v1 + 409;
  v235 = v1[170];
  v236 = v1[171];
  v240 = v1[167];
  v231 = OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlDateFormatter;
  v239 = OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_oddId;
  v230 = (v1[182] + 8);
  v238 = MEMORY[0x277D84F98];
  v280 = MEMORY[0x277D84F90];
  v237 = v1 + 71;
  while (1)
  {
    v50 = sub_258F0A060();
    if (!v50)
    {
      goto LABEL_15;
    }

    v51 = v50;
    v52 = sub_258F0A350();
    v53 = sub_258F0A810();
    v287 = v51;
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v289[0] = v55;
      *v54 = 136315138;
      v56 = sub_258F0A420();
      v58 = sub_258DE3018(v56, v57, v289);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_258DD8000, v52, v53, "SiriSegmentCohort row data: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x259C9EF40](v55, -1, -1);
      v59 = v54;
      v51 = v287;
      MEMORY[0x259C9EF40](v59, -1, -1);
    }

    v1[144] = 0xD000000000000010;
    v1[145] = 0x8000000258F1D270;
    sub_258F0AA80();
    if (*(v51 + 16) && (v60 = sub_258E2EA2C((v1 + 52)), (v61 & 1) != 0))
    {
      sub_258DE4090(*(v51 + 56) + 32 * v60, (v1 + 99));
      sub_258E0F590((v1 + 52));
      if (swift_dynamicCast())
      {
        v62 = *(v1 + 1645);
      }

      else
      {
        v62 = 2;
      }
    }

    else
    {
      sub_258E0F590((v1 + 52));
      v62 = 2;
    }

    v1[126] = 0xD000000000000015;
    v1[127] = 0x8000000258F1D290;
    sub_258F0AA80();
    if (!*(v51 + 16) || (v63 = sub_258E2EA2C((v1 + 2)), (v64 & 1) == 0))
    {
      sub_258E0F590((v1 + 2));
LABEL_31:
      v65 = 2;
LABEL_32:
      v66 = 1;
      goto LABEL_33;
    }

    sub_258DE4090(*(v51 + 56) + 32 * v63, (v1 + 79));
    sub_258E0F590((v1 + 2));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_31;
    }

    if ((*(v1 + 1644) & 1) == 0)
    {
      v65 = 0;
      goto LABEL_32;
    }

    v65 = 1;
    v66 = 2;
LABEL_33:
    v272 = v66;
    if (v62 != 2 && (v62 & 1) != 0)
    {
      v67 = 2;
LABEL_40:
      v271 = v67;
      goto LABEL_41;
    }

    if (v65 == 2 || (v65 & 1) == 0)
    {
      v67 = 1;
      goto LABEL_40;
    }

    v271 = 0;
LABEL_41:
    v1[154] = 0xD000000000000025;
    v1[155] = 0x8000000258F1AD60;
    sub_258F0AA80();
    if (!*(v287 + 16) || (v68 = sub_258E2EA2C((v1 + 62)), (v69 & 1) == 0))
    {
      sub_258E0F590((v1 + 62));
LABEL_46:
      v70 = 0;
      goto LABEL_47;
    }

    sub_258DE4090(*(v287 + 56) + 32 * v68, (v1 + 75));
    sub_258E0F590((v1 + 62));
    if (!swift_dynamicCast())
    {
      goto LABEL_46;
    }

    v70 = *v245;
LABEL_47:
    v1[142] = 0xD000000000000029;
    v1[143] = 0x8000000258F1AD90;
    sub_258F0AA80();
    if (!*(v287 + 16) || (v71 = sub_258E2EA2C((v1 + 57)), (v72 & 1) == 0))
    {
      sub_258E0F590((v1 + 57));
LABEL_52:
      v73 = 0;
      goto LABEL_53;
    }

    sub_258DE4090(*(v287 + 56) + 32 * v71, (v1 + 87));
    sub_258E0F590((v1 + 57));
    if (!swift_dynamicCast())
    {
      goto LABEL_52;
    }

    v73 = *v247;
LABEL_53:
    if (v62 == 2 || v65 == 2 || (v62 & 1) != 0 || v70 || v73 || (v65 & 1) == 0)
    {
      break;
    }

    v17 = v283;
LABEL_15:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  v269 = v73;
  v263 = v70;
  v74 = v1[177];
  v75 = sub_258F09A70();
  v76 = *(v75 - 8);
  v277 = *(v76 + 56);
  v277(v74, 1, 1, v75);
  v1[138] = 0xD000000000000015;
  v1[139] = 0x8000000258F189D0;
  sub_258F0AA80();
  v77 = v287;
  if (*(v287 + 16) && (v78 = sub_258E2EA2C((v1 + 47)), (v79 & 1) != 0))
  {
    sub_258DE4090(*(v287 + 56) + 32 * v78, v268);
  }

  else
  {
    *v268 = 0u;
    v268[1] = 0u;
  }

  sub_258E0F590((v1 + 47));
  v264 = v76;
  if (v1[98])
  {
    if (swift_dynamicCast())
    {
      v80 = v1[177];
      v81 = v1[176];
      sub_258F09A30();

      sub_258DE2184(v80, &qword_27F988730, &unk_258F0F8E0);
      v77 = v287;
      sub_258E2EAD8(v81, v80, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_70;
    }
  }

  else
  {
    sub_258DE2184(v268, &qword_27F989868, &unk_258F12D70);
  }

  v82 = sub_258F0A350();
  v83 = sub_258F0A820();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_258DD8000, v82, v83, "observed NilDeviceAggregationId", v84, 2u);
    v85 = v84;
    v77 = v287;
    MEMORY[0x259C9EF40](v85, -1, -1);
  }

  v86 = __OFADD__(v251++, 1);
  if (v86)
  {
    goto LABEL_199;
  }

LABEL_70:
  v277(v1[175], 1, 1, v75);
  v1[136] = 0xD000000000000013;
  v1[137] = 0x8000000258F1A5E0;
  sub_258F0AA80();
  if (*(v77 + 16) && (v87 = sub_258E2EA2C((v1 + 42)), (v88 & 1) != 0))
  {
    sub_258DE4090(*(v77 + 56) + 32 * v87, v267);
  }

  else
  {
    *v267 = 0u;
    v267[1] = 0u;
  }

  sub_258E0F590((v1 + 42));
  if (v1[110])
  {
    if (swift_dynamicCast())
    {
      v89 = v1[176];
      v90 = v1[175];
      sub_258F09A30();

      sub_258DE2184(v90, &qword_27F988730, &unk_258F0F8E0);
      v77 = v287;
      sub_258E2EAD8(v89, v90, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_81;
    }
  }

  else
  {
    sub_258DE2184(v267, &qword_27F989868, &unk_258F12D70);
  }

  v91 = sub_258F0A350();
  v92 = sub_258F0A820();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_258DD8000, v91, v92, "observed NilUserAggregationId", v93, 2u);
    v94 = v93;
    v77 = v287;
    MEMORY[0x259C9EF40](v94, -1, -1);
  }

  v86 = __OFADD__(v249++, 1);
  if (v86)
  {
    goto LABEL_200;
  }

LABEL_81:
  v1[162] = 0xD000000000000029;
  v1[163] = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(v77 + 16) && (v95 = sub_258E2EA2C((v1 + 37)), (v96 & 1) != 0))
  {
    sub_258DE4090(*(v77 + 56) + 32 * v95, v266);
  }

  else
  {
    *v266 = 0u;
    v266[1] = 0u;
  }

  sub_258E0F590((v1 + 37));
  if (v1[122])
  {
    v97 = swift_dynamicCast();
    if (v97)
    {
      v98 = *v234;
    }

    else
    {
      v98 = 0;
    }

    v99 = v97 ^ 1;
  }

  else
  {
    sub_258DE2184(v266, &qword_27F989868, &unk_258F12D70);
    v98 = 0;
    v99 = 1;
  }

  v260 = v99;
  v1[134] = 0xD00000000000002BLL;
  v1[135] = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(v77 + 16) && (v100 = sub_258E2EA2C((v1 + 32)), (v101 & 1) != 0))
  {
    sub_258DE4090(*(v77 + 56) + 32 * v100, v49);
  }

  else
  {
    *v49 = 0u;
    v49[1] = 0u;
  }

  sub_258E0F590((v1 + 32));
  if (v1[74])
  {
    v102 = swift_dynamicCast();
    if (v102)
    {
      v103 = *v233;
    }

    else
    {
      v103 = 0;
    }

    v104 = v102 ^ 1;
  }

  else
  {
    sub_258DE2184(v49, &qword_27F989868, &unk_258F12D70);
    v103 = 0;
    v104 = 1;
  }

  v257 = v104;
  v270 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  v1[140] = 0x61645F746E657665;
  v1[141] = 0xEA00000000006574;
  sub_258F0AA80();
  sub_258E262F8((v1 + 22), v77, v1 + 115);
  sub_258E0F590((v1 + 22));
  v262 = v98;
  v258 = v103;
  if (!v1[118])
  {
    sub_258DE2184((v1 + 115), &qword_27F989868, &unk_258F12D70);
LABEL_107:
    if (__OFADD__(v255, 1))
    {
      goto LABEL_198;
    }

    ++v255;
    goto LABEL_109;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_107;
  }

  v105 = *(v240 + v231);
  v106 = sub_258F0A4E0();

  v107 = [v105 dateFromString_];

  if (!v107)
  {
    goto LABEL_107;
  }

  v108 = v1[180];
  v109 = v1[178];
  sub_258F09A00();

  sub_258F09AC0();
  sub_258F09950();
  v232(v108, v109);
  if (sub_258F099C0())
  {
    v110 = v1[184];
    v111 = v1[183];
    v112 = v1[181];
    v113 = v1[177];
    v114 = v1[175];

    v115 = *v230;
    (*v230)(v111, v112);
    v115(v110, v112);
    sub_258DE2184(v114, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v113, &qword_27F988730, &unk_258F0F8E0);
LABEL_126:
    v17 = v283;
    goto LABEL_15;
  }

  if (v270)
  {
    v144 = v1[191];
    v145 = v1[181];
    v146 = v1[180];
    v147 = v1[178];
    v148 = v270;
    sub_258F09AC0();
    sub_258F09930();
    v232(v146, v147);
    sub_258F099E0();
    v150 = v149;
    v151 = v149;
    v152 = *v230;
    (*v230)(v144, v145);
    if ((*&v151 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_201;
    }

    if (v150 <= -1.0)
    {
      goto LABEL_202;
    }

    if (v150 >= 1.84467441e19)
    {
      goto LABEL_203;
    }

    [v148 setStartTimestampInSecondsSince1970_];

    v1[158] = 0xD000000000000018;
    v1[159] = 0x8000000258F1A780;
    v153 = v148;
    sub_258F0AA80();
    sub_258E262F8((v1 + 12), v287, v1 + 83);
    sub_258E0F590((v1 + 12));
    if (v1[86])
    {
      if (swift_dynamicCast())
      {
        v154 = *v224;
      }

      else
      {
        v154 = 86400;
      }
    }

    else
    {
      v154 = 86400;
      sub_258DE2184((v1 + 83), &qword_27F989868, &unk_258F12D70);
    }

    [v153 setNumberOfSeconds_];
  }

  else
  {
    v152 = *v230;
  }

  v155 = v1[184];
  v156 = v1[181];
  v152(v1[183], v156);
  v152(v155, v156);
LABEL_109:
  v116 = v1[177];
  v117 = v1[175];
  v118 = v1[169];
  type metadata accessor for DeviceSegmentsCohortsImpl(0);
  v119 = swift_allocObject();
  v120 = v119 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata;
  v121 = type metadata accessor for EventMetadata(0);
  v122 = *(*(v121 - 1) + 56);
  v122(v120, 1, 1, v121);
  *(v119 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_deviceSegmentsReported) = 0;
  (*(v264 + 16))(v118, v240 + v239, v75);
  v277(v118, 0, 1, v75);
  sub_258DE20C0(v116, v118 + v121[5], &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v117, v118 + v121[6], &qword_27F988730, &unk_258F0F8E0);
  sub_258F099E0();
  if ((*&v123 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v123 <= -1.0)
    {
      goto LABEL_195;
    }

    if (v123 >= 1.84467441e19)
    {
      goto LABEL_196;
    }

    if (!is_mul_ok(v123, 0x3E8uLL))
    {
      goto LABEL_197;
    }

    v253 = 1000 * v123;
    v1 = v248;
    v274 = v248[173];
    v124 = v248[169];
    v265 = v248[168];
    v125 = objc_opt_self();
    v278 = v270;
    v126 = [v125 sharedPreferences];
    v127 = [v126 longLivedIdentifierUploadingEnabled];

    v128 = v124 + v121[7];
    *v128 = v253;
    *(v128 + 8) = 0;
    *(v124 + v121[8]) = v270;
    v129 = v124 + v121[9];
    *v129 = v262;
    *(v129 + 8) = v260;
    v130 = v124 + v121[10];
    *v130 = v258;
    *(v130 + 8) = v257;
    v131 = v124 + v121[11];
    *v131 = 0;
    *(v131 + 4) = 1;
    *(v124 + v121[12]) = v127 ^ 1;
    v122(v124, 0, 1, v121);
    sub_258E2EAD8(v124, v265, &qword_27F9894E0, &unk_258F106A0);
    swift_beginAccess();
    sub_258E2EA70(v265, v120, &qword_27F9894E0, &unk_258F106A0);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FD0, &qword_258F13730);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_258F0B820;
    *(v132 + 32) = v271;
    *(v132 + 36) = 0;
    *(v132 + 40) = v272;
    *(v132 + 44) = 0;
    *(v132 + 48) = v263;
    *(v132 + 52) = 0;
    *(v132 + 56) = v269;
    *(v132 + 60) = 0;
    sub_258DE20C0(v120, v274, &qword_27F9894E0, &unk_258F106A0);
    swift_setDeallocating();
    sub_258DE2184(v119 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);
    swift_deallocClassInstance();
    *(v274 + *(v235 + 20)) = v132;
    *(v274 + *(v235 + 24)) = 0;
    v248[148] = 0x61645F746E657665;
    v248[149] = 0xEA00000000006574;
    sub_258F0AA80();
    sub_258E262F8((v1 + 17), v287, v1 + 91);

    sub_258E0F590((v248 + 17));
    if (v248[94])
    {
      v49 = v237;
      if (swift_dynamicCast())
      {
        v133 = v248[150];
        v134 = v248[151];
        if (*(v238 + 16) && (sub_258E2E9B4(v248[150], v248[151]), (v135 & 1) != 0))
        {
        }

        else
        {
          v137 = swift_isUniquelyReferenced_nonNull_native();
          v289[0] = v288;
          sub_258ED76BC(MEMORY[0x277D84F90], v263 | (v269 << 32), v133, v134, v137);

          v238 = v289[0];
          v288 = v289[0];
        }
      }

      v136 = v280;
    }

    else
    {
      sub_258DE2184((v248 + 91), &qword_27F989868, &unk_258F12D70);
      v136 = v280;
      v49 = v237;
    }

    sub_258EDA33C(v248[173], v248[172], type metadata accessor for DeviceSegmentsCohorts);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_258DE2A9C(0, v136[2] + 1, 1, v136);
    }

    v139 = v136[2];
    v138 = v136[3];
    v280 = v136;
    if (v139 >= v138 >> 1)
    {
      v280 = sub_258DE2A9C((v138 > 1), v139 + 1, 1, v136);
    }

    v140 = v248[177];
    v141 = v248[175];
    v142 = v248[173];
    v143 = v248[172];

    sub_258EDA40C(v142, type metadata accessor for DeviceSegmentsCohorts);
    sub_258DE2184(v141, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v140, &qword_27F988730, &unk_258F0F8E0);
    v280[2] = v139 + 1;
    sub_258EDA3A4(v143, v280 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v139, type metadata accessor for DeviceSegmentsCohorts);
    goto LABEL_126;
  }

  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
}

uint64_t sub_258ED3DB0(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v24 = a2;
  v6 = sub_258F0A300();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_258F0A2C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_258F0A2D0();
  sub_258F0A310();
  v23 = sub_258F0A850();
  result = sub_258F0A900();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v15, v11);
  }

  if ((a4 & 1) == 0)
  {
    v18 = v24;
    if (v24)
    {
LABEL_9:

      sub_258F0A340();

      if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v10, v6);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_258F0A2B0();
      _os_signpost_emit_with_name_impl(&dword_258DD8000, v16, v23, v21, v18, v19, v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v24 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v24 & 0xFFFFF800) != 0xD800)
  {
    if (v24 >> 16 <= 0x10)
    {
      v18 = &v25;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_258ED404C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v94 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v93 = &v76 - v13;
  v14 = type metadata accessor for DeviceBatchData(0);
  v91 = *(v14 - 8);
  v92 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v76 - v20;
  v96 = sub_258F09A70();
  v22 = *(v96 - 8);
  v24 = MEMORY[0x28223BE20](v96, v23);
  v95 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v102 = &v76 - v27;
  v28 = *a1;
  v29 = a1[1];
  if (*(*a2 + 16) && (sub_258E2E9B4(v28, v29), (v30 & 1) != 0))
  {

    if (v31)
    {
    }
  }

  else
  {
    v31 = 0;
  }

  v77 = v31;

  v32 = *a2;
  if (*(*a2 + 16) && (v33 = sub_258E2E9B4(v28, v29), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 16 * v33 + 8);
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  if (v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  v89 = v37;
  v90 = v36;

  v38 = *a2;
  if (*(*a2 + 16) && (v39 = sub_258E2E9B4(v28, v29), (v40 & 1) != 0))
  {
    v41 = *(v38 + 56) + 16 * v39;
    v42 = *v41;
    v43 = *(v41 + 12);
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  if (v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v88 = v44;

  result = v77;
  if (v77)
  {
    v46 = *(v77 + 16);
    if (v46)
    {
      v76 = v4;
      v48 = *(v22 + 16);
      v47 = v22 + 16;
      v49 = v77 + ((*(v47 + 64) + 32) & ~*(v47 + 64));
      v82 = (v47 + 40);
      v83 = v48;
      v81 = (v47 + 16);
      v80 = *(v47 + 56);
      v85 = v47;
      v79 = (v47 - 8);
      v50 = v95;
      v51 = v96;
      v86 = a3;
      v87 = v18;
      v84 = v42;
      v78 = v21;
      do
      {
        v100 = v49;
        v101 = v46;
        v98 = v90 == 0;
        v99 = v42 == 0;
        v52 = v83;
        (v83)(v102);
        sub_258F09A60();
        type metadata accessor for DeviceBatchDataBuilderImpl(0);
        v53 = swift_allocObject();
        v97 = OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_odbatchId;
        v54 = *v82;
        (*v82)(v53 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_odbatchId, 1, 1, v51);
        v55 = OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_originalClockId;
        v54(v53 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_originalClockId, 1, 1, v51);
        v56 = v53 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_daysWithTwoValidAssistantTurnsPerWeek;
        *v56 = 0;
        *(v56 + 4) = 1;
        v57 = v53 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_daysWithTwoAssistantSpeechRequestsPerWeek;
        *v57 = 0;
        *(v57 + 4) = 1;
        v58 = v50;
        v59 = v51;
        v60 = v93;
        v52(v93, v58, v59);
        v54(v60, 0, 1, v59);
        v61 = v94;
        sub_258E2EAD8(v60, v94, &qword_27F988730, &unk_258F0F8E0);
        v62 = v97;
        swift_beginAccess();
        sub_258E2EA70(v61, v53 + v62, &qword_27F988730, &unk_258F0F8E0);
        swift_endAccess();
        (*v81)(v60, v102, v59);
        v54(v60, 0, 1, v59);
        sub_258E2EAD8(v60, v61, &qword_27F988730, &unk_258F0F8E0);
        swift_beginAccess();
        sub_258E2EA70(v61, v53 + v55, &qword_27F988730, &unk_258F0F8E0);
        swift_endAccess();
        v63 = v78;
        sub_258DE20C0(v53 + v62, v78, &qword_27F988730, &unk_258F0F8E0);
        v64 = v92;
        v65 = v53 + v55;
        v66 = v86;
        sub_258DE20C0(v65, v63 + *(v92 + 20), &qword_27F988730, &unk_258F0F8E0);
        swift_setDeallocating();
        sub_258DE2184(v53 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_odbatchId, &qword_27F988730, &unk_258F0F8E0);
        sub_258DE2184(v53 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_originalClockId, &qword_27F988730, &unk_258F0F8E0);
        swift_deallocClassInstance();
        v67 = v63 + *(v64 + 24);
        *v67 = v89;
        *(v67 + 4) = v98;
        v68 = *(v64 + 28);
        v69 = v87;
        v70 = v63 + v68;
        *v70 = v88;
        *(v70 + 4) = v99;
        sub_258EDA33C(v63, v69, type metadata accessor for DeviceBatchData);
        v71 = *v66;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v66 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v71 = sub_258DE2D40(0, v71[2] + 1, 1, v71);
          *v66 = v71;
        }

        v74 = v71[2];
        v73 = v71[3];
        v50 = v95;
        v51 = v96;
        v42 = v84;
        if (v74 >= v73 >> 1)
        {
          *v66 = sub_258DE2D40((v73 > 1), v74 + 1, 1, v71);
        }

        sub_258EDA40C(v63, type metadata accessor for DeviceBatchData);
        (*v79)(v50, v51);
        v75 = *v66;
        v75[2] = v74 + 1;
        sub_258EDA3A4(v69, v75 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v74, type metadata accessor for DeviceBatchData);
        v49 = v100 + v80;
        v46 = v101 - 1;
      }

      while (v101 != 1);
    }
  }

  return result;
}

uint64_t sub_258ED47C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = sub_258F09B00();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258F09A20();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - v16;
  (*(v11 + 16))(&v37 - v16, a1, v10);
  v18 = sub_258EDA2F4(&qword_27F989870, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v44 = a2;
  v41 = v18;
  v19 = sub_258F0A4A0();
  v38 = v11;
  if (v19)
  {
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = *(v3 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlDateFormatter);
    v39 = (v6 + 8);
    v40 = v23;
    v24 = (v11 + 8);
    v25 = (v11 + 32);
    v20 = MEMORY[0x277D84F90];
    do
    {
      v45 = 39;
      v46 = 0xE100000000000000;
      v26 = sub_258F099A0();
      v27 = [v40 stringFromDate_];

      v28 = sub_258F0A4F0();
      v30 = v29;

      MEMORY[0x259C9DEB0](v28, v30);

      MEMORY[0x259C9DEB0](39, 0xE100000000000000);
      v31 = v45;
      v32 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_258DE2990(0, *(v20 + 2) + 1, 1, v20);
      }

      v34 = *(v20 + 2);
      v33 = *(v20 + 3);
      if (v34 >= v33 >> 1)
      {
        v20 = sub_258DE2990((v33 > 1), v34 + 1, 1, v20);
      }

      *(v20 + 2) = v34 + 1;
      v35 = &v20[16 * v34];
      *(v35 + 4) = v31;
      *(v35 + 5) = v32;
      sub_258F09AC0();
      v36 = v42;
      sub_258F09960();
      (*v39)(v9, v43);
      (*v24)(v17, v10);
      (*v25)(v17, v36, v10);
    }

    while ((sub_258F0A4A0() & 1) == 0);
  }

  v45 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
  sub_258E99738();
  v21 = sub_258F0A490();

  (*(v38 + 8))(v17, v10);
  return v21;
}

uint64_t SiriSegmentCohortCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_analyticsEventSubmitter));

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bookmarkService));

  v3 = OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t SiriSegmentCohortCalculator.__deallocating_deinit()
{
  SiriSegmentCohortCalculator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_258ED4D88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258ED4E10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258ED0E2C(a1);
}

uint64_t sub_258ED4EAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B90, &unk_258F0D0F0);
  v33 = v4;
  result = sub_258F0ABC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_258DEB8B8(v24, v34);
      }

      else
      {
        sub_258DE4090(v24, v34);
      }

      sub_258F0AE40();
      sub_258F0A5B0();
      result = sub_258F0AE90();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_258DEB8B8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_258ED5164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B58, &unk_258F0D720);
  result = sub_258F0ABC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_258DEB8B8((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_258DEB85C(v23, &v36);
        sub_258DE4090(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_258F0AA60();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_258DEB8B8(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_258ED541C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988BB0, &qword_258F0D110);
  v34 = v4;
  result = sub_258F0ABC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_258F0AE40();
      sub_258F0A5B0();
      result = sub_258F0AE90();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_258ED56E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for EventMetadata(0);
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = v8;
  result = sub_258F0ABC0();
  v15 = result;
  if (*(v13 + 16))
  {
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v41 + 72);
      v29 = *(v13 + 48) + v28 * v27;
      if (v42)
      {
        sub_258EDA3A4(v29, v12, type metadata accessor for EventMetadata);
        v43 = *(*(v13 + 56) + 16 * v27);
      }

      else
      {
        sub_258EDA33C(v29, v12, type metadata accessor for EventMetadata);
        v43 = *(*(v13 + 56) + 16 * v27);
        v30 = v43;
      }

      sub_258F0AE40();
      EventMetadata.hash(into:)(v44);
      result = sub_258F0AE90();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_258EDA3A4(v12, *(v15 + 48) + v28 * v23, type metadata accessor for EventMetadata);
      *(*(v15 + 56) + 16 * v23) = v43;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero((v13 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_258ED5A6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B88, &unk_258F16160);
  v35 = v4;
  result = sub_258F0ABC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_258F0AE40();
      sub_258F0A5B0();
      result = sub_258F0AE90();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_258ED5D10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_258F09A20();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v8;
  result = sub_258F0ABC0();
  v16 = result;
  if (*(v14 + 16))
  {
    v48 = v13;
    v40 = v4;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v14;
    v43 = v10;
    v45 = (v10 + 32);
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v47 = *(v43 + 72);
      v30 = v29 + v47 * v28;
      if (v44)
      {
        (*v45)(v48, v30, v9);
        v46 = *(*(v14 + 56) + 8 * v28);
      }

      else
      {
        (*v41)(v48, v30, v9);
        v46 = *(*(v14 + 56) + 8 * v28);
      }

      sub_258EDA2F4(&qword_27F989518, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_258F0A440();
      v31 = -1 << *(v16 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v23 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v23 + 8 * v33);
          if (v37 != -1)
          {
            v24 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v32) & ~*(v23 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = (*v45)(*(v16 + 48) + v47 * v24, v48, v9);
      *(*(v16 + 56) + 8 * v24) = v46;
      ++*(v16 + 16);
      v14 = v42;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v14 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v18, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v38;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v7 = v16;
  return result;
}

uint64_t sub_258ED60EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for EventMetadata(0);
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A718, &unk_258F16188);
  v44 = v4;
  result = sub_258F0ABC0();
  v11 = v9;
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v43 + 72);
      v26 = *(v11 + 48) + v25 * v24;
      if (v44)
      {
        sub_258EDA3A4(v26, v8, type metadata accessor for EventMetadata);
        v27 = *(v11 + 56);
        v28 = v8;
        v29 = *(v27 + 8 * v24);
      }

      else
      {
        sub_258EDA33C(v26, v8, type metadata accessor for EventMetadata);
        v30 = *(v11 + 56);
        v28 = v8;
        v29 = *(v30 + 8 * v24);
      }

      sub_258F0AE40();
      v31 = v28;
      EventMetadata.hash(into:)(v45);
      result = sub_258F0AE90();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v19 + 8 * v34);
          if (v38 != -1)
          {
            v20 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_258EDA3A4(v31, *(v12 + 48) + v25 * v20, type metadata accessor for EventMetadata);
      *(*(v12 + 56) + 8 * v20) = v29;
      v8 = v31;
      ++*(v12 + 16);
      v11 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v14, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_258ED6470(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A710, &unk_258F16178);
  v38 = v4;
  result = sub_258F0ABC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = *v26;
      v28 = v26[1];
      if ((v38 & 1) == 0)
      {
      }

      sub_258F0AE40();
      sub_258F0A5B0();
      result = sub_258F0AE90();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_258ED674C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FunnelEventMetadata(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A708, &qword_258F16170);
  v38 = v4;
  result = sub_258F0ABC0();
  v11 = result;
  if (*(v9 + 16))
  {
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v37 + 72);
      v25 = *(v9 + 48) + v24 * v23;
      if (v38)
      {
        sub_258EDA3A4(v25, v8, type metadata accessor for FunnelEventMetadata);
        v39 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        sub_258EDA33C(v25, v8, type metadata accessor for FunnelEventMetadata);
        v39 = *(*(v9 + 56) + 16 * v23);
        v26 = v39;
      }

      sub_258F0AE40();
      FunnelEventMetadata.hash(into:)(v40);
      result = sub_258F0AE90();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_258EDA3A4(v8, *(v11 + 48) + v24 * v19, type metadata accessor for FunnelEventMetadata);
      *(*(v11 + 56) + 16 * v19) = v39;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v9 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_258ED6AD4(unint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for EventMetadata(0);
  v4 = *(v29 - 8);
  result = MEMORY[0x28223BE20](v29, v5);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_258F0A9E0() + 1) & ~v9;
    v13 = *(v4 + 72);
    v30 = a2 + 64;
    do
    {
      v14 = v13;
      v15 = v13 * v10;
      v16 = a1;
      v17 = v31;
      sub_258EDA33C(*(a2 + 48) + v13 * v10, v31, type metadata accessor for EventMetadata);
      sub_258F0AE40();
      EventMetadata.hash(into:)(v32);
      v18 = sub_258F0AE90();
      v19 = v17;
      a1 = v16;
      result = sub_258EDA40C(v19, type metadata accessor for EventMetadata);
      v20 = v18 & v11;
      if (v16 >= v12)
      {
        if (v20 < v12)
        {
          v8 = v30;
          v13 = v14;
          goto LABEL_4;
        }

        v13 = v14;
        if (v16 >= v20)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v14;
        if (v20 >= v12 || v16 >= v20)
        {
LABEL_11:
          v21 = *(a2 + 48);
          v22 = v13 * v16;
          result = v21 + v13 * v16;
          if (v13 * v16 < v15 || result >= v21 + v15 + v13)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v30;
          }

          else
          {
            v8 = v30;
            if (v22 != v15)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = *(a2 + 56);
          v24 = (v23 + 8 * a1);
          v25 = (v23 + 8 * v10);
          if (a1 != v10 || v24 >= v25 + 1)
          {
            *v24 = *v25;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v30;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_258ED6D90(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258F0A9E0() + 1) & ~v5;
    do
    {
      sub_258F0AE40();

      sub_258F0A5B0();
      v9 = sub_258F0AE90();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_258ED6F40(int64_t a1, uint64_t a2)
{
  v41 = sub_258F09A20();
  v4 = *(v41 - 8);
  result = MEMORY[0x28223BE20](v41, v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v42 = v7;
    v13 = sub_258F0A9E0();
    v14 = v41;
    v7 = v42;
    v15 = v12;
    v39 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v37 = a2 + 64;
    v38 = v17;
    v18 = *(v16 + 56);
    v36 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v40;
      v22 = v15;
      v23 = v16;
      v38(v40, *(v7 + 48) + v18 * v11, v14);
      sub_258EDA2F4(&qword_27F989518, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      v24 = sub_258F0A440();
      result = (*v36)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v39)
      {
        if (v25 >= v39 && a1 >= v25)
        {
LABEL_15:
          v7 = v42;
          v28 = *(v42 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v42;
            v18 = v19;
            v15 = v22;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v42;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v39 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v37;
      v18 = v19;
      v7 = v42;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v7 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v34;
    ++*(v7 + 36);
  }

  return result;
}