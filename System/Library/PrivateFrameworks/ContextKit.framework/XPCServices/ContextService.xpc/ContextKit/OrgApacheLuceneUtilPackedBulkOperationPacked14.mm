@interface OrgApacheLuceneUtilPackedBulkOperationPacked14
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked14

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
        *(intArray + v7 + 3) = v11 >> 50;
        v14 = *(intArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = v7 + 2;
        *(intArray + v13 + 3) = (v11 >> 36) & 0x3FFF;
        v16 = *(intArray + 2);
        if (v7 + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v7 + 2));
        }

        v17 = v7 + 3;
        *(intArray + v15 + 3) = (v11 >> 22) & 0x3FFF;
        v18 = *(intArray + 2);
        if (v7 + 3 < 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (v7 + 3));
        }

        v19 = (int + 1);
        *(intArray + v17 + 3) = (v11 >> 8) & 0x3FFF;
        v20 = *(array + 2);
        if ((v19 & 0x80000000) != 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v19);
        }

        v21 = v7 + 4;
        v22 = *(array + v19 + 2);
        v23 = *(intArray + 2);
        if (v7 + 4 < 0 || v21 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 4));
        }

        v24 = v7 + 5;
        *(intArray + v21 + 3) = (v22 >> 58) & 0x3F | (v11 << 6);
        v25 = *(intArray + 2);
        if (v7 + 5 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 5));
        }

        v26 = v7 + 6;
        *(intArray + v24 + 3) = (v22 >> 44) & 0x3FFF;
        v27 = *(intArray + 2);
        if (v7 + 6 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 6));
        }

        v28 = v7 + 7;
        *(intArray + v26 + 3) = (v22 >> 30) & 0x3FFF;
        v29 = *(intArray + 2);
        if (v7 + 7 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 7));
        }

        v30 = v7 + 8;
        *(intArray + v28 + 3) = WORD1(v22) & 0x3FFF;
        v31 = *(intArray + 2);
        if (v7 + 8 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 8));
        }

        v32 = intCopy + 2;
        *(intArray + v30 + 3) = v22 >> 2;
        v33 = *(array + 2);
        if (intCopy + 2 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (intCopy + 2));
        }

        v34 = v7 + 9;
        v35 = *(array + v32 + 2);
        v36 = *(intArray + 2);
        if (v7 + 9 < 0 || v34 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v7 + 9));
        }

        v37 = v7 + 10;
        *(intArray + v34 + 3) = (v35 >> 52) & 0xCFFF | ((v22 & 3) << 12);
        v38 = *(intArray + 2);
        if (v7 + 10 < 0 || v37 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v7 + 10));
        }

        v39 = v7 + 11;
        *(intArray + v37 + 3) = (v35 >> 38) & 0x3FFF;
        v40 = *(intArray + 2);
        if (v7 + 11 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 11));
        }

        v41 = v7 + 12;
        *(intArray + v39 + 3) = (v35 >> 24) & 0x3FFF;
        v42 = *(intArray + 2);
        if (v7 + 12 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 12));
        }

        v43 = intCopy + 3;
        *(intArray + v41 + 3) = (v35 >> 10) & 0x3FFF;
        v44 = *(array + 2);
        if (intCopy + 3 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (intCopy + 3));
        }

        v45 = v7 + 13;
        v46 = *(array + v43 + 2);
        v47 = *(intArray + 2);
        if (v7 + 13 < 0 || v45 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 13));
        }

        v48 = v7 + 14;
        *(intArray + v45 + 3) = (v46 >> 60) & 0xF | (16 * (v35 & 0x3FF));
        v49 = *(intArray + 2);
        if (v7 + 14 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 14));
        }

        v50 = v7 + 15;
        *(intArray + v48 + 3) = (v46 >> 46) & 0x3FFF;
        v51 = *(intArray + 2);
        if (v7 + 15 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 15));
        }

        v52 = v7 + 16;
        *(intArray + v50 + 3) = WORD2(v46) & 0x3FFF;
        v53 = *(intArray + 2);
        if (v7 + 16 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 16));
        }

        v54 = v7 + 17;
        *(intArray + v52 + 3) = v46 >> 18;
        v55 = *(intArray + 2);
        if (v7 + 17 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 17));
        }

        v56 = intCopy + 4;
        *(intArray + v54 + 3) = (v46 >> 4) & 0x3FFF;
        v57 = *(array + 2);
        if (intCopy + 4 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (intCopy + 4));
        }

        v58 = v7 + 18;
        v59 = *(array + v56 + 2);
        v60 = *(intArray + 2);
        if (v7 + 18 < 0 || v58 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (v7 + 18));
        }

        v61 = v7 + 19;
        *(intArray + v58 + 3) = (v59 >> 54) & 0xC3FF | ((v46 & 0xF) << 10);
        v62 = *(intArray + 2);
        if (v7 + 19 < 0 || v61 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (v7 + 19));
        }

        v63 = v7 + 20;
        *(intArray + v61 + 3) = (v59 >> 40) & 0x3FFF;
        v64 = *(intArray + 2);
        if (v7 + 20 < 0 || v63 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 20));
        }

        v65 = v7 + 21;
        *(intArray + v63 + 3) = (v59 >> 26) & 0x3FFF;
        v66 = *(intArray + 2);
        if (v7 + 21 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 21));
        }

        v67 = intCopy + 5;
        *(intArray + v65 + 3) = (v59 >> 12) & 0x3FFF;
        v68 = *(array + 2);
        if (intCopy + 5 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (intCopy + 5));
        }

        v69 = v7 + 22;
        v70 = *(array + v67 + 2);
        v71 = *(intArray + 2);
        if (v7 + 22 < 0 || v69 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 22));
        }

        v72 = v7 + 23;
        *(intArray + v69 + 3) = (v70 >> 62) & 3 | (4 * (v59 & 0xFFF));
        v73 = *(intArray + 2);
        if (v7 + 23 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 23));
        }

        v74 = v7 + 24;
        *(intArray + v72 + 3) = HIWORD(v70) & 0x3FFF;
        v75 = *(intArray + 2);
        if (v7 + 24 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 24));
        }

        v76 = v7 + 25;
        *(intArray + v74 + 3) = (v70 >> 34) & 0x3FFF;
        v77 = *(intArray + 2);
        if (v7 + 25 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 25));
        }

        v78 = v7 + 26;
        *(intArray + v76 + 3) = (v70 >> 20) & 0x3FFF;
        v79 = *(intArray + 2);
        if (v7 + 26 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (v7 + 26));
        }

        v80 = intCopy + 6;
        *(intArray + v78 + 3) = (v70 >> 6) & 0x3FFF;
        v81 = *(array + 2);
        if (intCopy + 6 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (intCopy + 6));
        }

        v82 = v7 + 27;
        v83 = *(array + v80 + 2);
        v84 = *(intArray + 2);
        if (v7 + 27 < 0 || v82 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 27));
        }

        v85 = v7 + 28;
        *(intArray + v82 + 3) = HIBYTE(v83) | ((v70 & 0x3F) << 8);
        v86 = *(intArray + 2);
        if (v7 + 28 < 0 || v85 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (v7 + 28));
        }

        v87 = v7 + 29;
        *(intArray + v85 + 3) = (v83 >> 42) & 0x3FFF;
        v88 = *(intArray + 2);
        if (v7 + 29 < 0 || v87 >= v88)
        {
          IOSArray_throwOutOfBoundsWithMsg(v88, (v7 + 29));
        }

        v89 = v7 + 30;
        *(intArray + v87 + 3) = (v83 >> 28) & 0x3FFF;
        v90 = *(intArray + 2);
        if (v7 + 30 < 0 || v89 >= v90)
        {
          IOSArray_throwOutOfBoundsWithMsg(v90, (v7 + 30));
        }

        v91 = v7 + 31;
        *(intArray + v89 + 3) = (v83 >> 14) & 0x3FFF;
        v92 = *(intArray + 2);
        if (v7 + 31 < 0 || v91 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 31));
        }

        *(intArray + v91 + 3) = v83 & 0x3FFF;
        int = intCopy + 7;
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
      v7 = *&withInt;
      while (1)
      {
        intCopy = int;
        v10 = *(array + 2);
        if (int < 0 || int >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, int);
        }

        v11 = (int + 1);
        if ((v11 & 0x80000000) != 0 || v11 >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, v11);
        }

        if (!intArray)
        {
          break;
        }

        v12 = *(array + v11 + 12);
        v13 = *(intArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v7);
        }

        v14 = intCopy + 2;
        *(intArray + v7 + 3) = (v12 >> 2) | (*(array + intCopy + 12) << 6);
        v15 = *(array + 2);
        if (intCopy + 2 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (intCopy + 2));
        }

        v16 = intCopy + 3;
        v17 = *(array + v14 + 12);
        if (intCopy + 3 < 0 || v16 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (intCopy + 3));
        }

        v18 = v7 + 1;
        v19 = *(array + v16 + 12);
        v20 = *(intArray + 2);
        if (v7 + 1 < 0 || v18 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v7 + 1));
        }

        v21 = intCopy + 4;
        *(intArray + v18 + 3) = ((v12 & 3) << 12) | (16 * v17) | (v19 >> 4);
        v22 = *(array + 2);
        if (intCopy + 4 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (intCopy + 4));
        }

        v23 = intCopy + 5;
        v24 = *(array + v21 + 12);
        if (intCopy + 5 < 0 || v23 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (intCopy + 5));
        }

        v25 = v7 + 2;
        v26 = *(array + v23 + 12);
        v27 = *(intArray + 2);
        if (v7 + 2 < 0 || v25 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 2));
        }

        v28 = intCopy + 6;
        *(intArray + v25 + 3) = ((v19 & 0xF) << 10) | (4 * v24) | (v26 >> 6);
        v29 = *(array + 2);
        if (intCopy + 6 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (intCopy + 6));
        }

        v30 = v7 + 3;
        v31 = *(intArray + 2);
        if (v7 + 3 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 3));
        }

        *(intArray + v30 + 3) = *(array + v28 + 12) | ((v26 & 0x3F) << 8);
        int = intCopy + 7;
        v7 = (v7 + 4);
        if (!--a7)
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
        *(longArray + v7 + 2) = v11 >> 50;
        v14 = *(longArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = v7 + 2;
        *(longArray + v13 + 2) = (v11 >> 36) & 0x3FFF;
        v16 = *(longArray + 2);
        if (v7 + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v7 + 2));
        }

        v17 = v7 + 3;
        *(longArray + v15 + 2) = (v11 >> 22) & 0x3FFF;
        v18 = *(longArray + 2);
        if (v7 + 3 < 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (v7 + 3));
        }

        v19 = (int + 1);
        *(longArray + v17 + 2) = (v11 >> 8) & 0x3FFF;
        v20 = *(array + 2);
        if ((v19 & 0x80000000) != 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v19);
        }

        v21 = v7 + 4;
        v22 = *(array + v19 + 2);
        v23 = *(longArray + 2);
        if (v7 + 4 < 0 || v21 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 4));
        }

        *(&v24 + 1) = v11;
        *&v24 = *(array + v19 + 2);
        v25 = v7 + 5;
        *(longArray + v21 + 2) = (v24 >> 58) & 0x3FFF;
        v26 = *(longArray + 2);
        if (v7 + 5 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 5));
        }

        v27 = v7 + 6;
        *(longArray + v25 + 2) = (v22 >> 44) & 0x3FFF;
        v28 = *(longArray + 2);
        if (v7 + 6 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v7 + 6));
        }

        v29 = v7 + 7;
        *(longArray + v27 + 2) = (v22 >> 30) & 0x3FFF;
        v30 = *(longArray + 2);
        if (v7 + 7 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 7));
        }

        v31 = v7 + 8;
        *(longArray + v29 + 2) = (v22 >> 16) & 0x3FFF;
        v32 = *(longArray + 2);
        if (v7 + 8 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 8));
        }

        v33 = intCopy + 2;
        *(longArray + v31 + 2) = v22 >> 2;
        v34 = *(array + 2);
        if (intCopy + 2 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (intCopy + 2));
        }

        v35 = v7 + 9;
        v36 = *(array + v33 + 2);
        v37 = *(longArray + 2);
        if (v7 + 9 < 0 || v35 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 9));
        }

        *(&v38 + 1) = v22;
        *&v38 = *(array + v33 + 2);
        v39 = v7 + 10;
        *(longArray + v35 + 2) = (v38 >> 52) & 0x3FFF;
        v40 = *(longArray + 2);
        if (v7 + 10 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 10));
        }

        v41 = v7 + 11;
        *(longArray + v39 + 2) = (v36 >> 38) & 0x3FFF;
        v42 = *(longArray + 2);
        if (v7 + 11 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 11));
        }

        v43 = v7 + 12;
        *(longArray + v41 + 2) = (v36 >> 24) & 0x3FFF;
        v44 = *(longArray + 2);
        if (v7 + 12 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 12));
        }

        v45 = intCopy + 3;
        *(longArray + v43 + 2) = (v36 >> 10) & 0x3FFF;
        v46 = *(array + 2);
        if (intCopy + 3 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (intCopy + 3));
        }

        v47 = v7 + 13;
        v48 = *(array + v45 + 2);
        v49 = *(longArray + 2);
        if (v7 + 13 < 0 || v47 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 13));
        }

        *(&v50 + 1) = v36;
        *&v50 = *(array + v45 + 2);
        v51 = v7 + 14;
        *(longArray + v47 + 2) = (v50 >> 60) & 0x3FFF;
        v52 = *(longArray + 2);
        if (v7 + 14 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 14));
        }

        v53 = v7 + 15;
        *(longArray + v51 + 2) = (v48 >> 46) & 0x3FFF;
        v54 = *(longArray + 2);
        if (v7 + 15 < 0 || v53 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 15));
        }

        v55 = v7 + 16;
        *(longArray + v53 + 2) = HIDWORD(v48) & 0x3FFF;
        v56 = *(longArray + 2);
        if (v7 + 16 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 16));
        }

        v57 = v7 + 17;
        *(longArray + v55 + 2) = v48 >> 18;
        v58 = *(longArray + 2);
        if (v7 + 17 < 0 || v57 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 17));
        }

        v59 = intCopy + 4;
        *(longArray + v57 + 2) = (v48 >> 4) & 0x3FFF;
        v60 = *(array + 2);
        if (intCopy + 4 < 0 || v59 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (intCopy + 4));
        }

        v61 = v7 + 18;
        v62 = *(array + v59 + 2);
        v63 = *(longArray + 2);
        if (v7 + 18 < 0 || v61 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 18));
        }

        *(&v64 + 1) = v48;
        *&v64 = *(array + v59 + 2);
        v65 = v7 + 19;
        *(longArray + v61 + 2) = (v64 >> 54) & 0x3FFF;
        v66 = *(longArray + 2);
        if (v7 + 19 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 19));
        }

        v67 = v7 + 20;
        *(longArray + v65 + 2) = (v62 >> 40) & 0x3FFF;
        v68 = *(longArray + 2);
        if (v7 + 20 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 20));
        }

        v69 = v7 + 21;
        *(longArray + v67 + 2) = (v62 >> 26) & 0x3FFF;
        v70 = *(longArray + 2);
        if (v7 + 21 < 0 || v69 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (v7 + 21));
        }

        v71 = intCopy + 5;
        *(longArray + v69 + 2) = (v62 >> 12) & 0x3FFF;
        v72 = *(array + 2);
        if (intCopy + 5 < 0 || v71 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (intCopy + 5));
        }

        v73 = v7 + 22;
        v74 = *(array + v71 + 2);
        v75 = *(longArray + 2);
        if (v7 + 22 < 0 || v73 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 22));
        }

        *(&v76 + 1) = v62;
        *&v76 = *(array + v71 + 2);
        v77 = v7 + 23;
        *(longArray + v73 + 2) = (v76 >> 62) & 0x3FFF;
        v78 = *(longArray + 2);
        if (v7 + 23 < 0 || v77 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (v7 + 23));
        }

        v79 = v7 + 24;
        *(longArray + v77 + 2) = HIWORD(v74) & 0x3FFF;
        v80 = *(longArray + 2);
        if (v7 + 24 < 0 || v79 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 24));
        }

        v81 = v7 + 25;
        *(longArray + v79 + 2) = (v74 >> 34) & 0x3FFF;
        v82 = *(longArray + 2);
        if (v7 + 25 < 0 || v81 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 25));
        }

        v83 = v7 + 26;
        *(longArray + v81 + 2) = (v74 >> 20) & 0x3FFF;
        v84 = *(longArray + 2);
        if (v7 + 26 < 0 || v83 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 26));
        }

        v85 = intCopy + 6;
        *(longArray + v83 + 2) = (v74 >> 6) & 0x3FFF;
        v86 = *(array + 2);
        if (intCopy + 6 < 0 || v85 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (intCopy + 6));
        }

        v87 = v7 + 27;
        v88 = *(array + v85 + 2);
        v89 = *(longArray + 2);
        if (v7 + 27 < 0 || v87 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 27));
        }

        *(&v90 + 1) = v74;
        *&v90 = *(array + v85 + 2);
        v91 = v7 + 28;
        *(longArray + v87 + 2) = (v90 >> 56) & 0x3FFF;
        v92 = *(longArray + 2);
        if (v7 + 28 < 0 || v91 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 28));
        }

        v93 = v7 + 29;
        *(longArray + v91 + 2) = (v88 >> 42) & 0x3FFF;
        v94 = *(longArray + 2);
        if (v7 + 29 < 0 || v93 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (v7 + 29));
        }

        v95 = v7 + 30;
        *(longArray + v93 + 2) = (v88 >> 28) & 0x3FFF;
        v96 = *(longArray + 2);
        if (v7 + 30 < 0 || v95 >= v96)
        {
          IOSArray_throwOutOfBoundsWithMsg(v96, (v7 + 30));
        }

        v97 = v7 + 31;
        *(longArray + v95 + 2) = (v88 >> 14) & 0x3FFF;
        v98 = *(longArray + 2);
        if (v7 + 31 < 0 || v97 >= v98)
        {
          IOSArray_throwOutOfBoundsWithMsg(v98, (v7 + 31));
        }

        *(longArray + v97 + 2) = v88 & 0x3FFF;
        int = intCopy + 7;
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
      v7 = *&withInt;
      while (1)
      {
        intCopy = int;
        v10 = *(array + 2);
        if (int < 0 || int >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, int);
        }

        v11 = (int + 1);
        if ((v11 & 0x80000000) != 0 || v11 >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, v11);
        }

        if (!longArray)
        {
          break;
        }

        v12 = *(array + v11 + 12);
        v13 = *(longArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v7);
        }

        v14 = intCopy + 2;
        *(longArray + v7 + 2) = (v12 >> 2) | (*(array + intCopy + 12) << 6);
        v15 = *(array + 2);
        if (intCopy + 2 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (intCopy + 2));
        }

        v16 = intCopy + 3;
        v17 = *(array + v14 + 12);
        if (intCopy + 3 < 0 || v16 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (intCopy + 3));
        }

        v18 = v7 + 1;
        v19 = *(array + v16 + 12);
        v20 = *(longArray + 2);
        if (v7 + 1 < 0 || v18 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v7 + 1));
        }

        v21 = intCopy + 4;
        *(longArray + v18 + 2) = ((v12 & 3) << 12) | (16 * v17) | (v19 >> 4);
        v22 = *(array + 2);
        if (intCopy + 4 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (intCopy + 4));
        }

        v23 = intCopy + 5;
        v24 = *(array + v21 + 12);
        if (intCopy + 5 < 0 || v23 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (intCopy + 5));
        }

        v25 = v7 + 2;
        v26 = *(array + v23 + 12);
        v27 = *(longArray + 2);
        if (v7 + 2 < 0 || v25 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 2));
        }

        v28 = intCopy + 6;
        *(longArray + v25 + 2) = ((v19 & 0xF) << 10) | (4 * v24) | (v26 >> 6);
        v29 = *(array + 2);
        if (intCopy + 6 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (intCopy + 6));
        }

        v30 = v7 + 3;
        v31 = *(longArray + 2);
        if (v7 + 3 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 3));
        }

        *(longArray + v30 + 2) = *(array + v28 + 12) | ((v26 & 0x3F) << 8);
        int = intCopy + 7;
        v7 = (v7 + 4);
        if (!--a7)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

@end