uint64_t CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #4 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel, 5, &type metadata for CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection, 6);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation, 7);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p, 8);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading, 9);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
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

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
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

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
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

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
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

uint64_t closure #20 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 8)
  {
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v129 = a2;
  v126 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v118 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);
  v4 = MEMORY[0x28223BE20](v125);
  v114 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v117 = &v113 - v7;
  MEMORY[0x28223BE20](v6);
  v122 = &v113 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v113 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v116 = &v113 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v115 = &v113 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v120 = &v113 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v119 = &v113 - v19;
  MEMORY[0x28223BE20](v18);
  v124 = &v113 - v20;
  v127 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v21 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v121 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMR);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v113 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v128 = (&v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v31 = &v113 - v30;
  v32 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v32, v31, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v33 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v34 = v129;
  swift_beginAccess();
  v35 = *(v24 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31, v26, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v36 = v34;
  v37 = v127;
  v38 = v36 + v33;
  v39 = v36;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, &v26[v35], &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v40 = *(v21 + 48);
  if (v40(v26, 1, v37) == 1)
  {

    outlined destroy of Any?(v31, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
    v41 = v39;
    if (v40(&v26[v35], 1, v37) == 1)
    {
      outlined destroy of Any?(v26, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v42 = &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMd;
    v43 = &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMR;
    v44 = v26;
LABEL_14:
    outlined destroy of Any?(v44, v42, v43);
    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v128, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  if (v40(&v26[v35], 1, v37) == 1)
  {

    outlined destroy of Any?(v31, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v128, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    goto LABEL_6;
  }

  v45 = v121;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v26[v35], v121, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  v41 = v39;

  v46 = v128;
  v47 = specialized static CLP_LogEntry_PrivateData_VehicleSpeed.== infix(_:_:)(v128, v45, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  outlined destroy of Any?(v31, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v46, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  outlined destroy of Any?(v26, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  if ((v47 & 1) == 0)
  {
LABEL_15:

LABEL_16:

    return 0;
  }

LABEL_8:
  v48 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  v49 = v124;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v48, v124, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v50 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  v51 = *(v125 + 48);
  v52 = v122;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v49, v122, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v50, v52 + v51, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v53 = *(v123 + 48);
  v54 = v126;
  if ((v53)(v52, 1, v126) == 1)
  {
    outlined destroy of Any?(v49, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    if ((v53)(v52 + v51, 1, v54) == 1)
    {
      v128 = v53;
      outlined destroy of Any?(v52, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v55 = v119;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52, v119, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((v53)(v52 + v51, 1, v54) == 1)
  {
    outlined destroy of Any?(v124, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v55, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
LABEL_13:
    v42 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd;
    v43 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR;
    v44 = v52;
    goto LABEL_14;
  }

  v128 = v53;
  v57 = v52 + v51;
  v58 = v118;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v57, v118, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v59 = specialized static CLP_LogEntry_PrivateData_MotionTypeVector3.== infix(_:_:)(v55, v58);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v58, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v124, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v55, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v52, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((v59 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v60 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  v61 = v120;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v60, v120, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v62 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  v63 = *(v125 + 48);
  v64 = v117;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v61, v117, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v62, v64 + v63, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v65 = v126;
  v66 = v128;
  if ((v128)(v64, 1, v126) == 1)
  {
    outlined destroy of Any?(v61, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    v67 = v66(v64 + v63, 1, v65);
    v68 = v129;
    if (v67 == 1)
    {
      v128 = v66;
      outlined destroy of Any?(v64, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v69 = v115;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64, v115, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if (v66(v64 + v63, 1, v65) == 1)
  {
    outlined destroy of Any?(v120, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v69, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
LABEL_24:
    outlined destroy of Any?(v64, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);
    goto LABEL_15;
  }

  v128 = v66;
  v70 = v64 + v63;
  v71 = v118;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v70, v118, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v72 = v64;
  v73 = specialized static CLP_LogEntry_PrivateData_MotionTypeVector3.== infix(_:_:)(v69, v71);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v71, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v120, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v69, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v72, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v68 = v129;
  if ((v73 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_27:
  v74 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v75 = v116;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v74, v116, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v76 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v77 = *(v125 + 48);
  v78 = v114;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v75, v114, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v79 = v68 + v76;
  v80 = v77;
  v81 = v78;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79, v78 + v77, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v82 = v126;
  v83 = v128;
  if ((v128)(v78, 1, v126) == 1)
  {
    outlined destroy of Any?(v75, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    if (v83(v78 + v80, 1, v82) == 1)
    {
      outlined destroy of Any?(v78, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
      v84 = v129;
      goto LABEL_34;
    }

LABEL_32:
    outlined destroy of Any?(v81, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);

    goto LABEL_16;
  }

  v85 = v78;
  v86 = v113;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v85, v113, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if (v83(v81 + v80, 1, v82) == 1)
  {
    outlined destroy of Any?(v116, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v86, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_32;
  }

  v87 = v118;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v81 + v80, v118, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v88 = v81;
  v89 = specialized static CLP_LogEntry_PrivateData_MotionTypeVector3.== infix(_:_:)(v86, v87);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v87, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v116, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v86, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v88, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v84 = v129;
  if ((v89 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_34:
  v90 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  swift_beginAccess();
  v91 = *(a1 + v90);
  v92 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  swift_beginAccess();
  v93 = *(v84 + v92);
  if (v91 == 8)
  {
    if (v93 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v93 == 8 || v91 != v93)
  {
    goto LABEL_15;
  }

  v94 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  swift_beginAccess();
  v95 = *(a1 + v94);
  v96 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  swift_beginAccess();
  v97 = *(v84 + v96);
  if (v95 == 2)
  {
    if (v97 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v97 == 2 || ((v95 ^ v97) & 1) != 0)
  {
    goto LABEL_15;
  }

  v98 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  swift_beginAccess();
  v99 = *(a1 + v98);
  v100 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  swift_beginAccess();
  v101 = *(v84 + v100);
  if (v99 == 2)
  {
    if (v101 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v101 == 2 || ((v99 ^ v101) & 1) != 0)
  {
    goto LABEL_15;
  }

  v102 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  swift_beginAccess();
  v103 = *(a1 + v102);
  v104 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  swift_beginAccess();
  v105 = *(v84 + v104);
  if (v103 == 2)
  {
    if (v105 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v105 == 2 || ((v103 ^ v105) & 1) != 0)
  {
    goto LABEL_15;
  }

  v106 = a1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  swift_beginAccess();
  v107 = *v106;
  v108 = *(v106 + 4);

  v109 = v84 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  swift_beginAccess();
  v110 = *v109;
  v111 = *(v109 + 4);

  if (v108)
  {
    if (!v111)
    {
      return 0;
    }
  }

  else
  {
    if (v107 == v110)
    {
      v112 = v111;
    }

    else
    {
      v112 = 1;
    }

    if (v112)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDeviceMotion and conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDeviceMotion and conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDeviceMotion and conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SensorFusionStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SensorFusionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  if (*(v3 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SensorFusionStatus@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SensorFusionStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionStatus and conformance CLP_LogEntry_PrivateData_SensorFusionStatus, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SensorFusionStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SensorFusionStatus(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionStatus and conformance CLP_LogEntry_PrivateData_SensorFusionStatus, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SensorFusionStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SensorFusionStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionStatus and conformance CLP_LogEntry_PrivateData_SensorFusionStatus, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SensorFusionStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DeviceMotionSample.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result > 6)
        {
          if (result == 7 || result == 8)
          {
            type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
            dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          }
        }

        else
        {
          if (result != 5)
          {
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
            type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
            v7 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus;
            v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SensorFusionStatus;
            v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionStatus and conformance CLP_LogEntry_PrivateData_SensorFusionStatus;
            goto LABEL_15;
          }

          type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
            type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_5;
            }

            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
            type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
            v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion;
            v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion;
            v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDeviceMotion and conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion;
LABEL_15:
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v7, v8);
            v3 = v6;
          }

          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 3)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
  if (!v4)
  {
    closure #2 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(v5, a1, a2, a3);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
    if (*(v5 + *(v10 + 28)) != 2)
    {
      v11 = v10;
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      v10 = v11;
    }

    if ((*(v5 + *(v10 + 32) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #6 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #7 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
    closure #8 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDeviceMotion and conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  if (*(a1 + *(result + 36)) != 5)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 40), v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionStatus and conformance CLP_LogEntry_PrivateData_SensorFusionStatus, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SensorFusionStatus);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 48) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_DeviceMotionSample@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  v9 = a2 + v8;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  *(a2 + a1[9]) = 5;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DeviceMotionSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotionSample and conformance CLP_LogEntry_PrivateData_DeviceMotionSample, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DeviceMotionSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DeviceMotionSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotionSample and conformance CLP_LogEntry_PrivateData_DeviceMotionSample, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DeviceMotionSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DeviceMotionSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotionSample and conformance CLP_LogEntry_PrivateData_DeviceMotionSample, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DeviceMotionSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DeviceMotion.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotionSample and conformance CLP_LogEntry_PrivateData_DeviceMotionSample, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DeviceMotionSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_DeviceMotion.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotionSample and conformance CLP_LogEntry_PrivateData_DeviceMotionSample, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DeviceMotionSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_DeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DeviceMotion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotion and conformance CLP_LogEntry_PrivateData_DeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DeviceMotion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DeviceMotion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotion and conformance CLP_LogEntry_PrivateData_DeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DeviceMotion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DeviceMotion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotion and conformance CLP_LogEntry_PrivateData_DeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DeviceMotion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result < 8)
        {
          goto LABEL_4;
        }

        if (result == 8)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result > 2 || result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
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

  closure #5 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  closure #6 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  closure #7 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  closure #8 in CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 48), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1[11];
  v14 = a1[12];
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v17 = *(*(v16 - 8) + 56);

  return v17(a2 + v14, 1, 1, v16);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData and conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData and conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData and conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23D1B8150;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t CLP_LogEntry_PrivateData_GeomagneticModelData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0);
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData and conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GeomagneticModelData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_GeomagneticModelData.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_GeomagneticModelData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData and conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GeomagneticModelData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GeomagneticModelData and conformance CLP_LogEntry_PrivateData_GeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GeomagneticModelData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GeomagneticModelData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GeomagneticModelData and conformance CLP_LogEntry_PrivateData_GeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GeomagneticModelData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GeomagneticModelData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GeomagneticModelData and conformance CLP_LogEntry_PrivateData_GeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GeomagneticModelData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

int *CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
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
    result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6] + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  closure #9 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #10 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  if (*(a1 + *(result + 52)) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  if ((*(a1 + *(result + 56) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WifiAccessPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiAccessPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WifiAccessPoint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiAccessPoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiAccessPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiAccessPoint);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiAssociationState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  if (*(v5 + *(result + 20)) == 2)
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

  closure #2 in CLP_LogEntry_PrivateData_WifiAssociationState.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_WifiAssociationState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WifiAssociationState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAssociationState and conformance CLP_LogEntry_PrivateData_WifiAssociationState, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiAssociationState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WifiAssociationState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAssociationState and conformance CLP_LogEntry_PrivateData_WifiAssociationState, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiAssociationState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiAssociationState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAssociationState and conformance CLP_LogEntry_PrivateData_WifiAssociationState, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiAssociationState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiScanResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_WifiScanResult.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_WifiScanResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WifiScanResult(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiScanResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WifiScanResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiScanResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiScanResult(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiScanResult);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
    swift_beginAccess();
    if (*(v8 + v11) != 15)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
    swift_beginAccess();
    if (*(v8 + v12) != 15)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v13 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
    swift_beginAccess();
    if (*(v8 + v13) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #6 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #7 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated, 8);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available, 9);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown, 10);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake, 11);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAssociationState and conformance CLP_LogEntry_PrivateData_WifiAssociationState, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiAssociationState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiScanResult);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
}

uint64_t closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v7) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_WifiNotification.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v123 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x28223BE20](v3);
  v106 = (&v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSg_ADtMR);
  MEMORY[0x28223BE20](v109);
  v112 = &v105 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v107 = (&v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v119 = &v105 - v9;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v114 = *(v10 - 8);
  v115 = v10;
  MEMORY[0x28223BE20](v10);
  v108 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSg_ADtMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSg_ADtMR);
  MEMORY[0x28223BE20](v113);
  v116 = &v105 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v118 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v120 = &v105 - v16;
  v122 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v17 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v117 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v105 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v121 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v105 - v26;
  v28 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v28, v27, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v29 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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

  v40 = v117;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v22[v31], v117, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

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
  v42 = (a1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v42 + 4);
  v45 = v123 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  if (v44)
  {
    v46 = v118;
    v47 = v119;
    v48 = v120;
    if ((*(v45 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v46 = v118;
    v47 = v119;
    v48 = v120;
    if ((*(v45 + 4) & 1) != 0 || v43 != *v45)
    {
      goto LABEL_8;
    }
  }

  v49 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  v50 = *(a1 + v49);
  v51 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  v52 = v123;
  swift_beginAccess();
  v53 = *(v52 + v51);
  if (v50 == 15)
  {
    if (v53 != 15)
    {
      goto LABEL_8;
    }
  }

  else if (v53 == 15 || v50 != v53)
  {
    goto LABEL_8;
  }

  v54 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  swift_beginAccess();
  v55 = *(a1 + v54);
  v56 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  v57 = v123;
  swift_beginAccess();
  v58 = *(v57 + v56);
  if (v55 == 15)
  {
    if (v58 != 15)
    {
      goto LABEL_8;
    }
  }

  else if (v58 == 15 || v55 != v58)
  {
    goto LABEL_8;
  }

  v59 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  swift_beginAccess();
  v60 = *(a1 + v59);
  v61 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  v62 = v123;
  swift_beginAccess();
  v63 = *(v62 + v61);
  if (v60 == 2)
  {
    if (v63 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v63 == 2 || ((v60 ^ v63) & 1) != 0)
  {
    goto LABEL_8;
  }

  v64 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v64, v48, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v65 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v66 = v123;
  swift_beginAccess();
  v67 = *(v113 + 48);
  v68 = v48;
  v69 = v116;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v68, v116, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v70 = v69;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v66 + v65, v69 + v67, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v71 = v115;
  v72 = *(v114 + 48);
  if (v72(v69, 1, v115) == 1)
  {
    outlined destroy of Any?(v120, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
    if (v72(v69 + v67, 1, v71) == 1)
    {
      outlined destroy of Any?(v69, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
      goto LABEL_38;
    }

LABEL_36:
    v36 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSg_ADtMd;
    v37 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSg_ADtMR;
LABEL_44:
    v38 = v70;
    goto LABEL_7;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v69, v46, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  if (v72(v69 + v67, 1, v71) == 1)
  {
    outlined destroy of Any?(v120, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v46, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
    goto LABEL_36;
  }

  v73 = v108;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v69 + v67, v108, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  v74 = specialized static CLP_LogEntry_PrivateData_WifiAssociationState.== infix(_:_:)(v46, v73);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v73, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  outlined destroy of Any?(v120, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v46, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  outlined destroy of Any?(v69, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  if ((v74 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_38:
  v75 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v75, v47, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v76 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v77 = v123;
  swift_beginAccess();
  v78 = *(v109 + 48);
  v79 = v112;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47, v112, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v70 = v79;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v77 + v76, v79 + v78, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v80 = v111;
  v81 = *(v110 + 48);
  if (v81(v79, 1, v111) == 1)
  {
    outlined destroy of Any?(v47, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
    if (v81(v79 + v78, 1, v80) == 1)
    {
      outlined destroy of Any?(v79, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v82 = v107;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v70, v107, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  if (v81(v70 + v78, 1, v80) == 1)
  {
    outlined destroy of Any?(v47, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v82, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
LABEL_43:
    v36 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSg_ADtMd;
    v37 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSg_ADtMR;
    goto LABEL_44;
  }

  v83 = v106;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v70 + v78, v106, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  v84 = specialized static CLP_LogEntry_PrivateData_WifiScanResult.== infix(_:_:)(v82, v83, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, specialized static CLP_LogEntry_PrivateData_WifiAccessPoint.== infix(_:_:));
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v83, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  outlined destroy of Any?(v47, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v82, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  outlined destroy of Any?(v70, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  if ((v84 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_46:
  v85 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  v88 = v123;
  swift_beginAccess();
  v89 = *(v88 + v87);
  if (v86 == 2)
  {
    if (v89 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v89 == 2 || ((v86 ^ v89) & 1) != 0)
  {
    goto LABEL_8;
  }

  v90 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  swift_beginAccess();
  v91 = *(a1 + v90);
  v92 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  v93 = v123;
  swift_beginAccess();
  v94 = *(v93 + v92);
  if (v91 == 2)
  {
    if (v94 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v94 == 2 || ((v91 ^ v94) & 1) != 0)
  {
    goto LABEL_8;
  }

  v95 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  swift_beginAccess();
  v96 = *(a1 + v95);
  v97 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  v98 = v123;
  swift_beginAccess();
  v99 = *(v98 + v97);
  if (v96 == 2)
  {
    if (v99 == 2)
    {
      goto LABEL_61;
    }

LABEL_8:

    return 0;
  }

  if (v99 == 2 || ((v96 ^ v99) & 1) != 0)
  {
    goto LABEL_8;
  }

LABEL_61:
  v100 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  swift_beginAccess();
  v101 = *(a1 + v100);

  v102 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  v103 = v123;
  swift_beginAccess();
  v104 = *(v103 + v102);

  if (v101 != 2)
  {
    return v104 != 2 && ((v101 ^ v104) & 1) == 0;
  }

  return v104 == 2;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WifiNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotification and conformance CLP_LogEntry_PrivateData_WifiNotification, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiNotification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WifiNotification(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotification and conformance CLP_LogEntry_PrivateData_WifiNotification, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiNotification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotification and conformance CLP_LogEntry_PrivateData_WifiNotification, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiNotification);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource();
LABEL_14:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability();
          goto LABEL_14;
        }

        type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);
  if (!v4)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
    if (*(v3 + v6[6]) != 4)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if ((*(v3 + v6[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (*(v3 + v6[8]) != 4)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 4;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a2 + a1[8]) = 4;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_4;
        }

        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
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

int *CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0), lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
    v9 = result;
    if (*(v3 + result[6] + 8))
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

    if ((*(v3 + v9[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (*(v3 + v9[8]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if ((*(v3 + v9[9] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #6 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    closure #7 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    closure #8 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  v8 = a1[9];
  *(a2 + a1[8]) = 2;
  v9 = a2 + v8;
  *v9 = 0;
  v9[8] = 1;
  v10 = a1[11];
  v11 = a2 + a1[10];
  *v11 = 0;
  v11[8] = 1;
  v12 = a2 + v10;
  *v12 = 0;
  v12[8] = 1;
  v13 = a2 + a1[12];
  *v13 = 0;
  v13[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0), lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
    v6 = result;
    if (*(v3 + *(result + 24) + 8))
    {
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }
    }

    if ((*(v3 + *(v6 + 28) + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuilding and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuilding and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuilding and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapBuildingData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D;
LABEL_15:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v7, v8);
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
          goto LABEL_15;
        }

        if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuilding and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapBuildingData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_GEOMapBuildingData.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuilding and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedUInt64Field(value:fieldNumber:)();
    }

    closure #2 in CLP_LogEntry_PrivateData_GEOMapBuildingData.traverse<A>(visitor:)(v3, a1, a2, a3);
    type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_GEOMapBuildingData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
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

uint64_t closure #2 in CLP_LogEntry_PrivateData_GEOMapBuildingData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 32), v7, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapBuildingData@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = *(a1 + 32);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance CLP_LogEntry_PrivateData_BatchedLocations@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance CLP_LogEntry_PrivateData_BatchedLocations(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapBuildingData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapBuildingData and conformance CLP_LogEntry_PrivateData_GEOMapBuildingData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapBuildingData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapBuildingData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapBuildingData and conformance CLP_LogEntry_PrivateData_GEOMapBuildingData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapBuildingData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapBuildingData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapBuildingData and conformance CLP_LogEntry_PrivateData_GEOMapBuildingData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapBuildingData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0), lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
    v6 = result;
    if (*(v3 + result[6]) == 4)
    {
      if (v4)
      {
        return result;
      }
    }

    else
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }
    }

    if ((*(v3 + v6[7] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v3 + v6[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v3 + v6[9] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a1[7];
  *(a2 + a1[6]) = 4;
  v6 = a2 + v5;
  *v6 = 0;
  v6[4] = 1;
  v7 = a1[9];
  v8 = a2 + a1[8];
  *v8 = 0;
  v8[4] = 1;
  v9 = a2 + v7;
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else
      {
        if (result == 3 || result == 4)
        {
          goto LABEL_4;
        }

        if (result == 5)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v6 = result;
  if (*(v3 + result[6] + 8))
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

  if ((*(v3 + v6[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[9] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[8] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
LABEL_20:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

LABEL_17:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_5;
        }

        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else
      {
        if (result > 5)
        {
          if (result != 6)
          {
            if (result != 7)
            {
              goto LABEL_5;
            }

            goto LABEL_17;
          }

          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
          goto LABEL_20;
        }

        if (result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
    if ((*(v3 + v9[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (*(v3 + v9[8]) != 4)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if ((*(v3 + v9[9] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #6 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 40), v7, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  v7 = &a2[a1[7]];
  *v7 = 0;
  v7[8] = 1;
  a2[v6] = 4;
  v8 = a1[10];
  v9 = &a2[a1[9]];
  *v9 = 0;
  v9[4] = 1;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  result = (*(*(v10 - 8) + 56))(&a2[v8], 1, 1, v10);
  v12 = &a2[a1[11]];
  *v12 = 0;
  v12[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t *CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.protoMessageName;
}

uint64_t static CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.protoMessageName.getter(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v6 = result;
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

  if (*(v3 + *(v6 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for static Message.protoMessageName.getter in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 28)) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
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

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  a2[*(a1 + 28)] = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData and conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData and conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData and conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1 || result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 4)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24)) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_TechnologyStatus@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  result = UnknownStorage.init()();
  v9 = *(a1 + 24);
  *(a4 + *(a1 + 20)) = a2;
  *(a4 + v9) = a3;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WatchOrientation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation and conformance CLP_LogEntry_PrivateData_WatchOrientation, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WatchOrientation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WatchOrientation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation and conformance CLP_LogEntry_PrivateData_WatchOrientation, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WatchOrientation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WatchOrientation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation and conformance CLP_LogEntry_PrivateData_WatchOrientation, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WatchOrientation);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WristState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2 || result == 3)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType();
LABEL_21:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            goto LABEL_4;
          }

          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType();
          goto LABEL_21;
        }

        if (result == 6 || result == 7)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WristState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
    if (*(v5 + v10[6]) != 4)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v5 + v10[7]) != 4)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v5 + v10[8]) != 4)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    closure #6 in CLP_LogEntry_PrivateData_TunnelBridgeAssistance.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WristState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 4;
  *(a2 + v7) = 4;
  v8 = a1[9];
  *(a2 + a1[8]) = 4;
  *(a2 + v8) = 2;
  v9 = a1[11];
  *(a2 + a1[10]) = 2;
  *(a2 + v9) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WristState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState and conformance CLP_LogEntry_PrivateData_WristState, type metadata accessor for CLP_LogEntry_PrivateData_WristState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WristState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WristState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState and conformance CLP_LogEntry_PrivateData_WristState, type metadata accessor for CLP_LogEntry_PrivateData_WristState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WristState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WristState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState and conformance CLP_LogEntry_PrivateData_WristState, type metadata accessor for CLP_LogEntry_PrivateData_WristState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WristState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WatchState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
          type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_WatchOrientation;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation and conformance CLP_LogEntry_PrivateData_WatchOrientation;
LABEL_5:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v7, v8);
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_WristState;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_WristState;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState and conformance CLP_LogEntry_PrivateData_WristState;
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
          goto LABEL_5;
        }

        if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WatchState);
  if (!v4)
  {
    if ((*(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 24) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    closure #3 in CLP_LogEntry_PrivateData_WatchState.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #4 in CLP_LogEntry_PrivateData_WatchState.traverse<A>(visitor:)(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of Any?(v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v9, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_WatchState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation and conformance CLP_LogEntry_PrivateData_WatchOrientation, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WatchOrientation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_WatchState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 32), v7, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState and conformance CLP_LogEntry_PrivateData_WristState, type metadata accessor for CLP_LogEntry_PrivateData_WristState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WristState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WatchState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  (*(*(v8 - 8) + 56))(a2 + v6, 1, 1, v8);
  v9 = a1[8];
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WatchState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchState and conformance CLP_LogEntry_PrivateData_WatchState, type metadata accessor for CLP_LogEntry_PrivateData_WatchState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WatchState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WatchState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchState and conformance CLP_LogEntry_PrivateData_WatchState, type metadata accessor for CLP_LogEntry_PrivateData_WatchState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WatchState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WatchState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchState and conformance CLP_LogEntry_PrivateData_WatchState, type metadata accessor for CLP_LogEntry_PrivateData_WatchState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WatchState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 3 || result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType();
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType();
        }

        v3 = v6;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_PlaceInference.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
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
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + v6[6]) != 3)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v3 + v6[7] + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v3 + v6[8] + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_PlaceInference@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 5;
  *(a2 + v5) = 3;
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_PlaceInference(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference and conformance CLP_LogEntry_PrivateData_PlaceInference, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PlaceInference);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_PlaceInference(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference and conformance CLP_LogEntry_PrivateData_PlaceInference, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PlaceInference);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PlaceInference(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference and conformance CLP_LogEntry_PrivateData_PlaceInference, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PlaceInference);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v8);

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

      if (result > 3)
      {
        break;
      }

      if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_20;
      }

LABEL_23:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 5)
    {
      if (result != 6)
      {
        if (result != 7)
        {
          goto LABEL_23;
        }

        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        goto LABEL_22;
      }

      v12 = v4;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
      v13 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate;
      v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientLocationCoordinate;
      v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate;
    }

    else if (result == 4)
    {
LABEL_20:
      v12 = v4;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
      v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
      v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp;
      v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
    }

    else
    {
      v12 = v4;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
      v13 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference;
      v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_PlaceInference;
      v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference and conformance CLP_LogEntry_PrivateData_PlaceInference;
    }

    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_22:
    swift_endAccess();
    goto LABEL_23;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #4 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #5 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #6 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM, 7);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
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

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
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

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
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

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
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

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference and conformance CLP_LogEntry_PrivateData_PlaceInference, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PlaceInference);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_RoutineVisit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v140 = *(v4 - 8);
  v141 = v4;
  MEMORY[0x28223BE20](v4);
  v137 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
  MEMORY[0x28223BE20](v139);
  v142 = &v137 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v149 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v144 = &v137 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v146 = *(v11 - 8);
  v147 = v11;
  MEMORY[0x28223BE20](v11);
  v138 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSg_ADtMR);
  MEMORY[0x28223BE20](v145);
  v148 = &v137 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v143 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v151 = &v137 - v17;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v19 = *(v18 - 8);
  v164 = v18;
  v165 = v19;
  MEMORY[0x28223BE20](v18);
  v159 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v22 = MEMORY[0x28223BE20](v21);
  v152 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v154 = &v137 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v158 = &v137 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v137 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v150 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v155 = &v137 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v153 = &v137 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v157 = &v137 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v156 = &v137 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v162 = &v137 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v161 = &v137 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v137 - v45;
  v47 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v47, v46, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v48 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  v163 = v21;
  v49 = *(v21 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v29, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v50 = a2 + v48;
  v51 = a2;
  v52 = v164;
  v53 = v165;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50, &v29[v49], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v56 = *(v53 + 48);
  v54 = v53 + 48;
  v55 = v56;
  if (v56(v29, 1, v52) == 1)
  {

    outlined destroy of Any?(v46, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v55(&v29[v49], 1, v52) != 1)
    {
LABEL_7:
      v59 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
      v60 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
      v61 = v29;
LABEL_23:
      outlined destroy of Any?(v61, v59, v60);
      goto LABEL_24;
    }

    v160 = v55;
    v165 = v54;
    outlined destroy of Any?(v29, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  else
  {
    v57 = v161;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29, v161, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v55(&v29[v49], 1, v52) == 1)
    {

      outlined destroy of Any?(v46, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v58 = v57;
LABEL_6:
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v58, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      goto LABEL_7;
    }

    v160 = v55;
    v165 = v54;
    v62 = &v29[v49];
    v63 = v159;
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v62, v159, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

    v64 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v57, v63, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v63, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of Any?(v46, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v57, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v52 = v164;
    outlined destroy of Any?(v29, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if ((v64 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v65 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  v66 = v162;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v65, v162, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v67 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  v68 = *(v163 + 48);
  v69 = v158;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v66, v158, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v67, v69 + v68, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v70 = v165;
  v71 = v160;
  v72 = v160(v69, 1, v52);
  v160 = v71;
  if (v72 == 1)
  {
    outlined destroy of Any?(v66, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v71((v69 + v68), 1, v52) == 1)
    {
      outlined destroy of Any?(v69, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_16;
    }

LABEL_14:
    v59 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v60 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v61 = v69;
    goto LABEL_23;
  }

  v73 = v156;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v69, v156, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v71((v69 + v68), 1, v52) == 1)
  {
    outlined destroy of Any?(v162, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v73, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_14;
  }

  v74 = v159;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v69 + v68, v159, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  LODWORD(v161) = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v73, v74, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v74, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v162, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v73, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v69, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v161 & 1) == 0)
  {
LABEL_24:

    return 0;
  }

LABEL_16:
  v75 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  v162 = a1;
  v76 = a1 + v75;
  v77 = v157;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76, v157, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v78 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  v79 = *(v163 + 48);
  v80 = v154;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v77, v154, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v81 = v80;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v78, v80 + v79, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v82 = v164;
  v83 = v160;
  v84 = v160(v80, 1, v164);
  v165 = v70;
  if (v84 == 1)
  {
    outlined destroy of Any?(v77, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v85 = v83(v80 + v79, 1, v82);
    v86 = v155;
    v87 = v162;
    if (v85 == 1)
    {
      outlined destroy of Any?(v80, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_27;
    }

LABEL_21:
    v59 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v60 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
LABEL_22:
    v61 = v81;
    goto LABEL_23;
  }

  v88 = v80;
  v89 = v153;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v88, v153, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v90 = v83(v81 + v79, 1, v82);
  v86 = v155;
  if (v90 == 1)
  {
    outlined destroy of Any?(v157, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v89, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_21;
  }

  v92 = v81 + v79;
  v93 = v159;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v92, v159, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v94 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v89, v93, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v93, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v157, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v89, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v81, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v87 = v162;
  if ((v94 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v95 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87 + v95, v86, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v96 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  v97 = *(v163 + 48);
  v98 = v86;
  v99 = v86;
  v29 = v152;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v98, v152, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v96, &v29[v97], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v100 = v164;
  v101 = v160;
  if (v160(v29, 1, v164) == 1)
  {
    outlined destroy of Any?(v99, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v101(&v29[v97], 1, v100) == 1)
    {
      outlined destroy of Any?(v29, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_33;
    }

    goto LABEL_7;
  }

  v102 = v150;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29, v150, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v101(&v29[v97], 1, v100) == 1)
  {
    outlined destroy of Any?(v155, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v58 = v102;
    goto LABEL_6;
  }

  v103 = &v29[v97];
  v104 = v159;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v103, v159, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v105 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v102, v104, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v104, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v155, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v102, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v29, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v105 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_33:
  v106 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  v107 = v151;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87 + v106, v151, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v108 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  v109 = *(v145 + 48);
  v110 = v148;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v107, v148, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v81 = v110;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v108, v110 + v109, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v111 = v147;
  v112 = *(v146 + 48);
  if (v112(v110, 1, v147) == 1)
  {
    outlined destroy of Any?(v107, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
    v113 = v112(v110 + v109, 1, v111);
    v114 = v149;
    if (v113 == 1)
    {
      outlined destroy of Any?(v110, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v115 = v143;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v110, v143, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v116 = v112(v110 + v109, 1, v111);
  v114 = v149;
  if (v116 == 1)
  {
    outlined destroy of Any?(v151, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v115, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
LABEL_38:
    v59 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSg_ADtMd;
    v60 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSg_ADtMR;
    goto LABEL_22;
  }

  v117 = v110 + v109;
  v118 = v138;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v117, v138, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  v119 = specialized static CLP_LogEntry_PrivateData_PlaceInference.== infix(_:_:)(v115, v118);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v118, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  outlined destroy of Any?(v151, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v115, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  outlined destroy of Any?(v110, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  if ((v119 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_40:
  v120 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v121 = v144;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87 + v120, v144, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v122 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v123 = *(v139 + 48);
  v124 = v142;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v121, v142, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v81 = v124;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v122, v124 + v123, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v125 = v141;
  v126 = *(v140 + 48);
  if (v126(v124, 1, v141) == 1)
  {
    outlined destroy of Any?(v121, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    if (v126(v124 + v123, 1, v125) == 1)
    {
      outlined destroy of Any?(v124, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v124, v114, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if (v126(v124 + v123, 1, v125) == 1)
  {
    outlined destroy of Any?(v144, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v114, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
LABEL_45:
    v59 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd;
    v60 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR;
    goto LABEL_22;
  }

  v127 = v124 + v123;
  v128 = v137;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v127, v137, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v129 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v114, v128, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v128, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of Any?(v144, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v114, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of Any?(v124, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if ((v129 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_47:
  v130 = v87 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM;
  swift_beginAccess();
  v131 = *v130;
  v132 = *(v130 + 8);

  v133 = v51 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM;
  swift_beginAccess();
  v134 = *v133;
  v135 = *(v133 + 8);

  if ((v132 & 1) == 0)
  {
    if (v131 == v134)
    {
      v136 = v135;
    }

    else
    {
      v136 = 1;
    }

    return (v136 & 1) == 0;
  }

  return v135 != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_RoutineVisit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RoutineVisit and conformance CLP_LogEntry_PrivateData_RoutineVisit, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit, &protocol conformance descriptor for CLP_LogEntry_PrivateData_RoutineVisit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_RoutineVisit(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RoutineVisit and conformance CLP_LogEntry_PrivateData_RoutineVisit, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit, &protocol conformance descriptor for CLP_LogEntry_PrivateData_RoutineVisit);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_RoutineVisit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RoutineVisit and conformance CLP_LogEntry_PrivateData_RoutineVisit, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit, &protocol conformance descriptor for CLP_LogEntry_PrivateData_RoutineVisit);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result <= 6)
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

LABEL_16:
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence();
LABEL_22:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 8)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            goto LABEL_16;
          }

          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType();
          goto LABEL_22;
        }

        if (result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_OutdoorUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
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

  if ((*(v5 + v10[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 3)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  closure #6 in CLP_LogEntry_PrivateData_OutdoorUpdate.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  closure #8 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_OutdoorUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_OutdoorUpdate@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  *(a2 + a1[7]) = 3;
  *(a2 + v8) = 4;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a2 + v9) = 4;
  v11 = a1[12];
  *(a2 + a1[11]) = 2;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_OutdoorUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OutdoorUpdate and conformance CLP_LogEntry_PrivateData_OutdoorUpdate, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_OutdoorUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_OutdoorUpdate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OutdoorUpdate and conformance CLP_LogEntry_PrivateData_OutdoorUpdate, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_OutdoorUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_OutdoorUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OutdoorUpdate and conformance CLP_LogEntry_PrivateData_OutdoorUpdate, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_OutdoorUpdate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v8);

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
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_13;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 19:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_13;
        case 14:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame();
          goto LABEL_11;
        case 15:
        case 16:
        case 17:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_13;
        case 18:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator();
LABEL_11:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_13:
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

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  result = swift_beginAccess();
  if (v9[24])
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

  swift_beginAccess();
  if ((v9[40] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[48] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[56] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[64] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[72] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #7 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3, 9);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3, 10);
  closure #8 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3, 11);
  closure #12 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #13 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #14 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #15 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #16 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #17 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #18 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #19 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 80) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 88) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 96) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 129) != 3)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #15 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 130) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #16 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 131) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #17 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 132) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #18 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 133) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #19 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 140) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t static CLP_LogEntry_PrivateData_InertialOdometrySample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && (closure #1 in static CLP_LogEntry_PrivateData_InertialOdometrySample.== infix(_:_:)(v5, v6) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_InertialOdometrySample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v7 != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 44);
  v11 = *(a1 + 48);
  swift_beginAccess();
  v12 = *(a2 + 48);
  if (v11)
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 44))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 52);
  v14 = *(a1 + 56);
  swift_beginAccess();
  v15 = *(a2 + 56);
  if (v14)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 52))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 60);
  v17 = *(a1 + 64);
  swift_beginAccess();
  v18 = *(a2 + 64);
  if (v17)
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 60))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 68);
  v20 = *(a1 + 72);
  swift_beginAccess();
  v21 = *(a2 + 72);
  if (v20)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 68))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 76);
  v23 = *(a1 + 80);
  swift_beginAccess();
  v24 = *(a2 + 80);
  if (v23)
  {
    if (!*(a2 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 76))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 84);
  v26 = *(a1 + 88);
  swift_beginAccess();
  v27 = *(a2 + 88);
  if (v26)
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 84))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 92);
  v29 = *(a1 + 96);
  swift_beginAccess();
  v30 = *(a2 + 96);
  if (v29)
  {
    if (!*(a2 + 96))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 92))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 100);
  v32 = *(a1 + 104);
  swift_beginAccess();
  v33 = *(a2 + 104);
  if (v32)
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 100))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 108);
  v35 = *(a1 + 112);
  swift_beginAccess();
  v36 = *(a2 + 112);
  if (v35)
  {
    if (!*(a2 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 108))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 116);
  v38 = *(a1 + 120);
  swift_beginAccess();
  v39 = *(a2 + 120);
  if (v38)
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 116))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 124);
  v41 = *(a1 + 128);
  swift_beginAccess();
  v42 = *(a2 + 128);
  if (v41)
  {
    if (!*(a2 + 128))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 124))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 129);
  swift_beginAccess();
  v44 = *(a2 + 129);
  if (v43 == 3)
  {
    if (v44 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v44 == 3 || v43 != v44)
    {
      return result;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 130);
  swift_beginAccess();
  v47 = *(a2 + 130);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }
  }

  else if (v47 == 2 || ((v46 ^ v47) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 131);
  swift_beginAccess();
  v49 = *(a2 + 131);
  if (v48 == 2)
  {
    if (v49 != 2)
    {
      return 0;
    }
  }

  else if (v49 == 2 || ((v48 ^ v49) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 132);
  swift_beginAccess();
  v51 = *(a2 + 132);
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      return 0;
    }
  }

  else if (v51 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v52 = *(a1 + 133);
  swift_beginAccess();
  v53 = *(a2 + 133);
  if (v52 == 4)
  {
    if (v53 == 4)
    {
      goto LABEL_104;
    }

    return 0;
  }

  result = 0;
  if (v53 != 4 && v52 == v53)
  {
LABEL_104:
    swift_beginAccess();
    v54 = *(a1 + 136);
    v55 = *(a1 + 140);
    swift_beginAccess();
    v56 = *(a2 + 140);
    if (v55)
    {
      if (!*(a2 + 140))
      {
        return 0;
      }
    }

    else
    {
      if (v54 != *(a2 + 136))
      {
        v56 = 1;
      }

      if (v56)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

Swift::Int CLP_LogEntry_PrivateData_TimeStamp.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_InertialOdometrySample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample and conformance CLP_LogEntry_PrivateData_InertialOdometrySample, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_InertialOdometrySample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_InertialOdometrySample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample and conformance CLP_LogEntry_PrivateData_InertialOdometrySample, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_InertialOdometrySample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_InertialOdometrySample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample and conformance CLP_LogEntry_PrivateData_InertialOdometrySample, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_InertialOdometrySample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CLP_LogEntry_PrivateData_InertialOdometrySample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 != v5 && (closure #1 in static CLP_LogEntry_PrivateData_InertialOdometrySample.== infix(_:_:)(v4, v5) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v13, v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v14, v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        v16 = *(v4 + 20);
        v17 = &v10[v16];
        v18 = v10[v16 + 8];
        v19 = &v7[v16];
        v20 = v7[v16 + 8];
        if (v18)
        {
          if (!v20)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v17 != *v19)
          {
            LOBYTE(v20) = 1;
          }

          if (v20)
          {
LABEL_21:
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            goto LABEL_22;
          }
        }

        v21 = *(v4 + 24);
        v22 = &v10[v21];
        v23 = v10[v21 + 8];
        v24 = &v7[v21];
        v25 = v7[v21 + 8];
        if (v23)
        {
          if (!v25)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v22 != *v24)
          {
            LOBYTE(v25) = 1;
          }

          if (v25)
          {
            goto LABEL_21;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if (v26)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v26 & 1;
      }
    }

    v26 = 1;
  }

  else
  {
LABEL_22:
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf59CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranchV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v60 - v8;
  v68 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  v10 = MEMORY[0x28223BE20](v68);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v15 = &v60 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_54:
    v59 = 0;
    return v59 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v59 = 1;
    return v59 & 1;
  }

  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a1 + v17;
  v19 = 0;
  v62 = v16;
  v63 = a2 + v17;
  v20 = *(v13 + 72);
  v67 = v4;
  v60 = v20;
  v61 = v18;
  while (1)
  {
    v21 = v20 * v19;
    result = outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v18 + v20 * v19, v15, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    if (v19 == v16)
    {
      break;
    }

    v64 = v19;
    result = outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v63 + v21, v12, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    v23 = *v15;
    v24 = *v12;
    v25 = *(*v15 + 16);
    if (v25 != *(*v12 + 16))
    {
      goto LABEL_53;
    }

    if (v25 && v23 != v24)
    {
      v26 = 0;
      v27 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v65 = v24 + v27;
      v66 = v23 + v27;
      while (1)
      {
        v28 = v67;
        if (v26 >= *(v23 + 16))
        {
          break;
        }

        v29 = *(v69 + 72) * v26;
        result = outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v66 + v29, v9, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if (v26 >= *(v24 + 16))
        {
          goto LABEL_57;
        }

        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v65 + v29, v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        v30 = *(v28 + 20);
        v31 = &v9[v30];
        v32 = v9[v30 + 8];
        v33 = &v7[v30];
        v34 = v7[v30 + 8];
        if (v32)
        {
          if (!v34)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (*v31 != *v33)
          {
            LOBYTE(v34) = 1;
          }

          if (v34)
          {
LABEL_52:
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            goto LABEL_53;
          }
        }

        v35 = *(v28 + 24);
        v36 = &v9[v35];
        v37 = v9[v35 + 8];
        v38 = &v7[v35];
        v39 = v7[v35 + 8];
        if (v37)
        {
          if (!v39)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (*v36 != *v38)
          {
            LOBYTE(v39) = 1;
          }

          if (v39)
          {
            goto LABEL_52;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        result = outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if ((v40 & 1) == 0)
        {
          goto LABEL_53;
        }

        if (v25 == ++v26)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      break;
    }

LABEL_26:
    v41 = v68[6];
    v42 = v15[v41];
    v43 = v12[v41];
    if (v42 == 4)
    {
      if (v43 != 4)
      {
        goto LABEL_53;
      }
    }

    else if (v42 != v43)
    {
      goto LABEL_53;
    }

    v44 = v68[7];
    v45 = &v15[v44];
    v46 = v15[v44 + 4];
    v47 = &v12[v44];
    v48 = v12[v44 + 4];
    if (v46)
    {
      if (!v48)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v45 != *v47)
      {
        LOBYTE(v48) = 1;
      }

      if (v48)
      {
LABEL_53:
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v12, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v15, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
        goto LABEL_54;
      }
    }

    v49 = v68[8];
    v50 = &v15[v49];
    v51 = v15[v49 + 4];
    v52 = &v12[v49];
    v53 = v12[v49 + 4];
    if (v51)
    {
      if (!v53)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v50 != *v52)
      {
        LOBYTE(v53) = 1;
      }

      if (v53)
      {
        goto LABEL_53;
      }
    }

    v54 = v68[9];
    v55 = &v15[v54];
    v56 = v15[v54 + 4];
    v57 = &v12[v54];
    v58 = v12[v54 + 4];
    if (v56)
    {
      if (!v58)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v55 != *v57)
      {
        LOBYTE(v58) = 1;
      }

      if (v58)
      {
        goto LABEL_53;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v12, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v15, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    if (v59)
    {
      v19 = v64 + 1;
      v18 = v61;
      v16 = v62;
      v20 = v60;
      if (v64 + 1 != v62)
      {
        continue;
      }
    }

    return v59 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf038CLP_LogEntry_PrivateData_MapsRouteHintG0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v43 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v13, v10, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v14, v7, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        v16 = v4[5];
        v17 = &v10[v16];
        v18 = v10[v16 + 8];
        v19 = &v7[v16];
        v20 = v7[v16 + 8];
        if (v18)
        {
          if (!v20)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v17 != *v19)
          {
            LOBYTE(v20) = 1;
          }

          if (v20)
          {
LABEL_39:
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
            goto LABEL_40;
          }
        }

        v21 = v4[6];
        v22 = &v10[v21];
        v23 = v10[v21 + 8];
        v24 = &v7[v21];
        v25 = v7[v21 + 8];
        if (v23)
        {
          if (!v25)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v22 != *v24)
          {
            LOBYTE(v25) = 1;
          }

          if (v25)
          {
            goto LABEL_39;
          }
        }

        v26 = v4[7];
        v27 = &v10[v26];
        v28 = v10[v26 + 8];
        v29 = &v7[v26];
        v30 = v7[v26 + 8];
        if (v28)
        {
          if (!v30)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v27 != *v29)
          {
            LOBYTE(v30) = 1;
          }

          if (v30)
          {
            goto LABEL_39;
          }
        }

        v31 = v4[8];
        v32 = &v10[v31];
        v33 = v10[v31 + 8];
        v34 = &v7[v31];
        v35 = v7[v31 + 8];
        if (v33)
        {
          if (!v35)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v32 != *v34)
          {
            LOBYTE(v35) = 1;
          }

          if (v35)
          {
            goto LABEL_39;
          }
        }

        v36 = v4[9];
        v37 = &v10[v36];
        v38 = v10[v36 + 8];
        v39 = &v7[v36];
        v40 = v7[v36 + 8];
        if (v38)
        {
          if (!v40)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v37 != *v39)
          {
            LOBYTE(v40) = 1;
          }

          if (v40)
          {
            goto LABEL_39;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        if (v41)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v41 & 1;
      }
    }

    v41 = 1;
  }

  else
  {
LABEL_40:
    v41 = 0;
  }

  return v41 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v24 = a5;
  v25 = a3(0);
  v8 = MEMORY[0x28223BE20](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v13 = &v24 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      return 1;
    }

    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = a1 + v15;
    v17 = a2 + v15;
    v18 = *(v11 + 72);
    while (1)
    {
      outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v16, v13, a4);
      outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v17, v10, a4);
      v19 = *(v25 + 20);
      v20 = *&v13[v19];
      v21 = *&v10[v19];
      if (v20 != v21)
      {

        v22 = v24(v20, v21);

        if ((v22 & 1) == 0)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, a4);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, a4);
      v17 += v18;
      v16 += v18;
      if (!--v14)
      {
        return 1;
      }
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, a4);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, a4);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf34CLP_LogEntry_PrivateData_MagSampleV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v79 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  v16 = a3(0);
  v17 = MEMORY[0x28223BE20](v16);
  v83 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v22 = &v72 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_54;
  }

  if (!v23 || a1 == a2)
  {
    v70 = 1;
    return v70 & 1;
  }

  v82 = v19;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v77 = (v9 + 48);
  v78 = a4;
  v75 = *(v20 + 72);
  v76 = v13;
  v73 = &v72 - v21;
  while (1)
  {
    v81 = v25;
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v25, v22, a4);
    v27 = v83;
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v26, v83, a4);
    v28 = v82[5];
    v29 = *(v13 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v22[v28], v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27 + v28, &v15[v29], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v30 = *v77;
    if ((*v77)(v15, 1, v8) == 1)
    {
      v31 = v30(&v15[v29], 1, v8);
      a4 = v78;
      if (v31 != 1)
      {
        goto LABEL_52;
      }

      outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v13 = v76;
      v32 = v82;
      goto LABEL_28;
    }

    v74 = v23;
    v33 = v80;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v15, v80, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v30(&v15[v29], 1, v8) == 1)
    {
      break;
    }

    v34 = v79;
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v15[v29], v79, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v35 = v8[5];
    v36 = (v33 + v35);
    v37 = *(v33 + v35 + 8);
    v38 = (v34 + v35);
    v39 = *(v34 + v35 + 8);
    if (v37)
    {
      v22 = v73;
      v23 = v74;
      if (!v39)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*v36 != *v38)
      {
        LOBYTE(v39) = 1;
      }

      v22 = v73;
      v23 = v74;
      if (v39)
      {
LABEL_50:
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
        a4 = v78;
        goto LABEL_53;
      }
    }

    v40 = v8[6];
    v41 = (v33 + v40);
    v42 = *(v33 + v40 + 8);
    v43 = (v34 + v40);
    v44 = *(v34 + v40 + 8);
    if (v42)
    {
      if (!v44)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*v41 != *v43)
      {
        LOBYTE(v44) = 1;
      }

      if (v44)
      {
        goto LABEL_50;
      }
    }

    v45 = v8[7];
    v46 = (v33 + v45);
    v47 = *(v33 + v45 + 8);
    v48 = (v34 + v45);
    v49 = *(v34 + v45 + 8);
    if (v47)
    {
      if (!v49)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*v46 != *v48)
      {
        LOBYTE(v49) = 1;
      }

      if (v49)
      {
        goto LABEL_50;
      }
    }

    type metadata accessor for UnknownStorage();
    v50 = v8;
    v51 = v33;
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v53 = v51;
    v8 = v50;
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v53, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    a4 = v78;
    v13 = v76;
    v32 = v82;
    if ((v52 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_28:
    v54 = v32[6];
    v55 = &v22[v54];
    v56 = v22[v54 + 4];
    v57 = (v83 + v54);
    v58 = *(v83 + v54 + 4);
    if (v56)
    {
      if (!v58)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v55 != *v57)
      {
        LOBYTE(v58) = 1;
      }

      if (v58)
      {
        goto LABEL_53;
      }
    }

    v59 = v32[7];
    v60 = &v22[v59];
    v61 = v22[v59 + 4];
    v62 = (v83 + v59);
    v63 = *(v83 + v59 + 4);
    if (v61)
    {
      if (!v63)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v60 != *v62)
      {
        LOBYTE(v63) = 1;
      }

      if (v63)
      {
        goto LABEL_53;
      }
    }

    v64 = v32[8];
    v65 = &v22[v64];
    v66 = v22[v64 + 4];
    v67 = (v83 + v64);
    v68 = *(v83 + v64 + 4);
    if (v66)
    {
      if (!v68)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v65 != *v67)
      {
        LOBYTE(v68) = 1;
      }

      if (v68)
      {
        goto LABEL_53;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v69 = v83;
    v70 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v69, a4);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v22, a4);
    if (v70)
    {
      v26 += v75;
      v25 = v81 + v75;
      if (--v23)
      {
        continue;
      }
    }

    return v70 & 1;
  }

  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  a4 = v78;
  v22 = v73;
LABEL_52:
  outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
LABEL_53:
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v83, a4);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v22, a4);
LABEL_54:
  v70 = 0;
  return v70 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf35CLP_LogEntry_PrivateData_BaroSampleV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v66 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = *(v66 - 1);
  MEMORY[0x28223BE20](v66);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v59 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  MEMORY[0x28223BE20](v63);
  v9 = &v59 - v8;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v59 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_50:
    v57 = 0;
    return v57 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v57 = 1;
    return v57 & 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v60 = v13;
  v61 = (v4 + 48);
  v59 = *(v14 + 72);
  v64 = v10;
  while (1)
  {
    result = outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v19, v16, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    if (!v17)
    {
      break;
    }

    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v20, v13, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    v22 = *(v10 + 20);
    v23 = *(v63 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v16[v22], v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v13[v22], &v9[v23], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v24 = *v61;
    if ((*v61)(v9, 1, v66) == 1)
    {
      v25 = v24(&v9[v23], 1, v66);
      v13 = v60;
      if (v25 != 1)
      {
        goto LABEL_48;
      }

      outlined destroy of Any?(v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v26 = v64;
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v9, v65, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if (v24(&v9[v23], 1, v66) == 1)
      {
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v65, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        v13 = v60;
LABEL_48:
        outlined destroy of Any?(v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
LABEL_49:
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v16, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
        goto LABEL_50;
      }

      v27 = &v9[v23];
      v28 = v62;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v27, v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v29 = v66[5];
      v30 = (v65 + v29);
      v31 = *(v65 + v29 + 8);
      v32 = (v28 + v29);
      v33 = *(v28 + v29 + 8);
      if (v31)
      {
        if (!v33)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (*v30 != *v32)
        {
          LOBYTE(v33) = 1;
        }

        if (v33)
        {
LABEL_46:
          outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v28, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v65, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          outlined destroy of Any?(v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
          v13 = v60;
          goto LABEL_49;
        }
      }

      v34 = v66[6];
      v35 = (v65 + v34);
      v36 = *(v65 + v34 + 8);
      v37 = (v28 + v34);
      v38 = *(v28 + v34 + 8);
      if (v36)
      {
        if (!v38)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (*v35 != *v37)
        {
          LOBYTE(v38) = 1;
        }

        if (v38)
        {
          goto LABEL_46;
        }
      }

      v39 = v66[7];
      v40 = (v65 + v39);
      v41 = *(v65 + v39 + 8);
      v42 = (v28 + v39);
      v43 = *(v28 + v39 + 8);
      if (v41)
      {
        if (!v43)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (*v40 != *v42)
        {
          LOBYTE(v43) = 1;
        }

        if (v43)
        {
          goto LABEL_46;
        }
      }

      type metadata accessor for UnknownStorage();
      v44 = v65;
      v45 = v28;
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v26 = v64;
      v13 = v60;
      if ((v46 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v47 = *(v26 + 24);
    v48 = &v16[v47];
    v49 = v16[v47 + 4];
    v50 = &v13[v47];
    v51 = v13[v47 + 4];
    if (v49)
    {
      if (!v51)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (*v48 != *v50)
      {
        LOBYTE(v51) = 1;
      }

      if (v51)
      {
        goto LABEL_49;
      }
    }

    v52 = *(v26 + 28);
    v53 = &v16[v52];
    v54 = v16[v52 + 4];
    v55 = &v13[v52];
    v56 = v13[v52 + 4];
    if (v54)
    {
      if (!v56)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (*v53 != *v55)
      {
        LOBYTE(v56) = 1;
      }

      if (v56)
      {
        goto LABEL_49;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v16, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    if (v57)
    {
      v20 += v59;
      v19 += v59;
      v58 = v17-- == 1;
      v10 = v64;
      if (!v58)
      {
        continue;
      }
    }

    return v57 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v18, v15, a4);
        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v19, v12, a4);
        v21 = a5(v15, v12);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v12, a4);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf46CLP_LogEntry_PrivateData_GEOMapFeatureBuildingV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v52 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v43 - v8);
  v50 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
  v10 = MEMORY[0x28223BE20](v50);
  v51 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
LABEL_31:
    v42 = 0;
    return v42 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v42 = 1;
    return v42 & 1;
  }

  v16 = 0;
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v44 = *(a1 + 16);
  v45 = a2 + v17;
  v46 = *(v12 + 72);
  v47 = a1 + v17;
  v49 = &v43 - v13;
  while (1)
  {
    v18 = v46 * v16;
    result = outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v47 + v46 * v16, v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    if (v16 == v15)
    {
      break;
    }

    v48 = v16;
    v20 = v45 + v18;
    v21 = v51;
    result = outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v20, v51, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    v22 = *v14;
    v23 = *v21;
    v24 = *(*v14 + 16);
    if (v24 != *(v23 + 16))
    {
      goto LABEL_30;
    }

    if (v24 && v22 != v23)
    {
      v25 = 0;
      v26 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v27 = v22 + v26;
      v28 = v23 + v26;
      while (v25 < *(v22 + 16))
      {
        v29 = *(v52 + 72) * v25;
        result = outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v27 + v29, v9, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        if (v25 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v28 + v29, v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        v30 = specialized static CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.== infix(_:_:)(v9, v7);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        result = outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        if ((v30 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (v24 == ++v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      break;
    }

LABEL_14:
    v31 = *(v50 + 24);
    v32 = &v49[v31];
    v33 = v49[v31 + 8];
    v34 = (v51 + v31);
    v35 = *(v51 + v31 + 8);
    if (v33)
    {
      if (!v35)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (*v32 != *v34)
      {
        LOBYTE(v35) = 1;
      }

      if (v35)
      {
LABEL_30:
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v51, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v49, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
        goto LABEL_31;
      }
    }

    v36 = *(v50 + 28);
    v37 = &v49[v36];
    v38 = v49[v36 + 8];
    v39 = (v51 + v36);
    v40 = *(v51 + v36 + 8);
    if (v38)
    {
      if (!v40)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (*v37 != *v39)
      {
        LOBYTE(v40) = 1;
      }

      if (v40)
      {
        goto LABEL_30;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v14 = v49;
    v41 = v51;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v41, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    if (v42)
    {
      v16 = v48 + 1;
      v15 = v44;
      if (v48 + 1 != v44)
      {
        continue;
      }
    }

    return v42 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSectionV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v18, v15, a4);
        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v19, v12, a4);
        v21 = a5(v15, v12);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v12, a4);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

unint64_t specialized CLP_LogEntry_PrivateData_LocationType.init(rawValue:)(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

uint64_t specialized CLP_LogEntry_PrivateData_DominantMotionModeType.init(rawValue:)(uint64_t a1)
{
  if (a1 > 11804)
  {
    if (a1 > 15651)
    {
      if (a1 > 18224)
      {
        if (a1 <= 19149)
        {
          if (a1 > 19029)
          {
            if (a1 == 19030)
            {
              return 53;
            }

            if (a1 == 19090)
            {
              return 42;
            }
          }

          else
          {
            if (a1 == 18225)
            {
              return 44;
            }

            if (a1 == 18240)
            {
              return 32;
            }
          }
        }

        else if (a1 <= 90602)
        {
          if (a1 == 19150)
          {
            return 34;
          }

          if (a1 == 19160)
          {
            return 43;
          }
        }

        else
        {
          switch(a1)
          {
            case 90603:
              return 33;
            case 515621:
              return 66;
            case 515652:
              return 59;
          }
        }
      }

      else if (a1 <= 15709)
      {
        if (a1 > 15669)
        {
          if (a1 == 15670)
          {
            return 38;
          }

          if (a1 == 15675)
          {
            return 57;
          }
        }

        else
        {
          if (a1 == 15652)
          {
            return 62;
          }

          if (a1 == 15660)
          {
            return 68;
          }
        }
      }

      else if (a1 <= 17149)
      {
        if (a1 == 15710)
        {
          return 61;
        }

        if (a1 == 15733)
        {
          return 64;
        }
      }

      else
      {
        switch(a1)
        {
          case 17150:
            return 30;
          case 18070:
            return 41;
          case 18200:
            return 31;
        }
      }
    }

    else if (a1 > 15254)
    {
      if (a1 <= 15459)
      {
        if (a1 > 15349)
        {
          if (a1 == 15350)
          {
            return 55;
          }

          if (a1 == 15360)
          {
            return 54;
          }
        }

        else
        {
          if (a1 == 15255)
          {
            return 29;
          }

          if (a1 == 15330)
          {
            return 63;
          }
        }
      }

      else if (a1 <= 15591)
      {
        if (a1 == 15460)
        {
          return 51;
        }

        if (a1 == 15562)
        {
          return 50;
        }
      }

      else
      {
        switch(a1)
        {
          case 15592:
            return 52;
          case 15610:
            return 45;
          case 15620:
            return 65;
        }
      }
    }

    else if (a1 <= 15099)
    {
      if (a1 > 15029)
      {
        if (a1 == 15030)
        {
          return 58;
        }

        if (a1 == 15055)
        {
          return 56;
        }
      }

      else
      {
        if (a1 == 11805)
        {
          return 27;
        }

        if (a1 == 12150)
        {
          return 28;
        }
      }
    }

    else if (a1 <= 15149)
    {
      if (a1 == 15100)
      {
        return 70;
      }

      if (a1 == 15110)
      {
        return 40;
      }
    }

    else
    {
      switch(a1)
      {
        case 15150:
          return 67;
        case 15230:
          return 48;
        case 15240:
          return 49;
      }
    }
  }

  else
  {
    if (a1 <= 2009)
    {
      return 0;
    }

    if (a1 > 2067)
    {
      if (a1 <= 2104)
      {
        switch(a1)
        {
          case 2068:
            return 69;
          case 2071:
            return 23;
          case 2101:
            return 36;
        }
      }

      else if (a1 > 3014)
      {
        if (a1 == 3015)
        {
          return 26;
        }

        if (a1 == 3016)
        {
          return 71;
        }
      }

      else
      {
        if (a1 == 2105)
        {
          return 24;
        }

        if (a1 == 2150)
        {
          return 25;
        }
      }
    }

    else if (a1 <= 2023)
    {
      switch(a1)
      {
        case 2010:
          return 18;
        case 2020:
          return 19;
        case 2022:
          return 35;
      }
    }

    else if (a1 > 2060)
    {
      if (a1 == 2061)
      {
        return 21;
      }

      if (a1 == 2065)
      {
        return 22;
      }
    }

    else
    {
      if (a1 == 2024)
      {
        return 37;
      }

      if (a1 == 2048)
      {
        return 20;
      }
    }
  }

  return 72;
}

unint64_t specialized CLP_LogEntry_PrivateData_ReachabilityType.init(rawValue:)(unint64_t result)
{
  if (result <= 1)
  {
    if (result > 1)
    {
      return 5;
    }
  }

  else if (result != 2 && result != 3)
  {
    if (result == 1001)
    {
      return 4;
    }

    return 5;
  }

  return result;
}

uint64_t specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  *(v1 + 16) = 4;
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v75 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v8 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  v78 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  v79 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  v80 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  v81 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  v82 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v83 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  v84 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  v85 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type) = 14;
  v86 = v18;
  v87 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  v7(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate, 1, 1, v6);
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  v88 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  v77 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  *v20 = 0;
  *(v20 + 4) = 1;
  v89 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity) = 5;
  v90 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame) = 3;
  v91 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame) = 3;
  v93 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType) = 8;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  *v21 = 0;
  *(v21 + 8) = 1;
  v92 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController) = 2;
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v22;
  v23 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v24 = v76;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v76, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v25 = v75;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v24, v1 + v25, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
  v26 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy);
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  swift_beginAccess();
  *v8 = v27;
  *(v8 + 8) = v26;
  v28 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude);
  swift_beginAccess();
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  swift_beginAccess();
  *v9 = v29;
  *(v9 + 8) = v28;
  v30 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v32 = v78;
  swift_beginAccess();
  *v32 = v31;
  *(v32 + 8) = v30;
  v33 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = v79;
  swift_beginAccess();
  *v35 = v34;
  *(v35 + 8) = v33;
  v36 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy);
  swift_beginAccess();
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  v38 = v80;
  swift_beginAccess();
  *v38 = v37;
  *(v38 + 8) = v36;
  v39 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course);
  swift_beginAccess();
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  v41 = v81;
  swift_beginAccess();
  *v41 = v40;
  *(v41 + 8) = v39;
  v42 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy);
  swift_beginAccess();
  v43 = *v42;
  LOBYTE(v42) = *(v42 + 8);
  v44 = v82;
  swift_beginAccess();
  *v44 = v43;
  *(v44 + 8) = v42;
  v45 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp);
  swift_beginAccess();
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);
  v47 = v83;
  swift_beginAccess();
  *v47 = v46;
  *(v47 + 8) = v45;
  v48 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  swift_beginAccess();
  LODWORD(v46) = *v48;
  LOBYTE(v48) = *(v48 + 4);
  v49 = v84;
  swift_beginAccess();
  *v49 = v46;
  *(v49 + 4) = v48;
  v50 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan);
  swift_beginAccess();
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  v52 = v85;
  swift_beginAccess();
  *v52 = v51;
  *(v52 + 8) = v50;
  v53 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  LOBYTE(v53) = *(a1 + v53);
  v54 = v86;
  swift_beginAccess();
  *(v1 + v54) = v53;
  v55 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v55, v24, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v56 = v87;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v24, v1 + v56, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
  v57 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse);
  swift_beginAccess();
  v58 = *v57;
  LOBYTE(v57) = *(v57 + 8);
  v59 = v88;
  swift_beginAccess();
  *v59 = v58;
  *(v59 + 8) = v57;
  v60 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  swift_beginAccess();
  LODWORD(v58) = *v60;
  LOBYTE(v60) = *(v60 + 4);
  v61 = v77;
  swift_beginAccess();
  *v61 = v58;
  *(v61 + 4) = v60;
  v62 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  swift_beginAccess();
  LOBYTE(v62) = *(a1 + v62);
  v63 = v89;
  swift_beginAccess();
  *(v1 + v63) = v62;
  v64 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  LOBYTE(v64) = *(a1 + v64);
  v65 = v90;
  swift_beginAccess();
  *(v1 + v65) = v64;
  v66 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  swift_beginAccess();
  LOBYTE(v66) = *(a1 + v66);
  v67 = v91;
  swift_beginAccess();
  *(v1 + v67) = v66;
  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  swift_beginAccess();
  LOBYTE(v68) = *(a1 + v68);
  v69 = v93;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude);
  swift_beginAccess();
  v71 = *v70;
  LOBYTE(v70) = *(v70 + 8);
  swift_beginAccess();
  *v21 = v71;
  *(v21 + 8) = v70;
  v72 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v72);
  v73 = v92;
  swift_beginAccess();
  *(v1 + v73) = a1;
  return v1;
}

uint64_t outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t specialized CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType.init(rawValue:)(unint64_t result)
{
  if (result <= 1)
  {
    if (result <= 1)
    {
      return result;
    }

    return 4;
  }

  if (result != 2)
  {
    if (result == 0xFFFF)
    {
      return 3;
    }

    return 4;
  }

  return result;
}

uint64_t specialized CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType.init(rawValue:)(uint64_t a1)
{
  if (a1 <= 24)
  {
    if (a1 == -1)
    {
      return 0;
    }

    if (!a1)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 25:
        return 2;
      case 50:
        return 3;
      case 75:
        return 4;
    }
  }

  return 5;
}

uint64_t specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v239 = &v179 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v215 = &v179 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v201 = &v179 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v191 = &v179 - v10;
  *(v1 + 16) = 0;
  v180 = (v1 + 16);
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  v181 = (v1 + 32);
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  v182 = (v1 + 48);
  *(v1 + 64) = 0;
  v183 = (v1 + 64);
  *(v1 + 56) = 1;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  v184 = (v1 + 80);
  *(v1 + 88) = 1;
  *(v1 + 92) = 0;
  v185 = (v1 + 92);
  *(v1 + 100) = 0;
  v186 = (v1 + 100);
  *(v1 + 96) = 1;
  *(v1 + 104) = 1;
  *(v1 + 108) = 0;
  v187 = (v1 + 108);
  *(v1 + 112) = 1;
  *(v1 + 113) = 1026;
  v11 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  v188 = (v1 + 113);
  v189 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
  v190 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  v192 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  v193 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  *v16 = 0;
  *(v16 + 4) = 1;
  v194 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted) = 2;
  v17 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  v195 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v196 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel) = 4;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  v198 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  *v19 = 0;
  *(v19 + 4) = 1;
  v199 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate, 1, 1, v12);
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
  v200 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
  v202 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
  *v21 = 0;
  *(v21 + 8) = 1;
  v203 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice) = 3;
  v204 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates) = 2;
  v22 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  v205 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v24 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
  v206 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
  v207 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
  v208 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
  v209 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
  v210 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
  v211 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
  *v29 = 0;
  *(v29 + 8) = 1;
  v212 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed) = 2;
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
  v213 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
  v214 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
  *v31 = 0;
  *(v31 + 8) = 1;
  v216 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused) = 2;
  v218 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate, 1, 1, v12);
  v32 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
  v219 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
  *v32 = 0;
  *(v32 + 8) = 1;
  v220 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame) = 3;
  v33 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
  v221 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
  v222 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
  v223 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
  v224 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
  v225 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
  *v37 = 0;
  *(v37 + 8) = 1;
  v226 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl) = 2;
  v38 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
  v227 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
  *v38 = 0;
  *(v38 + 8) = 1;
  v39 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
  v228 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
  *v39 = 0;
  *(v39 + 8) = 1;
  v197 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport) = MEMORY[0x277D84F90];
  v231 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent) = 3;
  v40 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  v232 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  v41 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  (*(*(v41 - 8) + 56))(v1 + v40, 1, 1, v41);
  v233 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState) = 3;
  v42 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
  v234 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
  v217 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
  *v43 = 0;
  *(v43 + 8) = 1;
  v235 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType) = 4;
  v236 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching) = 2;
  v237 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy) = 3;
  v238 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType) = 5;
  v229 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp) = 2;
  v230 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators) = 2;
  swift_beginAccess();
  v44 = *(a1 + 16);
  LOBYTE(v40) = *(a1 + 24);
  v45 = v180;
  swift_beginAccess();
  *v45 = v44;
  *(v1 + 24) = v40;
  swift_beginAccess();
  v46 = *(a1 + 32);
  LOBYTE(v44) = *(a1 + 40);
  v47 = v181;
  swift_beginAccess();
  *v47 = v46;
  *(v1 + 40) = v44;
  swift_beginAccess();
  v48 = *(a1 + 48);
  LOBYTE(v44) = *(a1 + 56);
  v49 = v182;
  swift_beginAccess();
  *v49 = v48;
  *(v1 + 56) = v44;
  swift_beginAccess();
  v50 = *(a1 + 64);
  LOBYTE(v44) = *(a1 + 72);
  v51 = v183;
  swift_beginAccess();
  *v51 = v50;
  *(v1 + 72) = v44;
  swift_beginAccess();
  v52 = *(a1 + 80);
  LOBYTE(v44) = *(a1 + 88);
  v53 = v184;
  swift_beginAccess();
  *v53 = v52;
  *(v1 + 88) = v44;
  swift_beginAccess();
  LODWORD(v52) = *(a1 + 92);
  LOBYTE(v44) = *(a1 + 96);
  v54 = v185;
  swift_beginAccess();
  *v54 = v52;
  *(v1 + 96) = v44;
  swift_beginAccess();
  LODWORD(v52) = *(a1 + 100);
  LOBYTE(v44) = *(a1 + 104);
  v55 = v186;
  swift_beginAccess();
  *v55 = v52;
  *(v1 + 104) = v44;
  swift_beginAccess();
  LODWORD(v52) = *(a1 + 108);
  LOBYTE(v44) = *(a1 + 112);
  v56 = v187;
  swift_beginAccess();
  *v56 = v52;
  *(v1 + 112) = v44;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + 113);
  v57 = v188;
  swift_beginAccess();
  *v57 = v52;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + 114);
  swift_beginAccess();
  *(v1 + 114) = v52;
  v58 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  v59 = v191;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v58, v191, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v60 = v189;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v59, v1 + v60, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
  v61 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse);
  swift_beginAccess();
  v62 = *v61;
  LOBYTE(v61) = *(v61 + 8);
  v63 = v190;
  swift_beginAccess();
  *v63 = v62;
  *(v63 + 8) = v61;
  v64 = a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  swift_beginAccess();
  LODWORD(v62) = *v64;
  LOBYTE(v64) = *(v64 + 4);
  v65 = v192;
  swift_beginAccess();
  *v65 = v62;
  *(v65 + 4) = v64;
  v66 = a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  swift_beginAccess();
  LODWORD(v62) = *v66;
  LOBYTE(v66) = *(v66 + 4);
  v67 = v193;
  swift_beginAccess();
  *v67 = v62;
  *(v67 + 4) = v66;
  v68 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
  swift_beginAccess();
  LOBYTE(v68) = *(a1 + v68);
  v69 = v194;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  v71 = v201;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v70, v201, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  v72 = v195;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v71, v1 + v72, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  swift_endAccess();
  v73 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
  swift_beginAccess();
  LOBYTE(v73) = *(a1 + v73);
  v74 = v196;
  swift_beginAccess();
  *(v1 + v74) = v73;
  v75 = a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  swift_beginAccess();
  LODWORD(v74) = *v75;
  LOBYTE(v75) = *(v75 + 4);
  v76 = v198;
  swift_beginAccess();
  *v76 = v74;
  *(v76 + 4) = v75;
  v77 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v77, v59, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v78 = v199;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v59, v1 + v78, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
  v79 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy);
  swift_beginAccess();
  v80 = *v79;
  LOBYTE(v79) = *(v79 + 8);
  v81 = v200;
  swift_beginAccess();
  *v81 = v80;
  *(v81 + 8) = v79;
  v82 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime);
  swift_beginAccess();
  v83 = *v82;
  LOBYTE(v82) = *(v82 + 8);
  v84 = v202;
  swift_beginAccess();
  *v84 = v83;
  *(v84 + 8) = v82;
  v85 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
  swift_beginAccess();
  LOBYTE(v85) = *(a1 + v85);
  v86 = v203;
  swift_beginAccess();
  *(v1 + v86) = v85;
  v87 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
  swift_beginAccess();
  LOBYTE(v87) = *(a1 + v87);
  v88 = v204;
  swift_beginAccess();
  *(v1 + v88) = v87;
  v89 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  v90 = v215;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v89, v215, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  v91 = v205;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v90, v1 + v91, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  swift_endAccess();
  v92 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope);
  swift_beginAccess();
  v93 = *v92;
  LOBYTE(v92) = *(v92 + 8);
  v94 = v206;
  swift_beginAccess();
  *v94 = v93;
  *(v94 + 8) = v92;
  v95 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope);
  swift_beginAccess();
  v96 = *v95;
  LOBYTE(v95) = *(v95 + 8);
  v97 = v207;
  swift_beginAccess();
  *v97 = v96;
  *(v97 + 8) = v95;
  v98 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude);
  swift_beginAccess();
  v99 = *v98;
  LOBYTE(v98) = *(v98 + 8);
  v100 = v208;
  swift_beginAccess();
  *v100 = v99;
  *(v100 + 8) = v98;
  v101 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty);
  swift_beginAccess();
  v102 = *v101;
  LOBYTE(v101) = *(v101 + 8);
  v103 = v209;
  swift_beginAccess();
  *v103 = v102;
  *(v103 + 8) = v101;
  v104 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude);
  swift_beginAccess();
  v105 = *v104;
  LOBYTE(v104) = *(v104 + 8);
  v106 = v210;
  swift_beginAccess();
  *v106 = v105;
  *(v106 + 8) = v104;
  v107 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty);
  swift_beginAccess();
  v108 = *v107;
  LOBYTE(v107) = *(v107 + 8);
  v109 = v211;
  swift_beginAccess();
  *v109 = v108;
  *(v109 + 8) = v107;
  v110 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
  swift_beginAccess();
  LOBYTE(v110) = *(a1 + v110);
  v111 = v212;
  swift_beginAccess();
  *(v1 + v111) = v110;
  v112 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy);
  swift_beginAccess();
  v113 = *v112;
  LOBYTE(v112) = *(v112 + 8);
  v114 = v213;
  swift_beginAccess();
  *v114 = v113;
  *(v114 + 8) = v112;
  v115 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy);
  swift_beginAccess();
  v116 = *v115;
  LOBYTE(v115) = *(v115 + 8);
  v117 = v214;
  swift_beginAccess();
  *v117 = v116;
  *(v117 + 8) = v115;
  v118 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
  swift_beginAccess();
  LOBYTE(v118) = *(a1 + v118);
  v119 = v216;
  swift_beginAccess();
  *(v1 + v119) = v118;
  v120 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v120, v59, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v121 = v218;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v59, v1 + v121, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
  v122 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy);
  swift_beginAccess();
  v123 = *v122;
  LOBYTE(v122) = *(v122 + 8);
  v124 = v219;
  swift_beginAccess();
  *v124 = v123;
  *(v124 + 8) = v122;
  v125 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
  swift_beginAccess();
  LOBYTE(v125) = *(a1 + v125);
  v126 = v220;
  swift_beginAccess();
  *(v1 + v126) = v125;
  v127 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse);
  swift_beginAccess();
  v128 = *v127;
  LOBYTE(v127) = *(v127 + 8);
  v129 = v221;
  swift_beginAccess();
  *v129 = v128;
  *(v129 + 8) = v127;
  v130 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy);
  swift_beginAccess();
  v131 = *v130;
  LOBYTE(v130) = *(v130 + 8);
  v132 = v222;
  swift_beginAccess();
  *v132 = v131;
  *(v132 + 8) = v130;
  v133 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError);
  swift_beginAccess();
  v134 = *v133;
  LOBYTE(v133) = *(v133 + 8);
  v135 = v223;
  swift_beginAccess();
  *v135 = v134;
  *(v135 + 8) = v133;
  v136 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude);
  swift_beginAccess();
  v137 = *v136;
  LOBYTE(v136) = *(v136 + 8);
  v138 = v224;
  swift_beginAccess();
  *v138 = v137;
  *(v138 + 8) = v136;
  v139 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy);
  swift_beginAccess();
  v140 = *v139;
  LOBYTE(v139) = *(v139 + 8);
  v141 = v225;
  swift_beginAccess();
  *v141 = v140;
  *(v141 + 8) = v139;
  v142 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
  swift_beginAccess();
  LOBYTE(v142) = *(a1 + v142);
  v143 = v226;
  swift_beginAccess();
  *(v1 + v143) = v142;
  v144 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude);
  swift_beginAccess();
  v145 = *v144;
  LOBYTE(v144) = *(v144 + 8);
  v146 = v227;
  swift_beginAccess();
  *v146 = v145;
  *(v146 + 8) = v144;
  v147 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy);
  swift_beginAccess();
  v148 = *v147;
  LOBYTE(v147) = *(v147 + 8);
  v149 = v228;
  swift_beginAccess();
  *v149 = v148;
  *(v149 + 8) = v147;
  v150 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
  swift_beginAccess();
  v151 = *(a1 + v150);
  v152 = v197;
  swift_beginAccess();
  *(v1 + v152) = v151;

  v153 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
  swift_beginAccess();
  LOBYTE(v153) = *(a1 + v153);
  v154 = v231;
  swift_beginAccess();
  *(v1 + v154) = v153;
  v155 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  v156 = v239;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v155, v239, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  v157 = v232;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v156, v1 + v157, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  swift_endAccess();
  v158 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
  swift_beginAccess();
  LOBYTE(v158) = *(a1 + v158);
  v159 = v233;
  swift_beginAccess();
  *(v1 + v159) = v158;
  v160 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor);
  swift_beginAccess();
  v161 = *v160;
  LOBYTE(v160) = *(v160 + 8);
  v162 = v234;
  swift_beginAccess();
  *v162 = v161;
  *(v162 + 8) = v160;
  v163 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor);
  swift_beginAccess();
  v164 = *v163;
  LOBYTE(v163) = *(v163 + 8);
  v165 = v217;
  swift_beginAccess();
  *v165 = v164;
  *(v165 + 8) = v163;
  v166 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
  swift_beginAccess();
  LOBYTE(v166) = *(a1 + v166);
  v167 = v235;
  swift_beginAccess();
  *(v1 + v167) = v166;
  v168 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
  swift_beginAccess();
  LOBYTE(v168) = *(a1 + v168);
  v169 = v236;
  swift_beginAccess();
  *(v1 + v169) = v168;
  v170 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
  swift_beginAccess();
  LOBYTE(v170) = *(a1 + v170);
  v171 = v237;
  swift_beginAccess();
  *(v1 + v171) = v170;
  v172 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
  swift_beginAccess();
  LOBYTE(v172) = *(a1 + v172);
  v173 = v238;
  swift_beginAccess();
  *(v1 + v173) = v172;
  v174 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
  swift_beginAccess();
  LOBYTE(v174) = *(a1 + v174);
  v175 = v229;
  swift_beginAccess();
  *(v1 + v175) = v174;
  v176 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v176);
  v177 = v230;
  swift_beginAccess();
  *(v1 + v177) = a1;
  return v1;
}

