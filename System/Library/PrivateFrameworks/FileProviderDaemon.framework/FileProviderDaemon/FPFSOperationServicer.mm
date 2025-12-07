@interface FPFSOperationServicer
- (id)disconnectDomainID:(id)d options:(unint64_t)options completionHandler:(id)handler;
- (id)fetchPublishingURLForItemID:(id)d completionHandler:(id)handler;
- (id)performActionWithIdentifier:(id)identifier onItemsWithIdentifiers:(id)identifiers domainIdentifier:(id)domainIdentifier completionHandler:(id)handler;
- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index completionHandler:(id)handler;
- (void)bulkItemChanges:(id)changes changedFields:(unint64_t)fields completionHandler:(id)handler;
- (void)deleteItemsWithIDs:(id)ds baseVersions:(id)versions options:(unint64_t)options reply:(id)reply;
- (void)fetchDefaultContainerForBundleIdentifier:(id)identifier defaultName:(id)name inDomainIdentifier:(id)domainIdentifier lookupOnly:(BOOL)only reply:(id)reply;
- (void)fetchHierarchyForItemID:(id)d recursively:(BOOL)recursively ignoreAlternateContentURL:(BOOL)l reply:(id)reply;
- (void)fetchItemID:(id)d reply:(id)reply;
- (void)fetchTrashIdentifiersWithCompletionHandler:(id)handler;
- (void)preflightReparentItemIDs:(id)ds underParentID:(id)d reply:(id)reply;
- (void)preflightTrashItemIDs:(id)ds completionHandler:(id)handler;
- (void)singleItemChange:(id)change changedFields:(unint64_t)fields bounce:(BOOL)bounce completionHandler:(id)handler;
- (void)startOperation:(id)operation toFetchThumbnailsForItemIdentifiers:(id)identifiers size:(CGSize)size completionHandler:(id)handler;
- (void)startOperation:(id)operation toFetchThumbnailsWithDictionary:(id)dictionary size:(CGSize)size completionHandler:(id)handler;
- (void)updateIgnoreStateOfItemWithIdentifiers:(id)identifiers ignoreState:(BOOL)state completionHandler:(id)handler;
- (void)userCheckedSuppressionCheckboxForUserInteractionIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier completionHandler:(id)handler;
- (void)userInteractionErrorsForPerformingAction:(id)action sourceItems:(id)items destinationItem:(id)item fpProviderDomainId:(id)id sourceItemKeysAllowList:(id)list destinationItemKeysAllowList:(id)allowList completionHandler:(id)aBlock;
- (void)wakeForSessionIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation FPFSOperationServicer

- (void)fetchItemID:(id)d reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  dCopy = d;

  sub_1CEFD0044(dCopy, sub_1CEFFA830, v6);
}

- (void)startOperation:(id)operation toFetchThumbnailsForItemIdentifiers:(id)identifiers size:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v10 = _Block_copy(handler);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v11 = sub_1CF9E6D48();
  _Block_copy(v10);
  swift_unknownObjectRetain();

  sub_1CF927C18(operation, v11, self, v10, width, height);
  _Block_release(v10);
  _Block_release(v10);
  swift_unknownObjectRelease();

  v11, v12, v13, v14, v15, v16, v17, v18;
}

- (void)startOperation:(id)operation toFetchThumbnailsWithDictionary:(id)dictionary size:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v10 = _Block_copy(handler);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  sub_1CF2F5F80();
  v11 = sub_1CF9E6638();
  _Block_copy(v10);
  swift_unknownObjectRetain();

  sub_1CF928030(operation, v11, self, v10, width, height);
  _Block_release(v10);
  _Block_release(v10);
  swift_unknownObjectRelease();

  v11, v12, v13, v14, v15, v16, v17, v18;
}

- (void)preflightReparentItemIDs:(id)ds underParentID:(id)d reply:(id)reply
{
  v6 = _Block_copy(reply);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v7 = sub_1CF9E6D48();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  dCopy = d;

  sub_1CF91A870(v7, dCopy, sub_1CF9284C4, v8);

  v7, v10, v11, v12, v13, v14, v15, v16;
}

