void Proto_Gpsd_Request.setAssistanceDem.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceDem);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceDem.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceDem()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceMapVector.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v8[8]) = 2;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[11];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v8[12];
  *v16 = 0;
  *(v16 + 8) = 1;
  *(a1 + v8[13]) = 2;
  *(a1 + v8[14]) = 2;
  *(a1 + v8[15]) = 2;
  *(a1 + v8[16]) = 2;
  *(a1 + v8[17]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  }

  return result;
}

int *Proto_Gpsd_SetAssistanceMapVector.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a1 + result[8]) = 2;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + result[11];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a1 + result[13]) = 2;
  *(a1 + result[14]) = 2;
  *(a1 + result[15]) = 2;
  *(a1 + result[16]) = 2;
  *(a1 + result[17]) = 2;
  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceMapVector.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  return swift_endAccess();
}

uint64_t (*Proto_Gpsd_Request.setAssistanceMapVector.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v5[11] = v11;
  Proto_Gpsd_Request.setAssistanceMapVector.getter(v11);
  return Proto_Gpsd_Request.setAssistanceMapVector.modify;
}

void Proto_Gpsd_Request.setAssistanceMapVector.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(v2[11], v2[10], type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
    v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v3 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v7 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v3 + v4) = v7;
      v6 = v7;
    }

    v9 = v2[10];
    v8 = v2[11];
    v10 = v2[8];
    v11 = v2[9];
    v12 = v2[7];
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v9, v12, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
    (*(v11 + 56))(v12, 0, 1, v10);
    v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v12, v6 + v13, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v8, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  }

  else
  {
    v14 = v2[6];
    v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v15);
    if ((v16 & 1) == 0)
    {
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v18 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v17);
      *(v14 + v15) = v18;
      v17 = v18;
    }

    v9 = v2[10];
    v8 = v2[11];
    v19 = v2[8];
    v20 = v2[9];
    v12 = v2[7];
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v12, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
    (*(v20 + 56))(v12, 0, 1, v19);
    v21 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v12, v17 + v21, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
    swift_endAccess();
  }

  free(v8);
  free(v9);
  free(v12);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceMapVector.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceMapVector()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceMotionActivityContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + v8[6]) = 10;
  *(a1 + v8[7]) = 5;
  *(a1 + v8[8]) = 6;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  }

  return result;
}

int *Proto_Gpsd_SetAssistanceMotionActivityContext.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[6]) = 10;
  *(a1 + result[7]) = 5;
  *(a1 + result[8]) = 6;
  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceMotionActivityContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceMotionActivityContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    *(v14 + v9[6]) = 10;
    *(v14 + v9[7]) = 5;
    *(v14 + v9[8]) = 6;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  }

  return Proto_Gpsd_Request.setAssistanceMotionActivityContext.modify;
}

void Proto_Gpsd_Request.setAssistanceMotionActivityContext.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceMotionActivityContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceMotionActivityContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceMountState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + *(v8 + 24)) = 4;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetAssistanceMountState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + *(result + 24)) = 4;
  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceMountState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceMountState.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    *(v14 + *(v9 + 24)) = 4;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  }

  return Proto_Gpsd_Request.setAssistanceMountState.modify;
}

void Proto_Gpsd_Request.setAssistanceMountState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceMountState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceMountState()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceSignalEnvironment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 8;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceSignalEnvironment.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceSignalEnvironment.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 8;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  }

  return Proto_Gpsd_Request.setAssistanceSignalEnvironment.modify;
}

void Proto_Gpsd_Request.setAssistanceSignalEnvironment.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceSignalEnvironment.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceSignalEnvironment()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceSpeedConstraint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  }

  return result;
}

int *Proto_Gpsd_SetAssistanceSpeedConstraint.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceSpeedConstraint.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceSpeedConstraint.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  }

  return Proto_Gpsd_Request.setAssistanceSpeedConstraint.modify;
}

void Proto_Gpsd_Request.setAssistanceSpeedConstraint.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceSpeedConstraint.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceSpeedConstraint()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceAlongTrackVelocity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceAlongTrackVelocity.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceAlongTrackVelocity.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  }

  return Proto_Gpsd_Request.setAssistanceAlongTrackVelocity.modify;
}