uint64_t specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType.init(rawValue:)(uint64_t a1)
{
  if ((a1 + 1) < 4)
  {
    return a1 + 1;
  }

  else
  {
    return 4;
  }
}

uint64_t specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v30 - v4;
  *(v1 + 16) = 67306568;
  *(v1 + 20) = 2;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  v31 = (v1 + 32);
  *(v1 + 41) = 1026;
  *(v1 + 48) = 0;
  v32 = (v1 + 41);
  v33 = (v1 + 48);
  *(v1 + 40) = 1;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  v34 = (v1 + 64);
  *(v1 + 72) = 1;
  *(v1 + 73) = 1096;
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v35 = (v1 + 73);
  v36 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v37 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  v7(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v6);
  v8 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence) = 6;
  swift_beginAccess();
  LOBYTE(v7) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v7;
  swift_beginAccess();
  v9 = *(a1 + 17);
  swift_beginAccess();
  *(v1 + 17) = v9;
  swift_beginAccess();
  v10 = *(a1 + 18);
  swift_beginAccess();
  *(v1 + 18) = v10;
  swift_beginAccess();
  v11 = *(a1 + 19);
  swift_beginAccess();
  *(v1 + 19) = v11;
  swift_beginAccess();
  v12 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 20) = v12;
  swift_beginAccess();
  v13 = *(a1 + 24);
  v14 = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v13;
  *(v1 + 28) = v14;
  swift_beginAccess();
  v15 = *(a1 + 32);
  LOBYTE(v13) = *(a1 + 40);
  v16 = v31;
  swift_beginAccess();
  *v16 = v15;
  *(v1 + 40) = v13;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 41);
  v17 = v32;
  swift_beginAccess();
  *v17 = v16;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 42);
  swift_beginAccess();
  *(v1 + 42) = v16;
  swift_beginAccess();
  v18 = *(a1 + 48);
  LOBYTE(v17) = *(a1 + 56);
  v19 = v33;
  swift_beginAccess();
  *v19 = v18;
  *(v1 + 56) = v17;
  swift_beginAccess();
  v20 = *(a1 + 64);
  LOBYTE(v17) = *(a1 + 72);
  v21 = v34;
  swift_beginAccess();
  *v21 = v20;
  *(v1 + 72) = v17;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 73);
  v22 = v35;
  swift_beginAccess();
  *v22 = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 74);
  swift_beginAccess();
  *(v1 + 74) = v20;
  v23 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v24 = v38;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v38, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v25 = v36;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v24, v1 + v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v26, v24, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v27 = v37;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v24, v1 + v27, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v28);
  swift_beginAccess();
  *(v1 + v8) = a1;
  return v1;
}

