@interface TSTStrokeWidthCache
- (TSTStrokeWidthCache)init;
- (_opaque_pthread_rwlock_t)rwlock;
- (double)strokeWidthForGridIndex:(unsigned int)index inRange:(TSTSimpleRange)range;
- (id).cxx_construct;
- (void)dealloc;
- (void)setCount:(unsigned int)count;
- (void)setRwlock:(_opaque_pthread_rwlock_t *)rwlock;
- (void)strokeWidthForGridIndex:(unsigned int)index outWidth:(double *)width outNextWidth:(double *)nextWidth;
- (void)updateCacheForGridIndex:(unsigned int)index withMajorStrokes:(id)strokes andMinorStrokes:(id)minorStrokes;
@end

@implementation TSTStrokeWidthCache

- (TSTStrokeWidthCache)init
{
  v5.receiver = self;
  v5.super_class = TSTStrokeWidthCache;
  v2 = [(TSTStrokeWidthCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->_rwlock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwlock);
  v3.receiver = self;
  v3.super_class = TSTStrokeWidthCache;
  [(TSTStrokeWidthCache *)&v3 dealloc];
}

- (void)setCount:(unsigned int)count
{
  pthread_rwlock_wrlock(&self->_rwlock);
  sub_221280CE8(&self->_indexToCacheEntriesMap, count);

  pthread_rwlock_unlock(&self->_rwlock);
}

- (double)strokeWidthForGridIndex:(unsigned int)index inRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  pthread_rwlock_rdlock(&self->_rwlock);
  begin = self->_indexToCacheEntriesMap.__begin_;
  v9 = -1.0;
  if (index < ((self->_indexToCacheEntriesMap.__end_ - begin) >> 5))
  {
    v10 = begin + 32 * index;
    v12 = *(v10 + 1);
    v11 = *(v10 + 2);
    if (v12 != v11)
    {
      if (origin || length != 2147483646)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v11 - v12);
        do
        {
          v14 = v13 >> 1;
          v15 = &v12[3 * (v13 >> 1)];
          v17 = *v15;
          v18 = v15[1];
          v16 = (v15 + 3);
          v13 += ~(v13 >> 1);
          if (v18 + v17 <= origin)
          {
            v12 = v16;
          }

          else
          {
            v13 = v14;
          }
        }

        while (v13);
        if (v12 != v11)
        {
          v19 = v12 + 3;
          v9 = -1.0;
          do
          {
            if (v9 < *(v19 - 1))
            {
              v9 = *(v19 - 1);
            }

            v20 = *(v19 - 2) + *(v19 - 3) >= (origin + length) || v19 == v11;
            v19 += 3;
          }

          while (!v20);
        }
      }

      else
      {
        v9 = *v10;
      }
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
  return v9;
}

