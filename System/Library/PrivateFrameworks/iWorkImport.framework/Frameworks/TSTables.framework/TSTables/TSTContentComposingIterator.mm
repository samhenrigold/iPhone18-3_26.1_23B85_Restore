@interface TSTContentComposingIterator
- (TSTContentComposingIterator)init;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d;
- (TSUCellCoord)getNext;
- (id).cxx_construct;
- (vector<TSUCellCoord,)cursorCellIDs;
- (void)addIterator:(id)iterator;
- (void)setCursorCellIDs:()vector<TSUCellCoord;
- (void)terminate;
- (void)updateCellData:(id)data;
- (void)updateFormulaForCellData:(id)data;
@end

@implementation TSTContentComposingIterator

- (TSTContentComposingIterator)init
{
  v7.receiver = self;
  v7.super_class = TSTContentComposingIterator;
  v2 = [(TSTContentComposingIterator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_minCursorCellID = 0x7FFF7FFFFFFFLL;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    iterators = v3->_iterators;
    v3->_iterators = v4;
  }

  return v3;
}

- (void)addIterator:(id)iterator
{
  iteratorCopy = iterator;
  if (iteratorCopy)
  {
    objc_msgSend_addObject_(self->_iterators, v4, iteratorCopy, v5);
  }
}

- (void)updateCellData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_iterators;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_updateCellData_(*(*(&v12 + 1) + 8 * v11++), v7, dataCopy, v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)updateFormulaForCellData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_iterators;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_updateFormulaForCellData_(*(*(&v12 + 1) + 8 * v11++), v7, dataCopy, v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
    }

    while (v9);
  }
}

- (TSUCellCoord)getNext
{
  v51 = *MEMORY[0x277D85DE8];
  p_cursorCellIDs = &self->_cursorCellIDs;
  if (self->_cursorCellIDs.__end_ == self->_cursorCellIDs.__begin_)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = self->_iterators;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v46, v50, 16);
    if (v27)
    {
      v28 = *v47;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v22);
          }

          Next = objc_msgSend_getNext(*(*(&v46 + 1) + 8 * i), v24, v25, v26, v46);
          v31 = Next;
          end = self->_cursorCellIDs.__end_;
          cap = self->_cursorCellIDs.__cap_;
          if (end >= cap)
          {
            v35 = end - p_cursorCellIDs->__begin_;
            if ((v35 + 1) >> 61)
            {
              sub_22107C148();
            }

            v36 = cap - p_cursorCellIDs->__begin_;
            v37 = v36 >> 2;
            if (v36 >> 2 <= (v35 + 1))
            {
              v37 = v35 + 1;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFF8)
            {
              v38 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v37;
            }

            if (v38)
            {
              sub_2210874C4(p_cursorCellIDs, v38);
            }

            *(8 * v35) = Next;
            v34 = (8 * v35 + 8);
            begin = self->_cursorCellIDs.__begin_;
            v40 = (self->_cursorCellIDs.__end_ - begin);
            v41 = (8 * v35 - v40);
            memcpy(v41, begin, v40);
            v42 = self->_cursorCellIDs.__begin_;
            self->_cursorCellIDs.__begin_ = v41;
            self->_cursorCellIDs.__end_ = v34;
            self->_cursorCellIDs.__cap_ = 0;
            if (v42)
            {
              operator delete(v42);
            }
          }

          else
          {
            *end = Next;
            v34 = end + 1;
          }

          self->_cursorCellIDs.__end_ = v34;
          minCursorCellID = self->_minCursorCellID;
          if (minCursorCellID.row >= v31 && (minCursorCellID.column >= WORD2(v31) || minCursorCellID.row != v31))
          {
            minCursorCellID = v31;
          }

          self->_minCursorCellID = minCursorCellID;
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v46, v50, 16);
      }

      while (v27);
    }

    return self->_minCursorCellID;
  }

  else
  {
    v6 = 0x7FFF7FFFFFFFLL;
    if (objc_msgSend_count(self->_iterators, a2, v2, v3))
    {
      v10 = 0;
      do
      {
        v11 = &self->_cursorCellIDs.__begin_[v10];
        row = self->_minCursorCellID.row;
        if (v11->row < row || v11->row == row && v11->column < self->_minCursorCellID.column || ((v17 = *v11, v18 = self->_minCursorCellID, v20 = v17.row == v18.row, v19 = (*&v18 ^ *&v17) & 0x101FFFF00000000, v20) ? (v20 = v19 == 0) : (v20 = 0), v20))
        {
          v13 = objc_msgSend_objectAtIndexedSubscript_(self->_iterators, v7, v10, v9);
          p_cursorCellIDs->__begin_[v10] = objc_msgSend_getNext(v13, v14, v15, v16);

          v17 = p_cursorCellIDs->__begin_[v10];
        }

        if (v17.row <= v6.row && (v6.column >= v17.column || v17.row != v6.row))
        {
          v6 = v17;
        }

        ++v10;
      }

      while (v10 < objc_msgSend_count(self->_iterators, v7, v8, v9));
    }

    self->_minCursorCellID = v6;
  }

  return v6;
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d
{
  v6 = 0x7FFF7FFFFFFFLL;
  if (objc_msgSend_count(self->_iterators, a2, *&d, v3))
  {
    v10 = 0;
    do
    {
      begin = self->_cursorCellIDs.__begin_;
      v12 = &begin[v10];
      if (v12->row < d.row || v12->row == d.row && v12->column < d.column)
      {
        v13 = objc_msgSend_objectAtIndexedSubscript_(self->_iterators, v7, v10, v9);
        objc_msgSend_advanceToCellID_(v13, v14, *&d, v15);
        self->_cursorCellIDs.__begin_[v10] = objc_msgSend_getNext(v13, v16, v17, v18);

        begin = self->_cursorCellIDs.__begin_;
      }

      v19 = begin[v10];
      if (v6.column < v19.column && v6.row == v19.row)
      {
        v21 = v6;
      }

      else
      {
        v21 = v19;
      }

      if (v6.row >= v19.row)
      {
        v6 = v21;
      }

      ++v10;
    }

    while (v10 < objc_msgSend_count(self->_iterators, v7, v8, v9));
  }

  self->_minCursorCellID = v6;
  return v6;
}

- (void)terminate
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_iterators;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v10, v14, 16);
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_terminate(*(*(&v10 + 1) + 8 * v9++), v4, v5, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v10, v14, 16);
    }

    while (v7);
  }
}

- (vector<TSUCellCoord,)cursorCellIDs
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_2211230D4(retstr, self->_cursorCellIDs.__begin_, self->_cursorCellIDs.__end_, self->_cursorCellIDs.__end_ - self->_cursorCellIDs.__begin_);
}

- (void)setCursorCellIDs:()vector<TSUCellCoord
{
  p_cursorCellIDs = &self->_cursorCellIDs;
  if (p_cursorCellIDs != a3)
  {
    sub_22128026C(p_cursorCellIDs, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end