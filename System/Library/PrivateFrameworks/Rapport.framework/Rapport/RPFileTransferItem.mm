@interface RPFileTransferItem
- (RPFileTransferItem)init;
- (id)descriptionWithLevel:(int)level;
@end

@implementation RPFileTransferItem

- (RPFileTransferItem)init
{
  v6.receiver = self;
  v6.super_class = RPFileTransferItem;
  v2 = [(RPFileTransferItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_fileSize = -1;
    v4 = v2;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  v10 = 0;
  itemURL = self->_itemURL;
  v6 = [(NSDictionary *)self->_metadata count];
  v7 = 100;
  if (level > 49)
  {
    v7 = 8;
  }

  NSAppendPrintF(&v10, "RPFileTransferItem: URL %{mask}, Metadata %d item(s), SHA-256 %.*@", itemURL, v6, v7, self->_sha256HashData);
  v8 = v10;

  return v8;
}

@end