- (void)singleItemChange:(id)change changedFields:(unint64_t)fields bounce:(BOOL)bounce completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  changeCopy = change;

  sub_1CF91AE28(changeCopy, fields, bounce, sub_1CF024BB0, v10);
}

- (void)bulkItemChanges:(id)changes changedFields:(unint64_t)fields completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *self->backend;
  v11 = *self->request;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF9283D8;
  *(v12 + 24) = v9;
  v15[4] = sub_1CF927BEC;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1CF91B0AC;
  v15[3] = &block_descriptor_822;
  v13 = _Block_copy(v15);
  changesCopy = changes;

  [v10 bulkItemChanges:changesCopy changedFields:fields request:v11 completionHandler:v13];

  _Block_release(v13);
}

- (void)fetchHierarchyForItemID:(id)d recursively:(BOOL)recursively ignoreAlternateContentURL:(BOOL)l reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF927A54;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF927A54;
  *(v13 + 24) = v11;
  *(v13 + 32) = d;
  *(v13 + 40) = recursively;
  *(v13 + 48) = self;
  *(v13 + 56) = l;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF8F3600;
  *(v14 + 24) = v12;
  dCopy = d;
  swift_retain_n();
  swift_retain_n();
  v16 = dCopy;

  sub_1CEFD4024("fetchHierarchy(for:recursively:ignoreAlternateContentURL:reply:)", 64, 2, sub_1CF7BA950, v14, sub_1CF8FEE00, v13);
}

- (void)userCheckedSuppressionCheckboxForUserInteractionIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF067718;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  v13[2] = self;
  v13[3] = v8;
  v13[4] = v10;
  v13[5] = domainIdentifier;
  v13[6] = sub_1CF067718;
  v13[7] = v11;
  domainIdentifierCopy = domainIdentifier;
  swift_retain_n();
  swift_retain_n();
  v15 = domainIdentifierCopy;
  sub_1CEFD4024("userCheckedSuppressionCheckbox(forUserInteractionIdentifier:domainIdentifier:completionHandler:)", 96, 2, sub_1CF2BA174, v12, sub_1CF927A44, v13);
}

- (void)fetchDefaultContainerForBundleIdentifier:(id)identifier defaultName:(id)name inDomainIdentifier:(id)domainIdentifier lookupOnly:(BOOL)only reply:(id)reply
{
  v9 = _Block_copy(reply);
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF024BB0;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  v17[2] = self;
  v17[3] = v21;
  v17[4] = v11;
  v17[5] = v12;
  v17[6] = v14;
  v17[7] = domainIdentifier;
  v17[8] = sub_1CF024BB0;
  v17[9] = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF9283D0;
  *(v18 + 24) = v16;
  domainIdentifierCopy = domainIdentifier;
  swift_retain_n();
  swift_retain_n();
  v20 = domainIdentifierCopy;

  sub_1CEFD4024("fetchDefaultContainer(forBundleIdentifier:defaultName:inDomainIdentifier:lookupOnly:reply:)", 91, 2, sub_1CF9034C4, v18, sub_1CF927988, v17);
}

- (void)preflightTrashItemIDs:(id)ds completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v6 = sub_1CF9E6D48();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  v8[2] = sub_1CF927974;
  v8[3] = v7;
  v8[4] = self;
  swift_retain_n();

  sub_1CF8406A8(v6, sub_1CF92797C, v8);

  v6, v9, v10, v11, v12, v13, v14, v15;
}

- (void)fetchTrashIdentifiersWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF927918;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  v7[2] = self;
  v7[3] = sub_1CF927918;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF903264;
  *(v8 + 24) = v6;
  swift_retain_n();
  swift_retain_n();

  sub_1CEFD4024("fetchTrashIdentifiers(completionHandler:)", 41, 2, sub_1CF7BA950, v8, sub_1CF927968, v7);
}

