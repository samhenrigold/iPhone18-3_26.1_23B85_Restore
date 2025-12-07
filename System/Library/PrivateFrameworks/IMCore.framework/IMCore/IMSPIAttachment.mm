@interface IMSPIAttachment
- (IMSPIAttachment)initWithGuid:(id)guid fileUrl:(id)url transferState:(int64_t)state uti:(id)uti isSticker:(BOOL)sticker isOutgoing:(BOOL)outgoing stickerUserInfo:(id)info attributionInfo:(id)self0 creationDate:(id)self1 adaptiveImageGlyphContentIdentifier:(id)self2 adaptiveImageGlyphContentDescription:(id)self3;
- (id)description;
@end

@implementation IMSPIAttachment

- (IMSPIAttachment)initWithGuid:(id)guid fileUrl:(id)url transferState:(int64_t)state uti:(id)uti isSticker:(BOOL)sticker isOutgoing:(BOOL)outgoing stickerUserInfo:(id)info attributionInfo:(id)self0 creationDate:(id)self1 adaptiveImageGlyphContentIdentifier:(id)self2 adaptiveImageGlyphContentDescription:(id)self3
{
  guidCopy = guid;
  urlCopy = url;
  utiCopy = uti;
  infoCopy = info;
  attributionInfoCopy = attributionInfo;
  dateCopy = date;
  identifierCopy = identifier;
  descriptionCopy = description;
  v45.receiver = self;
  v45.super_class = IMSPIAttachment;
  v25 = [(IMSPIAttachment *)&v45 init];
  if (v25)
  {
    v26 = [guidCopy copy];
    guid = v25->_guid;
    v25->_guid = v26;

    v28 = [urlCopy copy];
    fileUrl = v25->_fileUrl;
    v25->_fileUrl = v28;

    v25->_fileTransferState = state;
    v30 = [utiCopy copy];
    uti = v25->_uti;
    v25->_uti = v30;

    v25->_isSticker = sticker;
    v25->_isOutgoing = outgoing;
    v32 = [infoCopy copy];
    stickerUserInfo = v25->_stickerUserInfo;
    v25->_stickerUserInfo = v32;

    v34 = [attributionInfoCopy copy];
    attributionInfo = v25->_attributionInfo;
    v25->_attributionInfo = v34;

    v36 = [dateCopy copy];
    creationDate = v25->_creationDate;
    v25->_creationDate = v36;

    v38 = [identifierCopy copy];
    adaptiveImageGlyphContentIdentifier = v25->_adaptiveImageGlyphContentIdentifier;
    v25->_adaptiveImageGlyphContentIdentifier = v38;

    v40 = [descriptionCopy copy];
    adaptiveImageGlyphContentDescription = v25->_adaptiveImageGlyphContentDescription;
    v25->_adaptiveImageGlyphContentDescription = v40;
  }

  return v25;
}

- (id)description
{
  v2 = @"NO";
  if (self->_isSticker)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_isOutgoing)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"IMSPIAttachment: %p [guid: %@ FileUrl: %@ TransferState: %tu uti: %@ isSticker: %@ isOutgoing: %@ attributionInfo: %@ creationDate: %@]", self, self->_guid, self->_fileUrl, self->_fileTransferState, self->_uti, v3, v2, self->_attributionInfo, self->_creationDate];
}

@end