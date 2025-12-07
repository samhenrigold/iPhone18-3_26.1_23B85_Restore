@interface TSTCellWillChangeDistributor
- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d;
- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d;
@end

@implementation TSTCellWillChangeDistributor

- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d
{
  cellCopy = cell;
  if (objc_msgSend_hasReceivers(self, v9, v10, v11))
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211F0AA4;
    v14[3] = &unk_27845EA60;
    dCopy = d;
    coordCopy = coord;
    v15 = cellCopy;
    objc_msgSend_distributeBlock_(self, v12, v14, v13);
  }
}

- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  mapCopy = map;
  if (objc_msgSend_hasReceivers(self, v7, v8, v9))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2211F0B80;
    v12[3] = &unk_278461360;
    v13 = mapCopy;
    dCopy = d;
    objc_msgSend_distributeBlock_(self, v10, v12, v11);
  }
}

- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  mapCopy = map;
  if (objc_msgSend_hasReceivers(self, v7, v8, v9))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2211F0C58;
    v12[3] = &unk_278461360;
    v13 = mapCopy;
    dCopy = d;
    objc_msgSend_distributeBlock_(self, v10, v12, v11);
  }
}

- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d
{
  if (objc_msgSend_hasReceivers(self, a2, rows, d))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2211F0CF8;
    v9[3] = &unk_278461380;
    v9[4] = rows;
    v9[5] = d;
    objc_msgSend_distributeBlock_(self, v7, v9, v8);
  }
}

@end