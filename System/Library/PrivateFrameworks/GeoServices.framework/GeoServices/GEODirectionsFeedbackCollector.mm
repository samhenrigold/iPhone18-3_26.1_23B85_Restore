@interface GEODirectionsFeedbackCollector
- (GEODirectionsFeedbackCollector)init;
@end

@implementation GEODirectionsFeedbackCollector

- (GEODirectionsFeedbackCollector)init
{
  v3.receiver = self;
  v3.super_class = GEODirectionsFeedbackCollector;
  result = [(GEODirectionsFeedbackCollector *)&v3 init];
  if (result)
  {
    result->_transportType = 4;
  }

  return result;
}

@end