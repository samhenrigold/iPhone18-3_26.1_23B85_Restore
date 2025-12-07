@interface TSTGroupByChangeDistributor
- (void)didAddRowUID:(TSKUIDStruct)d toGroup:(id)group;
- (void)didChangeGroupByStructure;
- (void)didCreateGroup:(id)group;
- (void)didRemoveGroup:(id)group;
- (void)didRemoveRowUID:(TSKUIDStruct)d fromGroup:(id)group;
- (void)endOfGroupingChangesBatch;
- (void)startOfGroupingChangesBatch;
- (void)willRemoveGroup:(id)group;
@end

@implementation TSTGroupByChangeDistributor

- (void)startOfGroupingChangesBatch
{
  if (objc_msgSend_hasReceivers(self, a2, v2, v3))
  {

    objc_msgSend_distributeBlock_(self, v5, &unk_2834A71A0, v6);
  }
}

- (void)endOfGroupingChangesBatch
{
  if (objc_msgSend_hasReceivers(self, a2, v2, v3))
  {

    objc_msgSend_distributeBlock_(self, v5, &unk_2834A71C0, v6);
  }
}

- (void)didCreateGroup:(id)group
{
  groupCopy = group;
  if (objc_msgSend_hasReceivers(self, v5, v6, v7))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2213CD488;
    v10[3] = &unk_278464400;
    v11 = groupCopy;
    objc_msgSend_distributeBlock_(self, v8, v10, v9);
  }
}

- (void)willRemoveGroup:(id)group
{
  groupCopy = group;
  if (objc_msgSend_hasReceivers(self, v5, v6, v7))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2213CD554;
    v10[3] = &unk_278464400;
    v11 = groupCopy;
    objc_msgSend_distributeBlock_(self, v8, v10, v9);
  }
}

- (void)didRemoveGroup:(id)group
{
  groupCopy = group;
  if (objc_msgSend_hasReceivers(self, v5, v6, v7))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2213CD620;
    v10[3] = &unk_278464400;
    v11 = groupCopy;
    objc_msgSend_distributeBlock_(self, v8, v10, v9);
  }
}

- (void)didAddRowUID:(TSKUIDStruct)d toGroup:(id)group
{
  upper = d._upper;
  lower = d._lower;
  groupCopy = group;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2213CD700;
    v13[3] = &unk_27845EA60;
    v15 = lower;
    v16 = upper;
    v14 = groupCopy;
    objc_msgSend_distributeBlock_(self, v11, v13, v12);
  }
}

- (void)didRemoveRowUID:(TSKUIDStruct)d fromGroup:(id)group
{
  upper = d._upper;
  lower = d._lower;
  groupCopy = group;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2213CD7E4;
    v13[3] = &unk_27845EA60;
    v15 = lower;
    v16 = upper;
    v14 = groupCopy;
    objc_msgSend_distributeBlock_(self, v11, v13, v12);
  }
}

- (void)didChangeGroupByStructure
{
  if (objc_msgSend_hasReceivers(self, a2, v2, v3))
  {

    objc_msgSend_distributeBlock_(self, v5, &unk_2834A71E0, v6);
  }
}

@end