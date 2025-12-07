@interface CESASelfHelper
+ (void)logASRContextualEntityRetrievalEnd:(id)end retrievedEntityMetrics:(id)metrics;
+ (void)logASRContextualEntityRetrievalStart:(id)start retrievalParameters:(id)parameters;
+ (void)logContextualReplayBiomeRecordCreated:(id)created;
+ (void)logContextualReplayBiomeRecordDeleted:(id)deleted;
+ (void)logPersonalizationExperimentEndedWithAsrId:(id)id dodmlId:(id)dodmlId replayResults:(id)results;
+ (void)logPersonalizationExperimentStartedWithAsrId:(id)id dodmlId:(id)dodmlId;
@end

@implementation CESASelfHelper

+ (void)logASRContextualEntityRetrievalStart:(id)start retrievalParameters:(id)parameters
{
  v4[1] = self;
  startCopy = start;
  parametersCopy = parameters;
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](startCopy);
  MEMORY[0x277D82BE0](parametersCopy);
  v8 = sub_226098A78();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](startCopy);
  v7 = v4 - v4[0];
  sub_226098A48();
  swift_getObjCClassMetadata();
  sub_22603E620(v7, parametersCopy);
  (*(v5 + 8))(v7, v8);
  MEMORY[0x277D82BD8](startCopy);
  MEMORY[0x277D82BD8](parametersCopy);
}

+ (void)logASRContextualEntityRetrievalEnd:(id)end retrievedEntityMetrics:(id)metrics
{
  selfCopy = self;
  endCopy = end;
  metricsCopy = metrics;
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](endCopy);
  MEMORY[0x277D82BE0](metricsCopy);
  v12 = sub_226098A78();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](endCopy);
  v16 = &v4 - v15;
  sub_226098A48();
  if (metricsCopy)
  {
    v9 = metricsCopy;
    v6 = metricsCopy;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786520, &unk_2260A0490);
    v7 = sub_226099C88();
    MEMORY[0x277D82BD8](v6);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v5 = v8;
  swift_getObjCClassMetadata();
  sub_22603F798(v16, v5);

  (*(v13 + 8))(v16, v12);
  MEMORY[0x277D82BD8](endCopy);
}

+ (void)logContextualReplayBiomeRecordCreated:(id)created
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](created);
  if (created)
  {
    v4 = sub_226099A08();
    v5 = v3;
    MEMORY[0x277D82BD8](created);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  swift_getObjCClassMetadata();
  sub_226040104(v6, v7);
}

+ (void)logContextualReplayBiomeRecordDeleted:(id)deleted
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](deleted);
  if (deleted)
  {
    v4 = sub_226099A08();
    v5 = v3;
    MEMORY[0x277D82BD8](deleted);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  swift_getObjCClassMetadata();
  sub_226044FA4(v6, v7);
}

+ (void)logPersonalizationExperimentStartedWithAsrId:(id)id dodmlId:(id)dodmlId
{
  dodmlIdCopy = dodmlId;
  idCopy = id;
  selfCopy = self;
  idCopy2 = id;
  swift_getObjCClassMetadata();
  v4 = idCopy;
  v5 = dodmlIdCopy;
  if (idCopy)
  {
    v21 = idCopy2;
    v16 = idCopy2;
    v17 = sub_226099A08();
    v18 = v6;

    v19 = v17;
    v20 = v18;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v15 = v20;
  v10 = v19;
  v13 = sub_226098A78();
  v9 = *(v13 - 8);
  v11 = v9;
  v14 = &v8;
  MEMORY[0x28223BE20](dodmlIdCopy);
  v12 = &v8 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226098A48();
  swift_getObjCClassMetadata();
  sub_22603C3F4(v10, v15, v12);
  (*(v11 + 8))(v12, v13);
}

+ (void)logPersonalizationExperimentEndedWithAsrId:(id)id dodmlId:(id)dodmlId replayResults:(id)results
{
  resultsCopy = results;
  dodmlIdCopy = dodmlId;
  idCopy = id;
  selfCopy = self;
  idCopy2 = id;
  swift_getObjCClassMetadata();
  v5 = idCopy;
  v6 = dodmlIdCopy;
  v7 = resultsCopy;
  if (idCopy)
  {
    v24 = idCopy2;
    v19 = idCopy2;
    v20 = sub_226099A08();
    v21 = v8;

    v22 = v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v18 = v23;
  v12 = v22;
  v16 = sub_226098A78();
  v11 = *(v16 - 8);
  v14 = v11;
  v17 = &v10;
  MEMORY[0x28223BE20](dodmlIdCopy);
  v15 = &v10 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226098A48();
  v13 = sub_226099878();
  swift_getObjCClassMetadata();
  sub_22603C688(v12, v18, v15, v13);

  (*(v14 + 8))(v15, v16);
}

@end