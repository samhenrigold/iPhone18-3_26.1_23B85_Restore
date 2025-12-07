uint64_t CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    closure #3 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #4 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #5 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active, 6);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer, 7);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType, 8, &type metadata for CLP_LogEntry_PrivateData_Location.SignalQualityType);
    closure #9 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #10 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType, 12, &type metadata for CLP_LogEntry_PrivateData_Location.MotionDetectedType);
    closure #13 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TechnologyStatus and conformance CLP_LogEntry_PrivateData_TechnologyStatus, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TechnologyStatus);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleSpeed and conformance CLP_LogEntry_PrivateData_VehicleSpeed, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed, &protocol conformance descriptor for CLP_LogEntry_PrivateData_VehicleSpeed);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
}

uint64_t closure #10 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleHeading and conformance CLP_LogEntry_PrivateData_VehicleHeading, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading, &protocol conformance descriptor for CLP_LogEntry_PrivateData_VehicleHeading);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_XtraFileAvailable and conformance CLP_LogEntry_PrivateData_XtraFileAvailable, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable, &protocol conformance descriptor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationDerivedSpeed and conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_Location.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v249 = a2;
  v203 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v200 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v197 = &v197 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSg_ADtMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSg_ADtMR);
  MEMORY[0x28223BE20](v198);
  v204 = &v197 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v199 = &v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v202 = &v197 - v8;
  v212 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v208 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v201 = &v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSg_ADtMR);
  MEMORY[0x28223BE20](v206);
  v216 = &v197 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v207 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v211 = &v197 - v14;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v214 = *(v15 - 8);
  v215 = v15;
  MEMORY[0x28223BE20](v15);
  v205 = &v197 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSg_ADtMR);
  MEMORY[0x28223BE20](v213);
  v219 = &v197 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v209 = &v197 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v218 = &v197 - v21;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v221 = *(v22 - 8);
  v222 = v22;
  MEMORY[0x28223BE20](v22);
  v210 = &v197 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSg_ADtMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSg_ADtMR);
  MEMORY[0x28223BE20](v220);
  v223 = &v197 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v217 = &v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v231 = &v197 - v28;
  v29 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v228 = *(v29 - 8);
  v229 = v29;
  MEMORY[0x28223BE20](v29);
  v224 = &v197 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSg_ADtMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSg_ADtMR);
  MEMORY[0x28223BE20](v227);
  v230 = &v197 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v225 = &v197 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v232 = &v197 - v35;
  v36 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v236 = *(v36 - 8);
  v237 = v36;
  MEMORY[0x28223BE20](v36);
  v226 = &v197 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSg_ADtMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSg_ADtMR);
  MEMORY[0x28223BE20](v235);
  v238 = &v197 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v234 = &v197 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v239 = &v197 - v42;
  v43 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v242 = *(v43 - 8);
  v243 = v43;
  MEMORY[0x28223BE20](v43);
  v233 = &v197 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSg_ADtMR);
  MEMORY[0x28223BE20](v241);
  v244 = &v197 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v240 = &v197 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v246 = &v197 - v49;
  v248 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v50 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v245 = &v197 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v53 = v52 - 8;
  MEMORY[0x28223BE20](v52);
  v55 = &v197 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v57 = MEMORY[0x28223BE20](v56 - 8);
  v247 = &v197 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v60 = &v197 - v59;
  v61 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v61, v60, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v62 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v63 = v249;
  swift_beginAccess();
  v64 = *(v53 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60, v55, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v65 = v63 + v62;
  v66 = v248;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v65, &v55[v64], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v67 = *(v50 + 48);
  if (v67(v55, 1, v66) == 1)
  {

    outlined destroy of Any?(v60, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v67(&v55[v64], 1, v66) == 1)
    {
      outlined destroy of Any?(v55, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v69 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v70 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v71 = v55;
LABEL_7:
    outlined destroy of Any?(v71, v69, v70);
    goto LABEL_8;
  }

  v68 = v247;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, v247, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v67(&v55[v64], 1, v66) == 1)
  {

    outlined destroy of Any?(v60, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v68, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v73 = v245;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v55[v64], v245, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v74 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v68, v73, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v73, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v60, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v68, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v55, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v74 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v75 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v76 = *v75;
  v77 = *(v75 + 4);
  v78 = v63 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  if (v77)
  {
    v79 = v246;
    if ((*(v78 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v79 = v246;
    if ((*(v78 + 4) & 1) != 0 || v76 != *v78)
    {
      goto LABEL_8;
    }
  }

  v80 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v80, v79, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  v81 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  v82 = *(v241 + 48);
  v83 = v244;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79, v244, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63 + v81, v83 + v82, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  v84 = v243;
  v85 = *(v242 + 48);
  if (v85(v83, 1, v243) == 1)
  {
    outlined destroy of Any?(v79, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
    if (v85(v83 + v82, 1, v84) == 1)
    {
      outlined destroy of Any?(v83, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
      goto LABEL_25;
    }

LABEL_21:
    v69 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSg_ADtMd;
    v70 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSg_ADtMR;
LABEL_31:
    v71 = v83;
    goto LABEL_7;
  }

  v86 = v240;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v83, v240, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  if (v85(v83 + v82, 1, v84) == 1)
  {
    outlined destroy of Any?(v246, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v86, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
    goto LABEL_21;
  }

  v87 = v84;
  v88 = v233;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v83 + v82, v233, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  v89 = *(v87 + 20);
  v90 = *(v86 + v89);
  v91 = *(v88 + v89);
  if (v90 != v91)
  {

    v92 = closure #1 in static CLP_LogEntry_PrivateData_DaemonLocation.== infix(_:_:)(v90, v91);

    if ((v92 & 1) == 0)
    {
      v123 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation;
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v88, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
      v124 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd;
      v125 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR;
      outlined destroy of Any?(v246, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
      v126 = v240;
LABEL_48:
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v126, v123);
      v71 = v83;
      v69 = v124;
      v70 = v125;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v93 = v240;
  v94 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v88, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  outlined destroy of Any?(v246, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v93, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  outlined destroy of Any?(v83, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  if ((v94 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v95 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v96 = v239;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v95, v239, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v97 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v98 = *(v235 + 48);
  v99 = v238;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v96, v238, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v100 = v63 + v97;
  v83 = v99;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v100, v99 + v98, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v101 = *(v236 + 48);
  v102 = v99;
  v103 = v237;
  if (v101(v102, 1, v237) == 1)
  {
    outlined destroy of Any?(v96, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
    if (v101(v83 + v98, 1, v103) == 1)
    {
      outlined destroy of Any?(v83, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v104 = v234;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v83, v234, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  if (v101(v83 + v98, 1, v103) == 1)
  {
    outlined destroy of Any?(v239, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v104, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
LABEL_30:
    v69 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSg_ADtMd;
    v70 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSg_ADtMR;
    goto LABEL_31;
  }

  v105 = v103;
  v106 = v226;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v83 + v98, v226, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  v107 = *(v105 + 20);
  v108 = *(v104 + v107);
  v109 = *(v106 + v107);
  if (v108 != v109)
  {

    v110 = closure #1 in static CLP_LogEntry_PrivateData_DaemonLocationPrivate.== infix(_:_:)(v108, v109);

    if ((v110 & 1) == 0)
    {
      v123 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate;
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v106, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
      v124 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd;
      v125 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR;
      outlined destroy of Any?(v239, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
      v126 = v234;
      goto LABEL_48;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v111 = v234;
  v112 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v106, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  outlined destroy of Any?(v239, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v111, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  outlined destroy of Any?(v83, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  if ((v112 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_35:
  v113 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v114 = v232;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v113, v232, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v115 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v116 = *(v227 + 48);
  v117 = v230;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v114, v230, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v118 = v117;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63 + v115, v117 + v116, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v119 = v229;
  v120 = *(v228 + 48);
  if (v120(v117, 1, v229) == 1)
  {
    outlined destroy of Any?(v114, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
    v121 = v120(v117 + v116, 1, v119);
    v122 = v231;
    if (v121 == 1)
    {
      outlined destroy of Any?(v117, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
      goto LABEL_44;
    }

LABEL_41:
    v69 = &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSg_ADtMd;
    v70 = &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSg_ADtMR;
LABEL_42:
    v71 = v118;
    goto LABEL_7;
  }

  v127 = v225;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117, v225, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v128 = v120(v117 + v116, 1, v119);
  v122 = v231;
  if (v128 == 1)
  {
    outlined destroy of Any?(v232, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v127, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    goto LABEL_41;
  }

  v129 = v117 + v116;
  v130 = v224;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v129, v224, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  v131 = specialized static CLP_LogEntry_PrivateData_TechnologyStatus.== infix(_:_:)(v127, v130);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v130, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  outlined destroy of Any?(v232, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v127, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  outlined destroy of Any?(v117, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  if ((v131 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_44:
  v132 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  v133 = *(a1 + v132);
  v134 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  v135 = *(v63 + v134);
  if (v133 == 2)
  {
    if (v135 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v135 == 2 || ((v133 ^ v135) & 1) != 0)
  {
    goto LABEL_8;
  }

  v136 = a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  swift_beginAccess();
  v137 = *v136;
  v138 = *(v136 + 8);
  v139 = v63 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  swift_beginAccess();
  if (v138)
  {
    if ((*(v139 + 8) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v139 + 8) & 1) != 0 || v137 != *v139)
  {
    goto LABEL_8;
  }

  v140 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  v141 = *(a1 + v140);
  v142 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  v143 = *(v63 + v142);
  if (v141 == 3)
  {
    if (v143 != 3)
    {
      goto LABEL_8;
    }
  }

  else if (v143 == 3 || v141 != v143)
  {
    goto LABEL_8;
  }

  v144 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v144, v122, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v145 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  v146 = *(v220 + 48);
  v147 = v223;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v122, v223, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v118 = v147;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63 + v145, v147 + v146, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v148 = v222;
  v149 = *(v221 + 48);
  if (v149(v147, 1, v222) == 1)
  {
    outlined destroy of Any?(v122, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
    if (v149(v147 + v146, 1, v148) == 1)
    {
      outlined destroy of Any?(v147, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
      v151 = v218;
      v150 = v219;
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  v152 = v217;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v147, v217, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  if (v149(v147 + v146, 1, v148) == 1)
  {
    outlined destroy of Any?(v122, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v152, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
LABEL_66:
    v69 = &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSg_ADtMd;
    v70 = &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSg_ADtMR;
    goto LABEL_42;
  }

  v153 = v147 + v146;
  v154 = v210;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v153, v210, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  v155 = specialized static CLP_LogEntry_PrivateData_VehicleSpeed.== infix(_:_:)(v152, v154, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v154, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  outlined destroy of Any?(v122, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v152, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  outlined destroy of Any?(v147, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v151 = v218;
  v150 = v219;
  if ((v155 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_68:
  v156 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v156, v151, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v157 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  v158 = *(v213 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v151, v150, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63 + v157, v150 + v158, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v159 = v215;
  v160 = *(v214 + 48);
  if (v160(v150, 1, v215) == 1)
  {
    outlined destroy of Any?(v151, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
    if (v160(v150 + v158, 1, v159) == 1)
    {
      outlined destroy of Any?(v150, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  v161 = v209;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v150, v209, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  if (v160(v150 + v158, 1, v159) == 1)
  {
    outlined destroy of Any?(v151, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v161, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
LABEL_73:
    v69 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSg_ADtMd;
    v70 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSg_ADtMR;
    v71 = v150;
    goto LABEL_7;
  }

  v162 = v150 + v158;
  v163 = v205;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v162, v205, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  v164 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v161, v163, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v163, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  outlined destroy of Any?(v151, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v161, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  outlined destroy of Any?(v150, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  if ((v164 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_75:
  v165 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v166 = a1;
  v167 = a1 + v165;
  v168 = v211;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v167, v211, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v169 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v170 = *(v206 + 48);
  v171 = v216;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v168, v216, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v172 = v63;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63 + v169, v171 + v170, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v173 = *(v208 + 48);
  if (v173(v171, 1, v212) == 1)
  {
    outlined destroy of Any?(v211, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
    if (v173(v216 + v170, 1, v212) == 1)
    {
      outlined destroy of Any?(v216, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
      goto LABEL_83;
    }

LABEL_80:
    outlined destroy of Any?(v216, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSg_ADtMR);
    goto LABEL_8;
  }

  v174 = v216;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v216, v207, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  if (v173(v174 + v170, 1, v212) == 1)
  {
    outlined destroy of Any?(v211, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v207, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    goto LABEL_80;
  }

  v175 = v216;
  v176 = v216 + v170;
  v177 = v201;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v176, v201, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  v178 = v207;
  v179 = specialized static CLP_LogEntry_PrivateData_XtraFileAvailable.== infix(_:_:)(v207, v177);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v177, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  outlined destroy of Any?(v211, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v178, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  outlined destroy of Any?(v175, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  if ((v179 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_83:
  v180 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  v181 = *(v166 + v180);
  v182 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  v183 = *(v172 + v182);
  if (v181 == 3)
  {
    if (v183 == 3)
    {
      goto LABEL_88;
    }

LABEL_8:

    return 0;
  }

  if (v183 == 3 || v181 != v183)
  {
    goto LABEL_8;
  }

LABEL_88:
  v184 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v185 = v202;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v166 + v184, v202, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v186 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v187 = *(v198 + 48);
  v188 = v185;
  v189 = v204;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v188, v204, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v172 + v186, v189 + v187, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v190 = *(v200 + 48);
  if (v190(v189, 1, v203) != 1)
  {
    v191 = v204;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v204, v199, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
    if (v190(v191 + v187, 1, v203) == 1)
    {

      outlined destroy of Any?(v202, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v199, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
      goto LABEL_93;
    }

    v192 = v204;
    v193 = v204 + v187;
    v194 = v197;
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v193, v197, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    v195 = v199;
    v196 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v199, v194, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v194, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    outlined destroy of Any?(v202, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v195, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    outlined destroy of Any?(v192, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
    return (v196 & 1) != 0;
  }

  outlined destroy of Any?(v202, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  if (v190(v204 + v187, 1, v203) != 1)
  {
LABEL_93:
    outlined destroy of Any?(v204, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSg_ADtMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSg_ADtMR);
    return 0;
  }

  outlined destroy of Any?(v204, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Location(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location and conformance CLP_LogEntry_PrivateData_Location, type metadata accessor for CLP_LogEntry_PrivateData_Location, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Location);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Location(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location and conformance CLP_LogEntry_PrivateData_Location, type metadata accessor for CLP_LogEntry_PrivateData_Location, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Location);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Location(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location and conformance CLP_LogEntry_PrivateData_Location, type metadata accessor for CLP_LogEntry_PrivateData_Location, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Location);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_BatchedLocations.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocation);
LABEL_5:
    v3 = v6;
    dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BatchedLocations.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0), lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocation), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0), lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static CLP_LogEntry_PrivateData_BatchedLocations.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationV_Tt1g5Tm(*a1, *a2, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, closure #1 in static CLP_LogEntry_PrivateData_DaemonLocation.== infix(_:_:)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationV_Tt1g5Tm(a1[1], a2[1], type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, closure #1 in static CLP_LogEntry_PrivateData_DaemonLocationPrivate.== infix(_:_:)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_BatchedLocations@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BatchedLocations(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocations and conformance CLP_LogEntry_PrivateData_BatchedLocations, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BatchedLocations);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BatchedLocations(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocations and conformance CLP_LogEntry_PrivateData_BatchedLocations, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BatchedLocations);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BatchedLocations(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocations and conformance CLP_LogEntry_PrivateData_BatchedLocations, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BatchedLocations);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CLP_LogEntry_PrivateData_BatchedLocations(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationV_Tt1g5Tm(*a1, *a2, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, closure #1 in static CLP_LogEntry_PrivateData_DaemonLocation.== infix(_:_:)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationV_Tt1g5Tm(a1[1], a2[1], type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, closure #1 in static CLP_LogEntry_PrivateData_DaemonLocationPrivate.== infix(_:_:)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        break;
      }

      switch(result)
      {
        case 3:
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode();
LABEL_17:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 4:
          type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          goto LABEL_14;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result != 1)
    {
      if (result != 2)
      {
        goto LABEL_5;
      }

LABEL_14:
      type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      goto LABEL_5;
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation();
    goto LABEL_17;
  }

  return result;
}

int *CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v10 = result;
  if (*(v5 + result[5]) == 3)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 5)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 3;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 5;
  v7 = a2 + v6;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate and conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate and conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate and conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_RhythmicStreamingControl.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_RhythmicStreamingControl.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
  if (*(v3 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 20)) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicStreamingControl and conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl, &protocol conformance descriptor for CLP_LogEntry_PrivateData_RhythmicStreamingControl);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicStreamingControl and conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl, &protocol conformance descriptor for CLP_LogEntry_PrivateData_RhythmicStreamingControl);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicStreamingControl and conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl, &protocol conformance descriptor for CLP_LogEntry_PrivateData_RhythmicStreamingControl);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v8);

    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 12:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
          goto LABEL_16;
        case 2:
        case 4:
        case 13:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType();
          goto LABEL_16;
        case 3:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType();
          goto LABEL_16;
        case 5:
        case 8:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_17;
        case 6:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_17;
        case 7:
        case 10:
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 9:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType();
          goto LABEL_16;
        case 14:
        case 15:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_17;
        case 16:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType();
LABEL_16:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_17:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  result = swift_beginAccess();
  if (v9[16] == 72)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (v9[17] != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (v9[18] != 3)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (v9[19] != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (v9[20] != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[28] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #7 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #9 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #10 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #11 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #12 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #13 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #14 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #15 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #16 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 40) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 41) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 42) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 56) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 72) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 73) != 72)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 74) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #15 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #16 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  result = swift_beginAccess();
  if (*(a1 + v5) != 6)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_MotionActivity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  MEMORY[0x28223BE20](v4);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v8 = MEMORY[0x28223BE20](v7);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v72 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v72 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - v22;
  swift_beginAccess();
  v24 = *(a1 + 16);
  swift_beginAccess();
  v25 = *(a2 + 16);
  if (v24 == 72)
  {
    if (v25 != 72)
    {
      return 0;
    }
  }

  else if (v25 == 72 || qword_23D1C6DD8[v24] != qword_23D1C6DD8[v25])
  {
    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 17);
  swift_beginAccess();
  v27 = *(a2 + 17);
  if (v26 == 4)
  {
    if (v27 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v27 == 4 || v26 != v27)
    {
      return result;
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 18);
  swift_beginAccess();
  v30 = *(a2 + 18);
  if (v29 == 3)
  {
    if (v30 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v30 == 3 || v29 != v30)
    {
      return result;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 19);
  swift_beginAccess();
  v32 = *(a2 + 19);
  if (v31 == 4)
  {
    if (v32 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v32 == 4 || v31 != v32)
    {
      return result;
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 20);
  swift_beginAccess();
  v34 = *(a2 + 20);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 24);
  v36 = *(a1 + 28);
  v74 = (a2 + 24);
  swift_beginAccess();
  v37 = *(a2 + 28);
  if (v36)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v35 != *v74)
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  swift_beginAccess();
  v40 = *(a2 + 40);
  if (v39)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v38 != *(a2 + 32))
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 41);
  swift_beginAccess();
  v42 = *(a2 + 41);
  if (v41 == 2)
  {
    if (v42 != 2)
    {
      return 0;
    }
  }

  else if (v42 == 2 || ((v41 ^ v42) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 42);
  swift_beginAccess();
  v44 = *(a2 + 42);
  if (v43 == 4)
  {
    if (v44 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v44 == 4 || v43 != v44)
    {
      return result;
    }
  }

  swift_beginAccess();
  v45 = *(a1 + 48);
  v46 = *(a1 + 56);
  swift_beginAccess();
  v47 = *(a2 + 56);
  if (v46)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v45 != *(a2 + 48))
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v48 = *(a1 + 64);
  v49 = *(a1 + 72);
  swift_beginAccess();
  v50 = *(a2 + 72);
  if (v49)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v48 != *(a2 + 64))
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v51 = *(a1 + 73);
  swift_beginAccess();
  v52 = *(a2 + 73);
  if (v51 == 72)
  {
    if (v52 != 72)
    {
      return 0;
    }
  }

  else if (v52 == 72 || qword_23D1C6DD8[v51] != qword_23D1C6DD8[v52])
  {
    return 0;
  }

  swift_beginAccess();
  v53 = *(a1 + 74);
  swift_beginAccess();
  v54 = *(a2 + 74);
  if (v53 == 4)
  {
    if (v54 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v54 == 4 || v53 != v54)
    {
      return result;
    }
  }

  v55 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v55, v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v74 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v56 = *(v7 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23, v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v73 = v56;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v74 + a2, &v11[v56], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v57 = *(v78 + 48);
  v78 += 48;
  v74 = v57;
  if ((v57)(v11, 1, v77) == 1)
  {

    outlined destroy of Any?(v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if ((v74)(&v11[v73], 1, v77) == 1)
    {
      outlined destroy of Any?(v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_77;
    }

LABEL_75:
    v58 = v11;
LABEL_83:
    outlined destroy of Any?(v58, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_84;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v11, v21, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v74)(&v11[v73], 1, v77) == 1)
  {

    outlined destroy of Any?(v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_75;
  }

  v59 = v75;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v11[v73], v75, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  LODWORD(v73) = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v21, v59, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v59, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v73 & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_77:
  v60 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v60, v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v61 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v62 = *(v7 + 48);
  v63 = v76;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v76, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v61, v63 + v62, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v74)(v63, 1, v77) != 1)
  {
    v64 = v76;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76, v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if ((v74)(v64 + v62, 1, v77) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      goto LABEL_82;
    }

    v65 = v75;
    v66 = v76;
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v76 + v62, v75, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v67 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v15, v65, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v65, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of Any?(v66, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v67)
    {
      goto LABEL_88;
    }

LABEL_84:

    return 0;
  }

  outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v74)(v76 + v62, 1, v77) != 1)
  {
LABEL_82:
    v58 = v76;
    goto LABEL_83;
  }

  outlined destroy of Any?(v76, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_88:
  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  v69 = *(a1 + v68);

  v70 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  v71 = *(a2 + v70);

  if (v69 == 6)
  {
    return v71 == 6;
  }

  result = 0;
  if (v71 != 6 && v69 == v71)
  {
    return 1;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionActivity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionActivity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionActivity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionActivity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionActivity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionActivity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
        v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity;
    v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionActivity;
    v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity;
    goto LABEL_12;
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_MotionState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionActivity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionState and conformance CLP_LogEntry_PrivateData_MotionState, type metadata accessor for CLP_LogEntry_PrivateData_MotionState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionState and conformance CLP_LogEntry_PrivateData_MotionState, type metadata accessor for CLP_LogEntry_PrivateData_MotionState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionState and conformance CLP_LogEntry_PrivateData_MotionState, type metadata accessor for CLP_LogEntry_PrivateData_MotionState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
LABEL_13:
          type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_13;
        }

        if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 72)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + *(v10 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #3 in CLP_LogEntry_PrivateData_WorkoutUpdate.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (*(v5 + *(v10 + 32)) != 72)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_WorkoutUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WorkoutUpdate@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 72;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  *(a2 + a1[8]) = 72;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WorkoutUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutUpdate and conformance CLP_LogEntry_PrivateData_WorkoutUpdate, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WorkoutUpdate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutUpdate and conformance CLP_LogEntry_PrivateData_WorkoutUpdate, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WorkoutUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutUpdate and conformance CLP_LogEntry_PrivateData_WorkoutUpdate, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutUpdate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionStateObserver.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
        v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
    type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate;
    v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutUpdate;
    v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutUpdate and conformance CLP_LogEntry_PrivateData_WorkoutUpdate;
    goto LABEL_12;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v10, a1, a2, a3, a4);
  if (!v7)
  {
    if ((*(v10 + *(a5(0) + 24) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    a6(v10, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_MotionStateObserver.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutUpdate and conformance CLP_LogEntry_PrivateData_WorkoutUpdate, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_MotionState@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = a1[5];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = a1[6];
  v9 = a1[7];
  v10 = a3 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a3 + v9, 1, 1, v11);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionStateObserver(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateObserver and conformance CLP_LogEntry_PrivateData_MotionStateObserver, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionStateObserver);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionStateObserver(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateObserver and conformance CLP_LogEntry_PrivateData_MotionStateObserver, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionStateObserver);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionStateObserver(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateObserver and conformance CLP_LogEntry_PrivateData_MotionStateObserver, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionStateObserver);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WorkoutSettings.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType();
LABEL_5:
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType();
            goto LABEL_5;
          case 5:
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode();
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_WorkoutSettings.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v5 + v10[6] + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 67)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 5)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_WorkoutSettings.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_WorkoutSettings.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  if (*(a1 + *(result + 36)) != 3)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WorkoutSettings@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  *(a2 + a1[7]) = 67;
  *(a2 + v8) = 5;
  *(a2 + a1[9]) = 3;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WorkoutSettings(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings and conformance CLP_LogEntry_PrivateData_WorkoutSettings, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutSettings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WorkoutSettings(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings and conformance CLP_LogEntry_PrivateData_WorkoutSettings, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutSettings);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WorkoutSettings(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings and conformance CLP_LogEntry_PrivateData_WorkoutSettings, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutSettings);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WorkoutEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        break;
      }

      if (result == 1 || result == 2)
      {
        goto LABEL_14;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    switch(result)
    {
      case 3:
        type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_5;
      case 4:
LABEL_14:
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
        v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
        break;
      case 5:
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
        type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings;
        v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutSettings;
        v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings and conformance CLP_LogEntry_PrivateData_WorkoutSettings;
        break;
      default:
        goto LABEL_5;
    }

    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v7, v8);
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_5;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  if (!v4)
  {
    closure #2 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(v5, a1, a2, a3);
    if (*(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 28)) != 19)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #4 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, 4);
    closure #5 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 36), v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings and conformance CLP_LogEntry_PrivateData_WorkoutSettings, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutSettings);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WorkoutEvent@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[6], 1, 1, v5);
  v7 = a1[8];
  *(a2 + a1[7]) = 19;
  v6(a2 + v7, 1, 1, v5);
  v8 = a1[9];
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WorkoutEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent and conformance CLP_LogEntry_PrivateData_WorkoutEvent, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WorkoutEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent and conformance CLP_LogEntry_PrivateData_WorkoutEvent, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WorkoutEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent and conformance CLP_LogEntry_PrivateData_WorkoutEvent, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutEvent);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v8, v1 + v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v15 = (a1 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v16 = *v15;
  LOBYTE(v9) = *(v15 + 4);
  swift_beginAccess();
  *v11 = v16;
  *(v11 + 4) = v9;
  v17 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v5, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);

  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v12, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity._StorageClass.__deallocating_deinit(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  outlined destroy of Any?(v4 + *a1, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v4 + *a2, a3, a4);
  v8 = *(*v4 + 48);
  v9 = *(*v4 + 52);

  return MEMORY[0x2821FE8D8](v4, v8, v9);
}

uint64_t CLP_LogEntry_PrivateData_MotionStateMediator.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_7;
      }

      if (result == 1)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
        goto LABEL_15;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent;
    v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutEvent;
    v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent and conformance CLP_LogEntry_PrivateData_WorkoutEvent;
LABEL_15:
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MotionStateMediator.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_MotionStateMediator.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent and conformance CLP_LogEntry_PrivateData_WorkoutEvent, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WorkoutEvent);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_MotionStateMediator.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v52 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSg_ADtMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSg_ADtMR);
  MEMORY[0x28223BE20](v50);
  v53 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v48 - v8;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v57 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v21 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v22 = a1 + v21;
  v23 = v58;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v22, v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v24 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v25 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20, v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23 + v24, &v15[v25], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v26 = *(v10 + 48);
  if (v26(v15, 1, v9) == 1)
  {

    outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v27 = v26(&v15[v25], 1, v9);
    v28 = a1;
    if (v27 == 1)
    {
      outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  v29 = a1;
  v30 = v57;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v15, v57, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v26(&v15[v25], 1, v9) == 1)
  {

    outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v30, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v32 = v54;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v15[v25], v54, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v33 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v30, v32, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v32, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v30, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v28 = v29;
  outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v34 = v28 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 4);
  v37 = v23 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  if ((v36 & 1) == 0)
  {
    v38 = v56;
    v39 = v55;
    if ((*(v37 + 4) & 1) == 0 && v35 == *v37)
    {
      goto LABEL_16;
    }

LABEL_7:

    return 0;
  }

  v38 = v56;
  v39 = v55;
  if ((*(v37 + 4) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v40 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28 + v40, v39, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  v41 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  v42 = *(v50 + 48);
  v43 = v53;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v53, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23 + v41, v43 + v42, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  v44 = *(v51 + 48);
  v45 = v52;
  if (v44(v43, 1, v52) == 1)
  {

    outlined destroy of Any?(v39, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
    if (v44(v43 + v42, 1, v45) == 1)
    {
      outlined destroy of Any?(v43, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
      return 1;
    }

    goto LABEL_21;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43, v38, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  if (v44(v43 + v42, 1, v45) == 1)
  {

    outlined destroy of Any?(v39, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v38, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
LABEL_21:
    outlined destroy of Any?(v43, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSg_ADtMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSg_ADtMR);
    return 0;
  }

  v46 = v49;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v43 + v42, v49, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  v47 = specialized static CLP_LogEntry_PrivateData_WorkoutEvent.== infix(_:_:)(v38, v46);

  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v46, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  outlined destroy of Any?(v39, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v38, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  outlined destroy of Any?(v43, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  return (v47 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionStateMediator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateMediator and conformance CLP_LogEntry_PrivateData_MotionStateMediator, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionStateMediator);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionStateMediator(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateMediator and conformance CLP_LogEntry_PrivateData_MotionStateMediator, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionStateMediator);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionStateMediator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateMediator and conformance CLP_LogEntry_PrivateData_MotionStateMediator, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionStateMediator);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MediatedMotionActivity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
          type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionActivity);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 1:
          type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MediatedMotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v10 = result;
  if (*(v5 + *(result + 20) + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in CLP_LogEntry_PrivateData_MediatedMotionActivity.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (*(v5 + *(v10 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_MediatedMotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionActivity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_MediatedMotionActivity@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MediatedMotionActivity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MediatedMotionActivity and conformance CLP_LogEntry_PrivateData_MediatedMotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MediatedMotionActivity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MediatedMotionActivity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MediatedMotionActivity and conformance CLP_LogEntry_PrivateData_MediatedMotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MediatedMotionActivity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MediatedMotionActivity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MediatedMotionActivity and conformance CLP_LogEntry_PrivateData_MediatedMotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MediatedMotionActivity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType();
LABEL_20:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else
      {
        if (result <= 9)
        {
          goto LABEL_4;
        }

        if (result == 10)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType();
          goto LABEL_20;
        }

        if (result == 11)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v10 = result;
  if (*(v5 + result[5]) == 3)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  closure #6 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  closure #7 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  closure #8 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  closure #9 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #10 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #11 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  if ((*(a1 + *(result + 52) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  if (*(a1 + *(result + 56)) != 8)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  if ((*(a1 + *(result + 60) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_BodyMetrics@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 3;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1[14];
  v17 = a2 + a1[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  *(a2 + v16) = 8;
  v18 = a2 + a1[15];
  *v18 = 0;
  *(v18 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BodyMetrics(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics and conformance CLP_LogEntry_PrivateData_BodyMetrics, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BodyMetrics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BodyMetrics(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics and conformance CLP_LogEntry_PrivateData_BodyMetrics, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BodyMetrics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BodyMetrics(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics and conformance CLP_LogEntry_PrivateData_BodyMetrics, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BodyMetrics);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Natalimetry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
        v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
    type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics;
    v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_BodyMetrics;
    v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics and conformance CLP_LogEntry_PrivateData_BodyMetrics;
    goto LABEL_12;
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_Natalimetry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics and conformance CLP_LogEntry_PrivateData_BodyMetrics, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BodyMetrics);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Natalimetry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Natalimetry and conformance CLP_LogEntry_PrivateData_Natalimetry, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Natalimetry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Natalimetry(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Natalimetry and conformance CLP_LogEntry_PrivateData_Natalimetry, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Natalimetry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Natalimetry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Natalimetry and conformance CLP_LogEntry_PrivateData_Natalimetry, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Natalimetry);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Timer(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Timer and conformance CLP_LogEntry_PrivateData_Timer, type metadata accessor for CLP_LogEntry_PrivateData_Timer, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Timer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Timer(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Timer and conformance CLP_LogEntry_PrivateData_Timer, type metadata accessor for CLP_LogEntry_PrivateData_Timer, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Timer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Timer(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Timer and conformance CLP_LogEntry_PrivateData_Timer, type metadata accessor for CLP_LogEntry_PrivateData_Timer, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Timer);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 3)
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2 || result == 3)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result > 6)
      {
        if (result == 7)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
    if ((*(v5 + v10[6] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
    closure #6 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
    closure #7 in CLP_LogEntry_PrivateData_DigitalElevationModel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel, 7);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_DigitalElevationModel@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DigitalElevationModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DigitalElevationModel and conformance CLP_LogEntry_PrivateData_DigitalElevationModel, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DigitalElevationModel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DigitalElevationModel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DigitalElevationModel and conformance CLP_LogEntry_PrivateData_DigitalElevationModel, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DigitalElevationModel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DigitalElevationModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DigitalElevationModel and conformance CLP_LogEntry_PrivateData_DigitalElevationModel, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DigitalElevationModel);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
          type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 11:
        case 12:
        case 13:
        case 14:
          type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
    if ((*(v5 + v10[6] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[8] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    closure #6 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    closure #7 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    closure #8 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    closure #9 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #10 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #11 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #12 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #13 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #14 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #9 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if ((*(a1 + *(result + 52) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if ((*(a1 + *(result + 56) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 64)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 68)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 72)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_DirectionOfTravel@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1[13];
  v17 = a2 + a1[12];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a2 + v16;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a1[15];
  v20 = a2 + a1[14];
  *v20 = 0;
  *(v20 + 8) = 1;
  *(a2 + v19) = 2;
  v21 = a1[17];
  *(a2 + a1[16]) = 2;
  *(a2 + v21) = 2;
  *(a2 + a1[18]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DirectionOfTravel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DirectionOfTravel and conformance CLP_LogEntry_PrivateData_DirectionOfTravel, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DirectionOfTravel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DirectionOfTravel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DirectionOfTravel and conformance CLP_LogEntry_PrivateData_DirectionOfTravel, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DirectionOfTravel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DirectionOfTravel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DirectionOfTravel and conformance CLP_LogEntry_PrivateData_DirectionOfTravel, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DirectionOfTravel);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v8, v1 + v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v15 = (a1 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v16 = *v15;
  LOBYTE(v9) = *(v15 + 4);
  swift_beginAccess();
  *v11 = v16;
  *(v11 + 4) = v9;
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);

  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v12, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_MapVector.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_7;
      }

      if (result == 1)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
        goto LABEL_15;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel;
    v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_DirectionOfTravel;
    v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DirectionOfTravel and conformance CLP_LogEntry_PrivateData_DirectionOfTravel;
LABEL_15:
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionStateMediator.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = *(v7 + *(a4(0) + 20));
  result = a5(v15, a1, a2, a3);
  if (!v8)
  {
    v17 = v15 + *a6;
    swift_beginAccess();
    if ((*(v17 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    a7(v15, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MapVector.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_MapVector.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DirectionOfTravel and conformance CLP_LogEntry_PrivateData_DirectionOfTravel, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_MapVector.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v52 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSg_ADtMR);
  MEMORY[0x28223BE20](v50);
  v53 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v48 - v8;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v57 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v21 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v22 = a1 + v21;
  v23 = v58;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v22, v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v24 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v25 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20, v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23 + v24, &v15[v25], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v26 = *(v10 + 48);
  if (v26(v15, 1, v9) == 1)
  {

    outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v27 = v26(&v15[v25], 1, v9);
    v28 = a1;
    if (v27 == 1)
    {
      outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  v29 = a1;
  v30 = v57;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v15, v57, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v26(&v15[v25], 1, v9) == 1)
  {

    outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v30, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v32 = v54;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v15[v25], v54, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v33 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v30, v32, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v32, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v30, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v28 = v29;
  outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v34 = v28 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 4);
  v37 = v23 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  if ((v36 & 1) == 0)
  {
    v38 = v56;
    v39 = v55;
    if ((*(v37 + 4) & 1) == 0 && v35 == *v37)
    {
      goto LABEL_16;
    }

LABEL_7:

    return 0;
  }

  v38 = v56;
  v39 = v55;
  if ((*(v37 + 4) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v40 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28 + v40, v39, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  v41 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  v42 = *(v50 + 48);
  v43 = v53;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v53, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23 + v41, v43 + v42, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  v44 = *(v51 + 48);
  v45 = v52;
  if (v44(v43, 1, v52) == 1)
  {

    outlined destroy of Any?(v39, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
    if (v44(v43 + v42, 1, v45) == 1)
    {
      outlined destroy of Any?(v43, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
      return 1;
    }

    goto LABEL_21;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43, v38, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  if (v44(v43 + v42, 1, v45) == 1)
  {

    outlined destroy of Any?(v39, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v38, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
LABEL_21:
    outlined destroy of Any?(v43, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSg_ADtMR);
    return 0;
  }

  v46 = v49;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v43 + v42, v49, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  v47 = specialized static CLP_LogEntry_PrivateData_DirectionOfTravel.== infix(_:_:)(v38, v46);

  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v46, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  outlined destroy of Any?(v39, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v38, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  outlined destroy of Any?(v43, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  return (v47 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MapVector(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapVector and conformance CLP_LogEntry_PrivateData_MapVector, type metadata accessor for CLP_LogEntry_PrivateData_MapVector, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapVector);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MapVector(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapVector and conformance CLP_LogEntry_PrivateData_MapVector, type metadata accessor for CLP_LogEntry_PrivateData_MapVector, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapVector);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MapVector(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapVector and conformance CLP_LogEntry_PrivateData_MapVector, type metadata accessor for CLP_LogEntry_PrivateData_MapVector, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapVector);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result < 8 || result == 8)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
            type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            goto LABEL_5;
          }

          if (result != 2)
          {
            goto LABEL_5;
          }
        }

        type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
    if ((*(v5 + v10[6] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[8] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    closure #6 in CLP_LogEntry_PrivateData_TunnelBridgeAssistance.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a2 + v10) = 2;
  v12 = a1[11];
  *(a2 + a1[10]) = 2;
  *(a2 + v12) = 2;
  *(a2 + a1[12]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeAssistance and conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeAssistance and conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeAssistance and conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeNotification.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
        v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance;
    v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance;
    v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeAssistance and conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance;
    goto LABEL_12;
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_TunnelBridgeNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeAssistance and conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeNotification and conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelBridgeNotification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeNotification and conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelBridgeNotification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeNotification and conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelBridgeNotification);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_TunnelEndPointAssistance.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.init(copying:)(v8);

    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          swift_endAccess();
          break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 8:
        case 9:
        case 10:
        case 12:
        case 13:
        case 14:
        case 15:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_11;
        case 7:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_11;
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_11:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TunnelEndPointAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_TunnelEndPointAssistance.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v11 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
    swift_beginAccess();
    if ((*(v11 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
    swift_beginAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v13 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
    swift_beginAccess();
    if ((*(v13 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
    swift_beginAccess();
    if ((*(v14 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType, 7, &type metadata for CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg, 8);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg, 9);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM, 10);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved, 11);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg, 12);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg, 13);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM, 14);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM, 15);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_TunnelEndPointAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 3)
  {
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_TunnelEndPointAssistance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v89 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v85 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v87 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v85 - v12;
  v14 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  v15 = a1 + v14;
  v16 = v88;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v15, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v17 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  v18 = *(v6 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v19 = v16 + v17;
  v20 = v89;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v19, &v8[v18], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v20) == 1)
  {

    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v22 = a1;
    if (v21(&v8[v18], 1, v20) == 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  v22 = a1;
  v23 = v87;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v8, v87, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v21(&v8[v18], 1, v20) == 1)
  {

    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v25 = v86;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v8[v18], v86, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  LODWORD(v89) = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v23, v25, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v25, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v89 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v26 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  swift_beginAccess();
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  swift_beginAccess();
  if (v28)
  {
    if ((*(v29 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v29 + 8) & 1) != 0 || v27 != *v29)
  {
    goto LABEL_7;
  }

  v30 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  swift_beginAccess();
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  swift_beginAccess();
  if (v32)
  {
    if ((*(v33 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v33 + 8) & 1) != 0 || v31 != *v33)
  {
    goto LABEL_7;
  }

  v34 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  swift_beginAccess();
  if (v36)
  {
    if ((*(v37 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v37 + 8) & 1) != 0 || v35 != *v37)
  {
    goto LABEL_7;
  }

  v38 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  swift_beginAccess();
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  swift_beginAccess();
  if (v40)
  {
    if ((*(v41 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v41 + 8) & 1) != 0 || v39 != *v41)
  {
    goto LABEL_7;
  }

  v42 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  swift_beginAccess();
  if (v44)
  {
    if ((*(v45 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v45 + 8) & 1) != 0 || v43 != *v45)
  {
    goto LABEL_7;
  }

  v46 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v47 = *(v22 + v46);
  v48 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v49 = *(v16 + v48);
  if (v47 == 3)
  {
    if (v49 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v49 == 3 || v47 != v49)
  {
    goto LABEL_7;
  }

  v50 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  swift_beginAccess();
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  swift_beginAccess();
  if (v52)
  {
    if ((*(v53 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v53 + 8) & 1) != 0 || v51 != *v53)
  {
    goto LABEL_7;
  }

  v54 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  swift_beginAccess();
  v55 = *v54;
  v56 = *(v54 + 8);
  v57 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  swift_beginAccess();
  if (v56)
  {
    if ((*(v57 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v57 + 8) & 1) != 0 || v55 != *v57)
  {
    goto LABEL_7;
  }

  v58 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  swift_beginAccess();
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  swift_beginAccess();
  if (v60)
  {
    if (*(v61 + 8))
    {
      goto LABEL_55;
    }

LABEL_7:

    return 0;
  }

  if ((*(v61 + 8) & 1) != 0 || v59 != *v61)
  {
    goto LABEL_7;
  }

LABEL_55:
  v62 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  v63 = *(v22 + v62);
  v64 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  v65 = *(v16 + v64);
  if (v63 == 2)
  {
    if (v65 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v65 == 2 || ((v63 ^ v65) & 1) != 0)
  {
    goto LABEL_7;
  }

  v66 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  swift_beginAccess();
  v67 = *v66;
  v68 = *(v66 + 8);
  v69 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  swift_beginAccess();
  if (v68)
  {
    if ((*(v69 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v69 + 8) & 1) != 0 || v67 != *v69)
  {
    goto LABEL_7;
  }

  v70 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  swift_beginAccess();
  v71 = *v70;
  v72 = *(v70 + 8);
  v73 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  swift_beginAccess();
  if (v72)
  {
    if ((*(v73 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v73 + 8) & 1) != 0 || v71 != *v73)
  {
    goto LABEL_7;
  }

  v74 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  swift_beginAccess();
  v75 = *v74;
  v76 = *(v74 + 8);
  v77 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  swift_beginAccess();
  if (v76)
  {
    if ((*(v77 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v77 + 8) & 1) != 0 || v75 != *v77)
  {
    goto LABEL_7;
  }

  v78 = v22 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  swift_beginAccess();
  v79 = *v78;
  v80 = *(v78 + 8);

  v81 = v16 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  swift_beginAccess();
  v82 = *v81;
  v83 = *(v81 + 8);

  if (v80)
  {
    if (!v83)
    {
      return 0;
    }
  }

  else
  {
    if (v79 == v82)
    {
      v84 = v83;
    }

    else
    {
      v84 = 1;
    }

    if (v84)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPointAssistance and conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPointAssistance and conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPointAssistance and conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TunnelEndPoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
        v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance;
    v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance;
    v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPointAssistance and conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance;
    goto LABEL_12;
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_TunnelEndPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPointAssistance and conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TunnelEndPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPoint and conformance CLP_LogEntry_PrivateData_TunnelEndPoint, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelEndPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TunnelEndPoint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPoint and conformance CLP_LogEntry_PrivateData_TunnelEndPoint, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelEndPoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TunnelEndPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPoint and conformance CLP_LogEntry_PrivateData_TunnelEndPoint, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TunnelEndPoint);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MapsRouteHintData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
LABEL_2:
      type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }
}

int *CLP_LogEntry_PrivateData_MapsRouteHintData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MapsRouteHintData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapsRouteHintData and conformance CLP_LogEntry_PrivateData_MapsRouteHintData, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapsRouteHintData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MapsRouteHintData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapsRouteHintData and conformance CLP_LogEntry_PrivateData_MapsRouteHintData, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapsRouteHintData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MapsRouteHintData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapsRouteHintData and conformance CLP_LogEntry_PrivateData_MapsRouteHintData, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapsRouteHintData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MapMatchingRouteHint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result == 3 || result == 4)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 5)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapsRouteHintData and conformance CLP_LogEntry_PrivateData_MapsRouteHintData, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MapMatchingRouteHint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_MapMatchingRouteHint.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in CLP_LogEntry_PrivateData_MapMatchingRouteHint.traverse<A>(visitor:)(v3, a1, a2, a3);
    v9 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
    if (*(v3 + *(v9 + 32)) != 7)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v3 + *(v9 + 36)) != 7)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapsRouteHintData and conformance CLP_LogEntry_PrivateData_MapsRouteHintData, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapsRouteHintData);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_MapMatchingRouteHint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_MapMatchingRouteHint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  result = (v6)(&a2[a1[7]], 1, 1, v5);
  v8 = a1[9];
  a2[a1[8]] = 7;
  a2[v8] = 7;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapMatchingRouteHint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapMatchingRouteHint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapMatchingRouteHint);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result != 3)
          {
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType();
            goto LABEL_19;
          }

LABEL_25:
          type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 1 || result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result != 5)
          {
LABEL_24:
            dispatch thunk of Decoder.decodeRepeatedDoubleField(value:)();
            goto LABEL_5;
          }

          goto LABEL_25;
        }

        switch(result)
        {
          case 7:
            goto LABEL_24;
          case 8:
            type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 9:
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType();
LABEL_19:
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #4 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, 2);
    v9 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
    if ((*(v3 + *(v9 + 36) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + *(v9 + 40)) != 5)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #7 in CLP_LogEntry_PrivateData_DigitalElevationModel.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, 5);
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
    }

    closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);
    closure #7 in CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_DigitalElevationModel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a2[v5], 1, 1, v6);
  result = (v7)(&a2[a1[8]], 1, 1, v6);
  v9 = a1[10];
  v10 = &a2[a1[9]];
  *v10 = 0;
  v10[4] = 1;
  a2[v9] = 5;
  v11 = a1[12];
  v12 = &a2[a1[11]];
  *v12 = 0;
  v12[4] = 1;
  a2[v11] = 2;
  a2[a1[13]] = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ReachabilityState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_ReachabilityState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v6 = result;
  if (*(v3 + result[5]) == 5)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + v6[6]) != 5)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v3 + v6[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v3 + v6[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ReachabilityState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 5;
  *(a2 + v5) = 5;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReachabilityState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityState and conformance CLP_LogEntry_PrivateData_ReachabilityState, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReachabilityState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReachabilityState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityState and conformance CLP_LogEntry_PrivateData_ReachabilityState, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReachabilityState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReachabilityState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityState and conformance CLP_LogEntry_PrivateData_ReachabilityState, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReachabilityState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Battery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            goto LABEL_4;
          case 6:
            type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 2 || result == 3)
      {
LABEL_4:
        type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_Battery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 5)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  closure #6 in CLP_LogEntry_PrivateData_Battery.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_Battery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_Battery@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + v5) = 2;
  v7 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v7) = 5;
  v8 = a1[10];
  *(a2 + a1[9]) = 2;
  v9 = a2 + v8;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Battery(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Battery and conformance CLP_LogEntry_PrivateData_Battery, type metadata accessor for CLP_LogEntry_PrivateData_Battery, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Battery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Battery(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Battery and conformance CLP_LogEntry_PrivateData_Battery, type metadata accessor for CLP_LogEntry_PrivateData_Battery, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Battery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Battery(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Battery and conformance CLP_LogEntry_PrivateData_Battery, type metadata accessor for CLP_LogEntry_PrivateData_Battery, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Battery);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_DeviceStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v8);

    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
          goto LABEL_11;
        case 2:
        case 11:
        case 12:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_14;
        case 3:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_14;
        case 4:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReachabilityState;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityState and conformance CLP_LogEntry_PrivateData_ReachabilityState;
          goto LABEL_11;
        case 5:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_Battery;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_Battery;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Battery and conformance CLP_LogEntry_PrivateData_Battery;
LABEL_11:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v14, v12, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_14;
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_14:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
    swift_beginAccess();
    if (*(v8 + v11) != 20)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #4 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #5 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(v8, a1, a2, a3);
    v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
    swift_beginAccess();
    if (*(v8 + v12) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn, 7);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen, 8);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled, 9);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected, 10);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients, 11, MEMORY[0x277D21848]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel, 12, MEMORY[0x277D21848]);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode, 13);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityState and conformance CLP_LogEntry_PrivateData_ReachabilityState, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReachabilityState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Battery and conformance CLP_LogEntry_PrivateData_Battery, type metadata accessor for CLP_LogEntry_PrivateData_Battery, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Battery);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_DeviceStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v123 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x28223BE20](v3);
  v106 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSg_ADtMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSg_ADtMR);
  MEMORY[0x28223BE20](v109);
  v112 = &v105 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v107 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = &v105 - v9;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v115 = *(v10 - 8);
  v116 = v10;
  MEMORY[0x28223BE20](v10);
  v108 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSg_ADtMR);
  MEMORY[0x28223BE20](v114);
  v117 = &v105 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v113 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v120 = &v105 - v16;
  v122 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v17 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v105 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v121 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v105 - v26;
  v28 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v28, v27, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v29 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v30 = v123;
  swift_beginAccess();
  v31 = *(v20 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27, v22, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v32 = v30 + v29;
  v33 = v122;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v32, &v22[v31], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v34 = *(v17 + 48);
  if (v34(v22, 1, v33) == 1)
  {

    outlined destroy of Any?(v27, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v34(&v22[v31], 1, v33) == 1)
    {
      outlined destroy of Any?(v22, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v36 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v37 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v38 = v22;
LABEL_7:
    outlined destroy of Any?(v38, v36, v37);
    goto LABEL_8;
  }

  v35 = v121;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v22, v121, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v34(&v22[v31], 1, v33) == 1)
  {

    outlined destroy of Any?(v27, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v35, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v40 = v118;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v22[v31], v118, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v41 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v35, v40, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v40, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v27, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v35, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v22, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v41 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v42 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v42 + 4);
  v45 = v30 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  if (v44)
  {
    v47 = v119;
    v46 = v120;
    if ((*(v45 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v47 = v119;
    v46 = v120;
    if ((*(v45 + 4) & 1) != 0 || v43 != *v45)
    {
      goto LABEL_8;
    }
  }

  v48 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  v49 = *(a1 + v48);
  v50 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  v51 = *(v30 + v50);
  if (v49 == 20)
  {
    if (v51 != 20)
    {
      goto LABEL_8;
    }
  }

  else if (v51 == 20 || v49 != v51)
  {
    goto LABEL_8;
  }

  v52 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v52, v46, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v53 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  v54 = *(v114 + 48);
  v55 = v117;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v117, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v56 = v55;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v30 + v53, v55 + v54, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v57 = v116;
  v58 = *(v115 + 48);
  if (v58(v55, 1, v116) == 1)
  {
    outlined destroy of Any?(v46, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
    if (v58(v55 + v54, 1, v57) == 1)
    {
      outlined destroy of Any?(v55, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
      goto LABEL_28;
    }

LABEL_26:
    v36 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSg_ADtMd;
    v37 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSg_ADtMR;
LABEL_34:
    v38 = v56;
    goto LABEL_7;
  }

  v59 = v113;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, v113, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  if (v58(v55 + v54, 1, v57) == 1)
  {
    outlined destroy of Any?(v120, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v59, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
    goto LABEL_26;
  }

  v60 = v55 + v54;
  v61 = v108;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v60, v108, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  v62 = specialized static CLP_LogEntry_PrivateData_ReachabilityState.== infix(_:_:)(v59, v61);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v61, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  outlined destroy of Any?(v120, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v59, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  outlined destroy of Any?(v55, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  if ((v62 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_28:
  v63 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v63, v47, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v64 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  v65 = *(v109 + 48);
  v66 = v112;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47, v112, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v56 = v66;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v30 + v64, v66 + v65, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v67 = v111;
  v68 = *(v110 + 48);
  if (v68(v66, 1, v111) == 1)
  {
    outlined destroy of Any?(v47, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
    if (v68(v66 + v65, 1, v67) == 1)
    {
      outlined destroy of Any?(v66, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v69 = v107;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v66, v107, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  if (v68(v66 + v65, 1, v67) == 1)
  {
    outlined destroy of Any?(v47, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v69, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
LABEL_33:
    v36 = &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSg_ADtMd;
    v37 = &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSg_ADtMR;
    goto LABEL_34;
  }

  v70 = v66 + v65;
  v71 = v106;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v70, v106, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  v72 = specialized static CLP_LogEntry_PrivateData_Battery.== infix(_:_:)(v69, v71);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v71, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  outlined destroy of Any?(v47, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v69, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  outlined destroy of Any?(v66, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  if ((v72 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_36:
  v73 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  v74 = *(a1 + v73);
  v75 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  v76 = *(v30 + v75);
  if (v74 == 2)
  {
    if (v76 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v76 == 2 || ((v74 ^ v76) & 1) != 0)
  {
    goto LABEL_8;
  }

  v77 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  v78 = *(a1 + v77);
  v79 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  v80 = *(v30 + v79);
  if (v78 == 2)
  {
    if (v80 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v80 == 2 || ((v78 ^ v80) & 1) != 0)
  {
    goto LABEL_8;
  }

  v81 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  v82 = *(a1 + v81);
  v83 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  v84 = *(v30 + v83);
  if (v82 == 2)
  {
    if (v84 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v84 == 2 || ((v82 ^ v84) & 1) != 0)
  {
    goto LABEL_8;
  }

  v85 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  v88 = *(v30 + v87);
  if (v86 == 2)
  {
    if (v88 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v88 == 2 || ((v86 ^ v88) & 1) != 0)
  {
    goto LABEL_8;
  }

  v89 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  v90 = *(a1 + v89);
  v91 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  v92 = *(v30 + v91);
  if (v90 == 2)
  {
    if (v92 == 2)
    {
      goto LABEL_61;
    }

LABEL_8:

    return 0;
  }

  if (v92 == 2 || ((v90 ^ v92) & 1) != 0)
  {
    goto LABEL_8;
  }

LABEL_61:
  v93 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients);
  swift_beginAccess();
  v94 = *v93;
  v95 = *(v93 + 4);
  v96 = v30 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  swift_beginAccess();
  if (v95)
  {
    if ((*(v96 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v96 + 4) & 1) != 0 || v94 != *v96)
  {
    goto LABEL_8;
  }

  v97 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel);
  swift_beginAccess();
  v98 = *v97;
  v99 = *(v97 + 4);
  v100 = v30 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  swift_beginAccess();
  if (v99)
  {
    if ((*(v100 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v100 + 4) & 1) != 0 || v98 != *v100)
  {
    goto LABEL_8;
  }

  v101 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  v102 = *(a1 + v101);

  v103 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  v104 = *(v30 + v103);

  if (v102 == 2)
  {
    if (v104 != 2)
    {
      return 0;
    }
  }

  else if (v104 == 2 || ((v102 ^ v104) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DeviceStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus and conformance CLP_LogEntry_PrivateData_DeviceStatus, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DeviceStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DeviceStatus(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus and conformance CLP_LogEntry_PrivateData_DeviceStatus, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DeviceStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DeviceStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus and conformance CLP_LogEntry_PrivateData_DeviceStatus, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DeviceStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironment.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_14;
        }

        if (result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironment.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment);
  if (!v4)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
    if (*(v3 + v6[6]) != 8)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v3 + v6[7]) != 8)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if ((*(v3 + v6[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SignalEnvironment@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 8;
  *(a2 + v7) = 8;
  v8 = a2 + a1[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SignalEnvironment(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment and conformance CLP_LogEntry_PrivateData_SignalEnvironment, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SignalEnvironment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SignalEnvironment(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment and conformance CLP_LogEntry_PrivateData_SignalEnvironment, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SignalEnvironment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SignalEnvironment(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment and conformance CLP_LogEntry_PrivateData_SignalEnvironment, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SignalEnvironment);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironmentInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel();
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
LABEL_5:
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironmentInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 8)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24)) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentInfo and conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentInfo and conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentInfo and conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_AccelSample.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          a4(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else if (result == 1)
      {
        a4(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MagSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MagSample and conformance CLP_LogEntry_PrivateData_MagSample, type metadata accessor for CLP_LogEntry_PrivateData_MagSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MagSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MagSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MagSample and conformance CLP_LogEntry_PrivateData_MagSample, type metadata accessor for CLP_LogEntry_PrivateData_MagSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MagSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MagSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MagSample and conformance CLP_LogEntry_PrivateData_MagSample, type metadata accessor for CLP_LogEntry_PrivateData_MagSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MagSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Magnetometer.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MagSample and conformance CLP_LogEntry_PrivateData_MagSample, type metadata accessor for CLP_LogEntry_PrivateData_MagSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MagSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Magnetometer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_Magnetometer.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MagSample and conformance CLP_LogEntry_PrivateData_MagSample, type metadata accessor for CLP_LogEntry_PrivateData_MagSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MagSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_Magnetometer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Magnetometer(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Magnetometer and conformance CLP_LogEntry_PrivateData_Magnetometer, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Magnetometer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Magnetometer(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Magnetometer and conformance CLP_LogEntry_PrivateData_Magnetometer, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Magnetometer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Magnetometer(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Magnetometer and conformance CLP_LogEntry_PrivateData_Magnetometer, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Magnetometer);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Timer.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v7 & 1) == 0)
    {
      if (result == 1)
      {
        a4(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Timer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_Timer@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Reset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Reset and conformance CLP_LogEntry_PrivateData_Reset, type metadata accessor for CLP_LogEntry_PrivateData_Reset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Reset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Reset(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Reset and conformance CLP_LogEntry_PrivateData_Reset, type metadata accessor for CLP_LogEntry_PrivateData_Reset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Reset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Reset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Reset and conformance CLP_LogEntry_PrivateData_Reset, type metadata accessor for CLP_LogEntry_PrivateData_Reset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Reset);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_AccelerometerPace(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelerometerPace and conformance CLP_LogEntry_PrivateData_AccelerometerPace, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccelerometerPace);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_AccelerometerPace(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelerometerPace and conformance CLP_LogEntry_PrivateData_AccelerometerPace, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccelerometerPace);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_AccelerometerPace(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelerometerPace and conformance CLP_LogEntry_PrivateData_AccelerometerPace, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccelerometerPace);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_FalseStepDetectorState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result < 8 || result == 8)
        {
LABEL_12:
          type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_12;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_FalseStepDetectorState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  v10 = result;
  if (*(v5 + result[5]) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  closure #6 in CLP_LogEntry_PrivateData_TunnelBridgeAssistance.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_TunnelBridgeAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_FalseStepDetectorState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  v7 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v7) = 2;
  v8 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v8) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_FalseStepDetectorState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FalseStepDetectorState and conformance CLP_LogEntry_PrivateData_FalseStepDetectorState, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FalseStepDetectorState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_FalseStepDetectorState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FalseStepDetectorState and conformance CLP_LogEntry_PrivateData_FalseStepDetectorState, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FalseStepDetectorState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_FalseStepDetectorState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FalseStepDetectorState and conformance CLP_LogEntry_PrivateData_FalseStepDetectorState, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FalseStepDetectorState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_StepCountEntry._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v111 = &v89 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v89 - v8;
  v10 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v1 + v10, 1, 1, v11);
  v90 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v11);
  v91 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime, 1, 1, v11);
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  v92 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  v93 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  v94 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  v95 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  v96 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  v97 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = (v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  v98 = (v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  *v22 = 0;
  v22[1] = 0;
  v99 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance) = 2;
  v23 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace) = 2;
  v24 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  v100 = v23;
  v101 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  v25 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  v102 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  *v26 = 0;
  *(v26 + 4) = 1;
  v27 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  v103 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  *v27 = 0;
  *(v27 + 4) = 1;
  v28 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  v104 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  *v28 = 0;
  *(v28 + 4) = 1;
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  v105 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  *v29 = 0;
  *(v29 + 4) = 1;
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  v106 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  *v30 = 0;
  *(v30 + 4) = 1;
  v31 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  v107 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  *v31 = 0;
  *(v31 + 4) = 1;
  v32 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource) = 10;
  v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  v109 = v32;
  v110 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v35, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v36, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v37 = v90;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v37, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v38, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v39 = v91;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v39, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v40 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  swift_beginAccess();
  LODWORD(v39) = *v40;
  LOBYTE(v40) = *(v40 + 4);
  swift_beginAccess();
  *v13 = v39;
  *(v13 + 4) = v40;
  v41 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  swift_beginAccess();
  *v14 = v42;
  *(v14 + 8) = v41;
  v43 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  swift_beginAccess();
  *v15 = v44;
  *(v15 + 8) = v43;
  v45 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  swift_beginAccess();
  LODWORD(v44) = *v45;
  LOBYTE(v45) = *(v45 + 4);
  v46 = v92;
  swift_beginAccess();
  *v46 = v44;
  *(v46 + 4) = v45;
  v47 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  swift_beginAccess();
  LODWORD(v44) = *v47;
  LOBYTE(v47) = *(v47 + 4);
  v48 = v93;
  swift_beginAccess();
  *v48 = v44;
  *(v48 + 4) = v47;
  v49 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm);
  swift_beginAccess();
  v50 = *v49;
  LOBYTE(v49) = *(v49 + 8);
  v51 = v94;
  swift_beginAccess();
  *v51 = v50;
  *(v51 + 8) = v49;
  v52 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence);
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);
  v54 = v95;
  swift_beginAccess();
  *v54 = v53;
  *(v54 + 8) = v52;
  v55 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime);
  swift_beginAccess();
  v56 = *v55;
  LOBYTE(v55) = *(v55 + 8);
  v57 = v96;
  swift_beginAccess();
  *v57 = v56;
  *(v57 + 8) = v55;
  v58 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  swift_beginAccess();
  LODWORD(v56) = *v58;
  LOBYTE(v58) = *(v58 + 4);
  v59 = v97;
  swift_beginAccess();
  *v59 = v56;
  *(v59 + 4) = v58;
  v60 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  swift_beginAccess();
  v62 = *v60;
  v61 = v60[1];
  v63 = v98;
  swift_beginAccess();
  *v63 = v62;
  v63[1] = v61;

  v64 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  LOBYTE(v64) = *(a1 + v64);
  v65 = v99;
  swift_beginAccess();
  *(v1 + v65) = v64;
  v66 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  LOBYTE(v66) = *(a1 + v66);
  v67 = v100;
  swift_beginAccess();
  *(v1 + v67) = v66;
  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v69 = v108;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v68, v108, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  v70 = v101;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v69, v1 + v70, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  swift_endAccess();
  v71 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  swift_beginAccess();
  LODWORD(v67) = *v71;
  LOBYTE(v71) = *(v71 + 4);
  v72 = v102;
  swift_beginAccess();
  *v72 = v67;
  *(v72 + 4) = v71;
  v73 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  swift_beginAccess();
  LODWORD(v67) = *v73;
  LOBYTE(v73) = *(v73 + 4);
  v74 = v103;
  swift_beginAccess();
  *v74 = v67;
  *(v74 + 4) = v73;
  v75 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  swift_beginAccess();
  LODWORD(v67) = *v75;
  LOBYTE(v75) = *(v75 + 4);
  v76 = v104;
  swift_beginAccess();
  *v76 = v67;
  *(v76 + 4) = v75;
  v77 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  swift_beginAccess();
  LODWORD(v67) = *v77;
  LOBYTE(v77) = *(v77 + 4);
  v78 = v105;
  swift_beginAccess();
  *v78 = v67;
  *(v78 + 4) = v77;
  v79 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  swift_beginAccess();
  LODWORD(v67) = *v79;
  LOBYTE(v79) = *(v79 + 4);
  v80 = v106;
  swift_beginAccess();
  *v80 = v67;
  *(v80 + 4) = v79;
  v81 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  swift_beginAccess();
  LODWORD(v67) = *v81;
  LOBYTE(v81) = *(v81 + 4);
  v82 = v107;
  swift_beginAccess();
  *v82 = v67;
  *(v82 + 4) = v81;
  v83 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  LOBYTE(v83) = *(a1 + v83);
  v84 = v109;
  swift_beginAccess();
  *(v1 + v84) = v83;
  v85 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v86 = v111;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v85, v111, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);

  v87 = v110;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v86, v1 + v87, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_StepCountEntry._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_StepCountEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_StepCountEntry._StorageClass.init(copying:)(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
        case 3:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
          goto LABEL_16;
        case 4:
        case 7:
        case 8:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_17;
        case 5:
        case 6:
        case 9:
        case 10:
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 12:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_17;
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_17;
        case 14:
        case 15:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_17;
        case 16:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccelerometerPace;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelerometerPace and conformance CLP_LogEntry_PrivateData_AccelerometerPace;
          goto LABEL_16;
        case 23:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 24:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_FalseStepDetectorState;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FalseStepDetectorState and conformance CLP_LogEntry_PrivateData_FalseStepDetectorState;
LABEL_16:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v14, v12, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_17:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v11 = v8 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
    swift_beginAccess();
    if ((*(v11 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM, 6);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended, 7, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended, 8, MEMORY[0x277D21860]);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm, 9);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence, 10);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime, 11);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID, 12, MEMORY[0x277D21848]);
    closure #13 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance, 14);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace, 15);
    closure #16 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount, 17, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType, 18, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState, 19, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm, 20, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm, 21, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed, 22, MEMORY[0x277D21860]);
    closure #23 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #24 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID;
  result = swift_beginAccess();
  if (*(v4 + 8))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #16 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelerometerPace and conformance CLP_LogEntry_PrivateData_AccelerometerPace, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccelerometerPace);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

uint64_t closure #23 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  result = swift_beginAccess();
  if (*(a1 + v5) != 10)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #24 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FalseStepDetectorState and conformance CLP_LogEntry_PrivateData_FalseStepDetectorState, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_StepCountEntry.== infix(_:_:)(_BYTE *a1, uint64_t a2)
{
  v209 = a2;
  v191 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  v189 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v190 = &v184[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSg_ADtMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSg_ADtMR);
  MEMORY[0x28223BE20](v186);
  v192 = &v184[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v188 = &v184[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v187 = &v184[-v8];
  v198 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  v196 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v193 = &v184[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSg_ADtMR);
  MEMORY[0x28223BE20](v195);
  v199 = &v184[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v194 = &v184[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v197 = &v184[-v14];
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v16 = *(v15 - 8);
  v210 = v15;
  v211 = v16;
  MEMORY[0x28223BE20](v15);
  v205 = &v184[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v19 = MEMORY[0x28223BE20](v18);
  v201 = &v184[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v204 = &v184[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v184[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v200 = &v184[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v203 = &v184[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v202 = &v184[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v208 = &v184[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v206 = &v184[-v35];
  MEMORY[0x28223BE20](v34);
  v37 = &v184[-v36];
  v38 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v39 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&a1[v38], v37, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v40 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v41 = v209;
  swift_beginAccess();
  v207 = v18;
  v42 = *(v18 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37, v24, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v43 = v210;
  v44 = v211;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v40, &v24[v42], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v47 = *(v44 + 48);
  v46 = v44 + 48;
  v45 = v47;
  if (v47(v24, 1, v43) == 1)
  {

    outlined destroy of Any?(v37, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v45(&v24[v42], 1, v43) == 1)
    {
      outlined destroy of Any?(v24, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v50 = v24;
LABEL_14:
    outlined destroy of Any?(v50, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_15;
  }

  v48 = v39;
  v49 = v206;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24, v206, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v211 = v46;
  if (v45(&v24[v42], 1, v43) == 1)
  {

    outlined destroy of Any?(v37, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v49, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v51 = v205;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v24[v42], v205, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v185 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v49, v51, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v51, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v37, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v52 = v49;
  v39 = v48;
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v52, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v24, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v46 = v211;
  if ((v185 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

LABEL_8:
  v53 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v206 = v39;
  v54 = &v39[v53];
  v55 = v208;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v208, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v56 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v57 = *(v207 + 48);
  v58 = v204;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, v204, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v56, &v58[v57], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v59 = v210;
  if (v45(v58, 1, v210) == 1)
  {
    outlined destroy of Any?(v55, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v60 = v45(&v58[v57], 1, v59);
    v61 = v206;
    if (v60 == 1)
    {
      v211 = v46;
      outlined destroy of Any?(v58, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v62 = v202;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58, v202, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v45(&v58[v57], 1, v59) == 1)
  {
    outlined destroy of Any?(v208, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_13:
    v50 = v58;
    goto LABEL_14;
  }

  v211 = v46;
  v64 = &v58[v57];
  v65 = v58;
  v66 = v205;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v64, v205, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v67 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v62, v66, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v66, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v208, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v65, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v61 = v206;
  if ((v67 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  swift_beginAccess();
  v69 = v203;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v61[v68], v203, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v70 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  v71 = v209;
  swift_beginAccess();
  v72 = *(v207 + 48);
  v73 = v201;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v69, v201, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v71 + v70, &v73[v72], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v74 = v210;
  if (v45(v73, 1, v210) == 1)
  {
    outlined destroy of Any?(v69, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v45(&v73[v72], 1, v74) == 1)
    {
      outlined destroy of Any?(v73, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v75 = v209;
      goto LABEL_26;
    }

LABEL_23:
    outlined destroy of Any?(v73, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_15;
  }

  v76 = v200;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v73, v200, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v45(&v73[v72], 1, v74) == 1)
  {
    outlined destroy of Any?(v203, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v76, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_23;
  }

  v77 = v205;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v73[v72], v205, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v78 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v76, v77, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v77, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v203, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v76, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v73, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v75 = v209;
  if ((v78 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_26:
  v79 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count];
  swift_beginAccess();
  v80 = *v79;
  v81 = v79[4];
  v82 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  swift_beginAccess();
  if (v81)
  {
    if ((*(v82 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v82 + 4) & 1) != 0 || v80 != *v82)
  {
    goto LABEL_15;
  }

  v83 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM];
  swift_beginAccess();
  v84 = *v83;
  v85 = *(v83 + 8);
  v86 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
  swift_beginAccess();
  if (v85)
  {
    if ((*(v86 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v86 + 8) & 1) != 0 || v84 != *v86)
  {
    goto LABEL_15;
  }

  v87 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM];
  swift_beginAccess();
  v88 = *v87;
  v89 = *(v87 + 8);
  v90 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM;
  swift_beginAccess();
  if (v89)
  {
    if ((*(v90 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v90 + 8) & 1) != 0 || v88 != *v90)
  {
    goto LABEL_15;
  }

  v91 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended];
  swift_beginAccess();
  v92 = *v91;
  v93 = v91[4];
  v94 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  swift_beginAccess();
  if (v93)
  {
    if ((*(v94 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v94 + 4) & 1) != 0 || v92 != *v94)
  {
    goto LABEL_15;
  }

  v95 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended];
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[4];
  v98 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  swift_beginAccess();
  if (v97)
  {
    if ((*(v98 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v98 + 4) & 1) != 0 || v96 != *v98)
  {
    goto LABEL_15;
  }

  v99 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm];
  swift_beginAccess();
  v100 = *v99;
  v101 = *(v99 + 8);
  v102 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  swift_beginAccess();
  if (v101)
  {
    if ((*(v102 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v102 + 8) & 1) != 0 || v100 != *v102)
  {
    goto LABEL_15;
  }

  v103 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence];
  swift_beginAccess();
  v104 = *v103;
  v105 = *(v103 + 8);
  v106 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  swift_beginAccess();
  if (v105)
  {
    if ((*(v106 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v106 + 8) & 1) != 0 || v104 != *v106)
  {
    goto LABEL_15;
  }

  v107 = v61;
  v108 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime];
  swift_beginAccess();
  v109 = *v108;
  v110 = *(v108 + 8);
  v111 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  swift_beginAccess();
  if (v110)
  {
    if ((*(v111 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v111 + 8) & 1) != 0 || v109 != *v111)
  {
    goto LABEL_15;
  }

  v112 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID];
  swift_beginAccess();
  v113 = *v112;
  v114 = v112[4];
  v115 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  swift_beginAccess();
  if (v114)
  {
    if ((*(v115 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v115 + 4) & 1) != 0 || v113 != *v115)
  {
    goto LABEL_15;
  }

  v116 = &v61[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID];
  swift_beginAccess();
  v117 = *v116;
  v118 = v116[1];
  v119 = (v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  swift_beginAccess();
  v120 = v119[1];
  if (v118)
  {
    if (!v120 || (v117 != *v119 || v118 != v120) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v120)
  {
    goto LABEL_15;
  }

  v121 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  v122 = v61[v121];
  v123 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  v124 = *(v75 + v123);
  if (v122 == 2)
  {
    if (v124 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v124 == 2 || ((v122 ^ v124) & 1) != 0)
  {
    goto LABEL_15;
  }

  v125 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  v126 = v61[v125];
  v127 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  v128 = *(v75 + v127);
  if (v126 == 2)
  {
    if (v128 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v128 == 2 || ((v126 ^ v128) & 1) != 0)
  {
    goto LABEL_15;
  }

  v129 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v130 = &v61[v129];
  v131 = v197;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v130, v197, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  v132 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v133 = *(v195 + 48);
  v134 = v131;
  v135 = v199;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v134, v199, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v75 + v132, &v135[v133], &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  v136 = *(v196 + 48);
  if (v136(v135, 1, v198) == 1)
  {
    outlined destroy of Any?(v197, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
    if (v136(&v199[v133], 1, v198) == 1)
    {
      outlined destroy of Any?(v199, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  v137 = v199;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v199, v194, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  if (v136(&v137[v133], 1, v198) == 1)
  {
    outlined destroy of Any?(v197, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v194, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
LABEL_94:
    outlined destroy of Any?(v199, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSg_ADtMR);
    goto LABEL_15;
  }

  v138 = v199;
  v139 = &v199[v133];
  v140 = v193;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v139, v193, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  v141 = v194;
  v142 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v194, v140, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v140, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  outlined destroy of Any?(v197, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v141, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  outlined destroy of Any?(v138, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  if ((v142 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_96:
  v143 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount];
  swift_beginAccess();
  v144 = *v143;
  v145 = v143[4];
  v146 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  swift_beginAccess();
  if (v145)
  {
    if ((*(v146 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v146 + 4) & 1) != 0 || v144 != *v146)
  {
    goto LABEL_15;
  }

  v147 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType];
  swift_beginAccess();
  v148 = *v147;
  v149 = v147[4];
  v150 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  swift_beginAccess();
  if (v149)
  {
    if ((*(v150 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v150 + 4) & 1) != 0 || v148 != *v150)
  {
    goto LABEL_15;
  }

  v151 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState];
  swift_beginAccess();
  v152 = *v151;
  v153 = v151[4];
  v154 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  swift_beginAccess();
  if (v153)
  {
    if ((*(v154 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v154 + 4) & 1) != 0 || v152 != *v154)
  {
    goto LABEL_15;
  }

  v155 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm];
  swift_beginAccess();
  v156 = *v155;
  v157 = v155[4];
  v158 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  swift_beginAccess();
  if (v157)
  {
    if ((*(v158 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v158 + 4) & 1) != 0 || v156 != *v158)
  {
    goto LABEL_15;
  }

  v159 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm];
  swift_beginAccess();
  v160 = *v159;
  v161 = v159[4];
  v162 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  swift_beginAccess();
  if (v161)
  {
    if ((*(v162 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v162 + 4) & 1) != 0 || v160 != *v162)
  {
    goto LABEL_15;
  }

  v163 = &v107[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed];
  swift_beginAccess();
  v164 = *v163;
  v165 = v163[4];
  v166 = v75 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  swift_beginAccess();
  if (v165)
  {
    if ((*(v166 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v166 + 4) & 1) != 0 || v164 != *v166)
  {
    goto LABEL_15;
  }

  v167 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  v168 = v107[v167];
  v169 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  v170 = *(v75 + v169);
  if (v168 == 10)
  {
    if (v170 != 10)
    {
      goto LABEL_15;
    }
  }

  else if (v170 == 10 || v168 != v170)
  {
    goto LABEL_15;
  }

  v171 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v172 = v187;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v107[v171], v187, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  v173 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v174 = *(v186 + 48);
  v175 = v172;
  v176 = v192;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v175, v192, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v75 + v173, &v176[v174], &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  v177 = *(v189 + 48);
  if (v177(v176, 1, v191) == 1)
  {

    outlined destroy of Any?(v187, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
    if (v177(&v192[v174], 1, v191) == 1)
    {
      outlined destroy of Any?(v192, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
      return 1;
    }

LABEL_137:
    outlined destroy of Any?(v192, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSg_ADtMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSg_ADtMR);
    return 0;
  }

  v178 = v192;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v192, v188, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  if (v177(&v178[v174], 1, v191) == 1)
  {

    outlined destroy of Any?(v187, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v188, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
    goto LABEL_137;
  }

  v179 = v192;
  v180 = &v192[v174];
  v181 = v190;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v180, v190, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  v182 = v188;
  v183 = specialized static CLP_LogEntry_PrivateData_FalseStepDetectorState.== infix(_:_:)(v188, v181);

  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v181, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  outlined destroy of Any?(v187, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v182, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  outlined destroy of Any?(v179, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  return (v183 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_StepCountEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry and conformance CLP_LogEntry_PrivateData_StepCountEntry, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry, &protocol conformance descriptor for CLP_LogEntry_PrivateData_StepCountEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_StepCountEntry(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry and conformance CLP_LogEntry_PrivateData_StepCountEntry, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry, &protocol conformance descriptor for CLP_LogEntry_PrivateData_StepCountEntry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_StepCountEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry and conformance CLP_LogEntry_PrivateData_StepCountEntry, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry, &protocol conformance descriptor for CLP_LogEntry_PrivateData_StepCountEntry);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_PedometerPathStraightness.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
LABEL_13:
          type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_13;
        }

        if (result == 2)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_PedometerPathStraightness.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0);
    if ((*(v5 + *(v10 + 24) + 8) & 1) == 0)
    {
      v11 = v10;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      v10 = v11;
    }

    if ((*(v5 + *(v10 + 28) + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #4 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness, 4);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v15 + 32), v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of Any?(v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_PedometerPathStraightness@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v11 = *(*(v5 - 8) + 56);
  (v11)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + a1[8];

  return v11(v9, 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_PedometerPathStraightness(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PedometerPathStraightness and conformance CLP_LogEntry_PrivateData_PedometerPathStraightness, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PedometerPathStraightness);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_PedometerPathStraightness(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PedometerPathStraightness and conformance CLP_LogEntry_PrivateData_PedometerPathStraightness, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PedometerPathStraightness);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PedometerPathStraightness(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PedometerPathStraightness and conformance CLP_LogEntry_PrivateData_PedometerPathStraightness, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PedometerPathStraightness);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_StepCount.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
        v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
    type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry;
    v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_StepCountEntry;
    v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry and conformance CLP_LogEntry_PrivateData_StepCountEntry;
    goto LABEL_12;
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_StepCount.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry and conformance CLP_LogEntry_PrivateData_StepCountEntry, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry, &protocol conformance descriptor for CLP_LogEntry_PrivateData_StepCountEntry);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_StepCount(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCount and conformance CLP_LogEntry_PrivateData_StepCount, type metadata accessor for CLP_LogEntry_PrivateData_StepCount, &protocol conformance descriptor for CLP_LogEntry_PrivateData_StepCount);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_StepCount(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCount and conformance CLP_LogEntry_PrivateData_StepCount, type metadata accessor for CLP_LogEntry_PrivateData_StepCount, &protocol conformance descriptor for CLP_LogEntry_PrivateData_StepCount);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_StepCount(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCount and conformance CLP_LogEntry_PrivateData_StepCount, type metadata accessor for CLP_LogEntry_PrivateData_StepCount, &protocol conformance descriptor for CLP_LogEntry_PrivateData_StepCount);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeVector3.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeVector3.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v3 + *(v6 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionTypeVector3(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionTypeVector3(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionTypeVector3(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_VehicleSpeed.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          a4(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_VehicleSpeed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + result[5] + 8))
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if ((*(v4 + v7[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v4 + v7[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v4 + v7[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v41 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  v10(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField, 1, 1, v9);
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  *v13 = 0;
  *(v13 + 4) = 1;
  v43 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel) = 8;
  v14 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias) = 2;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  v42 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  v44 = v14;
  v45 = v16;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  v46 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v47 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v20, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v1 + v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v21, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v22 = v41;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v1 + v22, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  swift_endAccess();
  v23 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  swift_beginAccess();
  LODWORD(v21) = *v23;
  LOBYTE(v23) = *(v23 + 4);
  swift_beginAccess();
  *v11 = v21;
  *(v11 + 4) = v23;
  v24 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  swift_beginAccess();
  LODWORD(v11) = *v24;
  LOBYTE(v24) = *(v24 + 4);
  swift_beginAccess();
  *v12 = v11;
  *(v12 + 4) = v24;
  v25 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  swift_beginAccess();
  LODWORD(v11) = *v25;
  LOBYTE(v25) = *(v25 + 4);
  swift_beginAccess();
  *v13 = v11;
  *(v13 + 4) = v25;
  v26 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + v26);
  v27 = v43;
  swift_beginAccess();
  *(v1 + v27) = v26;
  v28 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + v28);
  v29 = v44;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  swift_beginAccess();
  LODWORD(v29) = *v30;
  LOBYTE(v30) = *(v30 + 4);
  v31 = v42;
  swift_beginAccess();
  *v31 = v29;
  *(v31 + 4) = v30;
  v32 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  swift_beginAccess();
  LODWORD(v29) = *v32;
  LOBYTE(v32) = *(v32 + 4);
  v33 = v45;
  swift_beginAccess();
  *v33 = v29;
  *(v33 + 4) = v32;
  v34 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  swift_beginAccess();
  LODWORD(v29) = *v34;
  LOBYTE(v34) = *(v34 + 4);
  v35 = v46;
  swift_beginAccess();
  *v35 = v29;
  *(v35 + 4) = v34;
  v36 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v37 = v48;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v36, v48, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);

  v38 = v47;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v37, v1 + v38, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeCompass.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass.init(copying:)(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result > 5)
      {
        break;
      }

      if (result > 2)
      {
        goto LABEL_24;
      }

      if (result == 1 || result == 2)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeVector3;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3;
        goto LABEL_20;
      }

LABEL_26:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 8)
    {
      if (result == 9 || result == 10)
      {
        goto LABEL_24;
      }

      if (result != 11)
      {
        goto LABEL_26;
      }

      v12 = v4;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
      v13 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
      v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
      v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
LABEL_20:
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v15, v13, v14);
      v4 = v12;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 6)
    {
      swift_beginAccess();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else
    {
      if (result != 7)
      {
LABEL_24:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_25;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }

LABEL_25:
    swift_endAccess();
    goto LABEL_26;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(v8, a1, a2, a3);
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v11 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
    swift_beginAccess();
    if ((*(v11 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
    swift_beginAccess();
    if ((*(v12 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v13 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
    swift_beginAccess();
    if (*(v8 + v13) != 8)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias, 7);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude, 8);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination, 9);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal, 10);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_MotionTypeCompass.== infix(_:_:)(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v106 = *(v4 - 8);
  v107 = v4;
  MEMORY[0x28223BE20](v4);
  v103 = &v101[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMR);
  MEMORY[0x28223BE20](v105);
  v109 = &v101[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v104 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v108 = &v101[-v10];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v12 = *(v11 - 8);
  v116 = v11;
  v117 = v12;
  MEMORY[0x28223BE20](v11);
  v111 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v113 = &v101[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v18 = &v101[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v110 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v115 = &v101[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v114 = &v101[-v25];
  MEMORY[0x28223BE20](v24);
  v27 = &v101[-v26];
  v28 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v28, v27, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v29 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v112 = v14;
  v30 = *(v14 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27, v18, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v31 = &a2[v29];
  v33 = v116;
  v32 = v117;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31, &v18[v30], &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v36 = *(v32 + 48);
  v35 = v32 + 48;
  v34 = v36;
  if (v36(v18, 1, v33) == 1)
  {

    outlined destroy of Any?(v27, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    v37 = v34(&v18[v30], 1, v33);
    v38 = a1;
    if (v37 == 1)
    {
      v117 = v35;
      outlined destroy of Any?(v18, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
      goto LABEL_9;
    }

LABEL_6:
    outlined destroy of Any?(v18, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);
    goto LABEL_15;
  }

  v39 = a1;
  v40 = v114;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v114, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if (v34(&v18[v30], 1, v33) == 1)
  {

    outlined destroy of Any?(v27, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_6;
  }

  v117 = v35;
  v41 = &v18[v30];
  v42 = v111;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v41, v111, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  v102 = specialized static CLP_LogEntry_PrivateData_MotionTypeVector3.== infix(_:_:)(v40, v42);
  v43 = v42;
  v38 = v39;
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v43, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v27, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v18, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((v102 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v114 = a2;
  v44 = v33;
  v45 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  v46 = v115;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v45, v115, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v47 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  v48 = v113;
  v49 = *(v112 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v113, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v50 = &v114[v47];
  v51 = v114;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50, &v48[v49], &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if (v34(v48, 1, v44) == 1)
  {
    outlined destroy of Any?(v46, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    if (v34(&v48[v49], 1, v44) == 1)
    {
      outlined destroy of Any?(v48, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
      goto LABEL_18;
    }

LABEL_14:
    outlined destroy of Any?(v48, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);
    goto LABEL_15;
  }

  v52 = v110;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48, v110, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if (v34(&v48[v49], 1, v44) == 1)
  {
    outlined destroy of Any?(v115, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v52, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_14;
  }

  v54 = v111;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v48[v49], v111, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v55 = specialized static CLP_LogEntry_PrivateData_MotionTypeVector3.== infix(_:_:)(v52, v54);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v54, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v115, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v52, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v48, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((v55 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v56 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  swift_beginAccess();
  v57 = *v56;
  v58 = *(v56 + 4);
  v59 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading];
  swift_beginAccess();
  if (v58)
  {
    if ((v59[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v59[1] & 1) != 0 || v57 != *v59)
  {
    goto LABEL_15;
  }

  v60 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  swift_beginAccess();
  v61 = *v60;
  v62 = *(v60 + 4);
  v63 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading];
  swift_beginAccess();
  if (v62)
  {
    if ((v63[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v63[1] & 1) != 0 || v61 != *v63)
  {
    goto LABEL_15;
  }

  v64 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  swift_beginAccess();
  v65 = *v64;
  v66 = *(v64 + 4);
  v67 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy];
  swift_beginAccess();
  if (v66)
  {
    if ((v67[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v67[1] & 1) != 0 || v65 != *v67)
  {
    goto LABEL_15;
  }

  v68 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  v69 = *(v38 + v68);
  v70 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  v71 = v51[v70];
  if (v69 == 8)
  {
    if (v71 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v71 == 8 || v69 != v71)
  {
    goto LABEL_15;
  }

  v72 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  v73 = *(v38 + v72);
  v74 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  v75 = v51[v74];
  if (v73 == 2)
  {
    if (v75 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v75 == 2 || ((v73 ^ v75) & 1) != 0)
  {
    goto LABEL_15;
  }

  v76 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  swift_beginAccess();
  v77 = *v76;
  v78 = *(v76 + 4);
  v79 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude];
  swift_beginAccess();
  if (v78)
  {
    if ((v79[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v79[1] & 1) != 0 || v77 != *v79)
  {
    goto LABEL_15;
  }

  v80 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  swift_beginAccess();
  v81 = *v80;
  v82 = *(v80 + 4);
  v83 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination];
  swift_beginAccess();
  if (v82)
  {
    if ((v83[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v83[1] & 1) != 0 || v81 != *v83)
  {
    goto LABEL_15;
  }

  v84 = v38 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  swift_beginAccess();
  v85 = *v84;
  v86 = *(v84 + 4);
  v87 = &v51[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal];
  swift_beginAccess();
  if (v86)
  {
    if (v87[1])
    {
      goto LABEL_58;
    }

LABEL_15:

    return 0;
  }

  if ((v87[1] & 1) != 0 || v85 != *v87)
  {
    goto LABEL_15;
  }

LABEL_58:
  v88 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v89 = v108;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v88, v108, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v90 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v91 = *(v105 + 48);
  v92 = v89;
  v93 = v109;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v92, v109, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v51[v90], &v93[v91], &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v94 = v107;
  v95 = *(v106 + 48);
  if (v95(v93, 1, v107) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v93, v104, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
    if (v95(&v93[v91], 1, v94) == 1)
    {

      outlined destroy of Any?(v108, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v104, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
      goto LABEL_63;
    }

    v96 = v109;
    v97 = &v109[v91];
    v98 = v103;
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v97, v103, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    v99 = v104;
    v100 = specialized static CLP_LogEntry_PrivateData_VehicleSpeed.== infix(_:_:)(v104, v98, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v98, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    outlined destroy of Any?(v108, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v99, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    outlined destroy of Any?(v96, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
    return (v100 & 1) != 0;
  }

  outlined destroy of Any?(v108, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  if (v95(&v93[v91], 1, v94) != 1)
  {
LABEL_63:
    outlined destroy of Any?(v109, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMR);
    return 0;
  }

  outlined destroy of Any?(v109, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionTypeCompass(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompass and conformance CLP_LogEntry_PrivateData_MotionTypeCompass, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeCompass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionTypeCompass(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompass and conformance CLP_LogEntry_PrivateData_MotionTypeCompass, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeCompass);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionTypeCompass(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompass and conformance CLP_LogEntry_PrivateData_MotionTypeCompass, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeCompass);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_CompassTypeSample.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
          type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeCompass;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompass and conformance CLP_LogEntry_PrivateData_MotionTypeCompass;
        }

        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 3 || result == 4)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }

      else if (result == 5)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_CompassTypeSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
  if (!v4)
  {
    closure #2 in CLP_LogEntry_PrivateData_CompassTypeSample.traverse<A>(visitor:)(v5, a1, a2, a3);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
    if ((*(v5 + *(v10 + 28) + 4) & 1) == 0)
    {
      v11 = v10;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
      v10 = v11;
    }

    if ((*(v5 + *(v10 + 32) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_CompassTypeSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompass and conformance CLP_LogEntry_PrivateData_MotionTypeCompass, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeCompass);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_CompassTypeSample@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a1[8];
  v10 = a2 + a1[7];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_CompassTypeSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_CompassTypeSample and conformance CLP_LogEntry_PrivateData_CompassTypeSample, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_CompassTypeSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_CompassTypeSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_CompassTypeSample and conformance CLP_LogEntry_PrivateData_CompassTypeSample, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_CompassTypeSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_CompassTypeSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_CompassTypeSample and conformance CLP_LogEntry_PrivateData_CompassTypeSample, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_CompassTypeSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Compass.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Compass(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_CompassTypeSample and conformance CLP_LogEntry_PrivateData_CompassTypeSample, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_CompassTypeSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Compass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_Compass.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_CompassTypeSample and conformance CLP_LogEntry_PrivateData_CompassTypeSample, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_CompassTypeSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CLP_LogEntry_PrivateData_Compass(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_Compass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Compass(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Compass(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Compass and conformance CLP_LogEntry_PrivateData_Compass, type metadata accessor for CLP_LogEntry_PrivateData_Compass, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Compass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Compass(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Compass and conformance CLP_LogEntry_PrivateData_Compass, type metadata accessor for CLP_LogEntry_PrivateData_Compass, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Compass);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Compass(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Compass and conformance CLP_LogEntry_PrivateData_Compass, type metadata accessor for CLP_LogEntry_PrivateData_Compass, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Compass);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass(0);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass.init(copying:)(v8);

    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result <= 4)
      {
        break;
      }

      if (result > 6)
      {
        if (result != 7 && result != 8)
        {
          if (result != 9)
          {
            goto LABEL_26;
          }

          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_25;
        }

LABEL_24:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_25;
      }

      if (result != 5)
      {
        goto LABEL_24;
      }

      swift_beginAccess();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_25:
      swift_endAccess();
LABEL_26:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
LABEL_21:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v15, v13, v14);
        v4 = v12;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_25;
      }

      if (result != 2)
      {
        goto LABEL_26;
      }
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3;
    v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeVector3;
    v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3;
    goto LABEL_21;
  }

  return result;
}