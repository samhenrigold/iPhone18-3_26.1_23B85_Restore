@interface KNArchivedUIState
- (KNArchivedUIState)initWithUIState:(id)state context:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNArchivedUIState

- (KNArchivedUIState)initWithUIState:(id)state context:(id)context
{
  stateCopy = state;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = KNArchivedUIState;
  v8 = [(KNArchivedUIState *)&v12 initWithContext:contextCopy];
  if (v8)
  {
    v9 = [stateCopy copy];
    uiState = v8->_uiState;
    v8->_uiState = v9;
  }

  return v8;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[40]];

  v5 = objc_alloc_init(KNUIState);
  uiState = self->_uiState;
  self->_uiState = v5;

  v7 = self->_uiState;
  context = [(KNArchivedUIState *)self context];
  [(KNUIState *)v7 loadFromArchive:v4 unarchiver:unarchiverCopy context:context];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275D906AC descriptor:off_2812EA908[40]];

  uiState = self->_uiState;
  context = [(KNArchivedUIState *)self context];
  [(KNUIState *)uiState saveToArchive:v4 archiver:archiverCopy context:context];
}

@end