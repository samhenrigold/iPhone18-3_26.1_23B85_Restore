BOOL Proto_Gnss_Emergency_ShapeInfo.hasEllipsoidPoint.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearEllipsoidPoint()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointAltitude.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + *(v8 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointAltitude.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  v11 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.pointAltitude.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + *(v9 + 24);
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  }

  return Proto_Gnss_Emergency_ShapeInfo.pointAltitude.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.pointAltitude.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasPointAltitude.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearPointAltitude()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.polygon.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v10 = a1 + *(v8 + 24);
  *v10 = 0;
  v10[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.polygon.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  v11 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.polygon.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 24);
    *v19 = 0;
    v19[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  }

  return Proto_Gnss_Emergency_ShapeInfo.polygon.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.polygon.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_Polygon);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_Polygon);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_Polygon);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasPolygon.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearPolygon()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.noLocation.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_ShapeInfo.noLocation.modify;
}

uint64_t Proto_Gnss_Emergency_LocEstimate.shapeType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 20));
  if (v1 == 9)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_LocEstimate.shapeType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocEstimate.shapeType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 9)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_LocEstimate.shape.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v9) = static Proto_Gnss_Emergency_ShapeInfo._StorageClass.defaultInstance;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_LocEstimate.shape.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_LocEstimate.shape.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Proto_Gnss_Emergency_ShapeInfo._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  }

  return Proto_Gnss_Emergency_LocEstimate.shape.modify;
}

uint64_t Proto_Gnss_Emergency_HorizontalVelocity.bearing.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizontalVelocity.bearing.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizontalVelocity.clearBearing()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizontalVelocity.horizontalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizontalVelocity.horizontalSpeed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizontalVelocity.clearHorizontalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertVelocity.bearing.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertVelocity.bearing.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertVelocity.clearBearing()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertVelocity.horizontalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertVelocity.horizontalSpeed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertVelocity.clearHorizontalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertVelocity.verticalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertVelocity.verticalSpeed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertVelocity.clearVerticalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertVelocity.verticalSpeedDirection.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertVelocity.verticalSpeedDirection.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertVelocity.clearVerticalSpeedDirection()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.bearing.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.bearing.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.clearBearing()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.horizontalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.horizontalSpeed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.clearHorizontalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.uncertaintySpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.uncertaintySpeed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.clearUncertaintySpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.bearing.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.bearing.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearBearing()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.horizontalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.horizontalSpeed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearHorizontalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.verticalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.verticalSpeed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearVerticalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.verticalSpeedDirection.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.verticalSpeedDirection.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearVerticalSpeedDirection()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.horizUncertaintySpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.horizUncertaintySpeed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearHorizUncertaintySpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.vertUncertaintySpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.vertUncertaintySpeed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearVertUncertaintySpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizontal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizontal.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_VelocityInfo.horizontal.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  }

  return Proto_Gnss_Emergency_VelocityInfo.horizontal.modify;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithVert.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithVert.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_VelocityInfo.horizWithVert.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  }

  return Proto_Gnss_Emergency_VelocityInfo.horizWithVert.modify;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithUncertainty.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithUncertainty.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_VelocityInfo.horizWithUncertainty.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  }

  return Proto_Gnss_Emergency_VelocityInfo.horizWithUncertainty.modify;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithVertUncertainty.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 32), v5, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v7[9];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v7[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithVertUncertainty.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_VelocityInfo.horizWithVertUncertainty.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[9];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[10];
    *v22 = 0;
    *(v22 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  }

  return Proto_Gnss_Emergency_VelocityInfo.horizWithVertUncertainty.modify;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v2[8];
  v10 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1 + v9, 1, 1, v10);
}

uint64_t Proto_Gnss_Emergency_VelocityEstimate.velocityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_VelocityEstimate.velocityType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_VelocityEstimate.velocityType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_VelocityEstimate.velocity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  }

  UnknownStorage.init()();
  v9 = v7[5];
  v10 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v7[6];
  v12 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v7[7];
  v14 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = v7[8];
  v16 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityEstimate.velocity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_VelocityEstimate.velocity.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v9[5];
    v18 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = v9[6];
    v20 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v9[7];
    v22 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    v23 = v9[8];
    v24 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  }

  return Proto_Gnss_Emergency_VelocityEstimate.velocity.modify;
}

