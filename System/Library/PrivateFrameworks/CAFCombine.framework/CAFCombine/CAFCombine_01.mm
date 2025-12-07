id outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x245D0A4C0](a1);

  v5 = [a3 registeredForAccessory_];

  return v5;
}

uint64_t type metadata accessor for CAFCarObservable(uint64_t a1)
{
  result = type metadata singleton initialization cache for CAFCarObservable;
  if (!type metadata singleton initialization cache for CAFCarObservable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFCar and conformance CAFCar()
{
  result = lazy protocol witness table cache variable for type CAFCar and conformance CAFCar;
  if (!lazy protocol witness table cache variable for type CAFCar and conformance CAFCar)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFCar, 0x277CF8398);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFCar and conformance CAFCar);
  }

  return result;
}

uint64_t type metadata accessor for CAFVehicleUnits(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t instantiation function for generic protocol witness table for CAFCarObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFCarObservable and conformance CAFCarObservable(&lazy protocol witness table cache variable for type CAFCarObservable and conformance CAFCarObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCarObservable and conformance CAFCarObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFCarObservable(255);
    OUTLINED_FUNCTION_23_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for CAFCarObservable(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAudioSettings?>, &_sSo16CAFAudioSettingsCSgMd, &_sSo16CAFAudioSettingsCSgMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAutomakerApps?>, &_sSo16CAFAutomakerAppsCSgMd, &_sSo16CAFAutomakerAppsCSgMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAutomakerExteriorCamera?>, &_sSo26CAFAutomakerExteriorCameraCSgMd, &_sSo26CAFAutomakerExteriorCameraCSgMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFAutomakerInputStreams]>, &_sSaySo24CAFAutomakerInputStreamsCGMd, &_sSaySo24CAFAutomakerInputStreamsCGMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAutomakerNotificationHistory?>, &_sSo31CAFAutomakerNotificationHistoryCSgMd, &_sSo31CAFAutomakerNotificationHistoryCSgMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFAutomakerNotifications]>, &_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAutomakerOverlays?>, &_sSo20CAFAutomakerOverlaysCSgMd, &_sSo20CAFAutomakerOverlaysCSgMR);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFAutomakerRequestContent]>, &_sSaySo26CAFAutomakerRequestContentCGMd, &_sSaySo26CAFAutomakerRequestContentCGMR);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAutomakerSettings?>, &_sSo20CAFAutomakerSettingsCSgMd, &_sSo20CAFAutomakerSettingsCSgMR);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFCharging?>, &_sSo11CAFChargingCSgMd, &_sSo11CAFChargingCSgMR);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFClimate?>, &_sSo10CAFClimateCSgMd, &_sSo10CAFClimateCSgMR);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFClosure?>, &_sSo10CAFClosureCSgMd, &_sSo10CAFClosureCSgMR);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFDriveState?>, &_sSo13CAFDriveStateCSgMd, &_sSo13CAFDriveStateCSgMR);
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFDriverAssistance]>, &_sSaySo19CAFDriverAssistanceCGMd, &_sSaySo19CAFDriverAssistanceCGMR);
                              if (v15 <= 0x3F)
                              {
                                type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFElectricEngine?>, &_sSo17CAFElectricEngineCSgMd, &_sSo17CAFElectricEngineCSgMR);
                                if (v16 <= 0x3F)
                                {
                                  type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFEnvironmentalConditions?>, &_sSo26CAFEnvironmentalConditionsCSgMd, &_sSo26CAFEnvironmentalConditionsCSgMR);
                                  if (v17 <= 0x3F)
                                  {
                                    type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFFuel?>, &_sSo7CAFFuelCSgMd, &_sSo7CAFFuelCSgMR);
                                    if (v18 <= 0x3F)
                                    {
                                      type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFHighVoltageBattery?>, &_sSo21CAFHighVoltageBatteryCSgMd, &_sSo21CAFHighVoltageBatteryCSgMR);
                                      if (v19 <= 0x3F)
                                      {
                                        type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFIndicators?>, &_sSo13CAFIndicatorsCSgMd, &_sSo13CAFIndicatorsCSgMR);
                                        if (v20 <= 0x3F)
                                        {
                                          type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFInternalCombustionEngine?>, &_sSo27CAFInternalCombustionEngineCSgMd, &_sSo27CAFInternalCombustionEngineCSgMR);
                                          if (v21 <= 0x3F)
                                          {
                                            type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFLighting?>, &_sSo11CAFLightingCSgMd, &_sSo11CAFLightingCSgMR);
                                            if (v22 <= 0x3F)
                                            {
                                              type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFMedia?>, &_sSo8CAFMediaCSgMd, &_sSo8CAFMediaCSgMR);
                                              if (v23 <= 0x3F)
                                              {
                                                type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFNavigation?>, &_sSo13CAFNavigationCSgMd, &_sSo13CAFNavigationCSgMR);
                                                if (v24 <= 0x3F)
                                                {
                                                  type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFNowPlayingInformation?>, &_sSo24CAFNowPlayingInformationCSgMd, &_sSo24CAFNowPlayingInformationCSgMR);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFPairedDevices?>, &_sSo16CAFPairedDevicesCSgMd, &_sSo16CAFPairedDevicesCSgMR);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFSeat?>, &_sSo7CAFSeatCSgMd, &_sSo7CAFSeatCSgMR);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFStatusIndicators?>, &_sSo19CAFStatusIndicatorsCSgMd, &_sSo19CAFStatusIndicatorsCSgMR);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFTestingUseOnly]>, &_sSaySo17CAFTestingUseOnlyCGMd, &_sSaySo17CAFTestingUseOnlyCGMR);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFTire?>, &_sSo7CAFTireCSgMd, &_sSo7CAFTireCSgMR);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFTripComputer?>, &_sSo15CAFTripComputerCSgMd, &_sSo15CAFTripComputerCSgMR);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFUIControl]>, &_sSaySo12CAFUIControlCGMd, &_sSaySo12CAFUIControlCGMR);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFVehicleMotion]>, &_sSaySo16CAFVehicleMotionCGMd, &_sSaySo16CAFVehicleMotionCGMR);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFVehicleResources?>, &_sSo19CAFVehicleResourcesCSgMd, &_sSo19CAFVehicleResourcesCSgMR);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFVehicleUnits]>, &_sSaySo15CAFVehicleUnitsCGMd, &_sSaySo15CAFVehicleUnitsCGMR);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        swift_updateClassMetadata2();
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
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

void type metadata accessor for Published<CAFAudioSettings?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_23_0();
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1)
{

  return Published.projectedValue.setter();
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t a1)
{

  return Published.init(initialValue:)();
}

uint64_t OUTLINED_FUNCTION_25_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v4 + 14) = a1;
  *(v4 + 22) = 2080;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &a2);
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, ...)
{

  return static Published.subscript.setter();
}

void *OUTLINED_FUNCTION_29_0(uint64_t a1, uint64_t a2, ...)
{

  return static Published.subscript.getter();
}

void OUTLINED_FUNCTION_31_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1, uint64_t a2)
{

  return swift_getKeyPath();
}

void CAFPositionManager.driverSeat.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_1();
  v40 = v3;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  OUTLINED_FUNCTION_30();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  v10 = v9 - v8;
  CAFPositionManager.layoutKeys.getter(v11, v12);
  v14 = v13;
  v15 = [v2 car];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 rightHandDrive];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13CarAssetUtils19CAUVehicleLayoutKeyOGMd, &_ss23_ContiguousArrayStorageCy13CarAssetUtils19CAUVehicleLayoutKeyOGMR);
    v18 = *(v6 + 72);
    v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v20 = swift_allocObject();
    v21 = v20;
    *(v20 + 16) = xmmword_2422F2490;
    v37 = v6;
    v24 = *(v6 + 104);
    v23 = v6 + 104;
    v22 = v24;
    v25 = MEMORY[0x277CF8838];
    v26 = v20 + v19;
    if (!v17)
    {
      v25 = MEMORY[0x277CF8810];
    }

    v22(v20 + v19, *v25, v4);
    v22(v26 + v18, *MEMORY[0x277CF87E8], v4);
    v27 = 0;
    v28 = *(v21 + 16);
    v29 = (v23 - 88);
    v38 = (v23 - 96);
    v41 = v14 + v19;
    v30 = v14;
    v39 = v28;
    while (v27 != v28)
    {
      v31 = v27 + 1;
      (*v29)(v10, v26 + v18 * v27, v4);
      v32 = v30;
      v33 = *(v30 + 16) + 1;
      v34 = v41;
      while (--v33)
      {
        lazy protocol witness table accessor for type CAUVehicleLayoutKey and conformance CAUVehicleLayoutKey();
        v34 += v18;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {

          v35 = v40;
          (*(v37 + 32))(v40, v10, v4);
          v36 = 0;
          goto LABEL_11;
        }
      }

      (*v38)(v10, v4);
      v27 = v31;
      v30 = v32;
      v28 = v39;
    }

    v36 = 1;
    v35 = v40;
LABEL_11:
    __swift_storeEnumTagSinglePayload(v35, v36, 1, v4);
    OUTLINED_FUNCTION_32();
  }

  else
  {
    __break(1u);
  }
}

void CAFPositionManager.services(for:includeSharedServices:requireSpecificServices:filter:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_1();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13CarAssetUtils19CAUVehicleLayoutKeyOGMd, &_ss23_ContiguousArrayStorageCy13CarAssetUtils19CAUVehicleLayoutKeyOGMR);
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  OUTLINED_FUNCTION_30();
  v8 = v7;
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2422F24A0;
  (*(v8 + 16))(v10 + v9, v5, v6);
  CAFPositionManager.services(for:includeSharedServices:requireSpecificServices:filter:)(v10, v3);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_32();
}

