uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.boundingBox.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v9 = a1 + v7[6];
  *v9 = 0;
  v9[8] = 1;
  v10 = a1 + v7[7];
  *v10 = 0;
  v10[8] = 1;
  v11 = a1 + v7[8];
  *v11 = 0;
  v11[8] = 1;
  v12 = a1 + v7[9];
  *v12 = 0;
  v12[8] = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.boundingBox.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.boundingBox.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v17 = v14 + v9[6];
    *v17 = 0;
    v17[8] = 1;
    v18 = v14 + v9[7];
    *v18 = 0;
    v18[8] = 1;
    v19 = v14 + v9[8];
    *v19 = 0;
    v19[8] = 1;
    v20 = v14 + v9[9];
    *v20 = 0;
    v20[8] = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  }

  return CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.boundingBox.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.buildingID.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeID.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeID.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.clearTreeID()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.reliabilityScoreDeprecated.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.reliabilityScoreDeprecated.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.clearReliabilityScoreDeprecated()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeFeatures.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 40), v5, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  }

  UnknownStorage.init()();
  *(a1 + *(v7 + 20)) = 2;
  *(a1 + *(v7 + 24)) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeFeatures.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 40);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeFeatures.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    *(v14 + *(v9 + 24)) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  }

  return CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeFeatures.modify;
}

BOOL CLP_LogEntry_PrivateData_DeviceMotionSample.hasStatus.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
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

uint64_t CLP_LogEntry_PrivateData_DeviceMotionSample.clearStatus()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.branchCount.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 44));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.branchCount.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.branchCount.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 44);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.clearBranchCount()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.hasBranchWidths_p.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.hasBranchWidths_p.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.hasBranchLengths_p.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.hasBranchLengths_p.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  UnknownStorage.init()();
  v3 = v2[6];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[7]];
  *v5 = 0;
  v5[8] = 1;
  a1[v2[8]] = 4;
  v6 = &a1[v2[9]];
  *v6 = 0;
  v6[4] = 1;
  v7 = v2[10];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  result = (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v10 = &a1[v2[11]];
  *v10 = 0;
  v10[8] = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.receiptTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.receiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.containsBranchGeometry.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.containsBranchGeometry.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  a1[*(v2 + 28)] = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.wristOrientation.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 20));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.wristOrientation.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WatchOrientation.wristOrientation.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.crownOrientation.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 24));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.crownOrientation.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WatchOrientation.crownOrientation.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.applicableTime.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWrist.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 24));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWrist.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.onWrist.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWristSensor.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 28));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWristSensor.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.onWristSensor.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWristConfidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWristConfidence.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.onWristConfidence.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.isOnCharger.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.isOnCharger.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.isForcedOnWristEnabled.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.isForcedOnWristEnabled.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.isWristDetectionEnabled.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.isWristDetectionEnabled.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WristState.WristStateType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WristState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[6]) = 4;
  *(a1 + v2[7]) = 4;
  *(a1 + v2[8]) = 4;
  *(a1 + v2[9]) = 2;
  *(a1 + v2[10]) = 2;
  *(a1 + v2[11]) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_AccelSample.applicableTime.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = a1(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v2 + *(v8 + 20), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, a2, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  UnknownStorage.init()();
  v11 = a2 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v9[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_AccelSample.applicableTime.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  outlined destroy of Any?(v2 + v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v2 + v4, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*CLP_LogEntry_PrivateData_WatchState.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.client.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WatchState.client.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WatchState.clearClient()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.watchOrientation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  }

  UnknownStorage.init()();
  *(a1 + *(v7 + 20)) = 4;
  *(a1 + *(v7 + 24)) = 4;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.watchOrientation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_WatchState.watchOrientation.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 4;
    *(v14 + *(v9 + 24)) = 4;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  }

  return CLP_LogEntry_PrivateData_WatchState.watchOrientation.modify;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.wristState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 32), v5, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  }

  UnknownStorage.init()();
  v9 = v7[5];
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  *(a1 + v7[6]) = 4;
  *(a1 + v7[7]) = 4;
  *(a1 + v7[8]) = 4;
  *(a1 + v7[9]) = 2;
  *(a1 + v7[10]) = 2;
  *(a1 + v7[11]) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.wristState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_WatchState.wristState.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v9[5];
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    *(v14 + v9[6]) = 4;
    *(v14 + v9[7]) = 4;
    *(v14 + v9[8]) = 4;
    *(v14 + v9[9]) = 2;
    *(v14 + v9[10]) = 2;
    *(v14 + v9[11]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  }

  return CLP_LogEntry_PrivateData_WatchState.wristState.modify;
}

void CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v12, v11, a6);
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v12, a6);
  }

  else
  {
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

uint64_t CLP_LogEntry_PrivateData_WatchState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + v2[6];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v2[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[8];
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.userSpecificPlaceType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 20));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.userSpecificPlaceType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PlaceInference.userSpecificPlaceType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.placeType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 24));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.placeType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PlaceInference.placeType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.preferredName.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.preferredName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PlaceInference.preferredName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return CLP_LogEntry_PrivateData_PlaceInference.preferredName.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PlaceInference.clearPreferredName()()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.loiUuidIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.loiUuidIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PlaceInference.loiUuidIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify;
}

void CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PlaceInference.clearLoiUuidIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

int *CLP_LogEntry_PrivateData_PlaceInference.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  *(a1 + result[5]) = 5;
  *(a1 + result[6]) = 3;
  v3 = (a1 + result[7]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[8]);
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.receiptTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.receiptTime.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.receiptTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasReceiptTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearReceiptTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.arrivalTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.arrivalTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.arrivalTime.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.arrivalTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasArrivalTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearArrivalTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.departureTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.departureTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.departureTime.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.departureTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasDepartureTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearDepartureTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.detectionTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.detectionTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.detectionTime.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.detectionTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasDetectionTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearDetectionTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.placeInference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 5;
  *(a1 + v8[6]) = 3;
  v10 = (a1 + v8[7]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[8]);
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.placeInference.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.placeInference.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 5;
    *(v14 + v9[6]) = 3;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.placeInference.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.placeInference.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
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
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasPlaceInference.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearPlaceInference()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.coordinate.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = *(v3 + *(a1(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v10 + v11, v9, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v9, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  UnknownStorage.init()();
  v14 = a3 + *(v12 + 20);
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a3 + *(v12 + 24);
  *v15 = 0;
  *(v15 + 8) = 1;
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return outlined destroy of Any?(v9, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.coordinate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.coordinate.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.coordinate.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.coordinate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasCoordinate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearCoordinate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.horizontalAccuracyM.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_RoutineVisit.horizontalAccuracyM.modify;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.startTimeCfatSec.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.startTimeCfatSec.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_OutdoorUpdate.clearStartTimeCfatSec()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.mctTimestampSec.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.mctTimestampSec.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_OutdoorUpdate.clearMctTimestampSec()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.type.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 28));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.type.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.type.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.confidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.confidence.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.confidence.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.estimatedStateProbabilityOutdoor.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.estimatedStateProbabilityOutdoor.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_OutdoorUpdate.clearEstimatedStateProbabilityOutdoor()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.daylightConfidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 40));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.daylightConfidence.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.daylightConfidence.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.isAstronomicalDaytime.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.isAstronomicalDaytime.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.currentLux.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.currentLux.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 48);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_OutdoorUpdate.clearCurrentLux()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *CLP_LogEntry_PrivateData_OutdoorUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + result[7]) = 3;
  *(a1 + result[8]) = 4;
  v5 = a1 + result[9];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a1 + result[10]) = 4;
  *(a1 + result[11]) = 2;
  v6 = a1 + result[12];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