void Proto_Gpsd_Request.setAssistanceAlongTrackVelocity.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceAlongTrackVelocity.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceAlongTrackVelocity()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.injectAssistanceFile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = xmmword_23D1B1460;
  *(a1 + *(v8 + 24)) = 3;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  }

  return result;
}

double Proto_Gpsd_InjectAssistanceFile.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_23D1B1460;
  *(a1 + *(v2 + 24)) = 3;
  return result;
}

uint64_t Proto_Gpsd_Request.injectAssistanceFile.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  v12 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectAssistanceFile.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = xmmword_23D1B1460;
    *(v14 + *(v9 + 24)) = 3;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  }

  return Proto_Gpsd_Request.injectAssistanceFile.modify;
}

void Proto_Gpsd_Request.injectAssistanceFile.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectAssistanceFile.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectAssistanceFile()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.injectRtiFile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = xmmword_23D1B1460;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.injectRtiFile.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  v12 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectRtiFile.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = xmmword_23D1B1460;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  }

  return Proto_Gpsd_Request.injectRtiFile.modify;
}

void Proto_Gpsd_Request.injectRtiFile.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectRtiFile);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_InjectRtiFile);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_InjectRtiFile);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_InjectRtiFile);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectRtiFile.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectRtiFile()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.injectSvidBlocklist.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.injectSvidBlocklist.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  v12 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectSvidBlocklist.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  }

  return Proto_Gpsd_Request.injectSvidBlocklist.modify;
}

void Proto_Gpsd_Request.injectSvidBlocklist.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectSvidBlocklist.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectSvidBlocklist()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.deleteGnssData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.deleteGnssData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  v12 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.deleteGnssData.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  }

  return Proto_Gpsd_Request.deleteGnssData.modify;
}

void Proto_Gpsd_Request.deleteGnssData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_DeleteGnssData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_DeleteGnssData);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_DeleteGnssData);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_DeleteGnssData);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasDeleteGnssData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearDeleteGnssData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setPvtmReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 2;
  *(a1 + v8[6]) = 2;
  *(a1 + v8[7]) = 2;
  *(a1 + v8[8]) = 2;
  *(a1 + v8[9]) = 2;
  *(a1 + v8[10]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  }

  return result;
}

int *Proto_Gpsd_SetPvtmReport.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 2;
  return result;
}

uint64_t Proto_Gpsd_Request.setPvtmReport.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  v12 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setPvtmReport.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    *(v14 + v9[9]) = 2;
    *(v14 + v9[10]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  }

  return Proto_Gpsd_Request.setPvtmReport.modify;
}

void Proto_Gpsd_Request.setPvtmReport.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetPvtmReport);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetPvtmReport);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetPvtmReport);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetPvtmReport);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetPvtmReport.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetPvtmReport()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setNmeaHandler.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_DeleteGnssData.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.setNmeaHandler.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  v12 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setNmeaHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  }

  return Proto_Gpsd_Request.setNmeaHandler.modify;
}

void Proto_Gpsd_Request.setNmeaHandler.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetNmeaHandler);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetNmeaHandler.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetNmeaHandler()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setConfigSimulatorMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 2;
  v10 = a1 + *(v8 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetConfigSimulatorMode.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  *(a1 + *(result + 20)) = 2;
  v3 = a1 + *(result + 24);
  *v3 = 0;
  *(v3 + 4) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.setConfigSimulatorMode.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  v12 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setConfigSimulatorMode.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    v19 = v14 + *(v9 + 24);
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  }

  return Proto_Gpsd_Request.setConfigSimulatorMode.modify;
}

void Proto_Gpsd_Request.setConfigSimulatorMode.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetConfigSimulatorMode.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetConfigSimulatorMode()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setConfigEnableGnssConstellations.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.setConfigEnableGnssConstellations.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  v12 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setConfigEnableGnssConstellations.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  }

  return Proto_Gpsd_Request.setConfigEnableGnssConstellations.modify;
}