{
  OUTLINED_FUNCTION_13_1();
  v116 = v2;
  v4 = v3;
  v6 = v5;
  v100 = v7;
  v101 = v8;
  v10 = v9;
  v115 = type metadata accessor for CAUVehicleLayoutKey();
  OUTLINED_FUNCTION_30();
  v12 = MEMORY[0x28223BE20](v11);
  v103 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v113 = &v100 - v15;
  v16 = *(v10 + 16);
  v105 = v4;
  v114 = v6;
  v117 = v16;
  v104 = v14;
  v102 = v10;
  if (!v16)
  {
    v120 = MEMORY[0x277D84F90];
LABEL_47:
    v56 = v120;
    v122 = v120;
    if (v6)
    {
      v121[0] = MEMORY[0x277D84F90];
      v57 = specialized Array._getCount()();
      outlined copy of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v6, v4);

      for (i = 0; v57 != i; ++i)
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x245D0A790](i, v120);
        }

        else
        {
          if (i >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v59 = *(v120 + 8 * i + 32);
        }

        v60 = v59;
        if (__OFADD__(i, 1))
        {
          goto LABEL_125;
        }

        if (v6(v59))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }
      }

      outlined consume of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v6, v4);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v6, v4);
      v120 = v121[0];
      v122 = v121[0];
    }

    v61 = v102;
    if ((v101 & 1) != 0 && (specialized Array._getCount()() || (v100 & 1) == 0))
    {
      v62 = MEMORY[0x277D84F90];
      if (v117)
      {
        v63 = 0;
        v118 = *(v104 + 16);
        v113 = (v61 + ((*(v104 + 80) + 32) & ~*(v104 + 80)));
        v64 = *(v104 + 72);
        v111 = (v104 + 8);
        v112 = v64;
        v65 = &_sSaySo10CAFServiceCGMd;
        v104 += 16;
        while (1)
        {
          v66 = v65;
          v67 = v103;
          v68 = v115;
          (v118)(v103, &v113[v112 * v63], v115);
          CAFPositionManager.sharedServices(for:)(v67);
          v70 = v69;
          (*v111)(v67, v68);
          if (v70 >> 62)
          {
            if (v70 < 0)
            {
              v92 = v70;
            }

            else
            {
              v92 = v70 & 0xFFFFFFFFFFFFFF8;
            }

            v71 = MEMORY[0x245D0A870](v92);
          }

          else
          {
            v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v72 = v62 >> 62;
          if (v62 >> 62)
          {
            if (v62 < 0)
            {
              v93 = v62;
            }

            else
            {
              v93 = v62 & 0xFFFFFFFFFFFFFF8;
            }

            v73 = MEMORY[0x245D0A870](v93);
          }

          else
          {
            v73 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v74 = v73 + v71;
          if (__OFADD__(v73, v71))
          {
            goto LABEL_131;
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v120 = v63;
          if (isUniquelyReferenced_nonNull_bridgeObject)
          {
            break;
          }

          if (v72)
          {
            goto LABEL_75;
          }

LABEL_79:
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v76 = v62 & 0xFFFFFFFFFFFFFF8;
LABEL_80:
          v78 = *(v76 + 16);
          v79 = (*(v76 + 24) >> 1) - v78;
          v80 = v76 + 8 * v78;
          v119 = v76;
          if (v70 >> 62)
          {
            if (v70 < 0)
            {
              v82 = v70;
            }

            else
            {
              v82 = v70 & 0xFFFFFFFFFFFFFF8;
            }

            v83 = MEMORY[0x245D0A870](v82);
            if (!v83)
            {
LABEL_97:

              v65 = v66;
              if (v71 > 0)
              {
                goto LABEL_132;
              }

              goto LABEL_98;
            }

            v84 = v83;
            v85 = MEMORY[0x245D0A870](v82);
            if (v79 < v85)
            {
              goto LABEL_136;
            }

            if (v84 < 1)
            {
              goto LABEL_138;
            }

            v108 = v85;
            v109 = v71;
            v110 = v62;
            v65 = v66;
            lazy protocol witness table accessor for type [CAFService] and conformance [A](&lazy protocol witness table cache variable for type [CAFService] and conformance [A], v66, &_sSaySo10CAFServiceCGMR);
            for (j = 0; j != v84; ++j)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v65, &_sSaySo10CAFServiceCGMR);
              v87 = specialized protocol witness for Collection.subscript.read in conformance [A](v121, j, v70);
              v89 = *v88;
              (v87)(v121, 0);
              *(v80 + 32 + 8 * j) = v89;
              v65 = v66;
            }

            v6 = v114;
            v71 = v109;
            v62 = v110;
            v81 = v108;
          }

          else
          {
            v81 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v81)
            {
              goto LABEL_97;
            }

            if (v79 < v81)
            {
              goto LABEL_137;
            }

            type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFService, 0x277CF8640);
            swift_arrayInitWithCopy();
            v65 = v66;
          }

          if (v81 < v71)
          {
            goto LABEL_132;
          }

          if (v81 > 0)
          {
            v90 = *(v119 + 16);
            v34 = __OFADD__(v90, v81);
            v91 = v90 + v81;
            if (v34)
            {
              goto LABEL_135;
            }

            *(v119 + 16) = v91;
          }

LABEL_98:
          v63 = v120 + 1;
          if ((v120 + 1) == v117)
          {
            goto LABEL_108;
          }
        }

        if (!v72)
        {
          v76 = v62 & 0xFFFFFFFFFFFFFF8;
          if (v74 <= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        }

LABEL_75:
        if (v62 < 0)
        {
          v77 = v62;
        }

        else
        {
          v77 = v62 & 0xFFFFFFFFFFFFFF8;
        }

        MEMORY[0x245D0A870](v77);
        goto LABEL_79;
      }

LABEL_108:
      if (v6)
      {
        v121[0] = MEMORY[0x277D84F90];
        v94 = specialized Array._getCount()();
        v95 = v62;
        v96 = v105;
        outlined copy of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v6, v105);

        for (k = 0; v94 != k; ++k)
        {
          if ((v95 & 0xC000000000000001) != 0)
          {
            v98 = MEMORY[0x245D0A790](k, v95);
          }

          else
          {
            if (k >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_134;
            }

            v98 = *(v95 + 8 * k + 32);
          }

          v99 = v98;
          if (__OFADD__(k, 1))
          {
            goto LABEL_133;
          }

          if (v6(v98))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }
        }

        outlined consume of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v6, v96);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v6, v96);
        v62 = v121[0];
      }

      specialized Array.append<A>(contentsOf:)(v62);
      v120 = v122;
    }

    OUTLINED_FUNCTION_32();
    return;
  }

  v17 = 0;
  v19 = *(v14 + 16);
  v18 = v14 + 16;
  v110 = v10 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v111 = v19;
  v109 = (v18 - 8);
  v120 = MEMORY[0x277D84F90];
  v112 = v18;
  v108 = *(v18 + 56);
  v20 = &_sSaySo10CAFServiceCGMd;
  v21 = &_sSaySo10CAFServiceCGMR;
  while (1)
  {
    v22 = v21;
    v23 = v20;
    v24 = v113;
    v25 = v115;
    (v111)(v113, v110 + v108 * v17, v115);
    v26 = CAUVehicleLayoutKey.rawValue.getter();
    v27 = MEMORY[0x245D0A4C0](v26);

    v28 = [v116 servicesForVehicleLayoutKey_];

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFService, 0x277CF8640);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    (*v109)(v24, v25);
    if (v29 >> 62)
    {
      v54 = v29 < 0 ? v29 : v29 & 0xFFFFFFFFFFFFFF8;
      v30 = MEMORY[0x245D0A870](v54);
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v120;
    v32 = v120 >> 62;
    if (v120 >> 62)
    {
      v55 = v120 < 0 ? v120 : v120 & 0xFFFFFFFFFFFFFF8;
      v33 = MEMORY[0x245D0A870](v55);
    }

    else
    {
      v33 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v119 = v30;
    v34 = __OFADD__(v33, v30);
    v35 = v33 + v30;
    if (v34)
    {
      break;
    }

    v36 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v118 = v17;
    if (v36)
    {
      if (!v32)
      {
        v37 = v31 & 0xFFFFFFFFFFFFFF8;
        if (v35 <= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_13:
      if (v31 < 0)
      {
        v38 = v31;
      }

      else
      {
        v38 = v31 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x245D0A870](v38);
      goto LABEL_17;
    }

    if (v32)
    {
      goto LABEL_13;
    }

LABEL_17:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v37 = v31 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v120 = v31;
    v39 = *(v37 + 16);
    v40 = (*(v37 + 24) >> 1) - v39;
    v41 = v37 + 8 * v39;
    if (v29 >> 62)
    {
      if (v29 < 0)
      {
        v43 = v29;
      }

      else
      {
        v43 = v29 & 0xFFFFFFFFFFFFFF8;
      }

      v44 = MEMORY[0x245D0A870](v43);
      if (!v44)
      {
LABEL_35:

        v20 = v23;
        v21 = v22;
        if (v119 > 0)
        {
          goto LABEL_124;
        }

        goto LABEL_36;
      }

      v45 = v44;
      v46 = MEMORY[0x245D0A870](v43);
      if (v40 < v46)
      {
        goto LABEL_128;
      }

      if (v45 < 1)
      {
        goto LABEL_130;
      }

      v106 = v46;
      v107 = v37;
      v47 = v41 + 32;
      v20 = v23;
      v21 = v22;
      lazy protocol witness table accessor for type [CAFService] and conformance [A](&lazy protocol witness table cache variable for type [CAFService] and conformance [A], v23, v22);
      for (m = 0; m != v45; ++m)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
        v49 = specialized protocol witness for Collection.subscript.read in conformance [A](v121, m, v29);
        v51 = *v50;
        (v49)(v121, 0);
        *(v47 + 8 * m) = v51;
        v21 = v22;
        v20 = v23;
      }

      v4 = v105;
      v42 = v106;
      v37 = v107;
    }

    else
    {
      v42 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v42)
      {
        goto LABEL_35;
      }

      if (v40 < v42)
      {
        goto LABEL_129;
      }

      swift_arrayInitWithCopy();
      v20 = v23;
      v21 = v22;
    }

    if (v42 < v119)
    {
      goto LABEL_124;
    }

    if (v42 > 0)
    {
      v52 = *(v37 + 16);
      v34 = __OFADD__(v52, v42);
      v53 = v52 + v42;
      if (v34)
      {
        goto LABEL_127;
      }

      *(v37 + 16) = v53;
    }

LABEL_36:
    v17 = v118 + 1;
    v6 = v114;
    if (v118 + 1 == v117)
    {
      goto LABEL_47;
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
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

void CAFPositionManager.sharedServices(for:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13_1();
  v35 = type metadata accessor for CAUVehicleLayoutKey();
  OUTLINED_FUNCTION_30();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  v6 = v5 - v4;
  v7 = CAUVehicleLayoutKey.sharedKeys.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v36 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v36;
    v11 = *(v2 + 16);
    v10 = v2 + 16;
    v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v33 = *(v10 + 56);
    v34 = v11;
    v13 = (v10 - 8);
    do
    {
      v14 = v10;
      v34(v6, v12, v35);
      CAFPositionManager.services(for:includeSharedServices:requireSpecificServices:filter:)(v6, 1);
      v16 = v15;
      (*v13)(v6, v35);
      v18 = *(v36 + 16);
      v17 = *(v36 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      *(v36 + 16) = v18 + 1;
      *(v36 + 8 * v18 + 32) = v16;
      v12 += v33;
      --v8;
      v10 = v14;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v19 = specialized FlattenSequence<>.startIndex.getter(v9);
  v22 = specialized FlattenSequence<>.distance(from:to:)(v19, v21, v20 & 1, *(v9 + 16), 0, 1, v9);
  if (v22)
  {
    v23 = v22;
    specialized ContiguousArray.reserveCapacity(_:)();
    v24 = specialized FlattenSequence<>.startIndex.getter(v9);
    if ((v23 & 0x8000000000000000) == 0)
    {
      v27 = v24;
      v28 = v25;
      v29 = 0;
      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v27 >= *(v9 + 16))
        {
          goto LABEL_25;
        }

        if (v26)
        {
          goto LABEL_29;
        }

        v31 = *(v9 + 32 + 8 * v27);
        if ((v31 & 0xC000000000000001) != 0)
        {

          MEMORY[0x245D0A790](v28, v31);
        }

        else
        {
          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          if (v28 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          *(v31 + 8 * v28 + 32);
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v27 = specialized FlattenSequence<>._index(after:)(v27, v28, 0, v9);
        v28 = v32;
        ++v29;
        if (v30 == v23)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:

    OUTLINED_FUNCTION_32();
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v3 = specialized Array._getCount()(a1);
  v4 = specialized Array._getCount()(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for CAUVehicleLayoutKey();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void CAFPositionManager.layoutKeys.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_1();
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMd, &_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_30();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  v10 = [v6 vehicleLayoutKeys];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_9_0();
  v13 = MEMORY[0x277D84F90];
  v20 = v12;
LABEL_2:
  for (i = v12 + 16 * v4; ; i += 16)
  {
    if (v5 == v4)
    {

      OUTLINED_FUNCTION_32();
      return;
    }

    if (v4 >= *(v11 + 16))
    {
      break;
    }

    v15 = *(i - 8);

    CAUVehicleLayoutKey.init(rawValue:)();
    if (__swift_getEnumTagSinglePayload(v2, 1, v8) != 1)
    {
      v16 = OUTLINED_FUNCTION_15_1();
      v15(v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = OUTLINED_FUNCTION_14_1();
      }

      v18 = v13[2];
      v17 = v13[3];
      if (v18 >= v17 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v13);
      }

      v19 = OUTLINED_FUNCTION_4_1();
      v15(v19);
      v12 = v20;
      goto LABEL_2;
    }

    outlined destroy of CAUVehicleLayoutKey?(v2);
    ++v4;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type CAUVehicleLayoutKey and conformance CAUVehicleLayoutKey()
{
  result = lazy protocol witness table cache variable for type CAUVehicleLayoutKey and conformance CAUVehicleLayoutKey;
  if (!lazy protocol witness table cache variable for type CAUVehicleLayoutKey and conformance CAUVehicleLayoutKey)
  {
    type metadata accessor for CAUVehicleLayoutKey();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAUVehicleLayoutKey and conformance CAUVehicleLayoutKey);
  }

  return result;
}

void CAFPositionManager.vehicleLayoutKeys(for:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13_1();
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMd, &_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_30();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v9 = [v5 vehicleLayoutKeysFor_];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_9_0();
  v12 = MEMORY[0x277D84F90];
  v19 = v11;
LABEL_2:
  for (i = v11 + 16 * v3; ; i += 16)
  {
    if (v4 == v3)
    {

      OUTLINED_FUNCTION_32();
      return;
    }

    if (v3 >= *(v10 + 16))
    {
      break;
    }

    v14 = *(i - 8);

    CAUVehicleLayoutKey.init(rawValue:)();
    if (__swift_getEnumTagSinglePayload(v1, 1, v7) != 1)
    {
      v15 = OUTLINED_FUNCTION_15_1();
      v14(v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = OUTLINED_FUNCTION_14_1();
      }

      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v12);
      }

      v18 = OUTLINED_FUNCTION_4_1();
      v14(v18);
      v11 = v19;
      goto LABEL_2;
    }

    outlined destroy of CAUVehicleLayoutKey?(v1);
    ++v3;
  }

  __break(1u);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  type metadata accessor for CAUVehicleLayoutKey();
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC13CarAssetUtils19CAUVehicleLayoutKeyO_Tt1g5(v8, v7);
  v10 = *(type metadata accessor for CAUVehicleLayoutKey() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_11_1();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_7_1();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v7 = OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_18_1(v7);
    OUTLINED_FUNCTION_5_1(v8);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    if (v2 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for CAUVehicleLayoutKey(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for CAUVehicleLayoutKey();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_1(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_1(a3, result);
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo10CAFServiceCGGMd, &_ss23_ContiguousArrayStorageCySaySo10CAFServiceCGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CAFServiceCGMd, &_sSaySo10CAFServiceCGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CAFVentTypesVGMd, &_ss23_ContiguousArrayStorageCySo12CAFVentTypesVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_11_1();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_10_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_20_1(v2, v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * v14 - 64;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[v11] <= v15)
    {
      memmove(v15, v16, v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v11);
  }
}

{
  OUTLINED_FUNCTION_11_1();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_7_1();
  if (v2)
  {
    OUTLINED_FUNCTION_20_1(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_18_1(v13);
    OUTLINED_FUNCTION_5_1(v14);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v15 = OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    if (v2 != v0 || &v16[2 * v3] <= v15)
    {
      memmove(v15, v16, 2 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, 2 * v3);
  }
}

{
  OUTLINED_FUNCTION_11_1();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_7_1();
  if (v2)
  {
    OUTLINED_FUNCTION_20_1(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_18_1(v13);
    OUTLINED_FUNCTION_5_1(v14);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v15 = OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    if (v2 != v0 || &v16[4 * v3] <= v15)
    {
      memmove(v15, v16, 4 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v3);
  }
}

{
  OUTLINED_FUNCTION_11_1();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_7_1();
  if (v2)
  {
    OUTLINED_FUNCTION_20_1(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_18_1(v13);
    OUTLINED_FUNCTION_5_1(v14);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v15 = OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    if (v2 != v0 || &v16[8 * v3] <= v15)
    {
      memmove(v15, v16, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v3);
  }
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x245D0A870](v6);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

void *specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CAFServiceCGMd, &_sSaySo10CAFServiceCGMR);
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  _StringGuts.grow(_:)(82);
  MEMORY[0x245D0A530](0xD000000000000043, 0x800000024230B130);
  v4 = _typeName(_:qualified:)();
  MEMORY[0x245D0A530](v4);

  MEMORY[0x245D0A530](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v5 = _typeName(_:qualified:)();
  MEMORY[0x245D0A530](v5);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x245D0A870](v12);
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array._getCount()(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFService, 0x277CF8640);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [CAFService] and conformance [A](&lazy protocol witness table cache variable for type [CAFService] and conformance [A], &_sSaySo10CAFServiceCGMd, &_sSaySo10CAFServiceCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CAFServiceCGMd, &_sSaySo10CAFServiceCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
          v11 = *v10;
          (v9)(v13, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x245D0A870](v12);
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array._getCount()(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFMediaItem, 0x277CF8510);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [CAFService] and conformance [A](&lazy protocol witness table cache variable for type [CAFMediaItem] and conformance [A], &_sSaySo12CAFMediaItemCGMd, &_sSaySo12CAFMediaItemCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12CAFMediaItemCGMd, &_sSaySo12CAFMediaItemCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
          v11 = *v10;
          (v9)(v13, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_12_1(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x245D0A790](v5, v4);
  }

  *v3 = v7;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

{
  OUTLINED_FUNCTION_12_1(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x245D0A790](v5, v4);
  }

  *v3 = v7;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  IsNativeType = specialized Array._hoistableIsNativeTypeChecked()();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, IsNativeType & 1, a3);
  if (IsNativeType)
  {
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(a2, a3);
  }

  *a1 = v7;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t specialized FlattenSequence<>.startIndex.getter(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = v2;
  v4 = a1 + 32;
  while (v2 != v1)
  {
    v5 = *(v4 + 8 * v1);
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v6 = *(v4 + 8 * v1);
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      if (MEMORY[0x245D0A870](v6))
      {
        return v1;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v1;
    }

    ++v1;
  }

  return v3;
}

uint64_t specialized FlattenSequence<>.distance(from:to:)(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v11 = a4;
  v12 = a3;
  v13 = a2;
  if (a4 == result)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (a3)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (a4 < 0)
    {
      goto LABEL_46;
    }

    if (*(a7 + 16) <= a4)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v14 = a5 - a2;
    if (!__OFSUB__(a5, a2))
    {
      return v14;
    }

    __break(1u);
  }

  else
  {
    v7 = result;
    if (a4 < result)
    {
      if (a4 < 0)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (*(a7 + 16) <= a4)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      result = specialized Array._getCount()();
      if (a6)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v14 = a5 - result;
      if (__OFSUB__(a5, result))
      {
        goto LABEL_50;
      }

      v15 = -1;
      v16 = v7;
      goto LABEL_22;
    }
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (*(a7 + 16) <= v7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((a3 & 1) == 0)
  {
    result = specialized Array._getCount()();
    v14 = result - v13;
    if (__OFSUB__(result, v13))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v15 = 1;
    v13 = a5;
    v12 = a6;
    v16 = v11;
    v11 = v7;
LABEL_22:
    v17 = v11 + 1;
    if (v11 + 1 >= v16)
    {
LABEL_35:
      if (v12)
      {
        return v14;
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        if (v16 < *(a7 + 16))
        {
          v21 = __OFADD__(v14, v13 * v15);
          v14 += v13 * v15;
          if (!v21)
          {
            return v14;
          }

          goto LABEL_54;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v18 = *(a7 + 16);
    v19 = (a7 + 8 * v11 + 40);
    while (v17 < v18)
    {
      v20 = *v19;
      if (*v19 >> 62)
      {
        if (v20 < 0)
        {
          v23 = *v19;
        }

        else
        {
          v23 = v20 & 0xFFFFFFFFFFFFFF8;
        }

        result = MEMORY[0x245D0A870](v23);
      }

      else
      {
        result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = __OFADD__(v14, result * v15);
      v14 += result * v15;
      if (v21)
      {
        goto LABEL_41;
      }

      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_42;
      }

      ++v17;
      ++v19;
      if (v22 >= v16)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_57:
  __break(1u);
  return result;
}

unint64_t specialized FlattenSequence<>._index(after:)(unint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = a4;
  v4 = result;
  v6 = *(a4 + 16);
  if (v6 <= result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((a3 & 1) == 0)
  {
    if (!__OFADD__(a2, 1))
    {
      if (a2 + 1 != specialized Array._getCount()())
      {
        return v4;
      }

LABEL_10:
      ++v4;
      while (v4 != v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySo10CAFServiceCGGMd, &_sSaySaySo10CAFServiceCGGMR);
        lazy protocol witness table accessor for type [CAFService] and conformance [A](&lazy protocol witness table cache variable for type [[CAFService]] and conformance [A], &_sSaySaySo10CAFServiceCGGMd, &_sSaySaySo10CAFServiceCGGMR);
        v7 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, v4, v5);
        v9 = *v8;

        (v7)(v13, 0);
        if (v9 >> 62)
        {
          if (v9 < 0)
          {
            v12 = v9;
          }

          else
          {
            v12 = v9 & 0xFFFFFFFFFFFFFF8;
          }

          v10 = MEMORY[0x245D0A870](v12);
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v10)
        {
          return v4;
        }

        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          goto LABEL_24;
        }
      }

      return v6;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t outlined destroy of CAUVehicleLayoutKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMd, &_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type [CAFService] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, unint64_t a2, uint64_t a3)
{
  IsNativeTypeCheckedSbyFSo12CAFMediaItemC_Tg5_0 = _sSa29_hoistableIsNativeTypeCheckedSbyFSo12CAFMediaItemC_Tg5_0(a3);

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, IsNativeTypeCheckedSbyFSo12CAFMediaItemC_Tg5_0, a3);
}

void *OUTLINED_FUNCTION_14_1()
{
  v2 = *(v0 + 16) + 1;

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return type metadata accessor for CAUVehicleLayoutKey();
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t Measurement<>.localeStep(_:by:in:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v136 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_30();
  v137 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v132 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v127 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v127 - v17;
  v135 = *a1;
  v133 = v5;
  if (!a3)
  {
    goto LABEL_4;
  }

  v19 = a3;
  Measurement.value.getter();
  *&v20 = v20;
  if ([v19 valueIsInRange_])
  {

LABEL_4:
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    if (v135)
    {
      OUTLINED_FUNCTION_5_2();
      static Measurement<>.- infix(_:_:)();
    }

    else
    {
      OUTLINED_FUNCTION_5_2();
      static Measurement<>.+ infix(_:_:)();
    }

    v21 = *(v137 + 32);
    v137 += 32;
    v134 = v21;
    v21(v18, v16, v9);
    v128 = a4;
    if (!a3)
    {
      v49 = Measurement<>.digitsOnly.getter();
      v34 = v50;
      v51 = Measurement<>.digitsOnly.getter();
      v53 = v52;
      goto LABEL_28;
    }

    v22 = a3;
    OUTLINED_FUNCTION_2_0();
    Measurement.value.getter();
    v24 = v23;
    v25 = [v16 maximum];
    [v25 doubleValue];
    v27 = v26;

    if (v27 <= v24)
    {

      v34 = 0xE200000000000000;
      v54 = 18760;
    }

    else
    {
      Measurement.value.getter();
      v29 = v28;
      v30 = [v16 minimum];
      [v30 doubleValue];
      v32 = v31;

      if (v29 > v32)
      {
        v131 = Measurement<>.digitsOnly.getter();
        v34 = v33;

LABEL_22:
        v55 = v16;
        OUTLINED_FUNCTION_2_0();
        Measurement.value.getter();
        v57 = v56;
        v58 = [v16 maximum];
        [v58 doubleValue];
        v60 = v59;

        if (v60 <= v57)
        {

          v53 = 0xE200000000000000;
          v51 = 18760;
        }

        else
        {
          Measurement.value.getter();
          v62 = v61;
          v63 = [v16 minimum];
          [v63 doubleValue];
          v65 = v64;

          if (v62 <= v65)
          {

            v53 = 0xE200000000000000;
            v51 = 20300;
          }

          else
          {
            v51 = Measurement<>.digitsOnly.getter();
            v53 = v66;
          }
        }

        v49 = v131;
LABEL_28:
        if (v49 == v51 && v34 == v53)
        {
        }

        else
        {
          v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v68 & 1) == 0)
          {
            return v134(v128, v18, v9);
          }
        }

        v130 = "[LocaleStep] skipping ";
        v131 = 0x800000024230B180;
        *&v69 = 136315650;
        v129 = v69;
        do
        {
          while (1)
          {
            v138[0] = 0;
            v138[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(36);

            v138[0] = 0xD000000000000016;
            v138[1] = v131;
            lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
            v70 = dispatch thunk of CustomStringConvertible.description.getter();
            v72 = v71;
            MEMORY[0x245D0A530](v70);

            MEMORY[0x245D0A530](0x79616C7073696420, 0xEA0000000000203ALL);
            if (a3)
            {
              v73 = a3;
              OUTLINED_FUNCTION_2_0();
              Measurement.value.getter();
              v75 = v74;
              v76 = [v72 maximum];
              [v76 doubleValue];
              v78 = v77;

              if (v78 <= v75)
              {

                v86 = 0xE200000000000000;
                v84 = 18760;
              }

              else
              {
                Measurement.value.getter();
                v80 = v79;
                v81 = [v72 minimum];
                [v81 doubleValue];
                v83 = v82;

                if (v80 <= v83)
                {

                  v86 = 0xE200000000000000;
                  v84 = 20300;
                }

                else
                {
                  v84 = Measurement<>.digitsOnly.getter();
                  v86 = v85;
                }
              }
            }

            else
            {
              v84 = Measurement<>.digitsOnly.getter();
              v86 = v87;
            }

            MEMORY[0x245D0A530](v84, v86);

            v89 = v138[0];
            v88 = v138[1];
            v90 = static os_log_type_t.debug.getter();
            if (one-time initialization token for default != -1)
            {
              OUTLINED_FUNCTION_0_1();
              swift_once();
            }

            v91 = static OS_os_log.default;
            if (os_log_type_enabled(static OS_os_log.default, v90))
            {
              v92 = swift_slowAlloc();
              v138[0] = swift_slowAlloc();
              *v92 = v129;
              *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, v130 | 0x8000000000000000, v138);
              *(v92 + 12) = 2048;
              OUTLINED_FUNCTION_4_2(20);
              *(v92 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v88, v93);
              _os_log_impl(&dword_2421B0000, v91, v90, "%s: %ld  %s", v92, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_15();
              OUTLINED_FUNCTION_15();
            }

            v94 = v132;
            type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
            if (v135)
            {
              static Measurement<>.- infix(_:_:)();
            }

            else
            {
              static Measurement<>.+ infix(_:_:)();
            }

            (*"ep(_:by:in:)")(v18, v9);
            v134(v18, v94, v9);
            if (a3)
            {
              v95 = a3;
              OUTLINED_FUNCTION_2_0();
              Measurement.value.getter();
              v97 = v96;
              v98 = [v90 maximum];
              [v98 doubleValue];
              v100 = v99;

              if (v100 <= v97)
              {

                v108 = 0xE200000000000000;
                v106 = 18760;
              }

              else
              {
                Measurement.value.getter();
                v102 = v101;
                v103 = [v90 minimum];
                [v103 doubleValue];
                v105 = v104;

                if (v102 <= v105)
                {

                  v108 = 0xE200000000000000;
                  v106 = 20300;
                }

                else
                {
                  v106 = Measurement<>.digitsOnly.getter();
                  v108 = v107;
                }
              }

              v113 = v90;
              OUTLINED_FUNCTION_2_0();
              Measurement.value.getter();
              v115 = v114;
              v116 = [v90 maximum];
              [v116 doubleValue];
              v118 = v117;

              if (v118 <= v115)
              {

                v112 = 0xE200000000000000;
                v110 = 18760;
              }

              else
              {
                Measurement.value.getter();
                v120 = v119;
                v121 = [v90 minimum];
                [v121 doubleValue];
                v123 = v122;

                if (v120 <= v123)
                {

                  v112 = 0xE200000000000000;
                  v110 = 20300;
                }

                else
                {
                  v110 = Measurement<>.digitsOnly.getter();
                  v112 = v124;
                }
              }
            }

            else
            {
              v106 = Measurement<>.digitsOnly.getter();
              v108 = v109;
              v110 = Measurement<>.digitsOnly.getter();
              v112 = v111;
            }

            if (v106 != v110 || v108 != v112)
            {
              break;
            }
          }

          v126 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        while ((v126 & 1) != 0);
        return v134(v128, v18, v9);
      }

      v34 = 0xE200000000000000;
      v54 = 20300;
    }

    v131 = v54;
    goto LABEL_22;
  }

  v35 = a4;
  v138[0] = 0;
  v138[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  strcpy(v138, "[LocaleStep] ");
  HIWORD(v138[1]) = -4864;
  lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
  v36 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x245D0A530](v36);

  MEMORY[0x245D0A530](0xD000000000000012, 0x800000024230B1C0);
  v37 = [v19 description];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  MEMORY[0x245D0A530](v38, v40);

  v42 = v138[0];
  v41 = v138[1];
  v43 = static os_log_type_t.error.getter();
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v44 = static OS_os_log.default;
  if (os_log_type_enabled(static OS_os_log.default, v43))
  {
    v45 = swift_slowAlloc();
    v138[0] = swift_slowAlloc();
    *v45 = 136315650;
    v5 = v133;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024230B1A0, v138);
    *(v45 + 12) = 2048;
    OUTLINED_FUNCTION_4_2(14);
    *(v45 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, v46);
    _os_log_impl(&dword_2421B0000, v44, v43, "%s: %ld  %s", v45, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  v47 = *(v137 + 16);

  return v47(v35, v5, v9);
}

uint64_t Measurement<>.step(_:by:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  if (v1)
  {

    return static Measurement<>.- infix(_:_:)();
  }

  else
  {

    return static Measurement<>.+ infix(_:_:)();
  }
}

uint64_t Measurement<>.readableString(in:)(void *a1)
{
  if (!a1)
  {
    return Measurement<>.digitsOnly.getter();
  }

  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  Measurement.value.getter();
  v3 = v2;
  v4 = [v1 maximum];
  [v4 doubleValue];
  v6 = v5;

  if (v6 <= v3)
  {

    return 18760;
  }

  else
  {
    Measurement.value.getter();
    v8 = v7;
    v9 = [v1 minimum];
    [v9 doubleValue];
    v11 = v10;

    if (v8 <= v11)
    {

      return 20300;
    }

    else
    {
      v12 = Measurement<>.digitsOnly.getter();
    }
  }

  return v12;
}

uint64_t Measurement<>.digitsOnly.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - v3;
  if (static Measurement<>.isFahrenheitUI.getter())
  {
    v5 = [objc_opt_self() fahrenheit];
    Measurement<>.converted(to:)();
  }

  else
  {
    (*(v2 + 16))(v4, v0, v1);
  }

  v6 = static Measurement<>.targetTemperatureFormatter.getter();
  v7 = Measurement.value.getter();
  v8 = MEMORY[0x245D0A650](v7);
  v9 = [v6 stringFromNumber_];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    Measurement.value.getter();
    v10 = Double.description.getter();
  }

  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t static Measurement<>.isFahrenheitUI.getter()
{
  v0 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Locale.current.getter();
  v1 = NSDimension.init(forLocale:)();
  v2 = [objc_opt_self() fahrenheit];
  v3 = static NSObject.== infix(_:_:)();

  return v3 & 1;
}

id static Measurement<>.targetTemperatureFormatter.getter()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_30();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v0, v1);
  [v5 setLocale_];

  [v5 setNumberStyle_];
  [v5 setRoundingMode_];
  [v5 setMinimumFractionDigits_];
  [v5 setMaximumFractionDigits_];
  return v5;
}

uint64_t Measurement<>.invalidString.getter()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_30();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  if (static Measurement<>.isFahrenheitUI.getter())
  {
    return 11565;
  }

  static Locale.autoupdatingCurrent.getter();
  v5 = Locale.decimalSeparator.getter();
  v7 = v6;
  (*(v3 + 8))(v0, v1);
  if (!v7)
  {
    return 11565;
  }

  MEMORY[0x245D0A530](v5, v7);

  MEMORY[0x245D0A530](45, 0xE100000000000000);
  return 11565;
}

unint64_t lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<NSUnitTemperature> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<NSUnitTemperature> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<NSUnitTemperature> and conformance Measurement<A>);
  }

  return result;
}

void CAFVent.Configuration.init(rawValue:)(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CAFVent.Configuration.init(rawValue:), v3);

  v6 = 4;
  if (v5 < 4)
  {
    v6 = v5;
  }

  *a2 = v6;
}

uint64_t CAFVent.Configuration.rawValue.getter()
{
  result = 0x796E614D6E6FLL;
  switch(*v0)
  {
    case 1:
      result = 0x656C676E69536E6FLL;
      break;
    case 2:
      result = 2037277037;
      break;
    case 3:
      result = 0x68746957796E616DLL;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

double specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();

  return result;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CAFVent.Configuration@<X0>(uint64_t *a1@<X8>)
{
  result = CAFVent.Configuration.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void CAFVent.configuration.getter(char *a1@<X8>)
{
  v3 = [v1 hasOn];
  v4 = [v1 combinations];
  type metadata accessor for NSNumber();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3)
  {
    v6 = specialized Array._getCount()();

    v7 = v6 < 2;
  }

  else
  {
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v12 = isa;
    MEMORY[0x28223BE20](isa);
    v11[2] = &v12;
    specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v11, v5);
    v10 = v9;

    if (v10)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }
  }

  *a1 = v7;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

id CAFVent.ventType(at:)(unsigned int a1)
{
  v3 = [v1 combinations];
  type metadata accessor for NSNumber();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array._getCount()();

  if (v4 <= a1)
  {
    return 0;
  }

  v5 = [v1 combinations];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a1, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x245D0A790](a1, v6);
  }

  else
  {
    v7 = *(v6 + 8 * a1 + 32);
  }

  v8 = v7;

  v9 = [v8 unsignedLongLongValue];

  return v9;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = specialized Array._getCount()();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x245D0A790](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

unint64_t lazy protocol witness table accessor for type CAFVent.Configuration and conformance CAFVent.Configuration()
{
  result = lazy protocol witness table cache variable for type CAFVent.Configuration and conformance CAFVent.Configuration;
  if (!lazy protocol witness table cache variable for type CAFVent.Configuration and conformance CAFVent.Configuration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFVent.Configuration and conformance CAFVent.Configuration);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAFVent.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CAFVent.Configuration(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized CAFObserved<>.observable.getter(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  if ([v2 observableCache])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    outlined destroy of Any?(v11);
    goto LABEL_8;
  }

  a1(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    objc_allocWithZone(a1(0));
    v6 = v2;
    v5 = a2();
    [v6 setObservableCache_];
    return v5;
  }

  return v8;
}

uint64_t CAFObserved<>.observable.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ([v2 observableCache])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    outlined destroy of Any?(v12);
    v4 = OUTLINED_FUNCTION_1_2();
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_1_2();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *&v12[0] = v2;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 40);
    swift_unknownObjectRetain();
    v5 = v7(v12, v4, AssociatedConformanceWitness);
    [v3 setObservableCache_];
    return v5;
  }

  return v9;
}

{
  OUTLINED_FUNCTION_30();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v5 + 16))(v8, v2, a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CAFObservable.objectDidChange.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVyyts5NeverOGMd, &_s7Combine12AnyPublisherVyyts5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVyyts5NeverOGMd, &_s7Combine12AnyPublisherVyyts5NeverOGMR, MEMORY[0x277CBCD90]);
  v6 = type metadata accessor for Publishers.CompactMap();
  OUTLINED_FUNCTION_30();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v16[1] = closure #1 in CAFObservable.objectDidChange.getter(v3);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v12;
  Publisher.compactMap<A>(_:)();

  swift_getWitnessTable();
  v14 = Publisher.eraseToAnyPublisher()();

  (*(v8 + 8))(v11, v6);
  return v14;
}

uint64_t closure #1 in CAFObservable.objectDidChange.getter(void *a1)
{
  swift_beginAccess();
  v2 = objc_getAssociatedObject(a1, &static AssociatedKeys.objectDidChange);
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    outlined destroy of Any?(v9);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
    swift_allocObject();
    v4 = PassthroughSubject.init()();
    swift_beginAccess();
    objc_setAssociatedObject(a1, &static AssociatedKeys.objectDidChange, v4, 0x301);
    swift_endAccess();
    *&v9[0] = v4;
    lazy protocol witness table accessor for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x277CBCE20]);
    v3 = Publisher.eraseToAnyPublisher()();
    goto LABEL_9;
  }

  *&v9[0] = v6;
  lazy protocol witness table accessor for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x277CBCE20]);
  v3 = Publisher.eraseToAnyPublisher()();
LABEL_9:

  return v3;
}

uint64_t closure #2 in CAFObservable.objectDidChange.getter@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t CAFObservable.publisher.getter(uint64_t a1, uint64_t a2)
{
  v24[0] = a2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v5 = type metadata accessor for Publishers.Sequence();
  v6 = type metadata accessor for AnyPublisher();
  WitnessTable = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v27 = v5;
  v28 = v6;
  v29 = WitnessTable;
  v30 = v25;
  v8 = type metadata accessor for Publishers.Concatenate();
  OUTLINED_FUNCTION_30();
  v26 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v24[1] = swift_getWitnessTable();
  v13 = type metadata accessor for Publishers.Filter();
  OUTLINED_FUNCTION_30();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = v24 - v17;
  v27 = CAFObservable.objectDidChange.getter(a1, a2);
  getContiguousArrayStorageType<A>(for:)(a1, a1);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  *v19 = v2;
  type metadata accessor for Array();
  swift_unknownObjectRetain();
  Publisher.prepend(_:)();

  v20 = swift_allocObject();
  v21 = v24[0];
  *(v20 + 16) = a1;
  *(v20 + 24) = v21;
  Publisher.filter(_:)();

  (*(v26 + 8))(v12, v8);
  swift_getWitnessTable();
  v22 = Publisher.eraseToAnyPublisher()();
  (*(v15 + 8))(v18, v13);
  return v22;
}

uint64_t closure #1 in CAFObservable.publisher.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(a3 + 32))(a2, a3);
  type metadata accessor for CAFService();
  if (!swift_dynamicCast())
  {
    return 1;
  }

  v6 = [v8 receivedAllValues];

  return v6;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

unint64_t type metadata accessor for CAFService()
{
  result = lazy cache variable for type metadata for CAFService;
  if (!lazy cache variable for type metadata for CAFService)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFService);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t lazy protocol witness table accessor for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_1_2()
{

  return swift_getAssociatedTypeWitness();
}

void CAFDataSourcePublisher.receive<A>(subscriber:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_13_0();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v20 - v11;
  v13 = *(v6 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v10);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 24);
  v20[0] = v13;
  v20[1] = v4;
  v20[2] = v17;
  v20[3] = v2;
  v18 = OUTLINED_FUNCTION_10_2();
  type metadata accessor for CAFDataSourceSubscription(v18, v19);
  (*(v14 + 16))(v16, v0, v13);
  CAFDataSourceSubscription.__allocating_init(dataSource:)(v16);
  (*(*(v4 - 8) + 16))(v12, v8, v4);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v4);
  CAFDataSourceSubscription.target.setter(v12);

  OUTLINED_FUNCTION_32();
}

uint64_t CAFDataSourceSubscription.__allocating_init(dataSource:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CAFDataSourceSubscription.init(dataSource:)(a1);
  return v2;
}

uint64_t CAFDataSourceSubscription.target.didset(uint64_t a1)
{
  v2 = v1;
  v28 = *v1;
  v3 = v28;
  v4 = v28[10];
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v27 - v5;
  v7 = v28[11];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = v3[15];
  *&v2[v15] = 0;

  v16 = *(*v2 + 128);
  swift_beginAccess();
  (*(v9 + 16))(v12, &v2[v16], v8);
  if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v18 = v30;
  v19 = *(v30 + 32);
  v27 = v14;
  v19(v14, v12, v7);
  v20 = v28[12];
  v21 = v28[13];
  v31[0] = v4;
  v31[1] = v7;
  v31[2] = v20;
  v32 = v21;
  v32 = type metadata accessor for CAFDataSourceSubscription(0, v31);
  WitnessTable = swift_getWitnessTable();
  v31[0] = v2;

  dispatch thunk of Subscriber.receive(subscription:)();
  __swift_destroy_boxed_opaque_existential_0(v31);
  v22 = v29;
  (*(v29 + 16))(v6, &v2[*(*v2 + 112)], v4);
  v23 = (*(v20 + 16))(v4, v20);
  v28 = v23;
  (*(v22 + 8))(v6, v4);
  v31[0] = v23;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v4;
  v25[3] = v7;
  v25[4] = v20;
  v25[5] = v21;
  v25[6] = v24;
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyPublisher();

  swift_getWitnessTable();
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v18 + 8))(v27, v7);

  *&v2[v15] = v26;
}

uint64_t closure #1 in CAFDataSourceSubscription.target.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CAFDataSourceSubscription.target.getter(v13);

    if (__swift_getEnumTagSinglePayload(v13, 1, a4))
    {
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v7 + 16))(v9, v13, a4);
      (*(v11 + 8))(v13, v10);
      dispatch thunk of Subscriber.receive(_:)();
      return (*(v7 + 8))(v9, a4);
    }
  }

  return result;
}

