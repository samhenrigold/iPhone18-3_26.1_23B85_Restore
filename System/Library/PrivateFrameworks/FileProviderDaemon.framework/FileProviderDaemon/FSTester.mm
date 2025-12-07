@interface FSTester
- (void)configureFileTreeWithLabel:(id)label atRootURL:(id)l wharfURL:(id)rL bundleBitPackageDetection:(BOOL)detection completion:(id)completion;
- (void)createItemOfKind:(int64_t)kind parentID:(int64_t)d filename:(id)filename content:(id)content isResurrected:(BOOL)resurrected uniqueFPID:(id)iD completion:(id)aBlock;
- (void)deleteItemWithHandle:(id)handle completion:(id)completion;
- (void)editItemWithHandle:(id)handle editKind:(int64_t)kind content:(id)content completion:(id)completion;
- (void)moveItemAtURL:(id)l toURL:(id)rL completion:(id)completion;
- (void)moveItemWithHandle:(id)handle underParent:(id)parent filename:(id)filename replaceTarget:(BOOL)target completion:(id)completion;
- (void)purge:(id)purge;
- (void)removeItemAtURL:(id)l completion:(id)completion;
- (void)updateMetadataWithHandle:(id)handle metadata:(id)metadata fields:(int64_t)fields completion:(id)completion;
@end

@implementation FSTester

- (void)configureFileTreeWithLabel:(id)label atRootURL:(id)l wharfURL:(id)rL bundleBitPackageDetection:(BOOL)detection completion:(id)completion
{
  detectionCopy = detection;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28[-v14];
  v16 = _Block_copy(completion);
  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;
  sub_1CF9E59D8();
  sub_1CF9E59D8();
  _Block_copy(v16);

  sub_1CF72594C(v17, v19, v15, v12, detectionCopy, self, v16);
  _Block_release(v16);
  _Block_release(v16);

  v19, v20, v21, v22, v23, v24, v25, v26;
  v27 = *(v10 + 8);
  v27(v12, v9);
  v27(v15, v9);
}

- (void)createItemOfKind:(int64_t)kind parentID:(int64_t)d filename:(id)filename content:(id)content isResurrected:(BOOL)resurrected uniqueFPID:(id)iD completion:(id)aBlock
{
  resurrectedCopy = resurrected;
  v15 = _Block_copy(aBlock);
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;
  iDCopy = iD;

  if (content)
  {
    selfCopy = self;
    iDCopy2 = iD;
    v21 = v18;
    v22 = v16;
    kindCopy = kind;
    dCopy = d;
    v25 = resurrectedCopy;
    contentCopy = content;
    content = sub_1CF9E5B88();
    v28 = v27;

    resurrectedCopy = v25;
    d = dCopy;
    kind = kindCopy;
    v16 = v22;
    v18 = v21;
    iD = iDCopy2;
    self = selfCopy;
  }

  else
  {
    v28 = 0xF000000000000000;
  }

  _Block_copy(v15);
  sub_1CF726408(kind, d, v16, v18, content, v28, resurrectedCopy, iD, self, v15);
  _Block_release(v15);
  _Block_release(v15);
  sub_1CEFE48D8(content, v28);

  v18, v29, v30, v31, v32, v33, v34, v35;
}

- (void)moveItemWithHandle:(id)handle underParent:(id)parent filename:(id)filename replaceTarget:(BOOL)target completion:(id)completion
{
  targetCopy = target;
  v12 = _Block_copy(completion);
  handleCopy = handle;

  parentCopy = parent;
  filenameCopy = filename;
  v16 = sub_1CF9E5B88();
  v18 = v17;

  if (filenameCopy)
  {
    v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  _Block_copy(v12);
  sub_1CF72826C(v16, v18, parentCopy, v19, v21, targetCopy, self, v12);
  _Block_release(v12);
  _Block_release(v12);
  v21, v22, v23, v24, v25, v26, v27, v28;
  sub_1CEFE4714(v16, v18);
}

- (void)editItemWithHandle:(id)handle editKind:(int64_t)kind content:(id)content completion:(id)completion
{
  v10 = _Block_copy(completion);
  handleCopy = handle;
  contentCopy = content;

  v13 = sub_1CF9E5B88();
  v15 = v14;

  v16 = sub_1CF9E5B88();
  v18 = v17;

  _Block_copy(v10);
  sub_1CF7288E8(v13, v15, kind, v16, v18, self, v10);
  _Block_release(v10);
  _Block_release(v10);
  sub_1CEFE4714(v16, v18);
  sub_1CEFE4714(v13, v15);
}

- (void)updateMetadataWithHandle:(id)handle metadata:(id)metadata fields:(int64_t)fields completion:(id)completion
{
  v10 = _Block_copy(completion);
  handleCopy = handle;
  metadataCopy = metadata;

  v13 = sub_1CF9E5B88();
  v15 = v14;

  v16 = sub_1CF9E5B88();
  v18 = v17;

  _Block_copy(v10);
  sub_1CF729134(v13, v15, v16, v18, fields, self, v10);
  _Block_release(v10);
  _Block_release(v10);
  sub_1CEFE4714(v16, v18);
  sub_1CEFE4714(v13, v15);
}

- (void)deleteItemWithHandle:(id)handle completion:(id)completion
{
  v6 = _Block_copy(completion);
  handleCopy = handle;

  v8 = sub_1CF9E5B88();
  v10 = v9;

  _Block_copy(v6);
  sub_1CF7299E8(v8, v10, self, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1CEFE4714(v8, v10);
}

- (void)purge:(id)purge
{
  v4 = _Block_copy(purge);
  if (*self->tester)
  {

    sub_1CF509948();

    v4[2](v4, 0);

    _Block_release(v4);
  }

  else
  {

    _Block_release(v4);
    __break(1u);
  }
}

- (void)removeItemAtURL:(id)l completion:(id)completion
{
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(completion);
  sub_1CF9E59D8();
  _Block_copy(v9);

  sub_1CF729C08(v8, v9);
  _Block_release(v9);
  _Block_release(v9);

  (*(v6 + 8))(v8, v5);
}

- (void)moveItemAtURL:(id)l toURL:(id)rL completion:(id)completion
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v13 = _Block_copy(completion);
  sub_1CF9E59D8();
  sub_1CF9E59D8();
  _Block_copy(v13);

  sub_1CF729D3C(v12, v9, v13);
  _Block_release(v13);
  _Block_release(v13);

  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
}

@end