void Proto_Gpsd_Request.setConfigEnableGnssConstellations.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetConfigEnableGnssConstellations.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetConfigEnableGnssConstellations()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setConfigDutyCycling.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetAssistanceSignalEnvironment.init()@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t Proto_Gpsd_Request.setConfigDutyCycling.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  v12 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setConfigDutyCycling.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  }

  return Proto_Gpsd_Request.setConfigDutyCycling.modify;
}

void Proto_Gpsd_Request.setConfigDutyCycling.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetConfigDutyCycling.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetConfigDutyCycling()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.terminationImminent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_TerminationImminent);
  }

  UnknownStorage.init()();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.terminationImminent.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_TerminationImminent);
  v12 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.terminationImminent.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = (v14 + *(v9 + 20));
    *v19 = 0;
    v19[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_TerminationImminent);
  }

  return Proto_Gpsd_Request.terminationImminent.modify;
}

void Proto_Gpsd_Request.terminationImminent.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_TerminationImminent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_TerminationImminent);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_TerminationImminent);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_TerminationImminent);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasTerminationImminent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearTerminationImminent()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.exitMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_ExitMessage);
  }

  UnknownStorage.init()();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_TerminationImminent.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = (a2 + *(result + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t Proto_Gpsd_Request.exitMessage.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_ExitMessage);
  v12 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.exitMessage.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = (v14 + *(v9 + 20));
    *v19 = 0;
    v19[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_ExitMessage);
  }

  return Proto_Gpsd_Request.exitMessage.modify;
}

void Proto_Gpsd_Request.exitMessage.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_ExitMessage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_ExitMessage);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_ExitMessage);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_ExitMessage);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasExitMessage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearExitMessage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.injectLtlInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_LtlInfo);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static Proto_Gpsd_LtlInfo._StorageClass.defaultInstance;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.injectLtlInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_LtlInfo);
  v12 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectLtlInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static Proto_Gpsd_LtlInfo._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_LtlInfo);
  }

  return Proto_Gpsd_Request.injectLtlInfo.modify;
}

void Proto_Gpsd_Request.injectLtlInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_LtlInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_LtlInfo);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_LtlInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectLtlInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectLtlInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.startContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v9 = *(*(started - 1) + 48);
  if (v9(v5, 1, started) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_StartContext);
  }

  UnknownStorage.init()();
  *(a1 + started[5]) = 2;
  *(a1 + started[6]) = 2;
  *(a1 + started[7]) = 2;
  v10 = a1 + started[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + started[9]) = 2;
  result = (v9)(v5, 1, started);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  }

  return result;
}

int *Proto_Gpsd_StartContext.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  v3 = a1 + result[8];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t Proto_Gpsd_Request.startContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_StartContext);
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  (*(*(started - 8) + 56))(v6, 0, 1, started);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.startContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR) - 8) + 64);
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
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v5 + 96) = started;
  v10 = *(started - 1);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, started) == 1)
  {
    UnknownStorage.init()();
    *(v14 + started[5]) = 2;
    *(v14 + started[6]) = 2;
    *(v14 + started[7]) = 2;
    v19 = v14 + started[8];
    *v19 = 0;
    *(v19 + 8) = 1;
    *(v14 + started[9]) = 2;
    if (v18(v8, 1, started) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_StartContext);
  }

  return Proto_Gpsd_Request.startContext.modify;
}

void Proto_Gpsd_Request.startContext.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_StartContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_StartContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_StartContext);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_StartContext);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasStartContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v7 = (*(*(started - 8) + 48))(v3, 1, started) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearStartContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  (*(*(started - 8) + 56))(v4, 1, 1, started);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setThermalRiskState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetThermalRiskState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.setThermalRiskState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  v12 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setThermalRiskState.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  }

  return Proto_Gpsd_Request.setThermalRiskState.modify;
}

void Proto_Gpsd_Request.setThermalRiskState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetThermalRiskState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetThermalRiskState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetThermalRiskState()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setConfigRfBandEnable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 2;
  *(a1 + *(v8 + 24)) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetConfigRfBandEnable.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  *(a1 + *(result + 20)) = 2;
  *(a1 + *(result + 24)) = 2;
  return result;
}

uint64_t Proto_Gpsd_Request.setConfigRfBandEnable.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  v12 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setConfigRfBandEnable.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    *(v14 + *(v9 + 24)) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  }

  return Proto_Gpsd_Request.setConfigRfBandEnable.modify;
}