void (*Proto_Gnss_Emergency_PositionReport.result.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_PositionReport.result.modify;
}

void (*Proto_Gnss_Emergency_PositionReport.responseType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionReport.responseType.modify;
}

uint64_t Proto_Gnss_Emergency_PositionReport.sessionInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v11 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_PositionReport.sessionInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    *(v14 + v9[6]) = 7;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  return Proto_Gnss_Emergency_PositionReport.sessionInfo.modify;
}

void Proto_Gnss_Emergency_PositionReport.sessionInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasSessionInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionReport.clearSessionInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_PositionReport.locationInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a1 + v8[8]) = 4;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v8[10];
  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.locationInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  v11 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_PositionReport.locationInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    *(v14 + v9[8]) = 4;
    v22 = v14 + v9[9];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v9[10];
    v24 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  }

  return Proto_Gnss_Emergency_PositionReport.locationInfo.modify;
}

void Proto_Gnss_Emergency_PositionReport.locationInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasLocationInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionReport.clearLocationInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_PositionReport.ganssLocationInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 6;
  v10 = a1 + v8[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a1 + v8[9]) = 4;
  v13 = a1 + v8[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.ganssLocationInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_PositionReport.ganssLocationInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    *(v14 + v9[9]) = 4;
    v22 = v14 + v9[10];
    *v22 = 0;
    *(v22 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  }

  return Proto_Gnss_Emergency_PositionReport.ganssLocationInfo.modify;
}

void Proto_Gnss_Emergency_PositionReport.ganssLocationInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasGanssLocationInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionReport.clearGanssLocationInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_PositionReport.locEstimate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 9;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.locEstimate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  v11 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_PositionReport.locEstimate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 9;
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  }

  return Proto_Gnss_Emergency_PositionReport.locEstimate.modify;
}

void Proto_Gnss_Emergency_PositionReport.locEstimate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasLocEstimate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionReport.clearLocEstimate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_PositionReport.velocityEstimate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 6;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.velocityEstimate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  v11 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_PositionReport.velocityEstimate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 6;
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  }

  return Proto_Gnss_Emergency_PositionReport.velocityEstimate.modify;
}

void Proto_Gnss_Emergency_PositionReport.velocityEstimate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasVelocityEstimate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionReport.clearVelocityEstimate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.noLocation.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  swift_beginAccess();
  if (v3[4])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.noLocation.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v14 = swift_allocObject();
    a4(v13);

    *(v9 + v11) = v14;
    v13 = v14;
  }

  v15 = v13 + *a5;
  result = swift_beginAccess();
  *v15 = a1;
  *(v15 + 4) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_PositionReport.technologySource.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionReport.technologySource.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.noLocation.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 84);
  v11 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 72);
    a3(0);
    v16 = swift_allocObject();
    a4(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  v17 = v13 + *a5;
  swift_beginAccess();
  *v17 = v9;
  *(v17 + 4) = 0;

  free(v8);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasNoLocation.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 4) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.clearNoLocation()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    a3(v11);

    *(v8 + v9) = v12;
    v11 = v12;
  }

  v13 = v11 + *a4;
  result = swift_beginAccess();
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.doppler.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.doppler.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearDoppler()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.satelliteID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.satelliteID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearSatelliteID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.cnRatio.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.cnRatio.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearCnRatio()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.pseudoRangeRmsError.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.pseudoRangeRmsError.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearPseudoRangeRmsError()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.multiPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 36));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.multiPath.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.multiPath.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.codePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.codePhase.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.integerCodePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.integerCodePhase.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearIntegerCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.carrierQualityInd.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.carrierQualityInd.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 48);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearCarrierQualityInd()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.adr.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.adr.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 52);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearAdr()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_GanssMeasurementElement.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a1 + result[9]) = 6;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[11];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.signalID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssSignalMeasurementInfo.signalID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssSignalMeasurementInfo.clearSignalID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.codePhaseAmbiguity.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssSignalMeasurementInfo.codePhaseAmbiguity.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssSignalMeasurementInfo.clearCodePhaseAmbiguity()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.measurementCount.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssSignalMeasurementInfo.measurementCount.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssSignalMeasurementInfo.clearMeasurementCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  result = UnknownStorage.init()();
  v4 = a1 + v2[6];
  *v4 = 0;
  v4[4] = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  v6[4] = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.ganssID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 20));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.ganssID.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.ganssID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.signalMeasurementInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v9 = a1 + v7[6];
  *v9 = 0;
  v9[4] = 1;
  v10 = a1 + v7[7];
  *v10 = 0;
  v10[4] = 1;
  v11 = a1 + v7[8];
  *v11 = 0;
  v11[4] = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.signalMeasurementInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.signalMeasurementInfo.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v17 = v14 + v9[6];
    *v17 = 0;
    v17[4] = 1;
    v18 = v14 + v9[7];
    *v18 = 0;
    v18[4] = 1;
    v19 = v14 + v9[8];
    *v19 = 0;
    v19[4] = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  }

  return Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.signalMeasurementInfo.modify;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.timeID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.timeID.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.timeID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssTod.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.ganssTod.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurements.clearGanssTod()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssTodFrac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.ganssTodFrac.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurements.clearGanssTodFrac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.todDelta.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.todDelta.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurements.clearTodDelta()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssTodUncertainity.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.ganssTodUncertainity.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurements.clearGanssTodUncertainity()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.measuredTimeParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 40), v5, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  }

  UnknownStorage.init()();
  *(a1 + *(v7 + 20)) = 6;
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.measuredTimeParams.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 40);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GanssMeasurements.measuredTimeParams.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 6;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  }

  return Proto_Gnss_Emergency_GanssMeasurements.measuredTimeParams.modify;
}

