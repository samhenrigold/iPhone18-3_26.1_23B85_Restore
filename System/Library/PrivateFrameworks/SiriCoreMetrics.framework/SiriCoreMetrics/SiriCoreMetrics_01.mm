uint64_t _s15SiriCoreMetrics0abC20SELFMessageConverterO28convertToODMSiriClientEvents17countsReportedAll17twoByThreeResults5odmId6loggerSaySo0h6SchemahI5EventCGSDy11DeepThought19AggregationIntervalVSayAA0a6CountsM0VGG_SDyAnA03TwooP7SegmentOG10Foundation4UUIDV2os6LoggerVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v97 - v9;
  v11 = sub_266A46040();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SiriCountsAll(0);
  v111 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v113 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_266A461E0();
  v17 = *(v128 - 8);
  v18 = MEMORY[0x28223BE20](v128);
  v127 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v120 = &v97 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECF0, "l\v");
  v21 = MEMORY[0x28223BE20](a1);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v97 - v25;
  if (*(v24 + 16))
  {
    v110 = v14;
    v106 = v11;
    v107 = v10;
    v108 = a2;
    v109 = a3;
    v28 = v24 + 64;
    v27 = *(v24 + 64);
    v29 = 1 << *(v24 + 32);
    v30 = -1;
    v112 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v27;
    v32 = (v29 + 63) >> 6;
    v116 = v17 + 16;
    v126 = (v17 + 32);
    v105 = "urnRestatementScores";
    v104 = "Id - DEPRECATED, NIL";
    v103 = (v12 + 48);
    v102 = (v12 + 32);
    v101 = (v12 + 8);
    v100 = "d - DEPRECATED, NIL";
    v118 = v17;
    v123 = (v17 + 8);
    v121 = v24;

    v34 = 0;
    v119 = v23;
    v124 = a4;
    v125 = v26;
    v117 = v28;
    v122 = v32;
    while (v31)
    {
      v35 = v34;
LABEL_14:
      v38 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v39 = v38 | (v35 << 6);
      v40 = v121;
      v41 = v118;
      (*(v118 + 16))(v120, *(v121 + 48) + *(v118 + 72) * v39, v128);
      v42 = *(*(v40 + 56) + 8 * v39);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECF8, &qword_266A47CD8);
      v44 = *(v43 + 48);
      v23 = v119;
      (*(v41 + 32))();
      *&v23[v44] = v42;
      (*(*(v43 - 8) + 56))(v23, 0, 1, v43);

      v26 = v125;
      v28 = v117;
LABEL_15:
      sub_266A3EBC4(v23, v26);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECF8, &qword_266A47CD8);
      if ((*(*(v45 - 8) + 48))(v26, 1, v45) == 1)
      {

        return v112;
      }

      v46 = *&v26[*(v45 + 48)];
      (*v126)(v127, v26, v128);
      v47 = [objc_allocWithZone(MEMORY[0x277D594C8]) init];
      v32 = v122;
      if (v47)
      {
        v48 = v47;
        v49 = [objc_allocWithZone(MEMORY[0x277D594F0]) init];
        if (v49)
        {
          v50 = v49;
          v51 = [objc_allocWithZone(MEMORY[0x277D594E8]) init];
          if (v51)
          {
            v115 = v51;
            v114 = [objc_allocWithZone(MEMORY[0x277D594C0]) init];
            if (v114)
            {
              v52 = [objc_allocWithZone(MEMORY[0x277D59520]) init];
              if (v52)
              {
                v99 = v52;
                v98 = v50;
                v59 = sub_266A461C0();
                v60 = v114;
                [v114 setAggregationIntervalInDays_];
                sub_266A461A0();
                [v60 setAggregationIntervalStartTimestampInSecondsSince2001_];
                v61 = *(v46 + 16);
                if (v61)
                {
                  v62 = v46 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
                  v112 = *(v111 + 72);
                  do
                  {
                    v63 = v113;
                    sub_266A3B0A8(v62, v113);
                    v64 = sub_266A3CC64(v63);
                    sub_266A3B10C(v63);
                    if (v64)
                    {
                      [v115 addSiriCountsAll_];
                    }

                    v62 += v112;
                    --v61;
                  }

                  while (v61);

                  v23 = v119;
                }

                else
                {
                }

                v65 = v108;
                if (*(v108 + 16) && (v66 = sub_266A33B48(v127), (v67 & 1) != 0))
                {
                  v68 = *(*(v65 + 56) + v66);
                }

                else
                {
                  v68 = 2;
                }

                v69 = v115;
                [v115 addSegments_];
                [v69 setAggregationInterval_];
                v70 = sub_266A46570();
                v71 = v99;
                [v99 setExperimentId_];

                v72 = v107;
                sub_266A46000();
                v73 = v106;
                if ((*v103)(v72, 1, v106) == 1)
                {
                  sub_266A38274(v72, &qword_2800AE9C0, &qword_266A46E38);
                  v74 = 0x277D5A000;
                  v75 = &off_279BD9000;
                  v76 = v71;
                }

                else
                {
                  (*v102)(v110, v72, v73);
                  v77 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                  v78 = sub_266A46020();
                  v75 = &off_279BD9000;
                  v79 = [v77 initWithNSUUID_];

                  v76 = v99;
                  [v99 setTreatmentId_];

                  v80 = v73;
                  v74 = 0x277D5A000uLL;
                  (*v101)(v110, v80);
                }

                [v76 setDeploymentId_];
                v81 = objc_allocWithZone(*(v74 + 3192));
                v82 = v76;
                v83 = sub_266A46020();
                v84 = [v81 v75[129]];

                v85 = v98;
                [v98 setOdmId_];

                [v85 setTrialExperimentIdentifiers_];
                v86 = [objc_opt_self() mainBundle];
                v87 = [v86 infoDictionary];

                v26 = v125;
                if (v87)
                {
                  v88 = sub_266A46520();

                  if (*(v88 + 16) && (v89 = sub_266A33AD0(0xD00000000000001DLL, v100 | 0x8000000000000000), (v90 & 1) != 0))
                  {
                    sub_266A38340(*(v88 + 56) + 32 * v89, v129);

                    if (swift_dynamicCast())
                    {
                      v91 = sub_266A46570();
                      v26 = v125;

LABEL_53:
                      v92 = v98;
                      [v98 setPluginVersion_];

                      [v48 setEventMetadata_];
                      [v48 setCountsReportedAll_];
                      v93 = v48;
                      MEMORY[0x26D5E68F0]();
                      if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        sub_266A46610();
                      }

                      sub_266A46630();

                      result = (*v123)(v127, v128);
                      v112 = v130;
                      continue;
                    }
                  }

                  else
                  {
                  }
                }

                v91 = 0;
                goto LABEL_53;
              }

              v48 = v50;
              v50 = v115;
              v53 = v114;
            }

            else
            {
              v53 = v115;
            }

            v48 = v50;
            v50 = v53;
          }

          v48 = v50;
        }
      }

      v55 = sub_266A464F0();
      v56 = sub_266A46690();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_266A29000, v55, v56, "Unable to create ODMSiriSchemaODMSiriClientEvent SELF message", v57, 2u);
        v58 = v57;
        v26 = v125;
        MEMORY[0x26D5E7060](v58, -1, -1);
      }

      result = (*v123)(v127, v128);
    }

    if (v32 <= v34 + 1)
    {
      v36 = v34 + 1;
    }

    else
    {
      v36 = v32;
    }

    v37 = v36 - 1;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECF8, &qword_266A47CD8);
        (*(*(v54 - 8) + 56))(v23, 1, 1, v54);
        v31 = 0;
        v34 = v37;
        goto LABEL_15;
      }

      v31 = *(v28 + 8 * v35);
      ++v34;
      if (v31)
      {
        v34 = v35;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v94 = sub_266A464F0();
    v95 = sub_266A46670();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_266A29000, v94, v95, "no aggregations to report", v96, 2u);
      MEMORY[0x26D5E7060](v96, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_266A3DED4(uint64_t a1)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - v5;
  v7 = sub_266A46040();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D59510]) init];
  if (v14)
  {
    v15 = v14;
    v16 = type metadata accessor for ProcessedSiriTurn(0);
    sub_266A3EB54(v34 + v16[5], v6);
    v33 = *(v8 + 48);
    if (v33(v6, 1, v7) == 1)
    {
      sub_266A38274(v6, &qword_2800AE9C0, &qword_266A46E38);
    }

    else
    {
      (*(v8 + 32))(v13, v6, v7);
      v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v21 = sub_266A46020();
      v32 = v16;
      v22 = v21;
      v23 = [v20 initWithNSUUID_];

      v16 = v32;
      [v15 setCurrentTurnId_];

      (*(v8 + 8))(v13, v7);
    }

    sub_266A3EB54(v34 + v16[6], v4);
    if (v33(v4, 1, v7) == 1)
    {
      sub_266A38274(v4, &qword_2800AE9C0, &qword_266A46E38);
    }

    else
    {
      (*(v8 + 32))(v11, v4, v7);
      v24 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v25 = sub_266A46020();
      v26 = [v24 initWithNSUUID_];

      [v15 setNextTurnId_];
      (*(v8 + 8))(v11, v7);
    }

    v27 = *(v34 + v16[7]);
    if (v27 != 2)
    {
      [v15 setIsUserRequest_];
    }

    v28 = v34 + v16[8];
    if ((*(v28 + 8) & 1) == 0)
    {
      [v15 setUtteranceRestatementScore_];
    }

    v29 = v34 + v16[9];
    if ((*(v29 + 8) & 1) == 0)
    {
      [v15 setPhoneticRestatementScore_];
    }
  }

  else
  {
    v17 = sub_266A464F0();
    v18 = sub_266A46690();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266A29000, v17, v18, "Unable to create ODMSiriSchemaODMSiriTurnRestatementScore SELF message", v19, 2u);
      MEMORY[0x26D5E7060](v19, -1, -1);
    }

    return 0;
  }

  return v15;
}

