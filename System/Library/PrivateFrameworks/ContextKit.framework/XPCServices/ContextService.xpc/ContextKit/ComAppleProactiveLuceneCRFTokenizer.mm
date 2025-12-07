@interface ComAppleProactiveLuceneCRFTokenizer
- (BOOL)addToChunksWithInt:(int)int withInt:(int)withInt;
- (BOOL)incrementToken;
- (void)dealloc;
- (void)end;
- (void)reset;
@end

@implementation ComAppleProactiveLuceneCRFTokenizer

- (BOOL)addToChunksWithInt:(int)int withInt:(int)withInt
{
  chunks = self->chunks_;
  if (!chunks)
  {
    JreThrowNullPointerException();
  }

  v6[0] = int;
  v6[1] = withInt;
  [(JavaUtilList *)chunks addWithId:[IOSIntArray arrayWithInts:v6 count:2]];
  return 1;
}

- (void)reset
{
  v9.receiver = self;
  v9.super_class = ComAppleProactiveLuceneCRFTokenizer;
  [(OrgApacheLuceneAnalysisTokenizer *)&v9 reset];
  v3 = [IOSCharArray arrayWithLength:4096];
  for (i = new_JavaLangStringBuilder_init(); ; [(JavaLangStringBuilder *)i appendWithCharArray:v3 withInt:0 withInt:v6])
  {
    input = self->super.input_;
    if (!input)
    {
      goto LABEL_7;
    }

    v6 = [(JavaIoReader *)input readWithCharArray:v3];
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }
  }

  v7 = [(JavaLangStringBuilder *)i description];
  if (!v7)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  JreStrongAssign(&self->text_, [(NSString *)v7 toCharArray]);
  v8 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->chunks_, v8);
  sub_10012275C(self, [(JavaLangStringBuilder *)i description]);
  JreStrongAssign(&self->chunksIterator_, [(JavaUtilList *)self->chunks_ iterator]);
}

- (BOOL)incrementToken
{
  chunksIterator = self->chunksIterator_;
  if (!chunksIterator)
  {
    goto LABEL_22;
  }

  hasNext = [(JavaUtilIterator *)chunksIterator hasNext];
  if (hasNext)
  {
    next = [(JavaUtilIterator *)self->chunksIterator_ next];
    if (!next)
    {
      goto LABEL_22;
    }

    v7 = next;
    v8 = next[2];
    if (v8 < 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, 0);
    }

    v9 = v7[3];
    if (v8 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, 1);
    }

    v20 = v7[4];
    v21 = v20 + v9;
    if (v9 < v21)
    {
      v10 = v7[3];
      while (1)
      {
        text = self->text_;
        if (!text)
        {
          break;
        }

        size = text->super.size_;
        if (v10 < 0 || v10 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v10);
        }

        v13 = JavaLangCharacter_toLowerCaseWithChar_(*(&text->super.size_ + v10 + 2), v6);
        v14 = self->text_;
        v15 = v14->super.size_;
        if (v10 < 0 || v10 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v10);
        }

        *(&v14->super.size_ + v10++ + 2) = v13;
        if (v21 == v10)
        {
          goto LABEL_17;
        }
      }

LABEL_22:
      JreThrowNullPointerException();
    }

LABEL_17:
    posAtt = self->posAtt_;
    if (!posAtt)
    {
      goto LABEL_22;
    }

    [(OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute *)posAtt setPositionIncrementWithInt:self->posIncr_];
    self->posIncr_ = 1;
    offsetAtt = self->offsetAtt_;
    if (!offsetAtt)
    {
      goto LABEL_22;
    }

    [(OrgApacheLuceneAnalysisTokenattributesOffsetAttribute *)offsetAtt setOffsetWithInt:v9 withInt:v21];
    termAtt = self->termAtt_;
    if (!termAtt)
    {
      goto LABEL_22;
    }

    [(OrgApacheLuceneAnalysisTokenattributesCharTermAttribute *)termAtt copyBufferWithCharArray:self->text_ withInt:v9 withInt:v20];
  }

  return hasNext;
}

- (void)end
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneCRFTokenizer;
  [(OrgApacheLuceneAnalysisTokenStream *)&v3 end];
  JreStrongAssign(&self->chunksIterator_, 0);
  JreStrongAssign(&self->chunks_, 0);
  JreStrongAssign(&self->text_, 0);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneCRFTokenizer;
  [(OrgApacheLuceneAnalysisTokenizer *)&v3 dealloc];
}

@end