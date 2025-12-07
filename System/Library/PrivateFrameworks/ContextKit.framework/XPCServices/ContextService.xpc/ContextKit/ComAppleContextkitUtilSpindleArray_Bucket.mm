@interface ComAppleContextkitUtilSpindleArray_Bucket
- (BOOL)skipToEntryIdWithComAppleContextkitUtilSpindleArray_State:(id)state withInt:(int)int;
- (void)completeEntryWithComAppleContextkitUtilSpindleArray_State:(id)state;
- (void)dealloc;
@end

@implementation ComAppleContextkitUtilSpindleArray_Bucket

- (void)completeEntryWithComAppleContextkitUtilSpindleArray_State:(id)state
{
  self->startOffset_ = self->bytesRead_;
  do
  {
    uncompressed = self->uncompressed_;
    if (!uncompressed)
    {
      JreThrowNullPointerException();
    }

    bytesRead = self->bytesRead_;
    self->bytesRead_ = bytesRead + 1;
    size = uncompressed->super.size_;
    if (bytesRead < 0 || bytesRead >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, bytesRead);
    }
  }

  while (*(&uncompressed->super.size_ + bytesRead + 4));
  self->entryLength_ = self->bytesRead_ - self->startOffset_;
}

- (BOOL)skipToEntryIdWithComAppleContextkitUtilSpindleArray_State:(id)state withInt:(int)int
{
  if (self->currentEntryId_ < int)
  {
    while (1)
    {
      uncompressed = self->uncompressed_;
      if (!uncompressed)
      {
LABEL_20:
        JreThrowNullPointerException();
      }

      bytesRead = self->bytesRead_;
      self->bytesRead_ = bytesRead + 1;
      size = uncompressed->super.size_;
      if (bytesRead < 0 || bytesRead >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, bytesRead);
      }

      if (!*(&uncompressed->super.size_ + bytesRead + 4))
      {
        v8 = self->currentEntryId_ + 1;
        self->currentEntryId_ = v8;
        if (v8 >= int)
        {
          break;
        }
      }
    }
  }

  v9 = self->bytesRead_;
  self->startOffset_ = v9;
  if (v9 >= self->numBytesDecompressed_)
  {
    result = 0;
    v13 = v9;
  }

  else
  {
    do
    {
      v10 = self->uncompressed_;
      if (!v10)
      {
        goto LABEL_20;
      }

      v11 = v10->super.size_;
      if ((v9 & 0x80000000) != 0 || v9 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v9);
      }

      result = *(&v10->super.size_ + v9 + 4) == 0;
      if (!*(&v10->super.size_ + v9 + 4))
      {
        break;
      }

      v9 = (v9 + 1);
      self->bytesRead_ = v9;
    }

    while (v9 < self->numBytesDecompressed_);
    v13 = v9;
    LODWORD(v9) = self->startOffset_;
  }

  self->entryLength_ = v13 - v9;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilSpindleArray_Bucket;
  [(ComAppleContextkitUtilSpindleArray_Bucket *)&v3 dealloc];
}

@end