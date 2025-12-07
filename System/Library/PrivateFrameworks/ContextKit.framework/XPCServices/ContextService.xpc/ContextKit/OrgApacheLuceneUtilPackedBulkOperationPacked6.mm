@interface OrgApacheLuceneUtilPackedBulkOperationPacked6
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked6

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
        *(intArray + v7 + 3) = v11 >> 58;
        v14 = *(intArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = v7 + 2;
        *(intArray + v13 + 3) = (v11 >> 52) & 0x3F;
        v16 = *(intArray + 2);
        if (v7 + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v7 + 2));
        }

        v17 = v7 + 3;
        *(intArray + v15 + 3) = (v11 >> 46) & 0x3F;
        v18 = *(intArray + 2);
        if (v7 + 3 < 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (v7 + 3));
        }

        v19 = v7 + 4;
        *(intArray + v17 + 3) = (v11 >> 40) & 0x3F;
        v20 = *(intArray + 2);
        if (v7 + 4 < 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v7 + 4));
        }

        v21 = v7 + 5;
        *(intArray + v19 + 3) = (v11 >> 34) & 0x3F;
        v22 = *(intArray + 2);
        if (v7 + 5 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v7 + 5));
        }

        v23 = v7 + 6;
        *(intArray + v21 + 3) = (v11 >> 28) & 0x3F;
        v24 = *(intArray + 2);
        if (v7 + 6 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 6));
        }

        v25 = v7 + 7;
        *(intArray + v23 + 3) = (v11 >> 22) & 0x3F;
        v26 = *(intArray + 2);
        if (v7 + 7 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 7));
        }

        v27 = v7 + 8;
        *(intArray + v25 + 3) = WORD1(v11) & 0x3F;
        v28 = *(intArray + 2);
        if (v7 + 8 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v7 + 8));
        }

        v29 = v7 + 9;
        *(intArray + v27 + 3) = v11 >> 10;
        v30 = *(intArray + 2);
        if (v7 + 9 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 9));
        }

        v31 = (int + 1);
        *(intArray + v29 + 3) = (v11 >> 4) & 0x3F;
        v32 = *(array + 2);
        if ((v31 & 0x80000000) != 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, v31);
        }

        v33 = v7 + 10;
        v34 = *(array + v31 + 2);
        v35 = *(intArray + 2);
        if (v7 + 10 < 0 || v33 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 10));
        }

        v36 = v7 + 11;
        *(intArray + v33 + 3) = (v34 >> 62) & 0xC3 | (4 * (v11 & 0xF));
        v37 = *(intArray + 2);
        if (v7 + 11 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 11));
        }

        v38 = v7 + 12;
        *(intArray + v36 + 3) = HIBYTE(v34) & 0x3F;
        v39 = *(intArray + 2);
        if (v7 + 12 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 12));
        }

        v40 = v7 + 13;
        *(intArray + v38 + 3) = (v34 >> 50) & 0x3F;
        v41 = *(intArray + 2);
        if (v7 + 13 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 13));
        }

        v42 = v7 + 14;
        *(intArray + v40 + 3) = (v34 >> 44) & 0x3F;
        v43 = *(intArray + 2);
        if (v7 + 14 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 14));
        }

        v44 = v7 + 15;
        *(intArray + v42 + 3) = (v34 >> 38) & 0x3F;
        v45 = *(intArray + 2);
        if (v7 + 15 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 15));
        }

        v46 = v7 + 16;
        *(intArray + v44 + 3) = BYTE4(v34) & 0x3F;
        v47 = *(intArray + 2);
        if (v7 + 16 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 16));
        }

        v48 = v7 + 17;
        *(intArray + v46 + 3) = v34 >> 26;
        v49 = *(intArray + 2);
        if (v7 + 17 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 17));
        }

        v50 = v7 + 18;
        *(intArray + v48 + 3) = (v34 >> 20) & 0x3F;
        v51 = *(intArray + 2);
        if (v7 + 18 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 18));
        }

        v52 = v7 + 19;
        *(intArray + v50 + 3) = (v34 >> 14) & 0x3F;
        v53 = *(intArray + 2);
        if (v7 + 19 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 19));
        }

        v54 = v7 + 20;
        *(intArray + v52 + 3) = (v34 >> 8) & 0x3F;
        v55 = *(intArray + 2);
        if (v7 + 20 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 20));
        }

        v56 = intCopy + 2;
        *(intArray + v54 + 3) = v34 >> 2;
        v57 = *(array + 2);
        if (intCopy + 2 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (intCopy + 2));
        }

        v58 = v7 + 21;
        v59 = *(array + v56 + 2);
        v60 = *(intArray + 2);
        if (v7 + 21 < 0 || v58 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (v7 + 21));
        }

        v61 = v7 + 22;
        *(intArray + v58 + 3) = (v59 >> 60) & 0xCF | (16 * (v34 & 3));
        v62 = *(intArray + 2);
        if (v7 + 22 < 0 || v61 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (v7 + 22));
        }

        v63 = v7 + 23;
        *(intArray + v61 + 3) = (v59 >> 54) & 0x3F;
        v64 = *(intArray + 2);
        if (v7 + 23 < 0 || v63 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 23));
        }

        v65 = v7 + 24;
        *(intArray + v63 + 3) = HIWORD(v59) & 0x3F;
        v66 = *(intArray + 2);
        if (v7 + 24 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 24));
        }

        v67 = v7 + 25;
        *(intArray + v65 + 3) = (v59 >> 42) & 0x3F;
        v68 = *(intArray + 2);
        if (v7 + 25 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 25));
        }

        v69 = v7 + 26;
        *(intArray + v67 + 3) = (v59 >> 36) & 0x3F;
        v70 = *(intArray + 2);
        if (v7 + 26 < 0 || v69 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (v7 + 26));
        }

        v71 = v7 + 27;
        *(intArray + v69 + 3) = (v59 >> 30) & 0x3F;
        v72 = *(intArray + 2);
        if (v7 + 27 < 0 || v71 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 27));
        }

        v73 = v7 + 28;
        *(intArray + v71 + 3) = BYTE3(v59) & 0x3F;
        v74 = *(intArray + 2);
        if (v7 + 28 < 0 || v73 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (v7 + 28));
        }

        v75 = v7 + 29;
        *(intArray + v73 + 3) = (v59 >> 18) & 0x3F;
        v76 = *(intArray + 2);
        if (v7 + 29 < 0 || v75 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 29));
        }

        v77 = v7 + 30;
        *(intArray + v75 + 3) = (v59 >> 12) & 0x3F;
        v78 = *(intArray + 2);
        if (v7 + 30 < 0 || v77 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (v7 + 30));
        }

        v79 = v7 + 31;
        *(intArray + v77 + 3) = (v59 >> 6) & 0x3F;
        v80 = *(intArray + 2);
        if (v7 + 31 < 0 || v79 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 31));
        }

        *(intArray + v79 + 3) = v59 & 0x3F;
        int = intCopy + 3;
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

        if (!intArray)
        {
          break;
        }

        v12 = *(array + int + 12);
        v13 = *(intArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v8);
        }

        v14 = (int + 1);
        *(intArray + v8 + 3) = v12 >> 2;
        v15 = *(array + 2);
        if ((v14 & 0x80000000) != 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v14);
        }

        v16 = v8 + 1;
        v17 = *(array + v14 + 12);
        v18 = *(intArray + 2);
        if (v8 + 1 < 0 || v16 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (v8 + 1));
        }

        v19 = intCopy + 2;
        *(intArray + v16 + 3) = (v17 >> 4) & 0xFFFFFFCF | (16 * (v12 & 3));
        v20 = *(array + 2);
        if (intCopy + 2 < 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (intCopy + 2));
        }

        v21 = v8 + 2;
        v22 = *(array + v19 + 12);
        v23 = *(intArray + 2);
        if (v8 + 2 < 0 || v21 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v8 + 2));
        }

        v24 = v8 + 3;
        *(intArray + v21 + 3) = (v22 >> 6) & 0xFFFFFFC3 | (4 * (v17 & 0xF));
        v25 = *(intArray + 2);
        if (v8 + 3 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v8 + 3));
        }

        *(intArray + v24 + 3) = v22 & 0x3F;
        int = intCopy + 3;
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
        *(longArray + v7 + 2) = v11 >> 58;
        v14 = *(longArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = v7 + 2;
        *(longArray + v13 + 2) = (v11 >> 52) & 0x3F;
        v16 = *(longArray + 2);
        if (v7 + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v7 + 2));
        }

        v17 = v7 + 3;
        *(longArray + v15 + 2) = (v11 >> 46) & 0x3F;
        v18 = *(longArray + 2);
        if (v7 + 3 < 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (v7 + 3));
        }

        v19 = v7 + 4;
        *(longArray + v17 + 2) = (v11 >> 40) & 0x3F;
        v20 = *(longArray + 2);
        if (v7 + 4 < 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v7 + 4));
        }

        v21 = v7 + 5;
        *(longArray + v19 + 2) = (v11 >> 34) & 0x3F;
        v22 = *(longArray + 2);
        if (v7 + 5 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v7 + 5));
        }

        v23 = v7 + 6;
        *(longArray + v21 + 2) = (v11 >> 28) & 0x3F;
        v24 = *(longArray + 2);
        if (v7 + 6 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 6));
        }

        v25 = v7 + 7;
        *(longArray + v23 + 2) = (v11 >> 22) & 0x3F;
        v26 = *(longArray + 2);
        if (v7 + 7 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 7));
        }

        v27 = v7 + 8;
        *(longArray + v25 + 2) = (v11 >> 16) & 0x3F;
        v28 = *(longArray + 2);
        if (v7 + 8 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v7 + 8));
        }

        v29 = v7 + 9;
        *(longArray + v27 + 2) = v11 >> 10;
        v30 = *(longArray + 2);
        if (v7 + 9 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 9));
        }

        v31 = (int + 1);
        *(longArray + v29 + 2) = (v11 >> 4) & 0x3F;
        v32 = *(array + 2);
        if ((v31 & 0x80000000) != 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, v31);
        }

        v33 = v7 + 10;
        v34 = *(array + v31 + 2);
        v35 = *(longArray + 2);
        if (v7 + 10 < 0 || v33 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 10));
        }

        *(&v36 + 1) = v11;
        *&v36 = *(array + v31 + 2);
        v37 = v7 + 11;
        *(longArray + v33 + 2) = (v36 >> 62) & 0x3F;
        v38 = *(longArray + 2);
        if (v7 + 11 < 0 || v37 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v7 + 11));
        }

        v39 = v7 + 12;
        *(longArray + v37 + 2) = HIBYTE(v34) & 0x3F;
        v40 = *(longArray + 2);
        if (v7 + 12 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 12));
        }

        v41 = v7 + 13;
        *(longArray + v39 + 2) = (v34 >> 50) & 0x3F;
        v42 = *(longArray + 2);
        if (v7 + 13 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 13));
        }

        v43 = v7 + 14;
        *(longArray + v41 + 2) = (v34 >> 44) & 0x3F;
        v44 = *(longArray + 2);
        if (v7 + 14 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 14));
        }

        v45 = v7 + 15;
        *(longArray + v43 + 2) = (v34 >> 38) & 0x3F;
        v46 = *(longArray + 2);
        if (v7 + 15 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 15));
        }

        v47 = v7 + 16;
        *(longArray + v45 + 2) = HIDWORD(v34) & 0x3F;
        v48 = *(longArray + 2);
        if (v7 + 16 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 16));
        }

        v49 = v7 + 17;
        *(longArray + v47 + 2) = v34 >> 26;
        v50 = *(longArray + 2);
        if (v7 + 17 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 17));
        }

        v51 = v7 + 18;
        *(longArray + v49 + 2) = (v34 >> 20) & 0x3F;
        v52 = *(longArray + 2);
        if (v7 + 18 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 18));
        }

        v53 = v7 + 19;
        *(longArray + v51 + 2) = (v34 >> 14) & 0x3F;
        v54 = *(longArray + 2);
        if (v7 + 19 < 0 || v53 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 19));
        }

        v55 = v7 + 20;
        *(longArray + v53 + 2) = (v34 >> 8) & 0x3F;
        v56 = *(longArray + 2);
        if (v7 + 20 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 20));
        }

        v57 = intCopy + 2;
        *(longArray + v55 + 2) = v34 >> 2;
        v58 = *(array + 2);
        if (intCopy + 2 < 0 || v57 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (intCopy + 2));
        }

        v59 = v7 + 21;
        v60 = *(array + v57 + 2);
        v61 = *(longArray + 2);
        if (v7 + 21 < 0 || v59 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 21));
        }

        *(&v62 + 1) = v34;
        *&v62 = *(array + v57 + 2);
        v63 = v7 + 22;
        *(longArray + v59 + 2) = (v62 >> 60) & 0x3F;
        v64 = *(longArray + 2);
        if (v7 + 22 < 0 || v63 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 22));
        }

        v65 = v7 + 23;
        *(longArray + v63 + 2) = (v60 >> 54) & 0x3F;
        v66 = *(longArray + 2);
        if (v7 + 23 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 23));
        }

        v67 = v7 + 24;
        *(longArray + v65 + 2) = HIWORD(v60) & 0x3F;
        v68 = *(longArray + 2);
        if (v7 + 24 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 24));
        }

        v69 = v7 + 25;
        *(longArray + v67 + 2) = (v60 >> 42) & 0x3F;
        v70 = *(longArray + 2);
        if (v7 + 25 < 0 || v69 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (v7 + 25));
        }

        v71 = v7 + 26;
        *(longArray + v69 + 2) = (v60 >> 36) & 0x3F;
        v72 = *(longArray + 2);
        if (v7 + 26 < 0 || v71 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 26));
        }

        v73 = v7 + 27;
        *(longArray + v71 + 2) = (v60 >> 30) & 0x3F;
        v74 = *(longArray + 2);
        if (v7 + 27 < 0 || v73 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (v7 + 27));
        }

        v75 = v7 + 28;
        *(longArray + v73 + 2) = (v60 >> 24) & 0x3F;
        v76 = *(longArray + 2);
        if (v7 + 28 < 0 || v75 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 28));
        }

        v77 = v7 + 29;
        *(longArray + v75 + 2) = (v60 >> 18) & 0x3F;
        v78 = *(longArray + 2);
        if (v7 + 29 < 0 || v77 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (v7 + 29));
        }

        v79 = v7 + 30;
        *(longArray + v77 + 2) = (v60 >> 12) & 0x3F;
        v80 = *(longArray + 2);
        if (v7 + 30 < 0 || v79 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 30));
        }

        v81 = v7 + 31;
        *(longArray + v79 + 2) = (v60 >> 6) & 0x3F;
        v82 = *(longArray + 2);
        if (v7 + 31 < 0 || v81 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 31));
        }

        *(longArray + v81 + 2) = v60 & 0x3F;
        int = intCopy + 3;
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

        if (!longArray)
        {
          break;
        }

        v12 = *(array + int + 12);
        v13 = *(longArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v8);
        }

        v14 = (int + 1);
        *(longArray + v8 + 2) = v12 >> 2;
        v15 = *(array + 2);
        if ((v14 & 0x80000000) != 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v14);
        }

        v16 = v8 + 1;
        v17 = *(array + v14 + 12);
        v18 = *(longArray + 2);
        if (v8 + 1 < 0 || v16 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (v8 + 1));
        }

        v19 = intCopy + 2;
        *(longArray + v16 + 2) = (v17 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v12 & 3));
        v20 = *(array + 2);
        if (intCopy + 2 < 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (intCopy + 2));
        }

        v21 = v8 + 2;
        v22 = *(array + v19 + 12);
        v23 = *(longArray + 2);
        if (v8 + 2 < 0 || v21 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v8 + 2));
        }

        v24 = v8 + 3;
        *(longArray + v21 + 2) = (v22 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v17 & 0xF));
        v25 = *(longArray + 2);
        if (v8 + 3 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v8 + 3));
        }

        *(longArray + v24 + 2) = v22 & 0x3F;
        int = intCopy + 3;
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