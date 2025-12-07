@interface BlastDoorDrawingStrokePoint
- (BlastDoorDrawingStrokePoint)init;
- (CGPoint)location;
- (id)createDKStrokePoint;
@end

@implementation BlastDoorDrawingStrokePoint

- (BlastDoorDrawingStrokePoint)init
{
  v4 = *MEMORY[0x277D85DE8];
  v3.receiver = self;
  v3.super_class = BlastDoorDrawingStrokePoint;
  result = [(BlastDoorDrawingStrokePoint *)&v3 init];
  if (result)
  {
    result->_location = *MEMORY[0x277CBF348];
    result->_force = 0.0;
    result->_velocity = 0.0;
  }

  return result;
}

- (id)createDKStrokePoint
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getDKDrawingStrokePointClass_softClass;
  v11 = getDKDrawingStrokePointClass_softClass;
  if (!getDKDrawingStrokePointClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getDKDrawingStrokePointClass_block_invoke;
    v7[3] = &unk_2781764E8;
    v7[4] = &v8;
    __getDKDrawingStrokePointClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [[v3 alloc] init];
  [(BlastDoorDrawingStrokePoint *)self location];
  [v5 setLocation:?];
  [(BlastDoorDrawingStrokePoint *)self force];
  [v5 setForce:?];
  [(BlastDoorDrawingStrokePoint *)self velocity];
  [v5 setVelocity:?];

  return v5;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end