uint64_t CAFDataSourceSubscription.target.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_3();
  v4 = *(v3 + 128);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t CAFDataSourceSubscription.target.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5_3();
  v4 = *(v3 + 128);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  v7 = swift_endAccess();
  CAFDataSourceSubscription.target.didset(v7);
  return (*(v6 + 8))(a1, v5);
}

uint64_t CAFDataSourceSubscription.init(dataSource:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_3();
  *(v1 + *(v4 + 120)) = 0;
  OUTLINED_FUNCTION_7_2();
  __swift_storeEnumTagSinglePayload(v1 + *(v5 + 128), 1, 1, *(v2 + 88));
  OUTLINED_FUNCTION_7_2();
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(v6 + 112), a1);
  return v1;
}

Swift::Void __swiftcall CAFDataSourceSubscription.cancel()()
{
  OUTLINED_FUNCTION_7_2();
  v1 = *(v0 + 88);
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v5 - v3;
  __swift_storeEnumTagSinglePayload(&v5 - v3, 1, 1, v1);
  CAFDataSourceSubscription.target.setter(v4);
}

uint64_t *CAFDataSourceSubscription.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  OUTLINED_FUNCTION_7_2();

  OUTLINED_FUNCTION_7_2();
  v2 = *(v1 + 128);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CAFDataSourceSubscription.__deallocating_deinit()
{
  CAFDataSourceSubscription.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void Publisher.skipNil<A>()()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyPublisher();
  OUTLINED_FUNCTION_3_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_2();
  v7 = type metadata accessor for Publishers.FlatMap();
  OUTLINED_FUNCTION_30();
  v9 = v8;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_2();
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v4;
  v11[4] = v2;
  static Subscribers.Demand.unlimited.getter();
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  Publisher.eraseToAnyPublisher()();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_32();
}

