uint64_t specialized RaceChartProvider.init(chartPoints:formatter:numberOfMarks:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMd, &_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - v9;
  v11 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider__dataElements;
  v12 = MEMORY[0x277D84F90];
  v16[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A22ChartLinearDataElementVGMd, &_sSay9WorkoutUI0A22ChartLinearDataElementVGMR);
  Published.init(initialValue:)();
  (*(v8 + 32))(v3 + v11, v10, v7);
  v13 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_dataBuckets;
  *(v3 + v13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore0C10DataBucketCTt0g5Tf4g_n(v12);
  *(v3 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_chartPoints) = a1;
  *(v3 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_formatter) = a2;
  *(v3 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_markCount) = a3;
  v14 = a2;
  RaceChartProvider.allocateBuckets()();
  return v3;
}

uint64_t type metadata accessor for RaceChartProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for RaceChartProvider;
  if (!type metadata singleton initialization cache for RaceChartProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RaceChartProvider(uint64_t a1)
{
  type metadata accessor for Published<[WorkoutChartLinearDataElement]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[WorkoutChartLinearDataElement]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[WorkoutChartLinearDataElement]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI0A22ChartLinearDataElementVGMd, &_sSay9WorkoutUI0A22ChartLinearDataElementVGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[WorkoutChartLinearDataElement]>);
    }
  }
}

uint64_t outlined init with copy of RaceChartPoint?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore14RaceChartPointVSgMd, &_s11WorkoutCore14RaceChartPointVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RaceChartPoint?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore14RaceChartPointVSgMd, &_s11WorkoutCore14RaceChartPointVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutNotification.init(alert:formattingManager:displayDuration:)(void *a1, void *a2, double a3)
{
  v5 = specialized WorkoutNotification.init(alert:formattingManager:displayDuration:)(a1, a3);

  return v5;
}

uint64_t static WorkoutNotification.unitsAndTypeForInterval(alert:)(uint64_t a1, unsigned int *a2)
{
  v192 = a1;
  v184 = type metadata accessor for PowerZonesAlertZoneType();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v175 = (&v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v182 = &v166 - v5;
  MEMORY[0x28223BE20](v6);
  v181 = &v166 - v7;
  v191 = type metadata accessor for HeartRateZoneType();
  v193 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v168 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v169 = &v166 - v10;
  MEMORY[0x28223BE20](v11);
  v187 = &v166 - v12;
  MEMORY[0x28223BE20](v13);
  v188 = &v166 - v14;
  MEMORY[0x28223BE20](v15);
  v186 = &v166 - v16;
  MEMORY[0x28223BE20](v17);
  v185 = &v166 - v18;
  v179 = type metadata accessor for TargetZone.PrimaryType();
  v176 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v178 = &v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for TargetZone.ZoneType();
  v177 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v174 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for StepType();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v170 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v199 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v167 = &v166 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v198 = &v166 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd, &_s11WorkoutCore09CompletedA4StepVSgMR);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v166 - v27;
  v29 = type metadata accessor for CompletedWorkoutStep();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v166 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for WorkoutNotification.NotificationType();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v166 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = MEMORY[0x277D84F90];
  v38 = *MEMORY[0x277D7DA18];
  v194 = v39;
  v195 = v34;
  v40 = *(v34 + 104);
  v40(v37, v38, v35);
  v196 = a2;
  WorkoutAlertInterval.completedStep.getter();
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    outlined destroy of CompletedWorkoutStep?(v28);
    v41 = v199;
  }

  else
  {
    (*(v30 + 32))(v32, v28, v29);
    v42 = CompletedWorkoutStep.metricTypeToDisplay.getter();
    if (v43)
    {
      (*(v30 + 8))(v32, v29);
      v41 = v199;
    }

    else
    {
      v44 = v42;
      v45 = v194;
      (*(v195 + 8))(v37, v194);
      v46 = *MEMORY[0x277D7DA08];
      v190 = v37;
      (v40)(v37, v46, v45);
      v47 = *MEMORY[0x277D7DB38];
      v48 = *(v199 + 104);
      v189 = v22;
      v48(v198, v47);
      type metadata accessor for WorkoutNotificationUnit();
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v44 == 3)
      {
        v22 = v189;
        (v48)(v198, *MEMORY[0x277D7DB00], v189);
        CompletedWorkoutStep.completedDuration.getter();
        swift_allocObject();
        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v30 + 8))(v32, v29);
        v37 = v190;
      }

      else
      {
        if (v44 == 1)
        {
          (v48)(v198, *MEMORY[0x277D7DB40], v189);
          CompletedWorkoutStep.completedDistance.getter();
          CompletedWorkoutStep.step.getter();
          WorkoutStep.activityType.getter();

          swift_allocObject();
          WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
          MEMORY[0x20F30BCF0]();
          if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        (*(v30 + 8))(v32, v29);
        v22 = v189;
        v37 = v190;
      }

      v41 = v199;
    }
  }

  v49 = WorkoutAlertInterval.nextStep.getter();
  v50 = MEMORY[0x277D7DB28];
  v51 = v198;
  if (v49)
  {
    v52 = v49;
    v190 = v37;
    v53 = dispatch thunk of WorkoutAlertInterval.maxRepetitions.getter();
    v54 = *(v41 + 104);
    v173 = *MEMORY[0x277D7DB38];
    v197 = v54;
    v54(v51);
    v199 = v41 + 104;
    if (v53 < 2)
    {
      type metadata accessor for WorkoutNotificationUnit();
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_39:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v58 = v193;
        goto LABEL_40;
      }
    }

    else
    {
      type metadata accessor for WorkoutNotificationUnit();
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v55 = *v50;
      v56 = v197;
      v197(v51, v55, v22);
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v166 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v56(v51, *MEMORY[0x277D7DB08], v22);
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v56 = v197;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v56(v51, v55, v22);
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v56 = v197;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v56(v51, v55, v22);
      v50 = v196;
      v57 = dispatch thunk of WorkoutAlertInterval.repetition.getter();
      v58 = v193;
      if (!__OFADD__(v57, 1))
      {
        swift_allocObject();
        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v56 = v197;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v56(v51, v55, v22);
        dispatch thunk of WorkoutAlertInterval.maxRepetitions.getter();
        swift_allocObject();
        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v50 = MEMORY[0x277D7DB28];
LABEL_40:
        WorkoutStep.displayName.getter();
        v63 = v62;
        v64 = *v50;
        v197(v51, v64, v22);
        if (!v63)
        {
          v65 = v170;
          WorkoutStep.stepType.getter();
          StepType.displayStringKey.getter();
          (*(v171 + 8))(v65, v172);
        }

        type metadata accessor for WorkoutNotificationUnit();
        swift_allocObject();
        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v60 = v204;
        v66 = WorkoutStep.goal.getter();
        v67 = [v66 value];

        if (!v67)
        {
          v197(v51, v64, v22);
          v73 = WorkoutStep.goal.getter();
          v74 = [v73 goalTypeIdentifier];

          v75 = _HKWorkoutGoalType.color.getter(v74);
          UIColor.rgbHex()();

          type metadata accessor for WorkoutNotificationUnit();
          swift_allocObject();
          WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
          MEMORY[0x20F30BCF0]();
          if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v60 = v204;
          goto LABEL_56;
        }

        v68 = WorkoutStep.goal.getter();
        v69 = [v68 goalTypeIdentifier];

        if (v69 == 2)
        {
          v197(v51, *MEMORY[0x277D7DB00], v22);
          v76 = [objc_opt_self() secondUnit];
          [v67 doubleValueForUnit_];

          type metadata accessor for WorkoutNotificationUnit();
          swift_allocObject();
        }

        else
        {
          if (v69 != 1)
          {

LABEL_56:
            v77 = WorkoutStep.activeTargetZone.getter();
            v189 = v22;
            LODWORD(v166) = v64;
            if (v77)
            {
              if (dispatch thunk of TargetZone.enabled.getter())
              {
                v78 = v197;
                v197(v167, v173, v22);
                dispatch thunk of TargetZone.isSingleThreshold.getter();
                type metadata accessor for WorkoutNotificationUnit();
                swift_allocObject();
                WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
                MEMORY[0x20F30BCF0]();
                if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v78(v51, *MEMORY[0x277D7DB08], v22);
                WorkoutStep.targetIconName.getter();
                swift_allocObject();
                WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
                MEMORY[0x20F30BCF0]();
                if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v79 = v174;
                TargetZone.type.getter();
                v80 = v178;
                TargetZone.ZoneType.primaryType.getter();
                v81 = *(v177 + 8);
                v81(v79, v180);
                dispatch thunk of TargetZone.min.getter();
                v83 = v82;
                v84 = WorkoutStep.activityType.getter();
                specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(v80, v84, v83);

                v85 = *(v176 + 8);
                v86 = v85(v80, v179);
                MEMORY[0x20F30BCF0](v86);
                if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v58 = v193;
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v60 = v204;
                if ((dispatch thunk of TargetZone.isSingleThreshold.getter() & 1) == 0)
                {
                  v117 = v174;
                  TargetZone.type.getter();
                  v118 = v178;
                  TargetZone.ZoneType.primaryType.getter();
                  v81(v117, v180);
                  dispatch thunk of TargetZone.max.getter();
                  v120 = v119;
                  v121 = WorkoutStep.activityType.getter();
                  specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(v118, v121, v120);

                  v122 = v85(v118, v179);
                  MEMORY[0x20F30BCF0](v122);
                  if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_133;
                  }

                  goto LABEL_96;
                }
              }
            }

            v87 = v191;
            while (1)
            {
              v88 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
              v89 = v185;
              HeartRateTargetZone.type.getter();

              v90 = *(v58 + 104);
              v91 = v186;
              v90(v186, *MEMORY[0x277D7E138], v87);
              lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType(&lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType, MEMORY[0x277D7E150], MEMORY[0x277D7E158]);
              LOBYTE(v88) = dispatch thunk of static Equatable.== infix(_:_:)();
              v94 = *(v58 + 8);
              v93 = v58 + 8;
              v92 = v94;
              v94(v91, v87);
              v94(v89, v87);
              if (v88)
              {
                v95 = v198;
                goto LABEL_98;
              }

              v196 = v52;
              v96 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
              HeartRateTargetZone.type.getter();

              v90(v187, *MEMORY[0x277D7E148], v87);
              lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType(&lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType, MEMORY[0x277D7E150], MEMORY[0x277D7E160]);
              dispatch thunk of RawRepresentable.rawValue.getter();
              dispatch thunk of RawRepresentable.rawValue.getter();
              v193 = v93;
              if (v202 == v200 && v203 == v201)
              {
                v92(v187, v87);
                v92(v188, v87);
              }

              else
              {
                v97 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v92(v187, v87);
                v92(v188, v87);

                if ((v97 & 1) == 0)
                {
                  break;
                }
              }

              v98 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
              v99 = dispatch thunk of HeartRateTargetZone.defaultZoneIndex.getter();
              v101 = v100;

              if (v101)
              {
                break;
              }

              v95 = v198;
              v106 = v189;
              v107 = v197;
              v197(v198, v173, v189);
              type metadata accessor for WorkoutNotificationUnit();
              swift_allocObject();
              WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
              MEMORY[0x20F30BCF0]();
              if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v107(v95, *MEMORY[0x277D7DB08], v106);
              v52 = v196;
              WorkoutStep.targetIconName.getter();
              swift_allocObject();
              WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
              MEMORY[0x20F30BCF0]();
              if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v107(v95, v166, v106);
              if (!__OFADD__(v99, 1))
              {
                swift_allocObject();
                goto LABEL_92;
              }

              __break(1u);
LABEL_133:
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_96:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v60 = v204;
              v87 = v191;
              v58 = v193;
            }

            v102 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
            v103 = v169;
            HeartRateTargetZone.type.getter();

            v104 = v168;
            v105 = v191;
            v90(v168, *MEMORY[0x277D7E140], v191);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            if (v202 == v200 && v203 == v201)
            {
              v92(v104, v105);
              v92(v103, v105);
            }

            else
            {
              v108 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v92(v104, v105);
              v92(v103, v105);

              if ((v108 & 1) == 0)
              {
                v95 = v198;
                goto LABEL_98;
              }
            }

            v109 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
            dispatch thunk of HeartRateTargetZone.customRange.getter();
            v111 = v110;
            v113 = v112;

            v95 = v198;
            v114 = v189;
            if (v113)
            {
              goto LABEL_98;
            }

            v193 = v111;
            v115 = v197;
            v197(v198, v173, v189);
            type metadata accessor for WorkoutNotificationUnit();
            swift_allocObject();
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v115(v95, *MEMORY[0x277D7DB08], v114);
            WorkoutStep.targetIconName.getter();
            swift_allocObject();
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v116 = *MEMORY[0x277D7DB50];
            v115(v95, v116, v114);
            WorkoutStep.activityType.getter();
            swift_allocObject();
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v115(v95, v116, v114);
            WorkoutStep.activityType.getter();
            swift_allocObject();
LABEL_92:
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v60 = v204;
LABEL_98:
            v123 = v95;
            v124 = WorkoutStep.powerZonesAlertTargetZoneWithDefault.getter();
            v125 = v181;
            dispatch thunk of PowerZonesAlertTargetZone.type.getter();

            v126 = v183;
            v127 = v182;
            v128 = v184;
            (*(v183 + 104))(v182, *MEMORY[0x277D7E418], v184);
            lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
            LOBYTE(v124) = dispatch thunk of static Equatable.== infix(_:_:)();
            v129 = *(v126 + 8);
            v129(v127, v128);
            v129(v125, v128);
            if (v124)
            {

              goto LABEL_100;
            }

            v130 = WorkoutStep.powerZonesAlertTargetZoneWithDefault.getter();
            v131 = v175;
            dispatch thunk of PowerZonesAlertTargetZone.type.getter();

            v132 = (*(v126 + 88))(v131, v128);
            if (v132 == *MEMORY[0x277D7E428])
            {
              (*(v126 + 96))(v131, v128);
              v133 = *v131;
              v134 = v123;
              v135 = v123;
              v136 = v189;
              v137 = v197;
              v197(v135, v173, v189);
              type metadata accessor for WorkoutNotificationUnit();
              swift_allocObject();
              WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
              MEMORY[0x20F30BCF0]();
              if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v198 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v137(v134, *MEMORY[0x277D7DB08], v136);
              WorkoutStep.targetIconName.getter();
              swift_allocObject();
              WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
              MEMORY[0x20F30BCF0]();
              v61 = v195;
              v37 = v190;
              if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v138 = v176;
              v139 = v178;
              v140 = v179;
              (*(v176 + 104))(v178, *MEMORY[0x277D7DEC8], v179);
              v141 = WorkoutStep.activityType.getter();
              specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(v139, v141, v133);

              v142 = (*(v138 + 8))(v139, v140);
              MEMORY[0x20F30BCF0](v142);
              if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR) + 48);
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v60 = v204;
              (*(v177 + 8))(v131 + v143, v180);
              goto LABEL_118;
            }

            if (v132 != *MEMORY[0x277D7E430])
            {
              if (v132 == *MEMORY[0x277D7E420])
              {
                (*(v126 + 96))(v131, v128);
                v149 = *v131;
                v148 = v131[1];
                v150 = v123;
                v151 = v123;
                v152 = v189;
                v153 = v197;
                v197(v151, v173, v189);
                type metadata accessor for WorkoutNotificationUnit();
                swift_allocObject();
                WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
                MEMORY[0x20F30BCF0]();
                if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v153(v150, *MEMORY[0x277D7DB08], v152);
                WorkoutStep.targetIconName.getter();
                swift_allocObject();
                WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
                MEMORY[0x20F30BCF0]();
                v154 = v179;
                v155 = v176;
                v156 = v178;
                if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v157 = *MEMORY[0x277D7DEC8];
                v158 = *(v155 + 104);
                v158(v156, v157, v154);
                v159 = WorkoutStep.activityType.getter();
                v199 = specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(v156, v159, v149);

                v160 = v156;
                v161 = *(v155 + 8);
                v162 = v161(v160, v154);
                MEMORY[0x20F30BCF0](v162);
                v61 = v195;
                if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v198 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v158(v160, v157, v154);
                v163 = WorkoutStep.activityType.getter();
                specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(v160, v163, v148);

                v164 = v161(v160, v154);
                MEMORY[0x20F30BCF0](v164);
                if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                v165 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMR) + 48);
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v60 = v204;
                (*(v177 + 8))(v175 + v165, v180);
                goto LABEL_101;
              }

              v129(v131, v128);
LABEL_100:
              v61 = v195;
LABEL_101:
              v37 = v190;
              goto LABEL_118;
            }

            (*(v126 + 96))(v131, v128);
            v198 = *v131;

            v144 = v123;
            v145 = v189;
            v146 = v197;
            v197(v123, v173, v189);
            type metadata accessor for WorkoutNotificationUnit();
            swift_allocObject();
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v146(v123, *MEMORY[0x277D7DB08], v145);
            WorkoutStep.targetIconName.getter();
            swift_allocObject();
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            v61 = v195;
            v37 = v190;
            if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v146(v144, v166, v145);
            if (__OFADD__(v198, 1))
            {
              __break(1u);
            }

            else
            {
              swift_allocObject();
              WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
              MEMORY[0x20F30BCF0]();
              if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_117:
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v60 = v204;
                goto LABEL_118;
              }
            }

            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            goto LABEL_117;
          }

          v70 = [v67 _unit];
          v71 = MEMORY[0x20F30D2C0]();

          v197(v51, *MEMORY[0x277D7DB40], v22);
          v202 = v71;
          dispatch thunk of CustomStringConvertible.description.getter();
          v72 = [objc_opt_self() meterUnit];
          [v67 doubleValueForUnit_];

          type metadata accessor for WorkoutNotificationUnit();
          swift_allocObject();
        }

        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v60 = v204;
        goto LABEL_56;
      }

      __break(1u);
    }

    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_39;
  }

  v59 = *(v41 + 104);
  v59(v198, *MEMORY[0x277D7DB28], v22);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v59(v51, *MEMORY[0x277D7DB38], v22);
  swift_allocObject();
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v60 = v204;
  v61 = v195;
LABEL_118:
  (*(v61 + 32))(v192, v37, v194);
  return v60;
}

uint64_t static WorkoutNotification.unitsForRace(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB67B90;
  (*(v1 + 104))(v3, *MEMORY[0x277D7DB28], v0);
  dispatch thunk of WorkoutAlertRace.alertTitleLocalizationKey()();
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v4 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v4;
}

uint64_t static WorkoutNotification.unitsForTrackStatusChange(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB67B90;
  (*(v1 + 104))(v3, *MEMORY[0x277D7DB28], v0);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v4 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v4;
}

uint64_t specialized static WorkoutNotification.unitsForGoalProgress(alert:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D84F90];
  v10 = [a1 type];
  v27 = v2;
  if (v10 != 13 && v10 != 7)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v29 = 0xD00000000000001FLL;
    v30 = 0x800000020CB9CE40;
    v28 = [a1 type];
    type metadata accessor for NLWorkoutAlertType(0);
    v23 = String.init<A>(describing:)();
    MEMORY[0x20F30BC00](v23);

    goto LABEL_24;
  }

  v11 = *(v6 + 104);
  v11(v9, *MEMORY[0x277D7DB28], v5);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = [a1 goal];
  v13 = [v12 goalTypeIdentifier];

  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      v14 = [a1 goal];
      v15 = [v14 value];

      if (v15)
      {
        v16 = [v15 _unit];
        v17 = specialized FIUIDistanceUnit.init(hkUnit:)(v16);

        v29 = v17;
        dispatch thunk of CustomStringConvertible.description.getter();
      }

      else
      {
        static WOLog.alerts.getter();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_20C66F000, v19, v20, "Unexpected nil value for distance goal.", v21, 2u);
          MEMORY[0x20F30E080](v21, -1, -1);
        }

        (*(v26 + 8))(v4, v27);
      }

      v11(v9, *MEMORY[0x277D7DB40], v5);
      [a1 currentValue];
      type metadata accessor for WorkoutNotificationUnit();
      swift_allocObject();
      goto LABEL_18;
    }

    if (v13 == 2)
    {
      v18 = MEMORY[0x277D7DB00];
      goto LABEL_13;
    }

    if (v13)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v13 != 3)
  {
LABEL_23:
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v29 = 0xD000000000000016;
    v30 = 0x800000020CB9CE80;
    v24 = [a1 goal];
    [v24 goalTypeIdentifier];

    v25 = _HKWorkoutGoalType.description.getter();
    MEMORY[0x20F30BC00](v25);

    goto LABEL_24;
  }

  v18 = MEMORY[0x277D7DB20];
LABEL_13:
  v11(v9, *v18, v5);
  [a1 currentValue];
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
LABEL_18:
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v31;
}

