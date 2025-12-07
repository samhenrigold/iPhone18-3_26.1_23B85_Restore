@interface TSTStrokeLayerStack
+ (id)defaultsOnlyStrokeLayerStack;
+ (id)strokeLayerStack;
- ($BCE0BE3B16443606C8215309ED45E274)stackReferences;
- (BOOL)hasSpillStrokeInRange:(TSTSimpleRange)range;
- (BOOL)isEligibleForDefaultsOnlyReplacement;
- (BOOL)replaceCustomStrokeLayerWith:(id)with;
- (BOOL)replaceDefaultStrokeLayerWith:(id)with;
- (id)replacementWithDefaults;
- (unint64_t)count;
- (vector<TSTStrokeLayer)p_strokeLayerVector;
- (void)insertClearedStrokeAtRange:(TSTSimpleRange)range;
- (void)insertDynamicStroke:(id)stroke strokeOrder:(int)order atRange:(TSTSimpleRange)range;
- (void)insertSpillStroke:(id)stroke atRange:(TSTSimpleRange)range;
- (void)invalidateClearedStrokesInRange:(TSTSimpleRange)range;
- (void)invalidateDynamicStrokesInRange:(TSTSimpleRange)range;
@end

@implementation TSTStrokeLayerStack

+ (id)strokeLayerStack
{
  v2 = objc_alloc_init(TSTStrokeLayerStack);

  return v2;
}

+ (id)defaultsOnlyStrokeLayerStack
{
  v2 = objc_alloc_init(TSTStrokeLayerStack);
  v2->_isDefaultsOnly = 1;

  return v2;
}

- (id)replacementWithDefaults
{
  v3 = objc_alloc_init(TSTStrokeLayerStack);
  objc_msgSend_lockForWrite(v3, v4, v5, v6);
  v10 = objc_msgSend_defaultStrokeLayer(self, v7, v8, v9);
  objc_msgSend_replaceDefaultStrokeLayerWith_(v3, v11, v10, v12);

  objc_msgSend_unlock(v3, v13, v14, v15);

  return v3;
}

- (BOOL)isEligibleForDefaultsOnlyReplacement
{
  customStrokeLayer = self->_customStrokeLayer;
  if (!customStrokeLayer || (isEmpty = objc_msgSend_isEmpty(customStrokeLayer, a2, v2, v3)) != 0)
  {
    clearedStrokeLayer = self->_clearedStrokeLayer;
    if (!clearedStrokeLayer || (isEmpty = objc_msgSend_isEmpty(clearedStrokeLayer, a2, v2, v3)) != 0)
    {
      dynamicStrokeLayer = self->_dynamicStrokeLayer;
      if (!dynamicStrokeLayer || (isEmpty = objc_msgSend_isEmpty(dynamicStrokeLayer, a2, v2, v3)) != 0)
      {
        spillStrokeLayer = self->_spillStrokeLayer;
        if (spillStrokeLayer)
        {

          LOBYTE(isEmpty) = objc_msgSend_isEmpty(spillStrokeLayer, a2, v2, v3);
        }

        else
        {
          LOBYTE(isEmpty) = 1;
        }
      }
    }
  }

  return isEmpty;
}

- (void)insertClearedStrokeAtRange:(TSTSimpleRange)range
{
  if (self->_isDefaultsOnly)
  {
    v3 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeLayerStack insertClearedStrokeAtRange:]", range.length);
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v5);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v30, v6, 637, 0, "You can't add non-default strokes to a DefaultsOnly TSTStrokeLayerStack.");

    v11 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v11, v8, v9, v10);
  }

  else
  {
    length = range.length;
    origin = range.origin;
    v15 = objc_msgSend_clearedStrokeLayer(self, a2, range.origin, range.length);

    if (v15)
    {
      v31 = objc_msgSend_clearedStrokeLayer(self, v16, v17, v18);
      objc_msgSend_invalidateRange_(v31, v19, origin, length);
    }

    else
    {
      v31 = objc_msgSend_strokeLayer(TSTMutableStrokeLayer, v16, v17, v18);
      objc_msgSend_setClearedStrokeLayer_(self, v20, v31, v21);
    }

    v32 = objc_msgSend_clearedStrokeLayer(self, v22, v23, v24);
    v28 = objc_msgSend_mergeRangeEmptyStroke(MEMORY[0x277D803C0], v25, v26, v27);
    objc_msgSend_setStroke_inRange_order_(v32, v29, v28, origin, length, 0);
  }
}

- (void)insertDynamicStroke:(id)stroke strokeOrder:(int)order atRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v7 = *&order;
  strokeCopy = stroke;
  v36 = strokeCopy;
  if (self->_isDefaultsOnly)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTStrokeLayerStack insertDynamicStroke:strokeOrder:atRange:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 654, 0, "You can't add non-default strokes to a DefaultsOnly TSTStrokeLayerStack.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  else
  {
    if (objc_msgSend_empty(strokeCopy, v10, v11, v12))
    {
      objc_msgSend_width(v36, v22, v23, v24);
      if (v25 > 0.0)
      {
        v26 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v22, v23, v24);

        v36 = v26;
      }
    }

    v27 = objc_msgSend_dynamicStrokeLayer(self, v22, v23, v24);

    if (!v27)
    {
      v31 = objc_msgSend_strokeLayer(TSTMutableStrokeLayer, v28, v29, v30);
      objc_msgSend_setDynamicStrokeLayer_(self, v32, v31, v33);
    }

    v34 = objc_msgSend_dynamicStrokeLayer(self, v28, v29, v30);
    objc_msgSend_setStroke_inRange_order_(v34, v35, v36, origin, length, v7);
  }
}

