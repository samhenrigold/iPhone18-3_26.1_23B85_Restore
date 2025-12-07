@interface TSTStrokeLayerAbstractStack
- (TSTStrokeLayerAbstractStack)init;
- (id)lookupStrokeAtIndex:(int64_t)index;
- (id)mutableStrokeLayerWithContext:(id)context subtractingDefaultsFrom:(id)from forRange:(TSTSimpleRange)range;
- (unint64_t)count;
- (vector<TSTStrokeLayer)p_strokeLayerVector;
- (void)dealloc;
- (void)enumerateStrokesAndCapsFrom:(unsigned int)from to:(unsigned int)to usingBlock:(id)block;
- (void)enumerateStrokesAndCapsInRange:(TSTSimpleRange)range usingBlock:(id)block;
- (void)enumerateStrokesFrom:(unsigned int)from to:(unsigned int)to usingBlock:(id)block;
- (void)enumerateStrokesInRange:(TSTSimpleRange)range usingBlock:(id)block;
- (void)enumerateWidthsInRange:(TSTSimpleRange)range usingBlock:(id)block;
@end

@implementation TSTStrokeLayerAbstractStack

- (TSTStrokeLayerAbstractStack)init
{
  v5.receiver = self;
  v5.super_class = TSTStrokeLayerAbstractStack;
  v2 = [(TSTStrokeLayerAbstractStack *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->mRWLock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->mRWLock);
  v3.receiver = self;
  v3.super_class = TSTStrokeLayerAbstractStack;
  [(TSTStrokeLayerAbstractStack *)&v3 dealloc];
}

- (vector<TSTStrokeLayer)p_strokeLayerVector
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSTStrokeLayerAbstractStack p_strokeLayerVector]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 121, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  v13 = MEMORY[0x277CBEAD8];
  v14 = *MEMORY[0x277CBE658];
  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s: %s", v16, "Do not call method", "[TSTStrokeLayerAbstractStack p_strokeLayerVector]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v13, v18, v14, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (unint64_t)count
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeLayerAbstractStack count]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 127, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", v15, "Do not call method", "[TSTStrokeLayerAbstractStack count]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v17, v13, v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (id)lookupStrokeAtIndex:(int64_t)index
{
  objc_msgSend_p_strokeLayerVector(self, a2, index, v3);
  if (v27 == __p || (v7 = v27 - __p, v8 = v7 - 1, v7 < 1))
  {
    v9 = 0;
    goto LABEL_16;
  }

  v9 = 0;
  while (1)
  {
    v10 = objc_msgSend_findStrokeAndRangeAtIndex_(__p[v8], v5, index, v6);
    v14 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }

    v15 = objc_msgSend_range(v10, v11, v12, v13);
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v19 = v16 && v15 <= index;
    if (!v19 || &v16[v15 - 1] < index)
    {
      goto LABEL_10;
    }

    v21 = objc_msgSend_stroke(v14, v16, v17, v18);

    if ((objc_msgSend_isPortalStroke(v21, v22, v23, v24) & 1) == 0)
    {
      break;
    }

    v9 = v21;
LABEL_10:

    v20 = v8-- + 1;
    if (v20 <= 1)
    {
      goto LABEL_16;
    }
  }

  v9 = v21;
LABEL_16:
  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

- (void)enumerateStrokesFrom:(unsigned int)from to:(unsigned int)to usingBlock:(id)block
{
  blockCopy = block;
  v10 = from - to;
  toCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (to >= from)
  {
    v10 = 0;
  }

  else
  {
    toCopy = to;
  }

  if (from < to)
  {
    fromCopy = from;
  }

  else
  {
    fromCopy = toCopy;
  }

  if (from < to)
  {
    v13 = to - from;
  }

  else
  {
    v13 = v10;
  }

  v14 = blockCopy;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, v8, fromCopy, v13);
}

