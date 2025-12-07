@interface TSTPivotCellSetter
- (TSTPivotCellSetter)initWithPivotTable:(id)table minion:(id)minion preservingStyles:(BOOL)styles;
- (void)applyCellValue:(id)value atUidCoord:(TSKUIDStructCoord *)coord appendTotalForPivotsFlag:(BOOL)flag;
- (void)applyFormula:(id)formula atUidCoord:(TSKUIDStructCoord *)coord;
- (void)setStringValue:(id)value atUidCoord:(TSKUIDStructCoord *)coord;
@end

@implementation TSTPivotCellSetter

- (TSTPivotCellSetter)initWithPivotTable:(id)table minion:(id)minion preservingStyles:(BOOL)styles
{
  tableCopy = table;
  minionCopy = minion;
  v22.receiver = self;
  v22.super_class = TSTPivotCellSetter;
  v11 = [(TSTPivotCellSetter *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pivotTable, table);
    objc_storeStrong(&v12->_minion, minion);
    v12->_preservingStyles = styles;
    v16 = objc_msgSend_newCell(tableCopy, v13, v14, v15);
    cell = v12->_cell;
    v12->_cell = v16;

    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -4);
    v19 = dispatch_queue_create("com.apple.Numbers.TST.PivotCellSetter", v18);
    workerQueue = v12->_workerQueue;
    v12->_workerQueue = v19;
  }

  return v12;
}

- (void)applyFormula:(id)formula atUidCoord:(TSKUIDStructCoord *)coord
{
  formulaCopy = formula;
  workerQueue = self->_workerQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211D6EFC;
  v10[3] = &unk_278460F58;
  row = coord->_row;
  column = coord->_column;
  v13 = row;
  v10[4] = self;
  v11 = formulaCopy;
  v9 = formulaCopy;
  dispatch_async(workerQueue, v10);
}

- (void)applyCellValue:(id)value atUidCoord:(TSKUIDStructCoord *)coord appendTotalForPivotsFlag:(BOOL)flag
{
  valueCopy = value;
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2211D705C;
  block[3] = &unk_278460F80;
  row = coord->_row;
  column = coord->_column;
  v15 = row;
  flagCopy = flag;
  block[4] = self;
  v13 = valueCopy;
  v11 = valueCopy;
  dispatch_async(workerQueue, block);
}

- (void)setStringValue:(id)value atUidCoord:(TSKUIDStructCoord *)coord
{
  valueCopy = value;
  workerQueue = self->_workerQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211D7450;
  v10[3] = &unk_278460F58;
  row = coord->_row;
  column = coord->_column;
  v13 = row;
  v10[4] = self;
  v11 = valueCopy;
  v9 = valueCopy;
  dispatch_async(workerQueue, v10);
}

@end