uint64_t sub_266A3E310(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(type metadata accessor for ProcessedSiriTurn(0) - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = sub_266A3DED4(v5);
      if (v7)
      {
        v8 = v7;
        MEMORY[0x26D5E68F0]();
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_266A46610();
        }

        sub_266A46630();

        v1 = v10;
      }

      v5 += v6;
      --v2;
    }

    while (v2);
  }

  return v1;
}

unint64_t _s15SiriCoreMetrics0abC20SELFMessageConverterO27convertToODMSiriClientEvent21processedConversation5odmId6loggerSo0h6SchemahiJ0CSgAA09ProcessedaL0V_10Foundation4UUIDV2os6LoggerVtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v42 - v5;
  v7 = sub_266A46040();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D594C8]) init];
  if (!result)
  {
    return result;
  }

  v46 = result;
  v12 = [objc_allocWithZone(MEMORY[0x277D594F0]) init];
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D59518]) init];
  if (!v14)
  {

    return 0;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D59520]) init];
  if (!v16)
  {

    return 0;
  }

  v44 = v8;
  v45 = v16;
  result = sub_266A3E310(a1);
  v17 = result;
  if (result >> 62)
  {
    result = sub_266A46730();
    v18 = result;
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_27:

    v39 = sub_266A464F0();
    v40 = sub_266A46670();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_266A29000, v39, v40, "No restatement scores to report", v41, 2u);
      MEMORY[0x26D5E7060](v41, -1, -1);
    }

LABEL_30:
    return 0;
  }