- (void)insertSpillStroke:(id)stroke atRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  strokeCopy = stroke;
  if (self->_isDefaultsOnly)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTStrokeLayerStack insertSpillStroke:atRange:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 672, 0, "You can't add non-default strokes to a Defaults Only TSTStrokeLayerStack.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  else
  {
    v19 = objc_msgSend_spillStrokeLayer(self, v7, v8, v9);

    if (!v19)
    {
      v23 = objc_msgSend_strokeLayer(TSTMutableStrokeLayer, v20, v21, v22);
      objc_msgSend_setSpillStrokeLayer_(self, v24, v23, v25);
    }

    v26 = objc_msgSend_spillStrokeLayer(self, v20, v21, v22);
    objc_msgSend_setStroke_inRange_order_(v26, v27, strokeCopy, origin, length, 0);
  }
}

- (BOOL)hasSpillStrokeInRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v6 = objc_msgSend_spillStrokeLayer(self, a2, range.origin, range.length);
  if (!v6)
  {
    return 0;
  }

  v10 = v6;
  v11 = objc_msgSend_spillStrokeLayer(self, v7, v8, v9);
  isEmpty = objc_msgSend_isEmpty(v11, v12, v13, v14);

  if (isEmpty)
  {
    return 0;
  }

  v20 = objc_msgSend_spillStrokeLayer(self, v16, v17, v18);
  hasStrokeInRange = objc_msgSend_hasStrokeInRange_(v20, v21, origin, length);

  return hasStrokeInRange;
}

- (BOOL)replaceDefaultStrokeLayerWith:(id)with
{
  withCopy = with;
  v8 = objc_msgSend_defaultStrokeLayer(self, v5, v6, v7);

  if (v8 != withCopy)
  {
    objc_msgSend_setDefaultStrokeLayer_(self, v9, withCopy, v10);
  }

  return v8 != withCopy;
}

- (BOOL)replaceCustomStrokeLayerWith:(id)with
{
  withCopy = with;
  if (objc_msgSend_isEmpty(withCopy, v5, v6, v7))
  {

    withCopy = 0;
  }

  else if (withCopy && self->_isDefaultsOnly)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d You can't add non-default strokes to a DefaultsOnly TSTStrokeLayerStack.", "[TSTStrokeLayerStack replaceCustomStrokeLayerWith:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", 711);
    v15 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTStrokeLayerStack replaceCustomStrokeLayerWith:]", v17);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v18, v21, 711, 1, "You can't add non-default strokes to a DefaultsOnly TSTStrokeLayerStack.");

    TSUCrashBreakpoint();
    abort();
  }

  v11 = objc_msgSend_customStrokeLayer(self, v8, v9, v10);

  if (v11 != withCopy)
  {
    objc_msgSend_setCustomStrokeLayer_(self, v12, withCopy, v13);
  }

  return v11 != withCopy;
}

- (void)invalidateClearedStrokesInRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v6 = objc_msgSend_clearedStrokeLayer(self, a2, range.origin, range.length);
  objc_msgSend_invalidateRange_(v6, v5, origin, length);
}

- (void)invalidateDynamicStrokesInRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v6 = objc_msgSend_dynamicStrokeLayer(self, a2, range.origin, range.length);
  objc_msgSend_invalidateRange_(v6, v5, origin, length);
}

- ($BCE0BE3B16443606C8215309ED45E274)stackReferences
{
  var3 = self[5].var3;
  var4 = self[5].var4;
  retstr->var0 = self[5].var2;
  retstr->var1 = var3;
  var0 = self[6].var0;
  retstr->var2 = var4;
  retstr->var3 = var0;
  retstr->var4 = self[6].var1;
  return self;
}

- (vector<TSTStrokeLayer)p_strokeLayerVector
{
  selfCopy = self;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (self[9].var0)
  {
    sub_221281314(retstr, &self[9].var0);
  }

  if (selfCopy[9].var1)
  {
    sub_221281314(retstr, &selfCopy[9].var1);
  }

  if (selfCopy[9].var2)
  {
    var2 = selfCopy[9].var2;
    sub_221281314(retstr, &var2);
  }

  if (selfCopy[10].var0)
  {
    var2 = selfCopy[10].var0;
    sub_221281314(retstr, &var2);
  }

  if (selfCopy[10].var1)
  {
    var2 = selfCopy[10].var1;
    sub_221281314(retstr, &var2);
  }

  return self;
}

- (unint64_t)count
{
  v5 = objc_msgSend_defaultStrokeLayer(self, a2, v2, v3);
  v9 = objc_msgSend_customStrokeLayer(self, v6, v7, v8);
  v13 = objc_msgSend_clearedStrokeLayer(self, v10, v11, v12);
  v17 = objc_msgSend_dynamicStrokeLayer(self, v14, v15, v16);
  v21 = objc_msgSend_spillStrokeLayer(self, v18, v19, v20);
  v22 = v9 != 0;
  if (v5)
  {
    ++v22;
  }

  if (v13)
  {
    ++v22;
  }

  if (v17)
  {
    ++v22;
  }

  if (v21)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = v22;
  }

  return v23;
}

@end