uint64_t closure #1 in Publisher.skipNil<A>()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v38 = a1;
  v40 = a5;
  v6 = type metadata accessor for Just();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v31 - v7;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Result.Publisher();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v32 = &v31 - v10;
  v39 = AssociatedConformanceWitness;
  v11 = type metadata accessor for Empty();
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = *(a3 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  (*(v15 + 16))(v18, v38, v14);
  if (__swift_getEnumTagSinglePayload(v18, 1, a3) == 1)
  {
    (*(v15 + 8))(v18, v14);
    Empty.init(completeImmediately:)();
    swift_getWitnessTable();
    v25 = Publisher.eraseToAnyPublisher()();
    result = (*(v31 + 8))(v13, v11);
  }

  else
  {
    (*(v19 + 32))(v24, v18, a3);
    (*(v19 + 16))(v22, v24, a3);
    v27 = v35;
    Just.init(_:)();
    v28 = v32;
    v29 = v37;
    Just.setFailureType<A>(to:)();
    (*(v36 + 8))(v27, v29);
    v30 = v34;
    swift_getWitnessTable();
    v25 = Publisher.eraseToAnyPublisher()();
    (*(v33 + 8))(v28, v30);
    result = (*(v19 + 8))(v24, a3);
  }

  *v40 = v25;
  return result;
}

void Publisher.flatMap<A, B>(_:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_10_2();
  v11 = type metadata accessor for Publishers.FlatMap();
  OUTLINED_FUNCTION_30();
  v13 = v12;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_2();
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v6;
  v15[4] = v4;
  v15[5] = v2;
  v15[6] = v10;

  static Subscribers.Demand.unlimited.getter();
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  Publisher.eraseToAnyPublisher()();
  (*(v13 + 8))(v0, v11);
  OUTLINED_FUNCTION_32();
}

void Publisher.compactFlatMap<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Publisher.compactFlatMap<A, B>(_:)();
}

{
  Publisher.compactFlatMap<A, B>(_:)();
}

uint64_t partial apply for closure #1 in Publisher.compactFlatMap<A, B>(_:)(uint64_t a1)
{
  return swift_getAtKeyPath();
}

{
  return partial apply for closure #1 in Publisher.compactFlatMap<A, B>(_:)(a1, closure #1 in Publisher.compactFlatMap<A, B>(_:));
}

{
  return partial apply for closure #1 in Publisher.compactFlatMap<A, B>(_:)(a1, closure #1 in Publisher.compactFlatMap<A, B>(_:));
}

void Publisher.compactFlatMap<A, B>(_:)()
{
  OUTLINED_FUNCTION_13_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *v12;
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = v9;
  v15[4] = v7;
  v15[5] = v5;
  v15[6] = v13;
  v16 = *(*(v14 + *MEMORY[0x277D84DE8] + 8) + 16);

  v1(v3, v15, v11, v9, v16, v7, v5);

  OUTLINED_FUNCTION_32();
}

void Publisher.compactFlatMap<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_1();
  v39 = v22;
  v40 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v38 = v32;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyPublisher();
  OUTLINED_FUNCTION_3_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_2();
  v33 = type metadata accessor for Publishers.FlatMap();
  OUTLINED_FUNCTION_30();
  v35 = v34;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_2();
  v37 = swift_allocObject();
  v37[2] = v29;
  v37[3] = v27;
  v37[4] = v39;
  v37[5] = v25;
  v37[6] = v40;
  v37[7] = v38;
  v37[8] = v31;

  static Subscribers.Demand.unlimited.getter();
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  Publisher.eraseToAnyPublisher()();
  (*(v35 + 8))(v21, v33);
  OUTLINED_FUNCTION_32();
}

uint64_t Publisher.compactFlatMap<A, B>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a1;
  v12 = *(v10 + *MEMORY[0x277D84DE8] + 8);

  v13 = Publisher.compactFlatMap<A, B>(_:)(partial apply for closure #1 in Publisher.compactFlatMap<A, B>(_:), v11, a2, a3, v12, a4, a5);

  return v13;
}

uint64_t closure #1 in Publisher.compactFlatMap<A, B>(_:)@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  swift_getAtKeyPath();
  v5 = *(v4 + *MEMORY[0x277D84DE8] + 8);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v5);
}

uint64_t closure #1 in Publisher.compactFlatMap<A, B>(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v43 = a3;
  v44 = a2;
  v46 = a9;
  v40 = a8;
  v14 = type metadata accessor for Publishers.CompactMap();
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x28223BE20](v14);
  v39 = &v35 - v15;
  swift_getAssociatedTypeWitness();
  v37 = a4;
  v38 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = a5;
  v35 = AssociatedConformanceWitness;
  v17 = type metadata accessor for Empty();
  v36 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v35 - v23;
  v25 = *(a6 - 8);
  MEMORY[0x28223BE20](v22);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44(a1);
  if (__swift_getEnumTagSinglePayload(v24, 1, a6) == 1)
  {
    (*(v21 + 8))(v24, v20);
    Empty.init(completeImmediately:)();
    swift_getWitnessTable();
    v28 = Publisher.eraseToAnyPublisher()();
    result = (*(v36 + 8))(v19, v17);
  }

  else
  {
    (*(v25 + 32))(v27, v24, a6);
    v30 = swift_allocObject();
    v31 = v38;
    v32 = v45;
    v30[2] = v37;
    v30[3] = v32;
    v30[4] = a6;
    v30[5] = v31;
    v33 = v39;
    v30[6] = v40;
    Publisher.compactMap<A>(_:)();

    v34 = v42;
    swift_getWitnessTable();
    v28 = Publisher.eraseToAnyPublisher()();
    (*(v41 + 8))(v33, v34);
    result = (*(v25 + 8))(v27, a6);
  }

  *v46 = v28;
  return result;
}

uint64_t closure #1 in closure #1 in Publisher.compactFlatMap<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t closure #1 in Publisher.compactFlatMap<A, B>(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v27 = a8;
  v29 = a3;
  v30 = a2;
  v31 = a9;
  swift_getAssociatedTypeWitness();
  v28 = a5;
  v25[1] = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Empty();
  v26 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - v13;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v25 - v18;
  v20 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30(a1);
  if (__swift_getEnumTagSinglePayload(v19, 1, a6) == 1)
  {
    (*(v16 + 8))(v19, v15);
    Empty.init(completeImmediately:)();
    swift_getWitnessTable();
    v23 = Publisher.eraseToAnyPublisher()();
    result = (*(v26 + 8))(v14, v12);
  }

  else
  {
    (*(v20 + 32))(v22, v19, a6);
    v23 = Publisher.eraseToAnyPublisher()();
    result = (*(v20 + 8))(v22, a6);
  }

  *v31 = v23;
  return result;
}

uint64_t Publisher.nullable()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v4 = type metadata accessor for Publishers.Map();
  OUTLINED_FUNCTION_30();
  v6 = v5;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  Publisher.map<A>(_:)();

  swift_getWitnessTable();
  v11 = Publisher.eraseToAnyPublisher()();
  (*(v6 + 8))(v9, v4);
  return v11;
}

uint64_t closure #1 in Publisher.nullable()@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);

  return __swift_storeEnumTagSinglePayload(a4, 0, 1, AssociatedTypeWitness);
}

