@interface TSTStrokeLayer
+ (id)strokeLayer;
- ($DE50B600744B7521845B4CEF3C5064D2)findWidthAndRangeAtIndex:(SEL)index;
- ($DE50B600744B7521845B4CEF3C5064D2)nextWidthAndRange:(SEL)range;
- (TSTStrokeLayer)initWithContext:(id)context columnOrRowIndex:(unsigned int)index;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)findStrokeAndRangeAtIndex:(int64_t)index;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)nextStrokeAndRange:(id)range;
- (id)strokeLayerAtIndex:(unint64_t)index;
- (id)strokeLayerModifiedByInsertingSpaceAt:(TSTSimpleRange)at;
- (id)strokeLayerModifiedByRemovingRangeAt:(TSTSimpleRange)at;
- (int)startingStrokeOrder;
- (int64_t)startingIndex;
- (void)enumerateStrokesInRange:(TSTSimpleRange)range usingBlock:(id)block;
- (void)enumerateStrokesUsingBlock:(id)block;
- (void)enumerateWidthsInRange:(TSTSimpleRange)range usingBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_appendStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order;
- (void)p_flattenStrokeOrder;
- (void)p_insertSpaceAtRange:(TSTSimpleRange)range;
- (void)p_invalidate;
- (void)p_invalidateRange:(TSTSimpleRange)range;
- (void)p_mergeStrokeRunsAtPosition:(unint64_t)position;
- (void)p_removeRange:(TSTSimpleRange)range;
- (void)p_setStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTStrokeLayer

+ (id)strokeLayer
{
  v2 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_contextForTransientObjects(MEMORY[0x277D80878], v3, v4, v5);
  v8 = objc_msgSend_initWithContext_columnOrRowIndex_(v2, v7, v6, 0);

  return v8;
}

- (TSTStrokeLayer)initWithContext:(id)context columnOrRowIndex:(unsigned int)index
{
  v6.receiver = self;
  v6.super_class = TSTStrokeLayer;
  result = [(TSTStrokeLayer *)&v6 initWithContext:context];
  if (result)
  {
    result->_columnOrRowIndex = index;
  }

  return result;
}

- (int64_t)startingIndex
{
  begin = self->_strokeRuns.__begin_;
  if (self->_strokeRuns.__end_ == begin)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *(begin + 1);
  }
}

- (int)startingStrokeOrder
{
  begin = self->_strokeRuns.__begin_;
  if (self->_strokeRuns.__end_ == begin)
  {
    return 0;
  }

  else
  {
    return *(begin + 6);
  }
}