LABEL_7:
  v42[1] = a2;
  v43 = v13;
  if (v18 >= 1)
  {
    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x26D5E6A00](i, v17);
      }

      else
      {
        v20 = *(v17 + 8 * i + 32);
      }

      v21 = v20;
      [v15 addSiriTurnRestatementScores_];
    }

    v22 = sub_266A46570();
    v23 = v45;
    [v45 setExperimentId_];

    sub_266A46000();
    v24 = v44;
    if ((*(v44 + 48))(v6, 1, v7) == 1)
    {
      sub_266A38274(v6, &qword_2800AE9C0, &qword_266A46E38);
    }

    else
    {
      (*(v24 + 32))(v10, v6, v7);
      v25 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v26 = sub_266A46020();
      v27 = [v25 initWithNSUUID_];

      [v23 setTreatmentId_];
      (*(v24 + 8))(v10, v7);
    }

    v28 = v43;
    [v23 setDeploymentId_];
    v29 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v30 = sub_266A46020();
    v31 = [v29 initWithNSUUID_];

    [v28 setOdmId_];
    [v28 setTrialExperimentIdentifiers_];
    v32 = [objc_opt_self() mainBundle];
    v33 = [v32 infoDictionary];

    if (v33)
    {
      v34 = sub_266A46520();

      if (*(v34 + 16) && (v35 = sub_266A33AD0(0xD00000000000001DLL, 0x8000000266A48EB0), (v36 & 1) != 0))
      {
        sub_266A38340(*(v34 + 56) + 32 * v35, v47);

        if (swift_dynamicCast())
        {
          v37 = sub_266A46570();

LABEL_25:
          [v28 setPluginVersion_];

          v38 = v46;
          [v46 setEventMetadata_];
          [v38 setTurnRestatementScoresReported_];

          return v38;
        }
      }

      else
      {
      }
    }

    v37 = 0;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SiriCoreMetricsSELFReporter(uint64_t a1)
{
  result = qword_2800AECE0;
  if (!qword_2800AECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A3EA68(uint64_t a1)
{
  result = sub_266A46040();
  if (v2 <= 0x3F)
  {
    result = sub_266A46510();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_266A3EB54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A3EBC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECF0, "l\v");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A3EC38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t SiriCoreMetricsJsonLoggingReporter.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_266A38020(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
  v4 = sub_266A46510();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t SiriCoreMetricsJsonLoggingReporter.init(_:)(uint64_t a1)
{
  *(v1 + 16) = sub_266A38020(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
  v4 = sub_266A46510();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t SiriCoreMetricsJsonLoggingReporter.report(_:)(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  sub_266A465B0();
  v2[56] = swift_task_alloc();
  sub_266A45F00();
  v2[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A3EEDC, 0, 0);
}

uint64_t sub_266A3EEDC()
{
  v37 = v0;
  v1 = v0[54];
  v2 = v0[55];
  sub_266A45F40();
  swift_allocObject();
  sub_266A45F30();
  sub_266A45EF0();
  sub_266A45F10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED08, &qword_266A47D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266A47CE0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000266A491D0;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED10, &qword_266A47D08);
  *(inited + 48) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000266A491F0;
  v6 = v1[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED18, &qword_266A47D10);
  *(inited + 96) = v6;
  *(inited + 120) = v7;
  *(inited + 128) = 0x756F436C61746F74;
  *(inited + 136) = 0xEB0000000073746ELL;
  v8 = v1[4];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED20, &qword_266A47D18);
  *(inited + 144) = v8;
  *(inited + 168) = v9;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x8000000266A49210;
  v10 = v1[5];
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED28, &unk_266A47D20);
  *(inited + 192) = v10;

  v11 = sub_266A38020(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB50, &qword_266A47420);
  swift_arrayDestroy();
  swift_beginAccess();
  *(v2 + 16) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED30, &qword_266A47D30);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_266A47CE0;
  *(v12 + 32) = 0xD000000000000016;
  *(v12 + 40) = 0x8000000266A491D0;
  *(v12 + 48) = MEMORY[0x26D5E6900](v4, &type metadata for ProcessedSiriConversation);
  *(v12 + 56) = v13;
  *(v12 + 64) = 0xD000000000000011;
  *(v12 + 72) = 0x8000000266A491F0;
  sub_266A461E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED38, &qword_266A47D38);
  sub_266A3F758();
  *(v12 + 80) = sub_266A46530();
  *(v12 + 88) = v14;
  *(v12 + 96) = 0x756F436C61746F74;
  *(v12 + 104) = 0xEB0000000073746ELL;
  *(v12 + 112) = sub_266A46530();
  *(v12 + 120) = v15;
  *(v12 + 128) = 0xD000000000000011;
  *(v12 + 136) = 0x8000000266A49210;
  *(v12 + 144) = sub_266A46530();
  *(v12 + 152) = v16;
  v17 = sub_266A38150(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED40, &qword_266A47D40);
  swift_arrayDestroy();
  v0[53] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED48, &qword_266A47D48);
  sub_266A3F7B0();
  v18 = sub_266A45F20();
  v20 = v19;

  sub_266A465A0();
  v21 = sub_266A46590();
  if (v22)
  {
    v23 = v22;
    v24 = v21;
    v25 = sub_266A464F0();
    v26 = sub_266A46680();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315138;
      v29 = sub_266A333F0(v24, v23, &v36);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_266A29000, v25, v26, "json_string=%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x26D5E7060](v28, -1, -1);
      MEMORY[0x26D5E7060](v27, -1, -1);
    }

    else
    {
    }

    v30 = sub_266A464F0();
    v31 = sub_266A46690();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_10;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Unable to convert JSON string to data.";
  }

  else
  {
    v30 = sub_266A464F0();
    v31 = sub_266A46690();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_10;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Extracting results to JSON failed";
  }

  _os_log_impl(&dword_266A29000, v30, v31, v33, v32, 2u);
  MEMORY[0x26D5E7060](v32, -1, -1);
LABEL_10:
  sub_266A2D8B8(v18, v20);

  v34 = v0[1];

  return v34();
}

uint64_t sub_266A3F5C8()
{

  v1 = OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
  v2 = sub_266A46510();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t SiriCoreMetricsJsonLoggingReporter.deinit()
{

  v1 = OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriCoreMetricsJsonLoggingReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_266A3F758()
{
  result = qword_2800AEB60;
  if (!qword_2800AEB60)
  {
    sub_266A461E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEB60);
  }

  return result;
}

unint64_t sub_266A3F7B0()
{
  result = qword_2800AED50;
  if (!qword_2800AED50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AED48, &qword_266A47D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AED50);
  }

  return result;
}