BOOL Proto_Gnss_Emergency_LocationInfo.hasGpsTod.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v12 + 40), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v14;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.clearGpsTod()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurementsCount.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurementsCount.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurements.clearGanssMeasurementsCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 48), v5, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  }

  UnknownStorage.init()();
  *(a1 + *(v7 + 20)) = 7;
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurement.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 48);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurement.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 48);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 7;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  }

  return Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurement.modify;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  *(a1 + v2[5]) = 6;
  v3 = a1 + v2[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + v2[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v2[10];
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v2[12];
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a1 + v10, 1, 1, v11);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.doppler.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.doppler.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearDoppler()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.wholeChips.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.wholeChips.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearWholeChips()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.fracChips.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.fracChips.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearFracChips()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.satelliteID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.satelliteID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearSatelliteID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.cnRatio.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.cnRatio.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearCnRatio()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.pseudoRangeRmsError.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.pseudoRangeRmsError.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearPseudoRangeRmsError()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.multiPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 44));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.multiPath.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.multiPath.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 44);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.codePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.codePhase.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 48);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.integerCodePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.integerCodePhase.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 52);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearIntegerCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_GpsMeasurementElement.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  *(a1 + result[11]) = 6;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.sessionID.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v12 = swift_allocObject();
    v13 = v11;
    v11 = v12;
    a4(v13);
    *(v7 + v9) = v12;
  }

  result = swift_beginAccess();
  *(v11 + 16) = a1;
  *(v11 + 20) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.gpsTow.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.gpsTow.modify;
}

void Proto_Gnss_Emergency_SessionStatus.sessionID.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 84);
  v9 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 84);
    v13 = *(v6 + 72);
    a3(0);
    v14 = swift_allocObject();
    v15 = v11;
    v11 = v14;
    a4(v15);
    *(v13 + v12) = v14;
  }

  swift_beginAccess();
  *(v11 + 16) = v7;
  *(v11 + 20) = 0;

  free(v6);
}

