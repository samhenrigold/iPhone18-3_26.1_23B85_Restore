@interface TSTLayoutSpaceBundle
- (BOOL)enumerateFrozenLayoutSpacesUsingBlock:(id)block;
- (BOOL)enumerateRepeatLayoutSpacesUsingBlock:(id)block;
- (TSTLayout)layout;
- (TSTLayoutSpaceBundle)initWithLayout:(id)layout;
- (id)getSpaceContainingCellID:(TSUCellCoord)d;
- (int)validateLayoutSpaces;
- (void)enumerateLayoutSpacesUsingBlock:(id)block;
- (void)invalidateCoordinatesAfterColumn:(unsigned __int16)column;
- (void)invalidateCoordinatesAfterRow:(unsigned int)row;
- (void)invalidateCoordinatesForEditingCellID:(TSUCellCoord)d;
@end

@implementation TSTLayoutSpaceBundle

- (TSTLayoutSpaceBundle)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = TSTLayoutSpaceBundle;
  v5 = [(TSTLayoutSpaceBundle *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layout, layoutCopy);
    v7 = [TSTLayoutSpace alloc];
    v9 = objc_msgSend_initWithLayoutSpaceBundle_type_(v7, v8, v6, 0);
    space = v6->_space;
    v6->_space = v9;
  }

  return v6;
}

- (void)invalidateCoordinatesAfterColumn:(unsigned __int16)column
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213BA334;
  v4[3] = &unk_278464190;
  columnCopy = column;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(self, a2, v4, v3);
}

- (void)invalidateCoordinatesAfterRow:(unsigned int)row
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213BA3AC;
  v4[3] = &unk_2784641B0;
  rowCopy = row;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(self, a2, v4, v3);
}

- (void)invalidateCoordinatesForEditingCellID:(TSUCellCoord)d
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213BA438;
  v4[3] = &unk_278460A98;
  v4[4] = d;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(self, a2, v4, v3);
}

- (id)getSpaceContainingCellID:(TSUCellCoord)d
{
  p_space = &self->_space;
  v7 = objc_msgSend_cellRange(self->_space, a2, *&d, v3);
  if (v8 >> 32)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_31;
  }

  v12 = v7 & 0xFFFF00000000;
  if (v7 != 0x7FFFFFFFLL || v12 == 0x7FFF00000000)
  {
    v15 = v7 == 0x7FFFFFFF && v12 != 0x7FFF00000000;
    if (v7 > d.row && !v15)
    {
      goto LABEL_31;
    }

    v16 = v7 + HIDWORD(v8) - 1;
    if (v7 == 0x7FFFFFFF)
    {
      v16 = 0x7FFFFFFF;
    }

    if (v16 < d.row)
    {
      goto LABEL_31;
    }

    if (v7 != 0x7FFFFFFFLL && v12 == 0x7FFF00000000)
    {
      goto LABEL_118;
    }
  }

  if (WORD2(v7) <= d.column)
  {
    v17 = WORD2(v7) == 0x7FFF || v8 == 0;
    v18 = v17 ? 0x7FFF : v8 + WORD2(v7) - 1;
    if (v18 >= d.column)
    {
      goto LABEL_118;
    }
  }

LABEL_31:
  p_space = &self->_repeatHeaderCornerSpace;
  v19 = objc_msgSend_cellRange(self->_repeatHeaderCornerSpace, v8, v9, v10);
  if (v20 >> 32)
  {
    v23 = v20 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    goto LABEL_61;
  }

  v24 = v19 & 0xFFFF00000000;
  if (v19 != 0x7FFFFFFFLL || v24 == 0x7FFF00000000)
  {
    v27 = v19 == 0x7FFFFFFF && v24 != 0x7FFF00000000;
    if (v19 > d.row && !v27)
    {
      goto LABEL_61;
    }

    v28 = v19 + HIDWORD(v20) - 1;
    if (v19 == 0x7FFFFFFF)
    {
      v28 = 0x7FFFFFFF;
    }

    if (v28 < d.row)
    {
      goto LABEL_61;
    }

    if (v19 != 0x7FFFFFFFLL && v24 == 0x7FFF00000000)
    {
      goto LABEL_118;
    }
  }

  if (WORD2(v19) <= d.column)
  {
    v29 = WORD2(v19) == 0x7FFF || v20 == 0;
    v30 = v29 ? 0x7FFF : v20 + WORD2(v19) - 1;
    if (v30 >= d.column)
    {
      goto LABEL_118;
    }
  }

LABEL_61:
  p_space = &self->_repeatHeaderColumnsSpace;
  v31 = objc_msgSend_cellRange(self->_repeatHeaderColumnsSpace, v20, v21, v22);
  if (v32 >> 32)
  {
    v35 = v32 == 0;
  }

  else
  {
    v35 = 1;
  }

  if (v35)
  {
    goto LABEL_87;
  }

  v36 = v31 & 0xFFFF00000000;
  if (v31 != 0x7FFFFFFFLL || v36 == 0x7FFF00000000)
  {
    v40 = v31 == 0x7FFFFFFF && v36 != 0x7FFF00000000;
    if (v31 > d.row && !v40)
    {
      goto LABEL_87;
    }

    v41 = v31 + HIDWORD(v32) - 1;
    if (v31 == 0x7FFFFFFF)
    {
      v41 = 0x7FFFFFFF;
    }

    if (v41 < d.row)
    {
      goto LABEL_87;
    }

    if (v31 != 0x7FFFFFFFLL && v36 == 0x7FFF00000000)
    {
      goto LABEL_118;
    }
  }

  if (WORD2(v31) <= d.column)
  {
    v37 = WORD2(v31) == 0x7FFF || v32 == 0;
    v38 = v37 ? 0x7FFF : v32 + WORD2(v31) - 1;
    if (v38 >= d.column)
    {
      goto LABEL_118;
    }
  }

