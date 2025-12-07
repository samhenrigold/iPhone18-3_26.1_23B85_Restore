@interface ICASDocScanSnapshotItemData
- (ICASDocScanSnapshotItemData)initWithDocScanLength:(id)length;
- (id)toDict;
@end

@implementation ICASDocScanSnapshotItemData

- (ICASDocScanSnapshotItemData)initWithDocScanLength:(id)length
{
  lengthCopy = length;
  v9.receiver = self;
  v9.super_class = ICASDocScanSnapshotItemData;
  v6 = [(ICASDocScanSnapshotItemData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_docScanLength, length);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"docScanLength";
  docScanLength = [(ICASDocScanSnapshotItemData *)self docScanLength];
  if (docScanLength)
  {
    docScanLength2 = [(ICASDocScanSnapshotItemData *)self docScanLength];
  }

  else
  {
    docScanLength2 = objc_opt_new();
  }

  v5 = docScanLength2;
  v9[0] = docScanLength2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end