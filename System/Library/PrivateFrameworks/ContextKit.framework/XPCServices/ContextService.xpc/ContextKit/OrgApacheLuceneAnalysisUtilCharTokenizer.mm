@interface OrgApacheLuceneAnalysisUtilCharTokenizer
- (BOOL)incrementToken;
- (void)dealloc;
- (void)end;
- (void)reset;
@end

@implementation OrgApacheLuceneAnalysisUtilCharTokenizer

- (BOOL)incrementToken
{
  [(OrgApacheLuceneUtilAttributeSource *)self clearAttributes];
  v25 = 72;
  termAtt = self->termAtt_;
  if (!termAtt)
  {
    goto LABEL_25;
  }

  buffer = [(OrgApacheLuceneAnalysisTokenattributesCharTermAttribute *)termAtt buffer];
  v4 = 0;
  v26 = -1;
  v28 = -1;
  while (1)
  {
    dataLen = self->dataLen_;
    if (self->bufferIndex_ < dataLen)
    {
      goto LABEL_8;
    }

    self->offset_ += dataLen;
    charUtils = self->charUtils_;
    if (!charUtils)
    {
      goto LABEL_25;
    }

    [(OrgApacheLuceneAnalysisUtilCharacterUtils *)charUtils fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:self->ioBuffer_ withJavaIoReader:self->super.input_];
    ioBuffer = self->ioBuffer_;
    if (!ioBuffer)
    {
      goto LABEL_25;
    }

    if (![(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)ioBuffer getLength])
    {
      break;
    }

    self->dataLen_ = [(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)self->ioBuffer_ getLength];
    self->bufferIndex_ = 0;
LABEL_8:
    v8 = self->charUtils_;
    if (!v8)
    {
      goto LABEL_25;
    }

    v9 = self->ioBuffer_;
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = [(OrgApacheLuceneAnalysisUtilCharacterUtils *)v8 codePointAtWithCharArray:[(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)v9 getBuffer] withInt:self->bufferIndex_ withInt:[(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)self->ioBuffer_ getLength]];
    v12 = JavaLangCharacter_charCountWithInt_(v10, v11);
    self->bufferIndex_ += v12;
    if ([(OrgApacheLuceneAnalysisUtilCharTokenizer *)self isTokenCharWithInt:v10])
    {
      if (v4)
      {
        if (!buffer)
        {
          goto LABEL_25;
        }

        if (v4 >= buffer[2] - 1)
        {
          buffer = [*(&self->super.super.super.super.isa + v25) resizeBufferWithInt:(v4 + 2)];
        }

        v13 = v28;
      }

      else
      {
        v13 = self->offset_ - v12 + self->bufferIndex_;
        v26 = v13;
      }

      v28 = v13 + v12;
      v14 = [(OrgApacheLuceneAnalysisUtilCharTokenizer *)self normalizeWithInt:v10, v25];
      v4 = JavaLangCharacter_toCharsWithInt_withCharArray_withInt_(v14, buffer, v4, v15, v16, v17, v18, v19) + v4;
      if (v4 > 254)
      {
        goto LABEL_22;
      }
    }

    else if (v4 >= 1)
    {
      goto LABEL_22;
    }
  }

  self->dataLen_ = 0;
  if (v4 > 0)
  {
LABEL_22:
    [*(&self->super.super.super.super.isa + v25) setLengthWithInt:{v4, v25}];
    offsetAtt = self->offsetAtt_;
    if (offsetAtt)
    {
      v21 = [(OrgApacheLuceneAnalysisTokenizer *)self correctOffsetWithInt:v26];
      v22 = [(OrgApacheLuceneAnalysisTokenizer *)self correctOffsetWithInt:v28];
      self->finalOffset_ = v22;
      [(OrgApacheLuceneAnalysisTokenattributesOffsetAttribute *)offsetAtt setOffsetWithInt:v21 withInt:v22];
      return 1;
    }

LABEL_25:
    JreThrowNullPointerException();
  }

  v24 = [(OrgApacheLuceneAnalysisTokenizer *)self correctOffsetWithInt:self->offset_];
  result = 0;
  self->finalOffset_ = v24;
  return result;
}

- (void)end
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneAnalysisUtilCharTokenizer;
  [(OrgApacheLuceneAnalysisTokenStream *)&v4 end];
  offsetAtt = self->offsetAtt_;
  if (!offsetAtt)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneAnalysisTokenattributesOffsetAttribute *)offsetAtt setOffsetWithInt:self->finalOffset_ withInt:self->finalOffset_];
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneAnalysisUtilCharTokenizer;
  [(OrgApacheLuceneAnalysisTokenizer *)&v4 reset];
  self->bufferIndex_ = 0;
  self->offset_ = 0;
  self->dataLen_ = 0;
  self->finalOffset_ = 0;
  ioBuffer = self->ioBuffer_;
  if (!ioBuffer)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)ioBuffer reset];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisUtilCharTokenizer;
  [(OrgApacheLuceneAnalysisTokenizer *)&v3 dealloc];
}

@end