@interface ODCurareDataCachePruningPolicyObject
- (ODCurareDataCachePruningPolicyObject)initWithMaximumNumberOfDays:(int)days maximumNumberOfEvents:(int)events;
@end

@implementation ODCurareDataCachePruningPolicyObject

- (ODCurareDataCachePruningPolicyObject)initWithMaximumNumberOfDays:(int)days maximumNumberOfEvents:(int)events
{
  v4 = *&events;
  v5 = *&days;
  v10.receiver = self;
  v10.super_class = ODCurareDataCachePruningPolicyObject;
  v6 = [(ODCurareDataCachePruningPolicyObject *)&v10 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  if ((v5 & 0x80000000) != 0)
  {
    NSLog(&cfstr_Odcuraredataca.isa, v5);
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if ((v4 & 0x80000000) != 0)
  {
    NSLog(&cfstr_Odcuraredataca_0.isa, v4);
    goto LABEL_8;
  }

  [(ODCurareDataCachePruningPolicyObject *)v6 setMaximumNumberOfDays:v5];
  [(ODCurareDataCachePruningPolicyObject *)v7 setMaximumNumberOfEvents:v4];
LABEL_5:
  v8 = v7;
LABEL_9:

  return v8;
}

@end