@interface BlastDoorDrawingStroke
+ (id)createBDStroke:(id)stroke;
- (BlastDoorDrawingStroke)init;
- (id)createDKStroke:(id)stroke;
@end

@implementation BlastDoorDrawingStroke

- (BlastDoorDrawingStroke)init
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = BlastDoorDrawingStroke;
  v2 = [(BlastDoorDrawingStroke *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    strokePoints = v2->_strokePoints;
    v2->_strokePoints = array;
  }

  return v2;
}

- (id)createDKStroke:(id)stroke
{
  v24 = *MEMORY[0x277D85DE8];
  strokeCopy = stroke;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v4 = getDKDrawingStrokeClass_softClass;
  v18 = getDKDrawingStrokeClass_softClass;
  if (!getDKDrawingStrokeClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getDKDrawingStrokeClass_block_invoke;
    v14[3] = &unk_2781764E8;
    v14[4] = &v15;
    __getDKDrawingStrokeClass_block_invoke(v14);
    v4 = v16[3];
  }

  v5 = v4;
  _Block_object_dispose(&v15, 8);
  v6 = [[v4 alloc] init];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = strokeCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        createDKStrokePoint = [*(*(&v20 + 1) + 8 * i) createDKStrokePoint];
        strokePoints = [v6 strokePoints];
        [strokePoints addObject:createDKStrokePoint];
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)createBDStroke:(id)stroke
{
  v19 = *MEMORY[0x277D85DE8];
  strokeCopy = stroke;
  v4 = objc_alloc_init(BlastDoorDrawingStroke);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  strokePoints = [strokeCopy strokePoints];
  v6 = [strokePoints countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(strokePoints);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_alloc_init(BlastDoorDrawingStrokePoint);
        [v10 location];
        [(BlastDoorDrawingStrokePoint *)v11 setLocation:?];
        [v10 force];
        [(BlastDoorDrawingStrokePoint *)v11 setForce:?];
        [v10 velocity];
        [(BlastDoorDrawingStrokePoint *)v11 setVelocity:?];
        strokePoints2 = [(BlastDoorDrawingStroke *)v4 strokePoints];
        [strokePoints2 addObject:v11];
      }

      v7 = [strokePoints countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }

  return v4;
}

@end