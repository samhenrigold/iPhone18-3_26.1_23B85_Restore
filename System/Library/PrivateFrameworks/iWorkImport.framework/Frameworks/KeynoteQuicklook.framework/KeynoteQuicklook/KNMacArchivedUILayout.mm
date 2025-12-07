@interface KNMacArchivedUILayout
- (KNMacArchivedUILayout)initWithUILayout:(id)layout context:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNMacArchivedUILayout

- (KNMacArchivedUILayout)initWithUILayout:(id)layout context:(id)context
{
  layoutCopy = layout;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = KNMacArchivedUILayout;
  v8 = [(KNMacArchivedUILayout *)&v12 initWithContext:contextCopy];
  if (v8)
  {
    v9 = [layoutCopy copy];
    uiLayout = v8->_uiLayout;
    v8->_uiLayout = v9;
  }

  return v8;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[38]];

  context = [(KNMacArchivedUILayout *)self context];
  v6 = [KNMacUILayout uiLayoutFromArchive:v4 unarchiver:unarchiverCopy context:context];
  uiLayout = self->_uiLayout;
  self->_uiLayout = v6;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275DCD620 descriptor:off_2812EA908[38]];

  [(KNMacUILayout *)self->_uiLayout saveToArchive:v4 archiver:archiverCopy];
}

@end