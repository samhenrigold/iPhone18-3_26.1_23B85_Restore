@interface KNSoundtrack
- (KNSoundtrack)initWithContext:(id)context;
- (KNSoundtrack)initWithSoundtrackMedia:(id)media context:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setMedia:(id)media;
- (void)setMode:(int64_t)mode;
- (void)setVolume:(float)volume;
@end

@implementation KNSoundtrack

- (void)setVolume:(float)volume
{
  if (self->_volume != volume)
  {
    [(KNSoundtrack *)self willModify];
    self->_volume = volume;
  }
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    [(KNSoundtrack *)self willModify];
    self->_mode = mode;
  }
}

- (void)setMedia:(id)media
{
  mediaCopy = media;
  if (self->_media != mediaCopy)
  {
    v6 = mediaCopy;
    [(KNSoundtrack *)self willModify];
    v5 = [(NSArray *)v6 copy];

    objc_storeStrong(&self->_media, v5);
    mediaCopy = v5;
  }
}

- (KNSoundtrack)initWithContext:(id)context
{
  v7.receiver = self;
  v7.super_class = KNSoundtrack;
  v3 = [(KNSoundtrack *)&v7 initWithContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_volume = 1.0;
    media = v3->_media;
    v3->_media = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (KNSoundtrack)initWithSoundtrackMedia:(id)media context:(id)context
{
  mediaCopy = media;
  contextCopy = context;
  v8 = [(KNSoundtrack *)self initWithContext:contextCopy];
  if (v8)
  {
    v9 = [mediaCopy copy];
    media = v8->_media;
    v8->_media = v9;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  context = [(KNSoundtrack *)self context];
  v6 = [v4 initWithContext:context];

  *(v6 + 64) = self->_volume;
  *(v6 + 72) = self->_mode;
  v7 = [(NSArray *)self->_media copy];
  v8 = *(v6 + 80);
  *(v6 + 80) = v7;

  return v6;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[92]];

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 48);
    self->_volume = v6;
  }

  if ((v5 & 2) != 0)
  {
    self->_mode = *(v4 + 56);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = *(v4 + 32);
  if (v8 >= 1)
  {
    v9 = 8;
    do
    {
      v10 = [unarchiverCopy readDataReferenceMessage:*(*(v4 + 40) + v9)];
      [v7 addObject:v10];

      v9 += 8;
      --v8;
    }

    while (v8);
  }

  v11 = [v7 copy];
  media = self->_media;
  self->_media = v11;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275DC9704 descriptor:off_2812EA908[92]];

  v5 = *(v4 + 16);
  *(v4 + 48) = self->_volume;
  mode = self->_mode;
  *(v4 + 16) = v5 | 3;
  if (mode == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!mode)
  {
    v7 = 0;
  }

  *(v4 + 56) = v7;
  [archiverCopy setDataReferenceArray:self->_media message:v4 + 24];
}

@end