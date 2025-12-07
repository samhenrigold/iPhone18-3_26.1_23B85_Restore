@interface BlastDoorFileTransferAttribute
- (BlastDoorFileTransferAttribute)init;
- (BlastDoorFileTransferAttributeAttachmentSubtypeWrapper)attachmentSubtype;
- (BlastDoorFileTransferAttribute_ImageInfo)imageInfo;
- (NSArray)attachments;
- (NSNumber)legacyAnimoji;
- (NSString)description;
- (NSString)name;
- (unint64_t)datasize;
- (void)setAttachmentSubtype:(id)subtype;
- (void)setAttachments:(id)attachments;
- (void)setDatasize:(unint64_t)datasize;
- (void)setName:(id)name;
@end

@implementation BlastDoorFileTransferAttribute

- (NSArray)attachments
{
  swift_beginAccess();
  type metadata accessor for _ObjCFileTransferAttribute_AttachmentInfoWrapper(0);

  v2 = sub_2146D98E8();

  return v2;
}

- (void)setAttachments:(id)attachments
{
  type metadata accessor for _ObjCFileTransferAttribute_AttachmentInfoWrapper(0);
  v4 = sub_2146D9918();
  v5 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachments;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BlastDoorFileTransferAttribute_ImageInfo)imageInfo
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_imageInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (BlastDoorFileTransferAttributeAttachmentSubtypeWrapper)attachmentSubtype
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAttachmentSubtype:(id)subtype
{
  v5 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = subtype;
  subtypeCopy = subtype;
}

- (NSString)name
{
  swift_beginAccess();

  v2 = sub_2146D9588();

  return v2;
}

- (void)setName:(id)name
{
  v4 = sub_2146D95B8();
  v6 = v5;
  v7 = (self + OBJC_IVAR___BlastDoorFileTransferAttribute_name);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (unint64_t)datasize
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_datasize;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDatasize:(unint64_t)datasize
{
  v5 = OBJC_IVAR___BlastDoorFileTransferAttribute_datasize;
  swift_beginAccess();
  *(self + v5) = datasize;
}

- (NSNumber)legacyAnimoji
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji;
  swift_beginAccess();
  return *(self + v3);
}

- (NSString)description
{
  selfCopy = self;
  sub_214666BC4();

  v3 = sub_2146D9588();

  return v3;
}

- (BlastDoorFileTransferAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end