uint64_t Proto_Gnss_Emergency_SessionStatus.clearSessionID()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    a3(v11);
    *(v6 + v7) = v10;
  }

  result = swift_beginAccess();
  *(v9 + 16) = 0;
  *(v9 + 20) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.responseTime.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 28))
  {
    return 0;
  }

  else
  {
    return *(v2 + 24);
  }
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.gpsWeek.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 28) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.gpsWeek.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.gpsWeek.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.gpsWeek.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 28) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasResponseTime.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 28) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurements.clearGpsWeek()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v5 = swift_allocObject();
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 24) = 0;
  *(v4 + 28) = 1;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalAccuracy.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 36))
  {
    return 0;
  }

  else
  {
    return *(v2 + 32);
  }
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.gpsTimeUncertainty.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 32) = a1;
  *(v6 + 36) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.gpsTimeUncertainty.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 36))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.gpsTimeUncertainty.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.gpsTimeUncertainty.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 32) = v3;
  *(v7 + 36) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasHorizontalAccuracy.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 36) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurements.clearGpsTimeUncertainty()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v5 = swift_allocObject();
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 32) = 0;
  *(v4 + 36) = 1;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.velocityRequested.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 44))
  {
    return 0;
  }

  else
  {
    return *(v2 + 40);
  }
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.nrOfSats.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 40) = a1;
  *(v6 + 44) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.nrOfSats.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v6 + 44))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.nrOfSats.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.nrOfSats.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 40) = v3;
  *(v7 + 44) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasVelocityRequested.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 44) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurements.clearNrOfSats()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v5 = swift_allocObject();
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 40) = 0;
  *(v4 + 44) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.measurements.getter()
{
  type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  swift_beginAccess();
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.measurements.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  swift_beginAccess();
  *(v6 + 48) = a1;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.measurements.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 48);

  return Proto_Gnss_Emergency_GpsMeasurements.measurements.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.measurements.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v10 = swift_allocObject();
      v11 = v7;
      v7 = v10;
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v11);
      *(v9 + v8) = v10;
    }

    swift_beginAccess();
    *(v7 + 48) = v3;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 88);
      v15 = *(v2 + 80);
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v16 = swift_allocObject();
      v17 = v13;
      v13 = v16;
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v17);
      *(v15 + v14) = v16;
    }

    swift_beginAccess();
    *(v13 + 48) = v3;
  }

  free(v2);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.measuredTimeParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 6;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.measuredTimeParams.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GpsMeasurements.measuredTimeParams.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 6;
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  }

  return Proto_Gnss_Emergency_GpsMeasurements.measuredTimeParams.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.measuredTimeParams.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsMeasurements.hasMeasuredTimeParams.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurements.clearMeasuredTimeParams()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  swift_endAccess();
}

void (*Proto_Gnss_Emergency_GpsMeasurements.codePhaseAmbiguity.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.codePhaseAmbiguity.modify;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.codePhaseAmbiguity.setter(int a1, void *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v10);
    *(v4 + v6) = v9;
  }

  v11 = v8 + *a2;
  result = swift_beginAccess();
  *v11 = a1;
  *(v11 + 4) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.gpsTodpresent.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.gpsTodpresent.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.codePhaseAmbiguity.modify(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 84);
    v11 = *(v4 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v12 = swift_allocObject();
    v13 = v9;
    v9 = v12;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v13);
    *(v11 + v10) = v12;
  }

  v14 = v9 + *a3;
  swift_beginAccess();
  *v14 = v5;
  *(v14 + 4) = 0;

  free(v4);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.clearCodePhaseAmbiguity()(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v8);
    *(v3 + v4) = v7;
  }

  v9 = v6 + *a1;
  result = swift_beginAccess();
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.gpsTod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.gpsTod.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GpsMeasurements.gpsTod.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  return Proto_Gnss_Emergency_GpsMeasurements.gpsTod.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.gpsTod.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsMeasurements.hasGpsTod.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurements.clearGpsTod()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_PositionReport.result.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 16) == 9)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

uint64_t Proto_Gnss_Emergency_PositionReport.result.setter(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v9) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 16) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_MeasurementReport.result.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_MeasurementReport.result.modify;
}

void Proto_Gnss_Emergency_PositionReport.result.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 84);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 80);
    v13 = *(v6 + 72);
    a3(0);
    v14 = swift_allocObject();
    a4(v11);

    *(v13 + v12) = v14;
    v11 = v14;
  }

  swift_beginAccess();
  *(v11 + 16) = v7;

  free(v6);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasResult.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return *(v2 + 16) != 9;
}

uint64_t Proto_Gnss_Emergency_PositionReport.clearResult()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v10 = swift_allocObject();
    a3(v9);

    *(v6 + v7) = v10;
    v9 = v10;
  }

  result = swift_beginAccess();
  *(v9 + 16) = 9;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.responseType.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 24))
  {
    return 0;
  }

  else
  {
    return *(v2 + 20);
  }
}

uint64_t Proto_Gnss_Emergency_PositionReport.responseType.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v9) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 20) = a1;
  *(v11 + 24) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_MeasurementReport.responseType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_MeasurementReport.responseType.modify;
}

