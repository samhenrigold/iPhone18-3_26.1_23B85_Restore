@interface TMLVector
+ (void)initializeJSContext:(id)context;
- (CGVector)vector;
- (TMLVector)initWithVector:(CGVector)vector;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TMLVector

- (TMLVector)initWithVector:(CGVector)vector
{
  dy = vector.dy;
  dx = vector.dx;
  v6.receiver = self;
  v6.super_class = TMLVector;
  result = [(TMLVector *)&v6 init];
  if (result)
  {
    result->_vector.dx = dx;
    result->_vector.dy = dy;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dx = self->_vector.dx;
  dy = self->_vector.dy;

  return [v4 initWithVector:{dx, dy}];
}

+ (void)initializeJSContext:(id)context
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_26F1FA86C;
  v5[3] = &unk_279DC9AA0;
  v5[4] = self;
  contextCopy = context;
  v4 = MEMORY[0x27438BB60](v5);
  [contextCopy setObject:v4 forKeyedSubscript:@"vector"];
  [contextCopy setObject:v4 forKeyedSubscript:@"CGVectorMake"];
}

- (CGVector)vector
{
  dx = self->_vector.dx;
  dy = self->_vector.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

@end