uint64_t specialized static WorkoutNotification.unitsForHeartRate(alert:)(void *a1)
{
  v2 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 type];
  if (v7 == 8)
  {
    goto LABEL_6;
  }

  if (v7 == 10)
  {
    goto LABEL_7;
  }

  if (v7 == 9)
  {
LABEL_6:
    v8 = dispatch thunk of WorkoutAlertHeartRateZone.heartRateTargetZone.getter();
    dispatch thunk of HeartRateTargetZone.isEffectivelyCustomSingleThreshold.getter();

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20CB61A40;
    v10 = *(v3 + 104);
    v10(v6, *MEMORY[0x277D7DB28], v2);
    type metadata accessor for WorkoutNotificationUnit();
    swift_allocObject();
    *(v9 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
    v10(v6, *MEMORY[0x277D7DB50], v2);
    dispatch thunk of WorkoutAlertHeartRateZone.heartRate.getter();
    swift_allocObject();
    *(v9 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
    return v9;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v14 = 0xD00000000000001DLL;
  v15 = 0x800000020CB9CB60;
  v13[1] = [a1 type];
  type metadata accessor for NLWorkoutAlertType(0);
  v12 = String.init<A>(describing:)();
  MEMORY[0x20F30BC00](v12);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(uint64_t a1, void *a2, double a3)
{
  v23 = a2;
  v4 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TargetZone.PrimaryType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *(v9 + 16);
  v22 = a1;
  v16(&v22 - v14, a1, v8, v13);
  v17 = (*(v9 + 88))(v15, v8);
  if (v17 == *MEMORY[0x277D7DEC0])
  {
    v18 = MEMORY[0x277D7DAF8];
LABEL_7:
    (*(v5 + 104))(v7, *v18, v4);
    type metadata accessor for WorkoutNotificationUnit();
    swift_allocObject();
    v19 = v23;
    return WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  }

  if (v17 == *MEMORY[0x277D7DED0])
  {
    v18 = MEMORY[0x277D7DB30];
    goto LABEL_7;
  }

  if (v17 == *MEMORY[0x277D7DEC8])
  {
    v18 = MEMORY[0x277D7DB10];
    goto LABEL_7;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v24 = 0xD000000000000018;
  v25 = 0x800000020CB9CDE0;
  (v16)(v11, v22, v8);
  v21 = String.init<A>(describing:)();
  MEMORY[0x20F30BC00](v21);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static WorkoutNotification.unitsForMilestone(alert:)(id a1)
{
  v2 = 0xD000000000000018;
  v3 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v35 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20CB67B90;
  v12 = *(v4 + 104);
  v12(v10, *MEMORY[0x277D7DB08], v3);
  v13 = WorkoutAlertSegment.segmentMarker.getter();
  v14 = [v13 segmentIndex];

  v44 = v14;
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v43 = v15;
  MEMORY[0x20F30BC00](0x656C637269632ELL, 0xE700000000000000);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v11 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v44 = v11;
  v16 = &unk_277DA8000;
  v17 = [a1 type];
  v38 = v10;
  v39 = v12;
  v40 = v4 + 104;
  if (v17 != 6 && v17 != 26)
  {
    goto LABEL_42;
  }

  v12(v10, *MEMORY[0x277D7DB38], v3);
  swift_allocObject();
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v18 = v44;
  v19 = objc_opt_self();
  v20 = WorkoutAlertSegment.activityType.getter();
  v16 = [v19 fiui:1 activitySupportsMetricType:v20 activityType:WorkoutAlertSegment.activityMoveMode.getter() activityMoveMode:?];

  v21 = WorkoutAlertSegment.activityType.getter();
  v22 = [v19 fiui:8 activitySupportsMetricType:v21 activityType:WorkoutAlertSegment.activityMoveMode.getter() activityMoveMode:?];

  v2 = WorkoutAlertSegment.activityType.getter();
  v23 = [v19 fiui:2 activitySupportsMetricType:v2 activityType:WorkoutAlertSegment.activityMoveMode.getter() activityMoveMode:?];

  if (WorkoutAlertSegment.gpsAvailable.getter())
  {
    v24 = v38;
    if (v16)
    {
      v2 = v36;
      v39(v36, *MEMORY[0x277D7DB40], v3);
      v16 = WorkoutAlertSegment.segmentMarker.getter();
      v25 = [(SEL *)v16 distance];

      if (!v25)
      {
        __break(1u);
        goto LABEL_40;
      }

      [v25 _value];

      WorkoutAlertSegment.activityType.getter();
      swift_allocObject();
      goto LABEL_11;
    }
  }

  else
  {
    v24 = v38;
    if (v16)
    {
      v39(v38, *MEMORY[0x277D7DB28], v3);
      swift_allocObject();
LABEL_11:
      v16 = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v2 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 = v44;
    }
  }

  if ((WorkoutAlertSegment.shouldHideTime.getter() & 1) == 0)
  {
    v39(v24, *MEMORY[0x277D7DB18], v3);
    v26 = WorkoutAlertSegment.segmentMarker.getter();
    [v26 duration];

    swift_allocObject();
    v16 = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
    MEMORY[0x20F30BCF0]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v2 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v18 = v44;
  }

  if (WorkoutAlertSegment.gpsAvailable.getter())
  {
    if (v22)
    {
      v16 = WorkoutAlertSegment.segmentMarker.getter();
      [(SEL *)v16 duration];
      if (v27 <= 2.22044605e-16)
      {
LABEL_31:
        v32 = v39;
        if (WorkoutAlertSegment.gpsAvailable.getter())
        {
          v33 = MEMORY[0x277D7DAF8];
        }

        else
        {
          v33 = MEMORY[0x277D7DAF0];
        }

        v32(v24, *v33, v3);
        WorkoutAlertSegment.activityType.getter();
        swift_allocObject();
        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return v44;
      }

      v28 = [(SEL *)v16 distance];
      if (v28)
      {
        v29 = v28;
        v30 = [objc_opt_self() meterUnit];
        [v29 doubleValueForUnit_];

        [(SEL *)v16 duration];
        goto LABEL_31;
      }

      goto LABEL_41;
    }
  }

  else if (v22)
  {
    v39(v24, *MEMORY[0x277D7DB28], v3);
    swift_allocObject();
LABEL_28:
    WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
    MEMORY[0x20F30BCF0]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v44;
  }

  if (!v23)
  {
    return v18;
  }

  v39(v37, *MEMORY[0x277D7DB20], v3);
  v31 = WorkoutAlertSegment.segmentMarker.getter();
  a1 = [v31 activeEnergyBurn];

  if (a1)
  {
    [a1 _value];

    swift_allocObject();
    goto LABEL_28;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  MEMORY[0x20F30BC00](v2 + 12, 0x800000020CB9CD70);
  v41 = [a1 v16[461]];
  type metadata accessor for NLWorkoutAlertType(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static WorkoutNotification.unitsForRaceCompletion(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  WorkoutAlertRaceComplete.secondsAhead.getter();
  v8 = 0xD00000000000001BLL;
  if (v7 >= 0.0)
  {
    v8 = 0xD00000000000001ALL;
  }

  v14[1] = v8;
  if (v7 >= 0.0)
  {
    v9 = "RACE_METRIC_POSITION_BEHIND";
  }

  else
  {
    v9 = "artworkImageLoader";
  }

  v14[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20CB61A30;
  v11 = *(v1 + 104);
  v11(v6, *MEMORY[0x277D7DB38], v0);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v10 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v12 = *MEMORY[0x277D7DB48];
  v11(v3, v12, v0);
  WorkoutAlertRaceComplete.raceTime.getter();
  WorkoutAlertRaceComplete.didWinRace.getter();
  swift_allocObject();
  *(v10 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v11(v6, v12, v0);
  WorkoutAlertRaceComplete.secondsAhead.getter();
  swift_allocObject();
  *(v10 + 48) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v11(v6, *MEMORY[0x277D7DB28], v0);
  dispatch thunk of WorkoutAlertRace.alertTitleLocalizationKey()();
  swift_allocObject();
  *(v10 + 56) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v10;
}

uint64_t specialized static WorkoutNotification.unitsForRingCompletion(alert:)(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v13 = &selRef_setPointOfInterestFilter_;
  v14 = [a1 completedRing];
  if (!v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_20CB761F0;
    v15 = *MEMORY[0x277D7DB28];
    v16 = *(v3 + 104);
    v16(v5, v15, v2);
    v17 = [objc_opt_self() energyColors];
    if (v17)
    {
      v13 = v17;
      v27[0] = v16;
      v18 = [(SEL *)v17 nonGradientTextColor];

      if (v18)
      {
        UIColor.rgbHex()();

        type metadata accessor for WorkoutNotificationUnit();
        swift_allocObject();
        *(a1 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        v19 = v27[0];
        (v27[0])(v8, v15, v2);
        swift_allocObject();
        *(a1 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        v19(v8, v15, v2);
LABEL_9:
        swift_allocObject();
        *(a1 + 48) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        return a1;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v14 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_20CB761F0;
    v20 = *MEMORY[0x277D7DB28];
    v21 = *(v3 + 104);
    v21(v12, v20, v2);
    v22 = [objc_opt_self() briskColors];
    if (v22)
    {
      v13 = v22;
      v27[0] = v21;
      v23 = [(SEL *)v22 nonGradientTextColor];

      if (v23)
      {
        UIColor.rgbHex()();

        type metadata accessor for WorkoutNotificationUnit();
        swift_allocObject();
        *(a1 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        v24 = v27[0];
        (v27[0])(v8, v20, v2);
        swift_allocObject();
        *(a1 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        v24(v8, v20, v2);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_14:
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v28 = 0xD000000000000017;
  v29 = 0x800000020CB9CC10;
  v27[1] = [a1 v13[291]];
  type metadata accessor for NLSessionActivityRing(0);
  v26 = String.init<A>(describing:)();
  MEMORY[0x20F30BC00](v26);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static WorkoutNotification.unitsForPacerCompletion(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB61A30;
  v5 = *(v1 + 104);
  v5(v3, *MEMORY[0x277D7DB38], v0);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v4 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v5(v3, *MEMORY[0x277D7DB00], v0);
  dispatch thunk of WorkoutAlertPacer.finishTime.getter();
  swift_allocObject();
  *(v4 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v5(v3, *MEMORY[0x277D7DB40], v0);
  dispatch thunk of WorkoutAlertPacer.distanceGoalInMeters.getter();
  dispatch thunk of WorkoutAlertPacer.activityType.getter();
  swift_allocObject();
  *(v4 + 48) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v5(v3, *MEMORY[0x277D7DB28], v0);
  swift_allocObject();
  *(v4 + 56) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v4;
}

uint64_t specialized static WorkoutNotification.unitsForTimeMilestone(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB61A40;
  v5 = *(v1 + 104);
  v5(v3, *MEMORY[0x277D7DB28], v0);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v4 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v5(v3, *MEMORY[0x277D7DB00], v0);
  WorkoutAlertTimeSplit.elapsedTime.getter();
  swift_allocObject();
  *(v4 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v4;
}

uint64_t specialized static WorkoutNotification.unitsForZone(alert:)(void *a1)
{
  v2 = type metadata accessor for TargetZone.ZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v44 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v9 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [dispatch thunk of WorkoutAlertZone.targetZone.getter() primaryType];

  v42 = v3;
  if (v12 == 1)
  {
    v13 = 0xE400000000000000;
    v14 = 1162035536;
  }

  else if (v12 == 3)
  {
    v13 = 0xE500000000000000;
    v14 = 0x5245574F50;
  }

  else
  {
    if (v12 != 2)
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v46 = 0xD000000000000018;
      v47 = 0x800000020CB9CB40;
      v36 = [dispatch thunk of WorkoutAlertZone.targetZone.getter() primaryType];

      v45 = v36;
      type metadata accessor for WOTargetZonePrimaryType(0);
      v37 = String.init<A>(describing:)();
      MEMORY[0x20F30BC00](v37);

      goto LABEL_42;
    }

    v15 = dispatch thunk of WorkoutAlertZone.activityType.getter();
    v16 = [v15 effectiveTypeIdentifier];

    if (MEMORY[0x20F30D320](v16))
    {
      v13 = 0x800000020CB9CB80;
      v14 = 0xD000000000000011;
    }

    else
    {
      v13 = 0xEF474E494C435943;
      v14 = 0x5F45434E45444143;
    }
  }

  v17 = [a1 type];
  v43 = v2;
  v40 = v5;
  v41 = v13;
  if (v17 == 8)
  {
    dispatch thunk of WorkoutAlertZone.targetZone.getter();
    v20 = dispatch thunk of TargetZone.isSingleThreshold.getter();

    if (v20)
    {
      v19 = 0x5F45564F4241;
      goto LABEL_15;
    }

    v24 = 0x5F45564F4241;
  }

  else
  {
    if (v17 != 9)
    {
      if (v17 != 10)
      {
        v46 = 0;
        v47 = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        v46 = 0xD00000000000001DLL;
        v47 = 0x800000020CB9CB60;
        v45 = [a1 type];
        type metadata accessor for NLWorkoutAlertType(0);
        v38 = String.init<A>(describing:)();
        MEMORY[0x20F30BC00](v38);

        goto LABEL_42;
      }

      v21 = 0x525F4E4948544957;
      v22 = 1162300993;
      goto LABEL_18;
    }

    dispatch thunk of WorkoutAlertZone.targetZone.getter();
    v18 = dispatch thunk of TargetZone.isSingleThreshold.getter();

    if (v18)
    {
      v19 = 0x5F574F4C4542;
LABEL_15:
      v21 = v19 & 0xFFFFFFFFFFFFLL | 0x4154000000000000;
      v22 = 1413826386;
LABEL_18:
      v23 = v22 | 0xED00005F00000000;
      goto LABEL_22;
    }

    v24 = 0x5F574F4C4542;
  }

  v21 = v24 & 0xFFFFFFFFFFFFLL | 0x4152000000000000;
  v23 = 0xEC0000005F45474ELL;
LABEL_22:
  v46 = v21;
  v47 = v23;
  MEMORY[0x20F30BC00](v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20CB67B90;
  v26 = *(v9 + 104);
  v27 = v44;
  v26(v11, *MEMORY[0x277D7DB28], v44);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v25 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v45 = v25;
  dispatch thunk of WorkoutAlertZone.targetZone.getter();
  TargetZone.type.getter();

  v28 = (*(v42 + 88))(v8, v43);
  if (v28 == *MEMORY[0x277D7DE48])
  {

    v29 = *MEMORY[0x277D7DAD8];
    v30 = v11;
    v31 = v27;
  }

  else
  {
    if (v28 == *MEMORY[0x277D7DE40])
    {

      v32 = MEMORY[0x277D7DAD0];
    }

    else if (v28 == *MEMORY[0x277D7DE60])
    {

      v32 = MEMORY[0x277D7DAF8];
    }

    else if (v28 == *MEMORY[0x277D7DE70])
    {

      v32 = MEMORY[0x277D7DB30];
    }

    else if (v28 == *MEMORY[0x277D7DE58])
    {

      v32 = MEMORY[0x277D7DAE8];
    }

    else if (v28 == *MEMORY[0x277D7DE68])
    {

      v32 = MEMORY[0x277D7DB10];
    }

    else
    {
      if (v28 != *MEMORY[0x277D7DE50])
      {
        while (1)
        {
          v46 = 0;
          v47 = 0xE000000000000000;
          _StringGuts.grow(_:)(26);

          v46 = 0xD000000000000018;
          v47 = 0x800000020CB9CB40;
          dispatch thunk of WorkoutAlertZone.targetZone.getter();
          TargetZone.type.getter();

          v39 = String.init<A>(describing:)();
          MEMORY[0x20F30BC00](v39);

LABEL_42:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v32 = MEMORY[0x277D7DAE0];
    }

    v29 = *v32;
    v30 = v11;
    v31 = v44;
  }

  v26(v30, v29, v31);
  dispatch thunk of WorkoutAlertZone.alertValue.getter();
  dispatch thunk of WorkoutAlertZone.activityType.getter();
  swift_allocObject();
  v33 = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0](v33, v34);
  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v45;
}

uint64_t specialized static WorkoutNotification.unitsForLapMilestone(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of WorkoutAlertLapChange.lapDuration.getter();
  if (v4 > 2.22044605e-16)
  {
    dispatch thunk of WorkoutAlertLapChange.lapDistance.getter();
    dispatch thunk of WorkoutAlertLapChange.lapDuration.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20CB7AEF0;
  v6 = *(v1 + 104);
  v6(v3, *MEMORY[0x277D7DB08], v0);
  v9[1] = dispatch thunk of WorkoutAlertLapChange.lapNumber.getter();
  v9[2] = dispatch thunk of CustomStringConvertible.description.getter();
  v9[3] = v7;
  MEMORY[0x20F30BC00](0x656C637269632ELL, 0xE700000000000000);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v5 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v6(v3, *MEMORY[0x277D7DB38], v0);
  swift_allocObject();
  *(v5 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v6(v3, *MEMORY[0x277D7DB40], v0);
  dispatch thunk of WorkoutAlertLapChange.lapDistance.getter();
  WorkoutAlertLapChange.activityType.getter();
  swift_allocObject();
  *(v5 + 48) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v6(v3, *MEMORY[0x277D7DB18], v0);
  dispatch thunk of WorkoutAlertLapChange.lapDuration.getter();
  swift_allocObject();
  *(v5 + 56) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v6(v3, *MEMORY[0x277D7DAF8], v0);
  WorkoutAlertLapChange.activityType.getter();
  swift_allocObject();
  *(v5 + 64) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v5;
}

uint64_t specialized static WorkoutNotification.unitsForTranscript(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  TranscriptWorkoutAlert.title.getter();
  if (v4)
  {
    v5 = *(v1 + 104);
    v5(v3, *MEMORY[0x277D7DB38], v0);
    type metadata accessor for WorkoutNotificationUnit();
    swift_allocObject();
    WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
    MEMORY[0x20F30BCF0]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v5 = *(v1 + 104);
  }

  v5(v3, *MEMORY[0x277D7DB28], v0);
  TranscriptWorkoutAlert.message.getter();
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v8;
}

uint64_t specialized WorkoutNotification.init(alert:formattingManager:displayDuration:)(void *a1, double a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutNotification.NotificationType();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v74 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = *MEMORY[0x277D7DA20];
  v71 = v12;
  v72 = &v63 - v17;
  v18 = *(v12 + 104);
  v73 = v19;
  v18(v15);
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    v66 = v16;
    v64 = v3;
    v65 = v6;
    v69 = v10;
    v70 = v18;
    v63 = v4;
    v67 = v8;
    v68 = v7;
    type metadata accessor for WorkoutAlertHeartRateZone();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      specialized static WorkoutNotification.unitsForHeartRate(alert:)(v25);
      v24 = v71;
      v23 = v72;
      v22 = v73;
      (*(v71 + 8))(v72, v73);
      (v70)(v23, *MEMORY[0x277D7DA10], v22);
LABEL_7:
      v21 = v74;
      goto LABEL_10;
    }

    type metadata accessor for WorkoutAlertInterval();
    v26 = swift_dynamicCastClass();
    v27 = v70;
    if (v26)
    {
      v21 = v74;
      static WorkoutNotification.unitsAndTypeForInterval(alert:)(v74, v26);
      v24 = v71;
      v23 = v72;
      v22 = v73;
      (*(v71 + 8))(v72, v73);
      (*(v24 + 32))(v23, v21, v22);
      goto LABEL_10;
    }

    type metadata accessor for WorkoutAlertSegment();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      specialized static WorkoutNotification.unitsForMilestone(alert:)(v30);
      v24 = v71;
      v23 = v72;
      v22 = v73;
      (*(v71 + 8))(v72, v73);
      v31 = MEMORY[0x277D7DA28];
LABEL_15:
      (v27)(v23, *v31, v22);
      goto LABEL_7;
    }

    type metadata accessor for WorkoutAlertRaceComplete();
    if (swift_dynamicCastClass())
    {
      specialized static WorkoutNotification.unitsForRaceCompletion(alert:)();
      v24 = v71;
      v23 = v72;
      v22 = v73;
      (*(v71 + 8))(v72, v73);
      v31 = MEMORY[0x277D7D9F8];
      goto LABEL_15;
    }

    type metadata accessor for WorkoutAlertRace();
    if (swift_dynamicCastClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_20CB67B90;
      (*(v67 + 104))(v69, *MEMORY[0x277D7DB28], v68);
      dispatch thunk of WorkoutAlertRace.alertTitleLocalizationKey()();
      type metadata accessor for WorkoutNotificationUnit();
      swift_allocObject();
      *(v32 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
LABEL_18:
      v21 = v74;
      goto LABEL_4;
    }

    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      specialized static WorkoutNotification.unitsForRingCompletion(alert:)(v33);
      goto LABEL_3;
    }

    type metadata accessor for WorkoutAlertPacer();
    if (swift_dynamicCastClass())
    {
      specialized static WorkoutNotification.unitsForPacerCompletion(alert:)();
      v24 = v71;
      v23 = v72;
      v22 = v73;
      (*(v71 + 8))(v72, v73);
      v31 = MEMORY[0x277D7DA00];
      goto LABEL_15;
    }

    type metadata accessor for WorkoutAlertTimeSplit();
    if (swift_dynamicCastClass())
    {
      specialized static WorkoutNotification.unitsForTimeMilestone(alert:)();
      goto LABEL_3;
    }

    type metadata accessor for WorkoutAlertZone();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      specialized static WorkoutNotification.unitsForZone(alert:)(v34);
      v24 = v71;
      v23 = v72;
      v22 = v73;
      (*(v71 + 8))(v72, v73);
      v31 = MEMORY[0x277D7DA10];
      goto LABEL_15;
    }

    type metadata accessor for WorkoutAlertLapChange();
    if (swift_dynamicCastClass())
    {
      specialized static WorkoutNotification.unitsForLapMilestone(alert:)();
      v24 = v71;
      v23 = v72;
      v22 = v73;
      (*(v71 + 8))(v72, v73);
      v35 = MEMORY[0x277D7DA28];
    }

    else
    {
      type metadata accessor for WorkoutAlertTrackStatusChange();
      if (swift_dynamicCastClass())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_20CB67B90;
        (*(v67 + 104))(v69, *MEMORY[0x277D7DB28], v68);
        type metadata accessor for WorkoutNotificationUnit();
        swift_allocObject();
        *(v38 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        v24 = v71;
        v23 = v72;
        v22 = v73;
        (*(v71 + 8))(v72, v73);
        v37 = v23;
        v36 = v66;
        goto LABEL_32;
      }

      type metadata accessor for TranscriptWorkoutAlert();
      if (!swift_dynamicCastClass())
      {
        static WOLog.alerts.getter();
        v39 = a1;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v75 = v43;
          *v42 = 136315138;
          v44 = v39;
          v45 = [v44 description];
          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v47;

          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v75);

          *(v42 + 4) = v49;
          _os_log_impl(&dword_20C66F000, v40, v41, "Unhandled workout notification: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x20F30E080](v43, -1, -1);
          MEMORY[0x20F30E080](v42, -1, -1);
        }

        (*(v63 + 8))(v65, v64);
        [v39 type];
        v50 = NLWorkoutAlertTypeString();
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        v55 = specialized Collection.dropFirst(_:)(0x12uLL, v51, v53, v54);
        v57 = v56;
        v59 = v58;
        v61 = v60;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_20CB67B90;
        (*(v67 + 104))(v69, *MEMORY[0x277D7DB28], v68);
        MEMORY[0x20F30BBA0](v55, v57, v59, v61);

        type metadata accessor for WorkoutNotificationUnit();
        swift_allocObject();
        *(v62 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        goto LABEL_18;
      }

      specialized static WorkoutNotification.unitsForTranscript(alert:)();
      v24 = v71;
      v23 = v72;
      v22 = v73;
      (*(v71 + 8))(v72, v73);
      v35 = MEMORY[0x277D7D9F0];
    }

    v36 = *v35;
    v37 = v23;
LABEL_32:
    (v70)(v37, v36, v22);
    v21 = v74;
    goto LABEL_10;
  }

  specialized static WorkoutNotification.unitsForGoalProgress(alert:)(v20);
LABEL_3:
  v21 = v74;
LABEL_4:
  v23 = v72;
  v22 = v73;
  v24 = v71;
LABEL_10:
  (*(v24 + 16))(v21, v23, v22);
  v28 = dispatch thunk of WorkoutNotification.__allocating_init(units:notificationType:displayDuration:)();
  (*(v24 + 8))(v23, v22);
  return v28;
}

uint64_t outlined destroy of CompletedWorkoutStep?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd, &_s11WorkoutCore09CompletedA4StepVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TrainingLoadBand.color.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Band = type metadata accessor for TrainingLoadBand();
  v7 = *(Band - 8);
  v8 = MEMORY[0x28223BE20](Band);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, Band, v8);
  v11 = (*(v7 + 88))(v10, Band);
  if (v11 == *MEMORY[0x277D0FE98] || v11 == *MEMORY[0x277D0FE88] || v11 == *MEMORY[0x277D0FE78] || v11 == *MEMORY[0x277D0FE80] || v11 == *MEMORY[0x277D0FE90])
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
    return Color.init(_:red:green:blue:opacity:)();
  }

  else
  {
    v13 = static Color.clear.getter();
    (*(v7 + 8))(v10, Band);
    return v13;
  }
}

uint64_t TrainingLoadBand.background.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Band = type metadata accessor for TrainingLoadBand();
  v7 = *(Band - 8);
  v8 = MEMORY[0x28223BE20](Band);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, Band, v8);
  v11 = (*(v7 + 88))(v10, Band);
  if (v11 == *MEMORY[0x277D0FE98] || v11 == *MEMORY[0x277D0FE88] || v11 == *MEMORY[0x277D0FE78] || v11 == *MEMORY[0x277D0FE80] || v11 == *MEMORY[0x277D0FE90])
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
    return Color.init(_:red:green:blue:opacity:)();
  }

  else
  {
    v13 = static Color.clear.getter();
    (*(v7 + 8))(v10, Band);
    return v13;
  }
}

__n128 TrainingLoadBand.layeredBackground.getter@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20CB5DA80;
  v3 = objc_opt_self();
  v4 = [v3 secondarySystemBackgroundColor];
  Color.init(uiColor:)();
  v5 = Color.opacity(_:)();

  *(v2 + 32) = v5;
  v6 = [v3 secondarySystemBackgroundColor];
  Color.init(uiColor:)();
  v7 = Color.opacity(_:)();

  *(v2 + 40) = v7;
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  MEMORY[0x20F30B340](v2);
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v8 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CB5EA80;
  TrainingLoadBand.background.getter();
  Color.opacity(_:)();

  *(v9 + 32) = Gradient.Stop.init(color:location:)();
  *(v9 + 40) = v10;
  TrainingLoadBand.background.getter();
  Color.opacity(_:)();

  *(v9 + 48) = Gradient.Stop.init(color:location:)();
  *(v9 + 56) = v11;
  TrainingLoadBand.background.getter();
  Color.opacity(_:)();

  *(v9 + 64) = Gradient.Stop.init(color:location:)();
  *(v9 + 72) = v12;
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(stops:)();
  v18 = v23;
  v19 = v22;
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v13 = v24;
  *a1 = static Alignment.center.getter();
  *(a1 + 8) = v14;
  v16 = v26;
  v17 = v25;
  outlined init with copy of LinearGradient(&v21, v20);
  outlined init with copy of LinearGradient(&v24, v20);
  outlined destroy of LinearGradient(&v24);
  outlined destroy of LinearGradient(&v21);
  *(a1 + 16) = v8;
  *(a1 + 40) = v18;
  *(a1 + 24) = v19;
  *(a1 + 56) = v13;
  result = v17;
  *(a1 + 64) = v17;
  *(a1 + 80) = v16;
  return result;
}

uint64_t TrainingLoadBand.localizedDescription.getter()
{
  v1 = v0;
  Band = type metadata accessor for TrainingLoadBand();
  v3 = *(Band - 8);
  v4 = MEMORY[0x28223BE20](Band);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, Band, v4);
  v7 = (*(v3 + 88))(v6, Band);
  if (v7 != *MEMORY[0x277D0FE98])
  {
    if (v7 == *MEMORY[0x277D0FE88])
    {
      v15 = "LOAD_ASSESSMENT_CATEGORY_DESCRIPTION_BELOW";
    }

    else
    {
      if (v7 == *MEMORY[0x277D0FE78])
      {
        v8 = "LOAD_ASSESSMENT_CATEGORY_DESCRIPTION_CONSISTENT";
        goto LABEL_3;
      }

      if (v7 != *MEMORY[0x277D0FE80])
      {
        if (v7 != *MEMORY[0x277D0FE90])
        {
          (*(v3 + 8))(v6, Band);
          return 0;
        }

        v8 = "LOAD_ASSESSMENT_CATEGORY_DESCRIPTION_WELL_ABOVE";
        goto LABEL_3;
      }

      v15 = "LOAD_ASSESSMENT_CATEGORY_DESCRIPTION_ABOVE";
    }

    v16 = v15 - 32;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v14 = 0xD00000000000002ALL;
    v21 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v13 = v16 | 0x8000000000000000;
    goto LABEL_11;
  }

  v8 = "LOAD_ASSESSMENT_CATEGORY_DESCRIPTION_WELL_BELOW";
LABEL_3:
  v9 = v8 - 32;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = WorkoutUIBundle.super.isa;
  v21 = 0xE000000000000000;
  v11 = 0x617A696C61636F4CLL;
  v12 = 0xEB00000000656C62;
  v13 = v9 | 0x8000000000000000;
  v14 = 0xD00000000000002FLL;
LABEL_11:
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, *&v11, v10, v17, *(&v21 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA14LinearGradientVGG_AOtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA14LinearGradientVGG_AOtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>> and conformance ZStack<A>);
  }

  return result;
}

void SessionControlsExpandCollapseButton.init(controlsState:)(uint64_t a2@<X8>)
{
  type metadata accessor for SessionControlsState(0);
  _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState, &protocol conformance descriptor for SessionControlsState);
  Bindable<A>.init(wrappedValue:)();
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = specialized UIDevice.screenType.getter();

  v6 = dbl_20CB7B0B0[v5];
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = [v7 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  if (v10 != v13)
  {
    v14 = [v7 mainScreen];
    [v14 scale];
    v16 = v15;

    v17 = [v7 mainScreen];
    [v17 nativeScale];
    v19 = v18;

    v6 = v6 * (v16 / v19 * 0.95);
  }

  v20 = type metadata accessor for SessionControlsExpandCollapseButton(0);
  *(a2 + *(v20 + 20)) = v6;
  v21 = [v3 currentDevice];
  v22 = specialized UIDevice.screenType.getter();

  v23 = dbl_20CB7B108[v22];
  v24 = [v7 mainScreen];
  [v24 scale];
  v26 = v25;

  v27 = [v7 mainScreen];
  [v27 nativeScale];
  v29 = v28;

  if (v26 != v29)
  {
    v30 = [v7 mainScreen];
    [v30 scale];
    v32 = v31;

    v33 = [v7 mainScreen];
    [v33 nativeScale];
    v35 = v34;

    v23 = v23 * (v32 / v35 * 0.95);
  }

  *(a2 + *(v20 + 24)) = v23;
}

uint64_t SessionControlsExpandCollapseButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for SessionControlsExpandCollapseButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMR);
  MEMORY[0x28223BE20](v31);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  outlined init with copy of SessionControlsExpandCollapseButton(v1, &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  outlined init with take of SessionControlsExpandCollapseButton(&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v33 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyANyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGAA15_RotationEffectVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyANyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGAA15_RotationEffectVGtGGMR);
  lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyANyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGAA15_RotationEffectVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyANyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGAA15_RotationEffectVGtGGMR, MEMORY[0x277CE11A8]);
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = &v7[*(v5 + 36)];
  v16 = v37;
  *v15 = v36;
  *(v15 + 1) = v16;
  *(v15 + 2) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMd, &_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMR);
  Bindable.wrappedValue.getter();
  v17 = v35;
  swift_getKeyPath();
  v35 = v17;
  _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState, &protocol conformance descriptor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v18 = *(v17 + 16);

  if (v18 == 1)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    v19 = "AX_HIDE_CONTROLS";
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    v19 = "AX_SHOW_CONTROLS";
  }

  v20 = v19 - 32;
  swift_beginAccess();
  v21 = WorkoutUIBundle.super.isa;
  v39._object = 0xE000000000000000;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._object = (v20 | 0x8000000000000000);
  v23._countAndFlagsBits = 0xD000000000000010;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v39);

  v34 = v25;
  lazy protocol witness table accessor for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v7, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGMR);
  Bindable.wrappedValue.getter();
  countAndFlagsBits = v34._countAndFlagsBits;
  swift_getKeyPath();
  v34._countAndFlagsBits = countAndFlagsBits;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  LODWORD(v20) = *(countAndFlagsBits + 16);

  if (v20 == 1)
  {
    if (one-time initialization token for collapseControls == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (one-time initialization token for expandControls != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_12:

  ModifiedContent<>.accessibilityIdentifier(_:)();

  outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v9, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMR);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGAA01_di4KindP0VyAMGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGAA01_di4KindP0VyAMGGMR);
  v28 = v32;
  v29 = (v32 + *(v27 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
  static ContentShapeKinds.accessibility.getter();
  *v29 = 0;
  return outlined init with take of ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>(v12, v28);
}

double closure #1 in SessionControlsExpandCollapseButton.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMd, &_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMR);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState, &protocol conformance descriptor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  *(v1 + 16) = (*(v1 + 16) & 1) == 0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

uint64_t closure #2 in SessionControlsExpandCollapseButton.body.getter@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA06_ShapeD0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyARyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA4FontVSgGGAA15_RotationEffectVGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA06_ShapeD0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyARyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA4FontVSgGGAA15_RotationEffectVGtGGMR);
  return closure #1 in closure #2 in SessionControlsExpandCollapseButton.body.getter(a2 + *(v4 + 44));
}

uint64_t closure #1 in closure #2 in SessionControlsExpandCollapseButton.body.getter@<X0>(uint64_t a2@<X8>)
{
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  if (one-time initialization token for buttonBackground != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Material();
  v12 = __swift_project_value_buffer(v11, static SessionViewColors.buttonBackground);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  *&v10[*(v5 + 56)] = 256;
  v13 = Image.init(systemName:)();
  v14 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  type metadata accessor for SessionControlsExpandCollapseButton(0);
  static Font.Weight.semibold.getter();
  v16 = type metadata accessor for Font.Design();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v4, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMd, &_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMR);
  Bindable.wrappedValue.getter();
  v19 = v37[0];
  swift_getKeyPath();
  v37[0] = v19;
  _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState, &protocol conformance descriptor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v20 = *(v19 + 16);

  if (v20)
  {
    v21 = 3.14159265;
  }

  else
  {
    v21 = 0.0;
  }

  static UnitPoint.center.getter();
  v23 = v22;
  v25 = v24;
  _s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGWOcTm_0(v10, v7, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMR);
  v26 = v32;
  _s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGWOcTm_0(v7, v32, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMR);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANyAA4FontVSgGGAA15_RotationEffectVGtMd, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANyAA4FontVSgGGAA15_RotationEffectVGtMR) + 48));
  *&v33 = v13;
  *(&v33 + 1) = KeyPath;
  *&v34 = v14;
  *(&v34 + 1) = v18;
  *&v35 = v17;
  *(&v35 + 1) = v21;
  *&v36 = v23;
  *(&v36 + 1) = v25;
  v28 = v34;
  *v27 = v33;
  v27[1] = v28;
  v29 = v36;
  v27[2] = v35;
  v27[3] = v29;
  _s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGWOcTm_0(&v33, v37, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA15_RotationEffectVGMR);
  outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v10, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMR);
  v37[0] = v13;
  v37[1] = KeyPath;
  v37[2] = v14;
  v37[3] = v18;
  v37[4] = v17;
  *&v37[5] = v21;
  v37[6] = v23;
  v37[7] = v25;
  outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v37, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA15_RotationEffectVGMR);
  return outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v7, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMR);
}

uint64_t type metadata accessor for SessionControlsExpandCollapseButton(uint64_t a1)
{
  result = type metadata singleton initialization cache for SessionControlsExpandCollapseButton;
  if (!type metadata singleton initialization cache for SessionControlsExpandCollapseButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SessionControlsExpandCollapseButton(uint64_t a1)
{
  type metadata accessor for Bindable<SessionControlsState>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Bindable<SessionControlsState>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Bindable<SessionControlsState>)
  {
    type metadata accessor for SessionControlsState(255);
    v1 = type metadata accessor for Bindable();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Bindable<SessionControlsState>);
    }
  }
}

uint64_t outlined init with take of SessionControlsExpandCollapseButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionControlsExpandCollapseButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in SessionControlsExpandCollapseButton.body.getter()
{
  type metadata accessor for SessionControlsExpandCollapseButton(0);

  return closure #1 in SessionControlsExpandCollapseButton.body.getter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGMd, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGMR, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGAA01_di4KindP0VyAMGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGAA01_di4KindP0VyAMGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MoveRingDetailView.init(activityRing:isWheelchairUser:formattingManager:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ActivityMoveRing();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for MoveRingDetailView(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for MoveRingDetailView(uint64_t a1)
{
  result = type metadata singleton initialization cache for MoveRingDetailView;
  if (!type metadata singleton initialization cache for MoveRingDetailView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MoveRingDetailView.body.getter(double *a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = type metadata accessor for ActivityRing();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v79 - v8;
  ActivityMoveRing.ring.getter();
  ActivityRing.value.getter();
  v11 = v10;
  v79 = *(v4 + 8);
  v79(v9, v3);
  v12 = ActivityMoveRing.moveMode.getter();
  v14 = v13;
  v82 = v12;
  v83 = v13;
  v16 = v15 & 1;
  v84 = v15 & 1;
  v81 = 1;
  lazy protocol witness table accessor for type ActivityMoveMode and conformance ActivityMoveMode();
  lazy protocol witness table accessor for type ActivityMoveMode and conformance ActivityMoveMode();
  v17 = static PortableEnum<>.== infix(_:_:)();
  outlined consume of PortableEnum<ActivityMoveMode>(v12, v14, v16);
  if ((v17 & 1) == 0)
  {
    [*(v2 + *(type metadata accessor for MoveRingDetailView(0) + 24)) energyBurnedInUserUnitForCalories_];
    v11 = v18;
  }

  ActivityMoveRing.ring.getter();
  ActivityRing.goal.getter();
  v20 = v19;
  v79(v6, v3);
  v21 = ActivityMoveRing.moveMode.getter();
  v23 = v22;
  v82 = v21;
  v83 = v22;
  v25 = v24 & 1;
  v84 = v24 & 1;
  v81 = 1;
  v26 = static PortableEnum<>.== infix(_:_:)();
  outlined consume of PortableEnum<ActivityMoveMode>(v21, v23, v25);
  if ((v26 & 1) == 0)
  {
    [*(v2 + *(type metadata accessor for MoveRingDetailView(0) + 24)) energyBurnedInUserUnitForCalories_];
    v20 = v27;
  }

  v28 = *(v2 + *(type metadata accessor for MoveRingDetailView(0) + 20));
  KeyPath = swift_getKeyPath();
  LOBYTE(v82) = 0;
  v30 = objc_opt_self();
  v31 = [v30 currentDevice];
  v32 = specialized UIDevice.screenType.getter();

  v33 = dbl_20CB7B1F8[v32];
  v34 = objc_opt_self();
  v35 = [v34 mainScreen];
  [v35 scale];
  v37 = v36;

  v38 = [v34 mainScreen];
  [v38 nativeScale];
  v40 = v39;

  if (v37 != v40)
  {
    v41 = [v34 mainScreen];
    [v41 scale];
    v43 = v42;

    v44 = [v34 mainScreen];
    [v44 nativeScale];
    v46 = v45;

    v33 = v33 * (v43 / v46 * 0.95);
  }

  v47 = [v30 currentDevice];
  v48 = specialized UIDevice.screenType.getter();

  v49 = dbl_20CB7B250[v48];
  v50 = [v34 mainScreen];
  [v50 scale];
  v52 = v51;

  v53 = [v34 mainScreen];
  [v53 nativeScale];
  v55 = v54;

  if (v52 != v55)
  {
    v56 = [v34 mainScreen];
    [v56 scale];
    v58 = v57;

    v59 = [v34 mainScreen];
    [v59 nativeScale];
    v61 = v60;

    v49 = v49 * (v58 / v61 * 0.95);
  }

  v62 = [v30 currentDevice];
  v63 = specialized UIDevice.screenType.getter();

  v64 = dbl_20CB7B2A8[v63];
  v65 = [v34 mainScreen];
  [v65 scale];
  v67 = v66;

  v68 = [v34 mainScreen];
  [v68 nativeScale];
  v70 = v69;

  if (v67 != v70)
  {
    v71 = [v34 mainScreen];
    [v71 scale];
    v73 = v72;

    v74 = [v34 mainScreen];
    [v74 nativeScale];
    v76 = v75;

    v64 = v64 * (v73 / v76 * 0.95);
  }

  v77 = v82;
  v78 = v80;
  *v80 = 2;
  v78[1] = v11;
  v78[2] = v20;
  *(v78 + 24) = v28;
  *(v78 + 4) = KeyPath;
  *(v78 + 40) = v77;
  v78[6] = v33;
  v78[7] = v49;
  v78[8] = v64;
}

unint64_t lazy protocol witness table accessor for type ActivityMoveMode and conformance ActivityMoveMode()
{
  result = lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode);
  }

  return result;
}

double outlined consume of PortableEnum<ActivityMoveMode>(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t type metadata completion function for MoveRingDetailView(uint64_t a1)
{
  result = type metadata accessor for ActivityMoveRing();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FIUIFormattingManager();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t EmbeddedGoalConfigurationView.init(goalConfiguration:formattingManager:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EmbeddedGoalConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v32 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeL0VGGAA022_EnvironmentKeyWritingM0VyAA03AnyoL0VSgGGACyAA6VStackVyAA05TupleI0VyAA4TextV_A_tGGAPyAA0V9AlignmentOGGGAPyAA012ButtonBorderO0VGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeL0VGGAA022_EnvironmentKeyWritingM0VyAA03AnyoL0VSgGGACyAA6VStackVyAA05TupleI0VyAA4TextV_A_tGGAPyAA0V9AlignmentOGGGAPyAA012ButtonBorderO0VGGMR);
  MEMORY[0x28223BE20](v6);
  v8 = (&v30 - v7);
  v9 = *v1;
  v10 = v2[1];
  v11 = static VerticalAlignment.center.getter();
  WorkoutConfiguration.displaySymbolName.getter();
  v12 = Image.init(_internalSystemName:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMR);
  TintShapeStyle.init()();
  *v8 = v12;
  WorkoutConfiguration.displayColor.getter();
  v13 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  *&v35[0] = v13;
  v15 = AnyShapeStyle.init<A>(_:)();
  v16 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGAA022_EnvironmentKeyWritingH0VyAA03AnyjG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGAA022_EnvironmentKeyWritingH0VyAA03AnyjG0VSgGGMR) + 36));
  *v16 = KeyPath;
  v16[1] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD022_EnvironmentKeyWritingM0VyAD03AnyoL0VSgGGAFyAD6VStackVyAD05TupleG0VyAD4TextV_A_tGGAPyAD0V9AlignmentOGGGMd, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD022_EnvironmentKeyWritingM0VyAD03AnyoL0VSgGGAFyAD6VStackVyAD05TupleG0VyAD4TextV_A_tGGAPyAD0V9AlignmentOGGGMR);
  v18 = v8 + v17[13];
  v19 = static HorizontalAlignment.leading.getter();
  v34 = 1;
  closure #1 in closure #2 in EmbeddedGoalConfigurationView.body.getter(v9, v10, v35);
  *&v33[7] = v35[0];
  *&v33[23] = v35[1];
  *&v33[39] = v35[2];
  *&v33[55] = v35[3];
  LOBYTE(v9) = v34;
  v20 = swift_getKeyPath();
  v21 = *v33;
  *(v18 + 33) = *&v33[16];
  v22 = *&v33[48];
  *(v18 + 49) = *&v33[32];
  *(v18 + 65) = v22;
  *v18 = v19;
  *(v18 + 1) = 0;
  v18[16] = v9;
  v23 = *&v33[63];
  *(v18 + 17) = v21;
  *(v18 + 10) = v23;
  *(v18 + 11) = v20;
  v18[96] = 0;
  *(v8 + v17[14]) = 0x4022000000000000;
  *(v8 + v17[15]) = v11;
  v24 = (v8 + *(v6 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMR);
  static ButtonBorderShape.roundedRectangle.getter();
  *v24 = swift_getKeyPath();
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
  v25 = v31;
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v32);
  outlined destroy of ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>(v8);
  v26 = static Color.white.getter();
  v27 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeR0VGGAA022_EnvironmentKeyWritingS0VyAA03AnyuR0VSgGGACyAA6VStackVyAA05TupleE0VyAA4TextV_A5_tGGAVyAA13TextAlignmentOGGGAVyAA012ButtonBorderU0VGG_Qo_AVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeR0VGGAA022_EnvironmentKeyWritingS0VyAA03AnyuR0VSgGGACyAA6VStackVyAA05TupleE0VyAA4TextV_A5_tGGAVyAA13TextAlignmentOGGGAVyAA012ButtonBorderU0VGG_Qo_AVyAA5ColorVSgGGMR);
  v29 = (v25 + *(result + 36));
  *v29 = v27;
  v29[1] = v26;
  return result;
}

