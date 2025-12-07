@interface TSCECoordMapper
- (RefTypeHolder<TSCECellRef,)baseCellRefForChromeCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCECellRef,)chromeCellRefForBaseCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCERangeRef,)chromeRangeRefForViewRangeRef:()RefTypeHolder<TSCERangeRef;
- (RefTypeHolder<TSCERangeRef,)viewRangeRefForChromeRangeRef:()RefTypeHolder<TSCERangeRef;
- (TSCECoordMapper)initWithTableUID:(const TSKUIDStruct *)d;
- (TSCECoordMapper)initWithTableUID:(const TSKUIDStruct *)d summaryColumns:(id)columns summaryRows:(id)rows labelRows:(id)labelRows;
- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)coord;
- (TSUChromeCellCoord)chromeCellCoordForViewCellCoord:(TSUViewCellCoord)coord;
- (TSUChromeColumnIndex)chromeColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)index;
- (TSUChromeColumnIndex)chromeColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index;
- (TSUChromeRowIndex)chromeRowIndexForBaseRowIndex:(TSUModelRowIndex)index;
- (TSUChromeRowIndex)chromeRowIndexForViewRowIndex:(TSUViewRowIndex)index;
- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord;
- (TSUModelCellCoord)baseCellCoordForViewCellCoord:(TSUViewCellCoord)coord;
- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)coord;
- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index;
- (TSUModelColumnIndex)baseColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index;
- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index;
- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)index;
- (TSUModelRowIndex)baseRowIndexForViewRowIndex:(TSUViewRowIndex)index;
- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)index;
- (TSUViewCellCoord)viewCellCoordForBaseCellCoord:(TSUModelCellCoord)coord;
- (TSUViewCellCoord)viewCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord;
- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)coord;
- (TSUViewColumnIndex)viewColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)index;
- (TSUViewColumnIndex)viewColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index;
- (TSUViewColumnIndex)viewColumnIndexForSummaryColumnIndex:(TSUModelColumnIndex)index;
- (TSUViewRowIndex)viewRowIndexForBaseRowIndex:(TSUModelRowIndex)index;
- (TSUViewRowIndex)viewRowIndexForChromeRowIndex:(TSUChromeRowIndex)index;
- (TSUViewRowIndex)viewRowIndexForSummaryRowIndex:(TSUModelRowIndex)index;
- (id).cxx_construct;
- (id)baseColumnIndexesForChromeColumnIndexes:(id)indexes;
- (id)baseColumnIndexesForViewColumnIndexes:(id)indexes;
- (id)baseRowIndexesForChromeRowIndexes:(id)indexes;
- (id)baseRowIndexesForViewRowIndexes:(id)indexes;
- (id)baseShuffleMapForViewShuffleMap:(id)map;
- (id)baseTractRefForChromeTractRef:(id)ref;
- (id)baseTractRefForViewTractRef:(id)ref;
- (id)chromeColumnIndexesForViewColumnIndexes:(id)indexes;
- (id)chromeRowIndexesForViewRowIndexes:(id)indexes;
- (id)chromeTractRefForBaseTractRef:(id)ref;
- (id)chromeTractRefForViewTractRef:(id)ref;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromArchive:(const void *)archive;
- (id)viewColumnIndexesForBaseColumnIndexes:(id)indexes;
- (id)viewColumnIndexesForChromeColumnIndexes:(id)indexes;
- (id)viewRowIndexesForBaseRowIndexes:(id)indexes;
- (id)viewRowIndexesForChromeRowIndexes:(id)indexes;
- (id)viewTractRefForBaseTractRef:(id)ref;
- (id)viewTractRefForChromeTractRef:(id)ref;
- (void)encodeToArchive:(void *)archive;
- (void)mapBaseColumn:(unsigned __int16)column toViewColumn:(unsigned __int16)viewColumn;
- (void)mapBaseRow:(unsigned int)row toViewRow:(unsigned int)viewRow;
- (void)mapSummaryColumn:(unsigned __int16)column toViewColumn:(unsigned __int16)viewColumn;
- (void)mapSummaryRow:(unsigned int)row toViewRow:(unsigned int)viewRow;
@end

@implementation TSCECoordMapper

- (TSCECoordMapper)initWithTableUID:(const TSKUIDStruct *)d
{
  v5.receiver = self;
  v5.super_class = TSCECoordMapper;
  result = [(TSCECoordMapper *)&v5 init];
  if (result)
  {
    result->_tableUID = *d;
    result->_isIdentityMapping = 1;
  }

  return result;
}

- (TSCECoordMapper)initWithTableUID:(const TSKUIDStruct *)d summaryColumns:(id)columns summaryRows:(id)rows labelRows:(id)labelRows
{
  columnsCopy = columns;
  rowsCopy = rows;
  labelRowsCopy = labelRows;
  v28.receiver = self;
  v28.super_class = TSCECoordMapper;
  v14 = [(TSCECoordMapper *)&v28 init];
  v15 = v14;
  if (v14)
  {
    v14->_tableUID = *d;
    objc_storeStrong(&v14->_summaryColumnIndexes, columns);
    objc_storeStrong(&v15->_summaryRowIndexes, rows);
    objc_storeStrong(&v15->_labelRowIndexes, labelRows);
    if (objc_msgSend_count(v15->_labelRowIndexes, v16, v17, v18))
    {
      v22 = objc_msgSend_mutableCopy(rowsCopy, v19, v20, v21);
      objc_msgSend_addIndexes_(v22, v23, labelRowsCopy, v24);
      summaryAndLabelRowIndexes = v15->_summaryAndLabelRowIndexes;
      v15->_summaryAndLabelRowIndexes = v22;
    }

    else
    {
      v26 = rowsCopy;
      summaryAndLabelRowIndexes = v15->_summaryAndLabelRowIndexes;
      v15->_summaryAndLabelRowIndexes = v26;
    }
  }

  return v15;
}

- (id)initFromArchive:(const void *)archive
{
  if (*(archive + 15))
  {
    v5 = *(archive + 15);
  }

  else
  {
    v5 = MEMORY[0x277D809E0];
  }

  v27[0] = TSKUIDStruct::loadFromMessage(v5, a2);
  v27[1] = v6;
  if ((*(archive + 16) & 2) == 0)
  {
    return objc_msgSend_initWithTableUID_(self, v6, v27, v7);
  }

  sub_22126A778(*(archive + 16), &v26);
  TSUIndexSet::TSUIndexSet(&v25);
  v9 = *(archive + 4);
  if ((v9 & 8) != 0)
  {
    sub_22126A778(*(archive + 18), &v24);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v24);
    v9 = *(archive + 4);
  }

  if ((v9 & 4) != 0)
  {
    sub_22126A778(*(archive + 17), &v24);
    v10 = TSUIndexSet::asNSIndexSet(&v24);
    TSUIndexSet::~TSUIndexSet(&v24);
  }

  else
  {
    v10 = 0;
  }

  v11 = TSUIndexSet::asNSIndexSet(&v26);
  v12 = TSUIndexSet::asNSIndexSet(&v25);
  v8 = objc_msgSend_initWithTableUID_summaryColumns_summaryRows_labelRows_(self, v13, v27, v10, v11, v12);

  if (v8)
  {
    v15 = *(archive + 8);
    if (v15 >= 1)
    {
      v16 = 8;
      do
      {
        objc_msgSend_mapBaseRow_toViewRow_(v8, v14, *(*(*(archive + 5) + v16) + 24), *(*(*(archive + 5) + v16) + 28));
        v16 += 8;
        --v15;
      }

      while (v15);
    }

    v17 = *(archive + 20);
    if (v17 >= 1)
    {
      v18 = 8;
      do
      {
        objc_msgSend_mapSummaryRow_toViewRow_(v8, v14, *(*(*(archive + 11) + v18) + 24), *(*(*(archive + 11) + v18) + 28));
        v18 += 8;
        --v17;
      }

      while (v17);
    }

    if (v10)
    {
      v19 = *(archive + 14);
      if (v19 >= 1)
      {
        v20 = 8;
        do
        {
          objc_msgSend_mapBaseColumn_toViewColumn_(v8, v14, *(*(*(archive + 8) + v20) + 24), *(*(*(archive + 8) + v20) + 28));
          v20 += 8;
          --v19;
        }

        while (v19);
      }

      v21 = *(archive + 26);
      if (v21 >= 1)
      {
        v22 = 8;
        do
        {
          objc_msgSend_mapSummaryColumn_toViewColumn_(v8, v14, *(*(*(archive + 14) + v22) + 24), *(*(*(archive + 14) + v22) + 28));
          v22 += 8;
          --v21;
        }

        while (v21);
      }
    }
  }

  TSUIndexSet::~TSUIndexSet(&v25);
  TSUIndexSet::~TSUIndexSet(&v26);
  return v8;
}