- (void)enumerateStrokesInRange:(TSTSimpleRange)range usingBlock:(id)block
{
  length = range.length;
  origin = range.origin;
  v69 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v66 = 0;
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  objc_msgSend_p_strokeLayerVector(self, v7, v8, v9);
  v13 = (v65 - __p) >> 3;
  if (v13 < 1)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    v19 = (v65 - __p) >> 3;
    if (origin <= v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = origin;
    }

    v62 = origin + length;
    while (1)
    {
      if (v20 >= v62)
      {
        goto LABEL_57;
      }

      v21 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v22 = v19 - 1;
        v23 = __p[v19 - 1];
        if (!v23)
        {
          goto LABEL_33;
        }

        v24 = *(v67 + v22);
        if (v24)
        {
          while (1)
          {
            v25 = objc_msgSend_range(v24, v10, v11, v12);
            if (&v10[v25] > v20)
            {
              break;
            }

            v26 = objc_msgSend_nextStrokeAndRange_(v23, v10, *(v67 + v22), v12);
            v27 = *(v67 + v22);
            *(v67 + v22) = v26;

            v24 = *(v67 + v22);
            if (!v24)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v28 = objc_msgSend_findStrokeAndRangeAtIndex_(__p[v19 - 1], v10, v20, v12);
          v29 = *(v67 + v22);
          *(v67 + v22) = v28;
        }

        v30 = *(v67 + v22);
        if (!v30)
        {
LABEL_32:
          __p[v22] = 0;
          goto LABEL_33;
        }

        v31 = objc_msgSend_range(v30, v10, v11, v12);
        v35 = v32 && v31 <= v20;
        if (v35 && &v32[v31 - 1] >= v20)
        {
          break;
        }

        v36 = objc_msgSend_range(*(v67 + v22), v32, v33, v34);
        if (v21 >= v36)
        {
          v21 = v36;
        }

LABEL_33:
        if (v19 <= 1)
        {
          v66 = 1;
          goto LABEL_57;
        }

        --v19;
        if (v66)
        {
          goto LABEL_57;
        }
      }

      v37 = objc_msgSend_range(*(v67 + v22), v32, v33, v34);
      v41 = &v38[v37];
      if (v21 < &v38[v37])
      {
        v41 = v21;
      }

      v42 = 0x7FFFFFFFFFFFFFFFLL;
      if (length)
      {
        v43 = 0;
        if (origin != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v20 <= origin)
          {
            v44 = origin;
          }

          else
          {
            v44 = v20;
          }

          v45 = origin + length;
          if (v41 < v62)
          {
            v45 = v41;
          }

          v35 = v45 < v44;
          v46 = v45 - v44;
          if (v35)
          {
            v44 = 0x7FFFFFFFFFFFFFFFLL;
            v46 = 0;
          }

          if (v41 == v20)
          {
            v43 = 0;
          }

          else
          {
            v42 = v44;
            v43 = v46;
          }
        }
      }

      else
      {
        v43 = 0;
      }

      v47 = objc_msgSend_stroke(*(v67 + v22), v38, v39, v40);
      isPortalStroke = objc_msgSend_isPortalStroke(v47, v48, v49, v50);

      if (isPortalStroke)
      {
        v55 = objc_msgSend_portalledStrokeLayer(self, v52, v53, v54);
        objc_msgSend_enumerateStrokesInRange_usingBlock_(v55, v56, v42, v43, blockCopy);
      }

      else
      {
        v55 = objc_msgSend_stroke(*(v67 + v22), v52, v53, v54);
        v60 = objc_msgSend_order(*(v67 + v22), v57, v58, v59);
        blockCopy[2](blockCopy, v55, v42, v43, v60, &v66);
      }

      v20 = v43 + v42;
      v19 = (v65 - __p) >> 3;
      if (v66)
      {
        goto LABEL_57;
      }
    }
  }

  v14 = 0;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v16 = __p[v14];
    v17 = *(v67 + v14);
    *(v67 + v14) = 0;

    if (v16)
    {
      v18 = objc_msgSend_startingIndex(v16, v10, v11, v12);
      if (v18 < v15)
      {
        v15 = v18;
      }
    }

    ++v14;
  }

  while (v13 != v14);
  if ((v66 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_57:
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 64; i != -8; i -= 8)
  {
  }
}