double closure #1 in closure #2 in EmbeddedGoalConfigurationView.body.getter@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    v7 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v8 = [v7 localizedName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = a1;
    v9 = GoalWorkoutConfiguration.goal.getter();
    v10 = [v9 goalTypeIdentifier];

    _HKWorkoutGoalType.displayNameShort(formattingManager:)(a2, v10);
  }

  lazy protocol witness table accessor for type String and conformance String();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.body.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v16 = Text.font(_:)();
  v40 = v17;
  v41 = v16;
  v39 = v18;
  v42 = v19;

  outlined consume of Text.Storage(v11, v13, v15 & 1);

  v20 = GoalWorkoutConfiguration.goal.getter();
  v21 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  FIUIDistanceTypeForActivityType();

  NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  static Color.secondary.getter();
  v27 = Text.foregroundColor(_:)();
  v29 = v28;
  v31 = v30;

  outlined consume of Text.Storage(v22, v24, v26 & 1);

  static Font.body.getter();
  static Font.Weight.light.getter();
  Font.weight(_:)();

  Font.lowercaseSmallCaps()();

  v32 = Text.font(_:)();
  v34 = v33;
  LOBYTE(v24) = v35;
  v37 = v36;

  outlined consume of Text.Storage(v27, v29, v31 & 1);

  *a3 = v41;
  *(a3 + 8) = v40;
  *(a3 + 16) = v39 & 1;
  *(a3 + 24) = v42;
  *(a3 + 32) = v32;
  *(a3 + 40) = v34;
  *(a3 + 48) = v24 & 1;
  *(a3 + 56) = v37;
  outlined copy of Text.Storage(v41, v40, v39 & 1);

  outlined copy of Text.Storage(v32, v34, v24 & 1);

  outlined consume of Text.Storage(v32, v34, v24 & 1);

  outlined consume of Text.Storage(v41, v40, v39 & 1);

  return result;
}