- (void)encodeToArchive:(void *)archive
{
  *(archive + 4) |= 1u;
  v5 = *(archive + 15);
  if (!v5)
  {
    v6 = *(archive + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = MEMORY[0x223DA0360](v6);
    *(archive + 15) = v5;
  }

  TSKUIDStruct::saveToMessage(&self->_tableUID, v5);
  if ((objc_msgSend_isIdentityMapping(self, v7, v8, v9) & 1) == 0)
  {
    MEMORY[0x223D9F7A0](&v58, self->_summaryRowIndexes);
    *(archive + 4) |= 2u;
    v10 = *(archive + 16);
    if (!v10)
    {
      v11 = *(archive + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v11);
      *(archive + 16) = v10;
    }

    sub_22126A644(&v58, v10);
    if (objc_msgSend_count(self->_labelRowIndexes, v12, v13, v14))
    {
      MEMORY[0x223D9F7A0](&v57, self->_labelRowIndexes);
      *(archive + 4) |= 8u;
      v15 = *(archive + 18);
      if (!v15)
      {
        v16 = *(archive + 1);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v16);
        *(archive + 18) = v15;
      }

      sub_22126A644(&v57, v15);
      TSUIndexSet::~TSUIndexSet(&v57);
    }

    next = self->_baseRowToViewRow.__table_.__first_node_.__next_;
    if (next)
    {
      while (1)
      {
        v18 = *(archive + 5);
        if (!v18)
        {
          goto LABEL_22;
        }

        v19 = *(archive + 8);
        v20 = *v18;
        if (v19 >= *v18)
        {
          break;
        }

        *(archive + 8) = v19 + 1;
        v21 = *&v18[2 * v19 + 2];
LABEL_24:
        v24 = next[4];
        v25 = v21[4];
        v21[4] = v25 | 1;
        v21[6] = v24;
        v26 = next[5];
        v21[4] = v25 | 3;
        v21[7] = v26;
        next = *next;
        if (!next)
        {
          goto LABEL_25;
        }
      }

      if (v20 == *(archive + 9))
      {
LABEL_22:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
        v18 = *(archive + 5);
        v20 = *v18;
      }

      *v18 = v20 + 1;
      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_BaseToViewEntry>(*(archive + 3));
      v22 = *(archive + 8);
      v23 = *(archive + 5) + 8 * v22;
      *(archive + 8) = v22 + 1;
      *(v23 + 8) = v21;
      goto LABEL_24;
    }

LABEL_25:
    v27 = self->_summaryRowToViewRow.__table_.__first_node_.__next_;
    if (v27)
    {
      while (1)
      {
        v28 = *(archive + 11);
        if (!v28)
        {
          goto LABEL_31;
        }

        v29 = *(archive + 20);
        v30 = *v28;
        if (v29 >= *v28)
        {
          break;
        }

        *(archive + 20) = v29 + 1;
        v31 = *&v28[2 * v29 + 2];
LABEL_33:
        v34 = v27[4];
        v35 = v31[4];
        v31[4] = v35 | 1;
        v31[6] = v34;
        v36 = v27[5];
        v31[4] = v35 | 3;
        v31[7] = v36;
        v27 = *v27;
        if (!v27)
        {
          goto LABEL_34;
        }
      }

      if (v30 == *(archive + 21))
      {
LABEL_31:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 72));
        v28 = *(archive + 11);
        v30 = *v28;
      }

      *v28 = v30 + 1;
      v31 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_SummaryToViewEntry>(*(archive + 9));
      v32 = *(archive + 20);
      v33 = *(archive + 11) + 8 * v32;
      *(archive + 20) = v32 + 1;
      *(v33 + 8) = v31;
      goto LABEL_33;
    }

LABEL_34:
    if (self->_summaryColumnIndexes)
    {
      MEMORY[0x223D9F7A0](&v57);
      *(archive + 4) |= 4u;
      v37 = *(archive + 17);
      if (!v37)
      {
        v38 = *(archive + 1);
        if (v38)
        {
          v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
        }

        v37 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v38);
        *(archive + 17) = v37;
      }

      sub_22126A644(&v57, v37);
      v39 = self->_baseColumnToViewColumn.__table_.__first_node_.__next_;
      if (v39)
      {
        while (1)
        {
          v40 = *(archive + 8);
          if (!v40)
          {
            goto LABEL_45;
          }

          v41 = *(archive + 14);
          v42 = *v40;
          if (v41 >= *v40)
          {
            break;
          }

          *(archive + 14) = v41 + 1;
          v43 = *&v40[2 * v41 + 2];
LABEL_47:
          v46 = v43[4];
          v43[6] = *(v39 + 8);
          v47 = *(v39 + 9);
          v43[4] = v46 | 3;
          v43[7] = v47;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_48;
          }
        }

        if (v42 == *(archive + 15))
        {
LABEL_45:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 48));
          v40 = *(archive + 8);
          v42 = *v40;
        }

        *v40 = v42 + 1;
        v43 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_BaseToViewEntry>(*(archive + 6));
        v44 = *(archive + 14);
        v45 = *(archive + 8) + 8 * v44;
        *(archive + 14) = v44 + 1;
        *(v45 + 8) = v43;
        goto LABEL_47;
      }

LABEL_48:
      v48 = self->_summaryColumnToViewColumn.__table_.__first_node_.__next_;
      if (v48)
      {
        while (1)
        {
          v49 = *(archive + 14);
          if (!v49)
          {
            goto LABEL_54;
          }

          v50 = *(archive + 26);
          v51 = *v49;
          if (v50 >= *v49)
          {
            break;
          }

          *(archive + 26) = v50 + 1;
          v52 = *&v49[2 * v50 + 2];
LABEL_56:
          v55 = v52[4];
          v52[6] = *(v48 + 8);
          v56 = *(v48 + 9);
          v52[4] = v55 | 3;
          v52[7] = v56;
          v48 = *v48;
          if (!v48)
          {
            goto LABEL_57;
          }
        }

        if (v51 == *(archive + 27))
        {
LABEL_54:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 96));
          v49 = *(archive + 14);
          v51 = *v49;
        }

        *v49 = v51 + 1;
        v52 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_SummaryToViewEntry>(*(archive + 12));
        v53 = *(archive + 26);
        v54 = *(archive + 14) + 8 * v53;
        *(archive + 26) = v53 + 1;
        *(v54 + 8) = v52;
        goto LABEL_56;
      }

LABEL_57:
      TSUIndexSet::~TSUIndexSet(&v57);
    }

    TSUIndexSet::~TSUIndexSet(&v58);
  }
}

- (void)mapBaseRow:(unsigned int)row toViewRow:(unsigned int)viewRow
{
  viewRowCopy = viewRow;
  rowCopy = row;
  if (row != 0x7FFFFFFF)
  {
    v8 = &rowCopy;
    *(sub_2211DB9B8(&self->_baseRowToViewRow.__table_.__bucket_list_.__ptr_, &rowCopy, &unk_2217E081E, &v8) + 5) = viewRow;
    v5 = rowCopy;
    v8 = &viewRowCopy;
    *(sub_2211DB9B8(&self->_viewRowToBaseRow.__table_.__bucket_list_.__ptr_, &viewRowCopy, &unk_2217E081E, &v8) + 5) = v5;
  }
}

- (void)mapBaseColumn:(unsigned __int16)column toViewColumn:(unsigned __int16)viewColumn
{
  columnCopy = column;
  viewColumnCopy = viewColumn;
  if (column != 0x7FFF)
  {
    v8 = &columnCopy;
    *(sub_2211DBBEC(&self->_baseColumnToViewColumn.__table_.__bucket_list_.__ptr_, &columnCopy, &unk_2217E081E, &v8) + 9) = viewColumn;
    v5 = columnCopy;
    v8 = &viewColumnCopy;
    *(sub_2211DBBEC(&self->_viewColumnToBaseColumn.__table_.__bucket_list_.__ptr_, &viewColumnCopy, &unk_2217E081E, &v8) + 9) = v5;
  }
}

- (void)mapSummaryRow:(unsigned int)row toViewRow:(unsigned int)viewRow
{
  viewRowCopy = viewRow;
  rowCopy = row;
  if (row != 0x7FFFFFFF)
  {
    v8 = &rowCopy;
    *(sub_2211DB9B8(&self->_summaryRowToViewRow.__table_.__bucket_list_.__ptr_, &rowCopy, &unk_2217E081E, &v8) + 5) = viewRow;
    v5 = rowCopy;
    v8 = &viewRowCopy;
    *(sub_2211DB9B8(&self->_viewRowToSummaryRow.__table_.__bucket_list_.__ptr_, &viewRowCopy, &unk_2217E081E, &v8) + 5) = v5;
  }
}

