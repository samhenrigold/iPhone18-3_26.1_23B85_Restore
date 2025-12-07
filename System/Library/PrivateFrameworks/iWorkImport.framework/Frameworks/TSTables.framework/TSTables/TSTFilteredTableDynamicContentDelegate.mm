@interface TSTFilteredTableDynamicContentDelegate
- (BOOL)cell:(id *)cell forCellID:(TSUCellCoord)d;
- (TSTFilteredTableDynamicContentDelegate)initWithTableInfo:(id)info;
@end

@implementation TSTFilteredTableDynamicContentDelegate

- (TSTFilteredTableDynamicContentDelegate)initWithTableInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = TSTFilteredTableDynamicContentDelegate;
  v6 = [(TSTFilteredTableDynamicContentDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableInfo, info);
  }

  return v7;
}

- (BOOL)cell:(id *)cell forCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_newCell(self->_tableInfo, a2, cell, *&d);
  v10 = sub_2214AAEA8(v6, v7, v8, v9);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, @"No rows match the filter conditions.", &stru_2834BADA0, @"TSTables");
  objc_msgSend_setStringValue_(v6, v13, v12, v14);

  v18 = objc_msgSend_headerRowCellStyle(self->_tableInfo, v15, v16, v17);
  objc_msgSend_setCellStyle_(v6, v19, v18, v20);

  v24 = objc_msgSend_headerRowTextStyle(self->_tableInfo, v21, v22, v23);
  objc_msgSend_setTextStyle_(v6, v25, v24, v26);

  v27 = v6;
  *cell = v6;

  return 1;
}

@end