uint64_t getEnumTagSinglePayload for EmbeddedGoalConfigurationView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for EmbeddedGoalConfigurationView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t TrainingLoadOnboardingCore.init(imageName:title:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for TrainingLoadOnboardingCore(0) + 24);
  v9 = type metadata accessor for AttributedString();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t type metadata accessor for TrainingLoadOnboardingCore(uint64_t a1)
{
  result = type metadata singleton initialization cache for TrainingLoadOnboardingCore;
  if (!type metadata singleton initialization cache for TrainingLoadOnboardingCore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TrainingLoadOnboardingCore.imageName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TrainingLoadOnboardingCore.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TrainingLoadOnboardingCore.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TrainingLoadOnboardingCore(0) + 24);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrainingLoadOnboardingCore.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMR);
  MEMORY[0x28223BE20](v46);
  v47 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v43 - v13;
  v44 = v1;
  v14 = one-time initialization token for WorkoutUIBundle;

  if (v14 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = WorkoutUIBundle.super.isa;
  Image.init(_:bundle:)();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v16 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v59 = 1;
  *&v58[6] = v62[0];
  *&v58[22] = v62[1];
  *&v58[38] = v62[2];
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v60 = 0;
  v26 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(&v49[2] + 2) = *v58;
  *(&v49[4] + 2) = *&v58[16];
  *(&v49[6] + 2) = *&v58[32];
  *&v49[15] = v53;
  *&v49[17] = v54;
  *&v49[19] = v55;
  *&v49[21] = v56;
  *&v49[9] = v50;
  *&v49[11] = v51;
  v61 = 0;
  v49[0] = v16;
  v49[1] = 0;
  LOWORD(v49[2]) = 1;
  v49[8] = *&v58[46];
  *&v49[13] = v52;
  LOBYTE(v49[23]) = v17;
  v49[24] = v19;
  v49[25] = v21;
  v49[26] = v23;
  v49[27] = v25;
  LOBYTE(v49[28]) = 0;
  LOBYTE(v49[29]) = v26;
  v49[30] = v27;
  v49[31] = v28;
  v49[32] = v29;
  v49[33] = v30;
  LOBYTE(v49[34]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  v31 = v43;
  View.accessibilityHidden(_:)();
  memcpy(v57, v49, 0x111uLL);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v57, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGMR);
  closure #1 in TrainingLoadOnboardingCore.body.getter(v44, v5);
  v32 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v33 = v45;
  v34 = &v5[*(v46 + 36)];
  *v34 = v32;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v31, v33, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMR);
  v39 = v47;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v5, v47, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMR);
  v40 = v48;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v33, v48, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMR);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVG_ACyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA022_EnvironmentKeyWritingN0VyAA0R9AlignmentOGGAPGATG_A5_tGGAPGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVG_ACyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA022_EnvironmentKeyWritingN0VyAA0R9AlignmentOGGAPGATG_A5_tGGAPGtMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v39, v40 + *(v41 + 48), &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v5, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v31, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v39, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMR);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v33, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in TrainingLoadOnboardingCore.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v81 = type metadata accessor for AttributedString();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for AccessibilityTraits();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font.Leading();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMR);
  MEMORY[0x28223BE20](v9 - 8);
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v68 - v12;
  v76 = a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  *&v92[0] = v13;
  *(&v92[0] + 1) = v14;
  lazy protocol witness table accessor for type String and conformance String();

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.largeTitle.getter();
  v75 = *MEMORY[0x277CE0A10];
  v20 = *(v6 + 104);
  v73 = v6 + 104;
  v74 = v20;
  v69 = v5;
  v20(v8);
  Font.leading(_:)();

  v21 = *(v6 + 8);
  v71 = v6 + 8;
  v72 = v21;
  v21(v8, v5);
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  outlined consume of Text.Storage(v15, v17, v19 & 1);

  v27 = Text.bold()();
  v29 = v28;
  LOBYTE(v17) = v30;
  outlined consume of Text.Storage(v22, v24, v26 & 1);

  LODWORD(v92[0]) = static HierarchicalShapeStyle.primary.getter();
  v31 = Text.foregroundStyle<A>(_:)();
  v33 = v32;
  LOBYTE(v24) = v34;
  v36 = v35;
  outlined consume of Text.Storage(v27, v29, v17 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v29) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v91 = v24 & 1;
  v90 = 0;
  *&v85 = v31;
  *(&v85 + 1) = v33;
  LOBYTE(v86) = v24 & 1;
  *(&v86 + 1) = v36;
  *&v87 = KeyPath;
  BYTE8(v87) = 1;
  LOBYTE(v88) = v29;
  *(&v88 + 1) = v38;
  *v89 = v39;
  *&v89[8] = v40;
  *&v89[16] = v41;
  v89[24] = 0;
  v42 = v70;
  static AccessibilityTraits.isHeader.getter();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMR);
  v44 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  MEMORY[0x20F30A9C0](v42, v43, v44);
  (*(v77 + 8))(v42, v78);
  v92[2] = v87;
  v92[3] = v88;
  *v93 = *v89;
  *&v93[9] = *&v89[9];
  v92[0] = v85;
  v92[1] = v86;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v92, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMR);
  OnboardingCore = type metadata accessor for TrainingLoadOnboardingCore(0);
  (*(v80 + 16))(v79, v76 + *(OnboardingCore + 24), v81);
  v46 = Text.init(_:)();
  v48 = v47;
  LOBYTE(v43) = v49;
  static Font.body.getter();
  v50 = v69;
  v74(v8, v75, v69);
  Font.leading(_:)();

  v72(v8, v50);
  v51 = Text.font(_:)();
  v53 = v52;
  LOBYTE(v36) = v54;

  outlined consume of Text.Storage(v46, v48, v43 & 1);

  v55 = [objc_opt_self() secondaryLabelColor];
  *&v85 = Color.init(uiColor:)();
  v56 = Text.foregroundStyle<A>(_:)();
  v58 = v57;
  LOBYTE(v42) = v59;
  v61 = v60;
  outlined consume of Text.Storage(v51, v53, v36 & 1);

  v62 = swift_getKeyPath();
  v63 = v84;
  v64 = v82;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v84, v82, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMR);
  v65 = v83;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v64, v83, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMR);
  v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VG_AKtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VG_AKtMR) + 48);
  *v66 = v56;
  *(v66 + 8) = v58;
  *(v66 + 16) = v42 & 1;
  *(v66 + 24) = v61;
  *(v66 + 32) = v62;
  *(v66 + 40) = 1;
  outlined copy of Text.Storage(v56, v58, v42 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v63, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMR);
  outlined consume of Text.Storage(v56, v58, v42 & 1);

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v64, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMR);
}

uint64_t type metadata completion function for TrainingLoadOnboardingCore(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, _PaddingLayout>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for WorkoutDisclaimerSheet(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutDisclaimerSheet;
  if (!type metadata singleton initialization cache for WorkoutDisclaimerSheet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutDisclaimerSheet(uint64_t a1)
{
  type metadata accessor for Binding<FIUIWorkoutActivityType?>(319, &lazy cache variable for type metadata for Binding<FIUIWorkoutActivityType?>, &_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for WOCompoundActivityTypesProviding();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Binding<FIUIWorkoutActivityType?>(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Environment<DismissAction>(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for WOCompoundActivityTypesProviding()
{
  result = lazy cache variable for type metadata for WOCompoundActivityTypesProviding;
  if (!lazy cache variable for type metadata for WOCompoundActivityTypesProviding)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for WOCompoundActivityTypesProviding);
  }

  return result;
}

void type metadata accessor for Binding<FIUIWorkoutActivityType?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double WorkoutDisclaimerSheet.body(content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v16[1] = a2;
  v16[2] = a1;
  v4 = type metadata accessor for WorkoutDisclaimerSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of WorkoutDisclaimerSheet(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = *(v5 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v7;
  *(v10 + 24) = v11;
  outlined init with take of WorkoutDisclaimerSheet(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  outlined init with copy of WorkoutDisclaimerSheet(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  outlined init with take of WorkoutDisclaimerSheet(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v9);
  Binding.init(get:set:)();
  outlined init with copy of WorkoutDisclaimerSheet(v3, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  outlined init with take of WorkoutDisclaimerSheet(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + ((v8 + 16) & ~v8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F15DisclaimerSheetVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F15DisclaimerSheetVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVSgAA08ModifiedJ0VyAA5ImageVAK18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAqA6ButtonVyAQGG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA2_yAA013DefaultButtonM0VGGQo_Qo_GMd, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVSgAA08ModifiedJ0VyAA5ImageVAK18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAqA6ButtonVyAQGG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA2_yAA013DefaultButtonM0VGGQo_Qo_GMR);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F15DisclaimerSheetVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F15DisclaimerSheetVGMR, MEMORY[0x277CE04B0]);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVSgAA08ModifiedJ0VyAA5ImageVAK18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAqA6ButtonVyAQGG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA2_yAA013DefaultButtonM0VGGQo_Qo_GMd, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVSgAA08ModifiedJ0VyAA5ImageVAK18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAqA6ButtonVyAQGG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA2_yAA013DefaultButtonM0VGGQo_Qo_GMR, MEMORY[0x277CDDA18]);
  View.sheet<A>(isPresented:onDismiss:content:)();

  return result;
}

void closure #1 in WorkoutDisclaimerSheet.body(content:)(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 2);
  v7 = *a1;
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMR);
  MEMORY[0x20F30B100](&v6, v4);
  v5 = v6;
  if (v6)
  {
  }

  *a2 = v5 != 0;
}

_BYTE *closure #2 in WorkoutDisclaimerSheet.body(content:)(_BYTE *result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMR);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t closure #3 in WorkoutDisclaimerSheet.body(content:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00h10DisclaimerC0VyAA5LabelVyAA4TextVSgAA08ModifiedG0VyAA5ImageVAG18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAmA6ButtonVyAMGG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAZyAA07DefaultxJ0VGGQo_Qo_Md, &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00h10DisclaimerC0VyAA5LabelVyAA4TextVSgAA08ModifiedG0VyAA5ImageVAG18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAmA6ButtonVyAMGG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAZyAA07DefaultxJ0VGGQo_Qo_MR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMd, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_MR);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type WorkoutDisclaimerView<Label<Text?, ModifiedContent<Image, CircleActivityIcon>?>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMd, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMR, &protocol conformance descriptor for WorkoutDisclaimerView<A, B, C>);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for WorkoutDisclaimerSheet(0);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMd, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMR);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v23 = a1;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd, &_s7SwiftUI4TextVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgMR);
  lazy protocol witness table accessor for type Text? and conformance <A> A?();
  lazy protocol witness table accessor for type ModifiedContent<Image, CircleActivityIcon>? and conformance <A> A?();
  Label.init(title:icon:)();
  v18[1] = v5;
  v8 = &v7[*(v5 + 68)];
  v9 = *(a1 + 48);
  v24 = *(a1 + 40);
  v25 = v9;
  lazy protocol witness table accessor for type String and conformance String();

  *v8 = Text.init<A>(_:)();
  *(v8 + 1) = v10;
  v8[16] = v11 & 1;
  *(v8 + 3) = v12;
  LocalizedStringKey.init(stringLiteral:)();
  outlined init with copy of WorkoutDisclaimerSheet(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v14 = swift_allocObject();
  outlined init with take of WorkoutDisclaimerSheet(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  Button<>.init(_:action:)();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_MR);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type WorkoutDisclaimerView<Label<Text?, ModifiedContent<Image, CircleActivityIcon>?>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMd, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMR, &protocol conformance descriptor for WorkoutDisclaimerView<A, B, C>);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  v16 = lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, MEMORY[0x277CDD7A8]);
  v24 = v15;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return outlined destroy of WorkoutDisclaimerView<Label<Text?, ModifiedContent<Image, CircleActivityIcon>?>, Text, Button<Text>>(v7);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 32))
  {
    lazy protocol witness table accessor for type String and conformance String();

    result = Text.init<A>(_:)();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - v10);
  v12 = *(a1 + 2);
  v23 = *a1;
  v24 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMR);
  MEMORY[0x20F30B100](&v22, v13);
  v14 = v22;
  if (!v22)
  {
    goto LABEL_5;
  }

  v15 = [v22 symbolName];
  if (!v15)
  {

LABEL_5:
    v18 = 1;
    return (*(v9 + 56))(a2, v18, 1, v8);
  }

  v21 = a2;
  v16 = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Image.init(systemName:)();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v17 = Image.resizable(capInsets:resizingMode:)();
  (*(v5 + 8))(v7, v4);
  *&v23 = 0x404A000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();

  *v11 = v17;
  a2 = v21;
  outlined init with take of ModifiedContent<Image, CircleActivityIcon>(v11, v21);
  v18 = 0;
  return (*(v9 + 56))(a2, v18, 1, v8);
}

uint64_t closure #1 in closure #3 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)(uint64_t *a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v13 = *a1;
  v14 = v7;
  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMR);
  MEMORY[0x20F30B100](&v12);
  v9 = v12;
  if (v12)
  {
    [a1[7] showActivityType_];
    FIUIWorkoutActivityType.setDisclaimerShown()();
    v10 = a1[8];
    if (v10)
    {
      v10();
    }

    type metadata accessor for WorkoutDisclaimerSheet(0);
    specialized Environment.wrappedValue.getter();
    DismissAction.callAsFunction()();

    (*(v3 + 8))(v5, v2);
  }

  v13 = v6;
  v14 = v7;
  v15 = v8;
  v12 = 0;
  return Binding.wrappedValue.setter();
}