unint64_t specialized CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType.init(rawValue:)(unint64_t result)
{
  if (result >= 0x43)
  {
    return 67;
  }

  return result;
}

unint64_t specialized CLP_LogEntry_PrivateData_WorkoutEvent.EventType.init(rawValue:)(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

unint64_t specialized CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType.init(rawValue:)(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t specialized CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v61 - v4;
  v6 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  v62 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  v63 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame) = 3;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  v64 = v13;
  v65 = v14;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  v66 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  v67 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved) = 2;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  v68 = v17;
  v69 = v18;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  v70 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  v71 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  v72 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v22, v5, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v6, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg);
  swift_beginAccess();
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  swift_beginAccess();
  *v8 = v24;
  *(v8 + 8) = v23;
  v25 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg);
  swift_beginAccess();
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  swift_beginAccess();
  *v9 = v26;
  *(v9 + 8) = v25;
  v27 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM);
  swift_beginAccess();
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  swift_beginAccess();
  *v10 = v28;
  *(v10 + 8) = v27;
  v29 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  v31 = v62;
  swift_beginAccess();
  *v31 = v30;
  *(v31 + 8) = v29;
  v32 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  v34 = v63;
  swift_beginAccess();
  *v34 = v33;
  *(v34 + 8) = v32;
  v35 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v64;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg);
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  v39 = v65;
  swift_beginAccess();
  *v39 = v38;
  *(v39 + 8) = v37;
  v40 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg);
  swift_beginAccess();
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  v42 = v66;
  swift_beginAccess();
  *v42 = v41;
  *(v42 + 8) = v40;
  v43 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = v67;
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 8) = v43;
  v46 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v68;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg);
  swift_beginAccess();
  v49 = *v48;
  LOBYTE(v48) = *(v48 + 8);
  v50 = v69;
  swift_beginAccess();
  *v50 = v49;
  *(v50 + 8) = v48;
  v51 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg);
  swift_beginAccess();
  v52 = *v51;
  LOBYTE(v51) = *(v51 + 8);
  v53 = v70;
  swift_beginAccess();
  *v53 = v52;
  *(v53 + 8) = v51;
  v54 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM);
  swift_beginAccess();
  v55 = *v54;
  LOBYTE(v54) = *(v54 + 8);
  v56 = v71;
  swift_beginAccess();
  *v56 = v55;
  *(v56 + 8) = v54;
  v57 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM);
  swift_beginAccess();
  v58 = *v57;
  LOBYTE(v57) = *(v57 + 8);
  v59 = v72;
  swift_beginAccess();
  *v59 = v58;
  *(v59 + 8) = v57;
  return v1;
}