double CLP_LogEntry_PrivateData_DaemonLocationPrivate.odometer.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 16);
  if (*(v2 + 24))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.cfAbsoluteTimestampSec.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.cfAbsoluteTimestampSec.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.cfAbsoluteTimestampSec.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.cfAbsoluteTimestampSec.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasOdometer.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 24) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearCfAbsoluteTimestampSec()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.machContinuousTimestampSec.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 32) = a1;
  *(v6 + 40) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.machContinuousTimestampSec.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 40))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.machContinuousTimestampSec.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.machContinuousTimestampSec.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 32) = v3;
  *(v7 + 40) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearMachContinuousTimestampSec()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.sampleIntervalSec.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 44);
  if (*(v1 + 48))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.sampleIntervalSec.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 44) = a1;
  *(v6 + 48) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.sampleIntervalSec.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 44);
  if (*(v6 + 48))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.sampleIntervalSec.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.sampleIntervalSec.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 44) = v3;
  *(v7 + 48) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasSampleIntervalSec.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 48) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearSampleIntervalSec()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 44) = 0;
  *(v4 + 48) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.dPosXM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 52);
  if (*(v1 + 56))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dPosXM.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 52) = a1;
  *(v6 + 56) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dPosXM.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 52);
  if (*(v6 + 56))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dPosXM.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dPosXM.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 52) = v3;
  *(v7 + 56) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasDPosXM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 56) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDPosXM()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 52) = 0;
  *(v4 + 56) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.dPosYM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 60);
  if (*(v1 + 64))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dPosYM.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 60) = a1;
  *(v6 + 64) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dPosYM.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 60);
  if (*(v6 + 64))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dPosYM.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dPosYM.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 60) = v3;
  *(v7 + 64) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasDPosYM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 64) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDPosYM()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 60) = 0;
  *(v4 + 64) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.dPosZM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 68);
  if (*(v1 + 72))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dPosZM.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 68) = a1;
  *(v6 + 72) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dPosZM.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 68);
  if (*(v6 + 72))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dPosZM.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dPosZM.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 68) = v3;
  *(v7 + 72) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasDPosZM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 72) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDPosZM()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 68) = 0;
  *(v4 + 72) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.dVelXMps.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 76);
  if (*(v1 + 80))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dVelXMps.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 76) = a1;
  *(v6 + 80) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dVelXMps.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 76);
  if (*(v6 + 80))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dVelXMps.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dVelXMps.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 76) = v3;
  *(v7 + 80) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasDVelXMps.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 80) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDVelXMps()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 76) = 0;
  *(v4 + 80) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.dVelYMps.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 84);
  if (*(v1 + 88))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dVelYMps.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 84) = a1;
  *(v6 + 88) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dVelYMps.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 84);
  if (*(v6 + 88))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dVelYMps.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dVelYMps.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 84) = v3;
  *(v7 + 88) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasDVelYMps.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 88) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDVelYMps()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 84) = 0;
  *(v4 + 88) = 1;
}

float CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMaj.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 92);
  if (*(v2 + 96))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dVelZMps.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 92) = a1;
  *(v6 + 96) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dVelZMps.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 92);
  if (*(v6 + 96))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dVelZMps.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dVelZMps.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 92) = v3;
  *(v7 + 96) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasHorzUncSemiMaj.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 96) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDVelZMps()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 92) = 0;
  *(v4 + 96) = 1;
}

float CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMin.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 100);
  if (*(v2 + 104))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.qX.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 100) = a1;
  *(v6 + 104) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.qX.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 100);
  if (*(v6 + 104))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.qX.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.qX.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 100) = v3;
  *(v7 + 104) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasHorzUncSemiMin.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 104) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearQX()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 100) = 0;
  *(v4 + 104) = 1;
}

float CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMajAz.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 108);
  if (*(v2 + 112))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.qY.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 108) = a1;
  *(v6 + 112) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.qY.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 108);
  if (*(v6 + 112))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.qY.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.qY.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 108) = v3;
  *(v7 + 112) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasHorzUncSemiMajAz.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 112) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearQY()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 108) = 0;
  *(v4 + 112) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.qZ.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 116);
  if (*(v1 + 120))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.qZ.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 116) = a1;
  *(v6 + 120) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.qZ.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 116);
  if (*(v6 + 120))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.qZ.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.qZ.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 116) = v3;
  *(v7 + 120) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasQZ.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 120) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearQZ()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 116) = 0;
  *(v4 + 120) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.qW.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 124);
  if (*(v1 + 128))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.qW.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 124) = a1;
  *(v6 + 128) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.qW.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 124);
  if (*(v6 + 128))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.qW.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.qW.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 124) = v3;
  *(v7 + 128) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasQW.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 128) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearQW()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 124) = 0;
  *(v4 + 128) = 1;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.referenceFrame.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  if (*(v1 + 129) == 3)
  {
    return 0;
  }

  else
  {
    return *(v1 + 129);
  }
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.referenceFrame.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 129) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.referenceFrame.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 129);
  if (v7 == 3)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.referenceFrame.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.referenceFrame.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 129) = v3;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasReferenceFrame.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 129) != 3;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearReferenceFrame()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 129) = 3;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaPositionValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 130) & 1;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaPositionValidDeprecated.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 130) = a1 & 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaPositionValidDeprecated.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 130) & 1;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaPositionValidDeprecated.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaPositionValidDeprecated.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 130) = v5;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasIsDeltaPositionValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 130) != 2;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearIsDeltaPositionValidDeprecated()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 130) = 2;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaVelocityValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 131) & 1;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaVelocityValidDeprecated.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 131) = a1 & 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaVelocityValidDeprecated.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 131) & 1;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaVelocityValidDeprecated.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaVelocityValidDeprecated.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 131) = v5;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasIsDeltaVelocityValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 131) != 2;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearIsDeltaVelocityValidDeprecated()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 131) = 2;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isAttitudeValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 132) & 1;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isAttitudeValidDeprecated.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 132) = a1 & 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.isAttitudeValidDeprecated.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 132) & 1;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.isAttitudeValidDeprecated.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.isAttitudeValidDeprecated.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 132) = v5;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasIsAttitudeValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 132) != 2;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearIsAttitudeValidDeprecated()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 132) = 2;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.staticIndicator.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  if (*(v1 + 133) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 133);
  }
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.staticIndicator.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 133) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.staticIndicator.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 133);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.staticIndicator.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.staticIndicator.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 133) = v3;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasStaticIndicator.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 133) != 4;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearStaticIndicator()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 133) = 4;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.rotationToTrueNorthFromMagnetometerRad.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 136);
  if (*(v1 + 140))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.rotationToTrueNorthFromMagnetometerRad.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 136) = a1;
  *(v6 + 140) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.rotationToTrueNorthFromMagnetometerRad.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 136);
  if (*(v6 + 140))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.rotationToTrueNorthFromMagnetometerRad.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.rotationToTrueNorthFromMagnetometerRad.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 136) = v3;
  *(v7 + 140) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasRotationToTrueNorthFromMagnetometerRad.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 140) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearRotationToTrueNorthFromMagnetometerRad()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 136) = 0;
  *(v4 + 140) = 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_AccelSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelSample and conformance CLP_LogEntry_PrivateData_AccelSample, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccelSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_AccelSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelSample and conformance CLP_LogEntry_PrivateData_AccelSample, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccelSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_AccelSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelSample and conformance CLP_LogEntry_PrivateData_AccelSample, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccelSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Accel.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Accel(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelSample and conformance CLP_LogEntry_PrivateData_AccelSample, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccelSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Accel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_Accel.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelSample and conformance CLP_LogEntry_PrivateData_AccelSample, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AccelSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CLP_LogEntry_PrivateData_Accel(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_Accel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Accel(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Accel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Accel and conformance CLP_LogEntry_PrivateData_Accel, type metadata accessor for CLP_LogEntry_PrivateData_Accel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Accel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Accel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Accel and conformance CLP_LogEntry_PrivateData_Accel, type metadata accessor for CLP_LogEntry_PrivateData_Accel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Accel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Accel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Accel and conformance CLP_LogEntry_PrivateData_Accel, type metadata accessor for CLP_LogEntry_PrivateData_Accel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Accel);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, a4);
  if (!v6)
  {
    v9 = a5(0);
    if ((*(v5 + v9[6] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    if ((*(v5 + v9[7] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    if ((*(v5 + v9[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_AccelSample@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + a1[8];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GyroSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GyroSample and conformance CLP_LogEntry_PrivateData_GyroSample, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GyroSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GyroSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GyroSample and conformance CLP_LogEntry_PrivateData_GyroSample, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GyroSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GyroSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GyroSample and conformance CLP_LogEntry_PrivateData_GyroSample, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GyroSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Gyro.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GyroSample and conformance CLP_LogEntry_PrivateData_GyroSample, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GyroSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Gyro.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_Gyro.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GyroSample and conformance CLP_LogEntry_PrivateData_GyroSample, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GyroSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_Gyro.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Gyro(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Gyro and conformance CLP_LogEntry_PrivateData_Gyro, type metadata accessor for CLP_LogEntry_PrivateData_Gyro, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Gyro);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Gyro(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Gyro and conformance CLP_LogEntry_PrivateData_Gyro, type metadata accessor for CLP_LogEntry_PrivateData_Gyro, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Gyro);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Gyro(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Gyro and conformance CLP_LogEntry_PrivateData_Gyro, type metadata accessor for CLP_LogEntry_PrivateData_Gyro, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Gyro);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_BaroSample.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BaroSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
  if (!v4)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
    if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
    {
      v7 = v6;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
      v6 = v7;
    }

    if ((*(v3 + *(v6 + 28) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_BaroSample@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BaroSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BaroSample and conformance CLP_LogEntry_PrivateData_BaroSample, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BaroSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BaroSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BaroSample and conformance CLP_LogEntry_PrivateData_BaroSample, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BaroSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BaroSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BaroSample and conformance CLP_LogEntry_PrivateData_BaroSample, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BaroSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Baro.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Baro(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BaroSample and conformance CLP_LogEntry_PrivateData_BaroSample, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BaroSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Baro.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_Baro.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BaroSample and conformance CLP_LogEntry_PrivateData_BaroSample, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BaroSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CLP_LogEntry_PrivateData_Baro(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_Baro.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Baro(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Baro(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Baro and conformance CLP_LogEntry_PrivateData_Baro, type metadata accessor for CLP_LogEntry_PrivateData_Baro, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Baro);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Baro(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Baro and conformance CLP_LogEntry_PrivateData_Baro, type metadata accessor for CLP_LogEntry_PrivateData_Baro, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Baro);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Baro(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Baro and conformance CLP_LogEntry_PrivateData_Baro, type metadata accessor for CLP_LogEntry_PrivateData_Baro, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Baro);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v8);

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
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType();
          goto LABEL_16;
        case 2:
        case 14:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_17;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 12:
        case 15:
        case 21:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 11:
        case 16:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_17;
        case 13:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType();
          goto LABEL_16;
        case 17:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType();
          goto LABEL_16;
        case 18:
        case 19:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType();
          goto LABEL_16;
        case 20:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
LABEL_16:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 22:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
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

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 4)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3);
  v11 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  swift_beginAccess();
  if ((*(v11 + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v12 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  swift_beginAccess();
  if ((*(v12 + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v13 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  swift_beginAccess();
  if ((*(v13 + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v14 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  swift_beginAccess();
  if ((*(v14 + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy, 7);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course, 8);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy, 9);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp, 10);
  closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence, 11, MEMORY[0x277D21848]);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan, 12);
  closure #13 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #14 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse, 15);
  closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor, 16, MEMORY[0x277D21848]);
  closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType, 17, &type metadata for CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType);
  closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType, 18, &type metadata for CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType, 19, &type metadata for CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType, 20, &type metadata for CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude, 21);
  closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController, 22);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
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

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  result = swift_beginAccess();
  if (*(a1 + v5) != 14)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
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

uint64_t closure #1 in static CLP_LogEntry_PrivateData_DaemonLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v125 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v4 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v6 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
  v7 = MEMORY[0x28223BE20](v124);
  v9 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v118 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v122 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v118 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v118 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v118 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  v23 = *(a2 + 16);
  if (v22 == 4)
  {
    if (v23 != 4)
    {
      return 0;
    }
  }

  else if (v23 == 4 || qword_23D1C6D90[v22] != qword_23D1C6D90[v23])
  {
    return 0;
  }

  v120 = v9;
  v121 = v6;
  v126 = a2;
  v24 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v24, v21, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v26 = *(v124 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, v11, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v27 = v126 + v25;
  v28 = v126;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27, &v11[v26], &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v31 = *(v4 + 48);
  v29 = v4 + 48;
  v30 = v31;
  v32 = v125;
  if (v31(v11, 1, v125) == 1)
  {

    outlined destroy of Any?(v21, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    if (v30(&v11[v26], 1, v32) == 1)
    {
      v118 = v30;
      v119 = v29;
      outlined destroy of Any?(v11, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      goto LABEL_15;
    }

LABEL_11:
    outlined destroy of Any?(v11, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
    goto LABEL_12;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v11, v19, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if (v30(&v11[v26], 1, v32) == 1)
  {

    outlined destroy of Any?(v21, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    goto LABEL_11;
  }

  v118 = v30;
  v119 = v29;
  v34 = &v11[v26];
  v35 = v121;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v34, v121, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  v36 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v19, v35, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v35, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of Any?(v21, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v28 = v126;
  outlined destroy of Any?(v11, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if ((v36 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v37 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  v39 = v28 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  swift_beginAccess();
  if (v37)
  {
    if ((*(v39 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v39 + 8) & 1) != 0 || v38 != *v39)
  {
    goto LABEL_12;
  }

  v40 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  swift_beginAccess();
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  v42 = v28 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  swift_beginAccess();
  if (v40)
  {
    if ((*(v42 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v42 + 8) & 1) != 0 || v41 != *v42)
  {
    goto LABEL_12;
  }

  v43 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = v28 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  swift_beginAccess();
  if (v43)
  {
    if ((*(v45 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v45 + 8) & 1) != 0 || v44 != *v45)
  {
    goto LABEL_12;
  }

  v46 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  swift_beginAccess();
  v47 = *v46;
  LOBYTE(v46) = *(v46 + 8);
  v48 = v28 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  swift_beginAccess();
  if (v46)
  {
    if ((*(v48 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v48 + 8) & 1) != 0 || v47 != *v48)
  {
    goto LABEL_12;
  }

  v49 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  swift_beginAccess();
  v50 = *v49;
  LOBYTE(v49) = *(v49 + 8);
  v51 = v28 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  swift_beginAccess();
  if (v49)
  {
    if ((*(v51 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v51 + 8) & 1) != 0 || v50 != *v51)
  {
    goto LABEL_12;
  }

  v52 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);
  v54 = v28 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  swift_beginAccess();
  if (v52)
  {
    if ((*(v54 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v54 + 8) & 1) != 0 || v53 != *v54)
  {
    goto LABEL_12;
  }

  v55 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  swift_beginAccess();
  v56 = *v55;
  LOBYTE(v55) = *(v55 + 8);
  v57 = v28 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  swift_beginAccess();
  if (v55)
  {
    if ((*(v57 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v57 + 8) & 1) != 0 || v56 != *v57)
  {
    goto LABEL_12;
  }

  v58 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v59 = *v58;
  LOBYTE(v58) = *(v58 + 8);
  v60 = v28 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  if (v58)
  {
    if (*(v60 + 8))
    {
      goto LABEL_55;
    }

LABEL_12:

    return 0;
  }

  if ((*(v60 + 8) & 1) != 0 || v59 != *v60)
  {
    goto LABEL_12;
  }

LABEL_55:
  v61 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  swift_beginAccess();
  v62 = *v61;
  LOBYTE(v61) = *(v61 + 4);
  v63 = v28 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  swift_beginAccess();
  if (v61)
  {
    if ((*(v63 + 4) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v63 + 4) & 1) != 0 || v62 != *v63)
  {
    goto LABEL_12;
  }

  v64 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  swift_beginAccess();
  v65 = *v64;
  LOBYTE(v64) = *(v64 + 8);
  v66 = v126 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  swift_beginAccess();
  if (v64)
  {
    if ((*(v66 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v66 + 8) & 1) != 0 || v65 != *v66)
  {
    goto LABEL_12;
  }

  v67 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  v68 = *(a1 + v67);
  v69 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  v70 = v126;
  swift_beginAccess();
  v71 = *(v70 + v69);
  if (v68 == 14)
  {
    if (v71 != 14)
    {
      goto LABEL_12;
    }
  }

  else if (v71 == 14 || v68 != v71)
  {
    goto LABEL_12;
  }

  v72 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  v73 = v123;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v72, v123, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v74 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  v75 = v126;
  swift_beginAccess();
  v76 = *(v124 + 48);
  v77 = v120;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v73, v120, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v75 + v74, v77 + v76, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if (v118(v77, 1, v125) == 1)
  {
    outlined destroy of Any?(v123, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    if (v118(&v120[v76], 1, v125) == 1)
    {
      outlined destroy of Any?(v120, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      goto LABEL_78;
    }

LABEL_75:
    outlined destroy of Any?(v120, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
    goto LABEL_12;
  }

  v78 = v120;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v120, v122, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if (v118((v78 + v76), 1, v125) == 1)
  {
    outlined destroy of Any?(v123, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v122, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    goto LABEL_75;
  }

  v79 = v120;
  v80 = &v120[v76];
  v81 = v121;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v80, v121, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v82 = v122;
  v83 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v122, v81, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v81, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of Any?(v123, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v82, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of Any?(v79, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if ((v83 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_78:
  v84 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  swift_beginAccess();
  v85 = *v84;
  LOBYTE(v84) = *(v84 + 8);
  v86 = v126 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  swift_beginAccess();
  if (v84)
  {
    if ((*(v86 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v86 + 8) & 1) != 0 || v85 != *v86)
  {
    goto LABEL_12;
  }

  v87 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  swift_beginAccess();
  v88 = *v87;
  LOBYTE(v87) = *(v87 + 4);
  v89 = v126 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  swift_beginAccess();
  if (v87)
  {
    if ((*(v89 + 4) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v89 + 4) & 1) != 0 || v88 != *v89)
  {
    goto LABEL_12;
  }

  v90 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  swift_beginAccess();
  v91 = *(a1 + v90);
  v92 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  v93 = v126;
  swift_beginAccess();
  v94 = *(v93 + v92);
  if (v91 == 5)
  {
    if (v94 != 5)
    {
      goto LABEL_12;
    }
  }

  else if (v94 == 5 || qword_23D1C6DB0[v91] != qword_23D1C6DB0[v94])
  {
    goto LABEL_12;
  }

  v95 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v96 = *(a1 + v95);
  v97 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  v98 = v126;
  swift_beginAccess();
  v99 = *(v98 + v97);
  if (v96 == 3)
  {
    if (v99 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v99 == 3 || v96 != v99)
  {
    goto LABEL_12;
  }

  v100 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  swift_beginAccess();
  v101 = *(a1 + v100);
  v102 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  v103 = v126;
  swift_beginAccess();
  v104 = *(v103 + v102);
  if (v101 == 3)
  {
    if (v104 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v104 == 3 || v101 != v104)
  {
    goto LABEL_12;
  }

  v105 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  swift_beginAccess();
  v106 = *(a1 + v105);
  v107 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  v108 = v126;
  swift_beginAccess();
  v109 = *(v108 + v107);
  if (v106 == 8)
  {
    if (v109 != 8)
    {
      goto LABEL_12;
    }
  }

  else if (v109 == 8 || v106 != v109)
  {
    goto LABEL_12;
  }

  v110 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  swift_beginAccess();
  v111 = *v110;
  LOBYTE(v110) = *(v110 + 8);
  v112 = v126 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  swift_beginAccess();
  if (v110)
  {
    if ((*(v112 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v112 + 8) & 1) != 0 || v111 != *v112)
  {
    goto LABEL_12;
  }

  v113 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  swift_beginAccess();
  v114 = *(a1 + v113);

  v115 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  v116 = v126;
  swift_beginAccess();
  v117 = *(v116 + v115);

  if (v114 == 2)
  {
    if (v117 != 2)
    {
      return 0;
    }
  }

  else if (v117 == 2 || ((v114 ^ v117) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DaemonLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DaemonLocation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocation);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MapMatcherData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_MapMatcherData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v6 = result;
  if (*(v3 + result[5] + 8))
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

  if ((*(v3 + v6[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MapMatcherData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatcherData and conformance CLP_LogEntry_PrivateData_MapMatcherData, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapMatcherData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MapMatcherData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatcherData and conformance CLP_LogEntry_PrivateData_MapMatcherData, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapMatcherData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MapMatcherData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatcherData and conformance CLP_LogEntry_PrivateData_MapMatcherData, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapMatcherData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ClientLocationCoordinate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      a4(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ClientLocationCoordinate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20) + 8))
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

  if ((*(v4 + *(v7 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_PressureSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PressureSample and conformance CLP_LogEntry_PrivateData_PressureSample, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PressureSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_PressureSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PressureSample and conformance CLP_LogEntry_PrivateData_PressureSample, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PressureSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PressureSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PressureSample and conformance CLP_LogEntry_PrivateData_PressureSample, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PressureSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_5;
        }

        if (result == 7 || result == 8)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v10 = result;
  if (*(v5 + result[5]) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  closure #6 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 7;
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
  *(a2 + a1[11]) = 2;
  *(a2 + v13) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteInfo and conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteInfo and conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteInfo and conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v8);

    *(v5 + v6) = v9;
  }

  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 12:
      case 20:
      case 21:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 32:
      case 33:
      case 36:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 44:
      case 45:
      case 50:
      case 51:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        goto LABEL_26;
      case 6:
      case 7:
      case 8:
      case 18:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_26;
      case 9:
      case 15:
      case 23:
      case 31:
      case 34:
      case 43:
      case 53:
      case 56:
      case 57:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_26;
      case 10:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType();
        goto LABEL_25;
      case 11:
      case 19:
      case 35:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
        v12 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate;
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientLocationCoordinate;
        goto LABEL_19;
      case 13:
      case 14:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_26;
      case 16:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
        v12 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PressureSample and conformance CLP_LogEntry_PrivateData_PressureSample;
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_PressureSample;
        goto LABEL_19;
      case 17:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType();
        goto LABEL_25;
      case 22:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType();
        goto LABEL_25;
      case 24:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
        v12 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatcherData and conformance CLP_LogEntry_PrivateData_MapMatcherData;
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapMatcherData;
        goto LABEL_19;
      case 37:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType();
        goto LABEL_25;
      case 46:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteInfo and conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_26;
      case 47:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent();
        goto LABEL_25;
      case 48:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
        v12 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo;
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo;
LABEL_19:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v12, v13, v14);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_26;
      case 49:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType();
        goto LABEL_25;
      case 52:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType();
        goto LABEL_25;
      case 54:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy();
        goto LABEL_25;
      case 55:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType();
LABEL_25:
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_26:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  result = swift_beginAccess();
  if ((v9[24] & 1) == 0)
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (!v4)
  {
    swift_beginAccess();
    if ((v9[40] & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((v9[56] & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((v9[72] & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #5 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #6 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3, 6);
    closure #7 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3, 7);
    closure #8 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3, 8);
    closure #9 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #10 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse, 12);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay, 13, MEMORY[0x277D21848]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass, 14, MEMORY[0x277D21848]);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted, 15);
    closure #16 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType, 17, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation, 18);
    closure #19 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy, 20);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime, 21);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType, 22, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates, 23);
    closure #24 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope, 25);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope, 26);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude, 27);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty, 28);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude, 29);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty, 30);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed, 31);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy, 32);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy, 33);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused, 34);
    closure #35 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy, 36);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType, 37, &type metadata for CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse, 38);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy, 39);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError, 40);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude, 41);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy, 42);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl, 43);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude, 44);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy, 45);
    v11 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
    swift_beginAccess();
    if (*(*&v9[v11] + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteInfo and conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent, 47, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent);
    closure #47 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType, 49, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor, 50);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor, 51);
    closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType, 52, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching, 53);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy, 54, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy);
    closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType, 55, &type metadata for CLP_LogEntry_PrivateData_BatchedLocationFixType);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp, 56);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators, 57);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 88) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 113) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 114) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
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

uint64_t closure #16 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PressureSample and conformance CLP_LogEntry_PrivateData_PressureSample, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PressureSample);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
}

uint64_t closure #19 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
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

uint64_t closure #24 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatcherData and conformance CLP_LogEntry_PrivateData_MapMatcherData, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MapMatcherData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
}

uint64_t closure #35 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
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

uint64_t closure #47 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
}

uint64_t closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 4)
  {
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 5)
  {
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_DaemonLocationPrivate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v377 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v375 = *(v377 - 8);
  MEMORY[0x28223BE20](v377);
  v376 = &v360 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSg_AFtMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSg_AFtMR);
  MEMORY[0x28223BE20](v372);
  v378 = &v360 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v374 = &v360 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v373 = &v360 - v9;
  v367 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v365 = *(v367 - 8);
  MEMORY[0x28223BE20](v367);
  v366 = &v360 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSg_ADtMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSg_ADtMR);
  MEMORY[0x28223BE20](v362);
  v368 = &v360 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v364 = &v360 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v363 = &v360 - v15;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v383 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v382 = &v360 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSg_ADtMR);
  MEMORY[0x28223BE20](v18);
  v384 = &v360 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v360 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v360 - v24;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v387 = *(v26 - 8);
  v388 = v26;
  MEMORY[0x28223BE20](v26);
  v385 = &v360 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
  v28 = MEMORY[0x28223BE20](v386);
  v371 = &v360 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v381 = &v360 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v360 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v370 = &v360 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v369 = &v360 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v379 = &v360 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v380 = &v360 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v360 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v360 - v46;
  swift_beginAccess();
  v48 = *(a1 + 16);
  v389 = a1;
  LOBYTE(a1) = *(a1 + 24);
  swift_beginAccess();
  v49 = *(a2 + 24);
  if (a1)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v48 != *(a2 + 16))
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  v390 = a2;
  v50 = v389;
  swift_beginAccess();
  v51 = *(v50 + 32);
  v52 = *(v50 + 40);
  swift_beginAccess();
  v53 = *(v390 + 40);
  if (v52)
  {
    if (!*(v390 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v51 != *(v390 + 32))
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v54 = *(v50 + 48);
  v55 = *(v50 + 56);
  swift_beginAccess();
  v56 = *(v390 + 56);
  if (v55)
  {
    if (!*(v390 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v54 != *(v390 + 48))
    {
      v56 = 1;
    }

    if (v56)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v57 = *(v50 + 64);
  v58 = *(v50 + 72);
  swift_beginAccess();
  v59 = *(v390 + 72);
  if (v58)
  {
    if (!*(v390 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v57 != *(v390 + 64))
    {
      v59 = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v60 = *(v50 + 80);
  v61 = *(v50 + 88);
  swift_beginAccess();
  v62 = *(v390 + 88);
  if (v61)
  {
    if (!*(v390 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (v60 != *(v390 + 80))
    {
      v62 = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v63 = *(v50 + 92);
  v64 = *(v50 + 96);
  v361 = (v390 + 92);
  swift_beginAccess();
  v65 = *(v390 + 96);
  if (v64)
  {
    if (!*(v390 + 96))
    {
      return 0;
    }
  }

  else
  {
    if (v63 != *v361)
    {
      v65 = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v66 = *(v50 + 100);
  v67 = *(v50 + 104);
  v361 = (v390 + 100);
  swift_beginAccess();
  v68 = *(v390 + 104);
  if (v67)
  {
    if (!*(v390 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v66 != *v361)
    {
      v68 = 1;
    }

    if (v68)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v69 = *(v50 + 108);
  v70 = *(v50 + 112);
  v361 = (v390 + 108);
  swift_beginAccess();
  v71 = *(v390 + 112);
  if (v70)
  {
    if (!*(v390 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v69 != *v361)
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v72 = *(v50 + 113);
  swift_beginAccess();
  v73 = *(v390 + 113);
  if (v72 == 2)
  {
    if (v73 != 2)
    {
      return 0;
    }
  }

  else if (v73 == 2 || ((v72 ^ v73) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v74 = *(v50 + 114);
  swift_beginAccess();
  v75 = *(v390 + 114);
  if (v74 == 4)
  {
    if (v75 != 4)
    {
      return 0;
    }

LABEL_59:
    v77 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    v78 = v389;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v78 + v77, v47, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    v361 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    v79 = v390;
    swift_beginAccess();
    v80 = *(v386 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47, v33, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    v81 = v361 + v79;
    v361 = v80;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v81, v80 + v33, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    v83 = v387 + 48;
    v82 = *(v387 + 48);
    if (v82(v33, 1, v388) == 1)
    {

      v84 = v390;

      outlined destroy of Any?(v47, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      v85 = v82(v361 + v33, 1, v388);
      v86 = v389;
      if (v85 == 1)
      {
        v360 = v82;
        v387 = v83;
        outlined destroy of Any?(v33, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
        goto LABEL_67;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v33, v45, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      if (v82(v361 + v33, 1, v388) != 1)
      {
        v360 = v82;
        v387 = v83;
        v87 = v385;
        outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v361 + v33, v385, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

        v88 = v390;

        LODWORD(v361) = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v45, v87, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v87, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        outlined destroy of Any?(v47, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
        v89 = v45;
        v84 = v88;
        v86 = v389;
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v89, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        outlined destroy of Any?(v33, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
        if ((v361 & 1) == 0)
        {
          goto LABEL_94;
        }

LABEL_67:
        v90 = v86 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
        swift_beginAccess();
        v91 = *v90;
        v92 = *(v90 + 8);
        v93 = v84 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
        swift_beginAccess();
        if (v92)
        {
          if ((*(v93 + 8) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v93 + 8) & 1) != 0 || v91 != *v93)
        {
          goto LABEL_94;
        }

        v94 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
        swift_beginAccess();
        v95 = *v94;
        v96 = *(v94 + 4);
        v97 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
        swift_beginAccess();
        if (v96)
        {
          if ((*(v97 + 4) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v97 + 4) & 1) != 0 || v95 != *v97)
        {
          goto LABEL_94;
        }

        v98 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
        swift_beginAccess();
        v99 = *v98;
        v100 = *(v98 + 4);
        v101 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
        swift_beginAccess();
        if (v100)
        {
          if ((*(v101 + 4) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v101 + 4) & 1) != 0 || v99 != *v101)
        {
          goto LABEL_94;
        }

        v102 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
        v103 = v389;
        swift_beginAccess();
        v104 = *(v103 + v102);
        v105 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
        v106 = v390;
        swift_beginAccess();
        v107 = *(v106 + v105);
        if (v104 == 2)
        {
          if (v107 != 2)
          {
            goto LABEL_94;
          }
        }

        else if (v107 == 2 || ((v104 ^ v107) & 1) != 0)
        {
          goto LABEL_94;
        }

        v108 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
        v109 = v389;
        swift_beginAccess();
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v109 + v108, v25, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
        v110 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
        v111 = v390;
        swift_beginAccess();
        v112 = *(v18 + 48);
        v113 = v384;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v25, v384, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v111 + v110, v113 + v112, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
        v114 = *(v383 + 48);
        if (v114(v113, 1, v16) == 1)
        {
          outlined destroy of Any?(v25, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
          if (v114(v384 + v112, 1, v16) == 1)
          {
            outlined destroy of Any?(v384, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
            goto LABEL_98;
          }
        }

        else
        {
          v115 = v384;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v384, v23, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
          if (v114(v115 + v112, 1, v16) != 1)
          {
            v119 = v384;
            v120 = v382;
            outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v384 + v112, v382, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            v121 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v23, v120, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v120, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            outlined destroy of Any?(v25, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v23, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            outlined destroy of Any?(v119, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
            if ((v121 & 1) == 0)
            {
              goto LABEL_94;
            }

LABEL_98:
            v122 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
            v123 = v389;
            swift_beginAccess();
            v124 = *(v123 + v122);
            v125 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
            v126 = v390;
            swift_beginAccess();
            v127 = *(v126 + v125);
            if (v124 == 4)
            {
              if (v127 != 4)
              {
                goto LABEL_94;
              }
            }

            else if (v127 == 4 || v124 != v127)
            {
              goto LABEL_94;
            }

            v128 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
            swift_beginAccess();
            v129 = *v128;
            v130 = *(v128 + 4);
            v131 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
            swift_beginAccess();
            if (v130)
            {
              if ((*(v131 + 4) & 1) == 0)
              {
                goto LABEL_94;
              }
            }

            else if ((*(v131 + 4) & 1) != 0 || v129 != *v131)
            {
              goto LABEL_94;
            }

            v132 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
            v133 = v389;
            swift_beginAccess();
            v134 = v380;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v133 + v132, v380, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
            v135 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
            v136 = v390;
            swift_beginAccess();
            v137 = *(v386 + 48);
            v138 = v134;
            v139 = v381;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v138, v381, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v136 + v135, v139 + v137, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
            if (v360(v139, 1, v388) == 1)
            {
              outlined destroy of Any?(v380, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
              if (v360(v381 + v137, 1, v388) == 1)
              {
                outlined destroy of Any?(v381, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                goto LABEL_115;
              }
            }

            else
            {
              v140 = v381;
              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v381, v379, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
              if (v360(v140 + v137, 1, v388) != 1)
              {
                v141 = v381;
                v142 = v381 + v137;
                v143 = v385;
                outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v142, v385, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                v144 = v379;
                v145 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v379, v143, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v143, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                outlined destroy of Any?(v380, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v144, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                outlined destroy of Any?(v141, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                if ((v145 & 1) == 0)
                {
                  goto LABEL_94;
                }

LABEL_115:
                v146 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
                swift_beginAccess();
                v147 = *v146;
                v148 = *(v146 + 8);
                v149 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
                swift_beginAccess();
                if (v148)
                {
                  if ((*(v149 + 8) & 1) == 0)
                  {
                    goto LABEL_94;
                  }
                }

                else if ((*(v149 + 8) & 1) != 0 || v147 != *v149)
                {
                  goto LABEL_94;
                }

                v150 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
                swift_beginAccess();
                v151 = *v150;
                v152 = *(v150 + 8);
                v153 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
                swift_beginAccess();
                if (v152)
                {
                  if ((*(v153 + 8) & 1) == 0)
                  {
                    goto LABEL_94;
                  }
                }

                else if ((*(v153 + 8) & 1) != 0 || v151 != *v153)
                {
                  goto LABEL_94;
                }

                v154 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
                v155 = v389;
                swift_beginAccess();
                v156 = *(v155 + v154);
                v157 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
                v158 = v390;
                swift_beginAccess();
                v159 = *(v158 + v157);
                if (v156 == 3)
                {
                  if (v159 != 3)
                  {
                    goto LABEL_94;
                  }
                }

                else if (v159 == 3 || v156 != v159)
                {
                  goto LABEL_94;
                }

                v160 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
                v161 = v389;
                swift_beginAccess();
                v162 = *(v161 + v160);
                v163 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
                v164 = v390;
                swift_beginAccess();
                v165 = *(v164 + v163);
                if (v162 == 2)
                {
                  if (v165 != 2)
                  {
                    goto LABEL_94;
                  }
                }

                else if (v165 == 2 || ((v162 ^ v165) & 1) != 0)
                {
                  goto LABEL_94;
                }

                v166 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
                v167 = v389;
                swift_beginAccess();
                v168 = v363;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v167 + v166, v363, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                v169 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
                v170 = v390;
                swift_beginAccess();
                v171 = *(v362 + 48);
                v172 = v168;
                v173 = v368;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v172, v368, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v170 + v169, v173 + v171, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                v174 = *(v365 + 48);
                if (v174(v173, 1, v367) == 1)
                {
                  outlined destroy of Any?(v363, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                  if (v174(v368 + v171, 1, v367) == 1)
                  {
                    outlined destroy of Any?(v368, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                    goto LABEL_142;
                  }
                }

                else
                {
                  v175 = v368;
                  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v368, v364, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                  if (v174(v175 + v171, 1, v367) != 1)
                  {
                    v176 = v368;
                    v177 = v368 + v171;
                    v178 = v366;
                    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v177, v366, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    v179 = v364;
                    v180 = specialized static CLP_LogEntry_PrivateData_MapMatcherData.== infix(_:_:)(v364, v178);
                    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v178, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    outlined destroy of Any?(v363, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v179, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    outlined destroy of Any?(v176, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                    if ((v180 & 1) == 0)
                    {
                      goto LABEL_94;
                    }

LABEL_142:
                    v181 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
                    swift_beginAccess();
                    v182 = *v181;
                    v183 = *(v181 + 8);
                    v184 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
                    swift_beginAccess();
                    if (v183)
                    {
                      if ((*(v184 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v184 + 8) & 1) != 0 || v182 != *v184)
                    {
                      goto LABEL_94;
                    }

                    v185 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
                    swift_beginAccess();
                    v186 = *v185;
                    v187 = *(v185 + 8);
                    v188 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
                    swift_beginAccess();
                    if (v187)
                    {
                      if ((*(v188 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v188 + 8) & 1) != 0 || v186 != *v188)
                    {
                      goto LABEL_94;
                    }

                    v189 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
                    swift_beginAccess();
                    v190 = *v189;
                    v191 = *(v189 + 8);
                    v192 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
                    swift_beginAccess();
                    if (v191)
                    {
                      if ((*(v192 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v192 + 8) & 1) != 0 || v190 != *v192)
                    {
                      goto LABEL_94;
                    }

                    v193 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
                    swift_beginAccess();
                    v194 = *v193;
                    v195 = *(v193 + 8);
                    v196 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
                    swift_beginAccess();
                    if (v195)
                    {
                      if ((*(v196 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v196 + 8) & 1) != 0 || v194 != *v196)
                    {
                      goto LABEL_94;
                    }

                    v197 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
                    swift_beginAccess();
                    v198 = *v197;
                    v199 = *(v197 + 8);
                    v200 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
                    swift_beginAccess();
                    if (v199)
                    {
                      if ((*(v200 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v200 + 8) & 1) != 0 || v198 != *v200)
                    {
                      goto LABEL_94;
                    }

                    v201 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
                    swift_beginAccess();
                    v202 = *v201;
                    v203 = *(v201 + 8);
                    v204 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
                    swift_beginAccess();
                    if (v203)
                    {
                      if ((*(v204 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v204 + 8) & 1) != 0 || v202 != *v204)
                    {
                      goto LABEL_94;
                    }

                    v205 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
                    v206 = v389;
                    swift_beginAccess();
                    v207 = *(v206 + v205);
                    v208 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
                    v209 = v390;
                    swift_beginAccess();
                    v210 = *(v209 + v208);
                    if (v207 == 2)
                    {
                      if (v210 != 2)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if (v210 == 2 || ((v207 ^ v210) & 1) != 0)
                    {
                      goto LABEL_94;
                    }

                    v211 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
                    swift_beginAccess();
                    v212 = *v211;
                    v213 = *(v211 + 8);
                    v214 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
                    swift_beginAccess();
                    if (v213)
                    {
                      if ((*(v214 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v214 + 8) & 1) != 0 || v212 != *v214)
                    {
                      goto LABEL_94;
                    }

                    v215 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
                    swift_beginAccess();
                    v216 = *v215;
                    v217 = *(v215 + 8);
                    v218 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
                    swift_beginAccess();
                    if (v217)
                    {
                      if ((*(v218 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v218 + 8) & 1) != 0 || v216 != *v218)
                    {
                      goto LABEL_94;
                    }

                    v219 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
                    v220 = v389;
                    swift_beginAccess();
                    v221 = *(v220 + v219);
                    v222 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
                    v223 = v390;
                    swift_beginAccess();
                    v224 = *(v223 + v222);
                    if (v221 == 2)
                    {
                      if (v224 != 2)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if (v224 == 2 || ((v221 ^ v224) & 1) != 0)
                    {
                      goto LABEL_94;
                    }

                    v225 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
                    v226 = v389;
                    swift_beginAccess();
                    v227 = v369;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v226 + v225, v369, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                    v228 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
                    v229 = v390;
                    swift_beginAccess();
                    v230 = *(v386 + 48);
                    v231 = v227;
                    v232 = v371;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v231, v371, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v229 + v228, v232 + v230, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                    if (v360(v232, 1, v388) == 1)
                    {
                      outlined destroy of Any?(v369, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                      if (v360(v371 + v230, 1, v388) == 1)
                      {
                        outlined destroy of Any?(v371, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
LABEL_199:
                        v239 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
                        swift_beginAccess();
                        v240 = *v239;
                        v241 = *(v239 + 8);
                        v242 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
                        swift_beginAccess();
                        if (v241)
                        {
                          if ((*(v242 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v242 + 8) & 1) != 0 || v240 != *v242)
                        {
                          goto LABEL_94;
                        }

                        v243 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
                        v244 = v389;
                        swift_beginAccess();
                        v245 = *(v244 + v243);
                        v246 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
                        v247 = v390;
                        swift_beginAccess();
                        v248 = *(v247 + v246);
                        if (v245 == 3)
                        {
                          if (v248 != 3)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v248 == 3 || v245 != v248)
                        {
                          goto LABEL_94;
                        }

                        v249 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
                        swift_beginAccess();
                        v250 = *v249;
                        v251 = *(v249 + 8);
                        v252 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
                        swift_beginAccess();
                        if (v251)
                        {
                          if ((*(v252 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v252 + 8) & 1) != 0 || v250 != *v252)
                        {
                          goto LABEL_94;
                        }

                        v253 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
                        swift_beginAccess();
                        v254 = *v253;
                        v255 = *(v253 + 8);
                        v256 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
                        swift_beginAccess();
                        if (v255)
                        {
                          if ((*(v256 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v256 + 8) & 1) != 0 || v254 != *v256)
                        {
                          goto LABEL_94;
                        }

                        v257 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
                        swift_beginAccess();
                        v258 = *v257;
                        v259 = *(v257 + 8);
                        v260 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
                        swift_beginAccess();
                        if (v259)
                        {
                          if ((*(v260 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v260 + 8) & 1) != 0 || v258 != *v260)
                        {
                          goto LABEL_94;
                        }

                        v261 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
                        swift_beginAccess();
                        v262 = *v261;
                        v263 = *(v261 + 8);
                        v264 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
                        swift_beginAccess();
                        if (v263)
                        {
                          if ((*(v264 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v264 + 8) & 1) != 0 || v262 != *v264)
                        {
                          goto LABEL_94;
                        }

                        v265 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
                        swift_beginAccess();
                        v266 = *v265;
                        v267 = *(v265 + 8);
                        v268 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
                        swift_beginAccess();
                        if (v267)
                        {
                          if ((*(v268 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v268 + 8) & 1) != 0 || v266 != *v268)
                        {
                          goto LABEL_94;
                        }

                        v269 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
                        v270 = v389;
                        swift_beginAccess();
                        v271 = *(v270 + v269);
                        v272 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
                        v273 = v390;
                        swift_beginAccess();
                        v274 = *(v273 + v272);
                        if (v271 == 2)
                        {
                          if (v274 != 2)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v274 == 2 || ((v271 ^ v274) & 1) != 0)
                        {
                          goto LABEL_94;
                        }

                        v275 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
                        swift_beginAccess();
                        v276 = *v275;
                        v277 = *(v275 + 8);
                        v278 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
                        swift_beginAccess();
                        if (v277)
                        {
                          if ((*(v278 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v278 + 8) & 1) != 0 || v276 != *v278)
                        {
                          goto LABEL_94;
                        }

                        v279 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
                        swift_beginAccess();
                        v280 = *v279;
                        v281 = *(v279 + 8);
                        v282 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
                        swift_beginAccess();
                        if (v281)
                        {
                          if ((*(v282 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v282 + 8) & 1) != 0 || v280 != *v282)
                        {
                          goto LABEL_94;
                        }

                        v283 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
                        v284 = v389;
                        swift_beginAccess();
                        v285 = *(v284 + v283);
                        v286 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
                        v287 = v390;
                        swift_beginAccess();
                        v288 = *(v287 + v286);

                        LOBYTE(v287) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSectionV_Tt1g5Tm(v285, v288, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, specialized static CLP_LogEntry_PrivateData_ClientSatelliteInfo.== infix(_:_:));

                        if ((v287 & 1) == 0)
                        {
                          goto LABEL_94;
                        }

                        v289 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
                        v290 = v389;
                        swift_beginAccess();
                        v291 = *(v290 + v289);
                        v292 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
                        v293 = v390;
                        swift_beginAccess();
                        v294 = *(v293 + v292);
                        if (v291 == 3)
                        {
                          if (v294 != 3)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v294 == 3 || v291 != v294)
                        {
                          goto LABEL_94;
                        }

                        v295 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
                        v296 = v389;
                        swift_beginAccess();
                        v297 = v373;
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v296 + v295, v373, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                        v298 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
                        v299 = v390;
                        swift_beginAccess();
                        v300 = *(v372 + 48);
                        v301 = v297;
                        v302 = v378;
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v301, v378, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v299 + v298, v302 + v300, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                        v303 = *(v375 + 48);
                        if (v303(v302, 1, v377) == 1)
                        {
                          outlined destroy of Any?(v373, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                          if (v303(v378 + v300, 1, v377) == 1)
                          {
                            outlined destroy of Any?(v378, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
LABEL_262:
                            v310 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
                            v311 = v389;
                            swift_beginAccess();
                            v312 = *(v311 + v310);
                            v313 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
                            v314 = v390;
                            swift_beginAccess();
                            v315 = *(v314 + v313);
                            if (v312 == 3)
                            {
                              if (v315 != 3)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v315 == 3 || v312 != v315)
                            {
                              goto LABEL_94;
                            }

                            v316 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
                            swift_beginAccess();
                            v317 = *v316;
                            v318 = *(v316 + 8);
                            v319 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
                            swift_beginAccess();
                            if (v318)
                            {
                              if ((*(v319 + 8) & 1) == 0)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if ((*(v319 + 8) & 1) != 0 || v317 != *v319)
                            {
                              goto LABEL_94;
                            }

                            v320 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
                            swift_beginAccess();
                            v321 = *v320;
                            v322 = *(v320 + 8);
                            v323 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
                            swift_beginAccess();
                            if (v322)
                            {
                              if ((*(v323 + 8) & 1) == 0)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if ((*(v323 + 8) & 1) != 0 || v321 != *v323)
                            {
                              goto LABEL_94;
                            }

                            v324 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
                            v325 = v389;
                            swift_beginAccess();
                            v326 = *(v325 + v324);
                            v327 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
                            v328 = v390;
                            swift_beginAccess();
                            v329 = *(v328 + v327);
                            if (v326 == 4)
                            {
                              if (v329 != 4)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v329 == 4 || v326 != v329)
                            {
                              goto LABEL_94;
                            }

                            v330 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
                            v331 = v389;
                            swift_beginAccess();
                            v332 = *(v331 + v330);
                            v333 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
                            v334 = v390;
                            swift_beginAccess();
                            v335 = *(v334 + v333);
                            if (v332 == 2)
                            {
                              if (v335 != 2)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v335 == 2 || ((v332 ^ v335) & 1) != 0)
                            {
                              goto LABEL_94;
                            }

                            v336 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
                            v337 = v389;
                            swift_beginAccess();
                            v338 = *(v337 + v336);
                            v339 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
                            v340 = v390;
                            swift_beginAccess();
                            v341 = *(v340 + v339);
                            if (v338 == 3)
                            {
                              if (v341 != 3)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v341 == 3 || v338 != v341)
                            {
                              goto LABEL_94;
                            }

                            v342 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
                            v343 = v389;
                            swift_beginAccess();
                            v344 = *(v343 + v342);
                            v345 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
                            v346 = v390;
                            swift_beginAccess();
                            v347 = *(v346 + v345);
                            if (v344 == 5)
                            {
                              if (v347 != 5)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v347 == 5 || v344 != v347)
                            {
                              goto LABEL_94;
                            }

                            v348 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
                            v349 = v389;
                            swift_beginAccess();
                            v350 = *(v349 + v348);
                            v351 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
                            v352 = v390;
                            swift_beginAccess();
                            v353 = *(v352 + v351);
                            if (v350 != 2)
                            {
                              if (v353 == 2 || ((v350 ^ v353) & 1) != 0)
                              {
                                goto LABEL_94;
                              }

LABEL_302:
                              v354 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
                              v355 = v389;
                              swift_beginAccess();
                              v356 = *(v355 + v354);

                              v357 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
                              v358 = v390;
                              swift_beginAccess();
                              v359 = *(v358 + v357);

                              if (v356 == 2)
                              {
                                if (v359 != 2)
                                {
                                  return 0;
                                }
                              }

                              else if (v359 == 2 || ((v356 ^ v359) & 1) != 0)
                              {
                                return 0;
                              }

                              return 1;
                            }

                            if (v353 == 2)
                            {
                              goto LABEL_302;
                            }

LABEL_94:

                            return 0;
                          }
                        }

                        else
                        {
                          v304 = v378;
                          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v378, v374, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                          if (v303(v304 + v300, 1, v377) != 1)
                          {
                            v305 = v378;
                            v306 = v378 + v300;
                            v307 = v376;
                            outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v306, v376, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            v308 = v374;
                            v309 = specialized static CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.== infix(_:_:)(v374, v307);
                            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v307, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            outlined destroy of Any?(v373, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v308, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            outlined destroy of Any?(v305, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                            if ((v309 & 1) == 0)
                            {
                              goto LABEL_94;
                            }

                            goto LABEL_262;
                          }

                          outlined destroy of Any?(v373, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                          outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v374, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                        }

                        v116 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSg_AFtMd;
                        v117 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSg_AFtMR;
                        v118 = v378;
LABEL_93:
                        outlined destroy of Any?(v118, v116, v117);
                        goto LABEL_94;
                      }
                    }

                    else
                    {
                      v233 = v371;
                      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v371, v370, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                      if (v360(v233 + v230, 1, v388) != 1)
                      {
                        v234 = v371;
                        v235 = v371 + v230;
                        v236 = v385;
                        outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v235, v385, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        v237 = v370;
                        v238 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v370, v236, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v236, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        outlined destroy of Any?(v369, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v237, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        outlined destroy of Any?(v234, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                        if ((v238 & 1) == 0)
                        {
                          goto LABEL_94;
                        }

                        goto LABEL_199;
                      }

                      outlined destroy of Any?(v369, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v370, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                    }

                    v116 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd;
                    v117 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR;
                    v118 = v371;
                    goto LABEL_93;
                  }

                  outlined destroy of Any?(v363, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v364, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                }

                v116 = &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSg_ADtMd;
                v117 = &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSg_ADtMR;
                v118 = v368;
                goto LABEL_93;
              }

              outlined destroy of Any?(v380, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
              outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v379, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
            }

            v116 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd;
            v117 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR;
            v118 = v381;
            goto LABEL_93;
          }

          outlined destroy of Any?(v25, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
          outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v23, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
        }

        v116 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSg_ADtMd;
        v117 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSg_ADtMR;
        v118 = v384;
        goto LABEL_93;
      }

      outlined destroy of Any?(v47, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    }

    outlined destroy of Any?(v33, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
    goto LABEL_94;
  }

  result = 0;
  if (v75 != 4 && v74 == v75)
  {
    goto LABEL_59;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t *CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.protoMessageName;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          goto LABEL_4;
        }

        if (result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v6 = result;
  if (*(v3 + result[5] + 8))
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

  if ((*(v3 + v6[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v3 + v6[8]) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a2 + v8) = 4;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TechnologyStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TechnologyStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 14)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TechnologyStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TechnologyStatus and conformance CLP_LogEntry_PrivateData_TechnologyStatus, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TechnologyStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TechnologyStatus(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TechnologyStatus and conformance CLP_LogEntry_PrivateData_TechnologyStatus, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TechnologyStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TechnologyStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TechnologyStatus and conformance CLP_LogEntry_PrivateData_TechnologyStatus, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TechnologyStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_VehicleSpeed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleSpeed and conformance CLP_LogEntry_PrivateData_VehicleSpeed, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed, &protocol conformance descriptor for CLP_LogEntry_PrivateData_VehicleSpeed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_VehicleSpeed(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleSpeed and conformance CLP_LogEntry_PrivateData_VehicleSpeed, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed, &protocol conformance descriptor for CLP_LogEntry_PrivateData_VehicleSpeed);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_VehicleSpeed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleSpeed and conformance CLP_LogEntry_PrivateData_VehicleSpeed, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed, &protocol conformance descriptor for CLP_LogEntry_PrivateData_VehicleSpeed);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_VehicleHeading(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleHeading and conformance CLP_LogEntry_PrivateData_VehicleHeading, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading, &protocol conformance descriptor for CLP_LogEntry_PrivateData_VehicleHeading);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_VehicleHeading(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleHeading and conformance CLP_LogEntry_PrivateData_VehicleHeading, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading, &protocol conformance descriptor for CLP_LogEntry_PrivateData_VehicleHeading);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_VehicleHeading(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleHeading and conformance CLP_LogEntry_PrivateData_VehicleHeading, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading, &protocol conformance descriptor for CLP_LogEntry_PrivateData_VehicleHeading);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_XtraFileAvailable.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_XtraFileAvailable.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 8))
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

  if (*(v3 + *(v6 + 24) + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_XtraFileAvailable@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_XtraFileAvailable(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_XtraFileAvailable and conformance CLP_LogEntry_PrivateData_XtraFileAvailable, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable, &protocol conformance descriptor for CLP_LogEntry_PrivateData_XtraFileAvailable);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_XtraFileAvailable(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_XtraFileAvailable and conformance CLP_LogEntry_PrivateData_XtraFileAvailable, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable, &protocol conformance descriptor for CLP_LogEntry_PrivateData_XtraFileAvailable);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_XtraFileAvailable(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_XtraFileAvailable and conformance CLP_LogEntry_PrivateData_XtraFileAvailable, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable, &protocol conformance descriptor for CLP_LogEntry_PrivateData_XtraFileAvailable);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TimeStamp.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20) + 8))
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

  if ((*(v4 + *(v7 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v4 + *(v7 + 28) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationDerivedSpeed and conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationDerivedSpeed and conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationDerivedSpeed and conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v82 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v72 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v69 - v18;
  v20 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v22 = 0;
  *(v22 + 4) = 1;
  v23 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  v69 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  v70 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  v28 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v71 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active) = 2;
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  *v29 = 0;
  *(v29 + 8) = 1;
  v73 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality) = 3;
  v30 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  v74 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  v31 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v31 - 8) + 56))(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  v75 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  v33 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v33 - 8) + 56))(v1 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  v77 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  v35 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v35 - 8) + 56))(v1 + v34, 1, 1, v35);
  v78 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected) = 3;
  v36 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  v79 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  v37 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  (*(*(v37 - 8) + 56))(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v38, v19, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v19, v1 + v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v39 = a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  LODWORD(v20) = *v39;
  LOBYTE(v39) = *(v39 + 4);
  swift_beginAccess();
  *v22 = v20;
  *(v22 + 4) = v39;
  v40 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  v41 = v72;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v40, v72, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v41, v1 + v23, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v43 = v76;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v42, v76, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v44 = v69;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v43, v1 + v44, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v46 = v80;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v45, v80, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v47 = v70;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v46, v1 + v47, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v71;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer);
  swift_beginAccess();
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  swift_beginAccess();
  *v29 = v51;
  *(v29 + 8) = v50;
  v52 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v73;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  v55 = v81;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v54, v81, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v56 = v74;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v55, v1 + v56, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  v58 = v82;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v57, v82, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v59 = v75;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v58, v1 + v59, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v61 = v83;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v60, v83, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v62 = v77;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v61, v1 + v62, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  LOBYTE(v63) = *(a1 + v63);
  v64 = v78;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v66 = v84;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v65, v84, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);

  v67 = v79;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v66, v1 + v67, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_Location._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_Location.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v8);
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
          goto LABEL_21;
        case 2:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_22;
        case 3:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocation;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation;
          goto LABEL_21;
        case 4:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_DaemonLocationPrivate;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate;
          goto LABEL_21;
        case 5:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TechnologyStatus;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TechnologyStatus and conformance CLP_LogEntry_PrivateData_TechnologyStatus;
          goto LABEL_21;
        case 6:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_22;
        case 7:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_22;
        case 8:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType();
          goto LABEL_15;
        case 9:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_VehicleSpeed;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleSpeed and conformance CLP_LogEntry_PrivateData_VehicleSpeed;
          goto LABEL_21;
        case 10:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_VehicleHeading;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleHeading and conformance CLP_LogEntry_PrivateData_VehicleHeading;
          goto LABEL_21;
        case 11:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_XtraFileAvailable;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_XtraFileAvailable and conformance CLP_LogEntry_PrivateData_XtraFileAvailable;
          goto LABEL_21;
        case 12:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType();
LABEL_15:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_22;
        case 13:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_LocationDerivedSpeed;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationDerivedSpeed and conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed;
LABEL_21:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v14, v12, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_22:
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