void Proto_Gpsd_Request.setConfigRfBandEnable.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetConfigRfBandEnable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetConfigRfBandEnable()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.injectRavenOrbitFile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = xmmword_23D1B1460;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  }

  return result;
}

double Proto_Gpsd_InjectRtiFile.init()@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1(0);
  result = 0.0;
  *(a2 + *(v4 + 20)) = xmmword_23D1B1460;
  return result;
}

uint64_t Proto_Gpsd_Request.injectRavenOrbitFile.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  v12 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectRavenOrbitFile.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = xmmword_23D1B1460;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  }

  return Proto_Gpsd_Request.injectRavenOrbitFile.modify;
}

void Proto_Gpsd_Request.injectRavenOrbitFile.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectRavenOrbitFile.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectRavenOrbitFile()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.emergConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  }

  Proto_Gnss_Emergency_EmergConfig.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.emergConfig.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.emergConfig.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_EmergConfig.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  }

  return Proto_Gpsd_Request.emergConfig.modify;
}

void Proto_Gpsd_Request.emergConfig.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasEmergConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearEmergConfig()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  swift_endAccess();
}

void (*Proto_Gpsd_Request.gemProtocolRequest.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  v10 = 0xC000000000000000;
  if (v8 >> 60 != 15)
  {
    v10 = v6[1];
  }

  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  outlined copy of Data?(v7, v8);
  return Proto_Gpsd_Request.gemProtocolRequest.modify;
}

uint64_t Proto_Gpsd_Request.positionRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  }

  Proto_Gnss_Emergency_PositionRequest.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.positionRequest.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  v12 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.positionRequest.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_PositionRequest.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  }

  return Proto_Gpsd_Request.positionRequest.modify;
}

void Proto_Gpsd_Request.positionRequest.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasPositionRequest.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearPositionRequest()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  swift_endAccess();
}

void (*Proto_Gpsd_Request.sessionID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gpsd_Request.sessionID.modify;
}

uint64_t Proto_Gpsd_Request.gpsReferenceTime.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  }

  Proto_Gnss_Emergency_GpsReferenceTime.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.gpsReferenceTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.gpsReferenceTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_GpsReferenceTime.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  }

  return Proto_Gpsd_Request.gpsReferenceTime.modify;
}

void Proto_Gpsd_Request.gpsReferenceTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasGpsReferenceTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearGpsReferenceTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.referenceLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  }

  Proto_Gnss_Emergency_ReferenceLocation.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.referenceLocation.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  v12 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.referenceLocation.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_ReferenceLocation.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  }

  return Proto_Gpsd_Request.referenceLocation.modify;
}

void Proto_Gpsd_Request.referenceLocation.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasReferenceLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearReferenceLocation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.gpsNavigationModel.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  }

  Proto_Gnss_Emergency_GpsNavigationModel.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.gpsNavigationModel.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.gpsNavigationModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_GpsNavigationModel.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  }

  return Proto_Gpsd_Request.gpsNavigationModel.modify;
}

void Proto_Gpsd_Request.gpsNavigationModel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasGpsNavigationModel.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearGpsNavigationModel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.gpsAcqAssistance.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  }

  Proto_Gnss_Emergency_GpsAcqAssistance.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.gpsAcqAssistance.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.gpsAcqAssistance.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_GpsAcqAssistance.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  }

  return Proto_Gpsd_Request.gpsAcqAssistance.modify;
}

void Proto_Gpsd_Request.gpsAcqAssistance.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasGpsAcqAssistance.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearGpsAcqAssistance()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.cellFtAssistance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  }

  Proto_Gnss_Emergency_CellFTAssistance.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.cellFtAssistance.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.cellFtAssistance.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_CellFTAssistance.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  }

  return Proto_Gpsd_Request.cellFtAssistance.modify;
}

void Proto_Gpsd_Request.cellFtAssistance.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasCellFtAssistance.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearCellFtAssistance()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.cplaneContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  }

  Proto_Gnss_Emergency_CplaneContext.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.cplaneContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.cplaneContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_CplaneContext.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  }

  return Proto_Gpsd_Request.cplaneContext.modify;
}

