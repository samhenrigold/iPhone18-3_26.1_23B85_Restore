@interface IMAssociatedStickerChatItem
- (id)_initWithItem:(id)item sender:(id)sender transferGUID:(id)d;
- (id)commSafetyMessageGUID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)stickerPositionVersion;
- (void)_refreshGeometryDescriptorFromStickerUserInfo;
@end

@implementation IMAssociatedStickerChatItem

- (id)commSafetyMessageGUID
{
  message = [(IMAssociatedMessageChatItem *)self message];
  guid = [message guid];

  return guid;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMAssociatedStickerChatItem;
  v4 = [(IMTranscriptChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"[[%@] transferGUID: %@]", v4, self->_transferGUID];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  sender = [(IMAssociatedMessageChatItem *)self sender];
  v7 = [v4 _initWithItem:_item sender:sender transferGUID:self->_transferGUID];

  return v7;
}

- (id)_initWithItem:(id)item sender:(id)sender transferGUID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = IMAssociatedStickerChatItem;
  v9 = [(IMAssociatedMessageChatItem *)&v13 _initWithItem:item sender:sender];
  if (v9)
  {
    v10 = [dCopy copy];
    v11 = v9[20];
    v9[20] = v10;

    [v9 _refreshGeometryDescriptorFromStickerUserInfo];
  }

  return v9;
}

- (void)_refreshGeometryDescriptorFromStickerUserInfo
{
  v3 = +[IMFileTransferCenter sharedInstance];
  v4 = [v3 transferForGUID:self->_transferGUID];

  if ([v4 isSticker])
  {
    stickerUserInfo = [v4 stickerUserInfo];
    v6 = [stickerUserInfo objectForKey:*MEMORY[0x1E69A7C60]];
    v7 = v6;
    if (v6)
    {
      unsignedIntValue = [v6 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }

    v8 = [stickerUserInfo objectForKey:*MEMORY[0x1E69A7C50]];
    v9 = v8;
    if (v8)
    {
      unsignedIntValue2 = [v8 unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
    }

    v10 = [stickerUserInfo objectForKey:*MEMORY[0x1E69A7C68]];
    v11 = v10;
    v12 = 0.0;
    v13 = 0.0;
    if (v10)
    {
      [v10 floatValue];
      v13 = v14;
    }

    v15 = [stickerUserInfo objectForKey:*MEMORY[0x1E69A7CC8]];
    v16 = v15;
    if (v15)
    {
      [v15 floatValue];
      v12 = v17;
    }

    v18 = [stickerUserInfo objectForKey:*MEMORY[0x1E69A7CD0]];
    v19 = v18;
    v20 = 0.0;
    v21 = 0.0;
    if (v18)
    {
      [v18 floatValue];
      v21 = v22;
    }

    v23 = [stickerUserInfo objectForKey:*MEMORY[0x1E69A7C78]];
    v24 = v23;
    if (v23)
    {
      [v23 floatValue];
      v20 = v25;
    }

    v26 = [stickerUserInfo objectForKey:*MEMORY[0x1E69A7C70]];
    v27 = v26;
    if (v26)
    {
      [v26 floatValue];
      v29 = v28;
    }

    else
    {
      v29 = 0.0;
    }

    v32[0] = unsignedIntValue;
    v32[1] = unsignedIntValue2;
    *&v32[2] = v13;
    *&v32[3] = v12;
    *&v32[4] = v21;
    *&v32[5] = v20;
    *&v32[6] = v29;
    [(IMAssociatedMessageChatItem *)self _setGeometryDescriptor:v32];
  }
}

- (unint64_t)stickerPositionVersion
{
  v3 = +[IMFileTransferCenter sharedInstance];
  v4 = [v3 transferForGUID:self->_transferGUID];

  if ([v4 isSticker])
  {
    stickerUserInfo = [v4 stickerUserInfo];
    v6 = [stickerUserInfo valueForKey:*MEMORY[0x1E69A7CB8]];
    unsignedIntValue = [v6 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntValue;
}

@end