uint64_t closure #4 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.cancellationAction.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR, MEMORY[0x277CDF028]);
  ToolbarItem<>.init(placement:content:)();
  v7 = lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, MEMORY[0x277CDD7A8]);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #4 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDisclaimerSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.cancel.getter();
  outlined init with copy of WorkoutDisclaimerSheet(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  outlined init with take of WorkoutDisclaimerSheet(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return MEMORY[0x20F30AF90](v7, partial apply for closure #1 in closure #1 in closure #4 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:), v9);
}

uint64_t closure #1 in closure #1 in closure #4 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutDisclaimerSheet(0);
  outlined init with copy of Environment<DismissAction>.Content(a1 + *(v13 + 36), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  DismissAction.callAsFunction()();
  return (*(v10 + 8))(v12, v9);
}

uint64_t outlined init with copy of WorkoutDisclaimerSheet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDisclaimerSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutDisclaimerSheet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDisclaimerSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in WorkoutDisclaimerSheet.body(content:)(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDisclaimerSheet(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  closure #1 in WorkoutDisclaimerSheet.body(content:)(v4, a1);
}

uint64_t objectdestroyTm_58()
{
  v1 = type metadata accessor for WorkoutDisclaimerSheet(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + v2 + 64))
  {
  }

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

_BYTE *partial apply for closure #2 in WorkoutDisclaimerSheet.body(content:)(_BYTE *a1)
{
  v3 = *(type metadata accessor for WorkoutDisclaimerSheet(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return closure #2 in WorkoutDisclaimerSheet.body(content:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #3 in WorkoutDisclaimerSheet.body(content:)()
{
  v1 = *(type metadata accessor for WorkoutDisclaimerSheet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #3 in WorkoutDisclaimerSheet.body(content:)(v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, CircleActivityIcon>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, CircleActivityIcon> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, CircleActivityIcon> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGMR);
    lazy protocol witness table accessor for type CircleActivityIcon and conformance CircleActivityIcon();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CircleActivityIcon and conformance CircleActivityIcon()
{
  result = lazy protocol witness table cache variable for type CircleActivityIcon and conformance CircleActivityIcon;
  if (!lazy protocol witness table cache variable for type CircleActivityIcon and conformance CircleActivityIcon)
  {
    type metadata accessor for CircleActivityIcon(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CircleActivityIcon and conformance CircleActivityIcon);
  }

  return result;
}

uint64_t outlined destroy of WorkoutDisclaimerView<Label<Text?, ModifiedContent<Image, CircleActivityIcon>?>, Text, Button<Text>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMd, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = type metadata accessor for WorkoutDisclaimerSheet(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  swift_unknownObjectRelease();
  if (*(v2 + 64))
  {
  }

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorkoutDisclaimerSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t outlined init with take of ModifiedContent<Image, CircleActivityIcon>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id NLSessionActivityGoal.platterColor.getter()
{
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v2 = [v1 colorWithAlphaComponent_];

    return v2;
  }

  else
  {
    v4 = [v0 goalTypeIdentifier];

    return _HKWorkoutGoalType.platterColor.getter(v4);
  }
}

SEL *_HKWorkoutGoalType.color.getter(uint64_t a1, SEL *a2, uint64_t a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    v4 = [objc_opt_self() keyColors];
    if (!v4)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v5 = v4;
    a2 = [v4 *a2];

    if (a2)
    {
      return a2;
    }

    __break(1u);
  }

  if (a1 != 2)
  {
    goto LABEL_14;
  }

  v6 = [objc_opt_self() elapsedTimeColors];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  a2 = [v6 *a2];

  if (a2)
  {
    return a2;
  }

  __break(1u);
LABEL_10:
  if (a1 != 1)
  {
    goto LABEL_23;
  }

  v8 = [objc_opt_self() distanceColors];
  if (!v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = v8;
  a2 = [v8 *a2];

  if (a2)
  {
    return a2;
  }

  __break(1u);
LABEL_14:
  if (a1 == 3)
  {
    v10 = [objc_opt_self() energyColors];
    if (v10)
    {
      v11 = v10;
      a2 = [v10 *a2];

      if (a2)
      {
        return a2;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id NLSessionActivityGoal.color.getter(uint64_t (*a1)(id), double a2, double a3, double a4)
{
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    v8 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v8 initWithDisplayP3Red:a2 green:a3 blue:a4 alpha:1.0];
  }

  else
  {
    v10 = [v4 goalTypeIdentifier];

    return a1(v10);
  }
}

id _HKWorkoutGoalType.platterColor.getter(unint64_t a1)
{
  if (a1 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v1 = dbl_20CB7B668[a1];
    v2 = _HKWorkoutGoalType.color.getter(a1);
    v3 = [(SEL *)v2 colorWithAlphaComponent:v1];

    return v3;
  }

  return result;
}

id _HKWorkoutGoalType.gradientStartingColor.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v2 = 0.0823529412;
      v3 = 0.109803922;
      v4 = 0x3F80101010101010;
LABEL_10:
      v5 = *&v4;
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v3 = 0.105882353;
      v5 = 0.141176471;
      v2 = 0.0;
      goto LABEL_11;
    }

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v2 = 0.290196078;
      v3 = 0.0196078431;
      v4 = 0x3FB8181818181818;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v1 = objc_allocWithZone(MEMORY[0x277D75348]);
  v2 = 0.145098039;
  v3 = 0.133333333;
  v5 = 0.0196078431;
LABEL_11:

  return [v1 initWithDisplayP3Red:v2 green:v3 blue:v5 alpha:1.0];
}

id _HKWorkoutGoalType.gradientEndingColor.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v2 = 0.223529412;
      v3 = 0.2;
      v4 = 0x3FA0101010101010;
      goto LABEL_6;
    }

    if (a1 == 3)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v2 = 0.254901961;
      v3 = 0.0196078431;
      v5 = 0.0823529412;
      goto LABEL_11;
    }

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v3 = 0.17254902;
      v5 = 0.22745098;
      v2 = 0.0;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v1 = objc_allocWithZone(MEMORY[0x277D75348]);
  v2 = 0.145098039;
  v3 = 0.196078431;
  v4 = 0x3FB1111111111111;
LABEL_6:
  v5 = *&v4;
LABEL_11:

  return [v1 initWithDisplayP3Red:v2 green:v3 blue:v5 alpha:1.0];
}

id one-time initialization function for allowedLapUnits()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20CB61A40;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 yards];
  result = [v1 meters];
  *(v0 + 40) = result;
  static SwimmingDistancePickerViewModel.allowedLapUnits = v0;
  return result;
}

uint64_t SwimmingDistancePickerViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SwimmingDistancePickerViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SwimmingDistancePickerViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *specialized SwimmingDistancePickerViewModel.init(formattingManager:lapLength:tintColor:)(void *a1, char *a2, unint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v6[2] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v38 = a2;
  v39 = a3;
  v40 = a4;

  v10 = a4;
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo10HKQuantityCGMd, &_s7SwiftUI7BindingVySo10HKQuantityCGMR);
  MEMORY[0x20F30B100](&v37, v12);
  v13 = v37;
  v14 = [v37 _unit];

  type metadata accessor for HKUnit();
  v15 = objc_opt_self();
  v16 = [v15 yardUnit];
  v17 = static NSObject.== infix(_:_:)();

  if (v17 & 1) != 0 || (v18 = [v15 meterUnit], v19 = static NSObject.== infix(_:_:)(), v18, (v19))
  {
    v6[3] = a5;
    v20 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];

    v21 = 1.0;
    v22 = 4999;
    v23 = 2;
    v24 = 25.0;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v26 = *(v20 + 2);
      v25 = *(v20 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v20);
      }

      *(v20 + 2) = v27;
      *&v20[8 * v26 + 32] = v24;
      v38 = v20;
      v28 = v21 * 33.3333333;
      if (v28 > 5000.0)
      {
        break;
      }

      v29 = v28 - trunc(v28);
      if (fabs(v29 + -0.33) < 0.01 || fabs(v29 + -0.66) < 0.01)
      {
        v30 = *(v20 + 3);
        v31 = v26 + 2;
        if (v31 > (v30 >> 1))
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31, 1, v20);
        }

        *(v20 + 2) = v31;
        *&v20[8 * v27 + 32] = v28;
        v38 = v20;
      }

      if (!v22)
      {
        break;
      }

      v21 = v23;
      v24 = v23 * 25.0;
      --v22;
      ++v23;
    }

    while (v24 <= 5000.0);
    specialized MutableCollection<>.sort(by:)(&v38);

    v6[4] = v38;
    return v6;
  }

  else
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v38 = 0xD000000000000021;
    v39 = 0x800000020CB952D0;
    v33 = [v14 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    MEMORY[0x20F30BC00](v34, v36);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for HKUnit()
{
  result = lazy cache variable for type metadata for HKUnit;
  if (!lazy cache variable for type metadata for HKUnit)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKUnit);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreateWorkoutButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CreateWorkoutButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in CreateWorkoutButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v39 = a4;
  v7 = type metadata accessor for PlainButtonStyle();
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAKGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAKGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGMR);
  v11 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGAA023AccessibilityAttachmentQ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGAA023AccessibilityAttachmentQ0VGMR);
  MEMORY[0x28223BE20](v17 - 8);
  v38 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v40 = a1;
  v41 = a2;
  v42 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAIGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAIGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAKGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAKGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGMR, MEMORY[0x277CDF028]);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_3(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v24 = v35;
  v23 = v36;
  View.buttonStyle<A>(_:)();
  (*(v37 + 8))(v10, v23);
  (*(v11 + 8))(v13, v24);
  v25 = &v16[*(v14 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR) + 28);
  v27 = *MEMORY[0x277CDF420];
  v28 = type metadata accessor for ControlSize();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  if (one-time initialization token for createWorkout != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();
  outlined destroy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v16, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGMR);
  v29 = v38;
  sub_20C68B3E4(v21, v38);
  v30 = v39;
  *v39 = 0;
  *(v30 + 8) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAEyAEyAA5ImageVAA011_ForegroundH9Modifier2VyAA5ColorVAQGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainjH0VQo_AUyAA11ControlSizeOGGAA023AccessibilityAttachmentR0VGACtMd, &_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAEyAEyAA5ImageVAA011_ForegroundH9Modifier2VyAA5ColorVAQGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainjH0VQo_AUyAA11ControlSizeOGGAA023AccessibilityAttachmentR0VGACtMR);
  sub_20C68B3E4(v29, v30 + *(v31 + 48));
  v32 = v30 + *(v31 + 64);
  *v32 = 0;
  v32[8] = 1;
  outlined destroy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v21, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGAA023AccessibilityAttachmentQ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGAA023AccessibilityAttachmentQ0VGMR);
  return outlined destroy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v29, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGAA023AccessibilityAttachmentQ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGAA023AccessibilityAttachmentQ0VGMR);
}

uint64_t closure #1 in closure #1 in CreateWorkoutButton.body.getter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in CreateWorkoutButton.body.getter@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = Image.init(systemName:)();
  v5 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v6 = Color.init(uiColor:)();

  v7 = static Font.largeTitle.getter();
  result = swift_getKeyPath();
  *a2 = v4;
  a2[1] = a1;
  a2[2] = v6;
  a2[3] = result;
  a2[4] = v7;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance CreateWorkoutButton@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAMyAMyAA5ImageVAA011_ForegroundM9Modifier2VyAA5ColorVAYGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainoM0VQo_A1_yAA11ControlSizeOGGAA023AccessibilityAttachmentW0VGAKtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAMyAMyAA5ImageVAA011_ForegroundM9Modifier2VyAA5ColorVAYGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainoM0VQo_A1_yAA11ControlSizeOGGAA023AccessibilityAttachmentW0VGAKtGGMR);
  closure #1 in CreateWorkoutButton.body.getter(v4, v5, v6, (a2 + *(v7 + 44)));
  static Color.clear.getter();
  v8 = AnyView.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA0L0VyACyACyAA5ImageVAA011_ForegroundJ9Modifier2VyAA5ColorVAUGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainlJ0VQo_AYyAA11ControlSizeOGGAA023AccessibilityAttachmentT0VGAItGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA0L0VyACyACyAA5ImageVAA011_ForegroundJ9Modifier2VyAA5ColorVAUGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainlJ0VQo_AYyAA11ControlSizeOGGAA023AccessibilityAttachmentT0VGAItGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGMR);
  *(a2 + *(result + 36)) = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAIGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAIGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAIGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAIGGMR);
    lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>, &_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAEGMd, &_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAEGMR, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, AccessibilityAttachmentModifier>, Spacer)>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, AccessibilityAttachmentModifier>, Spacer)>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, AccessibilityAttachmentModifier>, Spacer)>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA0L0VyACyACyAA5ImageVAA011_ForegroundJ9Modifier2VyAA5ColorVAUGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainlJ0VQo_AYyAA11ControlSizeOGGAA023AccessibilityAttachmentT0VGAItGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA0L0VyACyACyAA5ImageVAA011_ForegroundJ9Modifier2VyAA5ColorVAUGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainlJ0VQo_AYyAA11ControlSizeOGGAA023AccessibilityAttachmentT0VGAItGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGMR);
    lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, AccessibilityAttachmentModifier>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA0L0VyAIyAIyAA5ImageVAA011_ForegroundJ9Modifier2VyAA5ColorVAUGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainlJ0VQo_AYyAA11ControlSizeOGGAA023AccessibilityAttachmentT0VGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA0L0VyAIyAIyAA5ImageVAA011_ForegroundJ9Modifier2VyAA5ColorVAUGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainlJ0VQo_AYyAA11ControlSizeOGGAA023AccessibilityAttachmentT0VGAGtGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, AccessibilityAttachmentModifier>, Spacer)>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void PickerViewModifier.init(title:tintColor:navigationBarColor:paddingEdges:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  v6 = a5;
  if (!a4)
  {

    v11 = a3;
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = a4;
  if ((a5 & 0x100) != 0)
  {
LABEL_3:
    LOBYTE(v6) = static Edge.Set.all.getter();
  }

LABEL_4:
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v11;
  *(a6 + 32) = v6;
}

uint64_t PickerViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v44 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercF0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercF0VG_SSQo_MR);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v34 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercK0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercK0VG_SSQo__Qo_MR);
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v35 = &v34 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereT0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingT0VyAA03AnylH0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereT0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingT0VyAA03AnylH0VSgGGMR);
  MEMORY[0x28223BE20](v43);
  v11 = &v34 - v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = *(v2 + 24);
  v39 = *(v2 + 16);
  v34 = v14;
  v41 = *(v2 + 32);
  v46 = v12;
  v47 = v13;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMR);
  v16 = lazy protocol witness table accessor for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMR, MEMORY[0x277CE04B0]);
  v17 = lazy protocol witness table accessor for type String and conformance String();
  v18 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v46 = v15;
  v47 = v18;
  v48 = v16;
  v49 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v35;
  v20 = v36;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v4 + 8))(v6, v3);
  v22 = v20;
  (*(v38 + 8))(v8, v20);
  v45 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMR);
  type metadata accessor for ToolbarPlacement();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20CB5DA70;
  static ToolbarPlacement.navigationBar.getter();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v40;
  MEMORY[0x20F30A9F0](&v45, v23, v40, MEMORY[0x277CE0F78], v24, MEMORY[0x277CE0F60]);

  (*(v42 + 8))(v21, v25);
  KeyPath = swift_getKeyPath();
  v46 = v39;

  v27 = AnyShapeStyle.init<A>(_:)();
  v28 = &v11[*(v43 + 36)];
  *v28 = KeyPath;
  v28[1] = v27;
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  v29 = v44;
  View.scenePadding(_:)();
  sub_20C68B470(v11);
  v30 = static SafeAreaRegions.all.getter();
  v31 = static Edge.Set.bottom.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAeAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeL0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationR4ItemV0stU0OFQOyAeAE0qS0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereX0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingX0VyAA03AnypL0VSgGG_Qo_AA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAeAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeL0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationR4ItemV0stU0OFQOyAeAE0qS0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereX0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingX0VyAA03AnypL0VSgGG_Qo_AA30_SafeAreaRegionsIgnoringLayoutVGMR);
  v33 = v29 + *(result + 36);
  *v33 = v30;
  *(v33 + 8) = v31;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereT0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingT0VyAA03AnylH0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereT0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingT0VyAA03AnylH0VSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercK0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercK0VG_SSQo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercF0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercF0VG_SSQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMR);
    lazy protocol witness table accessor for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMR, MEMORY[0x277CE04B0]);
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PickerViewModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for PickerViewModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAeAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeL0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationR4ItemV0stU0OFQOyAeAE0qS0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereX0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingX0VyAA03AnypL0VSgGG_Qo_AA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAeAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeL0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationR4ItemV0stU0OFQOyAeAE0qS0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereX0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingX0VyAA03AnypL0VSgGG_Qo_AA30_SafeAreaRegionsIgnoringLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereT0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingT0VyAA03AnylH0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereT0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingT0VyAA03AnylH0VSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadDayViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for TrainingLoadDayViewModel;
  if (!type metadata singleton initialization cache for TrainingLoadDayViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrainingLoadDayViewModel(uint64_t a1)
{
  type metadata accessor for TrainingLoadBand();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Range<Double>();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Range<Double>()
{
  if (!lazy cache variable for type metadata for Range<Double>)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Double>);
    }
  }
}