uint64_t type metadata completion function for CAFDataSourcePublisher(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAFDataSourcePublisher(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for CAFDataSourcePublisher(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata completion function for CAFDataSourceSubscription(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t key path getter for CARSessionStatusObservable.session : CARSessionStatusObservable@<X0>(uint64_t *a1@<X8>)
{
  result = CARSessionStatusObservable.session.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for CARSessionStatusObservable.session : CARSessionStatusObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CARSessionStatusObservable.session.setter(v1);
}

uint64_t CARSessionStatusObservable.session.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CARSessionStatusObservable.session.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*CARSessionStatusObservable.session.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = static Published.subscript.modify();
  return CARSessionStatusObservable.session.modify;
}

void CARSessionStatusObservable.session.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t key path setter for CARSessionStatusObservable.$session : CARSessionStatusObservable(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return CARSessionStatusObservable.$session.setter(v4);
}

uint64_t CARSessionStatusObservable.$session.getter()
{
  OUTLINED_FUNCTION_5_4(v0 + OBJC_IVAR____TtC10CAFCombine26CARSessionStatusObservable__session, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo10CARSessionCSgGMd, &_s7Combine9PublishedVySo10CARSessionCSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CARSessionStatusObservable.$session.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  (*(v5 + 16))(&v10[-v7 - 8], a1, v3);
  OUTLINED_FUNCTION_5_4(v1 + OBJC_IVAR____TtC10CAFCombine26CARSessionStatusObservable__session, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo10CARSessionCSgGMd, &_s7Combine9PublishedVySo10CARSessionCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*CARSessionStatusObservable.$session.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMR);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_5_4(v1 + OBJC_IVAR____TtC10CAFCombine26CARSessionStatusObservable__session, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo10CARSessionCSgGMd, &_s7Combine9PublishedVySo10CARSessionCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CARSessionStatusObservable.$session.modify;
}

void CARSessionStatusObservable.$session.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    CARSessionStatusObservable.$session.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CARSessionStatusObservable.$session.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

id CARSessionStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CARSessionStatusObservable.init()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CF89F8]) init];
  v1 = objc_allocWithZone(type metadata accessor for CARSessionStatusObservable(0));
  v2 = CARSessionStatusObservable.init(carSessionStatus:)(v0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t type metadata accessor for CARSessionStatusObservable(uint64_t a1)
{
  result = type metadata singleton initialization cache for CARSessionStatusObservable;
  if (!type metadata singleton initialization cache for CARSessionStatusObservable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CARSessionStatusObservable.init(carSessionStatus:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo10CARSessionCSgGMd, &_s7Combine9PublishedVySo10CARSessionCSgGMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC10CAFCombine26CARSessionStatusObservable__session;
  v17[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CARSessionCSgMd, &_sSo10CARSessionCSgMR);
  Published.init(initialValue:)();
  (*(v5 + 32))(&v1[v9], v8, v3);
  *&v1[OBJC_IVAR____TtC10CAFCombine26CARSessionStatusObservable_carSessionStatus] = a1;
  v10 = a1;
  v11 = [v10 currentSession];
  OUTLINED_FUNCTION_5_4(&v1[v9], v17);
  (*(v5 + 8))(&v1[v9], v3);
  v16 = v11;
  Published.init(initialValue:)();
  swift_endAccess();
  v12 = type metadata accessor for CARSessionStatusObservable(0);
  v15.receiver = v1;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v10 addSessionObserver_];

  return v13;
}

uint64_t CARSessionStatusObservable.sessionDidConnect(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_30();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_1();
  v8 = v7 - v6;
  v22 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_30();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_1();
  v14 = v13 - v12;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for OS_dispatch_queue();
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CARSessionStatusObservable.sessionDidConnect(_:);
  aBlock[5] = v17;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_4(COERCE_DOUBLE(1107296256));
  aBlock[2] = v18;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  v20 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_3();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x245D0A6D0](0, v14, v8, v19);
  _Block_release(v19);

  (*(v4 + 8))(v8, v2);
  (*(v10 + 8))(v14, v22);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

void closure #1 in CARSessionStatusObservable.sessionDidConnect(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    CARSessionStatusObservable.session.setter(a2);
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t CARSessionStatusObservable.sessionDidDisconnect(_:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_30();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  v6 = v5 - v4;
  v18 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_30();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  v12 = v11 - v10;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for OS_dispatch_queue();
  v14 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in CARSessionStatusObservable.sessionDidDisconnect(_:);
  aBlock[5] = v13;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_4(COERCE_DOUBLE(1107296256));
  aBlock[2] = v15;
  aBlock[3] = &block_descriptor_9;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_3();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x245D0A6D0](0, v12, v6, v16);
  _Block_release(v16);

  (*(v2 + 8))(v6, v0);
  (*(v8 + 8))(v12, v18);
}

void closure #1 in CARSessionStatusObservable.sessionDidDisconnect(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    CARSessionStatusObservable.session.setter(0);
  }
}

id CARSessionStatusObservable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CARSessionStatusObservable(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CARSessionStatusObservable@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CARSessionStatusObservable(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void type metadata completion function for CARSessionStatusObservable(uint64_t a1)
{
  type metadata accessor for Published<CARSession?>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<CARSession?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<CARSession?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo10CARSessionCSgMd, &_sSo10CARSessionCSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<CARSession?>);
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t key path getter for CAFPositionManagerObservable.state : CAFPositionManagerObservable@<X0>(uint64_t *a1@<X8>)
{
  result = CAFPositionManagerObservable.state.getter();
  *a1 = result;
  return result;
}

uint64_t CAFPositionManagerObservable.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CAFPositionManagerObservable.state.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t key path setter for CAFPositionManagerObservable.$state : CAFPositionManagerObservable(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo22CAFCharacteristicStateV_GMd, &_s7Combine9PublishedV9PublisherVySo22CAFCharacteristicStateV_GMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return CAFPositionManagerObservable.$state.setter(v4);
}

uint64_t CAFPositionManagerObservable.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22CAFCharacteristicStateVGMd, _s7Combine9PublishedVySo22CAFCharacteristicStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CAFPositionManagerObservable.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo22CAFCharacteristicStateV_GMd, &_s7Combine9PublishedV9PublisherVySo22CAFCharacteristicStateV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22CAFCharacteristicStateVGMd, _s7Combine9PublishedVySo22CAFCharacteristicStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

id CAFPositionManagerObservable.init(_:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC10CAFCombine28CAFPositionManagerObservable_observed] = a1;
  v2 = a1;
  v3 = [v2 state];
  swift_beginAccess();
  v7 = v3;
  type metadata accessor for CAFCharacteristicState(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CAFPositionManagerObservable(0);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  [v2 registerObserver_];

  return v4;
}

uint64_t type metadata accessor for CAFPositionManagerObservable(uint64_t a1)
{
  result = type metadata singleton initialization cache for CAFPositionManagerObservable;
  if (!type metadata singleton initialization cache for CAFPositionManagerObservable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CAFPositionManagerObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFPositionManagerObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFPositionManagerObservable(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFPositionManagerObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFPositionManagerObservable@<X0>(void *a1@<X8>)
{
  result = CAFPositionManagerObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFPositionManagerObservable@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CAFPositionManagerObservable(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t CAFPositionManagerObservable.positionManager(_:didUpdate:)(void *a1)
{
  v1 = [a1 state];

  return CAFPositionManagerObservable.state.setter(v1);
}

unint64_t type metadata accessor for CAFPositionManager()
{
  result = lazy cache variable for type metadata for CAFPositionManager;
  if (!lazy cache variable for type metadata for CAFPositionManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFPositionManager);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFPositionManagerObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFPositionManagerObservable and conformance CAFPositionManagerObservable(&lazy protocol witness table cache variable for type CAFPositionManagerObservable and conformance CAFPositionManagerObservable, type metadata accessor for CAFPositionManagerObservable, &protocol conformance descriptor for CAFPositionManagerObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPositionManagerObservable and conformance CAFPositionManagerObservable(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for CAFPositionManagerObservable(uint64_t a1)
{
  type metadata accessor for Published<CAFCharacteristicState>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<CAFCharacteristicState>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<CAFCharacteristicState>)
  {
    type metadata accessor for CAFCharacteristicState(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<CAFCharacteristicState>);
    }
  }
}

double static CAFAppearanceMode.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFAppearanceMode.allCases = a1;

  return result;
}

uint64_t CAFAppearanceMode.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromAppearanceMode();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFAppearanceMode(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFAppearanceMode and conformance CAFAppearanceMode(&lazy protocol witness table cache variable for type CAFAppearanceMode and conformance CAFAppearanceMode, &protocol conformance descriptor for CAFAppearanceMode);
  a1[2] = lazy protocol witness table accessor for type CAFAppearanceMode and conformance CAFAppearanceMode(&lazy protocol witness table cache variable for type CAFAppearanceMode and conformance CAFAppearanceMode, &protocol conformance descriptor for CAFAppearanceMode);
  result = lazy protocol witness table accessor for type CAFAppearanceMode and conformance CAFAppearanceMode(&lazy protocol witness table cache variable for type CAFAppearanceMode and conformance CAFAppearanceMode, &protocol conformance descriptor for CAFAppearanceMode);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAppearanceMode and conformance CAFAppearanceMode(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFAppearanceMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFAppearanceMode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFAppearanceMode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFAppearanceMode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17CAFAppearanceModeVGMd, &_sSaySo17CAFAppearanceModeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFAppearanceMode] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFAppearanceMode@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFAppearanceMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFAppearanceMode@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFAudioContentBadge.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFAudioContentBadge.allCases = a1;

  return result;
}

uint64_t CAFAudioContentBadge.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromAudioContentBadge();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFAudioContentBadge(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFAudioContentBadge and conformance CAFAudioContentBadge(&lazy protocol witness table cache variable for type CAFAudioContentBadge and conformance CAFAudioContentBadge, &protocol conformance descriptor for CAFAudioContentBadge);
  a1[2] = lazy protocol witness table accessor for type CAFAudioContentBadge and conformance CAFAudioContentBadge(&lazy protocol witness table cache variable for type CAFAudioContentBadge and conformance CAFAudioContentBadge, &protocol conformance descriptor for CAFAudioContentBadge);
  result = lazy protocol witness table accessor for type CAFAudioContentBadge and conformance CAFAudioContentBadge(&lazy protocol witness table cache variable for type CAFAudioContentBadge and conformance CAFAudioContentBadge, &protocol conformance descriptor for CAFAudioContentBadge);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAudioContentBadge and conformance CAFAudioContentBadge(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFAudioContentBadge(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFAudioContentBadge] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFAudioContentBadge] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFAudioContentBadge] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFAudioContentBadgeVGMd, &_sSaySo20CAFAudioContentBadgeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFAudioContentBadge] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFAudioContentBadge@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFAudioContentBadge.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFAudioContentBadge@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFAutoModeIntensity.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFAutoModeIntensity.allCases = a1;

  return result;
}

uint64_t CAFAutoModeIntensity.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromAutoModeIntensity();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFAutoModeIntensity(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity(&lazy protocol witness table cache variable for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity, &protocol conformance descriptor for CAFAutoModeIntensity);
  a1[2] = lazy protocol witness table accessor for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity(&lazy protocol witness table cache variable for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity, &protocol conformance descriptor for CAFAutoModeIntensity);
  result = lazy protocol witness table accessor for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity(&lazy protocol witness table cache variable for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity, &protocol conformance descriptor for CAFAutoModeIntensity);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFAutoModeIntensity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFAutoModeIntensity] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFAutoModeIntensity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFAutoModeIntensity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFAutoModeIntensityVGMd, &_sSaySo20CAFAutoModeIntensityVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFAutoModeIntensity] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFAutoModeIntensity@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFAutoModeIntensity.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFAutoModeIntensity@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFBatteryConditioningState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFBatteryConditioningState.allCases = a1;

  return result;
}

uint64_t CAFBatteryConditioningState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromBatteryConditioningState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryConditioningState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState(&lazy protocol witness table cache variable for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState, &protocol conformance descriptor for CAFBatteryConditioningState);
  a1[2] = lazy protocol witness table accessor for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState(&lazy protocol witness table cache variable for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState, &protocol conformance descriptor for CAFBatteryConditioningState);
  result = lazy protocol witness table accessor for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState(&lazy protocol witness table cache variable for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState, &protocol conformance descriptor for CAFBatteryConditioningState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFBatteryConditioningState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFBatteryConditioningState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFBatteryConditioningState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFBatteryConditioningState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo27CAFBatteryConditioningStateVGMd, &_sSaySo27CAFBatteryConditioningStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFBatteryConditioningState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFBatteryConditioningState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFBatteryConditioningState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFBatteryConditioningState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFBatteryLevelState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFBatteryLevelState.allCases = a1;

  return result;
}

uint64_t CAFBatteryLevelState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromBatteryLevelState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryLevelState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFBatteryLevelState and conformance CAFBatteryLevelState(&lazy protocol witness table cache variable for type CAFBatteryLevelState and conformance CAFBatteryLevelState, &protocol conformance descriptor for CAFBatteryLevelState);
  a1[2] = lazy protocol witness table accessor for type CAFBatteryLevelState and conformance CAFBatteryLevelState(&lazy protocol witness table cache variable for type CAFBatteryLevelState and conformance CAFBatteryLevelState, &protocol conformance descriptor for CAFBatteryLevelState);
  result = lazy protocol witness table accessor for type CAFBatteryLevelState and conformance CAFBatteryLevelState(&lazy protocol witness table cache variable for type CAFBatteryLevelState and conformance CAFBatteryLevelState, &protocol conformance descriptor for CAFBatteryLevelState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryLevelState and conformance CAFBatteryLevelState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFBatteryLevelState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFBatteryLevelState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFBatteryLevelState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFBatteryLevelState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFBatteryLevelStateVGMd, &_sSaySo20CAFBatteryLevelStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFBatteryLevelState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFBatteryLevelState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFBatteryLevelState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFBatteryLevelState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFButtonAction.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFButtonAction.allCases = a1;

  return result;
}

uint64_t CAFButtonAction.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromButtonAction();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFButtonAction(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFButtonAction and conformance CAFButtonAction(&lazy protocol witness table cache variable for type CAFButtonAction and conformance CAFButtonAction, &protocol conformance descriptor for CAFButtonAction);
  a1[2] = lazy protocol witness table accessor for type CAFButtonAction and conformance CAFButtonAction(&lazy protocol witness table cache variable for type CAFButtonAction and conformance CAFButtonAction, &protocol conformance descriptor for CAFButtonAction);
  result = lazy protocol witness table accessor for type CAFButtonAction and conformance CAFButtonAction(&lazy protocol witness table cache variable for type CAFButtonAction and conformance CAFButtonAction, &protocol conformance descriptor for CAFButtonAction);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFButtonAction and conformance CAFButtonAction(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFButtonAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFButtonAction] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFButtonAction] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFButtonAction] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15CAFButtonActionVGMd, &_sSaySo15CAFButtonActionVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFButtonAction] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFButtonAction@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFButtonAction.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFButtonAction@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFCableState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFCableState.allCases = a1;

  return result;
}

uint64_t CAFCableState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromCableState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFCableState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFCableState and conformance CAFCableState(&lazy protocol witness table cache variable for type CAFCableState and conformance CAFCableState, &protocol conformance descriptor for CAFCableState);
  a1[2] = lazy protocol witness table accessor for type CAFCableState and conformance CAFCableState(&lazy protocol witness table cache variable for type CAFCableState and conformance CAFCableState, &protocol conformance descriptor for CAFCableState);
  result = lazy protocol witness table accessor for type CAFCableState and conformance CAFCableState(&lazy protocol witness table cache variable for type CAFCableState and conformance CAFCableState, &protocol conformance descriptor for CAFCableState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCableState and conformance CAFCableState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFCableState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFCableState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFCableState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFCableState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFCableStateVGMd, &_sSaySo13CAFCableStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFCableState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFCableState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFCableState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFCableState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFCellularType.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFCellularType.allCases = a1;

  return result;
}

uint64_t CAFCellularType.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromCellularType();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFCellularType(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFCellularType and conformance CAFCellularType(&lazy protocol witness table cache variable for type CAFCellularType and conformance CAFCellularType, &protocol conformance descriptor for CAFCellularType);
  a1[2] = lazy protocol witness table accessor for type CAFCellularType and conformance CAFCellularType(&lazy protocol witness table cache variable for type CAFCellularType and conformance CAFCellularType, &protocol conformance descriptor for CAFCellularType);
  result = lazy protocol witness table accessor for type CAFCellularType and conformance CAFCellularType(&lazy protocol witness table cache variable for type CAFCellularType and conformance CAFCellularType, &protocol conformance descriptor for CAFCellularType);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCellularType and conformance CAFCellularType(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFCellularType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFCellularType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFCellularType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFCellularType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15CAFCellularTypeVGMd, &_sSaySo15CAFCellularTypeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFCellularType] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFCellularType@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFCellularType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFCellularType@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFChargingState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFChargingState.allCases = a1;

  return result;
}

uint64_t CAFChargingState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromChargingState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFChargingState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFChargingState and conformance CAFChargingState(&lazy protocol witness table cache variable for type CAFChargingState and conformance CAFChargingState, &protocol conformance descriptor for CAFChargingState);
  a1[2] = lazy protocol witness table accessor for type CAFChargingState and conformance CAFChargingState(&lazy protocol witness table cache variable for type CAFChargingState and conformance CAFChargingState, &protocol conformance descriptor for CAFChargingState);
  result = lazy protocol witness table accessor for type CAFChargingState and conformance CAFChargingState(&lazy protocol witness table cache variable for type CAFChargingState and conformance CAFChargingState, &protocol conformance descriptor for CAFChargingState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFChargingState and conformance CAFChargingState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFChargingState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFChargingState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFChargingState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFChargingState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFChargingStateVGMd, &_sSaySo16CAFChargingStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFChargingState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFChargingState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFChargingState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFChargingState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFDefrostTypes.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFDefrostTypes.allCases = a1;

  return result;
}

uint64_t CAFDefrostTypes.description.getter()
{
  v0 = NSStringFromDefrostTypes();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFDefrostTypes(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFDefrostTypes and conformance CAFDefrostTypes(&lazy protocol witness table cache variable for type CAFDefrostTypes and conformance CAFDefrostTypes, &protocol conformance descriptor for CAFDefrostTypes);
  a1[2] = lazy protocol witness table accessor for type CAFDefrostTypes and conformance CAFDefrostTypes(&lazy protocol witness table cache variable for type CAFDefrostTypes and conformance CAFDefrostTypes, &protocol conformance descriptor for CAFDefrostTypes);
  result = lazy protocol witness table accessor for type CAFDefrostTypes and conformance CAFDefrostTypes(&lazy protocol witness table cache variable for type CAFDefrostTypes and conformance CAFDefrostTypes, &protocol conformance descriptor for CAFDefrostTypes);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDefrostTypes and conformance CAFDefrostTypes(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFDefrostTypes(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFDefrostTypes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFDefrostTypes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFDefrostTypes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15CAFDefrostTypesVGMd, &_sSaySo15CAFDefrostTypesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFDefrostTypes] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFDefrostTypes@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFDefrostTypes.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFDefrostTypes@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFDriverSide.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFDriverSide.allCases = a1;

  return result;
}

uint64_t CAFDriverSide.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromDriverSide();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFDriverSide(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFDriverSide and conformance CAFDriverSide(&lazy protocol witness table cache variable for type CAFDriverSide and conformance CAFDriverSide, &protocol conformance descriptor for CAFDriverSide);
  a1[2] = lazy protocol witness table accessor for type CAFDriverSide and conformance CAFDriverSide(&lazy protocol witness table cache variable for type CAFDriverSide and conformance CAFDriverSide, &protocol conformance descriptor for CAFDriverSide);
  result = lazy protocol witness table accessor for type CAFDriverSide and conformance CAFDriverSide(&lazy protocol witness table cache variable for type CAFDriverSide and conformance CAFDriverSide, &protocol conformance descriptor for CAFDriverSide);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDriverSide and conformance CAFDriverSide(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFDriverSide(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFDriverSide] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFDriverSide] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFDriverSide] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFDriverSideVGMd, &_sSaySo13CAFDriverSideVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFDriverSide] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFDriverSide@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFDriverSide.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFDriverSide@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFEqualizerType.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFEqualizerType.allCases = a1;

  return result;
}

uint64_t CAFEqualizerType.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromEqualizerType();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFEqualizerType(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFEqualizerType and conformance CAFEqualizerType(&lazy protocol witness table cache variable for type CAFEqualizerType and conformance CAFEqualizerType, &protocol conformance descriptor for CAFEqualizerType);
  a1[2] = lazy protocol witness table accessor for type CAFEqualizerType and conformance CAFEqualizerType(&lazy protocol witness table cache variable for type CAFEqualizerType and conformance CAFEqualizerType, &protocol conformance descriptor for CAFEqualizerType);
  result = lazy protocol witness table accessor for type CAFEqualizerType and conformance CAFEqualizerType(&lazy protocol witness table cache variable for type CAFEqualizerType and conformance CAFEqualizerType, &protocol conformance descriptor for CAFEqualizerType);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEqualizerType and conformance CAFEqualizerType(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEqualizerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFEqualizerType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFEqualizerType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFEqualizerType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFEqualizerTypeVGMd, &_sSaySo16CAFEqualizerTypeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFEqualizerType] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFEqualizerType@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFEqualizerType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFEqualizerType@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFFillLevelLabel.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFFillLevelLabel.allCases = a1;

  return result;
}

uint64_t CAFFillLevelLabel.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromFillLevelLabel();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFFillLevelLabel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFFillLevelLabel and conformance CAFFillLevelLabel(&lazy protocol witness table cache variable for type CAFFillLevelLabel and conformance CAFFillLevelLabel, &protocol conformance descriptor for CAFFillLevelLabel);
  a1[2] = lazy protocol witness table accessor for type CAFFillLevelLabel and conformance CAFFillLevelLabel(&lazy protocol witness table cache variable for type CAFFillLevelLabel and conformance CAFFillLevelLabel, &protocol conformance descriptor for CAFFillLevelLabel);
  result = lazy protocol witness table accessor for type CAFFillLevelLabel and conformance CAFFillLevelLabel(&lazy protocol witness table cache variable for type CAFFillLevelLabel and conformance CAFFillLevelLabel, &protocol conformance descriptor for CAFFillLevelLabel);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFillLevelLabel and conformance CAFFillLevelLabel(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFFillLevelLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFFillLevelLabel] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFFillLevelLabel] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFFillLevelLabel] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17CAFFillLevelLabelVGMd, &_sSaySo17CAFFillLevelLabelVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFFillLevelLabel] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFFillLevelLabel@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFFillLevelLabel.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFFillLevelLabel@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFFuelLevelState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFFuelLevelState.allCases = a1;

  return result;
}