uint64_t sub_266A3F82C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECD8, &qword_266A47D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266A3F894@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t type metadata accessor for SiriCoreMetricsJsonLoggingReporter(uint64_t a1)
{
  result = qword_2800AED58;
  if (!qword_2800AED58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A3F938(uint64_t a1)
{
  result = sub_266A46510();
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

uint64_t sub_266A3FA8C(_OWORD *a1)
{
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_266A3FBB8;

  return v6(v2 + 16);
}

uint64_t sub_266A3FBB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t SiriCoreMetricsSELFReporterV2.__allocating_init(stream:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger;
  v6 = sub_266A46510();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  *(v4 + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_stream) = a1;
  return v4;
}

uint64_t SiriCoreMetricsSELFReporterV2.init(stream:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger;
  v6 = sub_266A46510();
  (*(*(v6 - 8) + 32))(v2 + v5, a2, v6);
  *(v2 + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_stream) = a1;
  return v2;
}

uint64_t SiriCoreMetricsSELFReporterV2.report(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_266A46040();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A3FEAC, 0, 0);
}

uint64_t sub_266A3FEAC(uint64_t a1)
{
  v2 = v1[8];
  v3 = v1[4];
  v4 = v1[5];
  _s15SiriCoreMetricsAAC5odmId10Foundation4UUIDVvpfi_0();
  sub_266A40668(v3, v2, v4 + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger);
  if (v5)
  {
    v6 = v5;
    [*(v1[5] + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_stream) emitMessage_];

    v7 = sub_266A464F0();
    v8 = sub_266A46680();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v1[4];
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v10 + 16);

      _os_log_impl(&dword_266A29000, v7, v8, "marker: reported %ld Siri turns from this run", v11, 0xCu);
      MEMORY[0x26D5E7060](v11, -1, -1);

      v7 = v6;
    }

    else
    {
    }
  }

  (*(v1[7] + 8))(v1[8], v1[6]);

  v12 = v1[1];

  return v12();
}

uint64_t SiriCoreMetricsSELFReporterV2.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SiriCoreMetricsSELFReporterV2.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_266A40190(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_266A4023C;

  return SiriCoreMetricsSELFReporterV2.report(_:)(v2, v3, v4);
}

uint64_t sub_266A4023C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_266A40334(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_266A46040();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v29 = (v4 + 8);
  v30 = v4 + 16;

  v12 = 0;
  for (i = a1; v10; a1 = i)
  {
LABEL_10:
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v3;
      (*(v4 + 16))(v6, *(a1 + 48) + *(v4 + 72) * (v14 | (v12 << 6)), v3);
      v16 = [objc_allocWithZone(MEMORY[0x277D59510]) init];
      if (v16)
      {
        break;
      }

      v17 = sub_266A464F0();
      v18 = sub_266A46690();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_266A29000, v17, v18, "Unable to create ODMSiriSchemaODMSiriTurnRestatementScore SELF message", v19, 2u);
        v20 = v19;
        a1 = i;
        MEMORY[0x26D5E7060](v20, -1, -1);
      }

      v3 = v15;
      (*v29)(v6, v15);
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v21 = v16;
    v22 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v23 = sub_266A46020();
    v24 = [v22 initWithNSUUID_];

    [v21 setCurrentTurnId_];
    v3 = v15;
    (*v29)(v6, v15);
    v25 = v21;
    MEMORY[0x26D5E68F0]();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_266A46610();
      v3 = v15;
    }

    sub_266A46630();

    v26 = v31;
  }

LABEL_6:
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
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_266A40668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v45 - v7;
  v9 = sub_266A46040();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D594C8]) init];
  if (!v13)
  {
    return;
  }

  v49 = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277D594F0]) init];
  if (!v14)
  {
LABEL_30:

    return;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D59518]) init];
  if (!v16)
  {

    return;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D59520]) init];
  if (!v18)
  {

    return;
  }

  v47 = v10;
  v48 = v18;
  sub_266A40334(a1, a3);
  v20 = v19;
  if (v19 >> 62)
  {
    v21 = sub_266A46730();
    if (v21)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_27:

    v42 = sub_266A464F0();
    v43 = sub_266A46670();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_266A29000, v42, v43, "No restatement scores to report", v44, 2u);
      MEMORY[0x26D5E7060](v44, -1, -1);
    }

    goto LABEL_30;
  }