void Proto_Gpsd_Request.cplaneContext.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasCplaneContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearCplaneContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  swift_endAccess();
}

void (*Proto_Gpsd_Request.suplInitVec.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return Proto_Gpsd_Request.suplInitVec.modify;
}

uint64_t Proto_Gpsd_Request.locationID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  }

  Proto_Gnss_Emergency_LocationId.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.locationID.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  v12 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.locationID.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_LocationId.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  }

  return Proto_Gpsd_Request.locationID.modify;
}

void Proto_Gpsd_Request.locationID.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_LocationId);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Emergency_LocationId);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Emergency_LocationId);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Emergency_LocationId);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasLocationID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearLocationID()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.sessionID.getter(uint64_t (*a1)(void), void *a2)
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

uint64_t Proto_Gpsd_Request.sessionID.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v14 = swift_allocObject();
    v15 = v13;
    v13 = v14;
    a4(v15);
    *(v9 + v11) = v14;
  }

  v16 = v13 + *a5;
  result = swift_beginAccess();
  *v16 = a1;
  *(v16 + 4) = 0;
  return result;
}

void (*Proto_Gpsd_Request.suplInitIndex.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gpsd_Request.suplInitIndex.modify;
}

void Proto_Gpsd_Request.sessionID.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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
    v17 = v13;
    v13 = v16;
    a4(v17);
    *(v15 + v14) = v16;
  }

  v18 = v13 + *a5;
  swift_beginAccess();
  *v18 = v9;
  *(v18 + 4) = 0;

  free(v8);
}

BOOL Proto_Gpsd_Request.hasSessionID.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 4) & 1) == 0;
}

uint64_t Proto_Gpsd_Request.clearSessionID()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
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

  v14 = v11 + *a4;
  result = swift_beginAccess();
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.suplInitVec.getter(uint64_t *a1)
{
  type metadata accessor for Proto_Gpsd_Request(0);
  swift_beginAccess();
}

uint64_t Proto_Gpsd_Request.suplInitVec.setter(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v10);
    *(v4 + v6) = v9;
  }

  v11 = *a2;
  swift_beginAccess();
  *(v8 + v11) = a1;
}

void (*Proto_Gpsd_Request.suplCert.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return Proto_Gpsd_Request.suplCert.modify;
}

void Proto_Gpsd_Request.suplInitVec.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v7 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v4 + 88);
      v11 = *(v4 + 80);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v12 = swift_allocObject();
      v13 = v9;
      v9 = v12;
      Proto_Gpsd_Request._StorageClass.init(copying:)(v13);
      *(v11 + v10) = v12;
    }

    v14 = *a3;
    swift_beginAccess();
    *(v9 + v14) = v5;
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v7 + v6);
    if ((v15 & 1) == 0)
    {
      v17 = *(v4 + 88);
      v18 = *(v4 + 80);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v19 = swift_allocObject();
      v20 = v16;
      v16 = v19;
      Proto_Gpsd_Request._StorageClass.init(copying:)(v20);
      *(v18 + v17) = v19;
    }

    v21 = *a3;
    swift_beginAccess();
    *(v16 + v21) = v5;
  }

  free(v4);
}

uint64_t Proto_Gpsd_Request.servingCellLte.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  return *(v1 + v2) & 1;
}

uint64_t Proto_Gpsd_Request.servingCellLte.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  result = swift_beginAccess();
  *(v6 + v9) = a1 & 1;
  return result;
}

void (*Proto_Gpsd_Request.servingCellLte.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Proto_Gpsd_Request.servingCellLte.modify;
}

void Proto_Gpsd_Request.servingCellLte.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  *(v7 + v12) = v5;

  free(v2);
}

BOOL Proto_Gpsd_Request.hasServingCellLte.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  return *(v1 + v2) != 2;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearServingCellLte()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v5 = swift_allocObject();
    Proto_Gpsd_Request._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*Proto_Gpsd_Request.simInstance.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gpsd_Request.simInstance.modify;
}

uint64_t Proto_Gpsd_Request.suplContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  }

  Proto_Gnss_Emergency_SuplContext.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.suplContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  v12 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.suplContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_SuplContext.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  }

  return Proto_Gpsd_Request.suplContext.modify;
}

