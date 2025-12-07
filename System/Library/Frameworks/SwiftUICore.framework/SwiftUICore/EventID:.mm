@interface EventID:
- (void)EventType;
@end

@implementation EventID:

- (void)EventType
{
  if (!lazy cache variable for type metadata for Attribute<[EventID : EventType]>)
  {
    type metadata accessor for [EventID : EventType](255);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<[EventID : EventType]>);
    }
  }
}

@end