LABEL_7:
  v45[1] = a2;
  v46 = v15;
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x26D5E6A00](i, v20);
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      [v17 addSiriTurnRestatementScores_];
    }

    v25 = sub_266A46570();
    v26 = v48;
    [v48 setExperimentId_];

    sub_266A46000();
    v27 = v47;
    if ((*(v47 + 48))(v8, 1, v9) == 1)
    {
      sub_266A2B5A8(v8);
    }

    else
    {
      (*(v27 + 32))(v12, v8, v9);
      v28 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v29 = sub_266A46020();
      v30 = [v28 initWithNSUUID_];

      [v26 setTreatmentId_];
      (*(v27 + 8))(v12, v9);
    }

    v31 = v46;
    [v26 setDeploymentId_];
    v32 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v33 = sub_266A46020();
    v34 = [v32 initWithNSUUID_];

    [v31 setOdmId_];
    [v31 setTrialExperimentIdentifiers_];
    v35 = [objc_opt_self() mainBundle];
    v36 = [v35 infoDictionary];

    if (v36)
    {
      v37 = sub_266A46520();

      if (*(v37 + 16) && (v38 = sub_266A33AD0(0xD00000000000001DLL, 0x8000000266A48EB0), (v39 & 1) != 0))
      {
        sub_266A38340(*(v37 + 56) + 32 * v38, v50);

        if (swift_dynamicCast())
        {
          v40 = sub_266A46570();

LABEL_25:
          [v31 setPluginVersion_];

          v41 = v49;
          [v49 setEventMetadata_];
          [v41 setTurnRestatementScoresReported_];

          return;
        }
      }

      else
      {
      }
    }

    v40 = 0;
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t type metadata accessor for SiriCoreMetricsSELFReporterV2(uint64_t a1)
{
  result = qword_2800AED78;
  if (!qword_2800AED78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A40C7C(uint64_t a1)
{
  result = sub_266A46510();
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

uint64_t SiriCoreMetricsBiomeReporter.__allocating_init(biomeDonator:logger:odmId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger;
  v8 = sub_266A46510();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId;
  v10 = sub_266A46040();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  return v6;
}

uint64_t SiriCoreMetricsBiomeReporter.init(biomeDonator:logger:odmId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger;
  v7 = sub_266A46510();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  v8 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId;
  v9 = sub_266A46040();
  (*(*(v9 - 8) + 32))(v3 + v8, a3, v9);
  return v3;
}

uint64_t SiriCoreMetricsBiomeReporter.report(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_266A461E0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB10, &qword_266A47368);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A40FBC, 0, 0);
}

uint64_t sub_266A40FBC()
{
  v1 = v0[5];
  v37 = v0[3];
  v2 = *(v0[2] + 32);
  v31 = v2 + 64;
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v30 = (63 - v4) >> 6;
  v33 = v0[5];
  v6 = (v1 + 32);
  v35 = (v1 + 8);
  v36 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId;
  v34 = *(v0[2] + 32);

  v8 = 0;
  v9 = &qword_2800AEB18;
  v32 = v6;
  if (v5)
  {
    while (1)
    {
      v10 = v8;
LABEL_12:
      v13 = v0[7];
      v38 = v0[4];
      v39 = v0[6];
      v14 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v15 = v14 | (v10 << 6);
      (*(v33 + 16))();
      v16 = *(v34 + 56);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &unk_266A47370);
      v18 = v9;
      v19 = *(v17 + 48);
      v20 = *(v16 + 8 * v15);
      v6 = v32;
      (*(v33 + 32))(v13, v39, v38);
      *(v13 + v19) = v20;
      v9 = v18;
      (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
      v12 = v10;
LABEL_13:
      v21 = v0[8];
      sub_266A41324(v0[7], v21);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &unk_266A47370);
      if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
      {
        break;
      }

      v23 = v0[6];
      v24 = v0[4];
      v25 = *(v0[8] + *(v22 + 48));
      (*v6)(v23);
      v26 = _s15SiriCoreMetrics0abC13BiomeReporterC06createdA18RequestCountsEvent5odmId19aggregationInterval07requestH0So06BMSirigH0C10Foundation4UUIDV_11DeepThought011AggregationM0VAA0agH0VtFZ_0(v37 + v36, v23, v25);
      sub_266A46150();

      result = (*v35)(v23, v24);
      v8 = v12;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v29 = v0[1];

    return v29();
  }

  else
  {
LABEL_5:
    if (v30 <= v8 + 1)
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = v30;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v30)
      {
        v27 = v0[7];
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &unk_266A47370);
        (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
        v5 = 0;
        goto LABEL_13;
      }

      v5 = *(v31 + 8 * v10);
      ++v8;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_266A41324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB10, &qword_266A47368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static BMSiriRequestCountsMetadataSchedule.fromIntervalInDays(intervalInDays:)(int a1)
{
  if (a1 == 7)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 30)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266A413BC()
{

  v1 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId;
  v4 = sub_266A46040();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t SiriCoreMetricsBiomeReporter.deinit()
{

  v1 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId;
  v4 = sub_266A46040();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SiriCoreMetricsBiomeReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId;
  v4 = sub_266A46040();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

id _s15SiriCoreMetrics0abC13BiomeReporterC06createdA18RequestCountsEvent5odmId19aggregationInterval07requestH0So06BMSirigH0C10Foundation4UUIDV_11DeepThought011AggregationM0VAA0agH0VtFZ_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB68, &qword_266A47430);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_266A45FF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266A461A0();
  sub_266A45F90();
  v10 = sub_266A461C0();
  if (v10 == 7)
  {
    v11 = 2;
  }

  else
  {
    v11 = v10 == 1;
  }

  if (v10 == 30)
  {
    v12 = 3;
  }

  else
  {
    v12 = v11;
  }

  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_266A46010();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_266A45FD0();
    (*(v7 + 8))(v5, v6);
  }

  v14 = objc_allocWithZone(MEMORY[0x277CF1598]);
  v15 = sub_266A46570();

  v16 = [v14 initWithSchedule:v12 aggregationWindowStartTimestamp:v13 odmId:v15];

  v17 = sub_266A468E0();
  v18 = sub_266A468E0();
  v19 = [objc_allocWithZone(MEMORY[0x277CF15A0]) initWithAllRequestCount:v17 userRequestCount:v18];

  v20 = [objc_allocWithZone(MEMORY[0x277CF1590]) initWithMetadata:v16 statistics:v19];
  (*(v7 + 8))(v9, v6);
  return v20;
}

uint64_t type metadata accessor for SiriCoreMetricsBiomeReporter(uint64_t a1)
{
  result = qword_2800AED98;
  if (!qword_2800AED98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A4192C(uint64_t a1)
{
  result = sub_266A46510();
  if (v2 <= 0x3F)
  {
    result = sub_266A46040();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t SiriCoreMetricsError.hashValue.getter()
{
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](0);
  return sub_266A468D0();
}

uint64_t SiriCoreMetricsV2.__allocating_init()()
{
  v0 = swift_allocObject();
  SiriCoreMetricsV2.init()();
  return v0;
}

uint64_t SiriCoreMetricsV2.init()()
{
  v1 = sub_266A460E0();
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x28223BE20](v1);
  v57 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_266A45FF0();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_266A46510();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v51 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_logger;
  v16 = v0;
  sub_266A46500();
  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v18 = sub_266A46570();
  v19 = [v17 initWithSuiteName_];

  if (!v19)
  {
    v26 = v4;
    (*(v5 + 16))(v14, v0 + v15, v4);
    v27 = sub_266A464F0();
    v28 = sub_266A46690();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_266A29000, v27, v28, "Can't get user defaults initialized", v29, 2u);
      MEMORY[0x26D5E7060](v29, -1, -1);
    }

    v30 = *(v5 + 8);
    v30(v14, v26);
    sub_266A4231C();
    swift_allocError();
    swift_willThrow();
    v30((v0 + v15), v26);
    goto LABEL_8;
  }

  v20 = sub_266A46440();
  swift_allocObject();
  v21 = v19;
  v22 = sub_266A46430();
  v63 = v20;
  v64 = MEMORY[0x277D04550];
  v62 = v22;
  v23 = v4;
  v52 = *(v5 + 16);
  v53 = v5 + 16;
  v52(v12, v0 + v15, v4);
  sub_266A46260();
  swift_allocObject();
  v24 = v65;
  v25 = sub_266A46220();
  if (v24)
  {

    (*(v5 + 8))(v0 + v15, v4);
LABEL_8:
    type metadata accessor for SiriCoreMetricsV2(0);
    swift_deallocPartialClassInstance();
    return v16;
  }

  v31 = v25;
  v51 = v21;
  v65 = v5;
  v32 = v55;
  sub_266A46300();
  v33 = v57;
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  sub_266A46250();
  (*(v59 + 8))(v33, v60);
  (*(v56 + 8))(v32, v58);
  v34 = v0;
  v52(v61, v0 + v15, v23);
  v35 = v31;
  v36 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v37 = [v36 PrivateLearning];
  swift_unknownObjectRelease();
  v38 = [v37 SELFEvent];
  swift_unknownObjectRelease();
  [v38 source];

  v39 = v35;
  sub_266A46200();
  v40 = v23;
  v16 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEDB8, &qword_266A47F30);
  swift_allocObject();
  *(v34 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsDataProvider) = sub_266A46180();
  v42 = v54;
  v52(v54, v34 + v15, v40);
  type metadata accessor for SiriCoreMetricsCalculatorV2(0);
  v43 = swift_allocObject();

  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v61 = v15;
  v44 = *(v65 + 32);
  v44(v43 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_logger, v42, v40);
  *(v43 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_bookmarkService) = v39;
  *(v34 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsCalculator) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEDD0, &qword_266A47F38);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_266A47F20;
  v46 = [objc_opt_self() sharedAnalytics];
  v65 = v39;
  v47 = v46;
  v48 = [v46 defaultMessageStream];

  v52(v42, &v61[v34], v40);
  type metadata accessor for SiriCoreMetricsSELFReporterV2(0);
  v49 = swift_allocObject();
  v44(v49 + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger, v42, v40);
  *(v49 + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_stream) = v48;
  *(v45 + 32) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEDD8, &qword_266A47F40);
  swift_allocObject();
  v62 = sub_266A46160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEDE0, &qword_266A47F48);
  swift_allocObject();
  v50 = sub_266A46190();

  *(v34 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsReporter) = v50;
  return v16;
}