uint64_t specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData) = 20;
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  v47 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v48 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode) = 2;
  v49 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn) = 2;
  v51 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen) = 2;
  v52 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled) = 2;
  v53 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected) = 2;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  v46 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  v55 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  *v19 = 0;
  *(v19 + 4) = 1;
  v56 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode) = 2;
  v20 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v20, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v21 = a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  LODWORD(v20) = *v21;
  LOBYTE(v21) = *(v21 + 4);
  swift_beginAccess();
  *v12 = v20;
  *(v12 + 4) = v21;
  v22 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + v22);
  swift_beginAccess();
  *(v1 + v13) = v22;
  v23 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  v24 = v50;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v50, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v24, v1 + v14, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  v26 = v54;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v54, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v27 = v47;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v26, v1 + v27, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + v28);
  v29 = v48;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  LOBYTE(v30) = *(a1 + v30);
  v31 = v49;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + v32);
  v33 = v51;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  LOBYTE(v34) = *(a1 + v34);
  v35 = v52;
  swift_beginAccess();
  *(v1 + v35) = v34;
  v36 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  LOBYTE(v36) = *(a1 + v36);
  v37 = v53;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  swift_beginAccess();
  LODWORD(v37) = *v38;
  LOBYTE(v38) = *(v38 + 4);
  v39 = v46;
  swift_beginAccess();
  *v39 = v37;
  *(v39 + 4) = v38;
  v40 = a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  swift_beginAccess();
  LODWORD(v37) = *v40;
  LOBYTE(v40) = *(v40 + 4);
  v41 = v55;
  swift_beginAccess();
  *v41 = v37;
  *(v41 + 4) = v40;
  v42 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v42);
  v43 = v56;
  swift_beginAccess();
  *(v1 + v43) = a1;
  return v1;
}