- (void)mapSummaryColumn:(unsigned __int16)column toViewColumn:(unsigned __int16)viewColumn
{
  columnCopy = column;
  viewColumnCopy = viewColumn;
  if (column != 0x7FFF)
  {
    v8 = &columnCopy;
    *(sub_2211DBBEC(&self->_summaryColumnToViewColumn.__table_.__bucket_list_.__ptr_, &columnCopy, &unk_2217E081E, &v8) + 9) = viewColumn;
    v5 = columnCopy;
    v8 = &viewColumnCopy;
    *(sub_2211DBBEC(&self->_viewColumnToSummaryColumn.__table_.__bucket_list_.__ptr_, &viewColumnCopy, &unk_2217E081E, &v8) + 9) = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v4->_isIdentityMapping = self->_isIdentityMapping;
  v4->_chromeCoordsAreViewCoords = self->_chromeCoordsAreViewCoords;
  objc_storeStrong(&v4->_summaryRowIndexes, self->_summaryRowIndexes);
  objc_storeStrong(&v4->_labelRowIndexes, self->_labelRowIndexes);
  objc_storeStrong(&v4->_summaryAndLabelRowIndexes, self->_summaryAndLabelRowIndexes);
  objc_storeStrong(&v4->_summaryColumnIndexes, self->_summaryColumnIndexes);
  if (v4 != self)
  {
    v4->_baseRowToViewRow.__table_.__max_load_factor_ = self->_baseRowToViewRow.__table_.__max_load_factor_;
    sub_2211DBE28(&v4->_baseRowToViewRow.__table_.__bucket_list_.__ptr_, self->_baseRowToViewRow.__table_.__first_node_.__next_, 0);
    v4->_viewRowToBaseRow.__table_.__max_load_factor_ = self->_viewRowToBaseRow.__table_.__max_load_factor_;
    sub_2211DBE28(&v4->_viewRowToBaseRow.__table_.__bucket_list_.__ptr_, self->_viewRowToBaseRow.__table_.__first_node_.__next_, 0);
    v4->_baseColumnToViewColumn.__table_.__max_load_factor_ = self->_baseColumnToViewColumn.__table_.__max_load_factor_;
    sub_2211DBFC8(&v4->_baseColumnToViewColumn.__table_.__bucket_list_.__ptr_, self->_baseColumnToViewColumn.__table_.__first_node_.__next_, 0);
    v4->_viewColumnToBaseColumn.__table_.__max_load_factor_ = self->_viewColumnToBaseColumn.__table_.__max_load_factor_;
    sub_2211DBFC8(&v4->_viewColumnToBaseColumn.__table_.__bucket_list_.__ptr_, self->_viewColumnToBaseColumn.__table_.__first_node_.__next_, 0);
    v4->_summaryRowToViewRow.__table_.__max_load_factor_ = self->_summaryRowToViewRow.__table_.__max_load_factor_;
    sub_2211DBE28(&v4->_summaryRowToViewRow.__table_.__bucket_list_.__ptr_, self->_summaryRowToViewRow.__table_.__first_node_.__next_, 0);
    v4->_viewRowToSummaryRow.__table_.__max_load_factor_ = self->_viewRowToSummaryRow.__table_.__max_load_factor_;
    sub_2211DBE28(&v4->_viewRowToSummaryRow.__table_.__bucket_list_.__ptr_, self->_viewRowToSummaryRow.__table_.__first_node_.__next_, 0);
    v4->_summaryColumnToViewColumn.__table_.__max_load_factor_ = self->_summaryColumnToViewColumn.__table_.__max_load_factor_;
    sub_2211DBFC8(&v4->_summaryColumnToViewColumn.__table_.__bucket_list_.__ptr_, self->_summaryColumnToViewColumn.__table_.__first_node_.__next_, 0);
    v4->_viewColumnToSummaryColumn.__table_.__max_load_factor_ = self->_viewColumnToSummaryColumn.__table_.__max_load_factor_;
    sub_2211DBFC8(&v4->_viewColumnToSummaryColumn.__table_.__bucket_list_.__ptr_, self->_viewColumnToSummaryColumn.__table_.__first_node_.__next_, 0);
  }

  return v4;
}

- (TSUModelColumnIndex)baseColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index
{
  v5._column = 0x7FFF;
  if (index.var0 != 0x7FFF)
  {
    v9 = v3;
    v10 = v4;
    var0 = index.var0;
    if (!self->_isIdentityMapping)
    {
      if (self->_summaryColumnIndexes)
      {
        v6 = sub_2210C3024(&self->_viewColumnToBaseColumn.__table_.__bucket_list_.__ptr_, &var0);
        if (!v6)
        {
          return 0x7FFF;
        }

        return *(v6 + 18);
      }

      else if (index.var0)
      {
        --index.var0;
      }

      else
      {
        return 0x7FFF;
      }
    }

    return index.var0;
  }

  return v5;
}

- (TSUModelRowIndex)baseRowIndexForViewRowIndex:(TSUViewRowIndex)index
{
  v5._row = 0x7FFFFFFF;
  if (index.var0 != 0x7FFFFFFF)
  {
    v9 = v3;
    v10 = v4;
    var0 = index.var0;
    if (!self->_isIdentityMapping)
    {
      v6 = sub_2211DC534(&self->_viewRowToBaseRow.__table_.__bucket_list_.__ptr_, &var0);
      if (!v6)
      {
        return 0x7FFFFFFF;
      }

      return *(v6 + 20);
    }

    return index.var0;
  }

  return v5;
}

- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index
{
  if (self->_summaryColumnIndexes)
  {
    v6 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(self, a2, index.var0, v3);

    return objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v5, v6, v7);
  }

  else
  {
    return index.var0;
  }
}

- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)index
{
  v6 = objc_msgSend_viewRowIndexForChromeRowIndex_(self, a2, index.var0, v3);

  return objc_msgSend_baseRowIndexForViewRowIndex_(self, v5, v6, v7);
}

- (TSUChromeColumnIndex)chromeColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)index
{
  if (self->_summaryColumnIndexes)
  {
    v6 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(self, a2, index._column, v3);

    return objc_msgSend_chromeColumnIndexForViewColumnIndex_(self, v5, v6, v7);
  }

  else
  {
    return index._column;
  }
}

- (TSUChromeRowIndex)chromeRowIndexForBaseRowIndex:(TSUModelRowIndex)index
{
  v6 = objc_msgSend_viewRowIndexForBaseRowIndex_(self, a2, index._row, v3);

  return objc_msgSend_chromeRowIndexForViewRowIndex_(self, v5, v6, v7);
}

- (TSUViewColumnIndex)viewColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)index
{
  v5.var0 = 0x7FFF;
  if (index._column != 0x7FFF)
  {
    v9 = v3;
    v10 = v4;
    column = index._column;
    if (!self->_isIdentityMapping)
    {
      if (self->_summaryColumnIndexes)
      {
        v6 = sub_2210C3024(&self->_baseColumnToViewColumn.__table_.__bucket_list_.__ptr_, &column);
        if (v6)
        {
          return *(v6 + 18);
        }

        else
        {
          return column;
        }
      }

      else
      {
        ++index._column;
      }
    }

    return index._column;
  }

  return v5;
}

- (TSUViewRowIndex)viewRowIndexForBaseRowIndex:(TSUModelRowIndex)index
{
  v5.var0 = 0x7FFFFFFF;
  if (index._row != 0x7FFFFFFF)
  {
    v9 = v3;
    v10 = v4;
    row = index._row;
    if (!self->_isIdentityMapping)
    {
      v6 = sub_2211DC534(&self->_baseRowToViewRow.__table_.__bucket_list_.__ptr_, &row);
      if (v6)
      {
        return *(v6 + 20);
      }

      else
      {
        return 0x7FFFFFFF;
      }
    }

    return index._row;
  }

  return v5;
}

- (TSUChromeColumnIndex)chromeColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index
{
  v4 = *&index.var0;
  summaryColumnIndexes = self->_summaryColumnIndexes;
  if (summaryColumnIndexes)
  {
    LOWORD(v7) = 0x7FFF;
    if (index.var0 != 0x7FFF)
    {
      if (self->_chromeCoordsAreViewCoords)
      {
        LOWORD(v7) = index;
      }

      else if (objc_msgSend_containsIndex_(summaryColumnIndexes, a2, index.var0, v3))
      {
        LOWORD(v7) = 0x7FFF;
      }

      else
      {
        return (v4 - objc_msgSend_countOfIndexesInRange_(self->_summaryColumnIndexes, v9, 0, v4));
      }
    }

    return v7;
  }

  else
  {

    return objc_msgSend_baseColumnIndexForViewColumnIndex_(self, a2, index.var0, v3);
  }
}

- (TSUChromeRowIndex)chromeRowIndexForViewRowIndex:(TSUViewRowIndex)index
{
  v6.var0 = 0x7FFFFFFF;
  if (index.var0 != 0x7FFFFFFF)
  {
    if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
    {
      return index.var0;
    }

    else if (objc_msgSend_containsIndex_(self->_summaryAndLabelRowIndexes, a2, index.var0, v3))
    {
      return 0x7FFFFFFF;
    }

    else
    {
      return (index.var0 - objc_msgSend_countOfIndexesInRange_(self->_summaryAndLabelRowIndexes, v7, 0, index.var0));
    }
  }

  return v6;
}