- (id)findStrokeAndRangeAtIndex:(int64_t)index
{
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  sub_2213FFC6C(v19, 0, index, 1, 0);
  if (end != begin)
  {
    v7 = (end - begin) >> 5;
    do
    {
      v8 = v7 >> 1;
      v9 = begin + 32 * (v7 >> 1);
      v10 = *(v9 + 2) + *(v9 + 1);
      v11 = (v9 + 32);
      v7 += ~(v7 >> 1);
      if (v10 < v19[1])
      {
        begin = v11;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
    end = begin;
  }

  v13 = p_strokeRuns->__begin_;
  v14 = end - p_strokeRuns->__begin_;
  v15 = v14 >> 5;
  v16 = (p_strokeRuns->__end_ - p_strokeRuns->__begin_) >> 5;
  if (v14 >> 5 < v16 && *(v13 + v14 + 16) + *(v13 + v14 + 8) <= index)
  {
    ++v15;
  }

  if (v15 >= v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_msgSend_tokenWithStroke_range_order_andPosition_(TSTStrokeLayerToken, v12, *(v13 + 4 * v15), *(v13 + 4 * v15 + 1), *(v13 + 4 * v15 + 2), *(v13 + 8 * v15 + 6));
  }

  return v17;
}

- (id)nextStrokeAndRange:(id)range
{
  rangeCopy = range;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();
  v9 = objc_msgSend_position(v5, v6, v7, v8);
  if (v5 && (begin = self->_strokeRuns.__begin_, v9 + 1 < ((self->_strokeRuns.__end_ - begin) >> 5)))
  {
    v12 = objc_msgSend_tokenWithStroke_range_order_andPosition_(TSTStrokeLayerToken, v10, *(begin + 4 * v9 + 4), *(begin + 4 * v9 + 5), *(begin + 4 * v9 + 6), *(begin + 8 * v9 + 14));
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- ($DE50B600744B7521845B4CEF3C5064D2)findWidthAndRangeAtIndex:(SEL)index
{
  retstr->var1.length = 0;
  *&retstr->var2 = 0;
  retstr->var0 = -1.0;
  retstr->var1.origin = 0x7FFFFFFFFFFFFFFFLL;
  p_var1 = &retstr->var1;
  retstr->var3 = 0x7FFFFFFFFFFFFFFFLL;
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  sub_2213FFC6C(v28, 0, a4, 1, 0);
  if (end != begin)
  {
    v10 = (end - begin) >> 5;
    do
    {
      v11 = v10 >> 1;
      v12 = begin + 32 * (v10 >> 1);
      v13 = *(v12 + 2) + *(v12 + 1);
      v14 = (v12 + 32);
      v10 += ~(v10 >> 1);
      if (v13 < v28[1])
      {
        begin = v14;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
    end = begin;
  }

  v19 = p_strokeRuns->__begin_;
  v20 = end - p_strokeRuns->__begin_;
  v21 = v20 >> 5;
  v22 = (p_strokeRuns->__end_ - p_strokeRuns->__begin_) >> 5;
  if (v20 >> 5 < v22 && *(v19 + v20 + 16) + *(v19 + v20 + 8) <= a4)
  {
    ++v21;
  }

  if (v21 < v22)
  {
    v23 = *(v19 + 4 * v21);
    objc_msgSend_width(v23, v16, v17, v18);
    retstr->var0 = v24;
    *p_var1 = *(p_strokeRuns->__begin_ + 32 * v21 + 8);
    result = objc_msgSend_isPortalStroke(v23, v25, v26, v27);
    retstr->var2 = result;
    retstr->var3 = v21;
  }

  return result;
}

- ($DE50B600744B7521845B4CEF3C5064D2)nextWidthAndRange:(SEL)range
{
  retstr->var1.length = 0;
  *&retstr->var2 = 0;
  retstr->var0 = -1.0;
  retstr->var1.origin = 0x7FFFFFFFFFFFFFFFLL;
  retstr->var3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4->var1.origin != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = a4->var3 + 1;
    p_var2 = &self[1].var2;
    v8 = *&self[1].var2;
    if (v6 < (self[1].var3 - v8) >> 5)
    {
      v9 = *(v8 + 32 * v6);
      objc_msgSend_width(v9, range, a4, v4);
      retstr->var0 = v10;
      retstr->var1 = *(*p_var2 + 32 * v6 + 8);
      self = objc_msgSend_isPortalStroke(v9, v11, v12, v13);
      retstr->var2 = self;
      retstr->var3 = v6;
    }
  }

  return self;
}

- (void)enumerateStrokesUsingBlock:(id)block
{
  blockCopy = block;
  v9 = 0;
  begin = self->_strokeRuns.__begin_;
  for (i = self->_strokeRuns.__end_; begin != i; begin = (begin + 32))
  {
    v7 = *begin;
    (*(blockCopy + 2))(blockCopy, v7, *(begin + 1), *(begin + 2), *(begin + 6), &v9);
    v8 = v9;

    if (v8)
    {
      break;
    }
  }
}

- (void)enumerateStrokesInRange:(TSTSimpleRange)range usingBlock:(id)block
{
  length = range.length;
  origin = range.origin;
  blockCopy = block;
  v41 = 0;
  v10 = objc_msgSend_findStrokeAndRangeAtIndex_(self, v8, origin, v9);
  if (v10)
  {
    v14 = origin + length;
    v40 = v10;
    v15 = v10;
    while (1)
    {
      v16 = objc_msgSend_range(v15, v11, v12, v13);
      if (origin == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v16 != 0x7FFFFFFFFFFFFFFFLL && length && v17)
      {
        if (origin <= v16)
        {
          v20 = v16;
        }

        else
        {
          v20 = origin;
        }

        v21 = &v17[v16];
        if (v14 < &v17[v16])
        {
          v21 = (origin + length);
        }

        if (v21 > v20 && (v41 & 1) == 0)
        {
          v22 = objc_msgSend_range(v15, v17, v18, v19);
          if (origin <= v22)
          {
            v26 = v22;
          }

          else
          {
            v26 = origin;
          }

          v27 = &v23[v22];
          if (v14 < &v23[v22])
          {
            v27 = (origin + length);
          }

          v28 = v27 < v26;
          v29 = &v27[-v26];
          if (v28)
          {
            v26 = 0x7FFFFFFFFFFFFFFFLL;
            v29 = 0;
          }

          if (!v23)
          {
            v26 = 0x7FFFFFFFFFFFFFFFLL;
            v29 = 0;
          }

          v30 = v22 == 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v26;
          v31 = v22 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v29;
          v32 = objc_msgSend_stroke(v15, v23, v24, v25);
          v36 = objc_msgSend_order(v15, v33, v34, v35);
          blockCopy[2](blockCopy, v32, v30, v31, v36, &v41);

          v39 = objc_msgSend_nextStrokeAndRange_(self, v37, v15, v38);

          v15 = v39;
          if (v39)
          {
            continue;
          }
        }
      }

      goto LABEL_32;
    }

    v15 = v40;
LABEL_32:
  }
}

- (void)enumerateWidthsInRange:(TSTSimpleRange)range usingBlock:(id)block
{
  length = range.length;
  origin = range.origin;
  blockCopy = block;
  v25 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  objc_msgSend_findWidthAndRangeAtIndex_(self, v8, origin, v9);
  v10 = 0;
  if (origin != 0x7FFFFFFFFFFFFFFFLL && length != 0)
  {
    v12 = origin + length;
    do
    {
      if (!v23)
      {
        break;
      }

      v13 = origin <= v10 ? v10 : origin;
      v14 = v23 + v10;
      if (v12 < v14)
      {
        v14 = v12;
      }

      if (v14 <= v13)
      {
        break;
      }

      if (v25)
      {
        break;
      }

      blockCopy[2](blockCopy, *&v22);
      v17[0] = v22;
      v17[1] = v23;
      v18 = v24;
      objc_msgSend_nextWidthAndRange_(self, v15, v17, v16);
      v22 = v19;
      v23 = v20;
      v24 = v21;
      v10 = *(&v19 + 1);
    }

    while (*(&v19 + 1) != 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (id)strokeLayerModifiedByInsertingSpaceAt:(TSTSimpleRange)at
{
  length = at.length;
  origin = at.origin;
  v5 = objc_msgSend_mutableCopy(self, a2, at.origin, at.length);
  objc_msgSend_insertSpaceAtRange_(v5, v6, origin, length);

  return v5;
}

- (id)strokeLayerModifiedByRemovingRangeAt:(TSTSimpleRange)at
{
  length = at.length;
  origin = at.origin;
  v5 = objc_msgSend_mutableCopy(self, a2, at.origin, at.length);
  objc_msgSend_removeRange_(v5, v6, origin, length);

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_context(self, v9, v10, v11);
  v15 = objc_msgSend_initWithContext_(v8, v13, v12, v14);

  if (v15)
  {
    v19 = objc_msgSend_columnOrRowIndex(self, v16, v17, v18);
    objc_msgSend_setColumnOrRowIndex_(v15, v20, v19, v21);
    if (v15 != self)
    {
      sub_2213FFCEC(&v15->_strokeRuns, self->_strokeRuns.__begin_, self->_strokeRuns.__end_, (self->_strokeRuns.__end_ - self->_strokeRuns.__begin_) >> 5);
    }
  }

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_allocWithZone_(TSTMutableStrokeLayer, a2, zone, v3);
  v9 = objc_msgSend_context(self, v6, v7, v8);
  v12 = objc_msgSend_initWithContext_(v5, v10, v9, v11);

  if (v12)
  {
    v16 = objc_msgSend_columnOrRowIndex(self, v13, v14, v15);
    objc_msgSend_setColumnOrRowIndex_(v12, v17, v16, v18);
    if (v12 != self)
    {
      sub_2213FFCEC(&v12->_strokeRuns, self->_strokeRuns.__begin_, self->_strokeRuns.__end_, (self->_strokeRuns.__end_ - self->_strokeRuns.__begin_) >> 5);
    }
  }

  return v12;
}

- (id)strokeLayerAtIndex:(unint64_t)index
{
  if (index)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeLayer strokeLayerAtIndex:]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayer.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 338, 0, "should never call this with index > 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  return self;
}

- (void)p_appendStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order
{
  length = range.length;
  origin = range.origin;
  strokeCopy = stroke;
  if (length)
  {
    sub_2213FFC6C(v10, strokeCopy, origin, length, order);
    sub_2213FD474(&self->_strokeRuns.__begin_, v10);
  }
}

- (void)p_setStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order
{
  length = range.length;
  origin = range.origin;
  strokeCopy = stroke;
  p_strokeRuns = &self->_strokeRuns;
  end = self->_strokeRuns.__end_;
  begin = self->_strokeRuns.__begin_;
  if (begin == end)
  {
    sub_2213FFC6C(v57, strokeCopy, origin, length, order);
    sub_2213FD8F0(&self->_strokeRuns, begin, v57);
LABEL_36:

    goto LABEL_39;
  }

  sub_2213FFC6C(v57, strokeCopy, origin, length, order);
  v13 = (end - begin) >> 5;
  do
  {
    v14 = v13 >> 1;
    v15 = begin + 32 * (v13 >> 1);
    v16 = *(v15 + 2) + *(v15 + 1);
    v17 = (v15 + 32);
    v13 += ~(v13 >> 1);
    if (v16 < v57[1])
    {
      begin = v17;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);

  v18 = *p_strokeRuns;
  v19 = self->_strokeRuns.__end_;
  v20 = begin - *p_strokeRuns;
  v21 = v20 >> 5;
  v22 = v19 - *p_strokeRuns;
  if (v20 >> 5 < (v22 >> 5))
  {
    v23 = v18 + v20;
    v24 = *(v18 + v20 + 8);
    v25 = *(v23 + 16);
    if (v24 > origin || v25 + v24 - 1 < (length + origin - 1))
    {
      v28 = v24 == 0x7FFFFFFFFFFFFFFFLL || v25 == 0 || origin == 0x7FFFFFFFFFFFFFFFLL || length == 0;
      if (!v28 && ((v46 = v25 + v24, origin + length != v24) ? (v47 = v46 == origin) : (v47 = 1), v47 && *(v23 + 24) == order && (v48 = sub_2213FC7C4(*v23, strokeCopy), v49 = *p_strokeRuns + v20, v24 = *(v49 + 8), v48)))
      {
        v50 = *(v49 + 16);
        if (v24 >= origin)
        {
          v51 = origin;
        }

        else
        {
          v51 = *(v49 + 8);
        }

        v52 = v50 + v24;
        if (v50 + v24 <= (origin + length))
        {
          v52 = origin + length;
        }

        v53 = v52 - v51;
        v54 = v24 == 0x7FFFFFFFFFFFFFFFLL || v50 == 0;
        if (v54)
        {
          v55 = length;
        }

        else
        {
          v55 = v53;
        }

        if (v54)
        {
          v56 = origin;
        }

        else
        {
          v56 = v51;
        }

        *(v49 + 8) = v56;
        *(v49 + 16) = v55;
      }

      else if (origin >= v24)
      {
        sub_2213FFC6C(v57, strokeCopy, origin, length, order);
        sub_2213FD8F0(&self->_strokeRuns, begin + 32, v57);

        ++v21;
      }

      else
      {
        sub_2213FFC6C(v57, strokeCopy, origin, length, order);
        sub_2213FD8F0(&self->_strokeRuns, begin, v57);
      }

      objc_msgSend_p_mergeStrokeRunsAtPosition_(self, v29, v21, v30);
    }

    goto LABEL_39;
  }

  v31 = (v22 >> 5) - 1;
  v32 = v18 + 32 * v31;
  v33 = *(v32 + 8);
  v34 = *(v32 + 16);
  v37 = v33 == 0x7FFFFFFFFFFFFFFFLL || v34 == 0 || origin == 0x7FFFFFFFFFFFFFFFLL || length == 0;
  if (v37 || ((v38 = v34 + v33, v39 = origin + length, origin + length != v33) ? (v40 = v38 == origin) : (v40 = 1), !v40 || *(v32 + 24) != order))
  {
LABEL_35:
    sub_2213FFC6C(v57, strokeCopy, origin, length, order);
    sub_2213FD8F0(p_strokeRuns, v19, v57);
    goto LABEL_36;
  }

  if ((sub_2213FC7C4(*v32, strokeCopy) & 1) == 0)
  {
    v19 = p_strokeRuns[1];
    goto LABEL_35;
  }

  v41 = *p_strokeRuns + 32 * v31;
  v42 = *(v41 + 8);
  v43 = *(v41 + 16);
  if (v42 != 0x7FFFFFFFFFFFFFFFLL && v43 != 0)
  {
    if (v42 < origin)
    {
      origin = *(v41 + 8);
    }

    v45 = v43 + v42;
    if (v45 <= v39)
    {
      v45 = v39;
    }

    length = v45 - origin;
  }

  *(v41 + 8) = origin;
  *(v41 + 16) = length;
LABEL_39:
}

- (void)p_invalidate
{
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  for (i = self->_strokeRuns.__end_; i != begin; i = (i - 32))
  {
    v5 = *(i - 4);
  }

  p_strokeRuns->__end_ = begin;
}

- (void)p_invalidateRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  sub_2213FFC6C(v54, 0, range.origin, range.length, 0);
  if (end != begin)
  {
    v8 = (end - begin) >> 5;
    do
    {
      v9 = v8 >> 1;
      v10 = begin + 32 * (v8 >> 1);
      v11 = *(v10 + 2) + *(v10 + 1);
      v12 = (v10 + 32);
      v8 += ~(v8 >> 1);
      if (v11 < v54[1])
      {
        begin = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    end = begin;
  }

  v13 = *p_strokeRuns;
  v14 = p_strokeRuns[1];
  v15 = end - *p_strokeRuns;
  if (v15 >= (v14 - *p_strokeRuns))
  {
    return;
  }

  v16 = v15 >> 5;
  v53 = origin + length;
  v17 = origin + length - 1;
  while (2)
  {
    v18 = 32 * v16;
    while (1)
    {
      v19 = v13 + 32 * v16;
      v20 = *(v19 + 8);
      v21 = *(v19 + 16);
      v22 = v21 + v20;
      v23 = v21 + v20 - 1;
      if (origin > v20)
      {
        v30 = (v19 + 16);
        v31 = 1;
LABEL_27:
        v33 = length != 0;
        goto LABEL_30;
      }

      if (v17 < v23)
      {
        break;
      }

      v24 = v13 + v18;
      v25 = v24 + 32;
      if (v24 + 32 == v14)
      {
        v28 = v14;
        v14 = v24;
      }

      else
      {
        do
        {
          v26 = *v25;
          *v25 = 0;
          v27 = *(v25 - 32);
          *(v25 - 32) = v26;

          *(v25 - 24) = *(v25 + 8);
          *(v25 - 8) = *(v25 + 24);
          v25 += 32;
        }

        while (v25 != v14);
        v28 = p_strokeRuns[1];
        v14 = v25 - 32;
      }

      while (v28 != v14)
      {
        v29 = *(v28 - 32);
        v28 -= 32;
      }

      p_strokeRuns[1] = v14;
      v13 = *p_strokeRuns;
      if (v16 >= (v14 - *p_strokeRuns) >> 5)
      {
        return;
      }
    }

    v30 = (v19 + 16);
    v31 = v20 != 0x7FFFFFFFFFFFFFFFLL;
    if (v20 == 0x7FFFFFFFFFFFFFFFLL || length == 0)
    {
      goto LABEL_27;
    }

    if (v17 >= v20)
    {
      v52 = 0x7FFFFFFFFFFFFFFFLL;
      if (v53 >= origin)
      {
        v52 = origin + length;
      }

      *(v19 + 8) = v52;
      *(v19 + 16) = v22 - v52;
      return;
    }

    v31 = 1;
    v33 = 1;
LABEL_30:
    if (origin > v23 || v23 == 0x7FFFFFFFFFFFFFFFLL || !v33)
    {
      if (origin != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_41;
      }

LABEL_54:
      if (v17 < v20)
      {
        return;
      }
    }

    else
    {
      if (v17 < v23)
      {
LABEL_41:
        if (v20 != 0x7FFFFFFFFFFFFFFFLL && length != 0 && v21 != 0)
        {
          v38 = origin - v20;
          if (origin <= v20)
          {
            v39 = *(v19 + 8);
          }

          else
          {
            v39 = origin;
          }

          v40 = origin + length;
          v41 = v53 - v22;
          if (v53 >= v22)
          {
            v40 = v22;
          }

          if (v40 > v39)
          {
            v42 = v20 - origin;
            if (v20 <= origin)
            {
              v43 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = origin;
            }

            if (v20 <= origin)
            {
              v42 = 0;
            }

            if (origin <= v20)
            {
              v20 = v43;
              v38 = v42;
            }

            if (v31)
            {
              v44 = v38;
            }

            else
            {
              v20 = 0x7FFFFFFFFFFFFFFFLL;
              v44 = 0;
            }

            v45 = v22 - v53;
            if (v22 <= v53)
            {
              v46 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = origin + length;
            }

            if (v22 <= v53)
            {
              v45 = 0;
            }

            if (v22 >= v53)
            {
              v41 = v45;
            }

            else
            {
              v46 = v22;
            }

            v47 = v22 == 0x7FFFFFFFFFFFFFFFLL;
            if (v22 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v48 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v48 = v46;
            }

            if (v47)
            {
              v41 = 0;
            }

            if (v53 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v49 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v48;
            }

            if (v53 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v50 = 0;
            }

            else
            {
              v50 = v41;
            }

            *(v19 + 8) = v20;
            *(v19 + 16) = v44;
            v51 = v18 + v13;
            sub_2213FFC6C(v54, *v19, v49, v50, *(v19 + 24));
            sub_2213FD8F0(p_strokeRuns, v51 + 32, v54);

            return;
          }
        }

        goto LABEL_54;
      }

      *v30 = origin - v20;
    }

    if (++v16 < (v14 - v13) >> 5)
    {
      continue;
    }

    break;
  }
}

- (void)p_mergeStrokeRunsAtPosition:(unint64_t)position
{
  v3 = position + 1;
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  if (position + 1 < (self->_strokeRuns.__end_ - begin) >> 5)
  {
    v7 = begin + 32 * position;
    v8 = begin + 32 * v3;
    v9 = *(v7 + 2);
    v10 = *(v7 + 1);
    v11 = *(v8 + 2);
    v12 = *(v8 + 1);
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(v7 + 8), xmmword_2217E1880), vceqq_s64(*(v8 + 8), xmmword_2217E1880)))) & 1) == 0 && (v9 + v10 == v12 || v11 + v12 == v10) && *(v7 + 6) == *(v8 + 6))
    {
      v14 = sub_2213FC7C4(*v7, *v8);
      begin = p_strokeRuns->__begin_;
      v15 = p_strokeRuns->__begin_ + 32 * position;
      v10 = *(v15 + 8);
      v9 = *(v15 + 16);
      v16 = p_strokeRuns->__begin_ + 32 * v3;
      v12 = *(v16 + 8);
      v11 = *(v16 + 16);
      if (v14)
      {
        goto LABEL_26;
      }
    }

    v17 = v10 == 0x7FFFFFFFFFFFFFFFLL || v12 == 0x7FFFFFFFFFFFFFFFLL;
    v18 = v17 || v9 == 0;
    if (!v18 && v11 != 0)
    {
      if (v10 <= v12)
      {
        v20 = v12;
      }

      else
      {
        v20 = v10;
      }

      v21 = v9 + v10;
      if (v9 + v10 >= v11 + v12)
      {
        v21 = v11 + v12;
      }

      if (v21 > v20)
      {
LABEL_26:
        v22 = begin + 32 * position;
        if (v10 >= v12)
        {
          v23 = v12;
        }

        else
        {
          v23 = v10;
        }

        v24 = v9 + v10;
        if (v9 + v10 <= v11 + v12)
        {
          v24 = v11 + v12;
        }

        v25 = v24 - v23;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0)
        {
          v23 = v10;
          v25 = v9;
        }

        v27 = v10 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0;
        if (v27)
        {
          v28 = v12;
        }

        else
        {
          v28 = v23;
        }

        if (v27)
        {
          v29 = v11;
        }

        else
        {
          v29 = v25;
        }

        *(v22 + 1) = v28;
        *(v22 + 2) = v29;
        v30 = (begin + 32 * v3);
        end = p_strokeRuns->__end_;
        if ((v30 + 32) != end)
        {
          v32 = v22 + 40;
          do
          {
            v33 = *(v32 + 3);
            *(v32 + 3) = 0;
            v34 = *(v32 - 1);
            *(v32 - 1) = v33;

            v35 = v32 + 32;
            *v32 = *(v32 + 2);
            *(v32 + 4) = *(v32 + 12);
            v36 = (v32 + 56);
            v32 += 32;
          }

          while (v36 != end);
          end = p_strokeRuns->__end_;
          v30 = (v35 - 8);
        }

        while (end != v30)
        {
          v37 = *(end - 4);
          end = (end - 32);
        }

        p_strokeRuns->__end_ = v30;
      }
    }
  }
}

- (void)p_insertSpaceAtRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  sub_2213FFC6C(&v37, 0, range.origin, range.length, 0);
  if (end != begin)
  {
    v8 = (end - begin) >> 5;
    do
    {
      v9 = v8 >> 1;
      v10 = begin + 32 * (v8 >> 1);
      v11 = *(v10 + 2) + *(v10 + 1);
      v12 = (v10 + 32);
      v8 += ~(v8 >> 1);
      if (v11 < v38)
      {
        begin = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    end = begin;
  }

  v14 = *p_strokeRuns;
  v13 = p_strokeRuns[1];
  v15 = end - *p_strokeRuns;
  v16 = v15 >> 5;
  v17 = (v13 - *p_strokeRuns) >> 5;
  if (v15 >> 5 < v17 && *(v14 + v15 + 16) + *(v14 + v15 + 8) <= origin)
  {
    ++v16;
  }

  if (v16 < v17)
  {
    v18 = v14 + 32 * v16;
    v20 = v18 + 8;
    v19 = *(v18 + 8);
    if (v19 < origin && origin != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = *(v18 + 16);
      if (v21)
      {
        if (v19 + v21 - 1 >= origin)
        {
          v37 = *v18;
          v22 = *(v20 + 16);
          v38 = *v20;
          v39 = v22;
          sub_2213FE164(p_strokeRuns, *p_strokeRuns + 32 * v16, &v37);
          v23 = *p_strokeRuns;
          v24 = *p_strokeRuns + 32 * v16;
          v25 = *(v24 + 8);
          v26 = *(v24 + 16);
          v27 = v25 - origin;
          if (v25 <= origin)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = origin;
          }

          if (v25 <= origin)
          {
            v27 = 0;
          }

          if (v25 < origin)
          {
            v28 = *(v24 + 8);
            v27 = origin - v25;
          }

          if (v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
            v27 = 0;
          }

          *(v24 + 8) = v28;
          *(v24 + 16) = v27;
          ++v16;
          v29 = v26 + v25;
          v30 = __OFSUB__(origin, v26 + v25);
          v31 = origin - (v26 + v25);
          if ((v31 < 0) ^ v30 | (v31 == 0))
          {
            v32 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v29;
          }

          if ((v31 < 0) ^ v30 | (v31 == 0))
          {
            v31 = 0;
          }

          if (origin < v29)
          {
            v32 = origin;
            v31 = v29 - origin;
          }

          v33 = v29 == 0x7FFFFFFFFFFFFFFFLL;
          if (v29 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v34 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v33)
          {
            v31 = 0;
          }

          v35 = v23 + 32 * v16;
          *(v35 + 8) = v34;
          *(v35 + 16) = v31;

          v14 = *p_strokeRuns;
          v13 = p_strokeRuns[1];
        }
      }
    }

    for (i = v14 + 32 * v16; i < v13; i += 32)
    {
      *(i + 8) += length;
    }
  }
}

- (void)p_removeRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  sub_2213FFC6C(v40, 0, range.origin, range.length, 0);
  if (end != begin)
  {
    v8 = (end - begin) >> 5;
    do
    {
      v9 = v8 >> 1;
      v10 = begin + 32 * (v8 >> 1);
      v11 = *(v10 + 2) + *(v10 + 1);
      v12 = (v10 + 32);
      v8 += ~(v8 >> 1);
      if (v11 < v40[1])
      {
        begin = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    end = begin;
  }

  v13 = p_strokeRuns->__begin_;
  v14 = p_strokeRuns->__end_;
  v15 = end - p_strokeRuns->__begin_;
  v16 = v15 >> 5;
  v17 = (v14 - p_strokeRuns->__begin_) >> 5;
  if (v15 >> 5 < v17 && *(v13 + v15 + 16) + *(v13 + v15 + 8) <= origin)
  {
    ++v16;
  }

  v18 = v13 + 32 * v16;
  if (v16 < v17 && v14 > v18)
  {
    v20 = origin + length;
    v21 = origin + length - 1;
    do
    {
      v22 = *(v18 + 1);
      v23 = *(v18 + 2);
      v24 = v23 + v22;
      if (origin <= v22)
      {
        if (v21 >= v24 - 1)
        {
          v29 = v18 + 32;
          if (v18 + 32 == v14)
          {
            v32 = v14;
            v14 = v18;
          }

          else
          {
            do
            {
              v30 = *v29;
              *v29 = 0;
              v31 = *(v29 - 4);
              *(v29 - 4) = v30;

              *(v29 - 24) = *(v29 + 8);
              *(v29 - 2) = *(v29 + 6);
              v29 += 32;
            }

            while (v29 != v14);
            v32 = p_strokeRuns->__end_;
            v14 = (v29 - 32);
          }

          while (v32 != v14)
          {
            v39 = *(v32 - 4);
            v32 = (v32 - 32);
          }

          p_strokeRuns->__end_ = v14;
          continue;
        }
      }

      else if (v20 >= v24)
      {
        if (origin == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = *(v18 + 1);
        }

        if (origin == 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = 0;
        }

        else
        {
          v26 = origin - v22;
        }

        *(v18 + 1) = v25;
        *(v18 + 2) = v26;
        goto LABEL_71;
      }

      if (origin >= v22)
      {
        if (v24 - 1 >= v21)
        {
          *(v18 + 2) = v23 - length;
          goto LABEL_71;
        }

        if (origin != 0x7FFFFFFFFFFFFFFFLL && v22 != 0x7FFFFFFFFFFFFFFFLL && length && v23)
        {
LABEL_45:
          if (origin <= v22)
          {
            v33 = *(v18 + 1);
          }

          else
          {
            v33 = origin;
          }

          if (v20 >= v24)
          {
            v34 = v24;
          }

          else
          {
            v34 = origin + length;
          }

          if (v34 > v33)
          {
            v35 = 0x7FFFFFFFFFFFFFFFLL;
            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v38 = 0;
            }

            else
            {
              v36 = v20 - v24;
              if (v20 <= v24)
              {
                v37 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v24;
              }

              if (v20 <= v24)
              {
                v36 = 0;
              }

              if (v20 < v24)
              {
                v37 = origin + length;
                v36 = v24 - v20;
              }

              if (v24 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v38 = 0;
              }

              else
              {
                v35 = v37;
                v38 = v36;
              }
            }

            *(v18 + 1) = v35 - length;
            *(v18 + 2) = v38;
            goto LABEL_71;
          }
        }
      }

      else if (v22 != 0x7FFFFFFFFFFFFFFFLL && length != 0 && v23 != 0)
      {
        goto LABEL_45;
      }

      *(v18 + 1) = v22 - length;
LABEL_71:
      v18 += 32;
    }

    while (v18 < v14);
  }
}

- (void)p_flattenStrokeOrder
{
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  if (begin != end)
  {
    v4 = 0;
    v5 = (end - begin - 32) >> 5;
    v6 = vdupq_n_s64(v5);
    v7 = (begin + 88);
    do
    {
      v8 = vdupq_n_s64(v4);
      v9 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_2217E0F60)));
      if (vuzp1_s16(v9, *v6.i8).u8[0])
      {
        *(v7 - 16) = 1;
      }

      if (vuzp1_s16(v9, *&v6).i8[2])
      {
        *(v7 - 8) = 1;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_2217E0F70)))).i32[1])
      {
        *v7 = 1;
        v7[8] = 1;
      }

      v4 += 4;
      v7 += 32;
    }

    while (((v5 + 4) & 0xFFFFFFFFFFFFFFCLL) != v4);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[94], v5);

  if (*(v6 + 16))
  {
    self->_columnOrRowIndex = *(v6 + 48);
  }

  if (*(v6 + 32) >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D804A0];
    do
    {
      v10 = *(*(v6 + 40) + 8 * v8 + 8);
      if (*(v10 + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v7, *(v10 + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v7, v9, unarchiverCopy);
      }
      v11 = ;
      objc_msgSend_p_appendStroke_inRange_order_(self, v12, v11, *(v10 + 32), *(v10 + 36), *(v10 + 40));

      ++v8;
    }

    while (v8 < *(v6 + 32));
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2214005C8, off_2812E4498[94]);

  v9 = objc_msgSend_columnOrRowIndex(self, v6, v7, v8);
  *(v5 + 16) |= 1u;
  *(v5 + 48) = v9;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  while (begin != end)
  {
    v13 = *begin;
    v25 = *(begin + 8);
    v14 = *(begin + 6);
    v15 = *(v5 + 40);
    if (!v15)
    {
      goto LABEL_8;
    }

    v16 = *(v5 + 32);
    v17 = *v15;
    if (v16 < *v15)
    {
      *(v5 + 32) = v16 + 1;
      v18 = *&v15[2 * v16 + 2];
      goto LABEL_10;
    }

    if (v17 == *(v5 + 36))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
      v15 = *(v5 + 40);
      v17 = *v15;
    }

    *v15 = v17 + 1;
    v18 = google::protobuf::Arena::CreateMaybeMessage<TST::StrokeLayerArchive_StrokeRunArchive>(*(v5 + 24));
    v19 = *(v5 + 32);
    v20 = *(v5 + 40) + 8 * v19;
    *(v5 + 32) = v19 + 1;
    *(v20 + 8) = v18;
LABEL_10:
    v21 = v18[2].i32[0];
    v18[4] = vmovn_s64(v25);
    v18[5].i32[0] = v14;
    v18[2].i32[0] = v21 | 0xF;
    v22 = v18[3];
    if (!v22)
    {
      v23 = v18[1];
      if (v23.i8[0])
      {
        v23 = *(*&v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x223DA0290](*&v23);
      v18[3] = v22;
    }

    objc_msgSend_saveToArchive_archiver_(v13, v12, v22, archiverCopy);

    begin = (begin + 32);
  }
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  return self;
}

@end