unint64_t sub_266A4231C()
{
  result = qword_2800AEDB0;
  if (!qword_2800AEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEDB0);
  }

  return result;
}

uint64_t type metadata accessor for SiriCoreMetricsV2(uint64_t a1)
{
  result = qword_2800AEE10;
  if (!qword_2800AEE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriCoreMetricsV2.loadData()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_266A423DC, 0, 0);
}

uint64_t sub_266A423DC()
{
  v4 = (*MEMORY[0x277D04438] + MEMORY[0x277D04438]);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_266A431E8;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t SiriCoreMetricsV2.doWork(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_266A424B4, 0, 0);
}

uint64_t sub_266A424B4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_266A4255C;
  v2 = *(v0 + 16);

  return SiriCoreMetricsCalculatorV2.doWork(_:)(v2);
}

uint64_t sub_266A4255C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t SiriCoreMetricsV2.report(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_266A42698, 0, 0);
}

uint64_t sub_266A42698()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_266A42760;

  return v4(v0 + 16);
}

uint64_t sub_266A42760()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266A431EC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t SiriCoreMetricsV2.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SiriCoreMetricsV2.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_266A429F0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_266A42A14, 0, 0);
}

uint64_t sub_266A42A14()
{
  v4 = (*MEMORY[0x277D04438] + MEMORY[0x277D04438]);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_266A42ACC;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_266A42ACC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_266A42BC0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_266A42BE8, 0, 0);
}

uint64_t sub_266A42BE8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_266A42C90;
  v2 = *(v0 + 24);

  return SiriCoreMetricsCalculatorV2.doWork(_:)(v2);
}

uint64_t sub_266A42C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_266A42DB4(uint64_t a1)
{
  *(v2 + 40) = *a1;
  v3 = *v1;
  *(v2 + 56) = *(a1 + 16);
  *(v2 + 64) = v3;
  return MEMORY[0x2822009F8](sub_266A42DE4, 0, 0);
}

uint64_t sub_266A42DE4()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_266A42EAC;

  return v4(v0 + 16);
}

uint64_t sub_266A42EAC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266A42FE0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_266A42FFC()
{
  result = qword_2800AEDF0;
  if (!qword_2800AEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEDF0);
  }

  return result;
}

uint64_t sub_266A430EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriCoreMetricsV2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266A43148(uint64_t a1)
{
  result = sub_266A46510();
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

uint64_t SiriCoreMetricsDataRecord.featurizedConversationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266A462A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SiriCoreMetricsDataRecord.previousRequestCounts.getter()
{
  type metadata accessor for SiriCoreMetricsDataRecord(0);
}

uint64_t SiriCoreMetricsDataProvider.__allocating_init(conversationProvider:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_featurizedConversationProvider) = a1;
  v7 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_logger;
  v8 = sub_266A46510();
  (*(*(v8 - 8) + 32))(v6 + v7, a3, v8);
  *(v6 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_bookmarkService) = a2;
  return v6;
}

uint64_t SiriCoreMetricsDataProvider.init(conversationProvider:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_featurizedConversationProvider) = a1;
  v6 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_logger;
  v7 = sub_266A46510();
  (*(*(v7 - 8) + 32))(v3 + v6, a3, v7);
  *(v3 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_bookmarkService) = a2;
  return v3;
}

uint64_t SiriCoreMetricsDataProvider.loadData()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_266A462C0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_266A45FF0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_266A460E0();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A43558, 0, 0);
}

uint64_t sub_266A43558(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v5 = v1[9];
  v4 = v1[10];
  v6 = v1[7];
  v7 = v1[8];
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  sub_266A46300();
  sub_266A46240();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v11 = (*MEMORY[0x277D04478] + MEMORY[0x277D04478]);
  v8 = swift_task_alloc();
  v1[13] = v8;
  *v8 = v1;
  v8[1] = sub_266A43698;
  v9 = v1[6];

  return v11(v9);
}