- (TSUViewColumnIndex)viewColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index
{
  summaryColumnIndexes = self->_summaryColumnIndexes;
  if (summaryColumnIndexes)
  {
    v6.var0 = 0x7FFF;
    if (index.var0 != 0x7FFF)
    {
      if (self->_chromeCoordsAreViewCoords)
      {
        return index.var0;
      }

      else
      {
        v13 = 0;
        v14 = &v13;
        v15 = 0x2020000000;
        var0 = index.var0;
        v9 = 0;
        v10 = &v9;
        v11 = 0x2020000000;
        v12 = 0;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = sub_2211D8A48;
        v8[3] = &unk_278460FA8;
        v8[4] = &v9;
        v8[5] = &v13;
        objc_msgSend_enumerateRangesUsingBlock_(summaryColumnIndexes, a2, v8, v3);
        v6.var0 = v10[12].var0 + *(v14 + 12);
        v10[12].var0 = v6.var0;
        _Block_object_dispose(&v9, 8);
        _Block_object_dispose(&v13, 8);
      }
    }

    return v6;
  }

  else
  {

    return objc_msgSend_viewColumnIndexForBaseColumnIndex_(self, a2, index.var0, v3);
  }
}

- (TSUViewRowIndex)viewRowIndexForChromeRowIndex:(TSUChromeRowIndex)index
{
  v4 = 0x7FFFFFFF;
  if (index.var0 != 0x7FFFFFFF)
  {
    if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
    {
      return index.var0;
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      var0 = index.var0;
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v11 = 0;
      summaryAndLabelRowIndexes = self->_summaryAndLabelRowIndexes;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = sub_2211D8BC8;
      v7[3] = &unk_278460FA8;
      v7[4] = &v8;
      v7[5] = &v12;
      objc_msgSend_enumerateRangesUsingBlock_(summaryAndLabelRowIndexes, a2, v7, v3);
      v4 = *(v9 + 6) + *(v13 + 6);
      *(v9 + 6) = v4;
      _Block_object_dispose(&v8, 8);
      _Block_object_dispose(&v12, 8);
    }
  }

  return v4;
}

- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index
{
  v6._column = 0x7FFF;
  if (index.var0 != 0x7FFF && !self->_isIdentityMapping)
  {
    v9 = v3;
    v10 = v4;
    var0 = index.var0;
    v7 = sub_2210C3024(&self->_viewColumnToSummaryColumn.__table_.__bucket_list_.__ptr_, &var0);
    if (v7)
    {
      return *(v7 + 9);
    }

    else
    {
      return 0x7FFF;
    }
  }

  return v6;
}

- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)index
{
  v6._row = 0x7FFFFFFF;
  if (index.var0 != 0x7FFFFFFF && !self->_isIdentityMapping)
  {
    v9 = v3;
    v10 = v4;
    var0 = index.var0;
    v7 = sub_2211DC534(&self->_viewRowToSummaryRow.__table_.__bucket_list_.__ptr_, &var0);
    if (v7)
    {
      return *(v7 + 5);
    }

    else
    {
      return 0x7FFFFFFF;
    }
  }

  return v6;
}

- (TSUViewColumnIndex)viewColumnIndexForSummaryColumnIndex:(TSUModelColumnIndex)index
{
  v6.var0 = 0x7FFF;
  if (index._column != 0x7FFF && !self->_isIdentityMapping)
  {
    v9 = v3;
    v10 = v4;
    column = index._column;
    v7 = sub_2210C3024(&self->_summaryColumnToViewColumn.__table_.__bucket_list_.__ptr_, &column);
    if (v7)
    {
      return *(v7 + 9);
    }

    else
    {
      return 0x7FFF;
    }
  }

  return v6;
}

- (TSUViewRowIndex)viewRowIndexForSummaryRowIndex:(TSUModelRowIndex)index
{
  v6.var0 = 0x7FFFFFFF;
  if (index._row != 0x7FFFFFFF && !self->_isIdentityMapping)
  {
    v9 = v3;
    v10 = v4;
    row = index._row;
    v7 = sub_2211DC534(&self->_summaryRowToViewRow.__table_.__bucket_list_.__ptr_, &row);
    if (v7)
    {
      return *(v7 + 5);
    }

    else
    {
      return 0x7FFFFFFF;
    }
  }

  return v6;
}

- (id)baseColumnIndexesForViewColumnIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = indexesCopy;
  if (self->_isIdentityMapping)
  {
    v9 = indexesCopy;
  }

  else if (self->_summaryColumnIndexes)
  {
    v10 = objc_opt_new();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2211D8ED0;
    v19[3] = &unk_27845DE60;
    v19[4] = self;
    v11 = v10;
    v20 = v11;
    objc_msgSend_enumerateIndexesUsingBlock_(v8, v12, v19, v13);
    v14 = v20;
    v9 = v11;
  }

  else
  {
    v9 = objc_msgSend_mutableCopy(indexesCopy, v5, v6, v7);
    objc_msgSend_removeIndex_(v9, v15, 0, v16);
    objc_msgSend_shiftIndexesStartingAtIndex_by_(v9, v17, 1, -1);
  }

  return v9;
}

- (id)baseRowIndexesForViewRowIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = indexesCopy;
  if (self->_isIdentityMapping)
  {
    v6 = indexesCopy;
  }

  else
  {
    v7 = objc_opt_new();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2211D9044;
    v13[3] = &unk_27845DE60;
    v13[4] = self;
    v8 = v7;
    v14 = v8;
    objc_msgSend_enumerateIndexesUsingBlock_(v5, v9, v13, v10);
    v11 = v14;
    v6 = v8;
  }

  return v6;
}

- (id)baseColumnIndexesForChromeColumnIndexes:(id)indexes
{
  v5 = objc_msgSend_viewColumnIndexesForChromeColumnIndexes_(self, a2, indexes, v3);
  v8 = objc_msgSend_baseColumnIndexesForViewColumnIndexes_(self, v6, v5, v7);

  return v8;
}

- (id)baseRowIndexesForChromeRowIndexes:(id)indexes
{
  v5 = objc_msgSend_viewRowIndexesForChromeRowIndexes_(self, a2, indexes, v3);
  v8 = objc_msgSend_baseRowIndexesForViewRowIndexes_(self, v6, v5, v7);

  return v8;
}

- (id)viewColumnIndexesForBaseColumnIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = indexesCopy;
  if (self->_isIdentityMapping)
  {
    v9 = indexesCopy;
  }

  else if (self->_summaryColumnIndexes)
  {
    v10 = objc_opt_new();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2211D92B4;
    v17[3] = &unk_27845DE60;
    v17[4] = self;
    v11 = v10;
    v18 = v11;
    objc_msgSend_enumerateIndexesUsingBlock_(v8, v12, v17, v13);
    v14 = v18;
    v9 = v11;
  }

  else
  {
    v9 = objc_msgSend_mutableCopy(indexesCopy, v5, v6, v7);
    objc_msgSend_shiftIndexesStartingAtIndex_by_(v9, v15, 0, 1);
  }

  return v9;
}

- (id)viewRowIndexesForBaseRowIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = indexesCopy;
  if (self->_isIdentityMapping)
  {
    v6 = indexesCopy;
  }

  else
  {
    v7 = objc_opt_new();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2211D9414;
    v13[3] = &unk_27845DE60;
    v13[4] = self;
    v8 = v7;
    v14 = v8;
    objc_msgSend_enumerateIndexesUsingBlock_(v5, v9, v13, v10);
    v11 = v14;
    v6 = v8;
  }

  return v6;
}

- (id)chromeColumnIndexesForViewColumnIndexes:(id)indexes
{
  indexesCopy = indexes;
  v7 = indexesCopy;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v8 = indexesCopy;
  }

  else if (self->_summaryColumnIndexes)
  {
    v10 = objc_opt_new();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_2211D9610;
    v26[3] = &unk_27845DE60;
    v26[4] = self;
    v11 = v10;
    v27 = v11;
    objc_msgSend_enumerateIndexesUsingBlock_(v7, v12, v26, v13);
    v14 = v27;
    v8 = v11;
  }

  else if (indexesCopy)
  {
    if (objc_msgSend_containsIndex_(indexesCopy, v5, 0, v6))
    {
      v18 = 1;
    }

    else
    {
      v18 = objc_msgSend_containsIndex_(v7, v15, 0x7FFFLL, v17);
    }

    v19 = objc_msgSend_mutableCopy(v7, v15, v16, v17);
    v8 = v19;
    if (v18)
    {
      objc_msgSend_removeIndex_(v19, v20, 0, v21);
      objc_msgSend_removeIndex_(v8, v22, 0x7FFFLL, v23);
    }

    objc_msgSend_shiftIndexesStartingAtIndex_by_(v8, v20, 0, -1);
    if (v18)
    {
      objc_msgSend_addIndex_(v8, v24, 0x7FFFLL, v25);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)chromeRowIndexesForViewRowIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = indexesCopy;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v6 = indexesCopy;
  }

  else
  {
    v7 = objc_opt_new();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2211D976C;
    v13[3] = &unk_27845DE60;
    v13[4] = self;
    v8 = v7;
    v14 = v8;
    objc_msgSend_enumerateIndexesUsingBlock_(v5, v9, v13, v10);
    v11 = v14;
    v6 = v8;
  }

  return v6;
}

