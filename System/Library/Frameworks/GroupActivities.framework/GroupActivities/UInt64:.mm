@interface UInt64:
- (uint64_t)PluginAttachmentLedgerTopic.Participant;
- (unint64_t)PubSubTopic.Participant;
- (void)PubSubTopic.Participant;
@end

@implementation UInt64:

- (uint64_t)PluginAttachmentLedgerTopic.Participant
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

- (void)PubSubTopic.Participant
{
  if (!lazy cache variable for type metadata for Published<[UInt64 : PubSubTopic.Participant]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[UInt64 : PubSubTopic.Participant]>);
    }
  }
}

- (unint64_t)PubSubTopic.Participant
{
  result = lazy protocol witness table cache variable for type [UInt64 : PubSubTopic.Participant] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [UInt64 : PubSubTopic.Participant] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
    lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type PubSubTopic.Participant and conformance PubSubTopic.Participant, MEMORY[0x1E69974C8], MEMORY[0x1E69974D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt64 : PubSubTopic.Participant] and conformance <> [A : B]);
  }

  return result;
}

@end