uint64_t CAFFuelLevelState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromFuelLevelState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFFuelLevelState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFFuelLevelState and conformance CAFFuelLevelState(&lazy protocol witness table cache variable for type CAFFuelLevelState and conformance CAFFuelLevelState, &protocol conformance descriptor for CAFFuelLevelState);
  a1[2] = lazy protocol witness table accessor for type CAFFuelLevelState and conformance CAFFuelLevelState(&lazy protocol witness table cache variable for type CAFFuelLevelState and conformance CAFFuelLevelState, &protocol conformance descriptor for CAFFuelLevelState);
  result = lazy protocol witness table accessor for type CAFFuelLevelState and conformance CAFFuelLevelState(&lazy protocol witness table cache variable for type CAFFuelLevelState and conformance CAFFuelLevelState, &protocol conformance descriptor for CAFFuelLevelState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFuelLevelState and conformance CAFFuelLevelState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFFuelLevelState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFFuelLevelState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFFuelLevelState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFFuelLevelState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17CAFFuelLevelStateVGMd, &_sSaySo17CAFFuelLevelStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFFuelLevelState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFFuelLevelState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFFuelLevelState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFFuelLevelState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFGeodeticSystem.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFGeodeticSystem.allCases = a1;

  return result;
}

uint64_t CAFGeodeticSystem.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromGeodeticSystem();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFGeodeticSystem(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFGeodeticSystem and conformance CAFGeodeticSystem(&lazy protocol witness table cache variable for type CAFGeodeticSystem and conformance CAFGeodeticSystem, &protocol conformance descriptor for CAFGeodeticSystem);
  a1[2] = lazy protocol witness table accessor for type CAFGeodeticSystem and conformance CAFGeodeticSystem(&lazy protocol witness table cache variable for type CAFGeodeticSystem and conformance CAFGeodeticSystem, &protocol conformance descriptor for CAFGeodeticSystem);
  result = lazy protocol witness table accessor for type CAFGeodeticSystem and conformance CAFGeodeticSystem(&lazy protocol witness table cache variable for type CAFGeodeticSystem and conformance CAFGeodeticSystem, &protocol conformance descriptor for CAFGeodeticSystem);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFGeodeticSystem and conformance CAFGeodeticSystem(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFGeodeticSystem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFGeodeticSystem] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFGeodeticSystem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFGeodeticSystem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17CAFGeodeticSystemVGMd, &_sSaySo17CAFGeodeticSystemVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFGeodeticSystem] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFGeodeticSystem@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFGeodeticSystem.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFGeodeticSystem@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFIcyConditions.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFIcyConditions.allCases = a1;

  return result;
}

uint64_t CAFIcyConditions.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromIcyConditions();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFIcyConditions(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFIcyConditions and conformance CAFIcyConditions(&lazy protocol witness table cache variable for type CAFIcyConditions and conformance CAFIcyConditions, &protocol conformance descriptor for CAFIcyConditions);
  a1[2] = lazy protocol witness table accessor for type CAFIcyConditions and conformance CAFIcyConditions(&lazy protocol witness table cache variable for type CAFIcyConditions and conformance CAFIcyConditions, &protocol conformance descriptor for CAFIcyConditions);
  result = lazy protocol witness table accessor for type CAFIcyConditions and conformance CAFIcyConditions(&lazy protocol witness table cache variable for type CAFIcyConditions and conformance CAFIcyConditions, &protocol conformance descriptor for CAFIcyConditions);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFIcyConditions and conformance CAFIcyConditions(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFIcyConditions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFIcyConditions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFIcyConditions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFIcyConditions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFIcyConditionsVGMd, &_sSaySo16CAFIcyConditionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFIcyConditions] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFIcyConditions@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFIcyConditions.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFIcyConditions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFImageColor.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFImageColor.allCases = a1;

  return result;
}

uint64_t CAFImageColor.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromImageColor();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFImageColor(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFImageColor and conformance CAFImageColor(&lazy protocol witness table cache variable for type CAFImageColor and conformance CAFImageColor, &protocol conformance descriptor for CAFImageColor);
  a1[2] = lazy protocol witness table accessor for type CAFImageColor and conformance CAFImageColor(&lazy protocol witness table cache variable for type CAFImageColor and conformance CAFImageColor, &protocol conformance descriptor for CAFImageColor);
  result = lazy protocol witness table accessor for type CAFImageColor and conformance CAFImageColor(&lazy protocol witness table cache variable for type CAFImageColor and conformance CAFImageColor, &protocol conformance descriptor for CAFImageColor);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFImageColor and conformance CAFImageColor(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFImageColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFImageColor] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFImageColor] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFImageColor] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFImageColorVGMd, &_sSaySo13CAFImageColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFImageColor] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFImageColor@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFImageColor.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFImageColor@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFLockState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFLockState.allCases = a1;

  return result;
}

uint64_t CAFLockState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromLockState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFLockState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFLockState and conformance CAFLockState(&lazy protocol witness table cache variable for type CAFLockState and conformance CAFLockState, &protocol conformance descriptor for CAFLockState);
  a1[2] = lazy protocol witness table accessor for type CAFLockState and conformance CAFLockState(&lazy protocol witness table cache variable for type CAFLockState and conformance CAFLockState, &protocol conformance descriptor for CAFLockState);
  result = lazy protocol witness table accessor for type CAFLockState and conformance CAFLockState(&lazy protocol witness table cache variable for type CAFLockState and conformance CAFLockState, &protocol conformance descriptor for CAFLockState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFLockState and conformance CAFLockState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFLockState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFLockState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFLockState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFLockState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12CAFLockStateVGMd, &_sSaySo12CAFLockStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFLockState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFLockState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFLockState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFLockState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFMediaCategory.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFMediaCategory.allCases = a1;

  return result;
}

uint64_t CAFMediaCategory.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromMediaCategory();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFMediaCategory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFMediaCategory and conformance CAFMediaCategory(&lazy protocol witness table cache variable for type CAFMediaCategory and conformance CAFMediaCategory, &protocol conformance descriptor for CAFMediaCategory);
  a1[2] = lazy protocol witness table accessor for type CAFMediaCategory and conformance CAFMediaCategory(&lazy protocol witness table cache variable for type CAFMediaCategory and conformance CAFMediaCategory, &protocol conformance descriptor for CAFMediaCategory);
  result = lazy protocol witness table accessor for type CAFMediaCategory and conformance CAFMediaCategory(&lazy protocol witness table cache variable for type CAFMediaCategory and conformance CAFMediaCategory, &protocol conformance descriptor for CAFMediaCategory);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMediaCategory and conformance CAFMediaCategory(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMediaCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFMediaCategory] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFMediaCategory] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFMediaCategory] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFMediaCategoryVGMd, &_sSaySo16CAFMediaCategoryVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFMediaCategory] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFMediaCategory@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFMediaCategory.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFMediaCategory@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFMediaSourceSemanticType.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFMediaSourceSemanticType.allCases = a1;

  return result;
}

uint64_t CAFMediaSourceSemanticType.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromMediaSourceSemanticType();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFMediaSourceSemanticType(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(&lazy protocol witness table cache variable for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType, &protocol conformance descriptor for CAFMediaSourceSemanticType);
  a1[2] = lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(&lazy protocol witness table cache variable for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType, &protocol conformance descriptor for CAFMediaSourceSemanticType);
  result = lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(&lazy protocol witness table cache variable for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType, &protocol conformance descriptor for CAFMediaSourceSemanticType);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMediaSourceSemanticType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFMediaSourceSemanticType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFMediaSourceSemanticType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFMediaSourceSemanticType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo26CAFMediaSourceSemanticTypeVGMd, &_sSaySo26CAFMediaSourceSemanticTypeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFMediaSourceSemanticType] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFMediaSourceSemanticType@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFMediaSourceSemanticType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFMediaSourceSemanticType@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFModuleStatus.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFModuleStatus.allCases = a1;

  return result;
}

uint64_t CAFModuleStatus.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromModuleStatus();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFModuleStatus(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFModuleStatus and conformance CAFModuleStatus(&lazy protocol witness table cache variable for type CAFModuleStatus and conformance CAFModuleStatus, &protocol conformance descriptor for CAFModuleStatus);
  a1[2] = lazy protocol witness table accessor for type CAFModuleStatus and conformance CAFModuleStatus(&lazy protocol witness table cache variable for type CAFModuleStatus and conformance CAFModuleStatus, &protocol conformance descriptor for CAFModuleStatus);
  result = lazy protocol witness table accessor for type CAFModuleStatus and conformance CAFModuleStatus(&lazy protocol witness table cache variable for type CAFModuleStatus and conformance CAFModuleStatus, &protocol conformance descriptor for CAFModuleStatus);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFModuleStatus and conformance CAFModuleStatus(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFModuleStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFModuleStatus] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFModuleStatus] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFModuleStatus] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15CAFModuleStatusVGMd, &_sSaySo15CAFModuleStatusVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFModuleStatus] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFModuleStatus@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFModuleStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFModuleStatus@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFNotificationSeverity.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFNotificationSeverity.allCases = a1;

  return result;
}

uint64_t CAFNotificationSeverity.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromNotificationSeverity();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFNotificationSeverity(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFNotificationSeverity and conformance CAFNotificationSeverity(&lazy protocol witness table cache variable for type CAFNotificationSeverity and conformance CAFNotificationSeverity, &protocol conformance descriptor for CAFNotificationSeverity);
  a1[2] = lazy protocol witness table accessor for type CAFNotificationSeverity and conformance CAFNotificationSeverity(&lazy protocol witness table cache variable for type CAFNotificationSeverity and conformance CAFNotificationSeverity, &protocol conformance descriptor for CAFNotificationSeverity);
  result = lazy protocol witness table accessor for type CAFNotificationSeverity and conformance CAFNotificationSeverity(&lazy protocol witness table cache variable for type CAFNotificationSeverity and conformance CAFNotificationSeverity, &protocol conformance descriptor for CAFNotificationSeverity);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFNotificationSeverity and conformance CAFNotificationSeverity(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFNotificationSeverity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFNotificationSeverity] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFNotificationSeverity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFNotificationSeverity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo23CAFNotificationSeverityVGMd, &_sSaySo23CAFNotificationSeverityVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFNotificationSeverity] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFNotificationSeverity@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFNotificationSeverity.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFNotificationSeverity@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFPairedDeviceState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFPairedDeviceState.allCases = a1;

  return result;
}

uint64_t CAFPairedDeviceState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromPairedDeviceState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFPairedDeviceState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFPairedDeviceState and conformance CAFPairedDeviceState(&lazy protocol witness table cache variable for type CAFPairedDeviceState and conformance CAFPairedDeviceState, &protocol conformance descriptor for CAFPairedDeviceState);
  a1[2] = lazy protocol witness table accessor for type CAFPairedDeviceState and conformance CAFPairedDeviceState(&lazy protocol witness table cache variable for type CAFPairedDeviceState and conformance CAFPairedDeviceState, &protocol conformance descriptor for CAFPairedDeviceState);
  result = lazy protocol witness table accessor for type CAFPairedDeviceState and conformance CAFPairedDeviceState(&lazy protocol witness table cache variable for type CAFPairedDeviceState and conformance CAFPairedDeviceState, &protocol conformance descriptor for CAFPairedDeviceState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPairedDeviceState and conformance CAFPairedDeviceState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFPairedDeviceState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFPairedDeviceState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFPairedDeviceState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFPairedDeviceState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFPairedDeviceStateVGMd, &_sSaySo20CAFPairedDeviceStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFPairedDeviceState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFPairedDeviceState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFPairedDeviceState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFPairedDeviceState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFPlaybackState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFPlaybackState.allCases = a1;

  return result;
}

uint64_t CAFPlaybackState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromPlaybackState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFPlaybackState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFPlaybackState and conformance CAFPlaybackState(&lazy protocol witness table cache variable for type CAFPlaybackState and conformance CAFPlaybackState, &protocol conformance descriptor for CAFPlaybackState);
  a1[2] = lazy protocol witness table accessor for type CAFPlaybackState and conformance CAFPlaybackState(&lazy protocol witness table cache variable for type CAFPlaybackState and conformance CAFPlaybackState, &protocol conformance descriptor for CAFPlaybackState);
  result = lazy protocol witness table accessor for type CAFPlaybackState and conformance CAFPlaybackState(&lazy protocol witness table cache variable for type CAFPlaybackState and conformance CAFPlaybackState, &protocol conformance descriptor for CAFPlaybackState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPlaybackState and conformance CAFPlaybackState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFPlaybackState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFPlaybackState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFPlaybackState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFPlaybackState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFPlaybackStateVGMd, &_sSaySo16CAFPlaybackStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFPlaybackState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFPlaybackState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFPlaybackState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFPlaybackState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFPortSideIndicator.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFPortSideIndicator.allCases = a1;

  return result;
}

uint64_t CAFPortSideIndicator.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromPortSideIndicator();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFPortSideIndicator(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFPortSideIndicator and conformance CAFPortSideIndicator(&lazy protocol witness table cache variable for type CAFPortSideIndicator and conformance CAFPortSideIndicator, &protocol conformance descriptor for CAFPortSideIndicator);
  a1[2] = lazy protocol witness table accessor for type CAFPortSideIndicator and conformance CAFPortSideIndicator(&lazy protocol witness table cache variable for type CAFPortSideIndicator and conformance CAFPortSideIndicator, &protocol conformance descriptor for CAFPortSideIndicator);
  result = lazy protocol witness table accessor for type CAFPortSideIndicator and conformance CAFPortSideIndicator(&lazy protocol witness table cache variable for type CAFPortSideIndicator and conformance CAFPortSideIndicator, &protocol conformance descriptor for CAFPortSideIndicator);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPortSideIndicator and conformance CAFPortSideIndicator(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFPortSideIndicator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFPortSideIndicator] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFPortSideIndicator] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFPortSideIndicator] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFPortSideIndicatorVGMd, &_sSaySo20CAFPortSideIndicatorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFPortSideIndicator] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFPortSideIndicator@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFPortSideIndicator.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFPortSideIndicator@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFPowerState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFPowerState.allCases = a1;

  return result;
}

uint64_t CAFPowerState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromPowerState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFPowerState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFPowerState and conformance CAFPowerState(&lazy protocol witness table cache variable for type CAFPowerState and conformance CAFPowerState, &protocol conformance descriptor for CAFPowerState);
  a1[2] = lazy protocol witness table accessor for type CAFPowerState and conformance CAFPowerState(&lazy protocol witness table cache variable for type CAFPowerState and conformance CAFPowerState, &protocol conformance descriptor for CAFPowerState);
  result = lazy protocol witness table accessor for type CAFPowerState and conformance CAFPowerState(&lazy protocol witness table cache variable for type CAFPowerState and conformance CAFPowerState, &protocol conformance descriptor for CAFPowerState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPowerState and conformance CAFPowerState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFPowerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFPowerState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFPowerState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFPowerState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFPowerStateVGMd, &_sSaySo13CAFPowerStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFPowerState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFPowerState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFPowerState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFPowerState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFPressureState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFPressureState.allCases = a1;

  return result;
}

uint64_t CAFPressureState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromPressureState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFPressureState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFPressureState and conformance CAFPressureState(&lazy protocol witness table cache variable for type CAFPressureState and conformance CAFPressureState, &protocol conformance descriptor for CAFPressureState);
  a1[2] = lazy protocol witness table accessor for type CAFPressureState and conformance CAFPressureState(&lazy protocol witness table cache variable for type CAFPressureState and conformance CAFPressureState, &protocol conformance descriptor for CAFPressureState);
  result = lazy protocol witness table accessor for type CAFPressureState and conformance CAFPressureState(&lazy protocol witness table cache variable for type CAFPressureState and conformance CAFPressureState, &protocol conformance descriptor for CAFPressureState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPressureState and conformance CAFPressureState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFPressureState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFPressureState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFPressureState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFPressureState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFPressureStateVGMd, &_sSaySo16CAFPressureStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFPressureState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFPressureState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFPressureState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFPressureState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFProximityAlert.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFProximityAlert.allCases = a1;

  return result;
}

uint64_t CAFProximityAlert.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromProximityAlert();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFProximityAlert(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFProximityAlert and conformance CAFProximityAlert(&lazy protocol witness table cache variable for type CAFProximityAlert and conformance CAFProximityAlert, &protocol conformance descriptor for CAFProximityAlert);
  a1[2] = lazy protocol witness table accessor for type CAFProximityAlert and conformance CAFProximityAlert(&lazy protocol witness table cache variable for type CAFProximityAlert and conformance CAFProximityAlert, &protocol conformance descriptor for CAFProximityAlert);
  result = lazy protocol witness table accessor for type CAFProximityAlert and conformance CAFProximityAlert(&lazy protocol witness table cache variable for type CAFProximityAlert and conformance CAFProximityAlert, &protocol conformance descriptor for CAFProximityAlert);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFProximityAlert and conformance CAFProximityAlert(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFProximityAlert(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFProximityAlert] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFProximityAlert] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFProximityAlert] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17CAFProximityAlertVGMd, &_sSaySo17CAFProximityAlertVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFProximityAlert] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFProximityAlert@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFProximityAlert.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFProximityAlert@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFRotationalSpeedState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFRotationalSpeedState.allCases = a1;

  return result;
}