- (id)viewColumnIndexesForChromeColumnIndexes:(id)indexes
{
  indexesCopy = indexes;
  v7 = indexesCopy;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v8 = indexesCopy;
LABEL_4:
    v9 = v8;
    goto LABEL_5;
  }

  if (!self->_summaryColumnIndexes)
  {
    v8 = objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(self, v5, indexesCopy, v6);
    goto LABEL_4;
  }

  v11 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2211D98EC;
  v16[3] = &unk_27845DE60;
  v16[4] = self;
  v12 = v11;
  v17 = v12;
  objc_msgSend_enumerateIndexesUsingBlock_(v7, v13, v16, v14);
  v15 = v17;
  v9 = v12;

LABEL_5:

  return v9;
}

- (id)viewRowIndexesForChromeRowIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = indexesCopy;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v6 = indexesCopy;
  }

  else
  {
    v7 = objc_opt_new();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2211D9A48;
    v13[3] = &unk_27845DE60;
    v13[4] = self;
    v8 = v7;
    v14 = v8;
    objc_msgSend_enumerateIndexesUsingBlock_(v5, v9, v13, v10);
    v11 = v14;
    v6 = v8;
  }

  return v6;
}

- (TSUModelCellCoord)baseCellCoordForViewCellCoord:(TSUViewCellCoord)coord
{
  coordCopy = coord;
  if (self->_isIdentityMapping)
  {
    v5 = *&coord & 0xFF00000000000000;
    v6 = *&coord & 0xFF000000000000;
  }

  else if ((*&coord & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v8 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, a2, coord._coord.column, v3), v11 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v9, coordCopy, v10), (v11 | (v8 << 32)) != 0x7FFF7FFFFFFFLL) && (coordCopy != 0x7FFFFFFFLL ? (v12 = WORD2(coordCopy) == 0x7FFFLL) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v8 == 0x7FFF ? (v14 = v11 == 0x7FFFFFFF) : (v14 = 1), v14 ? (v15 = 0) : (v15 = 1), v13 == v15 && (v8 != 0x7FFF ? (v16 = v11 == 0x7FFFFFFF) : (v16 = 0), v16 ? (v17 = 0) : (v17 = 1), coordCopy == 0x7FFFFFFFLL ? (v18 = WORD2(coordCopy) == 0x7FFFLL) : (v18 = 1), !v18 ? (v19 = 0) : (v19 = 1), v19 == v17)))
  {
    v5 = coordCopy & 0x100000000000000;
    v6 = coordCopy & 0x1000000000000;
    coordCopy = v11 | (v8 << 32);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    coordCopy = 0x7FFF7FFFFFFFLL;
  }

  return (v5 | v6 | coordCopy & 0xFFFFFFFFFFFFLL);
}

- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord
{
  coordCopy = coord;
  if (self->_isIdentityMapping)
  {
    v5 = *&coord & 0xFF00000000000000;
    v6 = *&coord & 0xFF000000000000;
  }

  else if ((*&coord & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v8 = objc_msgSend_baseColumnIndexForChromeColumnIndex_(self, a2, coord._coord.column, v3), v11 = objc_msgSend_baseRowIndexForChromeRowIndex_(self, v9, coordCopy, v10), (v11 | (v8 << 32)) != 0x7FFF7FFFFFFFLL) && (coordCopy != 0x7FFFFFFFLL ? (v12 = WORD2(coordCopy) == 0x7FFFLL) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v8 == 0x7FFF ? (v14 = v11 == 0x7FFFFFFF) : (v14 = 1), v14 ? (v15 = 0) : (v15 = 1), v13 == v15 && (v8 != 0x7FFF ? (v16 = v11 == 0x7FFFFFFF) : (v16 = 0), v16 ? (v17 = 0) : (v17 = 1), coordCopy == 0x7FFFFFFFLL ? (v18 = WORD2(coordCopy) == 0x7FFFLL) : (v18 = 1), !v18 ? (v19 = 0) : (v19 = 1), v19 == v17)))
  {
    v5 = coordCopy & 0x100000000000000;
    v6 = coordCopy & 0x1000000000000;
    coordCopy = v11 | (v8 << 32);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    coordCopy = 0x7FFF7FFFFFFFLL;
  }

  return (v5 | v6 | coordCopy & 0xFFFFFFFFFFFFLL);
}

- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)coord
{
  coordCopy = coord;
  if (self->_isIdentityMapping)
  {
    v5 = *&coord & 0xFF00000000000000;
    v6 = *&coord & 0xFF000000000000;
  }

  else if ((*&coord & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v8 = objc_msgSend_chromeColumnIndexForBaseColumnIndex_(self, a2, coord._coord.column, v3), v11 = objc_msgSend_chromeRowIndexForBaseRowIndex_(self, v9, coordCopy, v10), (v11 | (v8 << 32)) != 0x7FFF7FFFFFFFLL) && (coordCopy != 0x7FFFFFFFLL ? (v12 = WORD2(coordCopy) == 0x7FFFLL) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v8 == 0x7FFF ? (v14 = v11 == 0x7FFFFFFF) : (v14 = 1), v14 ? (v15 = 0) : (v15 = 1), v13 == v15 && (v8 != 0x7FFF ? (v16 = v11 == 0x7FFFFFFF) : (v16 = 0), v16 ? (v17 = 0) : (v17 = 1), coordCopy == 0x7FFFFFFFLL ? (v18 = WORD2(coordCopy) == 0x7FFFLL) : (v18 = 1), !v18 ? (v19 = 0) : (v19 = 1), v19 == v17)))
  {
    v5 = coordCopy & 0x100000000000000;
    v6 = coordCopy & 0x1000000000000;
    coordCopy = v11 | (v8 << 32);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    coordCopy = 0x7FFF7FFFFFFFLL;
  }

  return (v5 | v6 | coordCopy & 0xFFFFFFFFFFFFLL);
}

- (TSUChromeCellCoord)chromeCellCoordForViewCellCoord:(TSUViewCellCoord)coord
{
  coordCopy = coord;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v6 = *&coord & 0xFF00000000000000;
    v7 = *&coord & 0xFF000000000000;
  }

  else if ((*&coord & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v8 = objc_msgSend_chromeColumnIndexForViewColumnIndex_(self, a2, coord._coord.column, v3), v11 = objc_msgSend_chromeRowIndexForViewRowIndex_(self, v9, coordCopy, v10), (v11 | (v8 << 32)) != 0x7FFF7FFFFFFFLL) && (coordCopy != 0x7FFFFFFFLL ? (v12 = WORD2(coordCopy) == 0x7FFFLL) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v8 == 0x7FFF ? (v14 = v11 == 0x7FFFFFFF) : (v14 = 1), v14 ? (v15 = 0) : (v15 = 1), v13 == v15 && (v8 != 0x7FFF ? (v16 = v11 == 0x7FFFFFFF) : (v16 = 0), v16 ? (v17 = 0) : (v17 = 1), coordCopy == 0x7FFFFFFFLL ? (v18 = WORD2(coordCopy) == 0x7FFFLL) : (v18 = 1), !v18 ? (v19 = 0) : (v19 = 1), v19 == v17)))
  {
    v6 = coordCopy & 0x100000000000000;
    v7 = coordCopy & 0x1000000000000;
    coordCopy = v11 | (v8 << 32);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    coordCopy = 0x7FFF7FFFFFFFLL;
  }

  return (v6 | v7 | coordCopy & 0xFFFFFFFFFFFFLL);
}

- (TSUViewCellCoord)viewCellCoordForBaseCellCoord:(TSUModelCellCoord)coord
{
  coordCopy = coord;
  if (self->_isIdentityMapping)
  {
    v5 = *&coord & 0xFF00000000000000;
    v6 = *&coord & 0xFF000000000000;
  }

  else if ((*&coord & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v8 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(self, a2, coord._coord.column, v3), v11 = objc_msgSend_viewRowIndexForBaseRowIndex_(self, v9, coordCopy, v10), (v11 | (v8 << 32)) != 0x7FFF7FFFFFFFLL) && (coordCopy != 0x7FFFFFFFLL ? (v12 = WORD2(coordCopy) == 0x7FFFLL) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v8 == 0x7FFF ? (v14 = v11 == 0x7FFFFFFF) : (v14 = 1), v14 ? (v15 = 0) : (v15 = 1), v13 == v15 && (v8 != 0x7FFF ? (v16 = v11 == 0x7FFFFFFF) : (v16 = 0), v16 ? (v17 = 0) : (v17 = 1), coordCopy == 0x7FFFFFFFLL ? (v18 = WORD2(coordCopy) == 0x7FFFLL) : (v18 = 1), !v18 ? (v19 = 0) : (v19 = 1), v19 == v17)))
  {
    v5 = coordCopy & 0x100000000000000;
    v6 = coordCopy & 0x1000000000000;
    coordCopy = v11 | (v8 << 32);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    coordCopy = 0x7FFF7FFFFFFFLL;
  }

  return (v5 | v6 | coordCopy & 0xFFFFFFFFFFFFLL);
}

