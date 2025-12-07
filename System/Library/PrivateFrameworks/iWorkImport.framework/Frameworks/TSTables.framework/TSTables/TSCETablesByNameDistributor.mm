@interface TSCETablesByNameDistributor
- (void)didAddTableName:(id)name forTableUID:(TSKUIDStruct)d;
- (void)didChangeTableName:(id)name fromTableName:(id)tableName forTableUID:(TSKUIDStruct)d;
- (void)didRemoveTableName:(id)name forTableUID:(TSKUIDStruct)d;
@end

@implementation TSCETablesByNameDistributor

- (void)didAddTableName:(id)name forTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  nameCopy = name;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2210CE0B8;
    v13[3] = &unk_27845EA60;
    v14 = nameCopy;
    v15 = lower;
    v16 = upper;
    objc_msgSend_distributeBlock_(self, v11, v13, v12);
  }
}

- (void)didRemoveTableName:(id)name forTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  nameCopy = name;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2210CE19C;
    v13[3] = &unk_27845EA60;
    v14 = nameCopy;
    v15 = lower;
    v16 = upper;
    objc_msgSend_distributeBlock_(self, v11, v13, v12);
  }
}

- (void)didChangeTableName:(id)name fromTableName:(id)tableName forTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  nameCopy = name;
  tableNameCopy = tableName;
  if (objc_msgSend_hasReceivers(self, v11, v12, v13))
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2210CE2B4;
    v16[3] = &unk_27845EA88;
    v17 = nameCopy;
    v18 = tableNameCopy;
    v19 = lower;
    v20 = upper;
    objc_msgSend_distributeBlock_(self, v14, v16, v15);
  }
}

@end