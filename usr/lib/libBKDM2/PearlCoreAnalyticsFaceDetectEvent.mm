@interface PearlCoreAnalyticsFaceDetectEvent
- (PearlCoreAnalyticsFaceDetectEvent)init;
- (PearlCoreAnalyticsFaceDetectEvent)initWithName:(id)name;
- (void)prepareEventDictionary:(BOOL)dictionary;
@end

@implementation PearlCoreAnalyticsFaceDetectEvent

- (PearlCoreAnalyticsFaceDetectEvent)init
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10.receiver = self;
  v10.super_class = PearlCoreAnalyticsFaceDetectEvent;
  v2 = [(PearlCoreAnalyticsEvent *)&v10 initWithName:@"com.apple.biometrickit.pearl.faceDetectAttempt"];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x29EDBFD98];
    v5 = *(&v2->super.super.super.isa + v4);
    v11[0] = @"secureFaceDetectDict";
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:1];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
    v8 = *(&v3->super.super.super.isa + v4);
    *(&v3->super.super.super.isa + v4) = v7;
  }

  return v3;
}

- (PearlCoreAnalyticsFaceDetectEvent)initWithName:(id)name
{
  v12[1] = *MEMORY[0x29EDCA608];
  v11.receiver = self;
  v11.super_class = PearlCoreAnalyticsFaceDetectEvent;
  v3 = [(PearlCoreAnalyticsEvent *)&v11 initWithName:name];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x29EDBFD98];
    v6 = *(&v3->super.super.super.isa + v5);
    v12[0] = @"secureFaceDetectDict";
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];
    v9 = *(&v4->super.super.super.isa + v5);
    *(&v4->super.super.super.isa + v5) = v8;
  }

  return v4;
}

- (void)prepareEventDictionary:(BOOL)dictionary
{
  v4 = MEMORY[0x29EDB8E00];
  v5 = [(BiometricKitCoreAnalyticsEvent *)self dictionaryRepresentationArchiving:dictionary];
  v6 = [v4 dictionaryWithDictionary:v5];

  [(NSDictionary *)v6 addEntriesFromDictionary:self->_secureFaceDetectDict];
  eventDictionary = self->super._eventDictionary;
  self->super._eventDictionary = v6;
}

@end