uint64_t TrainingLoadDayViewModel.bandState.getter()
{
  Band = type metadata accessor for TrainingLoadBand();
  v2 = *(Band - 8);
  MEMORY[0x28223BE20](Band);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 > 1.0)
  {
    return 0;
  }

  if (*v0 < -0.95)
  {
    return 6;
  }

  v7 = v3;
  DayViewModel = type metadata accessor for TrainingLoadDayViewModel(0);
  (*(v2 + 16))(v5, v0 + *(DayViewModel + 20), v7);
  v9 = (*(v2 + 88))(v5, v7);
  if (v9 == *MEMORY[0x277D0FE98])
  {
    return 5;
  }

  if (v9 == *MEMORY[0x277D0FE88])
  {
    return 4;
  }

  if (v9 == *MEMORY[0x277D0FE78])
  {
    return 3;
  }

  if (v9 == *MEMORY[0x277D0FE80])
  {
    return 2;
  }

  if (v9 == *MEMORY[0x277D0FE90])
  {
    return 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t TrainingLoadDayViewModel.positionWithinBand.getter()
{
  Band = type metadata accessor for TrainingLoadBand();
  v2 = *(Band - 8);
  MEMORY[0x28223BE20](Band);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TrainingLoadDayViewModel(0);
  if (*(v0 + *(result + 24)) != *(v0 + *(result + 24) + 8))
  {
    v6.n128_u64[0] = 0.75;
    if (*v0 <= 1.0 && *v0 >= -0.95)
    {
      (*(v2 + 16))(v4, v0 + *(result + 20), Band, v6);
      result = (*(v2 + 88))(v4, Band);
      if (result != *MEMORY[0x277D0FE98])
      {
        v9 = result == *MEMORY[0x277D0FE88] || result == *MEMORY[0x277D0FE78] || result == *MEMORY[0x277D0FE80];
        if (!v9 && result != *MEMORY[0x277D0FE90])
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadTodayViewBand(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrainingLoadTodayViewBand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrainingLoadTodayViewBand and conformance TrainingLoadTodayViewBand()
{
  result = lazy protocol witness table cache variable for type TrainingLoadTodayViewBand and conformance TrainingLoadTodayViewBand;
  if (!lazy protocol witness table cache variable for type TrainingLoadTodayViewBand and conformance TrainingLoadTodayViewBand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadTodayViewBand and conformance TrainingLoadTodayViewBand);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrainingLoadTodayViewBand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrainingLoadTodayViewBand(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for PacerView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for PacerView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void GeometryProxy.pillOffset(for:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  GeometryProxy.size.getter();
  v10 = v2;
  v11 = v1;
  v12 = v3;
  v13 = v4;
  PacerViewConfiguration.pillConfiguration.getter(v9);
  v5 = v9[24];

  if (v5)
  {
    if (v5 == 1 && v3)
    {
      goto LABEL_4;
    }
  }

  else if (v3)
  {
LABEL_4:
    v6[7] = v2;
    v6[8] = v1;
    v7 = v3;
    v8 = v4;
    PacerViewConfiguration.pillConfiguration.getter(v6);
  }
}

uint64_t closure #1 in PacerView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMR);
  MEMORY[0x28223BE20](v52);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v50 = static VerticalAlignment.center.getter();
  v55 = 0;
  v17 = a1[1];
  v49 = *a1;

  v51 = v17;

  v48 = v55;
  v61 = *(a1 + 64);
  v18 = a1[7];
  v60 = v18;
  if (v61 != 1)
  {
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(&v60, v54, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMR);
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v46 = v16;
    v20 = v4;
    v21 = v7;
    v22 = v19;
    os_log(_:dso:log:_:_:)();

    v7 = v21;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(&v60, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMR);
    v23 = v20;
    v16 = v46;
    (*(v47 + 8))(v6, v23);
    LOBYTE(v18) = v57;
  }

  if (v18 <= 9u && ((1 << v18) & 0x301) != 0)
  {
    v24 = *(a1 + 5);
    v57 = *(a1 + 3);
    v58 = v24;
    PacerViewConfiguration.pillConfiguration.getter(v54);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v56[6] = v57;
  *&v56[22] = v58;
  *&v56[38] = v59;
  v25 = &v9[*(v7 + 36)];
  v26 = *(type metadata accessor for RoundedRectangle() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #16.0 }

  *v25 = _Q0;
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
  v34 = *&v56[16];
  *(v9 + 50) = *v56;
  *v9 = v50;
  *(v9 + 1) = 0;
  v9[16] = v48;
  *(v9 + 3) = v49;
  *(v9 + 16) = 256;
  *(v9 + 5) = v51;
  *(v9 + 24) = 256;
  *(v9 + 66) = v34;
  *(v9 + 82) = *&v56[32];
  *(v9 + 12) = *&v56[46];
  v35 = static Alignment.center.getter();
  v37 = v36;
  v38 = swift_allocObject();
  v39 = *(a1 + 3);
  *(v38 + 48) = *(a1 + 2);
  *(v38 + 64) = v39;
  *(v38 + 80) = *(a1 + 64);
  v40 = *(a1 + 1);
  *(v38 + 16) = *a1;
  *(v38 + 32) = v40;
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>(v9, v13, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGMR);
  v41 = &v13[*(v52 + 36)];
  *v41 = partial apply for closure #1 in closure #2 in closure #1 in PacerView.body.getter;
  v41[1] = v38;
  v41[2] = v35;
  v41[3] = v37;
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>(v13, v16, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMR);
  v42 = v53;
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(v16, v53, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMR);
  *a2 = 0;
  *(a2 + 8) = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAEyAA6HStackVyAA9TupleViewVyAA06_ShapeH0VyAA9RectangleVAA5ColorVG_APtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedJ0VGGAA16_OverlayModifierVyAA14GeometryReaderVyAEyAA6ZStackVyAIyAO_AEyAEy07WorkoutB009PacerPillH0VAA07_OffsetO0VGAA010_AnimationR0VyA6_0X13ConfigurationV0X8PositionOGGtGGA10_GGGGACtMd, &_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAEyAA6HStackVyAA9TupleViewVyAA06_ShapeH0VyAA9RectangleVAA5ColorVG_APtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedJ0VGGAA16_OverlayModifierVyAA14GeometryReaderVyAEyAA6ZStackVyAIyAO_AEyAEy07WorkoutB009PacerPillH0VAA07_OffsetO0VGAA010_AnimationR0VyA6_0X13ConfigurationV0X8PositionOGGtGGA10_GGGGACtMR);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(v42, a2 + *(v43 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMR);
  v44 = a2 + *(v43 + 64);
  outlined init with copy of PacerView(a1, v54);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(v16, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMR);
  *v44 = 0;
  *(v44 + 8) = 1;
  return _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(v42, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMR);
}

void closure #1 in closure #2 in closure #1 in PacerView.body.getter(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static Alignment.center.getter();
  v21 = v10;
  v22 = v9;
  closure #1 in closure #1 in closure #2 in closure #1 in PacerView.body.getter(a2, &v25);
  v34 = v27;
  v35 = v28;
  v36[0] = v29[0];
  *(v36 + 9) = *(v29 + 9);
  v32 = v25;
  v33 = v26;
  *(v38 + 9) = *(v29 + 9);
  v37[2] = v27;
  v37[3] = v28;
  v38[0] = v29[0];
  v37[0] = v25;
  v37[1] = v26;
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(&v32, &v23, &_s7SwiftUI9TupleViewVyAA5ColorV_AA15ModifiedContentVyAGy07WorkoutB009PacerPillD0VAA13_OffsetEffectVGAA18_AnimationModifierVyAH0J13ConfigurationV0J8PositionOGGtGMd, &_s7SwiftUI9TupleViewVyAA5ColorV_AA15ModifiedContentVyAGy07WorkoutB009PacerPillD0VAA13_OffsetEffectVGAA18_AnimationModifierVyAH0J13ConfigurationV0J8PositionOGGtGMR);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(v37, &_s7SwiftUI9TupleViewVyAA5ColorV_AA15ModifiedContentVyAGy07WorkoutB009PacerPillD0VAA13_OffsetEffectVGAA18_AnimationModifierVyAH0J13ConfigurationV0J8PositionOGGtGMd, &_s7SwiftUI9TupleViewVyAA5ColorV_AA15ModifiedContentVyAGy07WorkoutB009PacerPillD0VAA13_OffsetEffectVGAA18_AnimationModifierVyAH0J13ConfigurationV0J8PositionOGGtGMR);
  v41 = v34;
  v42 = v35;
  v43[0] = v36[0];
  *(v43 + 9) = *(v36 + 9);
  v39 = v32;
  v40 = v33;
  v30 = *(a2 + 56);
  v31 = *(a2 + 64);
  v11 = v30;
  if (v31 != 1)
  {
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(&v30, &v25, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMR);
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(&v30, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMR);
    (*(v6 + 8))(v8, v5);
    v11 = v23;
  }

  if (v11 <= 9u && ((1 << v11) & 0x301) != 0)
  {
    v13 = *(a2 + 40);
    v23 = *(a2 + 24);
    v24 = v13;
    PacerViewConfiguration.pillConfiguration.getter(&v25);
    v14 = *(&v25 + 1);

    v15 = v14 * -0.25;
  }

  else
  {
    v16 = *(a2 + 40);
    v23 = *(a2 + 24);
    v24 = v16;
    PacerViewConfiguration.pillConfiguration.getter(&v25);
    v17 = *(&v25 + 1);

    v15 = v17 * -0.25 + -2.5;
  }

  v18 = v21;
  *a3 = v22;
  *(a3 + 8) = v18;
  v19 = v42;
  *(a3 + 48) = v41;
  *(a3 + 64) = v19;
  *(a3 + 80) = v43[0];
  *(a3 + 89) = *(v43 + 9);
  v20 = v40;
  *(a3 + 16) = v39;
  *(a3 + 32) = v20;
  *(a3 + 112) = 0;
  *(a3 + 120) = v15;
}

void closure #1 in closure #1 in closure #2 in closure #1 in PacerView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.clear.getter();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(&v19 + 1) = *(a1 + 41);
  DWORD1(v19) = *(a1 + 44);
  v8 = *(a1 + 48);
  KeyPath = swift_getKeyPath();
  v24 = v5;
  v25 = v6;
  LOBYTE(v26) = v7;
  *(&v26 + 1) = *(a1 + 41);
  HIDWORD(v26) = *(a1 + 44);
  v27 = v8;
  GeometryProxy.pillOffset(for:)(&v24);
  v11 = v10;
  v17[0] = 0;
  v12 = static Animation.linear.getter();
  PacerViewConfiguration.pillConfiguration.getter(&v24);
  v13 = v26;
  v14 = v27;

  *&v18 = v5;
  *(&v18 + 1) = v6;
  LOBYTE(v19) = v7;
  *(&v19 + 1) = v8;
  *&v20 = KeyPath;
  BYTE8(v20) = 0;
  v21 = v11;
  *&v22 = v12;
  *(&v22 + 1) = v13;
  *(a2 + 40) = v20;
  v15 = v22;
  *(a2 + 56) = v21;
  *(a2 + 72) = v15;
  v16 = v19;
  *(a2 + 8) = v18;
  v23 = v14;
  *a2 = v4;
  *(a2 + 88) = v14;
  *(a2 + 24) = v16;
  v24 = v5;
  v25 = v6;
  LOBYTE(v26) = v7;
  v27 = v8;
  v28 = KeyPath;
  LOBYTE(v29) = 0;
  v30 = v11;
  v31 = 0;
  v32 = v12;
  v33 = v13;
  v34 = v14;

  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(&v18, v17, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB013PacerPillViewVAA13_OffsetEffectVGAA18_AnimationModifierVyAD0G13ConfigurationV0G8PositionOGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB013PacerPillViewVAA13_OffsetEffectVGAA18_AnimationModifierVyAD0G13ConfigurationV0G8PositionOGGMR);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(&v24, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB013PacerPillViewVAA13_OffsetEffectVGAA18_AnimationModifierVyAD0G13ConfigurationV0G8PositionOGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB013PacerPillViewVAA13_OffsetEffectVGAA18_AnimationModifierVyAD0G13ConfigurationV0G8PositionOGGMR);
}

uint64_t protocol witness for View.body.getter in conformance PacerView@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v4;
  v9 = *(v2 + 64);
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAMyAA6HStackVyAIyAA06_ShapeD0VyAA9RectangleVAA5ColorVG_AVtGGAA06_FrameG0VGAA11_ClipEffectVyAA07RoundedN0VGGAA16_OverlayModifierVyAA14GeometryReaderVyAMyAA6ZStackVyAIyAU_AMyAMy07WorkoutB009PacerPillD0VAA07_OffsetR0VGAA010_AnimationU0VyA12_17PillConfigurationV12PillPositionOGGtGGA16_GGGGAKtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAMyAA6HStackVyAIyAA06_ShapeD0VyAA9RectangleVAA5ColorVG_AVtGGAA06_FrameG0VGAA11_ClipEffectVyAA07RoundedN0VGGAA16_OverlayModifierVyAA14GeometryReaderVyAMyAA6ZStackVyAIyAU_AMyAMy07WorkoutB009PacerPillD0VAA07_OffsetR0VGAA010_AnimationU0VyA12_17PillConfigurationV12PillPositionOGGtGGA16_GGGGAKtGGMR);
  closure #1 in PacerView.body.getter(v8, a2 + *(v6 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ARtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedK0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAQ_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetP0VGAA010_AnimationS0VyA8_0Y13ConfigurationV0Y8PositionOGGtGGA12_GGGGAItGGA8_9MetricRowVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ARtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedK0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAQ_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetP0VGAA010_AnimationS0VyA8_0Y13ConfigurationV0Y8PositionOGGtGGA12_GGGGAItGGA8_9MetricRowVGMR);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>>, MetricRow> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>>, MetricRow> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>>, MetricRow> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ARtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedK0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAQ_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetP0VGAA010_AnimationS0VyA8_0Y13ConfigurationV0Y8PositionOGGtGGA12_GGGGAItGGA8_9MetricRowVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ARtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedK0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAQ_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetP0VGAA010_AnimationS0VyA8_0Y13ConfigurationV0Y8PositionOGGtGGA12_GGGGAItGGA8_9MetricRowVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>> and conformance VStack<A>();
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>> and conformance VStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIyAA6HStackVyAEyAA06_ShapeE0VyAA9RectangleVAA5ColorVG_ARtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedK0VGGAA16_OverlayModifierVyAA14GeometryReaderVyAIyAA6ZStackVyAEyAQ_AIyAIy07WorkoutB009PacerPillE0VAA07_OffsetP0VGAA010_AnimationS0VyA8_0Y13ConfigurationV0Y8PositionOGGtGGA12_GGGGAGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIyAA6HStackVyAEyAA06_ShapeE0VyAA9RectangleVAA5ColorVG_ARtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedK0VGGAA16_OverlayModifierVyAA14GeometryReaderVyAIyAA6ZStackVyAEyAQ_AIyAIy07WorkoutB009PacerPillE0VAA07_OffsetP0VGAA010_AnimationS0VyA8_0Y13ConfigurationV0Y8PositionOGGtGGA12_GGGGAGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>> and conformance VStack<A>);
  }

  return result;
}

uint64_t type metadata accessor for AlertsPickerViewWatch(uint64_t a1)
{
  result = type metadata singleton initialization cache for AlertsPickerViewWatch;
  if (!type metadata singleton initialization cache for AlertsPickerViewWatch)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AlertsPickerViewWatch(uint64_t a1)
{
  type metadata accessor for Environment<DismissAction>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservedObject<AlertsPickerViewModel>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ObservedObject<AlertsPickerViewModel>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<AlertsPickerViewModel>)
  {
    type metadata accessor for AlertsPickerViewModel(255);
    lazy protocol witness table accessor for type AlertsPickerViewModel and conformance AlertsPickerViewModel();
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<AlertsPickerViewModel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AlertsPickerViewModel and conformance AlertsPickerViewModel()
{
  result = lazy protocol witness table cache variable for type AlertsPickerViewModel and conformance AlertsPickerViewModel;
  if (!lazy protocol witness table cache variable for type AlertsPickerViewModel and conformance AlertsPickerViewModel)
  {
    type metadata accessor for AlertsPickerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertsPickerViewModel and conformance AlertsPickerViewModel);
  }

  return result;
}

uint64_t AlertsPickerViewWatch.dismiss.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_0(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t AlertsPickerViewWatch.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA14GeometryReaderVyAA15ModifiedContentVyAA0F0VyAIyAMyAMyAMyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleY0VyAA14TintShapeStyleVGG_AA6SpacerVtGGA5_GG_AMyAA6ButtonVyA0_G07WorkoutB0018PinnedBottomButtonY5PhoneVGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA14GeometryReaderVyAA15ModifiedContentVyAA0F0VyAIyAMyAMyAMyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleY0VyAA14TintShapeStyleVGG_AA6SpacerVtGGA5_GG_AMyAA6ButtonVyA0_G07WorkoutB0018PinnedBottomButtonY5PhoneVGtGGMR);
  closure #1 in AlertsPickerViewWatch.body.getter(v2, (a2 + *(v4 + 44)));
  v5 = *(v2 + *(type metadata accessor for AlertsPickerViewWatch(0) + 20) + 8);
  v7 = *(v5 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerText);
  v6 = *(v5 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerText + 8);
  v8 = *(v5 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_color);
  swift_retain_n();

  v9 = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGA23_0jgW0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGA23_0jgW0VGMR);
  v11 = a2 + *(result + 36);
  *v11 = v7;
  *(v11 + 8) = v6;
  *(v11 + 16) = v8;
  *(v11 + 24) = v8;
  *(v11 + 32) = v9;
  return result;
}

double closure #1 in AlertsPickerViewWatch.body.getter@<D0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for AlertsPickerViewWatch(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  outlined init with copy of AlertsPickerViewWatch(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  outlined init with take of AlertsPickerViewWatch(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  outlined init with copy of AlertsPickerViewWatch(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  outlined init with take of AlertsPickerViewWatch(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  Button.init(action:label:)();
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_0(v9, v6, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);
  *a2 = partial apply for closure #1 in closure #1 in AlertsPickerViewWatch.body.getter;
  a2[1] = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAEyAEyAEyAA6PickerVyAA05EmptyI0VSdAA7ForEachVySaySdGSdAA0I0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_AEyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAEyAEyAEyAA6PickerVyAA05EmptyI0VSdAA7ForEachVySaySdGSdAA0I0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_AEyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtMR);
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_0(v6, a2 + *(v16 + 48), &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);

  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_0(v9, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_0(v6, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);

  return result;
}

double closure #1 in closure #1 in AlertsPickerViewWatch.body.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGMR);
  closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter(a2, a3 + *(v5 + 44));
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6PickerVyAA05EmptyG0VSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleU0VyAA09TintShapeX0VGG_AA6SpacerVtGGAYGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6PickerVyAA05EmptyG0VSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleU0VyAA09TintShapeX0VGG_AA6SpacerVtGGAYGMR) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v33 = type metadata accessor for Font.TextStyle();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGGMR);
  MEMORY[0x28223BE20](v32);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = (a1 + *(type metadata accessor for AlertsPickerViewWatch(0) + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = type metadata accessor for AlertsPickerViewModel(0);
  v18 = lazy protocol witness table accessor for type AlertsPickerViewModel and conformance AlertsPickerViewModel();
  MEMORY[0x20F308920](v15, v16, v17, v18);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v35 = a1;
  v36 = v38;
  v37 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySdGSdAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GMd, &_s7SwiftUI7ForEachVySaySdGSdAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GMR);
  lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  if (one-time initialization token for singlePickerHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGMR) + 36)];
  v20 = v39;
  *v19 = v38;
  *(v19 + 1) = v20;
  *(v19 + 2) = v40;
  v21 = v33;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0A80], v33);
  v22 = *MEMORY[0x277CE09A0];
  v23 = type metadata accessor for Font.Design();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v5, v22, v23);
  (*(v24 + 56))(v5, 0, 1, v23);
  v25 = static Font.system(_:design:weight:)();
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_0(v5, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v6 + 8))(v8, v21);
  KeyPath = swift_getKeyPath();
  v27 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR) + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  TintShapeStyle.init()();
  sub_20C68B7D0(v13, v10);
  v28 = v34;
  sub_20C68B7D0(v10, v34);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGG_AA6SpacerVtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGG_AA6SpacerVtMR) + 48);
  sub_20C68B840(v13);
  *v29 = 0;
  *(v29 + 8) = 1;
  return sub_20C68B840(v10);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AlertsPickerViewWatch(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[5] = *(*(a1 + *(v5 + 28) + 8) + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerValues);
  swift_getKeyPath();
  outlined init with copy of AlertsPickerViewWatch(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of AlertsPickerViewWatch(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_Md, &_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_MR);
  lazy protocol witness table accessor for type [Double] and conformance [A](&lazy protocol witness table cache variable for type [Double] and conformance [A], &_sSaySdGMd, &_sSaySdGMR, MEMORY[0x277D83980]);
  v9[1] = MEMORY[0x277CE0BD8];
  v9[2] = MEMORY[0x277D839F8];
  v9[3] = MEMORY[0x277CE0BC8];
  v9[4] = MEMORY[0x277D83A18];
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  specialized AlertsPickerViewModel.pickerText(for:)(*a1);
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t closure #2 in closure #1 in AlertsPickerViewWatch.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + *(type metadata accessor for AlertsPickerViewWatch(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v7 = v12[0];
  v8 = v6[3];
  v9 = v6[4];
  v12[0] = v6[2];
  v12[1] = v8;
  v12[2] = v9;
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  Binding.wrappedValue.setter();
  AlertsPickerViewModel.updateValueDisplay()();
  AlertsPickerViewWatch.dismiss.getter(v5);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #3 in closure #1 in AlertsPickerViewWatch.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x535F535452454C41;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v3._object = 0xEA00000000005445;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t outlined init with take of AlertsPickerViewWatch(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertsPickerViewWatch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in closure #1 in AlertsPickerViewWatch.body.getter@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AlertsPickerViewWatch(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return closure #1 in closure #1 in AlertsPickerViewWatch.body.getter(v5, a2);
}

uint64_t partial apply for closure #2 in closure #1 in AlertsPickerViewWatch.body.getter()
{
  v1 = *(type metadata accessor for AlertsPickerViewWatch(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #2 in closure #1 in AlertsPickerViewWatch.body.getter(v2);
}

uint64_t _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySdGSdAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GMd, &_s7SwiftUI7ForEachVySaySdGSdAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GMR);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_59()
{
  v1 = *(type metadata accessor for AlertsPickerViewWatch(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for DismissAction();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AlertsPickerViewWatch(0);

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter(a1, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGA23_0jgW0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGA23_0jgW0VGMR);
    lazy protocol witness table accessor for type [Double] and conformance [A](&lazy protocol witness table cache variable for type VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA14GeometryReaderVyAA15ModifiedContentVyACyAEyAIyAIyAIyAA6PickerVyAA05EmptyE0VSdAA7ForEachVySaySdGSdAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_AIyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA14GeometryReaderVyAA15ModifiedContentVyACyAEyAIyAIyAIyAA6PickerVyAA05EmptyE0VSdAA7ForEachVySaySdGSdAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_AIyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type PickerViewModifier and conformance PickerViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Double] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffortViewCurrentWorkloadButton(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for EffortViewCurrentWorkloadButton(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void closure #1 in EffortViewCurrentWorkloadButton.body.getter(void (*a1)(double))
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  v7 = [objc_opt_self() sharedApplication];
  LOBYTE(aBlock[0]) = 0;
  v15 = 4;
  TrainingLoadURLBuilder.url(route:source:)(aBlock, &v15, v6);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in closure #1 in EffortViewCurrentWorkloadButton.body.getter;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_21;
  v12 = _Block_copy(aBlock);
  [v7 openURL:v10 options:isa completionHandler:v12];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in EffortViewCurrentWorkloadButton.body.getter(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_20C66F000, v6, v7, "Launching Training Load Details Page Successful: %{BOOL}d", v8, 8u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

__n128 closure #2 in EffortViewCurrentWorkloadButton.body.getter@<Q0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v42 = 1;
  closure #1 in closure #2 in EffortViewCurrentWorkloadButton.body.getter(&v28);
  v53 = v38;
  v54 = v39;
  v49 = v34;
  v50 = v35;
  v51 = v36;
  v52 = v37;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v48 = v33;
  v43 = v28;
  v44 = v29;
  v56[9] = v37;
  v56[10] = v38;
  v56[11] = v39;
  v56[6] = v34;
  v56[7] = v35;
  v56[8] = v36;
  v56[2] = v30;
  v56[3] = v31;
  v56[4] = v32;
  v56[5] = v33;
  v55 = v40;
  v57 = v40;
  v56[0] = v28;
  v56[1] = v29;
  outlined init with copy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(&v43, v27, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAEyAEyAA5ImageVAIGAIGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAEyAEyAA5ImageVAIGAIGtGMR);
  outlined destroy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(v56, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAEyAEyAA5ImageVAIGAIGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAEyAEyAA5ImageVAIGAIGtGMR);
  *&v41[151] = v52;
  *&v41[167] = v53;
  *&v41[183] = v54;
  *&v41[87] = v48;
  *&v41[103] = v49;
  *&v41[119] = v50;
  *&v41[135] = v51;
  *&v41[23] = v44;
  *&v41[39] = v45;
  *&v41[55] = v46;
  *&v41[71] = v47;
  v41[199] = v55;
  *&v41[7] = v43;
  v4 = v42;
  v5 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(v28) = 0;
  v14 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v16 = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = swift_getKeyPath();
  v18 = *&v41[128];
  *(a2 + 161) = *&v41[144];
  v19 = *&v41[176];
  *(a2 + 177) = *&v41[160];
  *(a2 + 193) = v19;
  v20 = *&v41[64];
  *(a2 + 97) = *&v41[80];
  v21 = *&v41[112];
  *(a2 + 113) = *&v41[96];
  *(a2 + 129) = v21;
  *(a2 + 145) = v18;
  v22 = *v41;
  *(a2 + 33) = *&v41[16];
  v23 = *&v41[48];
  *(a2 + 49) = *&v41[32];
  *(a2 + 65) = v23;
  *(a2 + 81) = v20;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 209) = *&v41[192];
  *(a2 + 17) = v22;
  *(a2 + 224) = v5;
  *(a2 + 232) = v7;
  *(a2 + 240) = v9;
  *(a2 + 248) = v11;
  *(a2 + 256) = v13;
  *(a2 + 264) = 0;
  *(a2 + 272) = KeyPath;
  *(a2 + 280) = v14;
  *(a2 + 288) = v16;
  v24 = v33;
  *(a2 + 360) = v32;
  *(a2 + 376) = v24;
  *(a2 + 392) = v34;
  v25 = v29;
  *(a2 + 296) = v28;
  *(a2 + 312) = v25;
  result = v31;
  *(a2 + 328) = v30;
  *(a2 + 344) = result;
  *(a2 + 408) = v17;
  *(a2 + 416) = 2;
  *(a2 + 424) = 0;
  *(a2 + 432) = 0x402C000000000000;
  return result;
}

uint64_t closure #1 in closure #2 in EffortViewCurrentWorkloadButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v86._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x800000020CB9D200;
  v4._countAndFlagsBits = 0xD000000000000015;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0;
  object = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v86)._object;

  v74 = object;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(v2) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = Image.init(systemName:)();
  v23 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  *&v58 = v7;
  *(&v58 + 1) = v9;
  LOBYTE(v59) = v11 & 1;
  *(&v59 + 1) = v13;
  LOBYTE(v60) = v2;
  *(&v60 + 1) = v15;
  *v61 = v17;
  *&v61[8] = v19;
  *&v61[16] = v21;
  v61[24] = 0;
  v69 = v58;
  *(v72 + 9) = *&v61[9];
  v71 = v60;
  v72[0] = *v61;
  v70 = v59;
  v57 = 1;
  *&v62 = v22;
  BYTE8(v62) = v23;
  *&v63 = v25;
  *(&v63 + 1) = v27;
  *&v64 = v29;
  *(&v64 + 1) = v31;
  LOBYTE(v65) = 0;
  BYTE8(v65) = v32;
  *&v66 = v33;
  *(&v66 + 1) = v34;
  *&v67 = v35;
  *(&v67 + 1) = v36;
  v68 = 0;
  *&v56[39] = v64;
  *&v56[23] = v63;
  *&v56[7] = v62;
  v56[103] = 0;
  *&v56[87] = v67;
  *&v56[71] = v66;
  *&v56[55] = v65;
  v37 = v58;
  v38 = v59;
  v39 = v72[1];
  *(a1 + 48) = *v61;
  *(a1 + 64) = v39;
  v40 = v71;
  *(a1 + 16) = v38;
  *(a1 + 32) = v40;
  *a1 = v37;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  v41 = *v56;
  v42 = *&v56[16];
  v43 = *&v56[48];
  *(a1 + 121) = *&v56[32];
  *(a1 + 105) = v42;
  *(a1 + 89) = v41;
  v44 = *&v56[64];
  v45 = *&v56[80];
  *(a1 + 185) = *&v56[96];
  *(a1 + 169) = v45;
  *(a1 + 153) = v44;
  *(a1 + 137) = v43;
  v73 = v22;
  LOBYTE(v74) = v23;
  v75 = v25;
  v76 = v27;
  v77 = v29;
  v78 = v31;
  v79 = 0;
  v80 = v32;
  v81 = v33;
  v82 = v34;
  v83 = v35;
  v84 = v36;
  v85 = 0;
  outlined init with copy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(&v58, v47, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  outlined init with copy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(&v62, v47, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA14_PaddingLayoutVGAGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA14_PaddingLayoutVGAGGMR);
  outlined destroy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(&v73, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA14_PaddingLayoutVGAGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA14_PaddingLayoutVGAGGMR);
  v47[0] = v7;
  v47[1] = v9;
  v48 = v11 & 1;
  v49 = v13;
  v50 = v2;
  v51 = v15;
  v52 = v17;
  v53 = v19;
  v54 = v21;
  v55 = 0;
  return outlined destroy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(v47, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
}

__n128 protocol witness for View.body.getter in conformance EffortViewCurrentWorkloadButton@<Q0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGAWySiSgGG07WorkoutB0022EffortButtonBackgroundP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGAWySiSgGG07WorkoutB0022EffortButtonBackgroundP0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAMGAMGtGGAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA010_FlexFrameK0VGAYySiSgGG07WorkoutB006Efforte10BackgroundQ0VGGAA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAMGAMGtGGAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA010_FlexFrameK0VGAYySiSgGG07WorkoutB006Efforte10BackgroundQ0VGGAA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMR) + 36));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMR);
  static ContentShapeKinds.accessibility.getter();
  v8 = *(type metadata accessor for RoundedRectangle() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(v6 + v8, v9, v10);
  __asm { FMOV            V0.2D, #14.0 }

  *v6 = result;
  v6->n128_u8[*(v7 + 36)] = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGAWySiSgGG07WorkoutB0022EffortButtonBackgroundP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGAWySiSgGG07WorkoutB0022EffortButtonBackgroundP0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type EffortButtonBackgroundModifier and conformance EffortButtonBackgroundModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGAWySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGAWySiSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAGyAGyAA5ImageVAKGAKGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAGyAGyAA5ImageVAKGAKGtGGMR, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EffortButtonBackgroundModifier and conformance EffortButtonBackgroundModifier()
{
  result = lazy protocol witness table cache variable for type EffortButtonBackgroundModifier and conformance EffortButtonBackgroundModifier;
  if (!lazy protocol witness table cache variable for type EffortButtonBackgroundModifier and conformance EffortButtonBackgroundModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortButtonBackgroundModifier and conformance EffortButtonBackgroundModifier);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey()
{
  result = lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey;
  if (!lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey)
  {
    type metadata accessor for UIApplicationOpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey);
  }

  return result;
}

double block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAMGAMGtGGAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA010_FlexFrameK0VGAYySiSgGG07WorkoutB006Efforte10BackgroundQ0VGGAA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAMGAMGtGGAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA010_FlexFrameK0VGAYySiSgGG07WorkoutB006Efforte10BackgroundQ0VGGAA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAEyAEyAA5ImageVAMGAMGtGGAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA010_FlexFrameK0VGAYySiSgGG07WorkoutB006Effortc10BackgroundQ0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAEyAEyAA5ImageVAMGAMGtGGAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA010_FlexFrameK0VGAYySiSgGG07WorkoutB006Effortc10BackgroundQ0VGGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<RoundedRectangle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMR, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaceStartWorkoutButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RaceStartWorkoutButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RaceStartWorkoutButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BorderedProminentButtonStyle();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-v10];
  v12 = swift_allocObject();
  v13 = *(v2 + 16);
  *(v12 + 16) = *v2;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v2 + 32);
  *(v12 + 64) = *(v2 + 48);
  v23 = v2;
  outlined init with copy of RaceStartWorkoutButton(v2, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  _s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGACyxGAA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR, MEMORY[0x277CDF028]);
  _s7SwiftUI28BorderedProminentButtonStyleVAcA09PrimitiveeF0AAWlTm_1(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v14 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = static Font.headline.getter();
  v18 = swift_getKeyPath();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGMR) + 36));
  *v19 = v18;
  v19[1] = v17;
  v24[0] = static Color.clear.getter();
  v20 = AnyView.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA06_TraitrS0VyAA017ListRowBackgroundvQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA06_TraitrS0VyAA017ListRowBackgroundvQ0VGGMR);
  *(a1 + *(result + 36)) = v20;
  return result;
}