uint64_t sub_266A43698()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_266A438E0;
  }

  else
  {
    v2 = sub_266A437AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_266A437AC()
{
  v1 = v0[14];
  v2 = SiriCoreMetricsDataProvider.loadRequestCountsData()();
  if (v1)
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
  }

  else
  {
    v4 = v2;
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    v8 = v0[2];
    sub_266A462B0();
    sub_266A46280();
    (*(v6 + 8))(v5, v7);
    *(v8 + *(type metadata accessor for SiriCoreMetricsDataRecord(0) + 20)) = v4;
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_266A438E0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t SiriCoreMetricsDataProvider.loadRequestCountsData()()
{
  v0 = sub_266A45FF0();
  v46 = *(v0 - 8);
  v47 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v39 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v39 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = sub_266A460E0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v19 = v48;
  v20 = sub_266A46200();
  v48 = v19;
  if (v19)
  {
    (*(v13 + 8))(v18, v12);
    return v16;
  }

  v21 = v20;
  v41 = v6;
  v42 = v18;
  v22 = v47;
  v43 = v11;
  v44 = v12;
  v45 = v3;
  sub_266A463D0();
  v24 = v23;

  if (v24)
  {
    v25 = v41;
    sub_266A46300();
    sub_266A45FC0();
    v26 = *(v46 + 8);
    v26(v25, v22);
    sub_266A45FB0();
    v26(v9, v22);
  }

  else
  {
    sub_266A45F90();
  }

  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  sub_266A45FC0();
  v28 = *(v13 + 8);
  v27 = (v13 + 8);
  v40 = v28;
  v28(v16, v44);
  sub_266A463F0();
  sub_266A45FA0();
  v39 = sub_266A463E0();
  result = sub_266A462F0();
  v30 = result;
  v49 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v31 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = v27;
    if (v31)
    {
      goto LABEL_8;
    }

LABEL_20:
    v16 = MEMORY[0x277D84F90];
LABEL_21:

    v37 = *(v46 + 8);
    v38 = v47;
    v37(v45, v47);
    v37(v43, v38);
    v40(v42, v44);
    return v16;
  }

  result = sub_266A46730();
  v31 = result;
  v41 = v27;
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v31 >= 1)
  {
    v32 = 0;
    v16 = MEMORY[0x277D84F90];
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x26D5E6A00](v32, v30);
      }

      else
      {
        v33 = *(v30 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = sub_266A464E0();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v36 = v35;
        MEMORY[0x26D5E68F0]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_266A46610();
        }

        sub_266A46630();

        v16 = v49;
      }

      else
      {
      }

      ++v32;
    }

    while (v31 != v32);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t SiriCoreMetricsDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SiriCoreMetricsDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_266A43F44()
{
  result = qword_2800AEB20;
  if (!qword_2800AEB20)
  {
    type metadata accessor for SiriCoreMetricsDataRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEB20);
  }

  return result;
}

uint64_t sub_266A43F9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266A44038;

  return SiriCoreMetricsDataProvider.loadData()(a1);
}

