@interface IMPhotoAttachmentStatusChatItem
+ (id)_guidForItem:(id)item;
- (BOOL)_isEqualToGuid:(id)guid numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFromMe;
- (BOOL)wouldBeEqualIfInitializedWithItem:(id)item numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets;
- (id)_initWithItem:(id)item numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation IMPhotoAttachmentStatusChatItem

+ (id)_guidForItem:(id)item
{
  guid = [item guid];
  v4 = sub_1A83AC604();

  return v4;
}

- (id)_initWithItem:(id)item numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = IMPhotoAttachmentStatusChatItem;
  v11 = [(IMChatItem *)&v14 _initWithItem:itemCopy];
  if (v11)
  {
    v12 = [objc_opt_class() _guidForItem:itemCopy];
    [v11 _setGUID:v12];
    v11[7] = photos;
    v11[8] = videos;
    v11[9] = assets;
  }

  return v11;
}

- (unint64_t)hash
{
  guid = [(IMTranscriptChatItem *)self guid];
  v4 = [guid hash];

  return v4 ^ (4 * self->_numberOfPhotos) ^ (16 * self->_numberOfVideos) ^ (self->_numberOfSavedAssets << 6);
}

- (BOOL)_isEqualToGuid:(id)guid numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets
{
  guidCopy = guid;
  guid = [(IMTranscriptChatItem *)self guid];
  v12 = guidCopy;
  v13 = v12;
  if (guid == v12)
  {
  }

  else
  {
    if (!v12 || !guid)
    {

LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }

    v14 = [guid isEqualToString:v12];

    if (!v14)
    {
      goto LABEL_11;
    }
  }

  if (self->_numberOfPhotos != photos || self->_numberOfVideos != videos)
  {
    goto LABEL_11;
  }

  v15 = self->_numberOfSavedAssets == assets;
LABEL_12:

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    guid = [equalCopy guid];
    v6 = -[IMPhotoAttachmentStatusChatItem _isEqualToGuid:numberOfPhotos:numberOfVideos:numberOfSavedAssets:](self, "_isEqualToGuid:numberOfPhotos:numberOfVideos:numberOfSavedAssets:", guid, [equalCopy numberOfPhotos], objc_msgSend(equalCopy, "numberOfVideos"), objc_msgSend(equalCopy, "numberOfSavedAssets"));
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMPhotoAttachmentStatusChatItem;
  v4 = [(IMTranscriptChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"[[%@] numberOfPhotos: %tu, numberOfVideos: %tu, numberOfSavedAssets: %tu]", v4, self->_numberOfPhotos, self->_numberOfVideos, self->_numberOfSavedAssets];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item numberOfPhotos:self->_numberOfPhotos numberOfVideos:self->_numberOfVideos numberOfSavedAssets:self->_numberOfSavedAssets];

  return v6;
}

- (BOOL)isFromMe
{
  _item = [(IMChatItem *)self _item];
  isFromMe = [_item isFromMe];

  return isFromMe;
}

- (BOOL)wouldBeEqualIfInitializedWithItem:(id)item numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets
{
  itemCopy = item;
  v11 = [objc_opt_class() _guidForItem:itemCopy];

  LOBYTE(assets) = [(IMPhotoAttachmentStatusChatItem *)self _isEqualToGuid:v11 numberOfPhotos:photos numberOfVideos:videos numberOfSavedAssets:assets];
  return assets;
}

@end