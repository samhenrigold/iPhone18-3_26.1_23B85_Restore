@interface TMLPoint
+ (void)initializeJSContext:(id)context;
- (CGPoint)point;
- (TMLPoint)initWithPoint:(CGPoint)point;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TMLPoint

- (TMLPoint)initWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6.receiver = self;
  v6.super_class = TMLPoint;
  result = [(TMLPoint *)&v6 init];
  if (result)
  {
    result->_point.x = x;
    result->_point.y = y;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  x = self->_point.x;
  y = self->_point.y;

  return [v4 initWithPoint:{x, y}];
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  v5 = [self alloc];
  v6 = [v5 initWithPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [contextCopy setObject:v6 forKeyedSubscript:@"CGPointZero"];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_26F1D6E7C;
  v12[3] = &unk_279DC8680;
  v12[4] = self;
  v7 = MEMORY[0x27438BB60](v12);
  [contextCopy setObject:v7 forKeyedSubscript:@"point"];
  [contextCopy setObject:v7 forKeyedSubscript:@"CGPointMake"];

  [contextCopy setObject:&unk_287F2D220 forKeyedSubscript:@"CGPointEqualToPoint"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26F1D6F30;
  v11[3] = &unk_279DC86C0;
  v11[4] = self;
  v8 = MEMORY[0x27438BB60](v11);
  [contextCopy setObject:v8 forKeyedSubscript:@"CGPointApplyAffineTransform"];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26F1D6FF4;
  v10[3] = &unk_279DC86E0;
  v10[4] = self;
  v9 = MEMORY[0x27438BB60](v10);
  [contextCopy setObject:v9 forKeyedSubscript:@"CGPointMakeWithDictionaryRepresentation"];
}

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

@end