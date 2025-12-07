@interface TSTStrokeExportCache
- (TSTSimpleRange)range;
- (TSTStrokeExportCache)initWithMergedStack:(id)stack;
- (id)strokeAtIndex:(unsigned int)index;
@end

@implementation TSTStrokeExportCache

- (TSTStrokeExportCache)initWithMergedStack:(id)stack
{
  stackCopy = stack;
  v10.receiver = self;
  v10.super_class = TSTStrokeExportCache;
  v6 = [(TSTStrokeExportCache *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mergedStrokes, stack);
    v7->_range = xmmword_2217E1DE8;
    stroke = v7->_stroke;
    v7->_stroke = 0;
  }

  return v7;
}

- (id)strokeAtIndex:(unsigned int)index
{
  v4 = *&index;
  v6 = objc_msgSend_range(self, a2, *&index, v3);
  if (!v7 || v6 > v4 || &v7[v6 - 1] < v4)
  {
    v10 = objc_msgSend_mergedStrokes(self, v7, v8, v9);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_221467864;
    v18[3] = &unk_278465880;
    v18[4] = self;
    objc_msgSend_enumerateStrokesFrom_to_usingBlock_(v10, v11, v4, 2147483646, v18);
  }

  v12 = objc_msgSend_range(self, v7, v8, v9);
  if (v13 && v12 <= v4 && &v13[v12 - 1] >= v4)
  {
    v16 = objc_msgSend_stroke(self, v13, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (TSTSimpleRange)range
{
  length = self->_range.length;
  origin = self->_range.origin;
  result.length = length;
  result.origin = origin;
  return result;
}

@end