@interface OrgApacheLuceneUtilPackedBulkOperationPacked10
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked10

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
        *(intArray + v7 + 3) = v11 >> 54;
        v14 = *(intArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = v7 + 2;
        *(intArray + v13 + 3) = (v11 >> 44) & 0x3FF;
        v16 = *(intArray + 2);
        if (v7 + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v7 + 2));
        }

        v17 = v7 + 3;
        *(intArray + v15 + 3) = (v11 >> 34) & 0x3FF;
        v18 = *(intArray + 2);
        if (v7 + 3 < 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (v7 + 3));
        }

        v19 = v7 + 4;
        *(intArray + v17 + 3) = (v11 >> 24) & 0x3FF;
        v20 = *(intArray + 2);
        if (v7 + 4 < 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v7 + 4));
        }

        v21 = v7 + 5;
        *(intArray + v19 + 3) = (v11 >> 14) & 0x3FF;
        v22 = *(intArray + 2);
        if (v7 + 5 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v7 + 5));
        }

        v23 = (int + 1);
        *(intArray + v21 + 3) = (v11 >> 4) & 0x3FF;
        v24 = *(array + 2);
        if ((v23 & 0x80000000) != 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, v23);
        }

        v25 = v7 + 6;
        v26 = *(array + v23 + 2);
        v27 = *(intArray + 2);
        if (v7 + 6 < 0 || v25 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 6));
        }

        v28 = v7 + 7;
        *(intArray + v25 + 3) = (v26 >> 58) & 0x3F | ((v11 & 0xF) << 6);
        v29 = *(intArray + 2);
        if (v7 + 7 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 7));
        }

        v30 = v7 + 8;
        *(intArray + v28 + 3) = HIWORD(v26) & 0x3FF;
        v31 = *(intArray + 2);
        if (v7 + 8 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 8));
        }

        v32 = v7 + 9;
        *(intArray + v30 + 3) = (v26 >> 38) & 0x3FF;
        v33 = *(intArray + 2);
        if (v7 + 9 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 9));
        }

        v34 = v7 + 10;
        *(intArray + v32 + 3) = (v26 >> 28) & 0x3FF;
        v35 = *(intArray + 2);
        if (v7 + 10 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 10));
        }

        v36 = v7 + 11;
        *(intArray + v34 + 3) = (v26 >> 18) & 0x3FF;
        v37 = *(intArray + 2);
        if (v7 + 11 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 11));
        }

        v38 = intCopy + 2;
        *(intArray + v36 + 3) = (v26 >> 8) & 0x3FF;
        v39 = *(array + 2);
        if (intCopy + 2 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (intCopy + 2));
        }

        v40 = v7 + 12;
        v41 = *(array + v38 + 2);
        v42 = *(intArray + 2);
        if (v7 + 12 < 0 || v40 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 12));
        }

        v43 = v7 + 13;
        *(intArray + v40 + 3) = (v41 >> 62) & 3 | (4 * v26);
        v44 = *(intArray + 2);
        if (v7 + 13 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 13));
        }

        v45 = v7 + 14;
        *(intArray + v43 + 3) = (v41 >> 52) & 0x3FF;
        v46 = *(intArray + 2);
        if (v7 + 14 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 14));
        }

        v47 = v7 + 15;
        *(intArray + v45 + 3) = (v41 >> 42) & 0x3FF;
        v48 = *(intArray + 2);
        if (v7 + 15 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 15));
        }

        v49 = v7 + 16;
        *(intArray + v47 + 3) = WORD2(v41) & 0x3FF;
        v50 = *(intArray + 2);
        if (v7 + 16 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 16));
        }

        v51 = v7 + 17;
        *(intArray + v49 + 3) = v41 >> 22;
        v52 = *(intArray + 2);
        if (v7 + 17 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 17));
        }

        v53 = v7 + 18;
        *(intArray + v51 + 3) = (v41 >> 12) & 0x3FF;
        v54 = *(intArray + 2);
        if (v7 + 18 < 0 || v53 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 18));
        }

        v55 = intCopy + 3;
        *(intArray + v53 + 3) = (v41 >> 2) & 0x3FF;
        v56 = *(array + 2);
        if (intCopy + 3 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (intCopy + 3));
        }

        v57 = v7 + 19;
        v58 = *(array + v55 + 2);
        v59 = *(intArray + 2);
        if (v7 + 19 < 0 || v57 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 19));
        }

        v60 = v7 + 20;
        *(intArray + v57 + 3) = HIBYTE(v58) | ((v41 & 3) << 8);
        v61 = *(intArray + 2);
        if (v7 + 20 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 20));
        }

        v62 = v7 + 21;
        *(intArray + v60 + 3) = (v58 >> 46) & 0x3FF;
        v63 = *(intArray + 2);
        if (v7 + 21 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 21));
        }

        v64 = v7 + 22;
        *(intArray + v62 + 3) = (v58 >> 36) & 0x3FF;
        v65 = *(intArray + 2);
        if (v7 + 22 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 22));
        }

        v66 = v7 + 23;
        *(intArray + v64 + 3) = (v58 >> 26) & 0x3FF;
        v67 = *(intArray + 2);
        if (v7 + 23 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (v7 + 23));
        }

        v68 = v7 + 24;
        *(intArray + v66 + 3) = WORD1(v58) & 0x3FF;
        v69 = *(intArray + 2);
        if (v7 + 24 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 24));
        }

        v70 = intCopy + 4;
        *(intArray + v68 + 3) = v58 >> 6;
        v71 = *(array + 2);
        if (intCopy + 4 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (intCopy + 4));
        }

        v72 = v7 + 25;
        v73 = *(array + v70 + 2);
        v74 = *(intArray + 2);
        if (v7 + 25 < 0 || v72 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (v7 + 25));
        }

        v75 = v7 + 26;
        *(intArray + v72 + 3) = (v73 >> 60) & 0xF | (16 * (v58 & 0x3F));
        v76 = *(intArray + 2);
        if (v7 + 26 < 0 || v75 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 26));
        }

        v77 = v7 + 27;
        *(intArray + v75 + 3) = (v73 >> 50) & 0x3FF;
        v78 = *(intArray + 2);
        if (v7 + 27 < 0 || v77 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (v7 + 27));
        }

        v79 = v7 + 28;
        *(intArray + v77 + 3) = (v73 >> 40) & 0x3FF;
        v80 = *(intArray + 2);
        if (v7 + 28 < 0 || v79 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 28));
        }

        v81 = v7 + 29;
        *(intArray + v79 + 3) = (v73 >> 30) & 0x3FF;
        v82 = *(intArray + 2);
        if (v7 + 29 < 0 || v81 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 29));
        }

        v83 = v7 + 30;
        *(intArray + v81 + 3) = (v73 >> 20) & 0x3FF;
        v84 = *(intArray + 2);
        if (v7 + 30 < 0 || v83 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 30));
        }

        v85 = v7 + 31;
        *(intArray + v83 + 3) = (v73 >> 10) & 0x3FF;
        v86 = *(intArray + 2);
        if (v7 + 31 < 0 || v85 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (v7 + 31));
        }

        *(intArray + v85 + 3) = v73 & 0x3FF;
        int = intCopy + 5;
        v7 = (v7 + 32);
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

        if (!intArray)
        {
          break;
        }

        v13 = *(array + v12 + 12);
        v14 = *(intArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v8);
        }

        v15 = intCopy + 2;
        *(intArray + v8 + 3) = (v13 >> 6) | (4 * *(array + intCopy + 12));
        v16 = *(array + 2);
        if (intCopy + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (intCopy + 2));
        }

        v17 = v8 + 1;
        v18 = *(array + v15 + 12);
        v19 = *(intArray + 2);
        if (v8 + 1 < 0 || v17 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v8 + 1));
        }

        v20 = intCopy + 3;
        *(intArray + v17 + 3) = (v18 >> 4) & 0xFFFFFC0F | (16 * (v13 & 0x3F));
        v21 = *(array + 2);
        if (intCopy + 3 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (intCopy + 3));
        }

        v22 = v8 + 2;
        v23 = *(array + v20 + 12);
        v24 = *(intArray + 2);
        if (v8 + 2 < 0 || v22 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v8 + 2));
        }

        v25 = intCopy + 4;
        *(intArray + v22 + 3) = (v23 >> 2) & 0xFFFFFC3F | ((v18 & 0xF) << 6);
        v26 = *(array + 2);
        if (intCopy + 4 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 4));
        }

        v27 = v8 + 3;
        v28 = *(array + v25 + 12);
        v29 = *(intArray + 2);
        if (v8 + 3 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v8 + 3));
        }

        *(intArray + v27 + 3) = v28 & 0xFFFFFCFF | ((v23 & 3) << 8);
        int = intCopy + 5;
        v8 = (v8 + 4);
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
        *(longArray + v7 + 2) = v11 >> 54;
        v14 = *(longArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = v7 + 2;
        *(longArray + v13 + 2) = (v11 >> 44) & 0x3FF;
        v16 = *(longArray + 2);
        if (v7 + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v7 + 2));
        }

        v17 = v7 + 3;
        *(longArray + v15 + 2) = (v11 >> 34) & 0x3FF;
        v18 = *(longArray + 2);
        if (v7 + 3 < 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (v7 + 3));
        }

        v19 = v7 + 4;
        *(longArray + v17 + 2) = (v11 >> 24) & 0x3FF;
        v20 = *(longArray + 2);
        if (v7 + 4 < 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v7 + 4));
        }

        v21 = v7 + 5;
        *(longArray + v19 + 2) = (v11 >> 14) & 0x3FF;
        v22 = *(longArray + 2);
        if (v7 + 5 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v7 + 5));
        }

        v23 = (int + 1);
        *(longArray + v21 + 2) = (v11 >> 4) & 0x3FF;
        v24 = *(array + 2);
        if ((v23 & 0x80000000) != 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, v23);
        }

        v25 = v7 + 6;
        v26 = *(array + v23 + 2);
        v27 = *(longArray + 2);
        if (v7 + 6 < 0 || v25 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 6));
        }

        *(&v28 + 1) = v11;
        *&v28 = *(array + v23 + 2);
        v29 = v7 + 7;
        *(longArray + v25 + 2) = (v28 >> 58) & 0x3FF;
        v30 = *(longArray + 2);
        if (v7 + 7 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 7));
        }

        v31 = v7 + 8;
        *(longArray + v29 + 2) = HIWORD(v26) & 0x3FF;
        v32 = *(longArray + 2);
        if (v7 + 8 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 8));
        }

        v33 = v7 + 9;
        *(longArray + v31 + 2) = (v26 >> 38) & 0x3FF;
        v34 = *(longArray + 2);
        if (v7 + 9 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 9));
        }

        v35 = v7 + 10;
        *(longArray + v33 + 2) = (v26 >> 28) & 0x3FF;
        v36 = *(longArray + 2);
        if (v7 + 10 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v7 + 10));
        }

        v37 = v7 + 11;
        *(longArray + v35 + 2) = (v26 >> 18) & 0x3FF;
        v38 = *(longArray + 2);
        if (v7 + 11 < 0 || v37 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v7 + 11));
        }

        v39 = intCopy + 2;
        *(longArray + v37 + 2) = (v26 >> 8) & 0x3FF;
        v40 = *(array + 2);
        if (intCopy + 2 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (intCopy + 2));
        }

        v41 = v7 + 12;
        v42 = *(array + v39 + 2);
        v43 = *(longArray + 2);
        if (v7 + 12 < 0 || v41 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 12));
        }

        *(&v44 + 1) = v26;
        *&v44 = *(array + v39 + 2);
        v45 = v7 + 13;
        *(longArray + v41 + 2) = (v44 >> 62) & 0x3FF;
        v46 = *(longArray + 2);
        if (v7 + 13 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 13));
        }

        v47 = v7 + 14;
        *(longArray + v45 + 2) = (v42 >> 52) & 0x3FF;
        v48 = *(longArray + 2);
        if (v7 + 14 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 14));
        }

        v49 = v7 + 15;
        *(longArray + v47 + 2) = (v42 >> 42) & 0x3FF;
        v50 = *(longArray + 2);
        if (v7 + 15 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 15));
        }

        v51 = v7 + 16;
        *(longArray + v49 + 2) = HIDWORD(v42) & 0x3FF;
        v52 = *(longArray + 2);
        if (v7 + 16 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 16));
        }

        v53 = v7 + 17;
        *(longArray + v51 + 2) = v42 >> 22;
        v54 = *(longArray + 2);
        if (v7 + 17 < 0 || v53 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 17));
        }

        v55 = v7 + 18;
        *(longArray + v53 + 2) = (v42 >> 12) & 0x3FF;
        v56 = *(longArray + 2);
        if (v7 + 18 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 18));
        }

        v57 = intCopy + 3;
        *(longArray + v55 + 2) = (v42 >> 2) & 0x3FF;
        v58 = *(array + 2);
        if (intCopy + 3 < 0 || v57 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (intCopy + 3));
        }

        v59 = v7 + 19;
        v60 = *(array + v57 + 2);
        v61 = *(longArray + 2);
        if (v7 + 19 < 0 || v59 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 19));
        }

        *(&v62 + 1) = v42;
        *&v62 = *(array + v57 + 2);
        v63 = v7 + 20;
        *(longArray + v59 + 2) = (v62 >> 56) & 0x3FF;
        v64 = *(longArray + 2);
        if (v7 + 20 < 0 || v63 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 20));
        }

        v65 = v7 + 21;
        *(longArray + v63 + 2) = (v60 >> 46) & 0x3FF;
        v66 = *(longArray + 2);
        if (v7 + 21 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 21));
        }

        v67 = v7 + 22;
        *(longArray + v65 + 2) = (v60 >> 36) & 0x3FF;
        v68 = *(longArray + 2);
        if (v7 + 22 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 22));
        }

        v69 = v7 + 23;
        *(longArray + v67 + 2) = (v60 >> 26) & 0x3FF;
        v70 = *(longArray + 2);
        if (v7 + 23 < 0 || v69 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (v7 + 23));
        }

        v71 = v7 + 24;
        *(longArray + v69 + 2) = (v60 >> 16) & 0x3FF;
        v72 = *(longArray + 2);
        if (v7 + 24 < 0 || v71 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 24));
        }

        v73 = intCopy + 4;
        *(longArray + v71 + 2) = v60 >> 6;
        v74 = *(array + 2);
        if (intCopy + 4 < 0 || v73 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (intCopy + 4));
        }

        v75 = v7 + 25;
        v76 = *(array + v73 + 2);
        v77 = *(longArray + 2);
        if (v7 + 25 < 0 || v75 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 25));
        }

        *(&v78 + 1) = v60;
        *&v78 = *(array + v73 + 2);
        v79 = v7 + 26;
        *(longArray + v75 + 2) = (v78 >> 60) & 0x3FF;
        v80 = *(longArray + 2);
        if (v7 + 26 < 0 || v79 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 26));
        }

        v81 = v7 + 27;
        *(longArray + v79 + 2) = (v76 >> 50) & 0x3FF;
        v82 = *(longArray + 2);
        if (v7 + 27 < 0 || v81 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 27));
        }

        v83 = v7 + 28;
        *(longArray + v81 + 2) = (v76 >> 40) & 0x3FF;
        v84 = *(longArray + 2);
        if (v7 + 28 < 0 || v83 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 28));
        }

        v85 = v7 + 29;
        *(longArray + v83 + 2) = (v76 >> 30) & 0x3FF;
        v86 = *(longArray + 2);
        if (v7 + 29 < 0 || v85 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (v7 + 29));
        }

        v87 = v7 + 30;
        *(longArray + v85 + 2) = (v76 >> 20) & 0x3FF;
        v88 = *(longArray + 2);
        if (v7 + 30 < 0 || v87 >= v88)
        {
          IOSArray_throwOutOfBoundsWithMsg(v88, (v7 + 30));
        }

        v89 = v7 + 31;
        *(longArray + v87 + 2) = (v76 >> 10) & 0x3FF;
        v90 = *(longArray + 2);
        if (v7 + 31 < 0 || v89 >= v90)
        {
          IOSArray_throwOutOfBoundsWithMsg(v90, (v7 + 31));
        }

        *(longArray + v89 + 2) = v76 & 0x3FF;
        int = intCopy + 5;
        v7 = (v7 + 32);
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

        if (!longArray)
        {
          break;
        }

        v13 = *(array + v12 + 12);
        v14 = *(longArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v8);
        }

        v15 = intCopy + 2;
        *(longArray + v8 + 2) = (v13 >> 6) | (4 * *(array + intCopy + 12));
        v16 = *(array + 2);
        if (intCopy + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (intCopy + 2));
        }

        v17 = v8 + 1;
        v18 = *(array + v15 + 12);
        v19 = *(longArray + 2);
        if (v8 + 1 < 0 || v17 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v8 + 1));
        }

        v20 = intCopy + 3;
        *(longArray + v17 + 2) = (v18 >> 4) & 0xFFFFFFFFFFFFFC0FLL | (16 * (v13 & 0x3F));
        v21 = *(array + 2);
        if (intCopy + 3 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (intCopy + 3));
        }

        v22 = v8 + 2;
        v23 = *(array + v20 + 12);
        v24 = *(longArray + 2);
        if (v8 + 2 < 0 || v22 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v8 + 2));
        }

        v25 = intCopy + 4;
        *(longArray + v22 + 2) = (v23 >> 2) & 0xFFFFFFFFFFFFFC3FLL | ((v18 & 0xF) << 6);
        v26 = *(array + 2);
        if (intCopy + 4 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 4));
        }

        v27 = v8 + 3;
        v28 = *(array + v25 + 12);
        v29 = *(longArray + 2);
        if (v8 + 3 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v8 + 3));
        }

        *(longArray + v27 + 2) = v28 & 0xFFFFFFFFFFFFFCFFLL | ((v23 & 3) << 8);
        int = intCopy + 5;
        v8 = (v8 + 4);
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