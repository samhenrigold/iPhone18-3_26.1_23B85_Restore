@interface OrgApacheLuceneAnalysisUtilCharacterUtils
+ (id)getInstance;
+ (id)getJava4Instance;
+ (void)initialize;
- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)buffer withJavaIoReader:(id)reader;
- (int)toCharsWithIntArray:(id)array withInt:(int)int withInt:(int)withInt withCharArray:(id)charArray withInt:(int)a7;
- (int)toCodePointsWithCharArray:(id)array withInt:(int)int withInt:(int)withInt withIntArray:(id)intArray withInt:(int)a7;
- (void)toLowerCaseWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)toUpperCaseWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneAnalysisUtilCharacterUtils

+ (id)getInstance
{
  if ((atomic_load_explicit(&OrgApacheLuceneAnalysisUtilCharacterUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000BD9B0();
  }

  return qword_100554418;
}

+ (id)getJava4Instance
{
  if ((atomic_load_explicit(&OrgApacheLuceneAnalysisUtilCharacterUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000BD9B0();
  }

  return qword_100554410;
}

- (void)toLowerCaseWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (int < withInt)
  {
    v23 = v8;
    v24 = v7;
    v25 = v6;
    v26 = v5;
    v27 = v9;
    v28 = v10;
    v11 = *&withInt;
    v12 = *&int;
    do
    {
      v15 = [(OrgApacheLuceneAnalysisUtilCharacterUtils *)self codePointAtWithCharArray:array withInt:v12 withInt:v11, v23, v24, v25, v26, v27, v28];
      v17 = JavaLangCharacter_toLowerCaseWithInt_(v15, v16);
      v12 = JavaLangCharacter_toCharsWithInt_withCharArray_withInt_(v17, array, v12, v18, v19, v20, v21, v22) + v12;
    }

    while (v12 < v11);
  }
}

- (void)toUpperCaseWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (int < withInt)
  {
    v23 = v8;
    v24 = v7;
    v25 = v6;
    v26 = v5;
    v27 = v9;
    v28 = v10;
    v11 = *&withInt;
    v12 = *&int;
    do
    {
      v15 = [(OrgApacheLuceneAnalysisUtilCharacterUtils *)self codePointAtWithCharArray:array withInt:v12 withInt:v11, v23, v24, v25, v26, v27, v28];
      v17 = JavaLangCharacter_toUpperCaseWithInt_(v15, v16);
      v12 = JavaLangCharacter_toCharsWithInt_withCharArray_withInt_(v17, array, v12, v18, v19, v20, v21, v22) + v12;
    }

    while (v12 < v11);
  }
}

- (int)toCodePointsWithCharArray:(id)array withInt:(int)int withInt:(int)withInt withIntArray:(id)intArray withInt:(int)a7
{
  if (withInt < 0)
  {
    v22 = new_JavaLangIllegalArgumentException_initWithNSString_(@"srcLen must be >= 0");
    objc_exception_throw(v22);
  }

  if (!withInt)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  do
  {
    v14 = [(OrgApacheLuceneAnalysisUtilCharacterUtils *)self codePointAtWithCharArray:array withInt:(v13 + int) withInt:(withInt + int)];
    v15 = v14;
    v17 = JavaLangCharacter_charCountWithInt_(v14, v16);
    if (!intArray)
    {
      JreThrowNullPointerException();
    }

    v18 = v17;
    v19 = *(intArray + 2);
    v20 = a7 + v12;
    if (a7 + v12 < 0 || v20 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v20);
    }

    *(intArray + a7 + v12 + 3) = v15;
    v13 += v18;
    ++v12;
  }

  while (v13 < withInt);
  return v12;
}

- (int)toCharsWithIntArray:(id)array withInt:(int)int withInt:(int)withInt withCharArray:(id)charArray withInt:(int)a7
{
  if (withInt < 0)
  {
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(@"srcLen must be >= 0");
    objc_exception_throw(v16);
  }

  if (!withInt)
  {
    return 0;
  }

  if (!array)
  {
    JreThrowNullPointerException();
  }

  v11 = 0;
  withIntCopy = withInt;
  do
  {
    intCopy = int;
    v14 = *(array + 2);
    if (int < 0 || int >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, int);
    }

    v11 += JavaLangCharacter_toCharsWithInt_withCharArray_withInt_(*(array + int + 3), charArray, (v11 + a7), *&int, *&withInt, charArray, *&a7, v7);
    *&int = (intCopy + 1);
    --withIntCopy;
  }

  while (withIntCopy);
  return v11;
}

- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)buffer withJavaIoReader:(id)reader
{
  if (!buffer || !*(buffer + 2))
  {
    JreThrowNullPointerException();
  }

  return [OrgApacheLuceneAnalysisUtilCharacterUtils fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:"fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:withJavaIoReader:withInt:" withJavaIoReader:? withInt:?];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_100554410, [OrgApacheLuceneAnalysisUtilCharacterUtils_Java4CharacterUtils alloc]);
    JreStrongAssignAndConsume(&qword_100554418, [OrgApacheLuceneAnalysisUtilCharacterUtils_Java5CharacterUtils alloc]);
    atomic_store(1u, &OrgApacheLuceneAnalysisUtilCharacterUtils__initialized);
  }
}

@end