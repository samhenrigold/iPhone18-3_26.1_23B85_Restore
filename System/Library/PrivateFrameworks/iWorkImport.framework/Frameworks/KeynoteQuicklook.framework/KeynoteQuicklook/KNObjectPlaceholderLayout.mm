@interface KNObjectPlaceholderLayout
- (id)instructionalStorageForContainedStorage:(id)storage storageKind:(unsigned __int8)kind;
@end

@implementation KNObjectPlaceholderLayout

- (id)instructionalStorageForContainedStorage:(id)storage storageKind:(unsigned __int8)kind
{
  HIDWORD(v28) = kind;
  storageCopy = storage;
  info = [(KNObjectPlaceholderLayout *)self info];
  documentRoot = [info documentRoot];
  theme = [documentRoot theme];

  objc_opt_class();
  v29 = theme;
  v9 = [theme presetOfKind:*MEMORY[0x277D80BB8] index:0];
  v10 = TSUDynamicCast();

  defaultParagraphStyle = [v10 defaultParagraphStyle];
  initialListStyle = [defaultParagraphStyle initialListStyle];
  v13 = initialListStyle;
  if (defaultParagraphStyle)
  {
    if (initialListStyle)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNObjectPlaceholderLayout instructionalStorageForContainedStorage:storageKind:]"];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNObjectPlaceholderLayout.m"];
    [v22 handleFailureInFunction:v23 file:v24 lineNumber:40 isFatal:0 description:{"invalid nil value for '%{public}s'", "paragraphStyle"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v25 = MEMORY[0x277D81150];
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNObjectPlaceholderLayout instructionalStorageForContainedStorage:storageKind:]"];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNObjectPlaceholderLayout.m"];
  [v25 handleFailureInFunction:v26 file:v27 lineNumber:41 isFatal:0 description:{"invalid nil value for '%{public}s'", "listStyle"}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_3:
  v14 = objc_alloc(MEMORY[0x277D80F28]);
  context = [storageCopy context];
  info2 = [(KNObjectPlaceholderLayout *)self info];
  instructionalText = [info2 instructionalText];
  stylesheet = [storageCopy stylesheet];
  v19 = [storageCopy writingDirectionForParagraphAtCharIndex:0];

  LODWORD(v28) = v19;
  v20 = [v14 initWithContext:context string:instructionalText kind:HIDWORD(v28) stylesheet:stylesheet paragraphStyle:defaultParagraphStyle listStyle:v13 section:0 columnStyle:0 paragraphDirection:v28];

  return v20;
}

@end