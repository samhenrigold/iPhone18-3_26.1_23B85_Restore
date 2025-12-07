@interface TSTCellList
- (TSTCellList)initWithContext:(id)context;
- (id).cxx_construct;
- (id)addCell:(id)cell;
- (id)cellAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lastCell;
- (id)shallowAddCell:(id)cell;
- (void)addPrecopiedCell:(id)cell;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)replaceCell:(id)cell atIndex:(unint64_t)index;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTCellList

- (TSTCellList)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSTCellList;
  result = [(TSTCellList *)&v4 initWithContext:context];
  if (result)
  {
    result->_trailingEmptyCellCount = 0;
  }

  return result;
}

- (void)addPrecopiedCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy)
  {
    if (self->_cells.var0 == self->_cells.__begin_)
    {
      sub_22116A0A0(&self->_cells.__begin_, 0x9C4uLL);
    }

    if (self->_trailingEmptyCellCount)
    {
      do
      {
        v5 = 0;
        sub_22127F618(&self->_cells.__begin_, &v5);

        v4 = self->_trailingEmptyCellCount - 1;
        self->_trailingEmptyCellCount = v4;
      }

      while (v4);
    }

    sub_22116A130(&self->_cells.__begin_, &cellCopy);
  }

  else
  {
    ++self->_trailingEmptyCellCount;
  }
}

- (id)addCell:(id)cell
{
  cellCopy = cell;
  objc_msgSend_willModify(self, v5, v6, v7);
  v11 = objc_msgSend_copy(cellCopy, v8, v9, v10);
  objc_msgSend_addPrecopiedCell_(self, v12, v11, v13);

  return v11;
}

- (id)shallowAddCell:(id)cell
{
  cellCopy = cell;
  objc_msgSend_willModify(self, v5, v6, v7);
  objc_msgSend_addPrecopiedCell_(self, v8, cellCopy, v9);

  return cellCopy;
}

- (id)cellAtIndex:(unint64_t)index
{
  p_cells = &self->_cells;
  begin = self->_cells.__begin_;
  v7 = self->_cells.var0 - begin;
  if (self->_trailingEmptyCellCount + (v7 >> 3) <= index)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellList cellAtIndex:]", v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v11);
    v13 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v12, 1259, 0, "Out of range in  %@", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    begin = p_cells->__begin_;
    v7 = p_cells->var0 - p_cells->__begin_;
  }

  if (v7 >> 3 <= index)
  {
    v18 = 0;
  }

  else
  {
    v18 = begin[index];
  }

  return v18;
}

- (void)replaceCell:(id)cell atIndex:(unint64_t)index
{
  cellCopy = cell;
  objc_msgSend_willModify(self, v8, v9, v10);
  p_cells = &self->_cells;
  begin = self->_cells.__begin_;
  v15 = self->_cells.var0 - begin;
  if (v15 > index)
  {
    goto LABEL_9;
  }

  trailingEmptyCellCount = self->_trailingEmptyCellCount;
  if (trailingEmptyCellCount + v15 <= index)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCellList replaceCell:atIndex:]", v12);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 1276, 0, "Asking to replace where we currently have no cell at all - invalid replaceCell: call");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    trailingEmptyCellCount = self->_trailingEmptyCellCount;
  }

  if (trailingEmptyCellCount)
  {
    do
    {
      v37 = 0;
      sub_22127F618(&self->_cells.__begin_, &v37);

      v26 = self->_trailingEmptyCellCount - 1;
      self->_trailingEmptyCellCount = v26;
    }

    while (v26);
  }

  begin = p_cells->__begin_;
  v27 = self->_cells.var0 - self->_cells.__begin_;
  if (v27 <= index)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCellList replaceCell:atIndex:]", v12);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 1283, 0, "Should now fit in real range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
    begin = p_cells->__begin_;
    v27 = p_cells->var0 - p_cells->__begin_;
  }

  if (v27 > index)
  {
LABEL_9:
    objc_storeStrong(&begin[index], cell);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_context(self, v9, v10, v11);
  v15 = objc_msgSend_initWithContext_(v8, v13, v12, v14);

  sub_22116A0A0(v15 + 8, self->_cells.var0 - self->_cells.__begin_);
  begin = self->_cells.__begin_;
  var0 = self->_cells.var0;
  while (begin != var0)
  {
    v18 = *begin;
    v23 = objc_msgSend_copy(v18, v19, v20, v21);
    sub_22127F618(v15 + 8, &v23);

    ++begin;
  }

  v15[11] = self->_trailingEmptyCellCount;
  return v15;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[108], v6);

  v11 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v8, v9, v10);
  sub_22116A0A0(&self->_cells.__begin_, *(v7 + 32));
  v14 = *(v7 + 40);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v7 + 32);
  if (v16)
  {
    v17 = 8 * v16;
    do
    {
      TST::CellListArchive_OptionalCell::CellListArchive_OptionalCell(v29, *v15);
      if (v29[16])
      {
        v21 = [TSTCell alloc];
        v24 = objc_msgSend_initWithLocale_(v21, v22, v11, v23);
        if (v30)
        {
          v25 = v30;
        }

        else
        {
          v25 = &TST::_Cell_default_instance_;
        }

        v20 = v24;
        sub_221123AF0(v25, v24, unarchiverCopy);
        objc_msgSend_addPrecopiedCell_(self, v26, v20, v27);
      }

      else
      {
        v20 = 0;
        objc_msgSend_addPrecopiedCell_(self, v18, 0, v19);
      }

      TST::CellListArchive_OptionalCell::~CellListArchive_OptionalCell(v29);
      ++v15;
      v17 -= 8;
    }

    while (v17);
  }

  if (*(v7 + 16))
  {
    self->_trailingEmptyCellCount += *(v7 + 48);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22127FEA0;
  v28[3] = &unk_27845E3F8;
  v28[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v12, v28, v13);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221280B44, off_2812E4498[108]);

  begin = self->_cells.__begin_;
  var0 = self->_cells.var0;
  while (begin != var0)
  {
    v8 = *begin;
    v9 = v8;
    v10 = *(v5 + 40);
    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = *(v5 + 32);
    v12 = *v10;
    if (v11 < *v10)
    {
      *(v5 + 32) = v11 + 1;
      v13 = *&v10[2 * v11 + 2];
      if (!v8)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v12 == *(v5 + 36))
    {
LABEL_9:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
      v10 = *(v5 + 40);
      v12 = *v10;
    }

    *v10 = v12 + 1;
    v13 = google::protobuf::Arena::CreateMaybeMessage<TST::CellListArchive_OptionalCell>(*(v5 + 24));
    v14 = *(v5 + 32);
    v15 = *(v5 + 40) + 8 * v14;
    *(v5 + 32) = v14 + 1;
    *(v15 + 8) = v13;
    if (!v9)
    {
      goto LABEL_16;
    }

LABEL_11:
    *(v13 + 16) |= 1u;
    v16 = *(v13 + 24);
    if (!v16)
    {
      v17 = *(v13 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v17);
      *(v13 + 24) = v16;
    }

    sub_2211243E4(v9, v16, archiverCopy);
LABEL_16:

    ++begin;
  }

  trailingEmptyCellCount = self->_trailingEmptyCellCount;
  if (trailingEmptyCellCount)
  {
    *(v5 + 16) |= 1u;
    *(v5 + 48) = trailingEmptyCellCount;
  }
}

- (id)lastCell
{
  var0 = self->_cells.var0;
  if (self->_cells.__begin_ == var0 || self->_trailingEmptyCellCount)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(var0 - 1);
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  return self;
}

@end