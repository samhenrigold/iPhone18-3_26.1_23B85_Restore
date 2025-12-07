@interface JSTreatmentStore
- (id)fetchNamespaceAreas:(id)areas;
- (id)fetchTopicAreas:(id)areas;
- (id)fetchTreatmentSets:(id)sets :(id)a4;
- (id)fetchTreatments:(id)treatments;
- (id)generateExperimentData:(id)data;
- (id)generatePayload:(id)payload;
@end

@implementation JSTreatmentStore

- (id)fetchNamespaceAreas:(id)areas
{
  areasCopy = areas;
  selfCopy = self;
  v6 = sub_10013F6D8(areasCopy);

  return v6;
}

- (id)fetchTopicAreas:(id)areas
{
  areasCopy = areas;
  selfCopy = self;
  v6 = sub_1001407D8(areasCopy);

  return v6;
}

- (id)fetchTreatments:(id)treatments
{
  treatmentsCopy = treatments;
  selfCopy = self;
  v6 = sub_1001417B4(treatmentsCopy);

  return v6;
}

- (id)fetchTreatmentSets:(id)sets :(id)a4
{
  if (a4)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  setsCopy = sets;
  selfCopy = self;
  v9 = sub_1001427A0(setsCopy, v6);

  return v9;
}

- (id)generateExperimentData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v6 = sub_10014403C(dataCopy);

  return v6;
}

- (id)generatePayload:(id)payload
{
  payloadCopy = payload;
  selfCopy = self;
  v6 = sub_100144CAC(payloadCopy);

  return v6;
}

@end