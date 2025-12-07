@interface OrgApacheLuceneAnalysisUtilCharacterUtils_Java5CharacterUtils
- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)buffer withJavaIoReader:(id)reader withInt:(int)int;
- (int)codePointCountWithJavaLangCharSequence:(id)sequence;
@end

@implementation OrgApacheLuceneAnalysisUtilCharacterUtils_Java5CharacterUtils

- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)buffer withJavaIoReader:(id)reader withInt:(int)int
{
  if (int < 2 || (v7 = *(buffer + 2), *(v7 + 8) < int))
  {
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(@"numChars must be >= 2 and <= the buffer size");
    objc_exception_throw(v16);
  }

  *(buffer + 6) = 0;
  v8 = *(buffer + 4);
  if (*(buffer + 4))
  {
    v9 = *(v7 + 8);
    if (v9 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 0);
    }

    *(v7 + 12) = v8;
    *(buffer + 4) = 0;
    v8 = 1;
  }

  v11 = OrgApacheLuceneAnalysisUtilCharacterUtils_readFullyWithJavaIoReader_withCharArray_withInt_withInt_(reader, v7, v8, int - v8) + v8;
  *(buffer + 7) = v11;
  if (v11 >= int)
  {
    v12 = *(v7 + 8);
    if (v11 > v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, (v11 - 1));
    }

    if (JavaLangCharacter_isHighSurrogateWithChar_(*(v7 + 12 + 2 * (v11 - 1)), v10))
    {
      v13 = *(buffer + 7) - 1;
      *(buffer + 7) = v13;
      v14 = *(v7 + 8);
      if (v13 < 0 || v13 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v13);
      }

      *(buffer + 4) = *(v7 + 12 + 2 * v13);
    }
  }

  return v11 == int;
}

- (int)codePointCountWithJavaLangCharSequence:(id)sequence
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  v4 = [sequence length];

  return JavaLangCharacter_codePointCountWithJavaLangCharSequence_withInt_withInt_(sequence, 0, v4);
}

@end