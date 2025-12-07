@interface KNClassicThemeRecord
- (KNClassicThemeRecord)initWithContext:(id)context;
- (void)addMaster:(id)master;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setStylesheetRecord:(id)record;
- (void)setUUID:(id)d;
@end

@implementation KNClassicThemeRecord

- (void)setUUID:(id)d
{
  dCopy = d;
  if (self->_UUID != dCopy)
  {
    v6 = dCopy;
    [(KNClassicThemeRecord *)self willModify];
    v5 = [(NSString *)v6 copy];

    objc_storeStrong(&self->_UUID, v5);
    dCopy = v5;
  }
}

- (void)setStylesheetRecord:(id)record
{
  recordCopy = record;
  if (self->_stylesheetRecord != recordCopy)
  {
    [(KNClassicThemeRecord *)self willModify];
    objc_storeStrong(&self->_stylesheetRecord, record);
  }
}

- (KNClassicThemeRecord)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = KNClassicThemeRecord;
  v5 = [(KNClassicThemeRecord *)&v9 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    masters = v5->_masters;
    v5->_masters = v6;
  }

  return v5;
}

- (void)addMaster:(id)master
{
  masterCopy = master;
  [(KNClassicThemeRecord *)self willModify];
  [(NSMutableArray *)self->_masters addObject:masterCopy];
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(archive + 4);
  if (v7)
  {
    0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 6) & 0xFFFFFFFFFFFFFFFELL];
    UUID = self->_UUID;
    self->_UUID = 0xFFFFFFFFFFFFFFFELL;

    v7 = *(archive + 4);
  }

  if ((v7 & 2) != 0)
  {
    v10 = *(archive + 7);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_275DC7974;
    v14[3] = &unk_27A697FC8;
    v14[4] = self;
    v11 = unarchiverCopy;
    [v11 readReferenceMessage:v10 class:objc_opt_class() protocol:0 completion:v14];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_275DC7980;
  v13[3] = &unk_27A697A10;
  v13[4] = self;
  v12 = unarchiverCopy;
  [v12 readRepeatedReferenceMessage:archive + 24 class:objc_opt_class() protocol:0 completion:v13];
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  uUID = [(KNClassicThemeRecord *)self UUID];
  v7 = [uUID length];

  if (v7)
  {
    uUID2 = [(KNClassicThemeRecord *)self UUID];
    sub_275DC7AF0(archive, [uUID2 UTF8String]);
  }

  stylesheetRecord = [(KNClassicThemeRecord *)self stylesheetRecord];

  if (stylesheetRecord)
  {
    stylesheetRecord2 = [(KNClassicThemeRecord *)self stylesheetRecord];
    *(archive + 4) |= 2u;
    v11 = *(archive + 7);
    if (!v11)
    {
      v12 = *(archive + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C8F050](v12);
      *(archive + 7) = v11;
    }

    [archiverCopy setStrongReference:stylesheetRecord2 message:v11];
  }

  masters = [(KNClassicThemeRecord *)self masters];
  [archiverCopy setStrongReferenceArray:masters message:archive + 24];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[24]];

  [(KNClassicThemeRecord *)self loadFromArchive:v4 unarchiver:unarchiverCopy];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275DC7DD4 descriptor:off_2812EA908[24]];

  [(KNClassicThemeRecord *)self saveToArchive:v4 archiver:archiverCopy];
}

@end