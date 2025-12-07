@interface KNPlaceholderInfo
+ (Class)classForUnarchiver:(id)unarchiver;
- (BOOL)isEmpty;
- (id)copyAsShapeInfoWithContext:(id)context;
- (id)defaultInstructionalText;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNPlaceholderInfo

- (id)copyAsShapeInfoWithContext:(id)context
{
  contextCopy = context;
  textStorage = [(KNPlaceholderInfo *)self textStorage];
  v6 = [textStorage copyWithContext:contextCopy];

  pathSource = [(KNPlaceholderInfo *)self pathSource];
  v8 = [pathSource copy];

  geometry = [(KNPlaceholderInfo *)self geometry];
  v10 = [geometry copy];

  v11 = objc_alloc(MEMORY[0x277D80F00]);
  shapeStyle = [(KNPlaceholderInfo *)self shapeStyle];
  v13 = [v11 initWithContext:contextCopy geometry:v10 style:shapeStyle pathSource:v8 wpStorage:v6];

  hyperlinkURL = [(KNPlaceholderInfo *)self hyperlinkURL];
  [v13 setHyperlinkURL:hyperlinkURL];

  accessibilityDescription = [(KNPlaceholderInfo *)self accessibilityDescription];
  [v13 setAccessibilityDescription:accessibilityDescription];

  comment = [(KNPlaceholderInfo *)self comment];
  v17 = comment;
  if (comment)
  {
    storage = [comment storage];
    v19 = [storage copyWithContext:contextCopy];

    v20 = [objc_alloc(MEMORY[0x277D80218]) initWithParent:v13 storage:v19];
    [v13 setComment:v20];
  }

  titleInfoIgnoringVisibility = [(KNPlaceholderInfo *)self titleInfoIgnoringVisibility];
  v22 = titleInfoIgnoringVisibility;
  if (titleInfoIgnoringVisibility)
  {
    replicateForReinsertion = [titleInfoIgnoringVisibility replicateForReinsertion];
    [v13 setTitle:replicateForReinsertion];
    [v13 setTitleHidden:{-[KNPlaceholderInfo titleHidden](self, "titleHidden")}];
  }

  captionInfoIgnoringVisibility = [(KNPlaceholderInfo *)self captionInfoIgnoringVisibility];
  v25 = captionInfoIgnoringVisibility;
  if (captionInfoIgnoringVisibility)
  {
    replicateForReinsertion2 = [captionInfoIgnoringVisibility replicateForReinsertion];
    [v13 setCaption:replicateForReinsertion2];
    [v13 setCaptionHidden:{-[KNPlaceholderInfo captionHidden](self, "captionHidden")}];
  }

  return v13;
}

- (id)defaultInstructionalText
{
  documentRoot = [(KNPlaceholderInfo *)self documentRoot];
  documentLocale = [documentRoot documentLocale];

  v4 = [documentLocale localizedStringForKey:@"Double-tap to edit" value:&stru_2884D8E20 table:@"Keynote"];

  return v4;
}

- (BOOL)isEmpty
{
  textStorage = [(KNPlaceholderInfo *)self textStorage];
  v3 = [textStorage length] == 0;

  return v3;
}

+ (Class)classForUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = [unarchiverCopy messageWithDescriptor:off_2812EA908[18]];

  if (*(v5 + 32) == 1 || [unarchiverCopy messageType] == 12 || (*(v5 + 32) - 2) <= 2)
  {
    self = objc_opt_class();
  }

  selfCopy = self;

  return self;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[18]];

  [(KNPlaceholderInfo *)self loadFromArchive:v4 unarchiver:unarchiverCopy];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275D6DFBC descriptor:off_2812EA908[18]];

  [(KNPlaceholderInfo *)self saveToArchive:v4 archiver:archiverCopy];
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = MEMORY[0x277D81070];
  }

  v16.receiver = self;
  v16.super_class = KNPlaceholderInfo;
  [(KNPlaceholderInfo *)&v16 loadFromArchive:v7 unarchiver:unarchiverCopy];
  hasPreUFFVersion = [unarchiverCopy hasPreUFFVersion];
  preUFFVersion = [unarchiverCopy preUFFVersion];
  v10 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v11 = [v10 messageWithDescriptor:off_2812EA908[18]];

  v12 = *(v11 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_275D6DC90;
  v13[3] = &unk_27A698148;
  v15 = hasPreUFFVersion;
  v13[4] = self;
  v13[5] = preUFFVersion;
  v14 = v12;
  [v10 addFinalizeHandler:v13];
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_275D6DF2C;
  v9[3] = &unk_27A697C88;
  archiveCopy = archive;
  v7 = archiverCopy;
  v10 = v7;
  selfCopy = self;
  [v7 pushScopeForField:1 message:archive usingBlock:v9];
  kind = [(KNPlaceholderInfo *)self kind];
  *(archive + 4) |= 2u;
  *(archive + 8) = kind;
}

@end