void closure #1 in RaceStartWorkoutButton.body.getter(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[6];
    swift_beginAccess();
    v3 = *(v1 + 16);

    v4 = v3;
    v5 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

    if (v5)
    {
      v6 = 8;
    }

    else
    {
      v6 = 15;
    }

    v7 = *(v1 + 16);
    dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

    v8 = *(v1 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

    v8(v2, v6);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    _s7SwiftUI28BorderedProminentButtonStyleVAcA09PrimitiveeF0AAWlTm_1(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

__n128 closure #2 in RaceStartWorkoutButton.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(a1 + 32);
  lazy protocol witness table accessor for type String and conformance String();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  *(a2 + 128) = v17;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  result = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  return result;
}

uint64_t _s7SwiftUI28BorderedProminentButtonStyleVAcA09PrimitiveeF0AAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA06_TraitrS0VyAA017ListRowBackgroundvQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA06_TraitrS0VyAA017ListRowBackgroundvQ0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGACyxGAA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGACyxGAA4ViewAAWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx07WorkoutB027StackedListSectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance StackedListSectionsModifier@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<UnstackedSectionSpacingModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall UIViewController.setNavigationItemForegroundColor(_:)(UIColor a1)
{
  v2 = v1;
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 navigationBar];

    v7 = [v6 standardAppearance];
    v8 = [v7 copy];

    v9 = [v8 buttonAppearance];
    v10 = [v9 normal];
    v11 = [v10 titleTextAttributes];

    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = *MEMORY[0x277D740C0];
    v20 = type metadata accessor for UIColor();
    *&v19 = a1;
    outlined init with take of Any(&v19, v18);
    v13 = a1.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v12, isUniquelyReferenced_nonNull_native);
    v15 = [v9 normal];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 setTitleTextAttributes_];

    [v8 setButtonAppearance_];
    v17 = [v2 navigationItem];
    [v17 setStandardAppearance_];
  }
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

unint64_t DataLinkWorkoutState.description.getter()
{
  v1 = 0x657669746341;
  v2 = 0x726F576E49746F4ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
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

WorkoutUI::DataLinkWorkoutState_optional __swiftcall DataLinkWorkoutState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type DataLinkWorkoutState and conformance DataLinkWorkoutState()
{
  result = lazy protocol witness table cache variable for type DataLinkWorkoutState and conformance DataLinkWorkoutState;
  if (!lazy protocol witness table cache variable for type DataLinkWorkoutState and conformance DataLinkWorkoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkWorkoutState and conformance DataLinkWorkoutState);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DataLinkWorkoutState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkWorkoutState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance DataLinkWorkoutState()
{
  v1 = 0x657669746341;
  v2 = 0x726F576E49746F4ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
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

uint64_t getEnumTagSinglePayload for DataLinkWorkoutState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataLinkWorkoutState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id one-time initialization function for shared(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for DataLinkMonitor()) init];
  static DataLinkMonitor.shared = result;
  return result;
}

id static DataLinkMonitor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static DataLinkMonitor.shared;

  return v1;
}

uint64_t (*DataLinkMonitor.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DataLinkMonitor.delegate.modify;
}

uint64_t DataLinkMonitor.delegate.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*DataLinkMonitor.analyticsDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_analyticsDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DataLinkMonitor.analyticsDelegate.modify;
}

void DataLinkMonitor.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *DataLinkMonitor.init()()
{
  v1 = v0;
  v52 = type metadata accessor for Logger();
  v2 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v48 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_analyticsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState] = 2;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutStateCancellable] = 0;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutNotificationCenter] = 0;
  v15 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_metricPlatterAnalytics;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v49 = v8;
  *&v1[v15] = static MetricPlatterAnalytics.shared;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_observers] = MEMORY[0x277D84F90];
  v16 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_healthStore;
  v17 = objc_allocWithZone(MEMORY[0x277CCD4D8]);

  *&v1[v16] = [v17 init];
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_observerQuery] = 0;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_delayedLongPressGestureMinimumDuration] = 0x4008000000000000;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_failedToEndWorkoutRetryCountMax] = 1;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_failedToEndWorkoutRetrySeconds] = 0x4008000000000000;
  static WOLog.dataLink.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20C66F000, v18, v19, "[DataLinkMonitor.init] begin", v20, 2u);
    MEMORY[0x20F30E080](v20, -1, -1);
  }

  v21 = *(v2 + 8);
  v21(v14, v52);
  v22 = [objc_allocWithZone(type metadata accessor for MetricsPublisher()) init];
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher] = v22;
  type metadata accessor for DataLinkClient();
  swift_allocObject();
  v48 = v22;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_client] = DataLinkClient.init(metricsPublisher:)();
  v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_mirroredStartOnLongPressGestureEnabled] = [objc_opt_self() isAppleInternalInstall];
  v23 = type metadata accessor for DataLinkMonitor();
  v54.receiver = v1;
  v54.super_class = v23;
  v24 = objc_msgSendSuper2(&v54, sel_init);
  v25 = *&v24[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher];
  v26 = v24;
  v27 = v25;
  MetricsPublisher.workoutStatePublisher.getter();

  type metadata accessor for WorkoutStatePublisher();
  lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  v28 = ObservableObject<>.objectWillChange.getter();

  v53 = v28;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ObservableObjectPublisher();
  v29 = Publisher<>.sink(receiveValue:)();

  *&v26[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutStateCancellable] = v29;

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of DataLinkClient.presenceDidChangeHandler.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of DataLinkClient.metricsUpdateHandler.setter();

  type metadata accessor for WorkoutNotificationCenter();
  swift_allocObject();
  *&v26[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutNotificationCenter] = WorkoutNotificationCenter.init()();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of DataLinkClient.notificationHandler.setter();

  static WOLog.dataLink.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_20C66F000, v30, v31, "[DataLinkMonitor.init] updatePresence to false", v32, 2u);
    MEMORY[0x20F30E080](v32, -1, -1);
  }

  v33 = v52;
  v21(v11, v52);
  DataLinkMonitor.updatePresence(_:)(0);
  v34 = v49;
  static WOLog.dataLink.getter();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v50;
  if (v37)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_20C66F000, v35, v36, "[DataLinkMonitor.init] activateLink", v39, 2u);
    MEMORY[0x20F30E080](v39, -1, -1);
  }

  v21(v34, v33);

  dispatch thunk of DataLinkClient.activateLink()();

  static WOLog.dataLink.getter();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 67109120;
    _os_log_impl(&dword_20C66F000, v40, v41, "[DataLinkMonitor.init] FakeDataLink: %{BOOL}d", v42, 8u);
    MEMORY[0x20F30E080](v42, -1, -1);
  }

  v21(v38, v33);
  v43 = v51;
  static WOLog.dataLink.getter();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_20C66F000, v44, v45, "[DataLinkMonitor.init] end", v46, 2u);
    MEMORY[0x20F30E080](v46, -1, -1);
  }

  v21(v43, v33);
  return v26;
}

void *closure #1 in DataLinkMonitor.init()(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v89[-v3];
  v5 = type metadata accessor for UUID();
  v101 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v89[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v89[-v9];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v99);
  v100 = &v89[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v89[-v13];
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v102 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v89[-v19];
  MEMORY[0x28223BE20](v21);
  v97 = &v89[-v22];
  MEMORY[0x28223BE20](v23);
  v25 = &v89[-v24];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;
    v93 = v20;
    v94 = v7;
    v95 = v4;
    static WOLog.dataLink.getter();
    v28 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v98 = v16;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v96 = v10;
      v33 = v32;
      v91 = swift_slowAlloc();
      v103 = v91;
      *v33 = 67109634;
      v90 = v30;
      v34 = v16;
      v35 = v15;
      MetricsPublisher.workoutStatePublisher.getter();
      v36 = WorkoutStatePublisher.workoutStarted.getter();
      v92 = v5;
      v37 = v36;

      *(v33 + 4) = v37 & 1;

      *(v33 + 8) = 2048;
      v38 = v34;
      MetricsPublisher.platterPublisher.getter();
      v39 = PlatterPublisher.metricPlatters.getter();

      v40 = *(v39 + 16);

      *(v33 + 10) = v40;

      *(v33 + 18) = 2080;
      DataLinkClient.connection.getter();
      swift_getObjectType();
      v5 = v92;
      dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
      swift_unknownObjectRelease();
      v41 = Optional.description.getter();
      v43 = v42;
      outlined destroy of UUID?(v14);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v103);

      *(v33 + 20) = v44;
      _os_log_impl(&dword_20C66F000, v29, v90, "[DataLinkMonitor] workoutStatePublisher change (workoutStarted: %{BOOL}d, metricPlatters: %ld, sessionUUID: %s)", v33, 0x1Cu);
      v45 = v91;
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x20F30E080](v45, -1, -1);
      v46 = v33;
      v10 = v96;
      MEMORY[0x20F30E080](v46, -1, -1);

      v47 = *(v38 + 8);
      v15 = v35;
      v47(v25, v35);
    }

    else
    {

      v47 = *(v16 + 8);
      v47(v25, v15);
    }

    MetricsPublisher.platterPublisher.getter();
    v48 = PlatterPublisher.metricPlatters.getter();

    v49 = *(v48 + 16);

    if (!v49)
    {
      static WOLog.dataLink.getter();
      v56 = v28;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 134217984;
        MetricsPublisher.platterPublisher.getter();
        v60 = PlatterPublisher.metricPlatters.getter();

        v61 = *(v60 + 16);

        *(v59 + 4) = v61;

        _os_log_impl(&dword_20C66F000, v57, v58, "[DataLinkMonitor] workoutStatePublisher change skipped, no metricPlatters published (metricPlatters: %ld)", v59, 0xCu);
        MEMORY[0x20F30E080](v59, -1, -1);
      }

      else
      {

        v57 = v56;
      }

      v80 = v102;
      return (v47)(v80, v15);
    }

    DataLinkClient.connection.getter();
    swift_getObjectType();
    v50 = v100;
    dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
    swift_unknownObjectRelease();
    v51 = v101;
    if ((*(v101 + 48))(v50, 1, v5) == 1)
    {
      outlined destroy of UUID?(v50);
      v52 = v97;
      static WOLog.dataLink.getter();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_20C66F000, v53, v54, "[DataLinkMonitor] workoutStatePublisher change, no mirroring session, skip updatePresence", v55, 2u);
        MEMORY[0x20F30E080](v55, -1, -1);
      }

      else
      {
      }

      v80 = v52;
      return (v47)(v80, v15);
    }

    v102 = v47;
    (*(v51 + 32))(v10, v50, v5);
    v62 = v93;
    static WOLog.dataLink.getter();
    v63 = *(v51 + 16);
    v64 = v94;
    v96 = v10;
    v63(v94, v10, v5);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v100 = v28;
      v69 = v5;
      v70 = v68;
      v103 = v68;
      *v67 = 136315138;
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v51;
      v74 = v73;
      v75 = *(v72 + 8);
      v101 = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v76 = v64;
      v77 = v75;
      v75(v76, v69);
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v74, &v103);

      *(v67 + 4) = v78;
      _os_log_impl(&dword_20C66F000, v65, v66, "[DataLinkMonitor] workoutStatePublisher change, updatePresence for mirroring sessionUUID: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      v79 = v70;
      v5 = v69;
      v28 = v100;
      MEMORY[0x20F30E080](v79, -1, -1);
      MEMORY[0x20F30E080](v67, -1, -1);
    }

    else
    {

      v81 = *(v51 + 8);
      v101 = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v82 = v64;
      v77 = v81;
      v81(v82, v5);
    }

    (v102)(v62, v15);
    v83 = type metadata accessor for TaskPriority();
    v84 = v95;
    (*(*(v83 - 8) + 56))(v95, 1, 1, v83);
    v85 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v86 = static MainActor.shared.getter();
    v87 = swift_allocObject();
    v88 = MEMORY[0x277D85700];
    v87[2] = v86;
    v87[3] = v88;
    v87[4] = v85;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v84, &async function pointer to partial apply for closure #1 in DataLinkMonitor.workoutStatePublisherDidUpdate(), v87);

    return v77(v96, v5);
  }

  return result;
}

double closure #2 in DataLinkMonitor.init()(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v20 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for DispatchQoS();
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSSortDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  v16 = v21;
  *(v15 + 24) = v13;
  *(v15 + 32) = v16;
  *(v15 + 40) = a3;
  aBlock[4] = partial apply for closure #1 in closure #2 in DataLinkMonitor.init();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_81;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v11, v8, v17);
  _Block_release(v17);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v22);

  return result;
}

uint64_t closure #1 in closure #2 in DataLinkMonitor.init()(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_20C66F000, v9, v10, "[DataLinkMonitor] Presence did change: %{BOOL}d, from presenceDidChangeHandler", v11, 8u);
    MEMORY[0x20F30E080](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    DataLinkMonitor.updatePresence(_:)(a1 & 1);
  }

  return a3();
}

void closure #3 in DataLinkMonitor.init()(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v36 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = v3;
    v17 = a1;
    MetricsPublisher.workoutStatePublisher.getter();
    v18 = WorkoutStatePublisher.workoutStarted.getter();

    if ((v18 & 1) != 0 && *(v15 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState) == 1)
    {
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v21 = static MainActor.shared.getter();
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D85700];
      v22[2] = v21;
      v22[3] = v23;
      v22[4] = v20;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #3 in DataLinkMonitor.init(), v22);
    }

    else
    {
    }

    a1 = v17;
    v3 = v16;
  }

  v24 = [objc_opt_self() sharedApplication];
  v25 = [v24 applicationState];

  if (v25)
  {
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      MetricsPublisher.platterPublisher.getter();
      v28 = PlatterPublisher.metricPlatters.getter();

      v29 = *(v28 + 16);

      if (v29)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        dispatch thunk of DataLinkClient.sessionUUID.getter();
        v30 = type metadata accessor for UUID();
        v31 = v37;
        (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
        v39 = v27[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState];
        if (*&v27[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutNotificationCenter])
        {

          v32 = dispatch thunk of WorkoutNotificationCenter.notification.getter();
        }

        else
        {
          v32 = 0;
        }

        MirrorLiveActivity.update(publisher:sessionUUID:workoutUUID:monitorState:notification:)(a1, v10, v31, &v39, v32);

        outlined destroy of UUID?(v31);
        outlined destroy of UUID?(v10);
      }

      else
      {
      }
    }
  }

  else
  {
    static WOLog.dataLink.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20C66F000, v33, v34, "[DataLinkMonitor] Metrics update received while app is active, ignoring LiveActivity update", v35, 2u);
      MEMORY[0x20F30E080](v35, -1, -1);
    }

    (*(v38 + 8))(v5, v3);
  }
}

uint64_t closure #1 in closure #3 in DataLinkMonitor.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in DataLinkMonitor.init(), v7, v6);
}