- (TSUViewCellCoord)viewCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord
{
  coordCopy = coord;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v6 = *&coord & 0xFF00000000000000;
    v7 = *&coord & 0xFF000000000000;
  }

  else if ((*&coord & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v8 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(self, a2, coord._coord.column, v3), v11 = objc_msgSend_viewRowIndexForChromeRowIndex_(self, v9, coordCopy, v10), (v11 | (v8 << 32)) != 0x7FFF7FFFFFFFLL) && (coordCopy != 0x7FFFFFFFLL ? (v12 = WORD2(coordCopy) == 0x7FFFLL) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v8 == 0x7FFF ? (v14 = v11 == 0x7FFFFFFF) : (v14 = 1), v14 ? (v15 = 0) : (v15 = 1), v13 == v15 && (v8 != 0x7FFF ? (v16 = v11 == 0x7FFFFFFF) : (v16 = 0), v16 ? (v17 = 0) : (v17 = 1), coordCopy == 0x7FFFFFFFLL ? (v18 = WORD2(coordCopy) == 0x7FFFLL) : (v18 = 1), !v18 ? (v19 = 0) : (v19 = 1), v19 == v17)))
  {
    v6 = coordCopy & 0x100000000000000;
    v7 = coordCopy & 0x1000000000000;
    coordCopy = v11 | (v8 << 32);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    coordCopy = 0x7FFF7FFFFFFFLL;
  }

  return (v6 | v7 | coordCopy & 0xFFFFFFFFFFFFLL);
}

- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)coord
{
  v4 = 0x7FFF7FFFFFFFLL;
  if (self->_isIdentityMapping || (*&coord & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v7 = objc_msgSend_summaryColumnIndexForViewColumnIndex_(self, a2, coord._coord.column, v3), v10 = objc_msgSend_summaryRowIndexForViewRowIndex_(self, v8, coord._coord.row, v9), (v10 | (v7 << 32)) == 0x7FFF7FFFFFFFLL) || (coord._coord.row != 0x7FFFFFFFLL ? (v11 = coord._coord.column == 0x7FFFLL) : (v11 = 0), !v11 ? (v12 = 0) : (v12 = 1), v7 == 0x7FFF ? (v13 = v10 == 0x7FFFFFFF) : (v13 = 1), v13 ? (v14 = 0) : (v14 = 1), v12 != v14 || (v7 != 0x7FFF ? (v15 = v10 == 0x7FFFFFFF) : (v15 = 0), v15 ? (v16 = 0) : (v16 = 1), coord._coord.row == 0x7FFFFFFFLL ? (v17 = coord._coord.column == 0x7FFFLL) : (v17 = 1), !v17 ? (v18 = 0) : (v18 = 1), v18 != v16)))
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v20 = *&coord & 0x100000000000000;
    v19 = *&coord & 0x1000000000000;
    v4 = v10 | (v7 << 32);
  }

  return (v20 | v19 | v4);
}

- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)coord
{
  v4 = 0x7FFF7FFFFFFFLL;
  if (self->_isIdentityMapping || (*&coord & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v7 = objc_msgSend_viewColumnIndexForSummaryColumnIndex_(self, a2, coord._coord.column, v3), v10 = objc_msgSend_viewRowIndexForSummaryRowIndex_(self, v8, coord._coord.row, v9), (v10 | (v7 << 32)) == 0x7FFF7FFFFFFFLL) || (coord._coord.row != 0x7FFFFFFFLL ? (v11 = coord._coord.column == 0x7FFFLL) : (v11 = 0), !v11 ? (v12 = 0) : (v12 = 1), v7 == 0x7FFF ? (v13 = v10 == 0x7FFFFFFF) : (v13 = 1), v13 ? (v14 = 0) : (v14 = 1), v12 != v14 || (v7 != 0x7FFF ? (v15 = v10 == 0x7FFFFFFF) : (v15 = 0), v15 ? (v16 = 0) : (v16 = 1), coord._coord.row == 0x7FFFFFFFLL ? (v17 = coord._coord.column == 0x7FFFLL) : (v17 = 1), !v17 ? (v18 = 0) : (v18 = 1), v18 != v16)))
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v20 = *&coord & 0x100000000000000;
    v19 = *&coord & 0x1000000000000;
    v4 = v10 | (v7 << 32);
  }

  return (v20 | v19 | v4);
}