- (void)enumerateWidthsInRange:(TSTSimpleRange)range usingBlock:(id)block
{
  length = range.length;
  origin = range.origin;
  v63[45] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v62 = 0;
  selfCopy = self;
  objc_msgSend_p_strokeLayerVector(self, v6, v7, v8);
  v12 = (v61 - __p) >> 3;
  if (v12 < 1)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    v18 = (v61 - __p) >> 3;
    if (origin <= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = origin;
    }

    v52 = origin + length;
    while (1)
    {
      if (v19 >= v52)
      {
        goto LABEL_56;
      }

      v20 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v21 = v18 - 1;
        v22 = *(__p + v18 - 1);
        if (!v22)
        {
          goto LABEL_31;
        }

        v23 = &v63[5 * v21];
        v24 = *(v23 + 1);
        v57 = *v23;
        v58 = v24;
        i = v23[4];
        if (sub_2213FC604(&v57))
        {
          v27 = *(v23 + 1);
          v57 = *v23;
          v58 = v27;
          for (i = v23[4]; sub_2213FC604(&v57); i = v32)
          {
            if (v23[2] + v23[1] > v19)
            {
              break;
            }

            v30 = *(v23 + 1);
            v55[0] = *v23;
            v55[1] = v30;
            v56 = v23[4];
            objc_msgSend_nextWidthAndRange_(v22, v28, v55, v29);
            v31 = v58;
            *v23 = v57;
            *(v23 + 1) = v31;
            v32 = i;
            v23[4] = i;
            v33 = *(v23 + 1);
            v57 = *v23;
            v58 = v33;
          }
        }

        else
        {
          objc_msgSend_findWidthAndRangeAtIndex_(v22, v25, v19, v26);
          v34 = v58;
          *v23 = v57;
          *(v23 + 1) = v34;
          v23[4] = i;
        }

        v35 = *(v23 + 1);
        v57 = *v23;
        v58 = v35;
        i = v23[4];
        if (!sub_2213FC604(&v57))
        {
          *(__p + v21) = 0;
          goto LABEL_31;
        }

        v39 = v23[1];
        v40 = v23[2];
        if (v40)
        {
          if (v39 <= v19)
          {
            v41 = v40 + v39;
            if (v41 - 1 >= v19)
            {
              break;
            }
          }
        }

        if (v20 >= v39)
        {
          v20 = v23[1];
        }

LABEL_31:
        if (v18 <= 1)
        {
          v62 = 1;
          goto LABEL_56;
        }

        --v18;
        if (v62)
        {
          goto LABEL_56;
        }
      }

      if (v20 >= v41)
      {
        v42 = v41;
      }

      else
      {
        v42 = v20;
      }

      v43 = 0x7FFFFFFFFFFFFFFFLL;
      if (length)
      {
        v44 = 0;
        if (origin != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v19 <= origin)
          {
            v45 = origin;
          }

          else
          {
            v45 = v19;
          }

          v46 = origin + length;
          if (v42 < v52)
          {
            v46 = v42;
          }

          v47 = v46 < v45;
          v48 = v46 - v45;
          if (v47)
          {
            v45 = 0x7FFFFFFFFFFFFFFFLL;
            v48 = 0;
          }

          if (v42 == v19)
          {
            v44 = 0;
          }

          else
          {
            v43 = v45;
            v44 = v48;
          }
        }
      }

      else
      {
        v44 = 0;
      }

      if (*(v23 + 24) == 1)
      {
        v49 = objc_msgSend_portalledStrokeLayer(selfCopy, v36, v37, v38);
        objc_msgSend_enumerateWidthsInRange_usingBlock_(v49, v50, v43, v44, blockCopy);
      }

      else
      {
        blockCopy[2](blockCopy, v43, v44, &v62, *v23);
      }

      v19 = v44 + v43;
      v18 = v12;
      if (v62)
      {
        goto LABEL_56;
      }
    }
  }

  v13 = 0;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = v63;
  do
  {
    v16 = *(__p + v13);
    *v15 = xmmword_2217E1B70;
    *(v15 + 1) = xmmword_2217E1B80;
    v15[4] = 0x7FFFFFFFFFFFFFFFLL;
    if (v16)
    {
      v17 = objc_msgSend_startingIndex(v16, v9, v10, v11);
      if (v17 < v14)
      {
        v14 = v17;
      }
    }

    ++v13;
    v15 += 5;
  }

  while (v12 != v13);
  if ((v62 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_56:
  if (__p)
  {
    v61 = __p;
    operator delete(__p);
  }
}

- (void)enumerateStrokesAndCapsFrom:(unsigned int)from to:(unsigned int)to usingBlock:(id)block
{
  blockCopy = block;
  v10 = from - to;
  toCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (to >= from)
  {
    v10 = 0;
  }

  else
  {
    toCopy = to;
  }

  if (from < to)
  {
    fromCopy = from;
  }

  else
  {
    fromCopy = toCopy;
  }

  if (from < to)
  {
    v13 = to - from;
  }

  else
  {
    v13 = v10;
  }

  v14 = blockCopy;
  objc_msgSend_enumerateStrokesAndCapsInRange_usingBlock_(self, v8, fromCopy, v13);
}

- (void)enumerateStrokesAndCapsInRange:(TSTSimpleRange)range usingBlock:(id)block
{
  length = range.length;
  origin = range.origin;
  blockCopy = block;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_2213828C8;
  v58 = sub_2213828D8;
  v59 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x4012000000;
  v49 = sub_2213828E0;
  v50 = nullsub_56;
  v51 = &unk_22188E88F;
  v52 = xmmword_2217E1880;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v8 = origin + length;
  if ((origin + length) >= origin)
  {
    v9 = origin + length;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v45 = 0;
  v10 = origin - 1;
  if (origin < 1)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10 + length;
    if ((v10 + length) <= v10)
    {
      v11 = origin - 1;
    }

    v12 = v11 - origin + 2;
    if (origin == 0x7FFFFFFFFFFFFFFFLL)
    {
      length = 1;
    }

    else
    {
      length = v12;
    }

    --origin;
  }

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (origin == 0x7FFFFFFFFFFFFFFFLL)
    {
      length = 1;
      origin = v8;
    }

    else
    {
      v13 = length + origin - 1;
      if (origin > v9 || !length || v13 < v9)
      {
        if (origin >= v9)
        {
          origin = v9;
        }

        if (v13 <= v9)
        {
          v13 = v9;
        }

        length = v13 - origin + 1;
      }
    }
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_2213828F0;
  v34[3] = &unk_278463870;
  v36 = v53;
  v37 = &v60;
  v38 = &v54;
  v39 = &v46;
  v40 = &v42;
  v41 = v10;
  v14 = blockCopy;
  v35 = v14;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, v15, origin, length, v34);
  if (*(v61 + 24) == 1)
  {
    v33 = 0;
    v19 = v47[6];
    if (v19 != v9)
    {
      if (v19 <= v9 && v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = v47[7];
        if (v20)
        {
          v21 = v20 - 1;
          if (v21 + v19 >= v9)
          {
            v47[7] = v21;
          }
        }
      }

      if (objc_msgSend_isPortalStroke(v55[5], v16, v17, v18))
      {
        v24 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTStrokeLayerAbstractStack enumerateStrokesAndCapsInRange:usingBlock:]", v23);
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v27);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 450, 0, "should never see portal strokes here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
      }

      (*(v14 + 2))(v14, v55[5], v47[6], v47[7], *(v43 + 6), 1, &v33);
    }
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(v53, 8);
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v60, 8);
}

- (id)mutableStrokeLayerWithContext:(id)context subtractingDefaultsFrom:(id)from forRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  contextCopy = context;
  fromCopy = from;
  v11 = [TSTMutableStrokeLayer alloc];
  v14 = objc_msgSend_initWithContext_(v11, v12, contextCopy, v13);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_221382CF4;
  v21[3] = &unk_2784638C0;
  v24 = origin;
  v25 = length;
  v15 = fromCopy;
  v22 = v15;
  v16 = v14;
  v23 = v16;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, v17, origin, length, v21);
  v18 = v23;
  v19 = v16;

  return v16;
}

@end