unint64_t specialized CLP_LogEntry_PrivateData_DeviceStatus.NotificationType.init(rawValue:)(unint64_t result)
{
  if (result >= 0x14)
  {
    return 20;
  }

  return result;
}

unint64_t specialized CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType.init(rawValue:)(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

uint64_t specialized CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v32 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate, 1, 1, v12);
  v34 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, 1, 1, v12);
  v35 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel) = 8;
  v36 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection) = 2;
  v37 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation) = 2;
  v33 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p) = 2;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v15, v8, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v8, v1 + v9, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v16, v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v11, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v18 = v32;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v18, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v20 = v34;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v20, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + v21);
  v22 = v35;
  swift_beginAccess();
  *(v1 + v22) = v21;
  v23 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + v23);
  v24 = v36;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + v25);
  v26 = v37;
  swift_beginAccess();
  *(v1 + v26) = v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + v27);
  v28 = v33;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = a1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  swift_beginAccess();
  LODWORD(v27) = *v29;
  LOBYTE(v29) = *(v29 + 4);
  swift_beginAccess();
  *v14 = v27;
  *(v14 + 4) = v29;
  return v1;
}

uint64_t specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v1 + v10, 1, 1, v11);
  v13 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime, 1, 1, v11);
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime, 1, 1, v11);
  v15 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime, 1, 1, v11);
  v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  v36 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v35 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v21, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v22, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v24, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  v26 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v37, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v27 = v36;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v26, v1 + v27, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v29 = v38;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v28, v38, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v30 = v35;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v29, v1 + v30, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
  v31 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM);
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  swift_beginAccess();
  *v20 = v32;
  *(v20 + 8) = v31;
  return v1;
}