LABEL_87:
  repeatHeaderRowsSpace = self->_repeatHeaderRowsSpace;
  p_repeatHeaderRowsSpace = &self->_repeatHeaderRowsSpace;
  v44 = objc_msgSend_cellRange(repeatHeaderRowsSpace, v32, v33, v34);
  v46 = 0;
  if (HIDWORD(v45) && v45)
  {
    v47 = v44 & 0xFFFF00000000;
    if (v44 == 0x7FFFFFFFLL && v47 != 0x7FFF00000000)
    {
      goto LABEL_124;
    }

    v51 = v44 == 0x7FFFFFFF && v47 != 0x7FFF00000000;
    if (v44 > d.row && !v51)
    {
      goto LABEL_111;
    }

    v52 = v44 + HIDWORD(v45) - 1;
    if (v44 == 0x7FFFFFFF)
    {
      v52 = 0x7FFFFFFF;
    }

    if (v52 < d.row)
    {
      goto LABEL_111;
    }

    if (v44 == 0x7FFFFFFFLL || v47 != 0x7FFF00000000)
    {
LABEL_124:
      if (WORD2(v44) <= d.column)
      {
        v48 = WORD2(v44) == 0x7FFF || v45 == 0;
        v49 = v48 ? 0x7FFF : v45 + WORD2(v44) - 1;
        p_space = p_repeatHeaderRowsSpace;
        if (v49 >= d.column)
        {
          goto LABEL_118;
        }
      }

LABEL_111:
      v46 = 0;
      goto LABEL_119;
    }

    p_space = p_repeatHeaderRowsSpace;
LABEL_118:
    v46 = *p_space;
  }

LABEL_119:

  return v46;
}

- (int)validateLayoutSpaces
{
  v4 = objc_msgSend_validate_(self->_space, a2, 0, v2);
  v7 = objc_msgSend_validate_(self->_frozenHeaderColumnsSpace, v5, self->_space, v6) | v4;
  v10 = objc_msgSend_validate_(self->_frozenHeaderRowsSpace, v8, self->_space, v9);
  v13 = v7 | v10 | objc_msgSend_validate_(self->_frozenHeaderCornerSpace, v11, self->_space, v12);
  v16 = objc_msgSend_validate_(self->_repeatHeaderColumnsSpace, v14, self->_space, v15);
  v19 = v16 | objc_msgSend_validate_(self->_repeatHeaderRowsSpace, v17, self->_space, v18);
  v25 = v13 | v19 | objc_msgSend_validate_(self->_repeatHeaderCornerSpace, v20, self->_space, v21);
  if (v25)
  {
    objc_msgSend_validateCoordinateDirection(self->_space, v22, v23, v24);
    objc_msgSend_validateCoordinateDirection(self->_frozenHeaderColumnsSpace, v26, v27, v28);
    objc_msgSend_validateCoordinateDirection(self->_frozenHeaderRowsSpace, v29, v30, v31);
    objc_msgSend_validateCoordinateDirection(self->_frozenHeaderCornerSpace, v32, v33, v34);
    objc_msgSend_validateCoordinateDirection(self->_repeatHeaderColumnsSpace, v35, v36, v37);
    objc_msgSend_validateCoordinateDirection(self->_repeatHeaderRowsSpace, v38, v39, v40);
    objc_msgSend_validateCoordinateDirection(self->_repeatHeaderCornerSpace, v41, v42, v43);
  }

  return v25;
}

- (void)enumerateLayoutSpacesUsingBlock:(id)block
{
  blockCopy = block;
  if ((objc_msgSend_enumerateFrozenLayoutSpacesUsingBlock_(self, v5, blockCopy, v6) & 1) == 0)
  {
    v10 = objc_msgSend_enumerateRepeatLayoutSpacesUsingBlock_(self, v7, blockCopy, v8);
    if ((v10 & 1) == 0)
    {
      space = self->_space;
      if (space)
      {
        blockCopy[2](blockCopy, space, &v10);
      }
    }
  }
}

- (BOOL)enumerateFrozenLayoutSpacesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  v11 = 0;
  frozenHeaderCornerSpace = self->_frozenHeaderCornerSpace;
  if (frozenHeaderCornerSpace && ((*(blockCopy + 2))(blockCopy, frozenHeaderCornerSpace, &v11), (v11 & 1) != 0) || (frozenHeaderRowsSpace = self->_frozenHeaderRowsSpace) != 0 && ((v5)[2](v5, frozenHeaderRowsSpace, &v11), (v11 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    frozenHeaderColumnsSpace = self->_frozenHeaderColumnsSpace;
    if (frozenHeaderColumnsSpace)
    {
      (v5)[2](v5, frozenHeaderColumnsSpace, &v11);
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

- (BOOL)enumerateRepeatLayoutSpacesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  v11 = 0;
  repeatHeaderCornerSpace = self->_repeatHeaderCornerSpace;
  if (repeatHeaderCornerSpace && ((*(blockCopy + 2))(blockCopy, repeatHeaderCornerSpace, &v11), (v11 & 1) != 0) || (repeatHeaderRowsSpace = self->_repeatHeaderRowsSpace) != 0 && ((v5)[2](v5, repeatHeaderRowsSpace, &v11), (v11 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    repeatHeaderColumnsSpace = self->_repeatHeaderColumnsSpace;
    if (repeatHeaderColumnsSpace)
    {
      (v5)[2](v5, repeatHeaderColumnsSpace, &v11);
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

- (TSTLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

@end