void Proto_Gpsd_Request.suplContext.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SuplContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSuplContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSuplContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.wlanMeasurementList.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  }

  Proto_Gnss_Emergency_WlanMeasurementList.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.wlanMeasurementList.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  v12 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.wlanMeasurementList.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_WlanMeasurementList.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  }

  return Proto_Gpsd_Request.wlanMeasurementList.modify;
}

void Proto_Gpsd_Request.wlanMeasurementList.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasWlanMeasurementList.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearWlanMeasurementList()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  swift_endAccess();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gpsd_Request.TypeEnum(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gpsd_Request.TypeEnum and conformance Proto_Gpsd_Request.TypeEnum();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gpsd_Request.TypeEnum@<X0>(unint64_t a1@<X0>, ALProtobuf::Proto_Gpsd_Request::TypeEnum_optional *a2@<X8>)
{
  result = specialized Proto_Gpsd_Request.TypeEnum.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gpsd_Request.TypeEnum@<X0>(Swift::Int *a1@<X0>, ALProtobuf::Proto_Gpsd_Request::TypeEnum_optional *a2@<X8>)
{
  result = specialized Proto_Gpsd_Request.TypeEnum.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t Proto_Gpsd_LtlInfo.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t Proto_Gpsd_Response.requestType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Response(0) + 20));
  if (v1 == 62)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gpsd_Response.requestType.setter(char a1)
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gpsd_Response.requestType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Response(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 62)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gpsd_Response.machContinuousTimeNs.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gpsd_Response.machContinuousTimeNs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Response(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall Proto_Gpsd_Response.clearMachContinuousTimeNs()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gpsd_Response(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gpsd_Response.resultCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Response(0) + 28));
  if (v1 == 10)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gpsd_Response.resultCode.setter(char a1)
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gpsd_Response.resultCode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Response(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 10)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

int *Proto_Gpsd_Response.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_Response(0);
  *(a1 + result[5]) = 62;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[7]) = 10;
  return result;
}

uint64_t Proto_Gpsd_Indication.type.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 24)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t Proto_Gpsd_Indication.type.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  return result;
}

void (*Proto_Gpsd_Indication.type.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 24)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gpsd_Indication.type.modify;
}

void Proto_Gpsd_Indication.type.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 24;
}

uint64_t Proto_Gpsd_Indication.requestType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 17) == 62)
  {
    return 0;
  }

  else
  {
    return *(v1 + 17);
  }
}

uint64_t Proto_Gpsd_Indication.requestType.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 17) = a1;
  return result;
}

void (*Proto_Gpsd_Indication.requestType.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 17);
  if (v7 == 62)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gpsd_Indication.requestType.modify;
}

void Proto_Gpsd_Indication.requestType.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 17) = v3;

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasRequestType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  return *(v1 + 17) != 62;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearRequestType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 17) = 62;
}

uint64_t Proto_Gpsd_Indication.machContinuousTimeNs.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return 0;
  }

  else
  {
    return *(v1 + 24);
  }
}

uint64_t Proto_Gpsd_Indication.machContinuousTimeNs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 32) = 0;
  return result;
}

void (*Proto_Gpsd_Indication.machContinuousTimeNs.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return Proto_Gpsd_Indication.machContinuousTimeNs.modify;
}

void Proto_Gpsd_Indication.machContinuousTimeNs.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 32) = 0;

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasMachContinuousTimeNs.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearMachContinuousTimeNs()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
}

uint64_t Proto_Gpsd_Indication.fix.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Fix(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gnss_Fix);
  }

  Proto_Gnss_Fix.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Indication.fix.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gnss_Fix);
  v12 = type metadata accessor for Proto_Gnss_Fix(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Indication.fix.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Fix(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Fix.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Fix);
  }

  return Proto_Gpsd_Indication.fix.modify;
}

void Proto_Gpsd_Indication.fix.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Fix);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gnss_Fix);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gnss_Fix);
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
      type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gnss_Fix);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasFix.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Fix(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearFix()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Fix(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Indication.meas.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
  }

  CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Indication.meas.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Indication.meas.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
  }

  return Proto_Gpsd_Indication.meas.modify;
}

void Proto_Gpsd_Indication.meas.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
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
      type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}