uint64_t closure #1 in closure #3 in DataLinkMonitor.init()()
{
  v32 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[11];
    DataLinkClient.connection.getter();
    swift_getObjectType();
    dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
    swift_unknownObjectRelease();
    v4 = type metadata accessor for UUID();
    v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
    outlined destroy of UUID?(v3);
    static WOLog.dataLink.getter();
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v30 = v8;
      v9 = v0[10];
      v10 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v10 = 67110146;
      *(v10 + 4) = v5 != 1;
      *(v10 + 8) = 1024;
      MetricsPublisher.workoutStatePublisher.getter();
      v11 = WorkoutStatePublisher.workoutStarted.getter();

      *(v10 + 10) = v11 & 1;

      *(v10 + 14) = 2048;
      MetricsPublisher.platterPublisher.getter();
      v12 = PlatterPublisher.metricPlatters.getter();

      v13 = *(v12 + 16);

      *(v10 + 16) = v13;

      *(v10 + 24) = 2080;
      DataLinkClient.connection.getter();
      swift_getObjectType();
      dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
      swift_unknownObjectRelease();
      v14 = Optional.description.getter();
      v16 = v15;
      outlined destroy of UUID?(v9);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v31);

      *(v10 + 26) = v17;
      *(v10 + 34) = 2080;
      if (v6[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState] > 1u)
      {
        if (v6[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState] == 2)
        {
          v18 = 0xEC00000074756F6BLL;
          v19 = 0x726F576E49746F4ELL;
        }

        else
        {
          v19 = 0xD000000000000012;
          v18 = 0x800000020CB9D220;
        }
      }

      else if (v6[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState])
      {
        v18 = 0x800000020CB9D240;
        v19 = 0xD00000000000001ELL;
      }

      else
      {
        v18 = 0xE600000000000000;
        v19 = 0x657669746341;
      }

      v24 = v0[7];
      v23 = v0[8];
      v25 = v0[6];
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v31);

      *(v10 + 36) = v26;
      _os_log_impl(&dword_20C66F000, v7, v30, "[DataLinkMonitor] metricsUpdateHandler reconnection support, updatePresence to %{BOOL}d (workoutStarted: %{BOOL}d, metricPlatters: %ld, sessionUUID: %s, state: %s)", v10, 0x2Cu);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v29, -1, -1);
      MEMORY[0x20F30E080](v10, -1, -1);

      (*(v24 + 8))(v23, v25);
    }

    else
    {
      v21 = v0[7];
      v20 = v0[8];
      v22 = v0[6];

      (*(v21 + 8))(v20, v22);
    }

    DataLinkMonitor.updatePresence(_:)(v5 != 1);
  }

  v27 = v0[1];

  return v27();
}

double closure #4 in DataLinkMonitor.init()(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v33 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v34[0] = v13;
    *v12 = 136315138;
    v14 = v8;
    v32 = v8;
    v15 = v14;
    v16 = [v14 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v4;
    v19 = v18;

    v8 = v32;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v34);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_20C66F000, v9, v10, "Notification received: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F30E080](v13, -1, -1);
    MEMORY[0x20F30E080](v12, -1, -1);

    (*(v5 + 8))(v7, v31);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_delegate;
    v23 = Strong;
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    v25 = *(v22 + 8);

    if (v24)
    {
      ObjectType = swift_getObjectType();
      (*(v25 + 16))(v8, ObjectType, v25);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v29 = *(v27 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutNotificationCenter);
    v30 = v27;

    if (v29)
    {
      dispatch thunk of WorkoutNotificationCenter.add(_:)();
    }
  }

  return result;
}

id DataLinkMonitor.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "[DataLinkMonitor.deinit] Destroying the DataLinkMonitor", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_observers;
  swift_beginAccess();
  v10 = *&v1[v9];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v10 + 32;

    do
    {
      outlined init with copy of Any(v13, v20);
      v14 = [v12 defaultCenter];
      __swift_project_boxed_opaque_existential_0(v20, v20[3]);
      v15 = _bridgeAnythingToObjectiveC<A>(_:)();
      __swift_destroy_boxed_opaque_existential_0(v20);
      [v14 removeObserver_];

      swift_unknownObjectRelease();
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  v16 = type metadata accessor for DataLinkMonitor();
  v19.receiver = v1;
  v19.super_class = v16;
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

uint64_t closure #1 in DataLinkMonitor.workoutStatePublisherDidUpdate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DataLinkMonitor.workoutStatePublisherDidUpdate(), v7, v6);
}

uint64_t closure #1 in DataLinkMonitor.workoutStatePublisherDidUpdate()()
{
  v29 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[11];
    DataLinkClient.connection.getter();
    swift_getObjectType();
    dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
    swift_unknownObjectRelease();
    v4 = type metadata accessor for UUID();
    v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
    outlined destroy of UUID?(v3);
    static WOLog.dataLink.getter();
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v24 = v8;
      v9 = v0[10];
      v25 = v0[7];
      v26 = v0[6];
      v27 = v0[8];
      v10 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v10 = 67109890;
      *(v10 + 4) = v5 != 1;
      *(v10 + 8) = 1024;
      MetricsPublisher.workoutStatePublisher.getter();
      v11 = WorkoutStatePublisher.workoutStarted.getter();

      *(v10 + 10) = v11 & 1;

      *(v10 + 14) = 2048;
      MetricsPublisher.platterPublisher.getter();
      v12 = PlatterPublisher.metricPlatters.getter();

      v13 = *(v12 + 16);

      *(v10 + 16) = v13;

      *(v10 + 24) = 2080;
      DataLinkClient.connection.getter();
      swift_getObjectType();
      dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
      swift_unknownObjectRelease();
      v14 = Optional.description.getter();
      v16 = v15;
      outlined destroy of UUID?(v9);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v28);

      *(v10 + 26) = v17;
      _os_log_impl(&dword_20C66F000, v7, v24, "[DataLinkMonitor] workoutStatePublisherDidUpdate, updatePresence to %{BOOL}d, (workoutStarted: %{BOOL}d, metricPlatters: %ld, sessionUUID: %s)", v10, 0x22u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F30E080](v23, -1, -1);
      MEMORY[0x20F30E080](v10, -1, -1);

      (*(v25 + 8))(v27, v26);
    }

    else
    {
      v19 = v0[7];
      v18 = v0[8];
      v20 = v0[6];

      (*(v19 + 8))(v18, v20);
    }

    DataLinkMonitor.updatePresence(_:)(v5 != 1);
  }

  v21 = v0[1];

  return v21();
}

uint64_t DataLinkMonitor.addObserver(_:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for DataLinkCommand();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = [objc_opt_self() defaultCenter];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v7 + 32))(v12 + v11, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = partial apply for closure #1 in DataLinkMonitor.addObserver(_:command:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_93;
  v13 = _Block_copy(aBlock);

  v14 = [v9 addObserverForName:a1 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);

  result = swift_getObjectType();
  a3[3] = result;
  *a3 = v14;
  return result;
}

void closure #1 in DataLinkMonitor.addObserver(_:command:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DataLinkCommand();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    dispatch thunk of DataLinkClient.send(command:acknowledged:)();
  }
}

uint64_t closure #1 in closure #1 in DataLinkMonitor.addObserver(_:command:)(char a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DataLinkCommand();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Logger();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = (v7 + 16);
  if (a1)
  {
    static WOLog.dataLink.getter();
    (*v19)(v12, a3, v6);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46 = v23;
      *v22 = 136315138;
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048], MEMORY[0x277D7E050]);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v7 + 8))(v12, v6);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v46);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_20C66F000, v20, v21, "Did send command %s successfully", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F30E080](v23, -1, -1);
      MEMORY[0x20F30E080](v22, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    return (*(v43 + 8))(v18, v44);
  }

  else
  {
    static WOLog.dataLink.getter();
    (*v19)(v9, a3, v6);
    v28 = a2;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v31 = 136315394;
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048], MEMORY[0x277D7E050]);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v7 + 8))(v9, v6);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v46);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v45 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v36 = Optional.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v46);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_20C66F000, v29, v30, "We sent command %s and got back error %s", v31, 0x16u);
      v39 = v42;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v39, -1, -1);
      MEMORY[0x20F30E080](v31, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    return (*(v43 + 8))(v15, v44);
  }
}

uint64_t DataLinkMonitor.addNotificationCenterObserver(_:command:)(uint64_t a1, uint64_t a2)
{
  DataLinkMonitor.addObserver(_:command:)(a1, a2, v9);
  v3 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_observers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + v3) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  outlined init with take of Any(v9, &v4[32 * v7 + 32]);
  *(v2 + v3) = v4;
  return swift_endAccess();
}

Swift::Void __swiftcall DataLinkMonitor.endMirroring()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v42 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataLinkCommand();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v43 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  (*(v6 + 104))(&v34 - v14, *MEMORY[0x277D7E008], v5, v13);
  static WOLog.dataLink.getter();
  v40 = *(v6 + 16);
  v40(v10, v15, v5);
  v41 = v4;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v2;
    v19 = v18;
    v35 = v18;
    v36 = swift_slowAlloc();
    v45 = v36;
    *v19 = 136315138;
    lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048], MEMORY[0x277D7E050]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v1;
    v22 = v21;
    v23 = *(v6 + 8);
    v39 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v10, v5);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v45);

    v25 = v35;
    *(v35 + 4) = v24;
    _os_log_impl(&dword_20C66F000, v16, v17, "[mirrored] endMirroring: sendCommand is sending (%s)", v25, 0xCu);
    v26 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x20F30E080](v26, -1, -1);
    MEMORY[0x20F30E080](v25, -1, -1);

    v27 = v23;
    (*(v42 + 8))(v41, v37);
  }

  else
  {

    v27 = *(v6 + 8);
    v39 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v10, v5);
    (*(v42 + 8))(v41, v2);
  }

  static Double.machTimestamp.getter();
  v29 = v28;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v44;
  v40(v44, v15, v5);
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v29;
  (*(v6 + 32))(v33 + v32, v31, v5);

  dispatch thunk of DataLinkClient.send(command:acknowledged:)();

  v27(v15, v5);
}

void closure #1 in DataLinkMonitor.endMirroring()(int a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v50 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for DataLinkCommand();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v49 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v48 = v15;
    static Double.machTimestamp.getter();
    v21 = v20;
    static WOLog.dataLink.getter();
    (*(v12 + 16))(v14, a4, v11);
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v47 = v10;
      v26 = v25;
      v45 = swift_slowAlloc();
      v52 = v45;
      *v26 = 136315906;
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048], MEMORY[0x277D7E050]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v19;
      v29 = v28;
      (*(v12 + 8))(v14, v11);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v52);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v21 - a5;
      *(v26 + 22) = 1024;
      v31 = v50;
      *(v26 + 24) = v50 & 1;
      *(v26 + 28) = 2080;
      v51 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v32 = Optional.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v52);

      *(v26 + 30) = v34;
      v19 = v46;
      _os_log_impl(&dword_20C66F000, v23, v24, "[mirrored] endMirroring: sendCommand completion (%s) with roundtripTime: %f (success: %{BOOL}d, error %s)", v26, 0x26u);
      v35 = v45;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v35, -1, -1);
      v36 = v26;
      v10 = v47;
      MEMORY[0x20F30E080](v36, -1, -1);

      (*(v49 + 8))(v17, v48);
      if (v31)
      {
        goto LABEL_7;
      }
    }

    else
    {

      (*(v12 + 8))(v14, v11);
      (*(v49 + 8))(v17, v48);
      if (v50)
      {
LABEL_7:

        return;
      }
    }

    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v39 = static MainActor.shared.getter();
    v40 = v19;
    v41 = swift_allocObject();
    v42 = MEMORY[0x277D85700];
    v41[2] = v39;
    v41[3] = v42;
    v41[4] = v38;

    v43 = v41;
    v19 = v40;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in DataLinkMonitor.endMirroring(), v43);

    goto LABEL_7;
  }
}

uint64_t closure #1 in closure #1 in DataLinkMonitor.endMirroring()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DataLinkMonitor.endMirroring(), v7, v6);
}

uint64_t closure #1 in closure #1 in DataLinkMonitor.endMirroring()()
{

  static WOLog.dataLink.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20C66F000, v1, v2, "[mirrored] endMirroring: failed - updatePresence(false)", v3, 2u);
    MEMORY[0x20F30E080](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    DataLinkMonitor.updatePresence(_:)(0);
  }

  v9 = v0[1];

  return v9();
}

void DataLinkMonitor.endWorkout(retryCount:)(uint64_t a1)
{
  v3 = type metadata accessor for DataLinkCommand();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  Date.init()();
  (*(v9 + 16))(v11, v14, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  (*(v9 + 32))(v16 + v15, v11, v8);
  v17 = v1;
  DataLinkMonitor.startObservingWorkouts(completion:)(partial apply for closure #1 in DataLinkMonitor.startMonitoringHealthDatabaseForWorkoutSaveTime(), v16);

  (*(v9 + 8))(v14, v8);
  static WOLog.dataLink.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v17;
    v21 = v20;
    v22 = swift_slowAlloc();
    v49 = v22;
    *v21 = 136315138;
    v41 = v7;
    v23 = *MEMORY[0x277D7E018];
    v43 = a1;
    v24 = v46;
    v25 = v47;
    v26 = v48;
    (*(v47 + 104))(v46, v23, v48);
    lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048], MEMORY[0x277D7E050]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = v25;
    a1 = v43;
    (*(v30 + 8))(v24, v26);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v49);
    v32 = v23;

    *(v21 + 4) = v31;
    _os_log_impl(&dword_20C66F000, v18, v19, "[mirrored] endWorkout: sendCommand is sending (%s)", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x20F30E080](v22, -1, -1);
    MEMORY[0x20F30E080](v21, -1, -1);

    (*(v44 + 8))(v41, v45);
  }

  else
  {

    (*(v44 + 8))(v7, v45);
    v32 = *MEMORY[0x277D7E018];
  }

  static Double.machTimestamp.getter();
  v34 = v33;
  v36 = v46;
  v35 = v47;
  v37 = v48;
  (*(v47 + 104))(v46, v32, v48);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v34;
  v39[4] = a1;

  dispatch thunk of DataLinkClient.send(command:acknowledged:)();

  (*(v35 + 8))(v36, v37);
}

void closure #1 in DataLinkMonitor.endWorkout(retryCount:)(int a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v115 = a4;
  LODWORD(v114) = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v110 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v108 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DispatchQoS();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DispatchTime();
  v105 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v103 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v97 - v12;
  v13 = type metadata accessor for DataLinkCommand();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v102 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v97 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v97 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v99 = v7;
    v101 = v22;
    static Double.machTimestamp.getter();
    v29 = v28;
    static WOLog.dataLink.getter();
    v30 = a2;
    v31 = v27;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v116 = v31;
    v100 = v33;
    v34 = os_log_type_enabled(v32, v33);
    v35 = &unk_27C7EA000;
    v111 = v17;
    v112 = v18;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v118 = v98;
      *v36 = 136316418;
      (*(v14 + 104))(v16, *MEMORY[0x277D7E018], v13);
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048], MEMORY[0x277D7E050]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v14 + 8))(v16, v13);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v118);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2048;
      *(v36 + 14) = v29 - a5;
      *(v36 + 22) = 1024;
      v41 = v114;
      *(v36 + 24) = v114 & 1;
      *(v36 + 28) = 2080;
      aBlock = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v42 = Optional.description.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v118);

      *(v36 + 30) = v44;
      *(v36 + 38) = 2080;
      v45 = 0xE000000000000000;
      v46 = v115;
      if (v115 < 1)
      {
        v48 = 0;
      }

      else
      {
        aBlock = 0;
        v120 = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        aBlock = 0x6120797274657220;
        v120 = 0xEF2074706D657474;
        v117 = v46;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x20F30BC00](v47);

        MEMORY[0x20F30BC00](44, 0xE100000000000000);
        v48 = aBlock;
        v45 = v120;
      }

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v45, &v118);

      *(v36 + 40) = v50;
      *(v36 + 48) = 2080;
      v51 = *(v116 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState);
      v52 = v112;
      if (v51 > 1)
      {
        if (v51 == 2)
        {
          v53 = 0x726F576E49746F4ELL;
          v54 = 0xEC00000074756F6BLL;
        }

        else
        {
          v53 = 0xD000000000000012;
          v54 = 0x800000020CB9D220;
        }
      }

      else if (*(v116 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState))
      {
        v54 = 0x800000020CB9D240;
        v53 = 0xD00000000000001ELL;
      }

      else
      {
        v53 = 0x657669746341;
        v54 = 0xE600000000000000;
      }

      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v118);

      *(v36 + 50) = v55;
      _os_log_impl(&dword_20C66F000, v32, v100, "[mirrored] endWorkout: sendCommand completion (%s) with roundtripTime: %f (success: %{BOOL}d, error %s),%s state: %s", v36, 0x3Au);
      v56 = v98;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v56, -1, -1);
      MEMORY[0x20F30E080](v36, -1, -1);

      v49 = *(v52 + 8);
      v17 = v111;
      v49(v25, v111);
      v35 = &unk_27C7EA000;
    }

    else
    {

      v49 = *(v18 + 8);
      v49(v25, v17);
      v46 = v115;
      v41 = v114;
    }

    v57 = v35[302];
    v58 = v116;
    v59 = v57[v116];
    if (v41)
    {
      if (v59 != 3)
      {

        return;
      }

      v57[v116] = 0;
      v60 = v102;
      static WOLog.dataLink.getter();
      v61 = v58;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v62, v63))
      {

        v91 = v60;
        v92 = v17;
LABEL_47:
        v49(v91, v92);
        return;
      }

      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136315394;
      v66 = 0x800000020CB9D220;
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000020CB9D220, &aBlock);

      *(v64 + 4) = v67;
      *(v64 + 12) = 2080;
      v68 = v57[v58];
      if (v68 > 1)
      {
        v69 = v102;
        if (v68 == 2)
        {
          v70 = 0x726F576E49746F4ELL;
          v66 = 0xEC00000074756F6BLL;
        }

        else
        {
          v70 = 0xD000000000000012;
        }
      }

      else
      {
        v69 = v102;
        if (v68)
        {
          v66 = 0x800000020CB9D240;
          v70 = 0xD00000000000001ELL;
        }

        else
        {
          v70 = 0x657669746341;
          v66 = 0xE600000000000000;
        }
      }

      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v66, &aBlock);

      *(v64 + 14) = v96;
      _os_log_impl(&dword_20C66F000, v62, v63, "[mirrored] endWorkout: success, changed state from %s to %s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v65, -1, -1);
      MEMORY[0x20F30E080](v64, -1, -1);

      v91 = v69;
    }

    else
    {
      v57[v116] = 3;
      v71 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        return;
      }

      v100 = v59;
      v102 = v57;
      v115 = v49;
      type metadata accessor for NSSortDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v72 = static OS_dispatch_queue.main.getter();
      v73 = v103;
      static DispatchTime.now()();
      v74 = v104;
      + infix(_:_:)();
      v114 = *(v105 + 8);
      v114(v73, v113);
      v75 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v76 = swift_allocObject();
      *(v76 + 16) = v75;
      *(v76 + 24) = v71;
      v105 = v71;
      v123 = partial apply for closure #1 in closure #1 in DataLinkMonitor.endWorkout(retryCount:);
      v124 = v76;
      aBlock = MEMORY[0x277D85DD0];
      v120 = 1107296256;
      v121 = thunk for @escaping @callee_guaranteed () -> ();
      v122 = &block_descriptor_53_0;
      v77 = _Block_copy(&aBlock);

      v78 = v106;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v79 = v108;
      v80 = v99;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F30C1A0](v74, v78, v79, v77);
      _Block_release(v77);

      (*(v110 + 8))(v79, v80);
      (*(v107 + 8))(v78, v109);
      v114(v74, v113);
      v81 = v101;
      static WOLog.dataLink.getter();
      v82 = v58;
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v83, v84))
      {

        (v115)(v81, v111);
        return;
      }

      v85 = 0x657669746341;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      aBlock = v87;
      *v86 = 134218754;
      *(v86 + 4) = v105;
      *(v86 + 12) = 2048;
      *(v86 + 14) = 0x4008000000000000;
      *(v86 + 22) = 2080;
      v49 = v115;
      if (v100 > 1)
      {
        v88 = v102;
        if (v100 == 2)
        {
          v90 = 0x726F576E49746F4ELL;
          v89 = 0xEC00000074756F6BLL;
        }

        else
        {
          v90 = 0xD000000000000012;
          v89 = 0x800000020CB9D220;
        }
      }

      else
      {
        v88 = v102;
        if (v100)
        {
          v89 = 0x800000020CB9D240;
          v90 = 0xD00000000000001ELL;
        }

        else
        {
          v89 = 0xE600000000000000;
          v90 = 0x657669746341;
        }
      }

      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v89, &aBlock);

      *(v86 + 24) = v93;
      *(v86 + 32) = 2080;
      if (v88[v116] > 1u)
      {
        if (v88[v116] == 2)
        {
          v85 = 0x726F576E49746F4ELL;
          v94 = 0xEC00000074756F6BLL;
        }

        else
        {
          v85 = 0xD000000000000012;
          v94 = 0x800000020CB9D220;
        }
      }

      else if (v88[v116])
      {
        v94 = 0x800000020CB9D240;
        v85 = 0xD00000000000001ELL;
      }

      else
      {
        v94 = 0xE600000000000000;
      }

      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v94, &aBlock);

      *(v86 + 34) = v95;
      _os_log_impl(&dword_20C66F000, v83, v84, "[mirrored] endWorkout: failed, retry attempt %ld scheduled in %f seconds, state changed from %s to %s", v86, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v87, -1, -1);
      MEMORY[0x20F30E080](v86, -1, -1);

      v91 = v101;
    }

    v92 = v111;
    goto LABEL_47;
  }
}