uint64_t specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 1;
  *(v1 + 44) = 0;
  *(v1 + 48) = 1;
  *(v1 + 52) = 0;
  *(v1 + 60) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 68) = 0;
  *(v1 + 72) = 1;
  *(v1 + 76) = 0;
  *(v1 + 84) = 0;
  *(v1 + 80) = 1;
  *(v1 + 88) = 1;
  *(v1 + 92) = 0;
  *(v1 + 96) = 1;
  *(v1 + 100) = 0;
  *(v1 + 108) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 1;
  *(v1 + 116) = 0;
  *(v1 + 120) = 1;
  *(v1 + 124) = 0;
  *(v1 + 128) = 1;
  *(v1 + 129) = 33686019;
  *(v1 + 133) = 4;
  *(v1 + 136) = 0;
  *(v1 + 140) = 1;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 44);
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 44) = v5;
  *(v1 + 48) = v7;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 52);
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 52) = v5;
  *(v1 + 56) = v8;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 60);
  v9 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 60) = v5;
  *(v1 + 64) = v9;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 68);
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 68) = v5;
  *(v1 + 72) = v10;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 76);
  v11 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 76) = v5;
  *(v1 + 80) = v11;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 84);
  v12 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 84) = v5;
  *(v1 + 88) = v12;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 92);
  v13 = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 92) = v5;
  *(v1 + 96) = v13;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 100);
  v14 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 100) = v5;
  *(v1 + 104) = v14;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 108);
  v15 = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 108) = v5;
  *(v1 + 112) = v15;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 116);
  v16 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 116) = v5;
  *(v1 + 120) = v16;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 124);
  v17 = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 124) = v5;
  *(v1 + 128) = v17;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 129);
  swift_beginAccess();
  *(v1 + 129) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 130);
  swift_beginAccess();
  *(v1 + 130) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 131);
  swift_beginAccess();
  *(v1 + 131) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 132) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 133);
  swift_beginAccess();
  *(v1 + 133) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 136);
  LOBYTE(a1) = *(a1 + 140);
  swift_beginAccess();
  *(v1 + 136) = v5;
  *(v1 + 140) = a1;
  return v1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 4)
  {
    if (v7 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[7];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[8];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[9];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v13 = MEMORY[0x28223BE20](v12);
  v60 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v61 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  v17 = *(v61 + 28);
  v59 = v12;
  v18 = *(v12 + 48);
  v63 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v62 = a2;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      v20 = v4;
      outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v21 = v16;
LABEL_14:
    outlined destroy of Any?(v21, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v20 = v4;
  v22 = &v16[v18];
  v23 = v58;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v22, v58, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v24 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v11, v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v25 = v60;
  v26 = v61;
  v27 = *(v61 + 32);
  v28 = *(v59 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63 + v27, v60, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v29 = v62;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v62 + v27, v25 + v28, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v30 = v20;
  if (v19(v25, 1, v20) == 1)
  {
    if (v19((v25 + v28), 1, v20) == 1)
    {
      outlined destroy of Any?(v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v31 = v57;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v25, v57, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v19((v25 + v28), 1, v30) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_13:
    v21 = v25;
    goto LABEL_14;
  }

  v34 = v58;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v25 + v28, v58, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v35 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v31, v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v36 = v26[9];
  v37 = v63;
  v38 = (v63 + v36);
  v39 = *(v63 + v36 + 4);
  v40 = (v29 + v36);
  v41 = *(v29 + v36 + 4);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      goto LABEL_15;
    }
  }

  v42 = v26[10];
  v43 = *(v63 + v42);
  v44 = *(v29 + v42);
  if (v43 == 5)
  {
    if (v44 != 5)
    {
      goto LABEL_15;
    }
  }

  else if (v43 != v44)
  {
    goto LABEL_15;
  }

  v45 = v26[11];
  v46 = (v63 + v45);
  v47 = *(v63 + v45 + 4);
  v48 = (v29 + v45);
  v49 = *(v29 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      goto LABEL_15;
    }
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(*v63, *v29) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(v37[1], v29[1]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v50 = v26[12];
  v51 = *(v37 + v50);
  v52 = *(v29 + v50);
  if (v51 == 2)
  {
    if (v52 == 2)
    {
      goto LABEL_41;
    }

LABEL_15:
    v32 = 0;
    return v32 & 1;
  }

  if (v52 == 2 || ((v51 ^ v52) & 1) != 0)
  {
    goto LABEL_15;
  }

LABEL_41:
  v53 = v26[13];
  v54 = *(v37 + v53);
  v55 = *(v29 + v53);
  if (v54 == 2)
  {
    if (v55 == 2)
    {
LABEL_46:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_15;
  }

  v32 = 0;
  if (v55 != 2 && ((v55 ^ v54) & 1) == 0)
  {
    goto LABEL_46;
  }

  return v32 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
  v35 = a1;
  v14 = v34[5];
  v15 = *(v11 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v33;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v15], v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_10:
  v21 = v34[6];
  v22 = *(v35 + v21);
  v23 = *(a2 + v21);
  if (v22 == 4)
  {
    if (v23 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_7;
  }

  v24 = v34[7];
  v25 = (v35 + v24);
  v26 = *(v35 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      goto LABEL_7;
    }
  }

  v29 = v34[8];
  v30 = *(v35 + v29);
  v31 = *(a2 + v29);
  if (v30 == 4)
  {
    if (v31 == 4)
    {
      goto LABEL_24;
    }
  }

  else if (v30 == v31)
  {
LABEL_24:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_PedometerPathStraightness.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v13 = MEMORY[0x28223BE20](v12);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v52 = type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0);
  v53 = a1;
  v17 = v52[5];
  v49 = v12;
  v18 = *(v12 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v54 = a2;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v20 = v16;
LABEL_7:
    outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v23 = &v16[v18];
  v24 = v51;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v23, v51, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v25 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v11, v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v25 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = v52[6];
  v27 = (v53 + v26);
  v28 = *(v53 + v26 + 8);
  v29 = v54;
  v30 = (v54 + v26);
  v31 = *(v54 + v26 + 8);
  if (v28)
  {
    if (!v31)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v27 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      goto LABEL_8;
    }
  }

  v32 = v52[7];
  v33 = (v53 + v32);
  v34 = *(v53 + v32 + 8);
  v35 = (v54 + v32);
  v36 = *(v54 + v32 + 8);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      goto LABEL_8;
    }
  }

  v37 = v4;
  v38 = v52[8];
  v39 = v50;
  v40 = *(v49 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53 + v38, v50, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v41 = v29 + v38;
  v42 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41, v39 + v40, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v19(v39, 1, v37) == 1)
  {
    if (v19((v39 + v40), 1, v37) == 1)
    {
      outlined destroy of Any?(v39, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_30:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v21 & 1;
    }

    goto LABEL_28;
  }

  v43 = v48;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v48, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v19((v39 + v40), 1, v42) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v43, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_28:
    v20 = v39;
    goto LABEL_7;
  }

  v44 = v39 + v40;
  v45 = v51;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v44, v51, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v46 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v43, v45, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v43, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v39, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v46)
  {
    goto LABEL_30;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}