void Proto_Gnss_Emergency_PositionReport.responseType.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 84);
  v9 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 84);
    v13 = *(v6 + 72);
    a3(0);
    v14 = swift_allocObject();
    a4(v11);

    *(v13 + v12) = v14;
    v11 = v14;
  }

  swift_beginAccess();
  *(v11 + 20) = v7;
  *(v11 + 24) = 0;

  free(v6);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasResponseType.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 24) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionReport.clearResponseType()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v10 = swift_allocObject();
    a3(v9);

    *(v6 + v7) = v10;
    v9 = v10;
  }

  result = swift_beginAccess();
  *(v9 + 20) = 0;
  *(v9 + 24) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.sessionInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v11 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReport.sessionInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    *(v14 + v9[6]) = 7;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  return Proto_Gnss_Emergency_MeasurementReport.sessionInfo.modify;
}

void Proto_Gnss_Emergency_MeasurementReport.sessionInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReport.hasSessionInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReport.clearSessionInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.gpsMeasurements.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  v11 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReport.gpsMeasurements.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static Proto_Gnss_Emergency_GpsMeasurements._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  }

  return Proto_Gnss_Emergency_MeasurementReport.gpsMeasurements.modify;
}

void Proto_Gnss_Emergency_MeasurementReport.gpsMeasurements.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReport.hasGpsMeasurements.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReport.clearGpsMeasurements()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.ganssMeasurements.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 6;
  v10 = a1 + v8[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v8[10];
  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = a1 + v8[11];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v8[12];
  v18 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  (*(*(v18 - 8) + 56))(a1 + v17, 1, 1, v18);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.ganssMeasurements.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReport.ganssMeasurements.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v9[10];
    v24 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    v25 = v14 + v9[11];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v9[12];
    v27 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
    (*(*(v27 - 8) + 56))(v14 + v26, 1, 1, v27);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  }

  return Proto_Gnss_Emergency_MeasurementReport.ganssMeasurements.modify;
}

void Proto_Gnss_Emergency_MeasurementReport.ganssMeasurements.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReport.hasGanssMeasurements.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReport.clearGanssMeasurements()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReport.moreGanssMeasurements.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_MeasurementReport.moreGanssMeasurements.modify;
}

void (*Proto_Gnss_Emergency_MeasurementReport.isMeasInCdmaTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Proto_Gnss_Emergency_MeasurementReport.isMeasInCdmaTime.modify;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.aidMask.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAssistanceRequest.aidMask.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAssistanceRequest.clearAidMask()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.gWeek.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAssistanceRequest.gWeek.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAssistanceRequest.clearGWeek()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.gToe.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAssistanceRequest.gToe.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAssistanceRequest.clearGToe()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.numOfSats.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAssistanceRequest.numOfSats.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAssistanceRequest.clearNumOfSats()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.toeLimit.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAssistanceRequest.toeLimit.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAssistanceRequest.clearToeLimit()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssTimeModelElem.ganssToIds.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssTimeModelElem.ganssToIds.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssTimeModelElem.clearGanssToIds()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssTimeModelElem.deltaT.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssTimeModelElem.deltaT.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssTimeModelElem.clearDeltaT()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.ganssTod.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssDataBitAssist.ganssTod.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssDataBitAssist.clearGanssTod()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.ganssTodFrac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssDataBitAssist.ganssTodFrac.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssDataBitAssist.clearGanssTodFrac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.ganssSignalID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssDataBitAssist.ganssSignalID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssDataBitAssist.clearGanssSignalID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.ganssDataBitIntervalK.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssDataBitAssist.ganssDataBitIntervalK.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssDataBitAssist.clearGanssDataBitIntervalK()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.ganssDataBitNoOfSats.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssDataBitAssist.ganssDataBitNoOfSats.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssDataBitAssist.clearGanssDataBitNoOfSats()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  result = UnknownStorage.init()();
  v4 = a1 + v2[6];
  *v4 = 0;
  v4[4] = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1 + v2[9];
  *v7 = 0;
  v7[4] = 1;
  v8 = a1 + v2[10];
  *v8 = 0;
  v8[4] = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssStoredSatDataElem.ganssSatID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssStoredSatDataElem.ganssSatID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssStoredSatDataElem.clearGanssSatID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssStoredSatDataElem.ganssSatIod.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssStoredSatDataElem.ganssSatIod.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssStoredSatDataElem.clearGanssSatIod()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.ganssWeekDay.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssNavModelAddData.ganssWeekDay.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssNavModelAddData.clearGanssWeekDay()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.ganssToe.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssNavModelAddData.ganssToe.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssNavModelAddData.clearGanssToe()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.ganssTtoeLimit.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssNavModelAddData.ganssTtoeLimit.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssNavModelAddData.clearGanssTtoeLimit()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.ganssSatRelatedDataInfoArrayCount.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssNavModelAddData.ganssSatRelatedDataInfoArrayCount.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssNavModelAddData.clearGanssSatRelatedDataInfoArrayCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  result = UnknownStorage.init()();
  v4 = a1 + v2[6];
  *v4 = 0;
  v4[4] = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1 + v2[9];
  *v7 = 0;
  v7[4] = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssOrbitModelID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssOrbitModelID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAddAssistDataChoices.clearGanssOrbitModelID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssClockModelID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssClockModelID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAddAssistDataChoices.clearGanssClockModelID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssUtcModelID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssUtcModelID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAddAssistDataChoices.clearGanssUtcModelID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssAlmanacModelID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssAlmanacModelID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAddAssistDataChoices.clearGanssAlmanacModelID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_HorizWithVertVelocity.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + result[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 7)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t Proto_Gnss_Emergency_Init.posMethod.setter(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v12 = swift_allocObject();
    v13 = v11;
    v11 = v12;
    a4(v13);
    *(v7 + v9) = v12;
  }

  result = swift_beginAccess();
  *(v11 + 16) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 7)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssID.modify;
}