uint64_t sub_266A44038()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_266A44140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266A462A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_266A44210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266A462A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_266A442C8(uint64_t a1)
{
  sub_266A462A0();
  if (v1 <= 0x3F)
  {
    sub_266A4434C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266A4434C(uint64_t a1)
{
  if (!qword_2800AEE48)
  {
    sub_266A443A4();
    v1 = sub_266A46640();
    if (!v2)
    {
      atomic_store(v1, &qword_2800AEE48);
    }
  }
}

unint64_t sub_266A443A4()
{
  result = qword_2800AEE50;
  if (!qword_2800AEE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800AEE50);
  }

  return result;
}

uint64_t sub_266A44418(uint64_t a1)
{
  result = sub_266A46510();
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

uint64_t SiriCoreMetrics.__allocating_init(bookmarkLocation:conversationType:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SiriCoreMetrics.init(bookmarkLocation:conversationType:)(a1, a2, a3);
  return v6;
}

uint64_t SiriCoreMetrics.init(bookmarkLocation:conversationType:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v84 = a3;
  v86 = sub_266A46040();
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v79 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266A45F60();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v81 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = v74 - v11;
  v12 = sub_266A46510();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v80 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v74 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v74 - v19;
  v21 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_logger;
  sub_266A46500();
  v85 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_odmId;
  _s15SiriCoreMetricsAAC5odmId10Foundation4UUIDVvpfi_0();
  if (!a2)
  {
    a1 = 0xD000000000000043;
    a2 = 0x8000000266A494D0;
  }

  v22 = *(v13 + 16);
  v88 = v13 + 16;
  v89 = v21;
  v93 = v22;
  v94 = v12;
  v22(v20, v4 + v21, v12);

  v23 = sub_266A464F0();
  v24 = sub_266A46680();

  v25 = os_log_type_enabled(v23, v24);
  v90 = v13;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v95 = v4;
    v27 = v26;
    v28 = swift_slowAlloc();
    v96 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_266A333F0(a1, a2, &v96);
    _os_log_impl(&dword_266A29000, v23, v24, "marker: streams bookmark path=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x26D5E7060](v28, -1, -1);
    v29 = v27;
    v4 = v95;
    MEMORY[0x26D5E7060](v29, -1, -1);
  }

  v30 = *(v13 + 8);
  v30(v20, v94);
  v31 = v87;
  sub_266A45F50();

  sub_266A46260();
  (*(v91 + 16))(v81, v31, v92);
  v32 = v89;
  v93(v18, v4 + v89, v94);
  v33 = v82;
  v34 = sub_266A46210();
  if (v33)
  {
    (*(v91 + 8))(v31, v92);
    v30((v4 + v32), v94);
    (*(v83 + 8))(v4 + v85, v86);
    type metadata accessor for SiriCoreMetrics(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_conversationType) = v84;
    v82 = v34;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEDD0, &qword_266A47F38);
    v35 = swift_allocObject();
    v78 = 0;
    v36 = v35;
    *(v35 + 16) = xmmword_266A48240;
    *(v35 + 32) = [objc_allocWithZone(sub_266A46400()) init];
    v36[5] = [objc_allocWithZone(sub_266A464B0()) init];
    v36[6] = [objc_allocWithZone(sub_266A46410()) init];
    v36[7] = [objc_allocWithZone(sub_266A46460()) init];
    v37 = v80;
    v38 = v93;
    v39 = v94;
    v93(v80, v4 + v32, v94);
    sub_266A462D0();
    swift_allocObject();

    v40 = sub_266A462E0();
    v38(v37, v4 + v32, v39);
    type metadata accessor for SiriCoreMetricsDataProvider(0);
    v41 = swift_allocObject();
    *(v41 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_featurizedConversationProvider) = v40;
    v76 = v40;
    v95 = v4;
    v43 = v90 + 32;
    v42 = *(v90 + 32);
    v42(v41 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_logger, v37, v39);
    v81 = v42;
    *(v41 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_bookmarkService) = v82;
    *(v95 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsDataProvider) = v41;
    v44 = v93;
    v93(v37, v95 + v32, v39);
    type metadata accessor for SiriCoreMetricsCalculator(0);
    v45 = swift_allocObject();

    _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
    v42(v45 + OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_logger, v37, v39);
    v46 = v43;
    *(v45 + 16) = v84;
    *(v95 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsCalculator) = v45;
    v47 = v89;
    v48 = v44;
    v44(v37, v95 + v89, v39);
    type metadata accessor for SiriCoreMetricsJsonLoggingReporter(0);
    v49 = swift_allocObject();
    v50 = MEMORY[0x277D84F90];
    v51 = sub_266A38020(MEMORY[0x277D84F90]);
    v84 = v49;
    *(v49 + 16) = v51;
    v52 = v49 + OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
    v53 = v37;
    v54 = v81;
    (v81)(v52, v37, v39);
    v90 = v46;
    v48(v37, v95 + v47, v39);
    v55 = v83;
    v56 = *(v83 + 16);
    v74[1] = v83 + 16;
    v75 = v56;
    v57 = v86;
    v58 = v79;
    v56(v79, v95 + v85, v86);
    type metadata accessor for SiriCoreMetricsSELFReporter(0);
    v59 = swift_allocObject();
    *(v59 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsCountsReportedAll) = v50;
    *(v59 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsTurnRestatementScores) = v50;
    v74[0] = v59;
    v60 = v53;
    v61 = v39;
    (v54)(v59 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger, v60, v39);
    v83 = *(v55 + 32);
    v62 = v58;
    (v83)(v59 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId, v58, v57);
    v63 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v64 = [v63 SiriRequestCounts];
    swift_unknownObjectRelease();
    v65 = [v64 source];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEE68, &qword_266A48260);
    swift_allocObject();
    v66 = sub_266A46140();
    v67 = v80;
    v93(v80, v95 + v89, v61);
    v68 = v86;
    v69 = v62;
    v75(v62, v95 + v85, v86);
    type metadata accessor for SiriCoreMetricsBiomeReporter(0);
    v70 = swift_allocObject();
    *(v70 + 16) = v66;
    (v81)(v70 + OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger, v67, v61);
    v4 = v95;
    (v83)(v70 + OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId, v69, v68);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_266A48250;
    *(v71 + 32) = v74[0];
    *(v71 + 40) = v70;
    *(v71 + 48) = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEE70, &qword_266A48268);
    swift_allocObject();

    v96 = sub_266A46160();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEE78, &qword_266A48270);
    swift_allocObject();
    v72 = sub_266A46190();

    (*(v91 + 8))(v87, v92);
    *(v4 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsReporter) = v72;
  }

  return v4;
}

uint64_t type metadata accessor for SiriCoreMetrics(uint64_t a1)
{
  result = qword_2800AEE98;
  if (!qword_2800AEE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriCoreMetrics.loadData()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_266A450E4, 0, 0);
}

uint64_t sub_266A450E4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_266A431E8;
  v2 = *(v0 + 16);

  return SiriCoreMetricsDataProvider.loadData()(v2);
}

uint64_t SiriCoreMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_266A451B0, 0, 0);
}

uint64_t sub_266A451B0()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_266A4525C;
  v2 = *(v0 + 72);

  return SiriCoreMetricsCalculator.doWork(_:)(v0 + 16, v2);
}

uint64_t sub_266A4525C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = v1[1];
  v4 = v1[3];
  v2[1] = v1[2];
  v2[2] = v4;
  *v2 = v3;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t SiriCoreMetrics.report(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_266A45394, 0, 0);
}

uint64_t sub_266A45394()
{
  v1 = *(v0 + 64);
  v3 = v1[1];
  v2 = v1[2];
  v6 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_266A4545C;

  return v6(v0 + 16);
}

uint64_t sub_266A4545C()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266A45590, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t SiriCoreMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_odmId;
  v4 = sub_266A46040();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SiriCoreMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_odmId;
  v4 = sub_266A46040();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_266A45784(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_266A457A8, 0, 0);
}

uint64_t sub_266A457A8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_266A42ACC;
  v2 = *(v0 + 16);

  return SiriCoreMetricsDataProvider.loadData()(v2);
}

uint64_t sub_266A45850(uint64_t a1, uint64_t a2)
{
  v3[8] = a1;
  v3[9] = a2;
  v3[10] = *v2;
  return MEMORY[0x2822009F8](sub_266A45878, 0, 0);
}

uint64_t sub_266A45878()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_266A45924;
  v2 = *(v0 + 72);

  return SiriCoreMetricsCalculator.doWork(_:)(v0 + 16, v2);
}

uint64_t sub_266A45924()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = v1[1];
  v4 = v1[3];
  v2[1] = v1[2];
  v2[2] = v4;
  *v2 = v3;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_266A45A40(_OWORD *a1)
{
  v3 = a1[1];
  *(v2 + 64) = *a1;
  *(v2 + 80) = v3;
  *(v2 + 96) = a1[2];
  *(v2 + 112) = *v1;
  return MEMORY[0x2822009F8](sub_266A45A74, 0, 0);
}

uint64_t sub_266A45A74()
{
  v5 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  v2 = *(v0 + 96);
  *(v0 + 32) = v1;
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_266A45B40;

  return v5(v0 + 16);
}

uint64_t sub_266A45B40()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266A45C74, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_266A45DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266A45DFC(uint64_t a1)
{
  result = sub_266A46510();
  if (v2 <= 0x3F)
  {
    result = sub_266A46040();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}