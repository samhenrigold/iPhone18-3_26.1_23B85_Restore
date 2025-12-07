@interface TSTLayoutProcessChangesActions
- (TSTLayoutProcessChangesActions)init;
- (void)layoutSpacesInvalidateCoordinatesAfterRow:(id)row;
@end

@implementation TSTLayoutProcessChangesActions

- (TSTLayoutProcessChangesActions)init
{
  v3.receiver = self;
  v3.super_class = TSTLayoutProcessChangesActions;
  result = [(TSTLayoutProcessChangesActions *)&v3 init];
  if (result)
  {
    result->_editingCellIDForInvalidation = 0x7FFF7FFFFFFFLL;
    result->_layoutSpacesInvalidateCoordinatesAfterRow = 0x7FFFFFFF;
  }

  return result;
}

- (void)layoutSpacesInvalidateCoordinatesAfterRow:(id)row
{
  rowCopy = row;
  v11 = objc_msgSend_cellRegion(rowCopy, v5, v6, v7);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = objc_msgSend_cellRegion(rowCopy, v8, v9, v10);
  if (objc_msgSend_isEmpty(v12, v13, v14, v15))
  {

LABEL_8:
    v26 = 0x7FFFFFFF;
    goto LABEL_9;
  }

  v19 = objc_msgSend_cellRegion(rowCopy, v16, v17, v18);

  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = objc_msgSend_cellRegion(rowCopy, v8, v9, v10);
  v53.origin = objc_msgSend_boundingCellRange(v20, v21, v22, v23);
  v53.size = v24;
  v25 = TSUCellRect::firstRow(&v53);

  if (v25 >= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v25;
  }

LABEL_9:
  v30 = objc_msgSend_strokeRegion(rowCopy, v8, v9, v10);
  if (v30)
  {
    v31 = objc_msgSend_strokeRegion(rowCopy, v27, v28, v29);
    if (objc_msgSend_isEmpty(v31, v32, v33, v34))
    {
    }

    else
    {
      v38 = objc_msgSend_strokeRegion(rowCopy, v35, v36, v37);

      if (v38)
      {
        v39 = objc_msgSend_strokeRegion(rowCopy, v27, v28, v29);
        v53.origin = objc_msgSend_boundingCellRange(v39, v40, v41, v42);
        v53.size = v43;
        v44 = TSUCellRect::firstRow(&v53);

        if (v26 >= v44)
        {
          v26 = v44;
        }
      }
    }
  }

  v45 = objc_msgSend_cellID(rowCopy, v27, v28, v29);
  if (v45 != 0x7FFFFFFF && (v45 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v49 = objc_msgSend_cellID(rowCopy, v46, v47, v48);
    if (v26 >= v49)
    {
      v26 = v49;
    }
  }

  layoutSpacesInvalidateCoordinatesAfterRow = self->_layoutSpacesInvalidateCoordinatesAfterRow;
  if (layoutSpacesInvalidateCoordinatesAfterRow >= v26)
  {
    v51 = v26;
  }

  else
  {
    v51 = self->_layoutSpacesInvalidateCoordinatesAfterRow;
  }

  if (layoutSpacesInvalidateCoordinatesAfterRow == 0x7FFFFFFF)
  {
    v52 = v26;
  }

  else
  {
    v52 = v51;
  }

  self->_layoutSpacesInvalidateCoordinatesAfterRow = v52;
}

@end