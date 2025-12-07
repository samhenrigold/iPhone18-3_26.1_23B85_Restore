@interface PKTransformStrokesAnimation
- (id)initWithStrokes:(double)strokes startTime:(double)time duration:(double)duration destinationFrame:(double)frame fadeOutDuration:(double)outDuration;
- (void)newStrokesAtTime:(double)time;
@end

@implementation PKTransformStrokesAnimation

- (id)initWithStrokes:(double)strokes startTime:(double)time duration:(double)duration destinationFrame:(double)frame fadeOutDuration:(double)outDuration
{
  v40 = *MEMORY[0x1E69E9840];
  v18 = a2;
  if (self)
  {
    v38.receiver = self;
    v38.super_class = PKTransformStrokesAnimation;
    v19 = objc_msgSendSuper2(&v38, sel_init);
    self = v19;
    if (v19)
    {
      objc_storeStrong(v19 + 1, a2);
      *(self + 2) = strokes;
      *(self + 3) = time;
      *(self + 9) = duration;
      *(self + 10) = frame;
      *(self + 11) = outDuration;
      *(self + 12) = a8;
      *(self + 4) = a9;
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v24 = v18;
      v25 = [v24 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v35;
        do
        {
          v28 = 0;
          do
          {
            if (*v35 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [*(*(&v34 + 1) + 8 * v28) renderBounds];
            v44.origin.x = v29;
            v44.origin.y = v30;
            v44.size.width = v31;
            v44.size.height = v32;
            v41.origin.x = x;
            v41.origin.y = y;
            v41.size.width = width;
            v41.size.height = height;
            v42 = CGRectUnion(v41, v44);
            x = v42.origin.x;
            y = v42.origin.y;
            width = v42.size.width;
            height = v42.size.height;
            ++v28;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v26);
      }

      *(self + 5) = x;
      *(self + 6) = y;
      *(self + 7) = width;
      *(self + 8) = height;
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      *(self + 13) = CGRectUnion(v43, *(self + 9));
    }
  }

  return self;
}

- (void)newStrokesAtTime:(double)time
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v4 = *(self + 24);
  v5 = time - *(self + 16);
  v6 = v5 / v4;
  if (v5 / v4 > 1.0)
  {
    v6 = 1.0;
  }

  v7 = v6 * v6 * (v6 * -2.0 + 3.0);
  v34 = 0u;
  v35 = 0u;
  v8 = *(self + 40);
  if (*(self + 32) >= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = *(self + 32);
  }

  v33 = 0uLL;
  objc_msgSend_transformConvertingRect_toRect_percent_(PKMetalUtility, a2, v8, *(self + 48), *(self + 56), *(self + 64), *(self + 72), *(self + 80), *(self + 88), *(self + 96), *&v7);
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(self + 8), "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(self + 8);
  v10 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = fmax(1.0 - v5 / v9, 0.0);
    v13 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v15 ink];
        color = [v16 color];

        [color alphaComponent];
        v19 = [color colorWithAlphaComponent:v12 * v18];
        v20 = [v15 mutableCopy];
        v28[0] = v33;
        v28[1] = v34;
        v28[2] = v35;
        [v20 _applyTransform:v28];
        v21 = [v15 ink];
        identifier = [v21 identifier];
        v23 = [v15 ink];
        [v23 weight];
        v24 = [PKInk inkWithIdentifier:identifier color:v19 weight:?];
        [v20 setInk:v24];

        [v27 addObject:v20];
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v11);
  }

  return v27;
}

@end