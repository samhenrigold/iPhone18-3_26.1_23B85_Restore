@interface MOFeedbackAssistant
+ (void)triggerFeedbackAssistantFlowWithFlowIdentifier:(id)identifier;
@end

@implementation MOFeedbackAssistant

+ (void)triggerFeedbackAssistantFlowWithFlowIdentifier:(id)identifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v7;
  v12[5] = v9;
  v12[6] = ObjCClassMetadata;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:)partial apply, v12);
}

@end