- (id)fetchPublishingURLForItemID:(id)d completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = d;
  v8[4] = sub_1CF326F78;
  v8[5] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF326F78;
  *(v9 + 24) = v7;
  dCopy = d;
  swift_retain_n();
  swift_retain_n();
  v11 = dCopy;
  sub_1CEFD4024("fetchPublishingURL(for:completionHandler:)", 42, 2, sub_1CF927910, v9, sub_1CF927904, v8);

  return 0;
}

- (id)disconnectDomainID:(id)d options:(unint64_t)options completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF067718;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = self;
  v11[3] = d;
  v11[4] = options;
  v11[5] = sub_1CF067718;
  v11[6] = v9;
  dCopy = d;
  swift_retain_n();
  swift_retain_n();
  v13 = dCopy;
  sub_1CEFD4024("disconnectDomainID(_:options:completionHandler:)", 48, 2, sub_1CF2BA174, v10, sub_1CF927884, v11);

  return 0;
}

- (void)wakeForSessionIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF067718;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = self;
  v11[3] = v6;
  v11[4] = v8;
  v11[5] = sub_1CF067718;
  v11[6] = v9;
  swift_retain_n();
  swift_retain_n();
  sub_1CEFD4024("wake(forSessionIdentifier:completionHandler:)", 45, 2, sub_1CF2BA174, v10, sub_1CF92786C, v11);
}

- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  v10[2] = self;
  v10[3] = error;
  v10[4] = index;
  v10[5] = sub_1CF92779C;
  v10[6] = v9;
  errorCopy = error;
  swift_retain_n();
  v12 = errorCopy;

  sub_1CEFD4024("attemptRecovery(fromError:optionIndex:completionHandler:)", 57, 2, sub_1CF92779C, v9, sub_1CF927854, v10);
}

- (void)userInteractionErrorsForPerformingAction:(id)action sourceItems:(id)items destinationItem:(id)item fpProviderDomainId:(id)id sourceItemKeysAllowList:(id)list destinationItemKeysAllowList:(id)allowList completionHandler:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  if (items)
  {
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    items = sub_1CF9E6D48();
  }

  if (list)
  {
    list = sub_1CF9E6F98();
  }

  if (allowList)
  {
    allowList = sub_1CF9E6F98();
  }

  actionCopy = action;
  itemCopy = item;
  idCopy = id;

  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  sub_1CF91ED84(actionCopy, items, itemCopy, idCopy, list, allowList, sub_1CF927794, v19);

  allowList, v20, v21, v22, v23, v24, v25, v26;
  list, v27, v28, v29, v30, v31, v32, v33;

  items, v34, v35, v36, v37, v38, v39, v40;
}

- (void)deleteItemsWithIDs:(id)ds baseVersions:(id)versions options:(unint64_t)options reply:(id)reply
{
  v7 = _Block_copy(reply);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v8 = sub_1CF9E6D48();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;

  sub_1CF922488(v8, options, sub_1CF067718, v9);

  v8, v10, v11, v12, v13, v14, v15, v16;
}

- (id)performActionWithIdentifier:(id)identifier onItemsWithIdentifiers:(id)identifiers domainIdentifier:(id)domainIdentifier completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v11 = sub_1CF9E6D48();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  domainIdentifierCopy = domainIdentifier;

  v14 = sub_1CF923210(v8, v10, v11, domainIdentifierCopy, sub_1CF067710, v12);

  v10, v15, v16, v17, v18, v19, v20, v21;
  v11, v22, v23, v24, v25, v26, v27, v28;

  return v14;
}

- (void)updateIgnoreStateOfItemWithIdentifiers:(id)identifiers ignoreState:(BOOL)state completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v8 = sub_1CF9E6D48();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF92750C;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = self;
  *(v11 + 32) = state;
  *(v11 + 40) = sub_1CF92750C;
  *(v11 + 48) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF927514;
  *(v12 + 24) = v10;
  swift_retain_n();
  swift_retain_n();

  sub_1CEFD4024("updateIgnoreStateOfItem(withIdentifiers:ignoreState:completionHandler:)", 71, 2, sub_1CF927554, v12, sub_1CF927544, v11);
}

@end