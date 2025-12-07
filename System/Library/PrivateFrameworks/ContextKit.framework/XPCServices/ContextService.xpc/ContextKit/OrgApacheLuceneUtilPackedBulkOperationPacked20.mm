@interface OrgApacheLuceneUtilPackedBulkOperationPacked20
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked20

- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (array)
    {
      v7 = *&withInt;
      while (1)
      {
        intCopy = int;
        v10 = *(array + 2);
        if (int < 0 || int >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, int);
        }

        if (!intArray)
        {
          break;
        }

        v11 = *(array + int + 2);
        v12 = *(intArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v7);
        }

        v13 = v7 + 1;
        *(intArray + v7 + 3) = v11 >> 44;
        v14 = *(intArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = v7 + 2;
        *(intArray + v13 + 3) = (v11 >> 24) & 0xFFFFF;
        v16 = *(intArray + 2);
        if (v7 + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v7 + 2));
        }

        v17 = (int + 1);
        *(intArray + v15 + 3) = (v11 >> 4) & 0xFFFFF;
        v18 = *(array + 2);
        if ((v17 & 0x80000000) != 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v17);
        }

        v19 = v7 + 3;
        v20 = *(array + v17 + 2);
        v21 = *(intArray + 2);
        if (v7 + 3 < 0 || v19 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 3));
        }

        v22 = v7 + 4;
        *(intArray + v19 + 3) = HIWORD(v20) | ((v11 & 0xF) << 16);
        v23 = *(intArray + 2);
        if (v7 + 4 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 4));
        }

        v24 = v7 + 5;
        *(intArray + v22 + 3) = (v20 >> 28) & 0xFFFFF;
        v25 = *(intArray + 2);
        if (v7 + 5 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 5));
        }

        v26 = intCopy + 2;
        *(intArray + v24 + 3) = (v20 >> 8) & 0xFFFFF;
        v27 = *(array + 2);
        if (intCopy + 2 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (intCopy + 2));
        }

        v28 = v7 + 6;
        v29 = *(array + v26 + 2);
        v30 = *(intArray + 2);
        if (v7 + 6 < 0 || v28 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 6));
        }

        v31 = v7 + 7;
        *(intArray + v28 + 3) = (v29 >> 52) & 0xFFF | (v20 << 12);
        v32 = *(intArray + 2);
        if (v7 + 7 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 7));
        }

        v33 = v7 + 8;
        *(intArray + v31 + 3) = HIDWORD(v29) & 0xFFFFF;
        v34 = *(intArray + 2);
        if (v7 + 8 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 8));
        }

        v35 = intCopy + 3;
        *(intArray + v33 + 3) = v29 >> 12;
        v36 = *(array + 2);
        if (intCopy + 3 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 3));
        }

        v37 = v7 + 9;
        v38 = *(array + v35 + 2);
        v39 = *(intArray + 2);
        if (v7 + 9 < 0 || v37 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 9));
        }

        v40 = v7 + 10;
        *(intArray + v37 + 3) = HIBYTE(v38) | ((v29 & 0xFFF) << 8);
        v41 = *(intArray + 2);
        if (v7 + 10 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 10));
        }

        v42 = v7 + 11;
        *(intArray + v40 + 3) = (v38 >> 36) & 0xFFFFF;
        v43 = *(intArray + 2);
        if (v7 + 11 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 11));
        }

        v44 = intCopy + 4;
        *(intArray + v42 + 3) = (v38 >> 16) & 0xFFFFF;
        v45 = *(array + 2);
        if (intCopy + 4 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (intCopy + 4));
        }

        v46 = v7 + 12;
        v47 = *(array + v44 + 2);
        v48 = *(intArray + 2);
        if (v7 + 12 < 0 || v46 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 12));
        }

        v49 = v7 + 13;
        *(intArray + v46 + 3) = (v47 >> 60) & 0xF | (16 * v38);
        v50 = *(intArray + 2);
        if (v7 + 13 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 13));
        }

        v51 = v7 + 14;
        *(intArray + v49 + 3) = (v47 >> 40) & 0xFFFFF;
        v52 = *(intArray + 2);
        if (v7 + 14 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 14));
        }

        v53 = v7 + 15;
        *(intArray + v51 + 3) = (v47 >> 20) & 0xFFFFF;
        v54 = *(intArray + 2);
        if (v7 + 15 < 0 || v53 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 15));
        }

        *(intArray + v53 + 3) = v47 & 0xFFFFF;
        int = intCopy + 5;
        v7 = (v7 + 16);
        if (!--a7)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (array)
    {
      v7 = a7;
      v8 = *&withInt;
      while (1)
      {
        intCopy = int;
        v11 = *(array + 2);
        if (int < 0 || int >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, int);
        }

        v12 = (int + 1);
        if ((v12 & 0x80000000) != 0 || v12 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v12);
        }

        v13 = intCopy + 2;
        v14 = *(array + v12 + 12);
        if (intCopy + 2 < 0 || v13 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, (intCopy + 2));
        }

        if (!intArray)
        {
          break;
        }

        v15 = *(array + v13 + 12);
        v16 = *(intArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v8);
        }

        v17 = intCopy + 3;
        *(intArray + v8 + 3) = (*(array + intCopy + 12) << 12) | (16 * v14) | (v15 >> 4);
        v18 = *(array + 2);
        if (intCopy + 3 < 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (intCopy + 3));
        }

        v19 = intCopy + 4;
        v20 = *(array + v17 + 12);
        if (intCopy + 4 < 0 || v19 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (intCopy + 4));
        }

        v21 = v8 + 1;
        v22 = *(array + v19 + 12);
        v23 = *(intArray + 2);
        if (v8 + 1 < 0 || v21 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v8 + 1));
        }

        *(intArray + v21 + 3) = ((v15 & 0xF) << 16) | (v20 << 8) | v22;
        int = intCopy + 5;
        v8 = (v8 + 2);
        if (!--v7)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (array)
    {
      v7 = *&withInt;
      while (1)
      {
        intCopy = int;
        v10 = *(array + 2);
        if (int < 0 || int >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, int);
        }

        if (!longArray)
        {
          break;
        }

        v11 = *(array + int + 2);
        v12 = *(longArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v7);
        }

        v13 = v7 + 1;
        *(longArray + v7 + 2) = v11 >> 44;
        v14 = *(longArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = v7 + 2;
        *(longArray + v13 + 2) = (v11 >> 24) & 0xFFFFF;
        v16 = *(longArray + 2);
        if (v7 + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v7 + 2));
        }

        v17 = (int + 1);
        *(longArray + v15 + 2) = (v11 >> 4) & 0xFFFFF;
        v18 = *(array + 2);
        if ((v17 & 0x80000000) != 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v17);
        }

        v19 = v7 + 3;
        v20 = *(array + v17 + 2);
        v21 = *(longArray + 2);
        if (v7 + 3 < 0 || v19 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 3));
        }

        *(&v22 + 1) = v11;
        *&v22 = *(array + v17 + 2);
        v23 = v7 + 4;
        *(longArray + v19 + 2) = (v22 >> 48) & 0xFFFFF;
        v24 = *(longArray + 2);
        if (v7 + 4 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 4));
        }

        v25 = v7 + 5;
        *(longArray + v23 + 2) = (v20 >> 28) & 0xFFFFF;
        v26 = *(longArray + 2);
        if (v7 + 5 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 5));
        }

        v27 = intCopy + 2;
        *(longArray + v25 + 2) = (v20 >> 8) & 0xFFFFF;
        v28 = *(array + 2);
        if (intCopy + 2 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (intCopy + 2));
        }

        v29 = v7 + 6;
        v30 = *(array + v27 + 2);
        v31 = *(longArray + 2);
        if (v7 + 6 < 0 || v29 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 6));
        }

        *(&v32 + 1) = v20;
        *&v32 = *(array + v27 + 2);
        v33 = v7 + 7;
        *(longArray + v29 + 2) = (v32 >> 52) & 0xFFFFF;
        v34 = *(longArray + 2);
        if (v7 + 7 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 7));
        }

        v35 = v7 + 8;
        *(longArray + v33 + 2) = HIDWORD(v30) & 0xFFFFF;
        v36 = *(longArray + 2);
        if (v7 + 8 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v7 + 8));
        }

        v37 = intCopy + 3;
        *(longArray + v35 + 2) = v30 >> 12;
        v38 = *(array + 2);
        if (intCopy + 3 < 0 || v37 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (intCopy + 3));
        }

        v39 = v7 + 9;
        v40 = *(array + v37 + 2);
        v41 = *(longArray + 2);
        if (v7 + 9 < 0 || v39 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 9));
        }

        *(&v42 + 1) = v30;
        *&v42 = *(array + v37 + 2);
        v43 = v7 + 10;
        *(longArray + v39 + 2) = (v42 >> 56) & 0xFFFFF;
        v44 = *(longArray + 2);
        if (v7 + 10 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 10));
        }

        v45 = v7 + 11;
        *(longArray + v43 + 2) = (v40 >> 36) & 0xFFFFF;
        v46 = *(longArray + 2);
        if (v7 + 11 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 11));
        }

        v47 = intCopy + 4;
        *(longArray + v45 + 2) = (v40 >> 16) & 0xFFFFF;
        v48 = *(array + 2);
        if (intCopy + 4 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (intCopy + 4));
        }

        v49 = v7 + 12;
        v50 = *(array + v47 + 2);
        v51 = *(longArray + 2);
        if (v7 + 12 < 0 || v49 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 12));
        }

        *(&v52 + 1) = v40;
        *&v52 = *(array + v47 + 2);
        v53 = v7 + 13;
        *(longArray + v49 + 2) = (v52 >> 60) & 0xFFFFF;
        v54 = *(longArray + 2);
        if (v7 + 13 < 0 || v53 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 13));
        }

        v55 = v7 + 14;
        *(longArray + v53 + 2) = (v50 >> 40) & 0xFFFFF;
        v56 = *(longArray + 2);
        if (v7 + 14 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 14));
        }

        v57 = v7 + 15;
        *(longArray + v55 + 2) = (v50 >> 20) & 0xFFFFF;
        v58 = *(longArray + 2);
        if (v7 + 15 < 0 || v57 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 15));
        }

        *(longArray + v57 + 2) = v50 & 0xFFFFF;
        int = intCopy + 5;
        v7 = (v7 + 16);
        if (!--a7)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (array)
    {
      v7 = a7;
      v8 = *&withInt;
      while (1)
      {
        intCopy = int;
        v11 = *(array + 2);
        if (int < 0 || int >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, int);
        }

        v12 = (int + 1);
        if ((v12 & 0x80000000) != 0 || v12 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v12);
        }

        v13 = intCopy + 2;
        v14 = *(array + v12 + 12);
        if (intCopy + 2 < 0 || v13 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, (intCopy + 2));
        }

        if (!longArray)
        {
          break;
        }

        v15 = *(array + v13 + 12);
        v16 = *(longArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v8);
        }

        v17 = intCopy + 3;
        *(longArray + v8 + 2) = (*(array + intCopy + 12) << 12) | (16 * v14) | (v15 >> 4);
        v18 = *(array + 2);
        if (intCopy + 3 < 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (intCopy + 3));
        }

        v19 = intCopy + 4;
        v20 = *(array + v17 + 12);
        if (intCopy + 4 < 0 || v19 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (intCopy + 4));
        }

        v21 = v8 + 1;
        v22 = *(array + v19 + 12);
        v23 = *(longArray + 2);
        if (v8 + 1 < 0 || v21 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v8 + 1));
        }

        *(longArray + v21 + 2) = ((v15 & 0xF) << 16) | (v20 << 8) | v22;
        int = intCopy + 5;
        v8 = (v8 + 2);
        if (!--v7)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

@end