uint64_t CAFRotationalSpeedState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromRotationalSpeedState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFRotationalSpeedState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState(&lazy protocol witness table cache variable for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState, &protocol conformance descriptor for CAFRotationalSpeedState);
  a1[2] = lazy protocol witness table accessor for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState(&lazy protocol witness table cache variable for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState, &protocol conformance descriptor for CAFRotationalSpeedState);
  result = lazy protocol witness table accessor for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState(&lazy protocol witness table cache variable for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState, &protocol conformance descriptor for CAFRotationalSpeedState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFRotationalSpeedState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFRotationalSpeedState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFRotationalSpeedState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFRotationalSpeedState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo23CAFRotationalSpeedStateVGMd, &_sSaySo23CAFRotationalSpeedStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFRotationalSpeedState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFRotationalSpeedState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFRotationalSpeedState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFRotationalSpeedState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFRouteState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFRouteState.allCases = a1;

  return result;
}

uint64_t CAFRouteState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromRouteState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFRouteState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFRouteState and conformance CAFRouteState(&lazy protocol witness table cache variable for type CAFRouteState and conformance CAFRouteState, &protocol conformance descriptor for CAFRouteState);
  a1[2] = lazy protocol witness table accessor for type CAFRouteState and conformance CAFRouteState(&lazy protocol witness table cache variable for type CAFRouteState and conformance CAFRouteState, &protocol conformance descriptor for CAFRouteState);
  result = lazy protocol witness table accessor for type CAFRouteState and conformance CAFRouteState(&lazy protocol witness table cache variable for type CAFRouteState and conformance CAFRouteState, &protocol conformance descriptor for CAFRouteState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRouteState and conformance CAFRouteState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFRouteState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFRouteState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFRouteState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFRouteState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFRouteStateVGMd, &_sSaySo13CAFRouteStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFRouteState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFRouteState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFRouteState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFRouteState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFSeatBeltIndicator.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFSeatBeltIndicator.allCases = a1;

  return result;
}

uint64_t CAFSeatBeltIndicator.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromSeatBeltIndicator();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFSeatBeltIndicator(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator(&lazy protocol witness table cache variable for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator, &protocol conformance descriptor for CAFSeatBeltIndicator);
  a1[2] = lazy protocol witness table accessor for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator(&lazy protocol witness table cache variable for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator, &protocol conformance descriptor for CAFSeatBeltIndicator);
  result = lazy protocol witness table accessor for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator(&lazy protocol witness table cache variable for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator, &protocol conformance descriptor for CAFSeatBeltIndicator);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFSeatBeltIndicator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFSeatBeltIndicator] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFSeatBeltIndicator] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFSeatBeltIndicator] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFSeatBeltIndicatorVGMd, &_sSaySo20CAFSeatBeltIndicatorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFSeatBeltIndicator] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFSeatBeltIndicator@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFSeatBeltIndicator.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFSeatBeltIndicator@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFSeatOccupancy.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFSeatOccupancy.allCases = a1;

  return result;
}

uint64_t CAFSeatOccupancy.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromSeatOccupancy();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFSeatOccupancy(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFSeatOccupancy and conformance CAFSeatOccupancy(&lazy protocol witness table cache variable for type CAFSeatOccupancy and conformance CAFSeatOccupancy, &protocol conformance descriptor for CAFSeatOccupancy);
  a1[2] = lazy protocol witness table accessor for type CAFSeatOccupancy and conformance CAFSeatOccupancy(&lazy protocol witness table cache variable for type CAFSeatOccupancy and conformance CAFSeatOccupancy, &protocol conformance descriptor for CAFSeatOccupancy);
  result = lazy protocol witness table accessor for type CAFSeatOccupancy and conformance CAFSeatOccupancy(&lazy protocol witness table cache variable for type CAFSeatOccupancy and conformance CAFSeatOccupancy, &protocol conformance descriptor for CAFSeatOccupancy);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSeatOccupancy and conformance CAFSeatOccupancy(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFSeatOccupancy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFSeatOccupancy] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFSeatOccupancy] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFSeatOccupancy] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFSeatOccupancyVGMd, &_sSaySo16CAFSeatOccupancyVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFSeatOccupancy] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFSeatOccupancy@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFSeatOccupancy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFSeatOccupancy@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFSensorState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFSensorState.allCases = a1;

  return result;
}

uint64_t CAFSensorState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromSensorState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFSensorState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFSensorState and conformance CAFSensorState(&lazy protocol witness table cache variable for type CAFSensorState and conformance CAFSensorState, &protocol conformance descriptor for CAFSensorState);
  a1[2] = lazy protocol witness table accessor for type CAFSensorState and conformance CAFSensorState(&lazy protocol witness table cache variable for type CAFSensorState and conformance CAFSensorState, &protocol conformance descriptor for CAFSensorState);
  result = lazy protocol witness table accessor for type CAFSensorState and conformance CAFSensorState(&lazy protocol witness table cache variable for type CAFSensorState and conformance CAFSensorState, &protocol conformance descriptor for CAFSensorState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSensorState and conformance CAFSensorState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFSensorState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFSensorState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFSensorState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFSensorState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14CAFSensorStateVGMd, &_sSaySo14CAFSensorStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFSensorState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFSensorState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFSensorState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFSensorState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFSettingProminenceLevel.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFSettingProminenceLevel.allCases = a1;

  return result;
}

uint64_t CAFSettingProminenceLevel.description.getter()
{
  v0 = NSStringFromSettingProminenceLevel();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFSettingProminenceLevel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel, &protocol conformance descriptor for CAFSettingProminenceLevel);
  a1[2] = lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel, &protocol conformance descriptor for CAFSettingProminenceLevel);
  result = lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel, &protocol conformance descriptor for CAFSettingProminenceLevel);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFSettingProminenceLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFSettingProminenceLevel] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFSettingProminenceLevel] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFSettingProminenceLevel] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo25CAFSettingProminenceLevelVGMd, &_sSaySo25CAFSettingProminenceLevelVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFSettingProminenceLevel] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFSettingProminenceLevel@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFSettingProminenceLevel.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFSettingProminenceLevel@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFSettingsCategory.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFSettingsCategory.allCases = a1;

  return result;
}

uint64_t CAFSettingsCategory.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromSettingsCategory();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFSettingsCategory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFSettingsCategory and conformance CAFSettingsCategory(&lazy protocol witness table cache variable for type CAFSettingsCategory and conformance CAFSettingsCategory, &protocol conformance descriptor for CAFSettingsCategory);
  a1[2] = lazy protocol witness table accessor for type CAFSettingsCategory and conformance CAFSettingsCategory(&lazy protocol witness table cache variable for type CAFSettingsCategory and conformance CAFSettingsCategory, &protocol conformance descriptor for CAFSettingsCategory);
  result = lazy protocol witness table accessor for type CAFSettingsCategory and conformance CAFSettingsCategory(&lazy protocol witness table cache variable for type CAFSettingsCategory and conformance CAFSettingsCategory, &protocol conformance descriptor for CAFSettingsCategory);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSettingsCategory and conformance CAFSettingsCategory(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFSettingsCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFSettingsCategory] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFSettingsCategory] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFSettingsCategory] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo19CAFSettingsCategoryVGMd, &_sSaySo19CAFSettingsCategoryVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFSettingsCategory] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFSettingsCategory@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFSettingsCategory.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFSettingsCategory@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFTargetSpeedState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFTargetSpeedState.allCases = a1;

  return result;
}

uint64_t CAFTargetSpeedState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromTargetSpeedState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFTargetSpeedState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFTargetSpeedState and conformance CAFTargetSpeedState(&lazy protocol witness table cache variable for type CAFTargetSpeedState and conformance CAFTargetSpeedState, &protocol conformance descriptor for CAFTargetSpeedState);
  a1[2] = lazy protocol witness table accessor for type CAFTargetSpeedState and conformance CAFTargetSpeedState(&lazy protocol witness table cache variable for type CAFTargetSpeedState and conformance CAFTargetSpeedState, &protocol conformance descriptor for CAFTargetSpeedState);
  result = lazy protocol witness table accessor for type CAFTargetSpeedState and conformance CAFTargetSpeedState(&lazy protocol witness table cache variable for type CAFTargetSpeedState and conformance CAFTargetSpeedState, &protocol conformance descriptor for CAFTargetSpeedState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTargetSpeedState and conformance CAFTargetSpeedState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTargetSpeedState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFTargetSpeedState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFTargetSpeedState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFTargetSpeedState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo19CAFTargetSpeedStateVGMd, &_sSaySo19CAFTargetSpeedStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFTargetSpeedState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFTargetSpeedState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFTargetSpeedState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFTargetSpeedState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFTemperatureState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFTemperatureState.allCases = a1;

  return result;
}

uint64_t CAFTemperatureState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromTemperatureState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFTemperatureState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFTemperatureState and conformance CAFTemperatureState(&lazy protocol witness table cache variable for type CAFTemperatureState and conformance CAFTemperatureState, &protocol conformance descriptor for CAFTemperatureState);
  a1[2] = lazy protocol witness table accessor for type CAFTemperatureState and conformance CAFTemperatureState(&lazy protocol witness table cache variable for type CAFTemperatureState and conformance CAFTemperatureState, &protocol conformance descriptor for CAFTemperatureState);
  result = lazy protocol witness table accessor for type CAFTemperatureState and conformance CAFTemperatureState(&lazy protocol witness table cache variable for type CAFTemperatureState and conformance CAFTemperatureState, &protocol conformance descriptor for CAFTemperatureState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTemperatureState and conformance CAFTemperatureState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTemperatureState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFTemperatureState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFTemperatureState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFTemperatureState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo19CAFTemperatureStateVGMd, &_sSaySo19CAFTemperatureStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFTemperatureState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFTemperatureState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFTemperatureState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFTemperatureState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFTrailingButtonType.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFTrailingButtonType.allCases = a1;

  return result;
}

uint64_t CAFTrailingButtonType.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromTrailingButtonType();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFTrailingButtonType(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFTrailingButtonType and conformance CAFTrailingButtonType(&lazy protocol witness table cache variable for type CAFTrailingButtonType and conformance CAFTrailingButtonType, &protocol conformance descriptor for CAFTrailingButtonType);
  a1[2] = lazy protocol witness table accessor for type CAFTrailingButtonType and conformance CAFTrailingButtonType(&lazy protocol witness table cache variable for type CAFTrailingButtonType and conformance CAFTrailingButtonType, &protocol conformance descriptor for CAFTrailingButtonType);
  result = lazy protocol witness table accessor for type CAFTrailingButtonType and conformance CAFTrailingButtonType(&lazy protocol witness table cache variable for type CAFTrailingButtonType and conformance CAFTrailingButtonType, &protocol conformance descriptor for CAFTrailingButtonType);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTrailingButtonType and conformance CAFTrailingButtonType(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTrailingButtonType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFTrailingButtonType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFTrailingButtonType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFTrailingButtonType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo21CAFTrailingButtonTypeVGMd, &_sSaySo21CAFTrailingButtonTypeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFTrailingButtonType] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFTrailingButtonType@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFTrailingButtonType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFTrailingButtonType@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFTransmissionMode.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFTransmissionMode.allCases = a1;

  return result;
}

uint64_t CAFTransmissionMode.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromTransmissionMode();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFTransmissionMode(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFTransmissionMode and conformance CAFTransmissionMode(&lazy protocol witness table cache variable for type CAFTransmissionMode and conformance CAFTransmissionMode, &protocol conformance descriptor for CAFTransmissionMode);
  a1[2] = lazy protocol witness table accessor for type CAFTransmissionMode and conformance CAFTransmissionMode(&lazy protocol witness table cache variable for type CAFTransmissionMode and conformance CAFTransmissionMode, &protocol conformance descriptor for CAFTransmissionMode);
  result = lazy protocol witness table accessor for type CAFTransmissionMode and conformance CAFTransmissionMode(&lazy protocol witness table cache variable for type CAFTransmissionMode and conformance CAFTransmissionMode, &protocol conformance descriptor for CAFTransmissionMode);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTransmissionMode and conformance CAFTransmissionMode(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTransmissionMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFTransmissionMode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFTransmissionMode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFTransmissionMode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo19CAFTransmissionModeVGMd, &_sSaySo19CAFTransmissionModeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFTransmissionMode] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFTransmissionMode@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFTransmissionMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFTransmissionMode@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFTurnSignal.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFTurnSignal.allCases = a1;

  return result;
}

uint64_t CAFTurnSignal.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromTurnSignal();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFTurnSignal(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFTurnSignal and conformance CAFTurnSignal(&lazy protocol witness table cache variable for type CAFTurnSignal and conformance CAFTurnSignal, &protocol conformance descriptor for CAFTurnSignal);
  a1[2] = lazy protocol witness table accessor for type CAFTurnSignal and conformance CAFTurnSignal(&lazy protocol witness table cache variable for type CAFTurnSignal and conformance CAFTurnSignal, &protocol conformance descriptor for CAFTurnSignal);
  result = lazy protocol witness table accessor for type CAFTurnSignal and conformance CAFTurnSignal(&lazy protocol witness table cache variable for type CAFTurnSignal and conformance CAFTurnSignal, &protocol conformance descriptor for CAFTurnSignal);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTurnSignal and conformance CAFTurnSignal(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTurnSignal(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFTurnSignal] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFTurnSignal] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFTurnSignal] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFTurnSignalVGMd, &_sSaySo13CAFTurnSignalVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFTurnSignal] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFTurnSignal@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFTurnSignal.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFTurnSignal@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFUIEmphasizedEngineGauge.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFUIEmphasizedEngineGauge.allCases = a1;

  return result;
}

uint64_t CAFUIEmphasizedEngineGauge.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromUIEmphasizedEngineGauge();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFUIEmphasizedEngineGauge(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge(&lazy protocol witness table cache variable for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge, &protocol conformance descriptor for CAFUIEmphasizedEngineGauge);
  a1[2] = lazy protocol witness table accessor for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge(&lazy protocol witness table cache variable for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge, &protocol conformance descriptor for CAFUIEmphasizedEngineGauge);
  result = lazy protocol witness table accessor for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge(&lazy protocol witness table cache variable for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge, &protocol conformance descriptor for CAFUIEmphasizedEngineGauge);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFUIEmphasizedEngineGauge(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFUIEmphasizedEngineGauge] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFUIEmphasizedEngineGauge] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFUIEmphasizedEngineGauge] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo26CAFUIEmphasizedEngineGaugeVGMd, &_sSaySo26CAFUIEmphasizedEngineGaugeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFUIEmphasizedEngineGauge] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFUIEmphasizedEngineGauge@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFUIEmphasizedEngineGauge.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFUIEmphasizedEngineGauge@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFUIInputDeviceButtonEvent.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFUIInputDeviceButtonEvent.allCases = a1;

  return result;
}

uint64_t CAFUIInputDeviceButtonEvent.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromUIInputDeviceButtonEvent();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFUIInputDeviceButtonEvent(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent(&lazy protocol witness table cache variable for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent, &protocol conformance descriptor for CAFUIInputDeviceButtonEvent);
  a1[2] = lazy protocol witness table accessor for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent(&lazy protocol witness table cache variable for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent, &protocol conformance descriptor for CAFUIInputDeviceButtonEvent);
  result = lazy protocol witness table accessor for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent(&lazy protocol witness table cache variable for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent, &protocol conformance descriptor for CAFUIInputDeviceButtonEvent);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFUIInputDeviceButtonEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFUIInputDeviceButtonEvent] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFUIInputDeviceButtonEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFUIInputDeviceButtonEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo27CAFUIInputDeviceButtonEventVGMd, &_sSaySo27CAFUIInputDeviceButtonEventVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFUIInputDeviceButtonEvent] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFUIInputDeviceButtonEvent@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFUIInputDeviceButtonEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFUIInputDeviceButtonEvent@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFUIInputDevicePurpose.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFUIInputDevicePurpose.allCases = a1;

  return result;
}

uint64_t CAFUIInputDevicePurpose.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromUIInputDevicePurpose();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFUIInputDevicePurpose(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose(&lazy protocol witness table cache variable for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose, &protocol conformance descriptor for CAFUIInputDevicePurpose);
  a1[2] = lazy protocol witness table accessor for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose(&lazy protocol witness table cache variable for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose, &protocol conformance descriptor for CAFUIInputDevicePurpose);
  result = lazy protocol witness table accessor for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose(&lazy protocol witness table cache variable for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose, &protocol conformance descriptor for CAFUIInputDevicePurpose);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFUIInputDevicePurpose(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFUIInputDevicePurpose] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFUIInputDevicePurpose] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFUIInputDevicePurpose] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo23CAFUIInputDevicePurposeVGMd, &_sSaySo23CAFUIInputDevicePurposeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFUIInputDevicePurpose] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFUIInputDevicePurpose@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFUIInputDevicePurpose.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFUIInputDevicePurpose@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFUISceneState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFUISceneState.allCases = a1;

  return result;
}

