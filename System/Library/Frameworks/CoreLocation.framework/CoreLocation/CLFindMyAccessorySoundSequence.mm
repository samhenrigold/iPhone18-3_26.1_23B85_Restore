@interface CLFindMyAccessorySoundSequence
+ (id)defaultSequence;
+ (id)rangingSequence;
+ (id)shortSequence;
- (CLFindMyAccessorySoundSequence)initWithCoder:(id)coder;
- (CLFindMyAccessorySoundSequence)initWithType:(unint64_t)type encodedSequence:(id)sequence;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addSoundBlockWithAsset:(unint64_t)asset loopCount:(unsigned __int8)count duration:(unsigned __int16)duration;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessorySoundSequence

- (CLFindMyAccessorySoundSequence)initWithType:(unint64_t)type encodedSequence:(id)sequence
{
  v10.receiver = self;
  v10.super_class = CLFindMyAccessorySoundSequence;
  v6 = [(CLFindMyAccessorySoundSequence *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = type;
    if (sequence)
    {
      sequenceCopy = sequence;
    }

    else
    {
      sequenceCopy = objc_alloc_init(MEMORY[0x1E695DF88]);
    }

    v7->_encodedSequence = sequenceCopy;
  }

  return v7;
}

+ (id)defaultSequence
{
  v2 = [CLFindMyAccessorySoundSequence alloc];
  v5 = objc_msgSend_initWithType_(v2, v3, 1, v4);
  objc_msgSend_addSoundBlockWithAsset_loopCount_duration_(v5, v6, 4, 1, 0);
  objc_msgSend_addSoundBlockWithAsset_loopCount_duration_(v5, v7, 5, 2, 0);

  return v5;
}

+ (id)shortSequence
{
  v2 = [CLFindMyAccessorySoundSequence alloc];
  v5 = objc_msgSend_initWithType_(v2, v3, 0, v4);

  return v5;
}

+ (id)rangingSequence
{
  v2 = [CLFindMyAccessorySoundSequence alloc];
  v5 = objc_msgSend_initWithType_(v2, v3, 0, v4);
  objc_msgSend_addSoundBlockWithAsset_loopCount_duration_(v5, v6, 4, 1, 0);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessorySoundSequence;
  [(CLFindMyAccessorySoundSequence *)&v3 dealloc];
}

- (void)addSoundBlockWithAsset:(unint64_t)asset loopCount:(unsigned __int8)count duration:(unsigned __int16)duration
{
  countCopy = count;
  durationCopy = duration;
  assetCopy = asset;
  objc_msgSend_appendBytes_length_(self->_encodedSequence, a2, &assetCopy, 1);
  objc_msgSend_appendBytes_length_(self->_encodedSequence, v6, &countCopy, 1);
  objc_msgSend_appendBytes_length_(self->_encodedSequence, v7, &durationCopy, 2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CLFindMyAccessorySoundSequence alloc];
  type = self->_type;
  v9 = objc_msgSend_mutableCopy(self->_encodedSequence, v6, v7, v8);

  return MEMORY[0x1EEE66B58](v4, sel_initWithType_encodedSequence_, type, v9);
}

- (CLFindMyAccessorySoundSequence)initWithCoder:(id)coder
{
  v6 = objc_msgSend_decodeIntegerForKey_(coder, a2, @"Type", v3);
  v7 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"EncodedSequence");

  return MEMORY[0x1EEE66B58](self, sel_initWithType_encodedSequence_, v6, v9);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_type, @"Type");
  encodedSequence = self->_encodedSequence;

  objc_msgSend_encodeObject_forKey_(coder, v5, encodedSequence, @"EncodedSequence");
}

@end