- (void)strokeWidthForGridIndex:(unsigned int)index outWidth:(double *)width outNextWidth:(double *)nextWidth
{
  pthread_rwlock_rdlock(&self->_rwlock);
  begin = self->_indexToCacheEntriesMap.__begin_;
  v10 = (self->_indexToCacheEntriesMap.__end_ - begin) >> 5;
  v11 = -1.0;
  v12 = -1.0;
  if (v10 > index)
  {
    v13 = begin + 32 * index;
    if (*(v13 + 1) == *(v13 + 2))
    {
      v12 = -1.0;
    }

    else
    {
      v12 = *v13;
    }
  }

  v14 = index + 1;
  if (v10 > v14)
  {
    v15 = begin + 32 * v14;
    if (*(v15 + 1) == *(v15 + 2))
    {
      v11 = -1.0;
    }

    else
    {
      v11 = *v15;
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
  if (width)
  {
    *width = v12;
  }

  if (nextWidth)
  {
    *nextWidth = v11;
  }
}

- (void)updateCacheForGridIndex:(unsigned int)index withMajorStrokes:(id)strokes andMinorStrokes:(id)minorStrokes
{
  indexCopy = index;
  begin = self->_indexToCacheEntriesMap.__begin_;
  if (index < ((self->_indexToCacheEntriesMap.__end_ - begin) >> 5))
  {
    v45 = 0;
    v8 = 0uLL;
    v43 = 0u;
    v44 = 0u;
    if (strokes)
    {
      objc_msgSend_stackReferences(strokes, a2, *&index, strokes);
      v8 = 0uLL;
    }

    v42 = 0;
    v40 = v8;
    v41 = v8;
    if (minorStrokes)
    {
      objc_msgSend_stackReferences(minorStrokes, a2, *&index, strokes);
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
    if (v43)
    {
      v9 = &v43;
    }

    else
    {
      v9 = &v40;
    }

    sub_221281314(&v37, v9);
    if (*(&v43 + 1) && *(&v40 + 1))
    {
      v11 = [TSTStrokeOrderedLayer alloc];
      v13 = objc_msgSend_initWithContext_majorStrokeLayer_minorStrokeLayer_(v11, v12, 0, *(&v43 + 1), *(&v40 + 1));
      v28 = v13;
      sub_221281314(&v37, &v28);
      v14 = v13;
    }

    else if (*(&v43 + 1) | *(&v40 + 1))
    {
      if (*(&v43 + 1))
      {
        v15 = &v43 + 8;
      }

      else
      {
        v15 = &v40 + 8;
      }

      v14 = 0;
      sub_221281314(&v37, v15);
    }

    else
    {
      v14 = 0;
    }

    if (v41)
    {
      sub_221281314(&v37, &v41);
    }

    if (v44)
    {
      sub_221281314(&v37, &v44);
    }

    if (*(&v44 + 1) && *(&v41 + 1))
    {
      v16 = [TSTStrokeOrderedLayer alloc];
      v18 = objc_msgSend_initWithContext_majorStrokeLayer_minorStrokeLayer_(v16, v17, 0, *(&v44 + 1), *(&v41 + 1));
      v28 = v18;
      sub_221281314(&v37, &v28);
      v19 = v18;
    }

    else if (*(&v44 + 1) | *(&v41 + 1))
    {
      if (*(&v44 + 1))
      {
        v20 = &v44 + 8;
      }

      else
      {
        v20 = &v41 + 8;
      }

      v19 = 0;
      sub_221281314(&v37, v20);
    }

    else
    {
      v19 = 0;
    }

    if (v42)
    {
      sub_221281314(&v37, &v42);
    }

    if (v45)
    {
      sub_221281314(&v37, &v45);
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x4812000000;
    v31 = sub_2212813E8;
    v32 = sub_22128140C;
    v33 = &unk_22188E88F;
    v35 = 0;
    v36 = 0;
    __p = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_221281424;
    v23[3] = &unk_2784623B8;
    v23[4] = &v28;
    v23[5] = &v24;
    objc_msgSend_enumerateWidthsInLayers_usingBlock_(TSTStrokeLayerMergedStack, v10, &v37, v23);
    v21 = (begin + 32 * indexCopy);
    *v21 = v25[3];
    v22 = v21 + 1;
    if (v22 != v29 + 6)
    {
      sub_2212819E0(v22, v29[6], v29[7], 0xAAAAAAAAAAAAAAABLL * ((v29[7] - v29[6]) >> 3));
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }
  }
}

- (_opaque_pthread_rwlock_t)rwlock
{
  v3 = *self[1].__opaque;
  *&retstr->__opaque[152] = *&self->__opaque[184];
  *&retstr->__opaque[168] = v3;
  *&retstr->__opaque[184] = *&self[1].__opaque[16];
  v4 = *&self->__opaque[136];
  *&retstr->__opaque[88] = *&self->__opaque[120];
  *&retstr->__opaque[104] = v4;
  v5 = *&self->__opaque[168];
  *&retstr->__opaque[120] = *&self->__opaque[152];
  *&retstr->__opaque[136] = v5;
  v6 = *&self->__opaque[72];
  *&retstr->__opaque[24] = *&self->__opaque[56];
  *&retstr->__opaque[40] = v6;
  v7 = *&self->__opaque[104];
  *&retstr->__opaque[56] = *&self->__opaque[88];
  *&retstr->__opaque[72] = v7;
  v8 = *&self->__opaque[40];
  *&retstr->__sig = *&self->__opaque[24];
  *&retstr->__opaque[8] = v8;
  return self;
}

- (void)setRwlock:(_opaque_pthread_rwlock_t *)rwlock
{
  *&self->_rwlock.__sig = *&rwlock->__sig;
  v3 = *&rwlock->__opaque[8];
  v4 = *&rwlock->__opaque[24];
  v5 = *&rwlock->__opaque[56];
  *&self->_rwlock.__opaque[40] = *&rwlock->__opaque[40];
  *&self->_rwlock.__opaque[56] = v5;
  *&self->_rwlock.__opaque[8] = v3;
  *&self->_rwlock.__opaque[24] = v4;
  v6 = *&rwlock->__opaque[72];
  v7 = *&rwlock->__opaque[88];
  v8 = *&rwlock->__opaque[120];
  *&self->_rwlock.__opaque[104] = *&rwlock->__opaque[104];
  *&self->_rwlock.__opaque[120] = v8;
  *&self->_rwlock.__opaque[72] = v6;
  *&self->_rwlock.__opaque[88] = v7;
  v9 = *&rwlock->__opaque[136];
  v10 = *&rwlock->__opaque[152];
  v11 = *&rwlock->__opaque[168];
  *&self->_rwlock.__opaque[184] = *&rwlock->__opaque[184];
  *&self->_rwlock.__opaque[152] = v10;
  *&self->_rwlock.__opaque[168] = v11;
  *&self->_rwlock.__opaque[136] = v9;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end