uint64_t CAFUISceneState.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromUISceneState();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFUISceneState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFUISceneState and conformance CAFUISceneState(&lazy protocol witness table cache variable for type CAFUISceneState and conformance CAFUISceneState, &protocol conformance descriptor for CAFUISceneState);
  a1[2] = lazy protocol witness table accessor for type CAFUISceneState and conformance CAFUISceneState(&lazy protocol witness table cache variable for type CAFUISceneState and conformance CAFUISceneState, &protocol conformance descriptor for CAFUISceneState);
  result = lazy protocol witness table accessor for type CAFUISceneState and conformance CAFUISceneState(&lazy protocol witness table cache variable for type CAFUISceneState and conformance CAFUISceneState, &protocol conformance descriptor for CAFUISceneState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUISceneState and conformance CAFUISceneState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFUISceneState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFUISceneState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFUISceneState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFUISceneState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15CAFUISceneStateVGMd, &_sSaySo15CAFUISceneStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFUISceneState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFUISceneState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFUISceneState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFUISceneState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static CAFVentTypes.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFVentTypes.allCases = a1;

  return result;
}

uint64_t CAFVentTypes.description.getter()
{
  v0 = NSStringFromVentTypes();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFVentTypes(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFVentTypes and conformance CAFVentTypes(&lazy protocol witness table cache variable for type CAFVentTypes and conformance CAFVentTypes, &protocol conformance descriptor for CAFVentTypes);
  a1[2] = lazy protocol witness table accessor for type CAFVentTypes and conformance CAFVentTypes(&lazy protocol witness table cache variable for type CAFVentTypes and conformance CAFVentTypes, &protocol conformance descriptor for CAFVentTypes);
  result = lazy protocol witness table accessor for type CAFVentTypes and conformance CAFVentTypes(&lazy protocol witness table cache variable for type CAFVentTypes and conformance CAFVentTypes, &protocol conformance descriptor for CAFVentTypes);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFVentTypes and conformance CAFVentTypes(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFVentTypes(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFVentTypes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFVentTypes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFVentTypes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12CAFVentTypesVGMd, &_sSaySo12CAFVentTypesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFVentTypes] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFVentTypes@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFVentTypes.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFVentTypes@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t specialized CAFEnum.id.getter(uint64_t a1)
{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8170]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8178]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8180]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8188]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8190]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8198]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81A0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81A8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81B0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81B8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81C0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81C8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81D0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81D8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81E0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81E8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81F0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81F8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8200]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8208]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8210]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8218]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8220]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8228]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8230]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8238]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8240]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8248]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8250]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8258]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8260]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8268]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8270]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8278]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8280]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8288]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8290]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8298]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82A0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82A8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82B0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82B8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82C0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82C8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82D0]);
}

uint64_t specialized CAFEnum.id.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_3();
  v7 = v6();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_1_5();
  v9 = a2(a1);
  if (v9)
  {
    v10 = v9;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v11;
  }

  MEMORY[0x245D0A530](v3, v2);

  return v13;
}

uint64_t specialized CAFEnum.id.getter(unsigned __int8 a1, uint64_t (*a2)(void))
{
  OUTLINED_FUNCTION_0_3();
  v8 = v7(v6);
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_1_5();
  v10 = a2(a1);
  if (v10)
  {
    v11 = v10;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v12;
  }

  MEMORY[0x245D0A530](v3, v2);

  return v14;
}

double static CAFVolumeType.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFVolumeType.allCases = a1;

  return result;
}

uint64_t CAFVolumeType.description.getter(unsigned __int8 a1)
{
  v1 = NSStringFromVolumeType();
  if (!v1)
  {
    return 0x6E776F6E6B6E7528;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for CAFVolumeType(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFVolumeType and conformance CAFVolumeType(&lazy protocol witness table cache variable for type CAFVolumeType and conformance CAFVolumeType, &protocol conformance descriptor for CAFVolumeType);
  a1[2] = lazy protocol witness table accessor for type CAFVolumeType and conformance CAFVolumeType(&lazy protocol witness table cache variable for type CAFVolumeType and conformance CAFVolumeType, &protocol conformance descriptor for CAFVolumeType);
  result = lazy protocol witness table accessor for type CAFVolumeType and conformance CAFVolumeType(&lazy protocol witness table cache variable for type CAFVolumeType and conformance CAFVolumeType, &protocol conformance descriptor for CAFVolumeType);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFVolumeType and conformance CAFVolumeType(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFVolumeType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFVolumeType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFVolumeType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFVolumeType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFVolumeTypeVGMd, &_sSaySo13CAFVolumeTypeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFVolumeType] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFVolumeType@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFVolumeType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFVolumeType@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1, MEMORY[0x277CF82D8]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void OUTLINED_FUNCTION_1_5()
{

  JUMPOUT(0x245D0A530);
}

id CAFCar.nowPlaying.getter()
{
  v1 = [v0 nowPlayingInformation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 nowPlaying];

  return v3;
}

uint64_t CAUAssetLibrary.featureConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CAUResource();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils23CAUFeatureConfigurationVSgMd, &_s13CarAssetUtils23CAUFeatureConfigurationVSgMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-v7];
  (*(v3 + 104))(v5, *MEMORY[0x277CF87D8], v2);
  lazy protocol witness table accessor for type CAUFeatureConfiguration? and conformance <A> A?();
  dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for CAUFeatureConfiguration();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  outlined destroy of CAUFeatureConfiguration?(v8);
  return CAUFeatureConfiguration.init()();
}

unint64_t lazy protocol witness table accessor for type CAUFeatureConfiguration? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CAUFeatureConfiguration? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CAUFeatureConfiguration? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s13CarAssetUtils23CAUFeatureConfigurationVSgMd, &_s13CarAssetUtils23CAUFeatureConfigurationVSgMR);
    lazy protocol witness table accessor for type CAUFeatureConfiguration and conformance CAUFeatureConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAUFeatureConfiguration? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAUFeatureConfiguration and conformance CAUFeatureConfiguration()
{
  result = lazy protocol witness table cache variable for type CAUFeatureConfiguration and conformance CAUFeatureConfiguration;
  if (!lazy protocol witness table cache variable for type CAUFeatureConfiguration and conformance CAUFeatureConfiguration)
  {
    type metadata accessor for CAUFeatureConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAUFeatureConfiguration and conformance CAUFeatureConfiguration);
  }

  return result;
}

uint64_t outlined destroy of CAUFeatureConfiguration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils23CAUFeatureConfigurationVSgMd, &_s13CarAssetUtils23CAUFeatureConfigurationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Optional<A>.featureConfiguration()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils23CAUFeatureConfigurationVSgMd, &_s13CarAssetUtils23CAUFeatureConfigurationVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  if (a1)
  {
    CAUAssetLibrary.featureConfiguration()(&v10 - v5);
    v7 = type metadata accessor for CAUFeatureConfiguration();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    return (*(*(v7 - 8) + 32))(a2, v6, v7);
  }

  else
  {
    v9 = type metadata accessor for CAUFeatureConfiguration();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
    CAUFeatureConfiguration.init()();
    result = __swift_getEnumTagSinglePayload(v6, 1, v9);
    if (result != 1)
    {
      return outlined destroy of CAUFeatureConfiguration?(v6);
    }
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0x796E614D6E6FLL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x796E614D6E6FLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x656C676E69536E6FLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 2037277037;
      break;
    case 3:
      v5 = 0x68746957796E616DLL;
      v3 = 0xEC0000006F72655ALL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x656C676E69536E6FLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 2037277037;
      break;
    case 3:
      v2 = 0x68746957796E616DLL;
      v6 = 0xEC0000006F72655ALL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int CAFMediaSource.SeekDirection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D0A920](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CAFMediaSource.SeekDirection(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x245D0A920](v2);
  return Hasher._finalize()();
}

void *CAFMediaSource.sortedStations.getter()
{
  v1 = [v0 mediaItems];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v1 mediaItems];

  type metadata accessor for CAFMediaItem();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v0;

  v7 = specialized Array._copyToContiguousArray()(v5);
  specialized MutableCollection<>.sort(by:)(&v7, v4);

  return v7;
}

void CAFMediaSource.playingStation.getter()
{
  if ([v0 hasCurrentMediaItemIdentifier] && (objc_msgSend(v0, sel_currentMediaItemIdentifierInvalid) & 1) == 0)
  {
    v7 = CAFMediaSource.sortedStations.getter();
    v8 = specialized Array._getCount()();
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {
        goto LABEL_32;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245D0A790](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }

      v12 = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v10, &selRef_identifier);
      v14 = v13;
      v15 = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v0, &selRef_currentMediaItemIdentifier);
      if (!v14)
      {
        break;
      }

      if (!v16)
      {
        goto LABEL_29;
      }

      if (v12 == v15 && v14 == v16)
      {

LABEL_36:

        return;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_36;
      }

LABEL_30:
      ;
    }

    if (!v16)
    {
      goto LABEL_36;
    }

LABEL_29:

    goto LABEL_30;
  }

  if ([v0 hasCurrentFrequency] && (objc_msgSend(v0, sel_currentFrequencyInvalid) & 1) == 0)
  {
    v1 = CAFMediaSource.sortedStations.getter();
    v2 = specialized Array._getCount()();
    for (j = 0; v2 != j; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x245D0A790](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      if (__OFADD__(j, 1))
      {
        goto LABEL_39;
      }

      v6 = [v4 frequency];
      if (v6 == [v0 currentFrequency])
      {
        goto LABEL_36;
      }
    }

LABEL_32:
  }
}

id CAFMediaSource.station(for:)(uint64_t a1, void *a2)
{
  v2 = CAFMediaSource.stations(for:)(a1, a2);
  if (specialized Array._getCount()())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x245D0A790](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
  }

  else
  {

    return 0;
  }

  return v4;
}

void *CAFMediaSource.stations(for:)(uint64_t a1, void *a2)
{
  v4 = CAFMediaSource.sortedStations.getter();
  v20 = MEMORY[0x277D84F90];
  v5 = specialized Array._getCount()();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      v20 = specialized Array._copyToContiguousArray()(v17);
      specialized MutableCollection<>.sort(by:)(&v20);

      return v20;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x245D0A790](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = [v19 mediaSourceSemanticType];
    v10 = [v8 frequency];
    if (v9 == 2 || v9 == 8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_2422F24A0;
      *(v12 + 56) = MEMORY[0x277D839F8];
      *(v12 + 64) = MEMORY[0x277D83A80];
      *(v12 + 32) = v10 / 1000.0;
      v13 = String.init(format:_:)();
    }

    else
    {
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
    }

    if (v13 == a1 && v14 == a2)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {

        continue;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

void CAFMediaSource.seek(direction:completion:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  v34 = a2;
  aBlock = 0;
  v5 = 0xE900000000000029;
  v6 = 0x6E776F6E6B6E7528;
  v7 = *a1;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  MEMORY[0x245D0A530](0xD000000000000012, 0x800000024230B2F0);
  v41 = v7;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000010, 0x800000024230B310);
  [v3 mediaSourceSemanticType];
  v8 = NSStringFromMediaSourceSemanticType();
  if (v8)
  {
    v9 = v8;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE900000000000029;
  }

  MEMORY[0x245D0A530](v6, v11);

  v13 = aBlock;
  v12 = v36;
  v14 = static os_log_type_t.info.getter();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.default;
  v33 = " in source type ";
  if (os_log_type_enabled(static OS_os_log.default, v14))
  {
    v16 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = OUTLINED_FUNCTION_2_2(" in source type ", v32, " in source type ", v34);
    *(v16 + 12) = 2048;
    *(v16 + 14) = 62;
    *(v16 + 22) = 2080;
    *(v16 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &aBlock);
    _os_log_impl(&dword_2421B0000, v15, v14, "%s: %ld  %s", v16, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    v5 = 0xE900000000000029;
    OUTLINED_FUNCTION_15();
  }

  LOBYTE(aBlock) = v7;
  v17 = CAFMediaSource.seekedStation(direction:)(&aBlock);
  if (v17)
  {
    v18 = v17;
    v19 = [v4 car];
    if (v19 && (v20 = v19, v21 = [v19 media], v20, v21))
    {
      if (v34)
      {
        v39 = v34;
        v40 = v32;
        aBlock = MEMORY[0x277D85DD0];
        v36 = 1107296256;
        OUTLINED_FUNCTION_0_4();
        v37 = v22;
        v38 = &block_descriptor_0;
        v23 = _Block_copy(&aBlock);
      }

      else
      {
        v23 = 0;
      }

      [v21 tuneToMediaItem:v18 inSource:v4 completion:{v23, v32}];

      _Block_release(v23);
    }

    else
    {
    }
  }

  else
  {
    aBlock = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    MEMORY[0x245D0A530](0xD000000000000032, 0x800000024230B350);
    v41 = v7;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x245D0A530](0x656372756F73202CLL, 0xEE00206570797420);
    [v4 mediaSourceSemanticType];
    v24 = NSStringFromMediaSourceSemanticType();
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v27;
    }

    else
    {
      v26 = 0x6E776F6E6B6E7528;
    }

    MEMORY[0x245D0A530](v26, v5);

    v29 = aBlock;
    v28 = v36;
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v30))
    {
      v31 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v31 = 136315650;
      *(v31 + 4) = OUTLINED_FUNCTION_2_2(v33, v32, v33, v34);
      *(v31 + 12) = 2048;
      *(v31 + 14) = 70;
      *(v31 + 22) = 2080;
      *(v31 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &aBlock);
      _os_log_impl(&dword_2421B0000, v15, v30, "%s: %ld  %s", v31, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_15();
    }
  }
}

void *CAFMediaSource.seekedStation(direction:)(char *a1)
{
  v2 = v1;
  v3 = *a1;
  CAFMediaSource.sortedStations.getter();
  v4 = specialized Array._getCount()();

  if (!v4)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x245D0A530](0xD000000000000032, 0x800000024230B460);
    [v1 mediaSourceSemanticType];
    v9 = NSStringFromMediaSourceSemanticType();
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0x6E776F6E6B6E7528;
      v13 = 0xE900000000000029;
    }

    MEMORY[0x245D0A530](v11, v13);

    v20 = v37;
    v19 = v38;
    v21 = static os_log_type_t.info.getter();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.default;
    if (!os_log_type_enabled(static OS_os_log.default, v21))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136315650;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024230B3F0, &v37);
    *(v23 + 12) = 2048;
    v25 = 136;
    goto LABEL_23;
  }

  CAFMediaSource.playingStation.getter();
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if (![v5 multicast])
  {

    goto LABEL_9;
  }

  CAFMediaSource.currentMulticasts.getter();
  LOBYTE(v37) = v3;
  v8 = Array<A>.multicastNeighbor(for:direction:)(v6, &v37, v7);

  if (!v8)
  {
LABEL_9:
    v14 = [v2 mediaSourceSemanticType];
    if (v14 - 1 < 3)
    {
      LOBYTE(v37) = v3;
      return CAFMediaSource.seekedFrequencyStation(direction:)(&v37);
    }

    if (v14 == 6 || v14 == 8)
    {
      CAFMediaSource.playingStation.getter();
      if (v16)
      {
        v17 = v16;
        LOBYTE(v37) = v3;
        CAFMediaSource.seekedIdentifierStation(direction:playingStation:)(&v37, v16);
        v8 = v18;

        return v8;
      }

      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(71);
      MEMORY[0x245D0A530](0xD000000000000045, 0x800000024230B410);
      [v2 mediaSourceSemanticType];
      v32 = NSStringFromMediaSourceSemanticType();
      if (v32)
      {
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v34 = 0x6E776F6E6B6E7528;
        v36 = 0xE900000000000029;
      }

      MEMORY[0x245D0A530](v34, v36);

      v20 = v37;
      v19 = v38;
      v21 = static os_log_type_t.info.getter();
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v22 = static OS_os_log.default;
      if (!os_log_type_enabled(static OS_os_log.default, v21))
      {
LABEL_24:

        return 0;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315650;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024230B3F0, &v37);
      *(v23 + 12) = 2048;
      v25 = 157;
    }

    else
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v37 = 0xD000000000000030;
      v38 = 0x800000024230B3B0;
      [v2 mediaSourceSemanticType];
      v27 = NSStringFromMediaSourceSemanticType();
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v29 = 0x6E776F6E6B6E7528;
        v31 = 0xE900000000000029;
      }

      MEMORY[0x245D0A530](v29, v31);

      v20 = v37;
      v19 = v38;
      v21 = static os_log_type_t.info.getter();
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v22 = static OS_os_log.default;
      if (!os_log_type_enabled(static OS_os_log.default, v21))
      {
        goto LABEL_24;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315650;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024230B3F0, &v37);
      *(v23 + 12) = 2048;
      v25 = 162;
    }

LABEL_23:
    *(v23 + 14) = v25;
    *(v23 + 22) = 2080;
    *(v23 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v37);
    _os_log_impl(&dword_2421B0000, v22, v21, "%s: %ld  %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D0B280](v24, -1, -1);
    MEMORY[0x245D0B280](v23, -1, -1);
    goto LABEL_24;
  }

  return v8;
}