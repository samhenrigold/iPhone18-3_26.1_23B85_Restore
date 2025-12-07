uint64_t type metadata accessor for Headphone_Manager(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for Headphone_Manager;
  if (!type metadata singleton initialization cache for Headphone_Manager)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t type metadata completion function for Headphone_Manager(uint64_t a1)
{
  updated = type metadata accessor for Published<[String : HMDeviceRecord]>(319);
  if (v1 <= 0x3F)
  {
    updated = type metadata accessor for Published<[String : HeadphoneDevice]>(319);
    if (v2 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t type metadata accessor for HeadphoneDevice(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for HeadphoneDevice;
  if (!type metadata singleton initialization cache for HeadphoneDevice)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t type metadata completion function for HeadphoneDevice(uint64_t a1)
{
  updated = type metadata accessor for Published<Bool>(319);
  if (v1 <= 0x3F)
  {
    updated = type metadata accessor for Published<String>(319);
    if (v2 <= 0x3F)
    {
      updated = type metadata accessor for Published<CBListeningMode>(319);
      if (v3 <= 0x3F)
      {
        updated = type metadata accessor for Published<CBPeerUIGestureMode>(319);
        if (v4 <= 0x3F)
        {
          updated = type metadata accessor for Published<CBDoubleTapAction>(319);
          if (v5 <= 0x3F)
          {
            updated = type metadata accessor for Published<CBPeerCrownRotationDirection>(319);
            if (v6 <= 0x3F)
            {
              updated = type metadata accessor for Published<CBSmartRoutingMode>(319);
              if (v7 <= 0x3F)
              {
                updated = type metadata accessor for Published<CBMicrophoneMode>(319);
                if (v8 <= 0x3F)
                {
                  updated = type metadata accessor for Published<CBPeerCallConfig>(319);
                  if (v9 <= 0x3F)
                  {
                    updated = type metadata accessor for Published<[Int : String]>(319);
                    if (v10 <= 0x3F)
                    {
                      updated = type metadata accessor for Published<Float>(319);
                      if (v11 <= 0x3F)
                      {
                        updated = type metadata accessor for Published<CBBatteryState>(319);
                        if (v12 <= 0x3F)
                        {
                          updated = type metadata accessor for Published<HearingRecord>(319);
                          if (v13 <= 0x3F)
                          {
                            updated = type metadata accessor for Published<AADevice>(319);
                            if (v14 <= 0x3F)
                            {
                              updated = swift_updateClassMetadata2();
                              if (!updated)
                              {
                                return 0;
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

  return updated;
}

unint64_t type metadata accessor for Published<Bool>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<Bool>;
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<Bool>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<String>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<String>;
  if (!lazy cache variable for type metadata for Published<String>)
  {
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<String>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<CBListeningMode>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<CBListeningMode>;
  if (!lazy cache variable for type metadata for Published<CBListeningMode>)
  {
    type metadata accessor for CBListeningMode(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<CBListeningMode>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CBListeningMode(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBListeningMode;
  if (!lazy cache variable for type metadata for CBListeningMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBListeningMode);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<CBPeerUIGestureMode>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<CBPeerUIGestureMode>;
  if (!lazy cache variable for type metadata for Published<CBPeerUIGestureMode>)
  {
    type metadata accessor for CBPeerUIGestureMode(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<CBPeerUIGestureMode>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CBPeerUIGestureMode(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBPeerUIGestureMode;
  if (!lazy cache variable for type metadata for CBPeerUIGestureMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerUIGestureMode);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<CBDoubleTapAction>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<CBDoubleTapAction>;
  if (!lazy cache variable for type metadata for Published<CBDoubleTapAction>)
  {
    type metadata accessor for CBDoubleTapAction(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<CBDoubleTapAction>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CBDoubleTapAction(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBDoubleTapAction;
  if (!lazy cache variable for type metadata for CBDoubleTapAction)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBDoubleTapAction);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<CBPeerCrownRotationDirection>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<CBPeerCrownRotationDirection>;
  if (!lazy cache variable for type metadata for Published<CBPeerCrownRotationDirection>)
  {
    type metadata accessor for CBPeerCrownRotationDirection(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<CBPeerCrownRotationDirection>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CBPeerCrownRotationDirection(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBPeerCrownRotationDirection;
  if (!lazy cache variable for type metadata for CBPeerCrownRotationDirection)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerCrownRotationDirection);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<CBSmartRoutingMode>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<CBSmartRoutingMode>;
  if (!lazy cache variable for type metadata for Published<CBSmartRoutingMode>)
  {
    type metadata accessor for CBSmartRoutingMode(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<CBSmartRoutingMode>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CBSmartRoutingMode(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBSmartRoutingMode;
  if (!lazy cache variable for type metadata for CBSmartRoutingMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBSmartRoutingMode);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<CBMicrophoneMode>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<CBMicrophoneMode>;
  if (!lazy cache variable for type metadata for Published<CBMicrophoneMode>)
  {
    type metadata accessor for CBMicrophoneMode(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<CBMicrophoneMode>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CBMicrophoneMode(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBMicrophoneMode;
  if (!lazy cache variable for type metadata for CBMicrophoneMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBMicrophoneMode);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<CBPeerCallConfig>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<CBPeerCallConfig>;
  if (!lazy cache variable for type metadata for Published<CBPeerCallConfig>)
  {
    type metadata accessor for CBPeerCallConfig(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<CBPeerCallConfig>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CBPeerCallConfig(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBPeerCallConfig;
  if (!lazy cache variable for type metadata for CBPeerCallConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerCallConfig);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<Float>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<Float>;
  if (!lazy cache variable for type metadata for Published<Float>)
  {
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<Float>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<CBBatteryState>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<CBBatteryState>;
  if (!lazy cache variable for type metadata for Published<CBBatteryState>)
  {
    type metadata accessor for CBBatteryState(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<CBBatteryState>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CBBatteryState(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBBatteryState;
  if (!lazy cache variable for type metadata for CBBatteryState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBBatteryState);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<HearingRecord>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<HearingRecord>;
  if (!lazy cache variable for type metadata for Published<HearingRecord>)
  {
    type metadata accessor for HearingRecord(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<HearingRecord>);
      return v2;
    }
  }

  return v5;
}

uint64_t type metadata accessor for HearingRecord(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for HearingRecord;
  if (!type metadata singleton initialization cache for HearingRecord)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t type metadata completion function for HearingRecord(uint64_t a1)
{
  updated = type metadata accessor for Published<String>(319);
  if (v1 <= 0x3F)
  {
    updated = type metadata accessor for Published<HMMultiState>(319);
    if (v2 <= 0x3F)
    {
      updated = type metadata accessor for Published<HMRegionStatus>(319);
      if (v3 <= 0x3F)
      {
        updated = type metadata accessor for Published<[NSNumber]>(319);
        if (v4 <= 0x3F)
        {
          updated = type metadata accessor for Published<HMOcclusionResult>(319);
          if (v5 <= 0x3F)
          {
            updated = type metadata accessor for Published<[HKAudiogramSample]>(319);
            if (v6 <= 0x3F)
            {
              updated = type metadata accessor for Published<HMInfo?>(319);
              if (v7 <= 0x3F)
              {
                updated = type metadata accessor for Published<NSNumber>(319);
                if (v8 <= 0x3F)
                {
                  updated = swift_updateClassMetadata2();
                  if (!updated)
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return updated;
}

unint64_t type metadata accessor for Published<HMMultiState>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<HMMultiState>;
  if (!lazy cache variable for type metadata for Published<HMMultiState>)
  {
    type metadata accessor for HMMultiState(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<HMMultiState>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HMMultiState(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HMMultiState;
  if (!lazy cache variable for type metadata for HMMultiState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HMMultiState);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<HMRegionStatus>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<HMRegionStatus>;
  if (!lazy cache variable for type metadata for Published<HMRegionStatus>)
  {
    type metadata accessor for HMRegionStatus(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<HMRegionStatus>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HMRegionStatus(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HMRegionStatus;
  if (!lazy cache variable for type metadata for HMRegionStatus)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HMRegionStatus);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<[NSNumber]>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<[NSNumber]>;
  if (!lazy cache variable for type metadata for Published<[NSNumber]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<[NSNumber]>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<HMOcclusionResult>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<HMOcclusionResult>;
  if (!lazy cache variable for type metadata for Published<HMOcclusionResult>)
  {
    type metadata accessor for HMOcclusionResult(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<HMOcclusionResult>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HMOcclusionResult(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HMOcclusionResult;
  if (!lazy cache variable for type metadata for HMOcclusionResult)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HMOcclusionResult);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<[HKAudiogramSample]>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<[HKAudiogramSample]>;
  if (!lazy cache variable for type metadata for Published<[HKAudiogramSample]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17HKAudiogramSampleCGMd, &_sSaySo17HKAudiogramSampleCGMR);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<[HKAudiogramSample]>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<NSNumber>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<NSNumber>;
  if (!lazy cache variable for type metadata for Published<NSNumber>)
  {
    type metadata accessor for NSNumber();
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<NSNumber>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for NSNumber()
{
  v2 = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSNumber);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for Published<AADevice>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<AADevice>;
  if (!lazy cache variable for type metadata for Published<AADevice>)
  {
    type metadata accessor for AADevice(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<AADevice>);
      return v2;
    }
  }

  return v5;
}

uint64_t type metadata accessor for AADevice(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for AADevice;
  if (!type metadata singleton initialization cache for AADevice)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t type metadata accessor for AADeviceProperty<AADevice, Date?>(uint64_t a1)
{
  v6 = lazy cache variable for type metadata for AADeviceProperty<AADevice, Date?>;
  if (!lazy cache variable for type metadata for AADeviceProperty<AADevice, Date?>)
  {
    v7[0] = type metadata accessor for AADevice(255);
    v7[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v7[2] = lazy protocol witness table accessor for type AADevice and conformance AADevice();
    v7[3] = lazy protocol witness table accessor for type Date? and conformance <A> A?();
    v4 = type metadata accessor for AADeviceProperty(a1, v7);
    v6 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for AADeviceProperty<AADevice, Date?>);
      return v2;
    }
  }

  return v6;
}

unint64_t type metadata completion function for AADevice(uint64_t a1)
{
  updated = type metadata accessor for AADeviceProperty<AADevice, Date?>(319);
  if (v1 <= 0x3F)
  {
    updated = type metadata accessor for Published<AAFeatureCapability>(319);
    if (v2 <= 0x3F)
    {
      updated = type metadata accessor for Published<AADBatteryInfoVM>(319);
      if (v3 <= 0x3F)
      {
        updated = type metadata accessor for Published<AADevicePlacementMode>(319);
        if (v4 <= 0x3F)
        {
          updated = type metadata accessor for Published<AAPlacement>(319);
          if (v5 <= 0x3F)
          {
            updated = swift_updateClassMetadata2();
            if (!updated)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return updated;
}

unint64_t lazy protocol witness table accessor for type AADevice and conformance AADevice()
{
  v2 = lazy protocol witness table cache variable for type AADevice and conformance AADevice;
  if (!lazy protocol witness table cache variable for type AADevice and conformance AADevice)
  {
    type metadata accessor for AADevice(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevice and conformance AADevice);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AADevice and conformance AADevice;
  if (!lazy protocol witness table cache variable for type AADevice and conformance AADevice)
  {
    type metadata accessor for AADevice(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevice and conformance AADevice);
    return WitnessTable;
  }

  return v2;
}

unint64_t instantiation function for generic protocol witness table for AADevice(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AADevice and conformance AADevice();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?()
{
  v2 = lazy protocol witness table cache variable for type Date? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type Date and conformance Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Date? and conformance <A> A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  v2 = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Date and conformance Date);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata completion function for AADeviceProperty(uint64_t a1)
{
  v8 = swift_checkMetadataState();
  v9 = v8;
  if (v3 <= 0x3F)
  {
    type metadata accessor for HeadphonePropertyWrapperPublisher(255, v8, v1, v2);
    v9 = type metadata accessor for Optional();
    if (v4 <= 0x3F)
    {
      v9 = type metadata accessor for ObservableObjectPublisher?(319);
      if (v5 <= 0x3F)
      {
        v9 = type metadata accessor for PartialKeyPath<AADeviceModel>(319);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v9;
}

uint64_t type metadata instantiation function for HeadphonePropertyWrapperPublisher(uint64_t a1, uint64_t a2)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t type metadata accessor for ObservableObjectPublisher?(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for ObservableObjectPublisher?;
  if (!lazy cache variable for type metadata for ObservableObjectPublisher?)
  {
    type metadata accessor for ObservableObjectPublisher();
    v4 = type metadata accessor for Optional();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for ObservableObjectPublisher?);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for PartialKeyPath<AADeviceModel>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for PartialKeyPath<AADeviceModel>;
  if (!lazy cache variable for type metadata for PartialKeyPath<AADeviceModel>)
  {
    v4 = type metadata accessor for PartialKeyPath();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for PartialKeyPath<AADeviceModel>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<AADBatteryInfoVM>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<AADBatteryInfoVM>;
  if (!lazy cache variable for type metadata for Published<AADBatteryInfoVM>)
  {
    type metadata accessor for AADBatteryInfoVM(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<AADBatteryInfoVM>);
      return v2;
    }
  }

  return v5;
}

uint64_t type metadata accessor for AADBatteryInfoVM(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for AADBatteryInfoVM;
  if (!type metadata singleton initialization cache for AADBatteryInfoVM)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t type metadata completion function for AADBatteryInfoVM(uint64_t a1)
{
  updated = type metadata accessor for Published<AABattery>(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t type metadata accessor for Published<AABattery>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<AABattery>;
  if (!lazy cache variable for type metadata for Published<AABattery>)
  {
    type metadata accessor for AABattery();
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<AABattery>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AABattery()
{
  v2 = lazy cache variable for type metadata for AABattery;
  if (!lazy cache variable for type metadata for AABattery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for AABattery);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for Published<AAFeatureCapability>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<AAFeatureCapability>;
  if (!lazy cache variable for type metadata for Published<AAFeatureCapability>)
  {
    type metadata accessor for AAFeatureCapability(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<AAFeatureCapability>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AAFeatureCapability(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAFeatureCapability;
  if (!lazy cache variable for type metadata for AAFeatureCapability)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAFeatureCapability);
      return v2;
    }
  }

  return v5;
}

uint64_t static Headphone_Manager.shared.getter()
{
  v0 = Headphone_Manager.shared.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t *Headphone_Manager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static Headphone_Manager.shared;
}

id one-time initialization function for shared()
{
  type metadata accessor for Headphone_Manager(0);
  result = Headphone_Manager.__allocating_init()();
  static Headphone_Manager.shared = result;
  return result;
}

{
  type metadata accessor for HeadphoneDataProvider();
  result = HeadphoneDataProvider.__allocating_init()();
  static HeadphoneDataProvider.shared = result;
  return result;
}

char *Headphone_Manager.init()()
{
  v107 = 0;
  v128 = 0;
  v64 = 0;
  v65 = type metadata accessor for Logger();
  v66 = *(v65 - 8);
  v67 = v66;
  MEMORY[0x1EEE9AC00](v65 - 8);
  v68 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  v69 = *(v98 - 8);
  v94 = v69;
  v70 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v98 - 8);
  v97 = &v24 - v70;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMd, &_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMR);
  v71 = *(v92 - 8);
  v89 = v71;
  v72 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v107);
  v91 = &v24 - v72;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  MEMORY[0x1EEE9AC00](v107);
  v77 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v107);
  v76 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v107);
  v75 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v0;
  v79 = v0;
  v78 = OBJC_IVAR___HPMHeadphoneManager_dispatchQueue;
  v73 = type metadata accessor for OS_dispatch_queue();
  v74 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneManager", 0x1AuLL, 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v77);
  *&v79[v78] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_unknownObjectWeakInit();
  v81 = v128;
  v80 = OBJC_IVAR___HPMHeadphoneManager_cbDiscovery;
  type metadata accessor for CBDiscovery();
  *&v81[v80] = CBDiscovery.__allocating_init()();
  v83 = v128;
  v82 = OBJC_IVAR___HPMHeadphoneManager_controller;
  type metadata accessor for CBController();
  *&v83[v82] = CBController.__allocating_init()();
  v85 = v128;
  v84 = OBJC_IVAR___HPMHeadphoneManager_connection;
  type metadata accessor for CBConnection();
  *&v85[v84] = CBConnection.__allocating_init()();
  v87 = v128;
  v86 = OBJC_IVAR___HPMHeadphoneManager_deviceManager;
  type metadata accessor for AADeviceManager();
  v5 = AADeviceManager.__allocating_init()();
  v6 = v107;
  *&v87[v86] = v5;
  *&v128[OBJC_IVAR___HPMHeadphoneManager____lazy_storage___hmsClient] = v6;
  *&v128[OBJC_IVAR___HPMHeadphoneManager_audioAccessoryToken] = -1;
  *&v128[OBJC_IVAR___HPMHeadphoneManager____lazy_storage___cbUserController] = v6;
  v90 = &v128[OBJC_IVAR___HPMHeadphoneManager__connectedRecords];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So14HMDeviceRecordCtMd, &_sSS_So14HMDeviceRecordCtMR);
  v88 = _allocateUninitializedArray<A>(_:)();
  type metadata accessor for HMDeviceRecord();
  v104 = MEMORY[0x1E69E6158];
  v103 = MEMORY[0x1E69E6168];
  v7 = Dictionary.init(dictionaryLiteral:)();
  property wrapper backing initializer of Headphone_Manager.connectedRecords(v7, v91);
  (*(v89 + 32))(v90, v91, v92);
  swift_unknownObjectWeakInit();
  v95 = &v128[OBJC_IVAR___HPMHeadphoneManager__connectedHeadphones];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
  v93 = _allocateUninitializedArray<A>(_:)();
  v102 = type metadata accessor for HeadphoneDevice(v107);
  v8 = Dictionary.init(dictionaryLiteral:)();
  property wrapper backing initializer of Headphone_Manager.connectedHeadphones(v8, v97);
  v100 = *(v94 + 32);
  v99 = v94 + 32;
  v100(v95, v97, v98);
  v96 = &v128[OBJC_IVAR___HPMHeadphoneManager__pairedHeadphones];
  _allocateUninitializedArray<A>(_:)();
  v9 = Dictionary.init(dictionaryLiteral:)();
  property wrapper backing initializer of Headphone_Manager.pairedHeadphones(v9, v97);
  v100(v96, v97, v98);
  v106 = v128;
  v105 = OBJC_IVAR___HPMHeadphoneManager_pendingConnectedHeadphones;
  _allocateUninitializedArray<A>(_:)();
  v10 = Dictionary.init(dictionaryLiteral:)();
  v11 = v107;
  *&v106[v105] = v10;
  v108 = v128;
  v12 = type metadata accessor for Headphone_Manager(v11);
  v127.receiver = v108;
  v127.super_class = v12;
  v128 = objc_msgSendSuper2(&v127, sel_init);
  v125 = &type metadata for HeadphoneFeatures;
  v126 = lazy protocol witness table accessor for type HeadphoneFeatures and conformance HeadphoneFeatures();
  v124 = 0;
  v109 = &v124;
  v110 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v109);
  if (v110)
  {
    v13 = v68;
    v14 = Logger.shared.unsafeMutableAddressor();
    (*(v67 + 16))(v13, v14, v65);
    v62 = Logger.logObject.getter();
    v59 = v62;
    v61 = static os_log_type_t.default.getter();
    v60 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v63 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v62, v61))
    {
      v15 = v64;
      v50 = static UnsafeMutablePointer.allocate(capacity:)();
      v46 = v50;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v48 = 0;
      v51 = createStorage<A>(capacity:type:)(0, v47, v47);
      v49 = v51;
      v52 = createStorage<A>(capacity:type:)(v48, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v114 = v50;
      v113 = v51;
      v112 = v52;
      v53 = 0;
      v54 = &v114;
      serialize(_:at:)(0, &v114);
      serialize(_:at:)(v53, v54);
      v111 = v63;
      v55 = &v24;
      MEMORY[0x1EEE9AC00](&v24);
      v56 = &v24 - 6;
      *(&v24 - 4) = v16;
      *(&v24 - 3) = &v113;
      *(&v24 - 2) = &v112;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v58 = v15;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v59, v60, "HeadphoneManager: BDM Feature enabled", v46, 2u);
        v44 = 0;
        destroyStorage<A>(_:count:)(v49, 0, v47);
        destroyStorage<A>(_:count:)(v52, v44, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v46, MEMORY[0x1E69E7508]);

        v45 = v58;
      }
    }

    else
    {

      v45 = v64;
    }

    v42 = v45;

    v17 = (*(v67 + 8))(v68, v65);
    v18 = *v128;
    v41 = MEMORY[0x1E69E7D40];
    (*((v18 & *MEMORY[0x1E69E7D40]) + 0x260))(v17);
    Headphone_Manager.configHearingModeClient()();
    (*((*v128 & *v41) + 0x268))();
    v43 = v42;
  }

  else
  {
    v43 = v64;
  }

  v38 = &v128[OBJC_IVAR___HPMHeadphoneManager_audioAccessoryToken];
  v39 = &v123;
  swift_beginAccess();
  v40 = *v38;
  v19 = swift_endAccess();
  if (v40 == -1)
  {
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.AudioAccessory.daemonStarted", 0x26uLL, 1);
    countAndFlagsBits = v20._countAndFlagsBits;
    object = v20._object;
    v30 = v128;
    v36 = static OS_dispatch_queue.main.getter();
    v28 = swift_allocObject();
    v26 = v28 + 16;
    v27 = v128;
    v21 = v128;
    swift_unknownObjectWeakInit();

    v121 = partial apply for closure #1 in Headphone_Manager.init();
    v122 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = 0;
    v119 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    v120 = &block_descriptor_5;
    v35 = _Block_copy(&aBlock);

    v34 = String.utf8CString.getter();

    v31 = (v34 + 32);

    v32 = &v30[OBJC_IVAR___HPMHeadphoneManager_audioAccessoryToken];
    v33 = &v115;
    swift_beginAccess();
    notify_register_dispatch(v31, v32, v36, v35);
    swift_endAccess();
    swift_unknownObjectRelease();
    _Block_release(v35);
  }

  v25 = v128;
  v22 = v128;

  return v25;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  v2 = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for OS_dispatch_queue);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      type metadata accessor for OS_dispatch_queue.Attributes();
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for OS_dispatch_queue.Attributes();
    return v2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  v2 = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E8090];
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

unint64_t type metadata accessor for CBDiscovery()
{
  v2 = lazy cache variable for type metadata for CBDiscovery;
  if (!lazy cache variable for type metadata for CBDiscovery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBDiscovery);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for CBController()
{
  v2 = lazy cache variable for type metadata for CBController;
  if (!lazy cache variable for type metadata for CBController)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBController);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for CBConnection()
{
  v2 = lazy cache variable for type metadata for CBConnection;
  if (!lazy cache variable for type metadata for CBConnection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBConnection);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for AADeviceManager()
{
  v2 = lazy cache variable for type metadata for AADeviceManager;
  if (!lazy cache variable for type metadata for AADeviceManager)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for AADeviceManager);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HMDeviceRecord()
{
  v2 = lazy cache variable for type metadata for HMDeviceRecord;
  if (!lazy cache variable for type metadata for HMDeviceRecord)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HMDeviceRecord);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t property wrapper backing initializer of Headphone_Manager.connectedRecords@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14HMDeviceRecordCGMd, &_sSDySSSo14HMDeviceRecordCGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t Published.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[1] = a3;
  v7 = a1;
  v8 = a2;
  v9 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v4[2] = v4 - v4[0];
  (*(v5 + 16))();
  Published.init(initialValue:)();
  return (*(v5 + 8))(v7, v8);
}

uint64_t property wrapper backing initializer of Headphone_Manager.connectedHeadphones@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t property wrapper backing initializer of Headphone_Manager.pairedHeadphones@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

unint64_t lazy protocol witness table accessor for type HeadphoneFeatures and conformance HeadphoneFeatures()
{
  v2 = lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures;
  if (!lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures;
  if (!lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures;
  if (!lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures);
    return WitnessTable;
  }

  return v2;
}

const char *HeadphoneFeatures.feature.getter(char a1)
{
  if (!a1)
  {
    return "BetterDeviceManagement";
  }

  if (a1 == 1)
  {
    return "BatteryStatus";
  }

  return "HeadphoneInfrastructureReDesign";
}

uint64_t one-time initialization function for shared()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static Logger.shared);
  __swift_project_value_buffer(v1, static Logger.shared);
  Logger.subsystem.unsafeMutableAddressor();
  swift_beginAccess();

  swift_endAccess();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("general", 7uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t Logger.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.shared);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t one-time initialization function for subsystem()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.headphonemanager", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static Logger.subsystem = v1;
  return result;
}

__int128 *Logger.subsystem.unsafeMutableAddressor()
{
  if (one-time initialization token for subsystem != -1)
  {
    swift_once();
  }

  return &static Logger.subsystem;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  v2 = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t destroyStorage<A>(_:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    return MEMORY[0x1DA730D30](v3, a3);
  }

  return result;
}

uint64_t Headphone_Manager.deviceManager.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_deviceManager);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t *HeadphoneDataProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static HeadphoneDataProvider.shared;
}

_BYTE *HeadphoneDataProvider.init()()
{
  v17 = 0;
  v8 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_kDefaultsStorageIdentifier;
  *v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.settings.headphone.HeadphoneManager.Mock", 0x32uLL, 1);
  *&v17[OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider____lazy_storage___defaultsObserver] = 1;
  v9 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_listeners;
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable();
  *&v17[v9] = Set.init()();
  v17[OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMock] = 0;
  v10 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMockKey;
  *&v17[v10] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("shouldShowMock", 0xEuLL, 1);
  v0 = &v17[OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceFoundHandler];
  *v0 = 0;
  v0[1] = 0;
  v1 = &v17[OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceLostHandler];
  *v1 = 0;
  v1[1] = 0;
  v11 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_dataObjects;
  *&v17[v11] = Dictionary.init()();
  v12 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_hexForReplayDeviceMap;
  type metadata accessor for NSMutableDictionary();
  *&v17[v12] = NSMutableDictionary.__allocating_init()();
  v16.receiver = v17;
  v16.super_class = type metadata accessor for HeadphoneDataProvider();
  v17 = objc_msgSendSuper2(&v16, sel_init);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.Perferences", 0x15uLL, 1);
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();

  if (has_internal_ui)
  {
    v15 = HeadphoneDataProvider.defaultsObserver.getter();
    if (v15)
    {
      v2 = v15;
      v5 = v15;
      MEMORY[0x1E69E5928](v15);
      outlined destroy of DefaultsObserver?(&v15);
      v6 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x68))();
      MEMORY[0x1E69E5920](v5);
      v14 = v6;
      swift_allocObject();
      v7 = v17;
      MEMORY[0x1E69E5928](v17);
      swift_unknownObjectWeakInit();
      MEMORY[0x1E69E5920](v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo14NSUserDefaultsCs5NeverOGMd, &_s7Combine12AnyPublisherVySo14NSUserDefaultsCs5NeverOGMR);
      lazy protocol witness table accessor for type AnyPublisher<NSUserDefaults, Never> and conformance AnyPublisher<A, B>();
      Publisher<>.sink(receiveValue:)();

      outlined destroy of AnyPublisher<NSUserDefaults, Never>(&v14);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    else
    {
      outlined destroy of DefaultsObserver?(&v15);
    }
  }

  v4 = v17;
  MEMORY[0x1E69E5928](v17);
  MEMORY[0x1E69E5920](v17);
  return v4;
}

unint64_t lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable()
{
  v2 = lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
  if (!lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable)
  {
    type metadata accessor for AnyCancellable();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSMutableDictionary()
{
  v2 = lazy cache variable for type metadata for NSMutableDictionary;
  if (!lazy cache variable for type metadata for NSMutableDictionary)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSMutableDictionary);
    return ObjCClassMetadata;
  }

  return v2;
}

char *HeadphoneDataProvider.defaultsObserver.getter()
{
  v10 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider____lazy_storage___defaultsObserver);
  swift_beginAccess();
  v11 = *v10;
  outlined copy of DefaultsObserver??(*v10);
  swift_endAccess();
  if (v11 != 1)
  {
    return v11;
  }

  type metadata accessor for DefaultsObserver();
  type metadata accessor for NSUserDefaults();
  suiteName = *(v9 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_kDefaultsStorageIdentifier);

  NSUserDefaults.__allocating_init(suiteName:)(v1, suiteName);
  v7 = DefaultsObserver.__allocating_init(withDefault:)(v2);
  MEMORY[0x1E69E5928](v7);
  v6 = (v9 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider____lazy_storage___defaultsObserver);
  swift_beginAccess();
  v3 = *v6;
  *v6 = v7;
  outlined consume of DefaultsObserver??(v3);
  swift_endAccess();
  return v7;
}

uint64_t outlined copy of DefaultsObserver??(uint64_t result)
{
  if (result != 1)
  {
    return MEMORY[0x1E69E5928](result);
  }

  return result;
}

void __swiftcall NSUserDefaults.__allocating_init(suiteName:)(NSUserDefaults_optional *__return_ptr retstr, Swift::String_optional suiteName)
{
  countAndFlagsBits = suiteName.value._countAndFlagsBits;
  object = suiteName.value._object;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  @nonobjc NSUserDefaults.init(suiteName:)(countAndFlagsBits, object);
}

unint64_t type metadata accessor for NSUserDefaults()
{
  v2 = lazy cache variable for type metadata for NSUserDefaults;
  if (!lazy cache variable for type metadata for NSUserDefaults)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSUserDefaults);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = MEMORY[0x1DA730940](a1);

    v2 = [v7 initWithSuiteName_];
  }

  else
  {
    v2 = [v7 initWithSuiteName_];
  }

  v5 = v2;
  MEMORY[0x1E69E5920](v4);
  return v5;
}

char *DefaultsObserver.init(withDefault:)(uint64_t a1)
{
  v15 = 0;
  v13 = 0;
  v14 = a1;
  *OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver____lazy_storage___publisher = 0;
  MEMORY[0x1E69E5928](a1);
  if (a1)
  {
    v13 = a1;
    MEMORY[0x1E69E5928](a1);
    *&v15[OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_defaults] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMR);
    v3 = *&v15[OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_defaults];
    MEMORY[0x1E69E5928](v3);
    v12 = v3;
    *&v15[OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_updatesSubject] = CurrentValueSubject.__allocating_init(_:)();
    v11.receiver = v15;
    v11.super_class = type metadata accessor for DefaultsObserver();
    v7 = objc_msgSendSuper2(&v11, sel_init);
    MEMORY[0x1E69E5928](v7);
    v15 = v7;
    v6 = *&v7[OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_defaults];
    MEMORY[0x1E69E5928](v6);
    v4 = v15;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("root", 4uLL, 1)._countAndFlagsBits;
    v5 = MEMORY[0x1DA730940](countAndFlagsBits);

    type metadata accessor for NSKeyValueObservingOptions(0);
    _allocateUninitializedArray<A>(_:)();
    lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions();
    SetAlgebra<>.init(arrayLiteral:)();
    [v6 addObserver:v4 forKeyPath:v5 options:v10 context:0];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v15);
    return v7;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    outlined destroy of AnyPublisher<NSUserDefaults, Never>?(&v15[OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver____lazy_storage___publisher]);
    type metadata accessor for DefaultsObserver();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t type metadata accessor for NSKeyValueObservingOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSKeyValueObservingOptions;
  if (!lazy cache variable for type metadata for NSKeyValueObservingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSKeyValueObservingOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions()
{
  v2 = lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions;
  if (!lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions)
  {
    type metadata accessor for NSKeyValueObservingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions;
  if (!lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions)
  {
    type metadata accessor for NSKeyValueObservingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions;
  if (!lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions)
  {
    type metadata accessor for NSKeyValueObservingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions;
  if (!lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions)
  {
    type metadata accessor for NSKeyValueObservingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions;
  if (!lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions)
  {
    type metadata accessor for NSKeyValueObservingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions);
    return WitnessTable;
  }

  return v2;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSKeyValueObservingOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

__C::NSKeyValueObservingOptions protocol witness for OptionSet.init(rawValue:) in conformance NSKeyValueObservingOptions@<X0>(Swift::UInt *a1@<X0>, __C::NSKeyValueObservingOptions *a2@<X8>)
{
  result.rawValue = NSKeyValueObservingOptions.init(rawValue:)(*a1).rawValue;
  a2->rawValue = result.rawValue;
  return result;
}

uint64_t outlined consume of DefaultsObserver??(uint64_t result)
{
  if (result != 1)
  {
    return MEMORY[0x1E69E5920](result);
  }

  return result;
}

uint64_t DefaultsObserver.publisher.getter()
{
  v6 = (v0 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver____lazy_storage___publisher);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<NSUserDefaults, Never> and conformance CurrentValueSubject<A, B>();
  v3 = Publisher.eraseToAnyPublisher()();

  v2 = (v5 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver____lazy_storage___publisher);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

unint64_t lazy protocol witness table accessor for type CurrentValueSubject<NSUserDefaults, Never> and conformance CurrentValueSubject<A, B>()
{
  v2 = lazy protocol witness table cache variable for type CurrentValueSubject<NSUserDefaults, Never> and conformance CurrentValueSubject<A, B>;
  if (!lazy protocol witness table cache variable for type CurrentValueSubject<NSUserDefaults, Never> and conformance CurrentValueSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CurrentValueSubject<NSUserDefaults, Never> and conformance CurrentValueSubject<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AnyPublisher<NSUserDefaults, Never> and conformance AnyPublisher<A, B>()
{
  v2 = lazy protocol witness table cache variable for type AnyPublisher<NSUserDefaults, Never> and conformance AnyPublisher<A, B>;
  if (!lazy protocol witness table cache variable for type AnyPublisher<NSUserDefaults, Never> and conformance AnyPublisher<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVySo14NSUserDefaultsCs5NeverOGMd, &_s7Combine12AnyPublisherVySo14NSUserDefaultsCs5NeverOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AnyPublisher<NSUserDefaults, Never> and conformance AnyPublisher<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #1 in HeadphoneDataProvider.init()(uint64_t a1, uint64_t a2)
{
  v103 = &v128;
  v107 = a2;
  v106 = a1;
  v105 = 0;
  v136 = 0;
  v135 = 0;
  v133 = 0;
  v127 = 0;
  v126 = 0;
  v104 = 0;
  v119 = 0;
  v108 = type metadata accessor for Logger();
  v109 = *(v108 - 8);
  v110 = v109;
  v2 = MEMORY[0x1EEE9AC00](v106);
  v111 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = *v2;
  v136 = v112;
  v113 = v4 + 16;
  v135 = v4 + 16;
  v114 = &v134;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v115 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v104;
  }

  v102 = v115;
  v96 = v115;
  v133 = v115;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("root", 4uLL, 1);
  object = v5._object;
  v98 = MEMORY[0x1DA730940](v5._countAndFlagsBits);

  v100 = [v112 valueForKey_];
  v99 = v100;

  if (v100)
  {
    v95 = v99;
    v94 = v99;
    v93 = &v117;
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v93, &v128);
    swift_unknownObjectRelease();
  }

  else
  {
    v128 = 0uLL;
    v129 = 0;
    v130 = 0;
  }

  v6 = v103;
  v7 = v128;
  v103[3] = v103[1];
  v6[2] = v7;
  if (v132)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    if (swift_dynamicCast())
    {
      v91 = v118;
    }

    else
    {
      v91 = 0;
    }

    v92 = v91;
  }

  else
  {
    outlined destroy of Any?(v131);
    v92 = 0;
  }

  v90 = v92;
  if (v92)
  {
    v89 = v90;
    v83 = v90;
    v119 = v90;
    v84 = MEMORY[0x1E69E6158];
    v85 = MEMORY[0x1E6969080];
    v86 = MEMORY[0x1E69E6168];
    v87 = Dictionary.values.getter();
    v88 = MEMORY[0x1DA7308A0](v87, v84, v85, v86);

    if (v88 >= 1)
    {
      HeadphoneDataProvider.shouldShowMock.setter(1);
      v8 = HeadphoneDataProvider.dataObjects.setter(v83);
      (*((*v96 & *MEMORY[0x1E69E7D40]) + 0x158))(v8);

      return v104;
    }
  }

  v9 = v111;
  v10 = Logger.shared.unsafeMutableAddressor();
  (*(v110 + 16))(v9, v10, v108);
  v11 = v112;
  v71 = 7;
  v72 = swift_allocObject();
  *(v72 + 16) = v112;
  v82 = Logger.logObject.getter();
  v65 = v82;
  v81 = static os_log_type_t.default.getter();
  v66 = v81;
  v67 = 17;
  v75 = swift_allocObject();
  v68 = v75;
  *(v75 + 16) = 64;
  v76 = swift_allocObject();
  v69 = v76;
  *(v76 + 16) = 8;
  v70 = 32;
  v12 = swift_allocObject();
  v13 = v72;
  v73 = v12;
  *(v12 + 16) = partial apply for implicit closure #1 in closure #1 in HeadphoneDataProvider.init();
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v73;
  v79 = v14;
  v74 = v14;
  *(v14 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacyySo8NSObjectCyXA_AA0B7PrivacyVtFAGSgycfu_TA_4;
  *(v14 + 24) = v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v77 = _allocateUninitializedArray<A>(_:)();
  v78 = v16;

  v17 = v75;
  v18 = v78;
  *v78 = closure #1 in OSLogArguments.append(_:)partial apply;
  v18[1] = v17;

  v19 = v76;
  v20 = v78;
  v78[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v20[3] = v19;

  v21 = v78;
  v22 = v79;
  v78[4] = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_5;
  v21[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v82, v81))
  {
    v23 = v104;
    v58 = static UnsafeMutablePointer.allocate(capacity:)();
    v55 = v58;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v61 = 1;
    v59 = createStorage<A>(capacity:type:)(1, v56, v56);
    v57 = v59;
    v60 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v124 = v58;
    v123 = v59;
    v122 = v60;
    v62 = &v124;
    serialize(_:at:)(2, &v124);
    serialize(_:at:)(v61, v62);
    v120 = closure #1 in OSLogArguments.append(_:)partial apply;
    v121 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v120, v62, &v123, &v122);
    v63 = v23;
    v64 = v23;
    if (v23)
    {
      v53 = 0;

      __break(1u);
    }

    else
    {
      v120 = closure #1 in OSLogArguments.append(_:)partial apply;
      v121 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v120, &v124, &v123, &v122);
      v51 = 0;
      v52 = 0;
      v120 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_5;
      v121 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v120, &v124, &v123, &v122);
      v49 = 0;
      v50 = 0;
      _os_log_impl(&dword_1D93D0000, v65, v66, "HeadphoneManager-Replay: did not find data dict for notification %@", v55, 0xCu);
      destroyStorage<A>(_:count:)(v57, 1, v56);
      destroyStorage<A>(_:count:)(v60, 0, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v55, MEMORY[0x1E69E7508]);

      v54 = v49;
    }
  }

  else
  {
    v24 = v104;

    v54 = v24;
  }

  v46 = v54;

  (*(v110 + 8))(v111, v108);
  HeadphoneDataProvider.shouldShowMock.setter(0);
  v25 = Dictionary.init()();
  v26 = HeadphoneDataProvider.dataObjects.setter(v25);
  v47 = (*((*v96 & *MEMORY[0x1E69E7D40]) + 0x110))(v26);
  v48 = v27;
  if (!v47)
  {
    v43 = v46;
LABEL_29:
    v33 = v43;
    type metadata accessor for NSMutableDictionary();
    v30.super.super.isa = NSMutableDictionary.__allocating_init()().super.super.isa;
    HeadphoneDataProvider.hexForReplayDeviceMap.setter(v30.super.super.isa);

    return v33;
  }

  v44 = v47;
  v45 = v48;
  v28 = v46;
  v37 = v48;
  v39 = v47;
  v126 = v47;
  v127 = v48;
  v35 = (*((*v96 & *MEMORY[0x1E69E7D40]) + 0x140))();
  v34 = [v35 allValues];
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v125 = v36;

  v38 = &v32;
  MEMORY[0x1EEE9AC00](&v32);
  v40 = &v32 - 4;
  *(&v32 - 2) = v39;
  *(&v32 - 1) = v29;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  lazy protocol witness table accessor for type [Any] and conformance [A]();
  Sequence.forEach(_:)();
  v42 = v28;
  if (!v28)
  {

    outlined destroy of [Any](&v125);

    v43 = v42;
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

void *outlined destroy of Any?(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

_BYTE **closure #1 in OSLogArguments.append(_:)partial apply(_BYTE **a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v9 = a4(a1, a2, a3);
  v8 = *a1;
  MEMORY[0x1E69E5928](v9);
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v9)
  {
    MEMORY[0x1E69E5920](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x1E69E5920](v9);
  }

  MEMORY[0x1E69E5928](v9);
  *v5 = v9;
  result = MEMORY[0x1E69E5920](v9);
  *a2 = v5 + 1;
  return result;
}

uint64_t HeadphoneDataProvider.shouldShowMock.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMock);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t HeadphoneDataProvider.dataObjects.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_dataObjects);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t HeadphoneDataProvider.deviceLostHandler.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceLostHandler);
  swift_beginAccess();
  v3 = *v2;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(*v2, v2[1]);
  swift_endAccess();
  return v3;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t HeadphoneDataProvider.hexForReplayDeviceMap.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_hexForReplayDeviceMap);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t HeadphoneDataProvider.deviceFoundHandler.setter(uint64_t a1, uint64_t a2)
{
  outlined copy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceFoundHandler);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v3, v4);
  swift_endAccess();
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(a1, a2);
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t HeadphoneDataProvider.deviceLostHandler.setter(uint64_t a1, uint64_t a2)
{
  outlined copy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceLostHandler);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v3, v4);
  swift_endAccess();
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(a1, a2);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

Swift::Void __swiftcall Headphone_Manager.configHearingModeClient()()
{
  v57 = 0;
  type metadata accessor for HMServiceClient();
  v0 = HMServiceClient.__allocating_init()();
  v19 = MEMORY[0x1E69E7D40];
  v1 = (*((*v15 & *MEMORY[0x1E69E7D40]) + 0x158))(v0);
  v8 = (*((*v15 & *v19) + 0x150))(v1);
  v6 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v55 = partial apply for closure #1 in Headphone_Manager.configHearingModeClient();
  v56 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = 0;
  v53 = thunk for @escaping @callee_guaranteed () -> ();
  v54 = &block_descriptor_2;
  v7 = _Block_copy(&aBlock);

  [v8 setInterruptionHandler_];
  _Block_release(v7);
  v2 = MEMORY[0x1E69E5920](v8);
  v11 = (*((*v15 & *v19) + 0x150))(v2);
  v9 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v48 = partial apply for closure #2 in Headphone_Manager.configHearingModeClient();
  v49 = v9;
  v43 = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = 0;
  v46 = thunk for @escaping @callee_guaranteed () -> ();
  v47 = &block_descriptor_4;
  v10 = _Block_copy(&v43);

  [v11 setInvalidationHandler_];
  _Block_release(v10);
  v3 = MEMORY[0x1E69E5920](v11);
  v14 = (*((*v15 & *v19) + 0x150))(v3);
  v12 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v41 = partial apply for closure #3 in Headphone_Manager.configHearingModeClient();
  v42 = v12;
  v36 = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = 0;
  v39 = thunk for @escaping @callee_guaranteed (@guaranteed [HKAudiogramSample], @guaranteed [HKAudiogramSample], @guaranteed Error?) -> ();
  v40 = &block_descriptor_8;
  v13 = _Block_copy(&v36);

  [v14 setAudiogramsAvailableHandler_];
  _Block_release(v13);
  v4 = MEMORY[0x1E69E5920](v14);
  v18 = (*((*v15 & *v19) + 0x150))(v4);
  v16 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v34 = partial apply for closure #4 in Headphone_Manager.configHearingModeClient();
  v35 = v16;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = 0;
  v32 = thunk for @escaping @callee_guaranteed (@guaranteed HMDeviceRecord) -> ();
  v33 = &block_descriptor_12;
  v17 = _Block_copy(&v29);

  [v18 setDeviceRecordChangedHandler_];
  _Block_release(v17);
  v5 = MEMORY[0x1E69E5920](v18);
  v21 = (*((*v15 & *v19) + 0x150))(v5);
  v27 = closure #5 in Headphone_Manager.configHearingModeClient();
  v28 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = 0;
  v25 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v26 = &block_descriptor_15;
  v20 = _Block_copy(&v22);
  [v21 activateWithCompletion_];
  _Block_release(v20);
  MEMORY[0x1E69E5920](v21);
}

id Headphone_Manager.hmsClient.getter()
{
  v7 = (v0 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___hmsClient);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  type metadata accessor for HMServiceClient();
  v4 = HMServiceClient.__allocating_init()();
  MEMORY[0x1E69E5928](v4);
  v3 = (v6 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___hmsClient);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

unint64_t type metadata accessor for HMServiceClient()
{
  v2 = lazy cache variable for type metadata for HMServiceClient;
  if (!lazy cache variable for type metadata for HMServiceClient)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HMServiceClient);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

Swift::Void __swiftcall Headphone_Manager.configCBUserController()()
{
  v21 = closure #1 in Headphone_Manager.configCBUserController();
  v25 = closure #2 in Headphone_Manager.configCBUserController();
  v43 = 0;
  v17 = 0;
  v10 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v9 - v10;
  v11 = (*(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v15 = &v9 - v11;
  v1 = type metadata accessor for DispatchQoS();
  v12 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v14 = &v9 - v12;
  v43 = v0;
  v2 = *v0;
  v24 = MEMORY[0x1E69E7D40];
  v19 = (*((v2 & *MEMORY[0x1E69E7D40]) + 0x180))();
  type metadata accessor for OS_dispatch_queue();
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.headphoneSettings.firmwareSeeding", 0x2BuLL, 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v16);
  v3 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4 = v20;
  v18 = v3;
  [v19 setDispatchQueue_];
  MEMORY[0x1E69E5920](v18);
  v5 = MEMORY[0x1E69E5920](v19);
  v6 = (*((*v4 & *v24) + 0x180))(v5);
  v7 = v20;
  v23 = v6;
  v41 = v21;
  v42 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v37 = 1107296256;
  v38 = 0;
  v39 = thunk for @escaping @callee_guaranteed () -> ();
  v40 = &block_descriptor_48;
  v22 = _Block_copy(&aBlock);
  [v23 setInterruptionHandler_];
  _Block_release(v22);
  v8 = MEMORY[0x1E69E5920](v23);
  v28 = (*((*v7 & *v24) + 0x180))(v8);
  v34 = v25;
  v35 = 0;
  v29 = MEMORY[0x1E69E9820];
  v30 = v26;
  v31 = 0;
  v32 = thunk for @escaping @callee_guaranteed () -> ();
  v33 = &block_descriptor_51;
  v27 = _Block_copy(&v29);
  [v28 setInvalidationHandler_];
  _Block_release(v27);
  MEMORY[0x1E69E5920](v28);
}

id Headphone_Manager.cbUserController.getter()
{
  v7 = (v0 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___cbUserController);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  type metadata accessor for CBUserController();
  v4 = CBUserController.__allocating_init()();
  MEMORY[0x1E69E5928](v4);
  v3 = (v6 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___cbUserController);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

unint64_t type metadata accessor for CBUserController()
{
  v2 = lazy cache variable for type metadata for CBUserController;
  if (!lazy cache variable for type metadata for CBUserController)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBUserController);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t Headphone_Manager.topLevelUIHandler.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  Headphone_Manager._topLevelUIHandler.setter(a1);
  v4 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v4;
  v5 = *v4;
  MEMORY[0x1E69E5928](*v4);
  v2 = swift_endAccess();
  (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x158))(v2);
  MEMORY[0x1E69E5920](v5);
  return swift_unknownObjectRelease();
}

uint64_t Headphone_Manager._topLevelUIHandler.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall HeadphoneDataProvider.provideDeviceForDiscoveryHandler()()
{
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v35 = 0;
  v36 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x140))();
  v45 = v36;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.Perferences", 0x15uLL, 1)._object;
  v38 = String.utf8CString.getter();

  v37 = v38 + 32;

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();

  if (has_internal_ui)
  {
    v32 = (*((*v34 & *MEMORY[0x1E69E7D40]) + 0xF8))();
    v33 = v1;
    if (v32)
    {
      v30 = v32;
      v31 = v33;
      v2 = v35;
      v21 = v33;
      v22 = v32;
      v43 = v32;
      v44 = v33;
      v42 = HeadphoneDataProvider.dataObjects.getter();
      v23 = &v14;
      MEMORY[0x1EEE9AC00](&v14);
      v24 = v11;
      v12 = closure #1 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler();
      v13 = 0;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager10ReplayDataCtMd, &_sSS_16HeadphoneManager10ReplayDataCtMR);
      lazy protocol witness table accessor for type [String : Data] and conformance [A : B]();
      v3 = Sequence.compactMap<A>(_:)();
      v27 = v2;
      v28 = v3;
      v15 = v3;
      outlined destroy of [String : Data](&v42);
      v41 = v15;
      v4 = v34;
      v5 = v36;

      v16 = &v14;
      MEMORY[0x1EEE9AC00](&v14);
      v11[0] = v6;
      v11[1] = v7;
      v12 = v22;
      v13 = v21;
      v17 = v10;
      MEMORY[0x1EEE9AC00](v10);
      v18 = v9;
      v9[2] = partial apply for closure #2 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler();
      v9[3] = v8;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS_16HeadphoneManager10ReplayDataCtGMd, &_sSaySS_16HeadphoneManager10ReplayDataCtGMR);
      lazy protocol witness table accessor for type [(String, ReplayData)] and conformance [A]();
      Sequence.forEach(_:)();
      v20 = 0;

      outlined destroy of [(String, ReplayData)](&v41);

      v29 = v20;
    }

    else
    {
      v29 = v35;
    }
  }

  else
  {
    v29 = v35;
  }
}

uint64_t HeadphoneDataProvider.hexForReplayDeviceMap.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_hexForReplayDeviceMap);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDataProvider.deviceFoundHandler.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceFoundHandler);
  swift_beginAccess();
  v3 = *v2;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(*v2, v2[1]);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDataProvider.dataObjects.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_dataObjects);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t type metadata accessor for ReplayData(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for ReplayData;
  if (!type metadata singleton initialization cache for ReplayData)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t type metadata completion function for ReplayData(uint64_t a1)
{
  updated = type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t type metadata accessor for UUID?(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for UUID?;
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v4 = type metadata accessor for Optional();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for UUID?);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1D93DEA08()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93DEAA8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93DEB48()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93E149C()
{
  v8 = *(v0 + 24);
  v3 = *(v8 - 8);
  v1 = *(v3 + 80);
  v4 = (v1 + 64) & ~v1;
  v5 = (v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 8 + v1) & ~v1;

  v7 = *(v3 + 8);
  v7(v0 + v4, v8);
  MEMORY[0x1E69E5920](*(v0 + v5));
  v7(v0 + v6, v8);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1D93E1704(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  if (a2 == *(*(v6 - 8) + 84))
  {
    return (*(*(v6 - 8) + 48))(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 68)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 68));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1D93E181C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (a3 == *(*(v4 - 8) + 84))
  {
    return (*(*(v4 - 8) + 56))(result, a2, a2, v4);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 68)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D93E27E4()
{

  MEMORY[0x1E69E5920](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_1D93E295C()
{

  MEMORY[0x1E69E5920](*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_1D93E3624()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93E38BC()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93E3914()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93E56E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D93E5D44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D93E6854()
{
  v7 = *(v0 + 24);
  v3 = *(v7 - 8);
  v1 = *(v3 + 80);
  v4 = (v1 + 64) & ~v1;
  v5 = (v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 8 + v1) & ~v1;
  swift_unknownObjectRelease();

  v8 = *(v3 + 8);
  v8(v0 + v4, v7);
  MEMORY[0x1E69E5920](*(v0 + v5));
  v8(v0 + v6, v7);
  return swift_deallocObject();
}

__n128 sub_1D93E69EC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1D93E6A44(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D93E6A70(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  if (a2 == *(*(v6 - 8) + 84))
  {
    return (*(*(v6 - 8) + 48))(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 60)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 60));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1D93E6B88(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (a3 == *(*(v4 - 8) + 84))
  {
    return (*(*(v4 - 8) + 56))(result, a2, a2, v4);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 60)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D93E76BC()
{
  v4 = *(v0 + 32);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_1D93E77A8()
{
  v6 = *(v0 + 32);
  type metadata accessor for Optional();
  v5 = type metadata accessor for Binding();
  v1 = *(*(v5 - 8) + 80);
  v4 = (v1 + 40) & ~v1;
  swift_unknownObjectRelease();

  v7 = *(v5 + 32);
  v8 = *(v6 - 8);
  if (!(*(v8 + 48))(v0 + v4 + v7, 1))
  {
    (*(v8 + 8))(v3 + v4 + v7, v6);
  }

  return swift_deallocObject();
}

uint64_t AABatteryState.cbBatteryState.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 2;
    case 2:
      return 1;
    case 3:
      return 4;
    case 4:
      return 5;
    default:
      return 0;
  }
}

uint64_t HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:)(void *a1, void *a2)
{
  v305 = a1;
  v304 = a2;
  v288 = implicit closure #3 in HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:);
  v289 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v290 = partial apply for implicit closure #4 in HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:);
  v291 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v292 = closure #1 in OSLogArguments.append(_:)partial apply;
  v293 = closure #1 in OSLogArguments.append(_:)partial apply;
  v294 = closure #1 in OSLogArguments.append(_:)partial apply;
  v295 = closure #1 in OSLogArguments.append(_:)partial apply;
  v296 = closure #1 in OSLogArguments.append(_:)partial apply;
  v297 = closure #1 in OSLogArguments.append(_:)partial apply;
  v298 = implicit closure #2 in HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:);
  v299 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v300 = partial apply for closure #1 in OSLogArguments.append(_:);
  v301 = closure #1 in OSLogArguments.append(_:)partial apply;
  v302 = partial apply for closure #1 in OSLogArguments.append(_:);
  v380 = 0;
  v379 = 0;
  v378 = 0;
  v377 = 0;
  v303 = 0;
  v352 = 0;
  v306 = type metadata accessor for Logger();
  v307 = *(v306 - 8);
  v308 = v306 - 8;
  v309 = (*(v307 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v305);
  v310 = &v116 - v309;
  v311 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v312 = &v116 - v311;
  v380 = v5;
  v379 = v6;
  v378 = v2;
  v377 = 1;
  v313 = &v374;
  v375 = &type metadata for AudioAccessoryFeatures;
  v376 = lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures();
  v374 = 0;
  v314 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v313);
  v286 = (v314 & 1) != 0;
  if (v314)
  {
    v285 = [v305 batteryInfo];
    if (v285)
    {
      v284 = v285;
      v7 = v312;
      v264 = v285;
      v352 = v285;
      v8 = Logger.shared.unsafeMutableAddressor();
      (*(v307 + 16))(v7, v8, v306);
      MEMORY[0x1E69E5928](v264);
      v270 = 7;
      v271 = swift_allocObject();
      *(v271 + 16) = v264;
      v282 = Logger.logObject.getter();
      v283 = static os_log_type_t.info.getter();
      v267 = 17;
      v273 = swift_allocObject();
      v266 = 32;
      *(v273 + 16) = 32;
      v274 = swift_allocObject();
      v268 = 8;
      *(v274 + 16) = 8;
      v269 = 32;
      v9 = swift_allocObject();
      v265 = v9;
      *(v9 + 16) = v288;
      *(v9 + 24) = 0;
      v10 = swift_allocObject();
      v11 = v265;
      v275 = v10;
      *(v10 + 16) = v289;
      *(v10 + 24) = v11;
      v276 = swift_allocObject();
      *(v276 + 16) = v266;
      v277 = swift_allocObject();
      *(v277 + 16) = v268;
      v12 = swift_allocObject();
      v13 = v271;
      v272 = v12;
      *(v12 + 16) = v290;
      *(v12 + 24) = v13;
      v14 = swift_allocObject();
      v15 = v272;
      v279 = v14;
      *(v14 + 16) = v291;
      *(v14 + 24) = v15;
      v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v278 = _allocateUninitializedArray<A>(_:)();
      v280 = v16;

      v17 = v273;
      v18 = v280;
      *v280 = v292;
      v18[1] = v17;

      v19 = v274;
      v20 = v280;
      v280[2] = v293;
      v20[3] = v19;

      v21 = v275;
      v22 = v280;
      v280[4] = v294;
      v22[5] = v21;

      v23 = v276;
      v24 = v280;
      v280[6] = v295;
      v24[7] = v23;

      v25 = v277;
      v26 = v280;
      v280[8] = v296;
      v26[9] = v25;

      v27 = v279;
      v28 = v280;
      v280[10] = v297;
      v28[11] = v27;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v282, v283))
      {
        v29 = v303;
        v256 = static UnsafeMutablePointer.allocate(capacity:)();
        v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v257 = createStorage<A>(capacity:type:)(0, v255, v255);
        v258 = createStorage<A>(capacity:type:)(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v260 = &v319;
        v319 = v256;
        v261 = &v318;
        v318 = v257;
        v262 = &v317;
        v317 = v258;
        v259 = 2;
        serialize(_:at:)(2, &v319);
        serialize(_:at:)(v259, v260);
        v315 = v292;
        v316 = v273;
        closure #1 in osLogInternal(_:log:type:)(&v315, v260, v261, v262);
        v263 = v29;
        if (v29)
        {

          __break(1u);
        }

        else
        {
          v315 = v293;
          v316 = v274;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v254 = 0;
          v315 = v294;
          v316 = v275;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v253 = 0;
          v315 = v295;
          v316 = v276;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v252 = 0;
          v315 = v296;
          v316 = v277;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v251 = 0;
          v315 = v297;
          v316 = v279;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          _os_log_impl(&dword_1D93D0000, v282, v283, "HeadphoneDevice: %s Updating battery info %s", v256, 0x16u);
          destroyStorage<A>(_:count:)(v257, 0, v255);
          destroyStorage<A>(_:count:)(v258, 2, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v256, MEMORY[0x1E69E7508]);
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v282);
      (*(v307 + 8))(v312, v306);
      v30 = [v264 batteryLeft];
      v250 = v30;
      if (v30)
      {
        v249 = v250;
        v245 = v250;
        [v250 level];
        v246 = v31;
        v30 = MEMORY[0x1E69E5920](v245);
        v247 = v246;
        v248 = 0;
      }

      else
      {
        v247 = 0.0;
        v248 = 1;
      }

      v350 = v247;
      v351 = v248 & 1;
      if (v248)
      {
        v244 = 0.0;
      }

      else
      {
        v244 = v350;
      }

      v32 = v287;
      v33 = MEMORY[0x1DA730BC0](v30, v244);
      v240 = &v349;
      v349 = v33;
      v34 = *((*v32 & *MEMORY[0x1E69E7D40]) + 0x940);
      v242 = &v348;
      v241 = v34();
      ==? infix<A>(_:_:)(v35, v240, MEMORY[0x1E69E6448], MEMORY[0x1E69E6470]);
      v241();
      v36 = [v264 batteryRight];
      v243 = v36;
      if (v36)
      {
        v239 = v243;
        v235 = v243;
        [v243 level];
        v236 = v37;
        v36 = MEMORY[0x1E69E5920](v235);
        v237 = v236;
        v238 = 0;
      }

      else
      {
        v237 = 0.0;
        v238 = 1;
      }

      v346 = v237;
      v347 = v238 & 1;
      if (v238)
      {
        v234 = 0.0;
      }

      else
      {
        v234 = v346;
      }

      v38 = v287;
      v39 = MEMORY[0x1DA730BC0](v36, v234);
      v230 = &v345;
      v345 = v39;
      v40 = *((*v38 & *MEMORY[0x1E69E7D40]) + 0x9A0);
      v232 = &v344;
      v231 = v40();
      ==? infix<A>(_:_:)(v41, v230, MEMORY[0x1E69E6448], MEMORY[0x1E69E6470]);
      v231();
      v42 = [v264 batteryCase];
      v233 = v42;
      if (v42)
      {
        v229 = v233;
        v225 = v233;
        [v233 level];
        v226 = v43;
        v42 = MEMORY[0x1E69E5920](v225);
        v227 = v226;
        v228 = 0;
      }

      else
      {
        v227 = 0.0;
        v228 = 1;
      }

      v342 = v227;
      v343 = v228 & 1;
      if (v228)
      {
        v224 = 0.0;
      }

      else
      {
        v224 = v342;
      }

      v44 = v287;
      v45 = MEMORY[0x1DA730BC0](v42, v224);
      v220 = &v341;
      v341 = v45;
      v46 = *((*v44 & *MEMORY[0x1E69E7D40]) + 0xA00);
      v222 = &v340;
      v221 = v46();
      ==? infix<A>(_:_:)(v47, v220, MEMORY[0x1E69E6448], MEMORY[0x1E69E6470]);
      v221();
      v48 = [v264 batteryMain];
      v223 = v48;
      if (v48)
      {
        v219 = v223;
        v215 = v223;
        [v223 level];
        v216 = v49;
        v48 = MEMORY[0x1E69E5920](v215);
        v217 = v216;
        v218 = 0;
      }

      else
      {
        v217 = 0.0;
        v218 = 1;
      }

      v338 = v217;
      v339 = v218 & 1;
      if (v218)
      {
        v214 = 0.0;
      }

      else
      {
        v214 = v338;
      }

      v50 = v287;
      v51 = MEMORY[0x1DA730BC0](v48, v214);
      v210 = &v337;
      v337 = v51;
      v52 = *((*v50 & *MEMORY[0x1E69E7D40]) + 0x8E0);
      v212 = &v336;
      v211 = v52();
      ==? infix<A>(_:_:)(v53, v210, MEMORY[0x1E69E6448], MEMORY[0x1E69E6470]);
      v211();
      v213 = [v264 batteryLeft];
      if (v213)
      {
        v209 = v213;
        v205 = v213;
        v206 = [v213 state];
        MEMORY[0x1E69E5920](v205);
        v207 = AABatteryState.cbBatteryState.getter(v206);
        v208 = 0;
      }

      else
      {
        v207 = 0;
        v208 = 1;
      }

      v334 = v207;
      v335 = v208 & 1;
      if (v208)
      {
        v204 = 0;
      }

      else
      {
        v204 = v334;
      }

      v197 = &v333;
      v333 = v204;
      v54 = *((*v287 & *MEMORY[0x1E69E7D40]) + 0x970);
      v202 = &v332;
      v201 = v54();
      v199 = v55;
      v198 = type metadata accessor for CBBatteryState(0);
      v200 = lazy protocol witness table accessor for type CBBatteryState and conformance CBBatteryState();
      ==? infix<A>(_:_:)(v199, v197, v198, v200);
      v201();
      v203 = [v264 batteryRight];
      if (v203)
      {
        v196 = v203;
        v192 = v203;
        v193 = [v203 state];
        MEMORY[0x1E69E5920](v192);
        v194 = AABatteryState.cbBatteryState.getter(v193);
        v195 = 0;
      }

      else
      {
        v194 = 0;
        v195 = 1;
      }

      v330 = v194;
      v331 = v195 & 1;
      if (v195)
      {
        v191 = 0;
      }

      else
      {
        v191 = v330;
      }

      v187 = &v329;
      v329 = v191;
      v56 = *((*v287 & *MEMORY[0x1E69E7D40]) + 0x9D0);
      v189 = &v328;
      v188 = v56();
      ==? infix<A>(_:_:)(v57, v187, v198, v200);
      v188();
      v190 = [v264 batteryCase];
      if (v190)
      {
        v186 = v190;
        v182 = v190;
        v183 = [v190 state];
        MEMORY[0x1E69E5920](v182);
        v184 = AABatteryState.cbBatteryState.getter(v183);
        v185 = 0;
      }

      else
      {
        v184 = 0;
        v185 = 1;
      }

      v326 = v184;
      v327 = v185 & 1;
      if (v185)
      {
        v181 = 0;
      }

      else
      {
        v181 = v326;
      }

      v177 = &v325;
      v325 = v181;
      v58 = *((*v287 & *MEMORY[0x1E69E7D40]) + 0xA30);
      v179 = &v324;
      v178 = v58();
      ==? infix<A>(_:_:)(v59, v177, v198, v200);
      v178();
      v180 = [v264 batteryMain];
      if (v180)
      {
        v176 = v180;
        v172 = v180;
        v173 = [v180 state];
        MEMORY[0x1E69E5920](v172);
        v174 = AABatteryState.cbBatteryState.getter(v173);
        v175 = 0;
      }

      else
      {
        v174 = 0;
        v175 = 1;
      }

      v322 = v174;
      v323 = v175 & 1;
      if (v175)
      {
        v171 = 0;
      }

      else
      {
        v171 = v322;
      }

      v168 = &v321;
      v321 = v171;
      v60 = *((*v287 & *MEMORY[0x1E69E7D40]) + 0x910);
      v170 = &v320;
      v169 = v60();
      ==? infix<A>(_:_:)(v61, v168, v198, v200);
      v169();
      return MEMORY[0x1E69E5920](v264);
    }

    else
    {
      v63 = v310;
      v64 = Logger.shared.unsafeMutableAddressor();
      (*(v307 + 16))(v63, v64, v306);
      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.error.getter();
      v156 = 17;
      v158 = 7;
      v160 = swift_allocObject();
      *(v160 + 16) = 32;
      v161 = swift_allocObject();
      *(v161 + 16) = 8;
      v157 = 32;
      v65 = swift_allocObject();
      v159 = v65;
      *(v65 + 16) = v298;
      *(v65 + 24) = 0;
      v66 = swift_allocObject();
      v67 = v159;
      v163 = v66;
      *(v66 + 16) = v299;
      *(v66 + 24) = v67;
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v162 = _allocateUninitializedArray<A>(_:)();
      v164 = v68;

      v69 = v160;
      v70 = v164;
      *v164 = v300;
      v70[1] = v69;

      v71 = v161;
      v72 = v164;
      v164[2] = v301;
      v72[3] = v71;

      v73 = v163;
      v74 = v164;
      v164[4] = v302;
      v74[5] = v73;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v166, v167))
      {
        v75 = v303;
        v149 = static UnsafeMutablePointer.allocate(capacity:)();
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v150 = createStorage<A>(capacity:type:)(0, v148, v148);
        v151 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v152 = &v357;
        v357 = v149;
        v153 = &v356;
        v356 = v150;
        v154 = &v355;
        v355 = v151;
        serialize(_:at:)(2, &v357);
        serialize(_:at:)(1, v152);
        v353 = v300;
        v354 = v160;
        closure #1 in osLogInternal(_:log:type:)(&v353, v152, v153, v154);
        v155 = v75;
        if (v75)
        {

          __break(1u);
        }

        else
        {
          v353 = v301;
          v354 = v161;
          closure #1 in osLogInternal(_:log:type:)(&v353, &v357, &v356, &v355);
          v147 = 0;
          v353 = v302;
          v354 = v163;
          closure #1 in osLogInternal(_:log:type:)(&v353, &v357, &v356, &v355);
          _os_log_impl(&dword_1D93D0000, v166, v167, "HeadphoneDevice: %s No new battery info!", v149, 0xCu);
          destroyStorage<A>(_:count:)(v150, 0, v148);
          destroyStorage<A>(_:count:)(v151, 1, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v149, MEMORY[0x1E69E7508]);
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v166);
      return (*(v307 + 8))(v310, v306);
    }
  }

  else
  {
    v76 = v287;
    [v304 batteryLevelLeft];
    v116 = &v373;
    v373 = v77;
    v78 = *v76;
    v140 = MEMORY[0x1E69E7D40];
    v79 = *((v78 & *MEMORY[0x1E69E7D40]) + 0x940);
    v118 = &v372;
    v80 = v79();
    v81 = v287;
    v117 = v80;
    v125 = MEMORY[0x1E69E6448];
    v126 = MEMORY[0x1E69E6470];
    ==? infix<A>(_:_:)(v82, v116, MEMORY[0x1E69E6448], MEMORY[0x1E69E6470]);
    v144 = 0;
    v117();
    [v304 batteryLevelRight];
    v119 = &v371;
    v371 = v83;
    v84 = *((*v81 & *v140) + 0x9A0);
    v121 = &v370;
    v85 = v84();
    v86 = v287;
    v120 = v85;
    ==? infix<A>(_:_:)(v87, v119, v125, v126);
    v120();
    [v304 batteryLevelCase];
    v122 = &v369;
    v369 = v88;
    v89 = *((*v86 & *v140) + 0xA00);
    v124 = &v368;
    v90 = v89();
    v91 = v287;
    v123 = v90;
    ==? infix<A>(_:_:)(v92, v122, v125, v126);
    v123();
    [v304 batteryLevelMain];
    v127 = &v367;
    v367 = v93;
    v94 = *((*v91 & *v140) + 0x8E0);
    v129 = &v366;
    v95 = v94();
    v96 = v287;
    v128 = v95;
    ==? infix<A>(_:_:)(v97, v127, v125, v126);
    v128();
    v98 = [v304 batteryStateLeft];
    v130 = &v365;
    v365 = v98;
    v99 = *((*v96 & *v140) + 0x970);
    v133 = &v364;
    v100 = v99();
    v101 = v287;
    v132 = v100;
    v131 = v102;
    v141 = type metadata accessor for CBBatteryState(0);
    v142 = lazy protocol witness table accessor for type CBBatteryState and conformance CBBatteryState();
    ==? infix<A>(_:_:)(v131, v130, v141, v142);
    v132();
    v103 = [v304 batteryStateRight];
    v134 = &v363;
    v363 = v103;
    v104 = *((*v101 & *v140) + 0x9D0);
    v136 = &v362;
    v105 = v104();
    v106 = v287;
    v135 = v105;
    ==? infix<A>(_:_:)(v107, v134, v141, v142);
    v135();
    v108 = [v304 batteryStateCase];
    v137 = &v361;
    v361 = v108;
    v109 = *((*v106 & *v140) + 0xA30);
    v139 = &v360;
    v110 = v109();
    v111 = v287;
    v138 = v110;
    ==? infix<A>(_:_:)(v112, v137, v141, v142);
    v138();
    v113 = [v304 batteryStateMain];
    v143 = &v359;
    v359 = v113;
    v114 = *((*v111 & *v140) + 0x910);
    v146 = &v358;
    v145 = v114();
    ==? infix<A>(_:_:)(v115, v143, v141, v142);
    return v145();
  }
}

unint64_t lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures()
{
  v2 = lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures;
  if (!lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures;
  if (!lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures;
  if (!lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBBatteryState and conformance CBBatteryState()
{
  v2 = lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState;
  if (!lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState)
  {
    type metadata accessor for CBBatteryState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState;
  if (!lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState)
  {
    type metadata accessor for CBBatteryState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState);
    return WitnessTable;
  }

  return v2;
}

uint64_t implicit closure #4 in HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:)(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBBatteryState@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBBatteryState.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBBatteryState@<X0>(_BYTE *a1@<X8>)
{
  result = CBBatteryState.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

void *specialized _StringGuts._deconstructUTF8<A>(scratch:)(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v3 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v4);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v18 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    specialized Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1DA730A50](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5()
{
  v1 = MEMORY[0x1E69E7CC0];

  return v1;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

void *closure #1 in OSLogArguments.append(_:)partial apply(void *a1, uint64_t a2, uint64_t *a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t CBDevice.replayDevice.getter()
{
  v9 = 0;
  v13 = v0;
  MEMORY[0x1E69E5928](v0);
  key = HPS_CBDevice_Addition_Key.unsafeMutableAddressor();
  swift_beginAccess();
  v6 = objc_getAssociatedObject(v0, key);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v7, &v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    type metadata accessor for ReplayData(0);
    if (swift_dynamicCast())
    {
      v4 = v8;
    }

    else
    {
      v4 = 0;
    }

    v3 = v4;
  }

  else
  {
    outlined destroy of Any?(v12);
    v3 = 0;
  }

  if (v3)
  {
    v9 = v3;
    return v3;
  }

  else
  {
    type metadata accessor for ReplayData(0);
    return ReplayData.__allocating_init()();
  }
}

__n128 outlined init with take of Any(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t CBDevice.replayDevice.setter(void *a1)
{
  MEMORY[0x1E69E5928](v1);
  key = HPS_CBDevice_Addition_Key.unsafeMutableAddressor();

  swift_beginAccess();
  objc_setAssociatedObject(v1, key, a1, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t (*CBDevice.replayDevice.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = CBDevice.replayDevice.getter();
  return CBDevice.replayDevice.modify;
}

uint64_t CBDevice.replayDevice.modify(void **a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return CBDevice.replayDevice.setter(*a1);
  }

  v3 = *a1;

  CBDevice.replayDevice.setter(v3);
}

uint64_t Data.init(hexString:)(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  v13 = a1;
  v14 = a2;

  v10[4] = a1;
  v10[5] = a2;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("0x", 2uLL, 1);
  String.hasPrefix(_:)(v2);

  lazy protocol witness table accessor for type String and conformance String();
  Collection.dropFirst(_:)();
  v10[0] = v10[6];
  v10[1] = v10[7];
  v10[2] = v10[8];
  v10[3] = v10[9];
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v6 = Sequence.compactMap<A>(_:)();
  outlined destroy of Substring(v10);
  v9 = v6;
  v5 = String.count.getter();
  MEMORY[0x1DA730490](v5 / 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV4data_s5UInt8VSg4bytetMd, &_s10Foundation4DataV4data_s5UInt8VSg4bytetMR);
  lazy protocol witness table accessor for type [UInt8] and conformance [A]();
  Sequence.reduce<A>(into:_:)();
  outlined destroy of [UInt8](&v9);
  v15 = v11;
  v16 = v12;
  v4 = v11;
  outlined copy of Data._Representation(v11, v12);

  outlined destroy of Data(&v15);
  return v4;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #1 in Data.init(hexString:)@<X0>(uint64_t a1@<X8>)
{
  Character.hexDigitValue.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  result = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in closure #1 in Data.init(hexString:), 0, v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7508], v5, a1);
  if (v4)
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  v2 = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Substring and conformance Substring);
    return WitnessTable;
  }

  return v2;
}

uint64_t *closure #1 in closure #1 in Data.init(hexString:)@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v3 > 255)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v29 = v17 - v28;
  v35 = *(v9 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v31 = v17 - v30;
  v32 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v36 = v17 - v32;
  _sxSgs5ErrorRd__Ri_d_0_r_0_lWOc(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

uint64_t closure #2 in Data.init(hexString:)(uint64_t result, char *a2)
{
  v2 = result;
  v3 = *a2;
  if (*(result + 17))
  {
    *(result + 16) = 16 * v3;
    *(result + 17) = 0;
  }

  else if (v3 + *(result + 16) == (v3 + *(result + 16)))
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    result = RangeReplaceableCollection.append(_:)();
    *(v2 + 16) = 0;
    *(v2 + 17) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [UInt8] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt8] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

void *CodableIgnored.wrappedValue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v2 = type metadata accessor for Optional();
  return outlined init with copy of A?(v6, a2, v4, v2);
}

void *outlined init with copy of A?(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t CodableIgnored.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v10 = *(a2 + 16);
  v15 = v10;
  v11 = type metadata accessor for Optional();
  v7 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v6 - v7;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v13 = v2;
  outlined init with copy of A?(v14, &v6 - v7, v3, v4);
  outlined assign with take of A?(v9, v8, v10, v11);
  return outlined destroy of A?(v12, v10);
}

void *outlined assign with take of A?(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 48);
  if (v10())
  {
    if ((v10)(a1, 1, a3))
    {
      memcpy(a2, a1, *(*(a4 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(a2, a1, a3);
      (*(v9 + 56))(a2, 0, 1, a3);
    }
  }

  else if ((v10)(a1, 1, a3))
  {
    (*(v9 + 8))(a2, a3);
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 40))(a2, a1, a3);
  }

  return a2;
}

uint64_t outlined destroy of A?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t CodableIgnored.init(wrappedValue:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v13 = a3;
  v14 = a1;
  v15 = a2;
  v20 = 0;
  v19 = 0;
  v21 = a2;
  v9[1] = 0;
  v16 = type metadata accessor for Optional();
  v10 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v12 = v9 - v10;
  v17 = type metadata accessor for CodableIgnored(v3, v4, v9 - v10, v5);
  v11 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v18 = v9 - v11;
  v20 = v9 - v11;
  v19 = v6;
  (*(*(v7 - 8) + 56))();
  outlined init with copy of A?(v14, v12, v15, v16);
  outlined assign with take of A?(v12, v18, v15, v16);
  outlined init with copy of CodableIgnored<A>(v18, v13, v15, v16);
  outlined destroy of A?(v14, v15);
  return outlined destroy of CodableIgnored<A>(v18, v15);
}

void *outlined init with copy of CodableIgnored<A>(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t outlined destroy of CodableIgnored<A>(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t CodableIgnored.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v20 = a2;
  v24 = 0;
  v23 = 0;
  v25 = a2;
  v10[1] = 0;
  v21 = type metadata accessor for Optional();
  v11 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v16 = v10 - v11;
  v22 = type metadata accessor for CodableIgnored(v3, v4, v10 - v11, v5);
  v12 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v19 = v10 - v12;
  v24 = v10 - v12;
  v23 = v6;
  v8 = *(v7 - 8);
  v15 = *(v8 + 56);
  v14 = v8 + 56;
  v13 = 1;
  v15();
  (v15)(v16, v13, v13, v20);
  outlined assign with take of A?(v16, v19, v20, v21);
  outlined init with copy of CodableIgnored<A>(v19, v17, v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return outlined destroy of CodableIgnored<A>(v19, v20);
}

uint64_t DefaultsObserver.defaults.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_defaults);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t DefaultsObserver.updatesSubject.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_updatesSubject);

  return v2;
}

uint64_t DefaultsObserver.publisher.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver____lazy_storage___publisher);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*DefaultsObserver.publisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = DefaultsObserver.publisher.getter();
  return DefaultsObserver.publisher.modify;
}

void DefaultsObserver.publisher.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    DefaultsObserver.publisher.setter(v2);
    outlined destroy of AnyPublisher<NSUserDefaults, Never>(a1);
  }

  else
  {
    DefaultsObserver.publisher.setter(*a1);
  }
}

uint64_t DefaultsObserver.observeValue(forKeyPath:of:change:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v7 = *(v6 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_defaults);
  MEMORY[0x1E69E5928](v7);
  CurrentValueSubject.send(_:)();
  MEMORY[0x1E69E5920](v7);
}

unint64_t type metadata accessor for NSKeyValueChangeKey(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSKeyValueChangeKey;
  if (!lazy cache variable for type metadata for NSKeyValueChangeKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSKeyValueChangeKey);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey()
{
  v2 = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
    return WitnessTable;
  }

  return v2;
}

id DefaultsObserver.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultsObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AudioAccessoryContainerDevice._cbDevice.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager29AudioAccessoryContainerDevice__cbDevice);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id AudioAccessoryContainerDevice.init(withCBDevice:)(uint64_t a1)
{
  v6 = 0;
  v5 = a1;
  MEMORY[0x1E69E5928](a1);
  *OBJC_IVAR____TtC16HeadphoneManager29AudioAccessoryContainerDevice__cbDevice = a1;
  v4.receiver = v6;
  v4.super_class = type metadata accessor for AudioAccessoryContainerDevice();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v6);
  return v3;
}

id AudioAccessoryContainerDevice.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id AudioAccessoryContainerDevice.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR____TtC16HeadphoneManager29AudioAccessoryContainerDevice__cbDevice = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for AudioAccessoryContainerDevice();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x1E69E5928](v4);
    v7 = v4;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v7);
    return v4;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

uint64_t AudioAccessoryContainerDevice.coreBluetoothDevice.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager29AudioAccessoryContainerDevice__cbDevice);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id AudioAccessoryContainerDevice.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAccessoryContainerDevice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ReplayAudioAccessoryDevice.init(withCBDevice:)(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = AudioAccessoryContainerDevice.init(withCBDevice:)(a1);
  MEMORY[0x1E69E5928](v3);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v3;
}

id ReplayAudioAccessoryDevice.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id ReplayAudioAccessoryDevice.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for ReplayAudioAccessoryDevice();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x1E69E5928](v4);
    v7 = v4;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v7);
    return v4;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

id ReplayAudioAccessoryDevice.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReplayAudioAccessoryDevice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *AudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(void *a1, uint64_t a2)
{
  type metadata accessor for HeadphoneDevice(0);
  (MEMORY[0x1E69E5928])();
  MEMORY[0x1E69E5928](a1);
  swift_unknownObjectRetain();
  return HeadphoneDevice.__allocating_init(_aaDevice:cbDevice:delegate:)(v3, a1, a2);
}

uint64_t *@objc AudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](a1);
  v9 = AudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(a3, a4);
  MEMORY[0x1E69E5920](a1);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a3);

  return v9;
}

id dynamic AudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);
  swift_unknownObjectRetain();
  (MEMORY[0x1E69E5928])();
  v6 = [v3 headphoneDeviceWithCbDevice:a1 withDelegate:a2];
  (MEMORY[0x1E69E5920])();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1);
  return v6;
}

uint64_t ReplayAudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v26 = a1;
  v25 = a2;
  v24 = v2;
  type metadata accessor for HeadphoneReplayDevice(0);
  MEMORY[0x1E69E5928](v2);
  v19 = *(v2 + OBJC_IVAR____TtC16HeadphoneManager29AudioAccessoryContainerDevice__cbDevice);
  MEMORY[0x1E69E5928](v19);
  (MEMORY[0x1E69E5920])();
  if (v19)
  {
    v17 = v19;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  swift_unknownObjectRetain();
  v16 = HeadphoneDevice.__allocating_init(cbDevice:delegate:)(v17, a2);
  v23 = v16;
  MEMORY[0x1E69E5928](v16);
  v7 = *(v16 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
  v8 = *(v16 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

  MEMORY[0x1E69E5920](v16);
  v22[0] = v7;
  v22[1] = v8;
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", 1uLL, 1);
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", 1uLL, 1);
  v9 = lazy protocol witness table accessor for type String and conformance String();
  v10 = MEMORY[0x1E69E6158];
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v15 = v3;
  outlined destroy of String(&v20);
  outlined destroy of String(&v21);
  outlined destroy of String(v22);
  v11 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v4 = *v11;
  v12 = *v11;
  MEMORY[0x1E69E5928](*v11);
  v5 = swift_endAccess();
  v14 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x140))(v5);
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5928](v16);

  MEMORY[0x1DA730940](v13, v15);
  [v14 setObject:v16 forKey:{v10, v9, v9, v9}];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v14);

  return v16;
}

uint64_t default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo22NSStringCompareOptionsV_Tt0gq5(0);

  return 0;
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSKeyValueObservingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSKeyValueObservingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSKeyValueObservingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance NSKeyValueChangeKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  lazy protocol witness table accessor for type String and conformance String();
  return _SwiftNewtypeWrapper<>._bridgeToObjectiveC()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSKeyValueChangeKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSKeyValueChangeKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)() & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSKeyValueChangeKey(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)();
}

__C::NSKeyValueObservingOptions protocol witness for RawRepresentable.init(rawValue:) in conformance NSKeyValueObservingOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = NSKeyValueObservingOptions.init(rawValue:)(*a1).rawValue;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

__C::NSKeyValueChangeKey protocol witness for RawRepresentable.init(rawValue:) in conformance NSKeyValueChangeKey@<X0>(Swift::String *a1@<X0>, __C::NSKeyValueChangeKey *a2@<X8>)
{
  result._rawValue = NSKeyValueChangeKey.init(rawValue:)(*a1)._rawValue;
  a2->_rawValue = result._rawValue;
  return result;
}

__C::NSKeyValueChangeKey __swiftcall NSKeyValueChangeKey.init(rawValue:)(Swift::String rawValue)
{

  v3._rawValue = MEMORY[0x1DA730940](rawValue._countAndFlagsBits, rawValue._object);
  MEMORY[0x1E69E5928](v3._rawValue);

  MEMORY[0x1E69E5920](v3._rawValue);
  return v3;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSKeyValueChangeKey@<X0>(uint64_t *a1@<X8>)
{
  result = NSKeyValueChangeKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NSKeyValueChangeKey.rawValue.getter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSKeyValueChangeKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)(&v9);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x1EEE9AC00](v17);
        v15 = partial apply for closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:);
        v16 = &v37;
        specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(partial apply for specialized closure #1 in StaticString.withUTF8Buffer<A>(_:), &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata completion function for CodableIgnored(uint64_t a1)
{
  v3 = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo22NSStringCompareOptionsV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for NSStringCompareOptions(0);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t type metadata accessor for NSStringCompareOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSStringCompareOptions;
  if (!lazy cache variable for type metadata for NSStringCompareOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSStringCompareOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  v2 = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Data and conformance Data);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Data and conformance Data);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Data and conformance Data);
    return WitnessTable;
  }

  return v2;
}

void *_sxSgs5ErrorRd__Ri_d_0_r_0_lWOc(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t AADeviceModel.bluetoothAddressData.getter()
{
  v2 = *(v0 + 16);
  outlined copy of Data?(v2, *(v0 + 24));
  return v2;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t AADeviceModel.bluetoothAddressData.setter(uint64_t a1, unint64_t a2)
{
  outlined copy of Data?(a1, a2);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  outlined consume of Data?(v3, v4);
  return outlined consume of Data?(a1, a2);
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

unint64_t type metadata accessor for NSDate()
{
  v2 = lazy cache variable for type metadata for NSDate;
  if (!lazy cache variable for type metadata for NSDate)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSDate);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t AADeviceModel.audiogramEnrolledTimestamp.getter()
{
  v2 = *(v0 + 48);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t AADeviceModel.audiogramEnrolledTimestamp.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t AADeviceModel.identifier.getter()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t AADeviceModel.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

id static AADeviceModel.deviceConfigFor<A>(keyPath:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v215 = &v274;
  v211 = a1;
  v164 = a2;
  v163 = a3;
  v279 = 0;
  v278 = 0;
  v277 = 0;
  v280 = a3;
  v165 = 0;
  v158 = type metadata accessor for Date();
  v159 = *(v158 - 8);
  v160 = v158 - 8;
  v161 = (*(v159 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v158);
  v162 = &v66 - v161;
  v169 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v166 = (v169 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v165);
  v167 = &v66 - v166;
  v168 = (v169 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v170 = &v66 - v168;
  v171 = (v169 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v172 = &v66 - v171;
  v173 = *(v6 - 8);
  v174 = v6 - 8;
  v206 = *(v173 + 64);
  v175 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v176 = &v66 - v175;
  v177 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v178 = &v66 - v177;
  v179 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v180 = &v66 - v179;
  v181 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v182 = &v66 - v181;
  v183 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v184 = &v66 - v183;
  v185 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v186 = &v66 - v185;
  v187 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v188 = &v66 - v187;
  v189 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v190 = &v66 - v189;
  v191 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v192 = &v66 - v191;
  v193 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v194 = &v66 - v193;
  v195 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v196 = &v66 - v195;
  v197 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v198 = &v66 - v197;
  v199 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v200 = &v66 - v199;
  v201 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v202 = &v66 - v201;
  v203 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v204 = &v66 - v203;
  v205 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v207 = &v66 - v205;
  v208 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v209 = &v66 - v208;
  *(v23 + 224) = v211;
  *(v23 + 216) = v24;
  type metadata accessor for AADeviceConfig();
  v210 = AADeviceConfig.__allocating_init()();
  v215[26] = v210;

  KeyPath = swift_getKeyPath();
  v26 = v215;
  v27 = KeyPath;
  v28 = v211;
  v213 = &v276;
  v215[25] = v27;
  v212 = &v275;
  v26[24] = v28;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PartialKeyPathCy16HeadphoneManager13AADeviceModelVGMd, _ss14PartialKeyPathCy16HeadphoneManager13AADeviceModelVGMR);
  v216 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v216)
  {

    (*(v173 + 16))(v209, v164, v163);
    type metadata accessor for AAHeadGestureConfig(0);
    if (swift_dynamicCast())
    {
      v157 = v219;
    }

    else
    {
      v157 = 0x100000000;
    }

    v217 = v157;
    v218 = BYTE4(v157) & 1;
    MEMORY[0x1E69E5928](v210);
    if (v218)
    {
      v155 = [v210 acceptReplyPlayPauseConfig];
      v156 = v155;
    }

    else
    {
      v156 = v217;
    }

    v154 = v156;
    MEMORY[0x1E69E5920](v210);
    [v210 setAcceptReplyPlayPauseConfig_];
  }

  else
  {

    v29 = swift_getKeyPath();
    v30 = v211;
    v31 = v215;
    v215[23] = v29;
    v31[22] = v30;
    v153 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v153)
    {

      (*(v173 + 16))(v207, v164, v163);
      type metadata accessor for AAAutoANCStrength(0);
      if (swift_dynamicCast())
      {
        v152 = v222;
      }

      else
      {
        v152 = 0x100000000;
      }

      v220 = v152;
      v221 = BYTE4(v152) & 1;
      MEMORY[0x1E69E5928](v210);
      if (v221)
      {
        v150 = [v210 autoANCStrength];
        v151 = v150;
      }

      else
      {
        v151 = v220;
      }

      v149 = v151;
      MEMORY[0x1E69E5920](v210);
      [v210 setAutoANCStrength_];
    }

    else
    {

      v32 = swift_getKeyPath();
      v33 = v211;
      v34 = v215;
      v215[21] = v32;
      v34[20] = v33;
      v148 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v148)
      {

        (*(v173 + 16))(v204, v164, v163);
        type metadata accessor for AABobbleConfiguration(0);
        if (swift_dynamicCast())
        {
          v147 = v225;
        }

        else
        {
          v147 = 0x100000000;
        }

        v223 = v147;
        v224 = BYTE4(v147) & 1;
        MEMORY[0x1E69E5928](v210);
        if (v224)
        {
          v145 = [v210 bobbleConfig];
          v146 = v145;
        }

        else
        {
          v146 = v223;
        }

        v144 = v146;
        MEMORY[0x1E69E5920](v210);
        [v210 setBobbleConfig_];
      }

      else
      {

        v35 = swift_getKeyPath();
        v36 = v211;
        v37 = v215;
        v215[19] = v35;
        v37[18] = v36;
        v143 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v143)
        {

          (*(v173 + 16))(v202, v164, v163);
          type metadata accessor for AAHeadGestureConfig(0);
          if (swift_dynamicCast())
          {
            v142 = v228;
          }

          else
          {
            v142 = 0x100000000;
          }

          v226 = v142;
          v227 = BYTE4(v142) & 1;
          MEMORY[0x1E69E5928](v210);
          if (v227)
          {
            v140 = [v210 declineDismissSkipConfig];
            v141 = v140;
          }

          else
          {
            v141 = v226;
          }

          v139 = v141;
          MEMORY[0x1E69E5920](v210);
          [v210 setDeclineDismissSkipConfig_];
        }

        else
        {

          v38 = swift_getKeyPath();
          v39 = v211;
          v40 = v215;
          v215[17] = v38;
          v40[16] = v39;
          v138 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v138)
          {

            (*(v173 + 16))(v200, v164, v163);
            type metadata accessor for AAMultiState(0);
            if (swift_dynamicCast())
            {
              v137 = v231;
            }

            else
            {
              v137 = 0x100000000;
            }

            v229 = v137;
            v230 = BYTE4(v137) & 1;
            MEMORY[0x1E69E5928](v210);
            if (v230)
            {
              v135 = [v210 headGestureToggle];
              v136 = v135;
            }

            else
            {
              v136 = v229;
            }

            v134 = v136;
            MEMORY[0x1E69E5920](v210);
            [v210 setHeadGestureToggle_];
          }

          else
          {

            v41 = swift_getKeyPath();
            v42 = v211;
            v43 = v215;
            v215[15] = v41;
            v43[14] = v42;
            v133 = dispatch thunk of static Equatable.== infix(_:_:)();

            if (v133)
            {

              (*(v173 + 16))(v198, v164, v163);
              type metadata accessor for AAMultiState(0);
              if (swift_dynamicCast())
              {
                v132 = v234;
              }

              else
              {
                v132 = 0x100000000;
              }

              v232 = v132;
              v233 = BYTE4(v132) & 1;
              MEMORY[0x1E69E5928](v210);
              if (v233)
              {
                v130 = [v210 headGestureProxCardShown];
                v131 = v130;
              }

              else
              {
                v131 = v232;
              }

              v129 = v131;
              MEMORY[0x1E69E5920](v210);
              [v210 setHeadGestureProxCardShown_];
            }

            else
            {

              v44 = swift_getKeyPath();
              v45 = v211;
              v46 = v215;
              v215[13] = v44;
              v46[12] = v45;
              v128 = dispatch thunk of static Equatable.== infix(_:_:)();

              if (v128)
              {

                (*(v173 + 16))(v196, v164, v163);
                type metadata accessor for AAMultiState(0);
                if (swift_dynamicCast())
                {
                  v127 = v237;
                }

                else
                {
                  v127 = 0x100000000;
                }

                v235 = v127;
                v236 = BYTE4(v127) & 1;
                MEMORY[0x1E69E5928](v210);
                if (v236)
                {
                  v125 = [v210 hearingAidEnrolled];
                  v126 = v125;
                }

                else
                {
                  v126 = v235;
                }

                v124 = v126;
                MEMORY[0x1E69E5920](v210);
                [v210 setHearingAidEnrolled_];
              }

              else
              {

                v47 = swift_getKeyPath();
                v48 = v211;
                v49 = v215;
                v215[11] = v47;
                v49[10] = v48;
                v123 = dispatch thunk of static Equatable.== infix(_:_:)();

                if (v123)
                {

                  (*(v173 + 16))(v194, v164, v163);
                  type metadata accessor for AAMultiState(0);
                  if (swift_dynamicCast())
                  {
                    v122 = v240;
                  }

                  else
                  {
                    v122 = 0x100000000;
                  }

                  v238 = v122;
                  v239 = BYTE4(v122) & 1;
                  MEMORY[0x1E69E5928](v210);
                  if (v239)
                  {
                    v120 = [v210 enableHearingAidGainSwipe];
                    v121 = v120;
                  }

                  else
                  {
                    v121 = v238;
                  }

                  v119 = v121;
                  MEMORY[0x1E69E5920](v210);
                  [v210 setEnableHearingAidGainSwipe_];
                }

                else
                {

                  v50 = swift_getKeyPath();
                  v51 = v211;
                  v52 = v215;
                  v215[9] = v50;
                  v52[8] = v51;
                  v118 = dispatch thunk of static Equatable.== infix(_:_:)();

                  if (v118)
                  {

                    (*(v173 + 16))(v192, v164, v163);
                    type metadata accessor for NSDate();
                    if (swift_dynamicCast())
                    {
                      v117 = v241;
                    }

                    else
                    {
                      v117 = 0;
                    }

                    v116 = v117;
                    if (v117)
                    {
                      v115 = v116;
                      v114 = v116;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();
                      (*(v159 + 32))(v170, v162, v158);
                      (*(v159 + 56))(v170, 0, 1, v158);
                      MEMORY[0x1E69E5920](v114);
                    }

                    else
                    {
                      (*(v159 + 56))(v170, 1, 1, v158);
                    }

                    MEMORY[0x1E69E5928](v210);
                    v112 = *(v159 + 48);
                    v113 = v159 + 48;
                    if (v112(v170, 1, v158) == 1)
                    {
                      v111 = [v210 audiogramEnrolledTimestamp];
                      if (v111)
                      {
                        v110 = v111;
                        v109 = v111;
                        static Date._unconditionallyBridgeFromObjectiveC(_:)();
                        (*(v159 + 32))(v167, v162, v158);
                        (*(v159 + 56))(v167, 0, 1, v158);
                        MEMORY[0x1E69E5920](v109);
                      }

                      else
                      {
                        (*(v159 + 56))(v167, 1, 1, v158);
                      }

                      outlined init with take of Date?(v167, v172);
                      if (v112(v170, 1, v158) != 1)
                      {
                        outlined destroy of Date?(v170);
                      }
                    }

                    else
                    {
                      (*(v159 + 32))(v172, v170, v158);
                      (*(v159 + 56))(v172, 0, 1, v158);
                    }

                    MEMORY[0x1E69E5920](v210);
                    if (v112(v172, 1, v158) == 1)
                    {
                      v108 = 0;
                    }

                    else
                    {
                      isa = Date._bridgeToObjectiveC()().super.isa;
                      (*(v159 + 8))(v172, v158);
                      v108 = isa;
                    }

                    v106 = v108;
                    [v210 setAudiogramEnrolledTimestamp_];
                    MEMORY[0x1E69E5920](v106);
                  }

                  else
                  {

                    v53 = swift_getKeyPath();
                    v54 = v211;
                    v55 = v215;
                    v215[7] = v53;
                    v55[6] = v54;
                    v105 = dispatch thunk of static Equatable.== infix(_:_:)();

                    if (v105)
                    {

                      (*(v173 + 16))(v190, v164, v163);
                      type metadata accessor for AAMultiState(0);
                      if (swift_dynamicCast())
                      {
                        v104 = v244;
                      }

                      else
                      {
                        v104 = 0x100000000;
                      }

                      v242 = v104;
                      v243 = BYTE4(v104) & 1;
                      MEMORY[0x1E69E5928](v210);
                      if (v243)
                      {
                        v102 = [v210 enableHeartRateMonitor];
                        v103 = v102;
                      }

                      else
                      {
                        v103 = v242;
                      }

                      v101 = v103;
                      MEMORY[0x1E69E5920](v210);
                      [v210 setEnableHeartRateMonitor_];
                    }

                    else
                    {

                      v56 = swift_getKeyPath();
                      v57 = v211;
                      v58 = v215;
                      v215[5] = v56;
                      v58[4] = v57;
                      v100 = dispatch thunk of static Equatable.== infix(_:_:)();

                      if (v100)
                      {

                        (*(v173 + 16))(v188, v164, v163);
                        type metadata accessor for AAMultiState(0);
                        if (swift_dynamicCast())
                        {
                          v99 = v247;
                        }

                        else
                        {
                          v99 = 0x100000000;
                        }

                        v245 = v99;
                        v246 = BYTE4(v99) & 1;
                        MEMORY[0x1E69E5928](v210);
                        if (v246)
                        {
                          v97 = [v210 enableSleepDetection];
                          v98 = v97;
                        }

                        else
                        {
                          v98 = v245;
                        }

                        v96 = v98;
                        MEMORY[0x1E69E5920](v210);
                        [v210 setEnableSleepDetection_];
                      }

                      else
                      {

                        v59 = swift_getKeyPath();
                        v60 = v211;
                        v61 = v215;
                        v215[3] = v59;
                        v61[2] = v60;
                        v95 = dispatch thunk of static Equatable.== infix(_:_:)();

                        if (v95)
                        {

                          (*(v173 + 16))(v186, v164, v163);
                          type metadata accessor for AARemoteCameraControlConfig(0);
                          if (swift_dynamicCast())
                          {
                            v94 = v250;
                          }

                          else
                          {
                            v94 = 0x100000000;
                          }

                          v248 = v94;
                          v249 = BYTE4(v94) & 1;
                          MEMORY[0x1E69E5928](v210);
                          if (v249)
                          {
                            v92 = [v210 remoteCameraControlConfig];
                            v93 = v92;
                          }

                          else
                          {
                            v93 = v248;
                          }

                          v91 = v93;
                          MEMORY[0x1E69E5920](v210);
                          [v210 setRemoteCameraControlConfig_];
                        }

                        else
                        {

                          v62 = swift_getKeyPath();
                          v63 = v211;
                          v64 = v215;
                          v215[1] = v62;
                          *v64 = v63;
                          v90 = dispatch thunk of static Equatable.== infix(_:_:)();

                          if (v90)
                          {

                            (*(v173 + 16))(v184, v164, v163);
                            type metadata accessor for AAMultiState(0);
                            if (swift_dynamicCast())
                            {
                              v89 = v253;
                            }

                            else
                            {
                              v89 = 0x100000000;
                            }

                            v251 = v89;
                            v252 = BYTE4(v89) & 1;
                            MEMORY[0x1E69E5928](v210);
                            if (v252)
                            {
                              v87 = [v210 enableChargingReminder];
                              v88 = v87;
                            }

                            else
                            {
                              v88 = v251;
                            }

                            v86 = v88;
                            MEMORY[0x1E69E5920](v210);
                            [v210 setEnableChargingReminder_];
                          }

                          else
                          {

                            v273 = swift_getKeyPath();
                            v272 = v211;
                            v85 = dispatch thunk of static Equatable.== infix(_:_:)();

                            if (v85)
                            {

                              (*(v173 + 16))(v182, v164, v163);
                              type metadata accessor for AAMultiState(0);
                              if (swift_dynamicCast())
                              {
                                v84 = v256;
                              }

                              else
                              {
                                v84 = 0x100000000;
                              }

                              v254 = v84;
                              v255 = BYTE4(v84) & 1;
                              MEMORY[0x1E69E5928](v210);
                              if (v255)
                              {
                                v82 = [v210 allowTemporaryManagedPairing];
                                v83 = v82;
                              }

                              else
                              {
                                v83 = v254;
                              }

                              v81 = v83;
                              MEMORY[0x1E69E5920](v210);
                              [v210 setAllowTemporaryManagedPairing_];
                            }

                            else
                            {

                              v271 = swift_getKeyPath();
                              v270 = v211;
                              v80 = dispatch thunk of static Equatable.== infix(_:_:)();

                              if (v80)
                              {

                                (*(v173 + 16))(v180, v164, v163);
                                type metadata accessor for AAChargingFeatureEnablementState(0);
                                if (swift_dynamicCast())
                                {
                                  v79 = v259;
                                }

                                else
                                {
                                  v79 = 0x100000000;
                                }

                                v257 = v79;
                                v258 = BYTE4(v79) & 1;
                                MEMORY[0x1E69E5928](v210);
                                if (v258)
                                {
                                  v77 = [v210 changeOptimizedBatteryChargingState];
                                  v78 = v77;
                                }

                                else
                                {
                                  v78 = v257;
                                }

                                v76 = v78;
                                MEMORY[0x1E69E5920](v210);
                                [v210 setChangeOptimizedBatteryChargingState_];
                              }

                              else
                              {

                                v269 = swift_getKeyPath();
                                v268 = v211;
                                v75 = dispatch thunk of static Equatable.== infix(_:_:)();

                                if (v75)
                                {

                                  (*(v173 + 16))(v178, v164, v163);
                                  type metadata accessor for AAChargingFeatureEnablementState(0);
                                  if (swift_dynamicCast())
                                  {
                                    v74 = v262;
                                  }

                                  else
                                  {
                                    v74 = 0x100000000;
                                  }

                                  v260 = v74;
                                  v261 = BYTE4(v74) & 1;
                                  MEMORY[0x1E69E5928](v210);
                                  if (v261)
                                  {
                                    v72 = [v210 changeDynamicEndOfChargeState];
                                    v73 = v72;
                                  }

                                  else
                                  {
                                    v73 = v260;
                                  }

                                  v71 = v73;
                                  MEMORY[0x1E69E5920](v210);
                                  [v210 setChangeDynamicEndOfChargeState_];
                                }

                                else
                                {

                                  v267 = swift_getKeyPath();
                                  v266 = v211;
                                  v70 = dispatch thunk of static Equatable.== infix(_:_:)();

                                  if (v70)
                                  {

                                    (*(v173 + 16))(v176, v164, v163);
                                    type metadata accessor for AAMultiState(0);
                                    if (swift_dynamicCast())
                                    {
                                      v69 = v265;
                                    }

                                    else
                                    {
                                      v69 = 0x100000000;
                                    }

                                    v263 = v69;
                                    v264 = BYTE4(v69) & 1;
                                    MEMORY[0x1E69E5928](v210);
                                    if (v264)
                                    {
                                      v67 = [v210 allowHealthKitDataWrite];
                                      v68 = v67;
                                    }

                                    else
                                    {
                                      v68 = v263;
                                    }

                                    v66 = v68;
                                    MEMORY[0x1E69E5920](v210);
                                    [v210 setAllowHealthKitDataWrite_];
                                  }

                                  else
                                  {
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

  return v210;
}

unint64_t type metadata accessor for AADeviceConfig()
{
  v2 = lazy cache variable for type metadata for AADeviceConfig;
  if (!lazy cache variable for type metadata for AADeviceConfig)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for AADeviceConfig);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for AAMultiState(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAMultiState;
  if (!lazy cache variable for type metadata for AAMultiState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAMultiState);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AAChargingFeatureEnablementState(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAChargingFeatureEnablementState;
  if (!lazy cache variable for type metadata for AAChargingFeatureEnablementState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAChargingFeatureEnablementState);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AARemoteCameraControlConfig(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AARemoteCameraControlConfig;
  if (!lazy cache variable for type metadata for AARemoteCameraControlConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AARemoteCameraControlConfig);
      return v2;
    }
  }

  return v5;
}

void *outlined init with take of Date?(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t type metadata accessor for AAHeadGestureConfig(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAHeadGestureConfig;
  if (!lazy cache variable for type metadata for AAHeadGestureConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAHeadGestureConfig);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AABobbleConfiguration(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AABobbleConfiguration;
  if (!lazy cache variable for type metadata for AABobbleConfiguration)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AABobbleConfiguration);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AAAutoANCStrength(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAAutoANCStrength;
  if (!lazy cache variable for type metadata for AAAutoANCStrength)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAAutoANCStrength);
      return v2;
    }
  }

  return v5;
}

uint64_t AADeviceModel.init(acceptReplyPlayPauseConfig:autoANCCapability:autoANCStrength:bluetoothAddressData:bobbleCapability:bobbleConfig:caseSoundCapability:declineDismissSkipConfig:earTipFitTestCapability:frequencyBand:headGestureToggle:headGestureProxCardShown:hearingAidCapability:hearingAidEnrolled:hearingAidConfig:hearingAidGainSwipeEnabled:hearingTestCapability:hideOffListeningModeCapability:audiogramEnrolledTimestamp:heartRateMonitorEnabled:hideEarDetectionCapability:identifier:streamStateAoS:smartRoutingMode:sleepDetectionCapability:sleepDetectionEnabled:cameraControlConfig:chargingReminderEnabled:optimizedBatteryChargingState:dynamicEndOfChargeState:temporaryManagedPairedStatus:healthKitDataWriteAllowed:)@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, char a22, char a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35)
{
  *a9 = a1;
  result = a26;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 33) = a7;
  *(a9 + 34) = a8;
  *(a9 + 35) = a10;
  *(a9 + 36) = a11;
  *(a9 + 37) = a12;
  *(a9 + 38) = a13;
  *(a9 + 39) = a14;
  *(a9 + 40) = a15;
  *(a9 + 41) = a16;
  *(a9 + 42) = a17;
  *(a9 + 43) = a18;
  *(a9 + 44) = a19;
  *(a9 + 45) = a20;
  *(a9 + 48) = a21;
  *(a9 + 56) = a22;
  *(a9 + 57) = a23;
  *(a9 + 64) = a24;
  *(a9 + 72) = a25;
  *(a9 + 80) = a26;
  *(a9 + 81) = a27;
  *(a9 + 82) = a28;
  *(a9 + 83) = a29;
  *(a9 + 84) = a30;
  *(a9 + 85) = a31;
  *(a9 + 86) = a32;
  *(a9 + 87) = a33;
  *(a9 + 88) = a34;
  *(a9 + 89) = a35;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(void *a1)
{
  if ((HIBYTE(a1[1]) >> 6) < 3u)
  {
    return HIBYTE(a1[1]) >> 6;
  }

  else
  {
    return *a1 + 3;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = HIBYTE(*(a1 + 8)) >> 4;
  v2 = 15 - (((4 * v1) | (v1 >> 2)) & 0xF);
  if (v2 >= 0xC)
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t getEnumTagSinglePayload for AADeviceModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 90))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 48)))
      {
        v3 = *(a1 + 48);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AADeviceModel(uint64_t result, int a2, int a3)
{
  v3 = (result + 90);
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 48) = (a2 - 1);
    }
  }

  return result;
}

unint64_t type metadata accessor for AASmartRoutingMode(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AASmartRoutingMode;
  if (!lazy cache variable for type metadata for AASmartRoutingMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AASmartRoutingMode);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AAStreamStateAoS(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAStreamStateAoS;
  if (!lazy cache variable for type metadata for AAStreamStateAoS)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAStreamStateAoS);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AAHearingTestCapability(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAHearingTestCapability;
  if (!lazy cache variable for type metadata for AAHearingTestCapability)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAHearingTestCapability);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AAHearingAidConfiguration(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAHearingAidConfiguration;
  if (!lazy cache variable for type metadata for AAHearingAidConfiguration)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAHearingAidConfiguration);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AAHearingAidCapability(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAHearingAidCapability;
  if (!lazy cache variable for type metadata for AAHearingAidCapability)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAHearingAidCapability);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AAFrequencyBand(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAFrequencyBand;
  if (!lazy cache variable for type metadata for AAFrequencyBand)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAFrequencyBand);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AAAutoANCCapability(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAAutoANCCapability;
  if (!lazy cache variable for type metadata for AAAutoANCCapability)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAAutoANCCapability);
      return v2;
    }
  }

  return v5;
}

uint64_t one-time initialization function for fwSeeding()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static Logger.fwSeeding);
  __swift_project_value_buffer(v1, static Logger.fwSeeding);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("firmwareSeeding", 0xFuLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.fwSeeding.unsafeMutableAddressor()
{
  if (one-time initialization token for fwSeeding != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.fwSeeding);
}

uint64_t static Logger.fwSeeding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.fwSeeding.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Bool __swiftcall HeadphoneDevice.shouldShowFirmwareSeeding()()
{
  v44 = 0;
  v55 = partial apply for implicit closure #1 in HeadphoneDevice.shouldShowFirmwareSeeding();
  v57 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  v59 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  v63 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  v65 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v67 = closure #1 in OSLogArguments.append(_:)partial apply;
  v70 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v82 = 0;
  v81 = 0;
  v36 = 0;
  v52 = type metadata accessor for Logger();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v37 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v0 = &v23[-v37];
  v38 = &v23[-v37];
  v82 = v1;
  v43 = "com.apple.HeadphoneSettings";
  v41 = 27;
  v42 = 1;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1);
  object = v2._object;
  v39 = MEMORY[0x1DA730940](v2._countAndFlagsBits);
  CFPreferencesAppSynchronize(v39);
  MEMORY[0x1E69E5920](v39);

  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SeedingPlacardShowed", 0x14uLL, v42 & 1);
  v48 = v3._object;
  v47 = MEMORY[0x1DA730940](v3._countAndFlagsBits);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v43, v41, v42 & 1);
  v46 = v4._object;
  v45 = MEMORY[0x1DA730940](v4._countAndFlagsBits);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v47, v45, v44);
  MEMORY[0x1E69E5920](v45);

  MEMORY[0x1E69E5920](v47);

  v53 = AppBooleanValue != 0;
  v81 = AppBooleanValue != 0;
  v5 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v50 + 16))(v0, v5, v52);
  v54 = 17;
  v61 = 7;
  v56 = swift_allocObject();
  *(v56 + 16) = v53;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 4;
  v60 = 32;
  v6 = swift_allocObject();
  v7 = v56;
  v58 = v6;
  *(v6 + 16) = v55;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v58;
  v62 = v8;
  *(v8 + 16) = v57;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v62;
  v64 = v10;
  *(v10 + 16) = v59;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v64;
  v71 = v12;
  *(v12 + 16) = v63;
  *(v12 + 24) = v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v69 = _allocateUninitializedArray<A>(_:)();
  v72 = v14;

  v15 = v66;
  v16 = v72;
  *v72 = v65;
  v16[1] = v15;

  v17 = v68;
  v18 = v72;
  v72[2] = v67;
  v18[3] = v17;

  v19 = v71;
  v20 = v72;
  v72[4] = v70;
  v20[5] = v19;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v74, v75))
  {
    v21 = v36;
    v29 = static UnsafeMutablePointer.allocate(capacity:)();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v28 = 0;
    v30 = createStorage<A>(capacity:type:)(0, v27, v27);
    v31 = createStorage<A>(capacity:type:)(v28, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v32 = &v80;
    v80 = v29;
    v33 = &v79;
    v79 = v30;
    v34 = &v78;
    v78 = v31;
    serialize(_:at:)(0, &v80);
    serialize(_:at:)(1, v32);
    v76 = v65;
    v77 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v76, v32, v33, v34);
    v35 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v76 = v67;
      v77 = v68;
      closure #1 in osLogInternal(_:log:type:)(&v76, &v80, &v79, &v78);
      v26 = 0;
      v76 = v70;
      v77 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v76, &v80, &v79, &v78);
      _os_log_impl(&dword_1D93D0000, v74, v75, "FW Seeding: placardShowed: %{BOOL}d", v29, 8u);
      v25 = 0;
      destroyStorage<A>(_:count:)(v30, 0, v27);
      destroyStorage<A>(_:count:)(v31, v25, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v29, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v74);
  (*(v50 + 8))(v38, v52);
  return !v53 && HeadphoneDevice.shouldShowFirmwareUpdate()();
}

Swift::Bool __swiftcall HeadphoneDevice.shouldShowFirmwareUpdate()()
{
  v168 = partial apply for implicit closure #9 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v169 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
  v170 = partial apply for implicit closure #10 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v171 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v172 = partial apply for implicit closure #11 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v173 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v174 = partial apply for implicit closure #12 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v175 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v176 = partial apply for implicit closure #13 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v177 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v178 = partial apply for implicit closure #14 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v179 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v180 = partial apply for implicit closure #15 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v181 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v182 = closure #1 in OSLogArguments.append(_:)partial apply;
  v183 = closure #1 in OSLogArguments.append(_:)partial apply;
  v184 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v185 = closure #1 in OSLogArguments.append(_:)partial apply;
  v186 = closure #1 in OSLogArguments.append(_:)partial apply;
  v187 = closure #1 in OSLogArguments.append(_:)partial apply;
  v188 = closure #1 in OSLogArguments.append(_:)partial apply;
  v189 = closure #1 in OSLogArguments.append(_:)partial apply;
  v190 = closure #1 in OSLogArguments.append(_:)partial apply;
  v191 = closure #1 in OSLogArguments.append(_:)partial apply;
  v192 = closure #1 in OSLogArguments.append(_:)partial apply;
  v193 = closure #1 in OSLogArguments.append(_:)partial apply;
  v194 = closure #1 in OSLogArguments.append(_:)partial apply;
  v195 = closure #1 in OSLogArguments.append(_:)partial apply;
  v196 = closure #1 in OSLogArguments.append(_:)partial apply;
  v197 = closure #1 in OSLogArguments.append(_:)partial apply;
  v198 = closure #1 in OSLogArguments.append(_:)partial apply;
  v199 = closure #1 in OSLogArguments.append(_:)partial apply;
  v200 = closure #1 in OSLogArguments.append(_:)partial apply;
  v201 = closure #1 in OSLogArguments.append(_:)partial apply;
  v202 = closure #1 in OSLogArguments.append(_:)partial apply;
  v238 = 0;
  v234 = 0;
  v233 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v203 = 0;
  v204 = type metadata accessor for Logger();
  v205 = *(v204 - 8);
  v206 = v204 - 8;
  v207 = (*(v205 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v204);
  v208 = v81 - v207;
  v238 = v0;
  v209 = &v235;
  v236 = &type metadata for AudioAccessoryFeatures;
  v237 = lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures();
  v235 = 3;
  v210 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v209);
  v234 = v210 & 1;
  v211 = swift_allocObject();
  v233 = v211 + 16;
  *(v211 + 16) = 0;
  v212 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v213 = [v212 productID];
  MEMORY[0x1E69E5920](v212);
  v215 = CBProductIDIsW3(v213);
  MEMORY[0x1E69E5928](v214);
  if (v215)
  {
    v165 = (*((*v214 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v166 = [v165 productID];
    MEMORY[0x1E69E5920](v165);
    v167 = CBProductIDIsAirPods(v166);
  }

  else
  {
    v167 = 0;
  }

  v151 = v167;
  MEMORY[0x1E69E5920](v214);
  v161 = 1;
  v232 = v151 & 1;
  v155 = "com.apple.HeadphoneSettings";
  v154 = 27;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1);
  object = v1._object;
  v152 = MEMORY[0x1DA730940](v1._countAndFlagsBits);
  CFPreferencesAppSynchronize(v152);
  MEMORY[0x1E69E5920](v152);

  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ImprovedSeedingUI", 0x11uLL, v161 & 1);
  v159 = v2._object;
  v158 = MEMORY[0x1DA730940](v2._countAndFlagsBits);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v155, v154, v161 & 1);
  v157 = v3._object;
  v156 = MEMORY[0x1DA730940](v3._countAndFlagsBits);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v158, v156, 0);
  MEMORY[0x1E69E5920](v156);

  MEMORY[0x1E69E5920](v158);

  v162 = AppBooleanValue != 0;
  v231 = v162 & v161;
  v163 = HeadphoneDevice.getUARPSettingsAccessory()();
  v230 = v163;
  v164 = HeadphoneDevice.getSeedProgram()();
  v229 = v164;
  if (v210)
  {
    v150 = *(v211 + 16);
  }

  else
  {
    v150 = 0;
  }

  v149 = v150;
  MEMORY[0x1E69E5928](v163);
  if (v149)
  {
    v216 = v163;
    v148 = v163 != 0;
    v147 = v148;
  }

  else
  {
    v147 = 0;
  }

  v146 = v147;
  MEMORY[0x1E69E5920](v163);
  v145 = v146 || v162;
  if (v145)
  {
    v144 = v151;
  }

  else
  {
    v144 = 0;
  }

  if (v144)
  {
    v142 = &v222;
    v222 = v164;
    v140 = &v221;
    v221 = 1;
    v141 = type metadata accessor for SDSeedProgram(0);
    v143 = lazy protocol witness table accessor for type SDSeedProgram and conformance SDSeedProgram();
    if (== infix<A>(_:_:)())
    {
      v139 = 1;
    }

    else
    {
      v220 = v164;
      v219 = 2;
      v139 = == infix<A>(_:_:)();
    }

    if (v139)
    {
      v138 = 1;
    }

    else
    {
      v218 = v164;
      v217 = 3;
      v138 = == infix<A>(_:_:)();
    }

    v137 = v138;
  }

  else
  {
    v137 = 0;
  }

  v4 = v208;
  v90 = v137;
  v92 = 1;
  v228 = v137 & 1;
  v5 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v205 + 16))(v4, v5, v204);
  v105 = 17;
  v108 = 7;
  v93 = swift_allocObject();
  *(v93 + 16) = v90 & v92;
  v95 = swift_allocObject();
  *(v95 + 16) = v210 & v92;

  v91 = 24;
  v6 = swift_allocObject();
  v7 = v163;
  v98 = v6;
  *(v6 + 16) = v164;
  MEMORY[0x1E69E5928](v7);
  v100 = swift_allocObject();
  *(v100 + 16) = v163;
  v102 = swift_allocObject();
  *(v102 + 16) = v151 & v92;
  v109 = swift_allocObject();
  *(v109 + 16) = v162;
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();
  v111 = swift_allocObject();
  v104 = 32;
  *(v111 + 16) = 32;
  v112 = swift_allocObject();
  v106 = 8;
  *(v112 + 16) = 8;
  v107 = 32;
  v8 = swift_allocObject();
  v9 = v93;
  v94 = v8;
  *(v8 + 16) = v168;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v94;
  v113 = v10;
  *(v10 + 16) = v169;
  *(v10 + 24) = v11;
  v114 = swift_allocObject();
  *(v114 + 16) = v104;
  v115 = swift_allocObject();
  *(v115 + 16) = v106;
  v12 = swift_allocObject();
  v13 = v95;
  v96 = v12;
  *(v12 + 16) = v170;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v96;
  v116 = v14;
  *(v14 + 16) = v171;
  *(v14 + 24) = v15;
  v117 = swift_allocObject();
  *(v117 + 16) = v104;
  v118 = swift_allocObject();
  *(v118 + 16) = v106;
  v16 = swift_allocObject();
  v17 = v211;
  v97 = v16;
  *(v16 + 16) = v172;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v97;
  v119 = v18;
  *(v18 + 16) = v173;
  *(v18 + 24) = v19;
  v120 = swift_allocObject();
  *(v120 + 16) = v104;
  v121 = swift_allocObject();
  *(v121 + 16) = v106;
  v20 = swift_allocObject();
  v21 = v98;
  v99 = v20;
  *(v20 + 16) = v174;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v99;
  v122 = v22;
  *(v22 + 16) = v175;
  *(v22 + 24) = v23;
  v123 = swift_allocObject();
  *(v123 + 16) = v104;
  v124 = swift_allocObject();
  *(v124 + 16) = v106;
  v24 = swift_allocObject();
  v25 = v100;
  v101 = v24;
  *(v24 + 16) = v176;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v101;
  v125 = v26;
  *(v26 + 16) = v177;
  *(v26 + 24) = v27;
  v126 = swift_allocObject();
  *(v126 + 16) = v104;
  v127 = swift_allocObject();
  *(v127 + 16) = v106;
  v28 = swift_allocObject();
  v29 = v102;
  v103 = v28;
  *(v28 + 16) = v178;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v103;
  v128 = v30;
  *(v30 + 16) = v179;
  *(v30 + 24) = v31;
  v129 = swift_allocObject();
  *(v129 + 16) = v104;
  v130 = swift_allocObject();
  *(v130 + 16) = v106;
  v32 = swift_allocObject();
  v33 = v109;
  v110 = v32;
  *(v32 + 16) = v180;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  v35 = v110;
  v132 = v34;
  *(v34 + 16) = v181;
  *(v34 + 24) = v35;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v131 = _allocateUninitializedArray<A>(_:)();
  v133 = v36;

  v37 = v111;
  v38 = v133;
  *v133 = v182;
  v38[1] = v37;

  v39 = v112;
  v40 = v133;
  v133[2] = v183;
  v40[3] = v39;

  v41 = v113;
  v42 = v133;
  v133[4] = v184;
  v42[5] = v41;

  v43 = v114;
  v44 = v133;
  v133[6] = v185;
  v44[7] = v43;

  v45 = v115;
  v46 = v133;
  v133[8] = v186;
  v46[9] = v45;

  v47 = v116;
  v48 = v133;
  v133[10] = v187;
  v48[11] = v47;

  v49 = v117;
  v50 = v133;
  v133[12] = v188;
  v50[13] = v49;

  v51 = v118;
  v52 = v133;
  v133[14] = v189;
  v52[15] = v51;

  v53 = v119;
  v54 = v133;
  v133[16] = v190;
  v54[17] = v53;

  v55 = v120;
  v56 = v133;
  v133[18] = v191;
  v56[19] = v55;

  v57 = v121;
  v58 = v133;
  v133[20] = v192;
  v58[21] = v57;

  v59 = v122;
  v60 = v133;
  v133[22] = v193;
  v60[23] = v59;

  v61 = v123;
  v62 = v133;
  v133[24] = v194;
  v62[25] = v61;

  v63 = v124;
  v64 = v133;
  v133[26] = v195;
  v64[27] = v63;

  v65 = v125;
  v66 = v133;
  v133[28] = v196;
  v66[29] = v65;

  v67 = v126;
  v68 = v133;
  v133[30] = v197;
  v68[31] = v67;

  v69 = v127;
  v70 = v133;
  v133[32] = v198;
  v70[33] = v69;

  v71 = v128;
  v72 = v133;
  v133[34] = v199;
  v72[35] = v71;

  v73 = v129;
  v74 = v133;
  v133[36] = v200;
  v74[37] = v73;

  v75 = v130;
  v76 = v133;
  v133[38] = v201;
  v76[39] = v75;

  v77 = v132;
  v78 = v133;
  v133[40] = v202;
  v78[41] = v77;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v135, v136))
  {
    v79 = v203;
    v83 = static UnsafeMutablePointer.allocate(capacity:)();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v84 = createStorage<A>(capacity:type:)(0, v82, v82);
    v85 = createStorage<A>(capacity:type:)(7, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v86 = &v227;
    v227 = v83;
    v87 = &v226;
    v226 = v84;
    v88 = &v225;
    v225 = v85;
    serialize(_:at:)(2, &v227);
    serialize(_:at:)(7, v86);
    v223 = v182;
    v224 = v111;
    closure #1 in osLogInternal(_:log:type:)(&v223, v86, v87, v88);
    v89 = v79;
    if (v79)
    {

      __break(1u);
    }

    else
    {
      v223 = v183;
      v224 = v112;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[19] = 0;
      v223 = v184;
      v224 = v113;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[18] = 0;
      v223 = v185;
      v224 = v114;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[17] = 0;
      v223 = v186;
      v224 = v115;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[16] = 0;
      v223 = v187;
      v224 = v116;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[15] = 0;
      v223 = v188;
      v224 = v117;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[14] = 0;
      v223 = v189;
      v224 = v118;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[13] = 0;
      v223 = v190;
      v224 = v119;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[12] = 0;
      v223 = v191;
      v224 = v120;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[11] = 0;
      v223 = v192;
      v224 = v121;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[10] = 0;
      v223 = v193;
      v224 = v122;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[9] = 0;
      v223 = v194;
      v224 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[8] = 0;
      v223 = v195;
      v224 = v124;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[7] = 0;
      v223 = v196;
      v224 = v125;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[6] = 0;
      v223 = v197;
      v224 = v126;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[5] = 0;
      v223 = v198;
      v224 = v127;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[4] = 0;
      v223 = v199;
      v224 = v128;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[3] = 0;
      v223 = v200;
      v224 = v129;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[2] = 0;
      v223 = v201;
      v224 = v130;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[1] = 0;
      v223 = v202;
      v224 = v132;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      _os_log_impl(&dword_1D93D0000, v135, v136, "FW Seeding: Should Show: %s -> Feature Flag: %s, Seed Build: %s, Seed Program: %s, Accessory: %s, W3 AirPods: %s, Force Show: %s", v83, 0x48u);
      destroyStorage<A>(_:count:)(v84, 0, v82);
      destroyStorage<A>(_:count:)(v85, 7, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v83, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v135);
  (*(v205 + 8))(v208, v204);
  MEMORY[0x1E69E5920](v163);

  return v90 & 1;
}