- (RefTypeHolder<TSCECellRef,)baseCellRefForChromeCellRef:()RefTypeHolder<TSCECellRef
{
  if (LOBYTE(self->_ref._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_baseCellCoordForChromeCellCoord_(self, a3, *a4, v4);
    retstr->_ref.coordinate = self;
    retstr->_ref._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:()RefTypeHolder<TSCECellRef
{
  if (LOBYTE(self->_ref._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_baseCellCoordForViewCellCoord_(self, a3, *a4, v4);
    retstr->_ref.coordinate = self;
    retstr->_ref._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCECellRef,)chromeCellRefForBaseCellRef:()RefTypeHolder<TSCECellRef
{
  if (LOBYTE(self->var0._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_chromeCellCoordForBaseCellCoord_(self, a3, *a4, v4);
    retstr->var0.coordinate = self;
    retstr->var0._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:()RefTypeHolder<TSCECellRef
{
  if ((self->var0._tableUID._lower & 1) != 0 || BYTE1(self->var0._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_chromeCellCoordForViewCellCoord_(self, a3, *a4, v4);
    retstr->var0.coordinate = self;
    retstr->var0._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:()RefTypeHolder<TSCECellRef
{
  if (LOBYTE(self->var0._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_viewCellCoordForBaseCellCoord_(self, a3, *a4, v4);
    retstr->var0.coordinate = self;
    retstr->var0._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:()RefTypeHolder<TSCECellRef
{
  if ((self->var0._tableUID._lower & 1) != 0 || BYTE1(self->var0._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_viewCellCoordForChromeCellCoord_(self, a3, *a4, v4);
    retstr->var0.coordinate = self;
    retstr->var0._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCERangeRef,)chromeRangeRefForViewRangeRef:()RefTypeHolder<TSCERangeRef
{
  if ((self->var0.range._bottomRight.row & 1) != 0 || (v7 = self, BYTE1(self->var0.range._bottomRight.row) == 1))
  {
    range = *a4;
    tableUID = *(a4 + 1);
LABEL_4:
    retstr->var0.range = range;
    retstr->var0._tableUID = tableUID;
    return self;
  }

  v25 = objc_msgSend_chromeCellCoordForViewCellCoord_(self, a3, *a4, v4);
  v24 = objc_msgSend_chromeCellCoordForViewCellCoord_(v7, v10, *(a4 + 1), v11);
  self = TSUCellCoord::adjustCoordsToBeTopLeftBottomRight(&v25, &v24, v12);
  if ((*&v25 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (*&v24 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v14 = (*&v25 & 0xFFFF00000000) != 0x7FFF00000000 || v25.row == 0x7FFFFFFFLL;
    v15 = !v14;
    v16 = (*&v24 & 0xFFFF00000000) != 0x7FFF00000000 || v24.row == 0x7FFFFFFFLL;
    v17 = !v16;
    if (v17 == v15)
    {
      v18 = v25.row != 0x7FFFFFFFLL || (*&v25 & 0xFFFF00000000) == 0x7FFF00000000;
      v19 = !v18;
      v20 = v24.row != 0x7FFFFFFFLL || (*&v24 & 0xFFFF00000000) == 0x7FFF00000000;
      v21 = v20;
      if (v21 != v19)
      {
        v23.range._topLeft = v25;
        v23.range._bottomRight = v24;
        v23._tableUID = *(a4 + 1);
        v22._flags = TSCERangeRef::preserveFlags(a4);
        self = TSCERangeRef::setPreserveFlags(&v23, &v22);
        range = v23.range;
        tableUID = v23._tableUID;
        goto LABEL_4;
      }
    }
  }

  retstr->var0._tableUID._lower = 0;
  retstr->var0._tableUID._upper = 0;
  retstr->var0.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  return self;
}

- (RefTypeHolder<TSCERangeRef,)viewRangeRefForChromeRangeRef:()RefTypeHolder<TSCERangeRef
{
  if ((self->var0.range._bottomRight.row & 1) != 0 || (v7 = self, BYTE1(self->var0.range._bottomRight.row) == 1))
  {
    range = *a4;
    tableUID = *(a4 + 1);
LABEL_4:
    retstr->var0.range = range;
    retstr->var0._tableUID = tableUID;
    return self;
  }

  v25 = objc_msgSend_viewCellCoordForChromeCellCoord_(self, a3, *a4, v4);
  v24 = objc_msgSend_viewCellCoordForChromeCellCoord_(v7, v10, *(a4 + 1), v11);
  self = TSUCellCoord::adjustCoordsToBeTopLeftBottomRight(&v25, &v24, v12);
  if ((*&v25 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (*&v24 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v14 = (*&v25 & 0xFFFF00000000) != 0x7FFF00000000 || v25.row == 0x7FFFFFFFLL;
    v15 = !v14;
    v16 = (*&v24 & 0xFFFF00000000) != 0x7FFF00000000 || v24.row == 0x7FFFFFFFLL;
    v17 = !v16;
    if (v17 == v15)
    {
      v18 = v25.row != 0x7FFFFFFFLL || (*&v25 & 0xFFFF00000000) == 0x7FFF00000000;
      v19 = !v18;
      v20 = v24.row != 0x7FFFFFFFLL || (*&v24 & 0xFFFF00000000) == 0x7FFF00000000;
      v21 = v20;
      if (v21 != v19)
      {
        v23.range._topLeft = v25;
        v23.range._bottomRight = v24;
        v23._tableUID = *(a4 + 1);
        v22._flags = TSCERangeRef::preserveFlags(a4);
        self = TSCERangeRef::setPreserveFlags(&v23, &v22);
        range = v23.range;
        tableUID = v23._tableUID;
        goto LABEL_4;
      }
    }
  }

  retstr->var0._tableUID._lower = 0;
  retstr->var0._tableUID._upper = 0;
  retstr->var0.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  return self;
}

- (id)baseTractRefForChromeTractRef:(id)ref
{
  refCopy = ref;
  v8 = refCopy;
  if (self->_isIdentityMapping)
  {
    v9 = objc_msgSend_copy(refCopy, v5, v6, v7);
    goto LABEL_19;
  }

  if (objc_msgSend_isValid(refCopy, v5, v6, v7))
  {
    v13 = objc_msgSend_columns(v8, v10, v11, v12);
    v14 = TSUIndexSet::asNSIndexSet(v13);
    v17 = objc_msgSend_baseColumnIndexesForChromeColumnIndexes_(self, v15, v14, v16);

    v21 = objc_msgSend_rows(v8, v18, v19, v20);
    v22 = TSUIndexSet::asNSIndexSet(v21);
    v25 = objc_msgSend_baseRowIndexesForChromeRowIndexes_(self, v23, v22, v24);

    v26 = [TSCECellTractRef alloc];
    MEMORY[0x223D9F7A0](&v73, v17);
    MEMORY[0x223D9F7A0](&v72, v25);
    v71[0] = objc_msgSend_tableUID(v8, v27, v28, v29);
    v71[1] = v30;
    v9 = objc_msgSend_initWithColumns_rows_tableUID_(v26, v30, &v73, &v72, v71);
    TSUIndexSet::~TSUIndexSet(&v72);
    TSUIndexSet::~TSUIndexSet(&v73);
    if (objc_msgSend_spansAllRows(v8, v31, v32, v33))
    {
      objc_msgSend_setSpansAllRows_(v9, v34, 1, v36);
      v40 = objc_msgSend_count(v17, v37, v38, v39);
    }

    else if (objc_msgSend_spansAllColumns(v8, v34, v35, v36))
    {
      objc_msgSend_setSpansAllColumns_(v9, v44, 1, v46);
      v40 = objc_msgSend_count(v25, v47, v48, v49);
    }

    else
    {
      if (!objc_msgSend_count(v17, v44, v45, v46))
      {
LABEL_12:

        v9 = 0;
LABEL_13:
        v53 = objc_msgSend_preserveFlags(v8, v41, v42, v43);
        v57 = v53;
        *&v73 = v53;
        if (v53)
        {
          if (v53 != 15)
          {
            v58 = objc_msgSend_topLeft(v9, v54, v55, v56);
            v62 = objc_msgSend_bottomRight(v9, v59, v60, v61);
            LODWORD(v58) = objc_msgSend_viewCellCoordForBaseCellCoord_(self, v63, v58, v64);
            if (v58 > objc_msgSend_viewCellCoordForBaseCellCoord_(self, v65, v62, v66))
            {
              v57 = TSUPreserveFlags::swapRowFlags(&v73);
              *&v73 = v57;
            }
          }
        }

        objc_msgSend_setPreserveFlags_(v9, v54, v57, v56);

        goto LABEL_18;
      }

      v40 = objc_msgSend_count(v25, v50, v51, v52);
    }

    if (v40)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = 0;
LABEL_18:
  v67 = objc_msgSend_preserveRectangular(v8, v10, v11, v12);
  objc_msgSend_setPreserveRectangular_(v9, v68, v67, v69);
LABEL_19:

  return v9;
}

- (id)baseTractRefForViewTractRef:(id)ref
{
  refCopy = ref;
  v8 = refCopy;
  if (self->_isIdentityMapping)
  {
    v9 = objc_msgSend_copy(refCopy, v5, v6, v7);
    goto LABEL_19;
  }

  if (objc_msgSend_isValid(refCopy, v5, v6, v7))
  {
    v13 = objc_msgSend_columns(v8, v10, v11, v12);
    v14 = TSUIndexSet::asNSIndexSet(v13);
    v17 = objc_msgSend_baseColumnIndexesForViewColumnIndexes_(self, v15, v14, v16);

    v21 = objc_msgSend_rows(v8, v18, v19, v20);
    v22 = TSUIndexSet::asNSIndexSet(v21);
    v25 = objc_msgSend_baseRowIndexesForViewRowIndexes_(self, v23, v22, v24);

    v26 = [TSCECellTractRef alloc];
    MEMORY[0x223D9F7A0](&v73, v17);
    MEMORY[0x223D9F7A0](&v72, v25);
    v71[0] = objc_msgSend_tableUID(v8, v27, v28, v29);
    v71[1] = v30;
    v9 = objc_msgSend_initWithColumns_rows_tableUID_(v26, v30, &v73, &v72, v71);
    TSUIndexSet::~TSUIndexSet(&v72);
    TSUIndexSet::~TSUIndexSet(&v73);
    if (objc_msgSend_spansAllRows(v8, v31, v32, v33))
    {
      objc_msgSend_setSpansAllRows_(v9, v34, 1, v36);
      v40 = objc_msgSend_count(v17, v37, v38, v39);
    }

    else if (objc_msgSend_spansAllColumns(v8, v34, v35, v36))
    {
      objc_msgSend_setSpansAllColumns_(v9, v44, 1, v46);
      v40 = objc_msgSend_count(v25, v47, v48, v49);
    }

    else
    {
      if (!objc_msgSend_count(v17, v44, v45, v46))
      {
LABEL_12:

        v9 = 0;
LABEL_13:
        v53 = objc_msgSend_preserveFlags(v8, v41, v42, v43);
        v57 = v53;
        *&v73 = v53;
        if (v53)
        {
          if (v53 != 15)
          {
            v58 = objc_msgSend_topLeft(v9, v54, v55, v56);
            v62 = objc_msgSend_bottomRight(v9, v59, v60, v61);
            LODWORD(v58) = objc_msgSend_viewCellCoordForBaseCellCoord_(self, v63, v58, v64);
            if (v58 > objc_msgSend_viewCellCoordForBaseCellCoord_(self, v65, v62, v66))
            {
              v57 = TSUPreserveFlags::swapRowFlags(&v73);
              *&v73 = v57;
            }
          }
        }

        objc_msgSend_setPreserveFlags_(v9, v54, v57, v56);

        goto LABEL_18;
      }

      v40 = objc_msgSend_count(v25, v50, v51, v52);
    }

    if (v40)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = 0;
LABEL_18:
  v67 = objc_msgSend_preserveRectangular(v8, v10, v11, v12);
  objc_msgSend_setPreserveRectangular_(v9, v68, v67, v69);
LABEL_19:

  return v9;
}

- (id)chromeTractRefForBaseTractRef:(id)ref
{
  refCopy = ref;
  v8 = refCopy;
  if (self->_isIdentityMapping)
  {
    v9 = objc_msgSend_copy(refCopy, v5, v6, v7);
  }

  else
  {
    v10 = objc_msgSend_viewTractRefForBaseTractRef_(self, v5, refCopy, v7);
    v9 = objc_msgSend_chromeTractRefForViewTractRef_(self, v11, v10, v12);
  }

  return v9;
}

- (id)chromeTractRefForViewTractRef:(id)ref
{
  refCopy = ref;
  v8 = refCopy;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v9 = objc_msgSend_copy(refCopy, v5, v6, v7);
    goto LABEL_4;
  }

  if (!objc_msgSend_isValid(refCopy, v5, v6, v7))
  {
    v9 = 0;
    goto LABEL_4;
  }

  v14 = objc_msgSend_columns(v8, v11, v12, v13);
  v15 = TSUIndexSet::asNSIndexSet(v14);
  v18 = objc_msgSend_chromeColumnIndexesForViewColumnIndexes_(self, v16, v15, v17);

  v22 = objc_msgSend_rows(v8, v19, v20, v21);
  v23 = TSUIndexSet::asNSIndexSet(v22);
  v26 = objc_msgSend_chromeRowIndexesForViewRowIndexes_(self, v24, v23, v25);

  v27 = [TSCECellTractRef alloc];
  MEMORY[0x223D9F7A0](&v85, v18);
  MEMORY[0x223D9F7A0](&v84, v26);
  v83[0] = objc_msgSend_tableUID(v8, v28, v29, v30);
  v83[1] = v31;
  v9 = objc_msgSend_initWithColumns_rows_tableUID_(v27, v31, &v85, &v84, v83);
  TSUIndexSet::~TSUIndexSet(&v84);
  TSUIndexSet::~TSUIndexSet(&v85);
  if (objc_msgSend_spansAllRows(v8, v32, v33, v34))
  {
    objc_msgSend_setSpansAllRows_(v9, v35, 1, v37);
    if (!objc_msgSend_count(v18, v38, v39, v40))
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSCECoordMapper chromeTractRefForViewTractRef:]", v43);
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECoordMapper.mm", v47);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v49, v45, v48, 1123, 0, "Not able to find valid indexes");
LABEL_15:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62);
    }
  }

  else
  {
    if (!objc_msgSend_spansAllColumns(v8, v35, v36, v37))
    {
      if (!objc_msgSend_count(v18, v50, v51, v52) || !objc_msgSend_count(v26, v41, v42, v43))
      {
        if (objc_msgSend_isValid(v8, v41, v42, v43))
        {
          v65 = MEMORY[0x277D81150];
          v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSCECoordMapper chromeTractRefForViewTractRef:]", v64);
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECoordMapper.mm", v68);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v70, v66, v69, 1129, 0, "Wasn't expecting this to be possible with valid input");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73);
        }

        v9 = 0;
      }

      goto LABEL_21;
    }

    objc_msgSend_setSpansAllColumns_(v9, v50, 1, v52);
    if (!objc_msgSend_count(v26, v53, v54, v55))
    {
      v56 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSCECoordMapper chromeTractRefForViewTractRef:]", v43);
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECoordMapper.mm", v58);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v59, v45, v48, 1126, 0, "Not able to find valid indexes");
      goto LABEL_15;
    }
  }

LABEL_21:
  v74 = objc_msgSend_preserveFlags(v8, v41, v42, v43);
  objc_msgSend_setPreserveFlags_(v9, v75, v74, v76);
  v80 = objc_msgSend_preserveRectangular(v8, v77, v78, v79);
  objc_msgSend_setPreserveRectangular_(v9, v81, v80, v82);

LABEL_4:

  return v9;
}

- (id)viewTractRefForBaseTractRef:(id)ref
{
  refCopy = ref;
  v8 = refCopy;
  if (self->_isIdentityMapping)
  {
    v9 = objc_msgSend_copy(refCopy, v5, v6, v7);
    goto LABEL_19;
  }

  if (objc_msgSend_isValid(refCopy, v5, v6, v7))
  {
    v13 = objc_msgSend_columns(v8, v10, v11, v12);
    v14 = TSUIndexSet::asNSIndexSet(v13);
    v17 = objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(self, v15, v14, v16);

    v21 = objc_msgSend_rows(v8, v18, v19, v20);
    v22 = TSUIndexSet::asNSIndexSet(v21);
    v25 = objc_msgSend_viewRowIndexesForBaseRowIndexes_(self, v23, v22, v24);

    v26 = [TSCECellTractRef alloc];
    MEMORY[0x223D9F7A0](&v73, v17);
    MEMORY[0x223D9F7A0](&v72, v25);
    v71[0] = objc_msgSend_tableUID(v8, v27, v28, v29);
    v71[1] = v30;
    v9 = objc_msgSend_initWithColumns_rows_tableUID_(v26, v30, &v73, &v72, v71);
    TSUIndexSet::~TSUIndexSet(&v72);
    TSUIndexSet::~TSUIndexSet(&v73);
    if (objc_msgSend_spansAllRows(v8, v31, v32, v33))
    {
      objc_msgSend_setSpansAllRows_(v9, v34, 1, v36);
      v40 = objc_msgSend_count(v17, v37, v38, v39);
    }

    else if (objc_msgSend_spansAllColumns(v8, v34, v35, v36))
    {
      objc_msgSend_setSpansAllColumns_(v9, v44, 1, v46);
      v40 = objc_msgSend_count(v25, v47, v48, v49);
    }

    else
    {
      if (!objc_msgSend_count(v17, v44, v45, v46))
      {
LABEL_12:

        v9 = 0;
LABEL_13:
        v53 = objc_msgSend_preserveFlags(v8, v41, v42, v43);
        v57 = v53;
        *&v73 = v53;
        if (v53)
        {
          if (v53 != 15)
          {
            v58 = objc_msgSend_topLeft(v9, v54, v55, v56);
            v62 = objc_msgSend_bottomRight(v9, v59, v60, v61);
            LODWORD(v58) = objc_msgSend_baseCellCoordForViewCellCoord_(self, v63, v58, v64);
            if (v58 > objc_msgSend_baseCellCoordForViewCellCoord_(self, v65, v62, v66))
            {
              v57 = TSUPreserveFlags::swapRowFlags(&v73);
              *&v73 = v57;
            }
          }
        }

        objc_msgSend_setPreserveFlags_(v9, v54, v57, v56);

        goto LABEL_18;
      }

      v40 = objc_msgSend_count(v25, v50, v51, v52);
    }

    if (v40)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = 0;
LABEL_18:
  v67 = objc_msgSend_preserveRectangular(v8, v10, v11, v12);
  objc_msgSend_setPreserveRectangular_(v9, v68, v67, v69);
LABEL_19:

  return v9;
}

- (id)viewTractRefForChromeTractRef:(id)ref
{
  refCopy = ref;
  v8 = refCopy;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v9 = objc_msgSend_copy(refCopy, v5, v6, v7);
    goto LABEL_4;
  }

  if (!objc_msgSend_isValid(refCopy, v5, v6, v7))
  {
    v9 = 0;
    goto LABEL_4;
  }

  v14 = objc_msgSend_columns(v8, v11, v12, v13);
  v15 = TSUIndexSet::asNSIndexSet(v14);
  v18 = objc_msgSend_viewColumnIndexesForChromeColumnIndexes_(self, v16, v15, v17);

  v22 = objc_msgSend_rows(v8, v19, v20, v21);
  v23 = TSUIndexSet::asNSIndexSet(v22);
  v26 = objc_msgSend_viewRowIndexesForChromeRowIndexes_(self, v24, v23, v25);

  v27 = [TSCECellTractRef alloc];
  MEMORY[0x223D9F7A0](&v65, v18);
  MEMORY[0x223D9F7A0](&v64, v26);
  v63[0] = objc_msgSend_tableUID(v8, v28, v29, v30);
  v63[1] = v31;
  v9 = objc_msgSend_initWithColumns_rows_tableUID_(v27, v31, &v65, &v64, v63);
  TSUIndexSet::~TSUIndexSet(&v64);
  TSUIndexSet::~TSUIndexSet(&v65);
  if (objc_msgSend_spansAllRows(v8, v32, v33, v34))
  {
    objc_msgSend_setSpansAllRows_(v9, v35, 1, v37);
    v41 = objc_msgSend_count(v18, v38, v39, v40);
  }

  else if (objc_msgSend_spansAllColumns(v8, v35, v36, v37))
  {
    objc_msgSend_setSpansAllColumns_(v9, v45, 1, v47);
    v41 = objc_msgSend_count(v26, v48, v49, v50);
  }

  else
  {
    if (!objc_msgSend_count(v18, v45, v46, v47))
    {
LABEL_16:

      v9 = 0;
      goto LABEL_17;
    }

    v41 = objc_msgSend_count(v26, v51, v52, v53);
  }

  if (!v41)
  {
    goto LABEL_16;
  }

LABEL_17:
  v54 = objc_msgSend_preserveFlags(v8, v42, v43, v44);
  objc_msgSend_setPreserveFlags_(v9, v55, v54, v56);
  v60 = objc_msgSend_preserveRectangular(v8, v57, v58, v59);
  objc_msgSend_setPreserveRectangular_(v9, v61, v60, v62);

LABEL_4:

  return v9;
}

- (id)baseShuffleMapForViewShuffleMap:(id)map
{
  mapCopy = map;
  v8 = mapCopy;
  if (mapCopy)
  {
    if (self->_isIdentityMapping)
    {
      v9 = objc_msgSend_copy(mapCopy, v5, v6, v7);
    }

    else
    {
      v10 = objc_msgSend_sourceIndexes(mapCopy, v5, v6, v7);
      v13 = objc_msgSend_baseRowIndexesForViewRowIndexes_(self, v11, v10, v12);
      v14 = objc_alloc(MEMORY[0x277D806D0]);
      Index = objc_msgSend_firstIndex(v13, v15, v16, v17);
      v22 = objc_msgSend_lastIndex(v13, v19, v20, v21);
      started = objc_msgSend_initWithStartIndex_endIndex_(v14, v23, Index, v22);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_2211DB844;
      v28[3] = &unk_278460FD0;
      v28[4] = self;
      v9 = started;
      v29 = v9;
      objc_msgSend_enumerateMappingFollowingSwapsUsingBlock_(v8, v25, v28, v26);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 44) = 1065353216;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 54) = 1065353216;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 64) = 1065353216;
  *(self + 264) = 0u;
  *(self + 280) = 0u;
  *(self + 74) = 1065353216;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 84) = 1065353216;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 94) = 1065353216;
  return self;
}

@end