void Proto_Gnss_Emergency_Init.posMethod.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 84);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 80);
    v13 = *(v6 + 72);
    a3(0);
    v14 = swift_allocObject();
    v15 = v11;
    v11 = v14;
    a4(v15);
    *(v13 + v12) = v14;
  }

  swift_beginAccess();
  *(v11 + 16) = v7;

  free(v6);
}

BOOL Proto_Gnss_Emergency_GanssAidRequestPerGanss.hasGanssID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 7;
}

uint64_t Proto_Gnss_Emergency_Init.clearPosMethod()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), char a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    v13 = v11;
    v11 = v12;
    a3(v13);
    *(v8 + v9) = v12;
  }

  result = swift_beginAccess();
  *(v11 + 16) = a4;
  return result;
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssGenericAidMask.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssGenericAidMask.modify;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArrayCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return 0;
  }

  else
  {
    return *(v1 + 28);
  }
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArrayCount.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 28) = a1;
  *(v6 + 32) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArrayCount.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 28);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArrayCount.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArrayCount.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 28) = v3;
  *(v7 + 32) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssAidRequestPerGanss.hasGanssTimeModelInfoArrayCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAidRequestPerGanss.clearGanssTimeModelInfoArrayCount()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v5 = swift_allocObject();
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 28) = 0;
  *(v4 + 32) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArray.getter()
{
  type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
  swift_beginAccess();
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArray.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  swift_beginAccess();
  *(v6 + 40) = a1;
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArray.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 40);

  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArray.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArray.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v10 = swift_allocObject();
      v11 = v7;
      v7 = v10;
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v11);
      *(v9 + v8) = v10;
    }

    swift_beginAccess();
    *(v7 + 40) = v3;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 88);
      v15 = *(v2 + 80);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v16 = swift_allocObject();
      v17 = v13;
      v13 = v16;
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v17);
      *(v15 + v14) = v16;
    }

    swift_beginAccess();
    *(v13 + 40) = v3;
  }

  free(v2);
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssDataBitAssist.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v10 = a1 + v8[6];
  *v10 = 0;
  v10[4] = 1;
  v11 = a1 + v8[7];
  *v11 = 0;
  v11[4] = 1;
  v12 = a1 + v8[8];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  v13[4] = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  v14[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssDataBitAssist.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssDataBitAssist.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v19 = v14 + v9[6];
    *v19 = 0;
    v19[4] = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    v20[4] = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    v21[4] = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    v22[4] = 1;
    v23 = v14 + v9[10];
    *v23 = 0;
    v23[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  }

  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssDataBitAssist.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssDataBitAssist.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssAidRequestPerGanss.hasGanssDataBitAssist.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAidRequestPerGanss.clearGanssDataBitAssist()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssNavModelAddData.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v10 = a1 + v8[6];
  *v10 = 0;
  v10[4] = 1;
  v11 = a1 + v8[7];
  *v11 = 0;
  v11[4] = 1;
  v12 = a1 + v8[8];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  v13[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssNavModelAddData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssNavModelAddData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v19 = v14 + v9[6];
    *v19 = 0;
    v19[4] = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    v20[4] = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    v21[4] = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    v22[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  }

  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssNavModelAddData.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssNavModelAddData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssAidRequestPerGanss.hasGanssNavModelAddData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAidRequestPerGanss.clearGanssNavModelAddData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssAddAssistDataChoices.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssAddAssistDataChoices.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssAddAssistDataChoices.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  }

  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssAddAssistDataChoices.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssAddAssistDataChoices.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssAidRequestPerGanss.hasGanssAddAssistDataChoices.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAidRequestPerGanss.clearGanssAddAssistDataChoices()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.ganssCommonAidMask.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAssistanceRequest.ganssCommonAidMask.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAssistanceRequest.clearGanssCommonAidMask()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.ganssTimeReqPrefInfoArrayCount.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAssistanceRequest.ganssTimeReqPrefInfoArrayCount.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAssistanceRequest.clearGanssTimeReqPrefInfoArrayCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.glonassNotOfLeapSecRequested.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAssistanceRequest.glonassNotOfLeapSecRequested.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAssistanceRequest.clearGlonassNotOfLeapSecRequested()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.ganssAddIonosModel.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAssistanceRequest.ganssAddIonosModel.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAssistanceRequest.clearGanssAddIonosModel()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.ganssAidDataReqArrayCount.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAssistanceRequest.ganssAidDataReqArrayCount.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAssistanceRequest.clearGanssAidDataReqArrayCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v3;
  v4 = a1(0);
  result = UnknownStorage.init()();
  v6 = a2 + v4[7];
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v4[8];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v4[9];
  *v8 = 0;
  v8[4] = 1;
  v9 = a2 + v4[10];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v4[11];
  *v10 = 0;
  v10[4] = 1;
  return result;
}

void (*Proto_Gnss_Emergency_AssistanceNeededReport.result.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_AssistanceNeededReport.result.modify;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssGenericAidMask.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v12 = swift_allocObject();
    v13 = v11;
    v11 = v12;
    a4(v13);
    *(v7 + v9) = v12;
  }

  result = swift_beginAccess();
  *(v11 + 20) = a1;
  *(v11 + 24) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_AssistanceNeededReport.responseType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_AssistanceNeededReport.responseType.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssGenericAidMask.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 84);
  v9 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 84);
    v13 = *(v6 + 72);
    a3(0);
    v14 = swift_allocObject();
    v15 = v11;
    v11 = v14;
    a4(v15);
    *(v13 + v12) = v14;
  }

  swift_beginAccess();
  *(v11 + 20) = v7;
  *(v11 + 24) = 0;

  free(v6);
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.clearGanssGenericAidMask()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    a3(v11);
    *(v6 + v7) = v10;
  }

  result = swift_beginAccess();
  *(v9 + 20) = 0;
  *(v9 + 24) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.sessionInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v12 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_AssistanceNeededReport.sessionInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    *(v14 + v9[6]) = 7;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  return Proto_Gnss_Emergency_AssistanceNeededReport.sessionInfo.modify;
}

void Proto_Gnss_Emergency_AssistanceNeededReport.sessionInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_AssistanceNeededReport.hasSessionInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_AssistanceNeededReport.clearSessionInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.assistanceRequest.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v10;
  UnknownStorage.init()();
  v11 = a1 + v8[7];
  *v11 = 0;
  v11[4] = 1;
  v12 = a1 + v8[8];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  v13[4] = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  v14[4] = 1;
  v15 = a1 + v8[11];
  *v15 = 0;
  v15[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.assistanceRequest.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_AssistanceNeededReport.assistanceRequest.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = v19;
    UnknownStorage.init()();
    v20 = v14 + v9[7];
    *v20 = 0;
    v20[4] = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    v21[4] = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    v22[4] = 1;
    v23 = v14 + v9[10];
    *v23 = 0;
    v23[4] = 1;
    v24 = v14 + v9[11];
    *v24 = 0;
    v24[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  }

  return Proto_Gnss_Emergency_AssistanceNeededReport.assistanceRequest.modify;
}