@interface OrgApacheLuceneUtilPackedBulkOperationPacked22
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked22

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
        *(intArray + v7 + 3) = v11 >> 42;
        v14 = *(intArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = (int + 1);
        *(intArray + v13 + 3) = (v11 >> 20) & 0x3FFFFF;
        v16 = *(array + 2);
        if ((v15 & 0x80000000) != 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v15);
        }

        v17 = v7 + 2;
        v18 = *(array + v15 + 2);
        v19 = *(intArray + 2);
        if (v7 + 2 < 0 || v17 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 2));
        }

        v20 = v7 + 3;
        *(intArray + v17 + 3) = (v18 >> 62) & 3 | (4 * (v11 & 0xFFFFF));
        v21 = *(intArray + 2);
        if (v7 + 3 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 3));
        }

        v22 = v7 + 4;
        *(intArray + v20 + 3) = (v18 >> 40) & 0x3FFFFF;
        v23 = *(intArray + 2);
        if (v7 + 4 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 4));
        }

        v24 = intCopy + 2;
        *(intArray + v22 + 3) = (v18 >> 18) & 0x3FFFFF;
        v25 = *(array + 2);
        if (intCopy + 2 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (intCopy + 2));
        }

        v26 = v7 + 5;
        v27 = *(array + v24 + 2);
        v28 = *(intArray + 2);
        if (v7 + 5 < 0 || v26 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v7 + 5));
        }

        v29 = v7 + 6;
        *(intArray + v26 + 3) = (v27 >> 60) & 0xF | (16 * (v18 & 0x3FFFF));
        v30 = *(intArray + 2);
        if (v7 + 6 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 6));
        }

        v31 = v7 + 7;
        *(intArray + v29 + 3) = (v27 >> 38) & 0x3FFFFF;
        v32 = *(intArray + 2);
        if (v7 + 7 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 7));
        }

        v33 = intCopy + 3;
        *(intArray + v31 + 3) = (v27 >> 16) & 0x3FFFFF;
        v34 = *(array + 2);
        if (intCopy + 3 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (intCopy + 3));
        }

        v35 = v7 + 8;
        v36 = *(array + v33 + 2);
        v37 = *(intArray + 2);
        if (v7 + 8 < 0 || v35 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 8));
        }

        v38 = v7 + 9;
        *(intArray + v35 + 3) = (v36 >> 58) & 0x3F | (v27 << 6);
        v39 = *(intArray + 2);
        if (v7 + 9 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 9));
        }

        v40 = v7 + 10;
        *(intArray + v38 + 3) = (v36 >> 36) & 0x3FFFFF;
        v41 = *(intArray + 2);
        if (v7 + 10 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 10));
        }

        v42 = intCopy + 4;
        *(intArray + v40 + 3) = (v36 >> 14) & 0x3FFFFF;
        v43 = *(array + 2);
        if (intCopy + 4 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (intCopy + 4));
        }

        v44 = v7 + 11;
        v45 = *(array + v42 + 2);
        v46 = *(intArray + 2);
        if (v7 + 11 < 0 || v44 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 11));
        }

        v47 = v7 + 12;
        *(intArray + v44 + 3) = HIBYTE(v45) | ((v36 & 0x3FFF) << 8);
        v48 = *(intArray + 2);
        if (v7 + 12 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 12));
        }

        v49 = v7 + 13;
        *(intArray + v47 + 3) = (v45 >> 34) & 0x3FFFFF;
        v50 = *(intArray + 2);
        if (v7 + 13 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 13));
        }

        v51 = intCopy + 5;
        *(intArray + v49 + 3) = (v45 >> 12) & 0x3FFFFF;
        v52 = *(array + 2);
        if (intCopy + 5 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (intCopy + 5));
        }

        v53 = v7 + 14;
        v54 = *(array + v51 + 2);
        v55 = *(intArray + 2);
        if (v7 + 14 < 0 || v53 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 14));
        }

        v56 = v7 + 15;
        *(intArray + v53 + 3) = (v54 >> 54) & 0x3FF | ((v45 & 0xFFF) << 10);
        v57 = *(intArray + 2);
        if (v7 + 15 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 15));
        }

        v58 = v7 + 16;
        *(intArray + v56 + 3) = HIDWORD(v54) & 0x3FFFFF;
        v59 = *(intArray + 2);
        if (v7 + 16 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 16));
        }

        v60 = intCopy + 6;
        *(intArray + v58 + 3) = v54 >> 10;
        v61 = *(array + 2);
        if (intCopy + 6 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (intCopy + 6));
        }

        v62 = v7 + 17;
        v63 = *(array + v60 + 2);
        v64 = *(intArray + 2);
        if (v7 + 17 < 0 || v62 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 17));
        }

        v65 = v7 + 18;
        *(intArray + v62 + 3) = (v63 >> 52) & 0xFFF | ((v54 & 0x3FF) << 12);
        v66 = *(intArray + 2);
        if (v7 + 18 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 18));
        }

        v67 = v7 + 19;
        *(intArray + v65 + 3) = (v63 >> 30) & 0x3FFFFF;
        v68 = *(intArray + 2);
        if (v7 + 19 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 19));
        }

        v69 = intCopy + 7;
        *(intArray + v67 + 3) = (v63 >> 8) & 0x3FFFFF;
        v70 = *(array + 2);
        if (intCopy + 7 < 0 || v69 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (intCopy + 7));
        }

        v71 = v7 + 20;
        v72 = *(array + v69 + 2);
        v73 = *(intArray + 2);
        if (v7 + 20 < 0 || v71 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 20));
        }

        v74 = v7 + 21;
        *(intArray + v71 + 3) = (v72 >> 50) & 0x3FFF | (v63 << 14);
        v75 = *(intArray + 2);
        if (v7 + 21 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 21));
        }

        v76 = v7 + 22;
        *(intArray + v74 + 3) = (v72 >> 28) & 0x3FFFFF;
        v77 = *(intArray + 2);
        if (v7 + 22 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 22));
        }

        v78 = intCopy + 8;
        *(intArray + v76 + 3) = (v72 >> 6) & 0x3FFFFF;
        v79 = *(array + 2);
        if (intCopy + 8 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (intCopy + 8));
        }

        v80 = v7 + 23;
        v81 = *(array + v78 + 2);
        v82 = *(intArray + 2);
        if (v7 + 23 < 0 || v80 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 23));
        }

        v83 = v7 + 24;
        *(intArray + v80 + 3) = HIWORD(v81) | ((v72 & 0x3F) << 16);
        v84 = *(intArray + 2);
        if (v7 + 24 < 0 || v83 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 24));
        }

        v85 = v7 + 25;
        *(intArray + v83 + 3) = (v81 >> 26) & 0x3FFFFF;
        v86 = *(intArray + 2);
        if (v7 + 25 < 0 || v85 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (v7 + 25));
        }

        v87 = intCopy + 9;
        *(intArray + v85 + 3) = (v81 >> 4) & 0x3FFFFF;
        v88 = *(array + 2);
        if (intCopy + 9 < 0 || v87 >= v88)
        {
          IOSArray_throwOutOfBoundsWithMsg(v88, (intCopy + 9));
        }

        v89 = v7 + 26;
        v90 = *(array + v87 + 2);
        v91 = *(intArray + 2);
        if (v7 + 26 < 0 || v89 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 26));
        }

        v92 = v7 + 27;
        *(intArray + v89 + 3) = (v90 >> 46) & 0xFFC3FFFF | ((v81 & 0xF) << 18);
        v93 = *(intArray + 2);
        if (v7 + 27 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 27));
        }

        v94 = v7 + 28;
        *(intArray + v92 + 3) = (v90 >> 24) & 0x3FFFFF;
        v95 = *(intArray + 2);
        if (v7 + 28 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (v7 + 28));
        }

        v96 = intCopy + 10;
        *(intArray + v94 + 3) = (v90 >> 2) & 0x3FFFFF;
        v97 = *(array + 2);
        if (intCopy + 10 < 0 || v96 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (intCopy + 10));
        }

        v98 = v7 + 29;
        v99 = *(array + v96 + 2);
        v100 = *(intArray + 2);
        if (v7 + 29 < 0 || v98 >= v100)
        {
          IOSArray_throwOutOfBoundsWithMsg(v100, (v7 + 29));
        }

        v101 = (v99 >> 44) & 0xFFCFFFFF | ((v90 & 3) << 20);
        v102 = v7 + 30;
        *(intArray + v98 + 3) = v101;
        v103 = *(intArray + 2);
        if (v7 + 30 < 0 || v102 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (v7 + 30));
        }

        v104 = v7 + 31;
        *(intArray + v102 + 3) = (v99 >> 22) & 0x3FFFFF;
        v105 = *(intArray + 2);
        if (v7 + 31 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (v7 + 31));
        }

        *(intArray + v104 + 3) = v99 & 0x3FFFFF;
        int = intCopy + 11;
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

        v12 = intCopy + 2;
        v13 = *(array + v11 + 12);
        if (intCopy + 2 < 0 || v12 >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, (intCopy + 2));
        }

        if (!intArray)
        {
          break;
        }

        v14 = *(array + v12 + 12);
        v15 = *(intArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v7);
        }

        v16 = intCopy + 3;
        *(intArray + v7 + 3) = (*(array + intCopy + 12) << 14) | (v13 << 6) | (v14 >> 2);
        v17 = *(array + 2);
        if (intCopy + 3 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (intCopy + 3));
        }

        v18 = intCopy + 4;
        v19 = *(array + v16 + 12);
        if (intCopy + 4 < 0 || v18 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (intCopy + 4));
        }

        v20 = intCopy + 5;
        v21 = *(array + v18 + 12);
        if (intCopy + 5 < 0 || v20 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (intCopy + 5));
        }

        v22 = v7 + 1;
        v23 = *(array + v20 + 12);
        v24 = *(intArray + 2);
        if (v7 + 1 < 0 || v22 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 1));
        }

        v25 = intCopy + 6;
        *(intArray + v22 + 3) = ((v14 & 3) << 20) | (v19 << 12) | (16 * v21) | (v23 >> 4);
        v26 = *(array + 2);
        if (intCopy + 6 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 6));
        }

        v27 = intCopy + 7;
        v28 = *(array + v25 + 12);
        if (intCopy + 7 < 0 || v27 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 7));
        }

        v29 = intCopy + 8;
        v30 = *(array + v27 + 12);
        if (intCopy + 8 < 0 || v29 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 8));
        }

        v31 = v7 + 2;
        v32 = *(array + v29 + 12);
        v33 = *(intArray + 2);
        if (v7 + 2 < 0 || v31 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 2));
        }

        v34 = intCopy + 9;
        *(intArray + v31 + 3) = ((v23 & 0xF) << 18) | (v28 << 10) | (4 * v30) | (v32 >> 6);
        v35 = *(array + 2);
        if (intCopy + 9 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (intCopy + 9));
        }

        v36 = intCopy + 10;
        v37 = *(array + v34 + 12);
        if (intCopy + 10 < 0 || v36 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (intCopy + 10));
        }

        v38 = v7 + 3;
        v39 = *(array + v36 + 12);
        v40 = *(intArray + 2);
        if (v7 + 3 < 0 || v38 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 3));
        }

        *(intArray + v38 + 3) = ((v32 & 0x3F) << 16) | (v37 << 8) | v39;
        int = intCopy + 11;
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
        *(longArray + v7 + 2) = v11 >> 42;
        v14 = *(longArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = (int + 1);
        *(longArray + v13 + 2) = (v11 >> 20) & 0x3FFFFF;
        v16 = *(array + 2);
        if ((v15 & 0x80000000) != 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v15);
        }

        v17 = v7 + 2;
        v18 = *(array + v15 + 2);
        v19 = *(longArray + 2);
        if (v7 + 2 < 0 || v17 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 2));
        }

        *(&v20 + 1) = v11;
        *&v20 = *(array + v15 + 2);
        v21 = v7 + 3;
        *(longArray + v17 + 2) = (v20 >> 62) & 0x3FFFFF;
        v22 = *(longArray + 2);
        if (v7 + 3 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v7 + 3));
        }

        v23 = v7 + 4;
        *(longArray + v21 + 2) = (v18 >> 40) & 0x3FFFFF;
        v24 = *(longArray + 2);
        if (v7 + 4 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 4));
        }

        v25 = intCopy + 2;
        *(longArray + v23 + 2) = (v18 >> 18) & 0x3FFFFF;
        v26 = *(array + 2);
        if (intCopy + 2 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 2));
        }

        v27 = v7 + 5;
        v28 = *(array + v25 + 2);
        v29 = *(longArray + 2);
        if (v7 + 5 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 5));
        }

        *(&v30 + 1) = v18;
        *&v30 = *(array + v25 + 2);
        v31 = v7 + 6;
        *(longArray + v27 + 2) = (v30 >> 60) & 0x3FFFFF;
        v32 = *(longArray + 2);
        if (v7 + 6 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 6));
        }

        v33 = v7 + 7;
        *(longArray + v31 + 2) = (v28 >> 38) & 0x3FFFFF;
        v34 = *(longArray + 2);
        if (v7 + 7 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 7));
        }

        v35 = intCopy + 3;
        *(longArray + v33 + 2) = (v28 >> 16) & 0x3FFFFF;
        v36 = *(array + 2);
        if (intCopy + 3 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 3));
        }

        v37 = v7 + 8;
        v38 = *(array + v35 + 2);
        v39 = *(longArray + 2);
        if (v7 + 8 < 0 || v37 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 8));
        }

        *(&v40 + 1) = v28;
        *&v40 = *(array + v35 + 2);
        v41 = v7 + 9;
        *(longArray + v37 + 2) = (v40 >> 58) & 0x3FFFFF;
        v42 = *(longArray + 2);
        if (v7 + 9 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 9));
        }

        v43 = v7 + 10;
        *(longArray + v41 + 2) = (v38 >> 36) & 0x3FFFFF;
        v44 = *(longArray + 2);
        if (v7 + 10 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 10));
        }

        v45 = intCopy + 4;
        *(longArray + v43 + 2) = (v38 >> 14) & 0x3FFFFF;
        v46 = *(array + 2);
        if (intCopy + 4 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (intCopy + 4));
        }

        v47 = v7 + 11;
        v48 = *(array + v45 + 2);
        v49 = *(longArray + 2);
        if (v7 + 11 < 0 || v47 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 11));
        }

        *(&v50 + 1) = v38;
        *&v50 = *(array + v45 + 2);
        v51 = v7 + 12;
        *(longArray + v47 + 2) = (v50 >> 56) & 0x3FFFFF;
        v52 = *(longArray + 2);
        if (v7 + 12 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 12));
        }

        v53 = v7 + 13;
        *(longArray + v51 + 2) = (v48 >> 34) & 0x3FFFFF;
        v54 = *(longArray + 2);
        if (v7 + 13 < 0 || v53 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 13));
        }

        v55 = intCopy + 5;
        *(longArray + v53 + 2) = (v48 >> 12) & 0x3FFFFF;
        v56 = *(array + 2);
        if (intCopy + 5 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (intCopy + 5));
        }

        v57 = v7 + 14;
        v58 = *(array + v55 + 2);
        v59 = *(longArray + 2);
        if (v7 + 14 < 0 || v57 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 14));
        }

        *(&v60 + 1) = v48;
        *&v60 = *(array + v55 + 2);
        v61 = v7 + 15;
        *(longArray + v57 + 2) = (v60 >> 54) & 0x3FFFFF;
        v62 = *(longArray + 2);
        if (v7 + 15 < 0 || v61 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (v7 + 15));
        }

        v63 = v7 + 16;
        *(longArray + v61 + 2) = HIDWORD(v58) & 0x3FFFFF;
        v64 = *(longArray + 2);
        if (v7 + 16 < 0 || v63 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 16));
        }

        v65 = intCopy + 6;
        *(longArray + v63 + 2) = v58 >> 10;
        v66 = *(array + 2);
        if (intCopy + 6 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (intCopy + 6));
        }

        v67 = v7 + 17;
        v68 = *(array + v65 + 2);
        v69 = *(longArray + 2);
        if (v7 + 17 < 0 || v67 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 17));
        }

        *(&v70 + 1) = v58;
        *&v70 = *(array + v65 + 2);
        v71 = v7 + 18;
        *(longArray + v67 + 2) = (v70 >> 52) & 0x3FFFFF;
        v72 = *(longArray + 2);
        if (v7 + 18 < 0 || v71 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 18));
        }

        v73 = v7 + 19;
        *(longArray + v71 + 2) = (v68 >> 30) & 0x3FFFFF;
        v74 = *(longArray + 2);
        if (v7 + 19 < 0 || v73 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (v7 + 19));
        }

        v75 = intCopy + 7;
        *(longArray + v73 + 2) = (v68 >> 8) & 0x3FFFFF;
        v76 = *(array + 2);
        if (intCopy + 7 < 0 || v75 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (intCopy + 7));
        }

        v77 = v7 + 20;
        v78 = *(array + v75 + 2);
        v79 = *(longArray + 2);
        if (v7 + 20 < 0 || v77 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (v7 + 20));
        }

        *(&v80 + 1) = v68;
        *&v80 = *(array + v75 + 2);
        v81 = v7 + 21;
        *(longArray + v77 + 2) = (v80 >> 50) & 0x3FFFFF;
        v82 = *(longArray + 2);
        if (v7 + 21 < 0 || v81 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 21));
        }

        v83 = v7 + 22;
        *(longArray + v81 + 2) = (v78 >> 28) & 0x3FFFFF;
        v84 = *(longArray + 2);
        if (v7 + 22 < 0 || v83 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 22));
        }

        v85 = intCopy + 8;
        *(longArray + v83 + 2) = (v78 >> 6) & 0x3FFFFF;
        v86 = *(array + 2);
        if (intCopy + 8 < 0 || v85 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (intCopy + 8));
        }

        v87 = v7 + 23;
        v88 = *(array + v85 + 2);
        v89 = *(longArray + 2);
        if (v7 + 23 < 0 || v87 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 23));
        }

        *(&v90 + 1) = v78;
        *&v90 = *(array + v85 + 2);
        v91 = v7 + 24;
        *(longArray + v87 + 2) = (v90 >> 48) & 0x3FFFFF;
        v92 = *(longArray + 2);
        if (v7 + 24 < 0 || v91 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 24));
        }

        v93 = v7 + 25;
        *(longArray + v91 + 2) = (v88 >> 26) & 0x3FFFFF;
        v94 = *(longArray + 2);
        if (v7 + 25 < 0 || v93 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (v7 + 25));
        }

        v95 = intCopy + 9;
        *(longArray + v93 + 2) = (v88 >> 4) & 0x3FFFFF;
        v96 = *(array + 2);
        if (intCopy + 9 < 0 || v95 >= v96)
        {
          IOSArray_throwOutOfBoundsWithMsg(v96, (intCopy + 9));
        }

        v97 = v7 + 26;
        v98 = *(array + v95 + 2);
        v99 = *(longArray + 2);
        if (v7 + 26 < 0 || v97 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (v7 + 26));
        }

        *(&v100 + 1) = v88;
        *&v100 = *(array + v95 + 2);
        v101 = v7 + 27;
        *(longArray + v97 + 2) = (v100 >> 46) & 0x3FFFFF;
        v102 = *(longArray + 2);
        if (v7 + 27 < 0 || v101 >= v102)
        {
          IOSArray_throwOutOfBoundsWithMsg(v102, (v7 + 27));
        }

        v103 = v7 + 28;
        *(longArray + v101 + 2) = (v98 >> 24) & 0x3FFFFF;
        v104 = *(longArray + 2);
        if (v7 + 28 < 0 || v103 >= v104)
        {
          IOSArray_throwOutOfBoundsWithMsg(v104, (v7 + 28));
        }

        v105 = intCopy + 10;
        *(longArray + v103 + 2) = (v98 >> 2) & 0x3FFFFF;
        v106 = *(array + 2);
        if (intCopy + 10 < 0 || v105 >= v106)
        {
          IOSArray_throwOutOfBoundsWithMsg(v106, (intCopy + 10));
        }

        v107 = v7 + 29;
        v108 = *(array + v105 + 2);
        v109 = *(longArray + 2);
        if (v7 + 29 < 0 || v107 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 29));
        }

        *(&v110 + 1) = v98;
        *&v110 = *(array + v105 + 2);
        v111 = v7 + 30;
        *(longArray + v107 + 2) = (v110 >> 44) & 0x3FFFFF;
        v112 = *(longArray + 2);
        if (v7 + 30 < 0 || v111 >= v112)
        {
          IOSArray_throwOutOfBoundsWithMsg(v112, (v7 + 30));
        }

        v113 = v7 + 31;
        *(longArray + v111 + 2) = (v108 >> 22) & 0x3FFFFF;
        v114 = *(longArray + 2);
        if (v7 + 31 < 0 || v113 >= v114)
        {
          IOSArray_throwOutOfBoundsWithMsg(v114, (v7 + 31));
        }

        *(longArray + v113 + 2) = v108 & 0x3FFFFF;
        int = intCopy + 11;
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

        v12 = intCopy + 2;
        v13 = *(array + v11 + 12);
        if (intCopy + 2 < 0 || v12 >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, (intCopy + 2));
        }

        if (!longArray)
        {
          break;
        }

        v14 = *(array + v12 + 12);
        v15 = *(longArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v7);
        }

        v16 = intCopy + 3;
        *(longArray + v7 + 2) = (*(array + intCopy + 12) << 14) | (v13 << 6) | (v14 >> 2);
        v17 = *(array + 2);
        if (intCopy + 3 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (intCopy + 3));
        }

        v18 = intCopy + 4;
        v19 = *(array + v16 + 12);
        if (intCopy + 4 < 0 || v18 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (intCopy + 4));
        }

        v20 = intCopy + 5;
        v21 = *(array + v18 + 12);
        if (intCopy + 5 < 0 || v20 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (intCopy + 5));
        }

        v22 = v7 + 1;
        v23 = *(array + v20 + 12);
        v24 = *(longArray + 2);
        if (v7 + 1 < 0 || v22 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 1));
        }

        v25 = intCopy + 6;
        *(longArray + v22 + 2) = ((v14 & 3) << 20) | (v19 << 12) | (16 * v21) | (v23 >> 4);
        v26 = *(array + 2);
        if (intCopy + 6 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 6));
        }

        v27 = intCopy + 7;
        v28 = *(array + v25 + 12);
        if (intCopy + 7 < 0 || v27 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 7));
        }

        v29 = intCopy + 8;
        v30 = *(array + v27 + 12);
        if (intCopy + 8 < 0 || v29 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 8));
        }

        v31 = v7 + 2;
        v32 = *(array + v29 + 12);
        v33 = *(longArray + 2);
        if (v7 + 2 < 0 || v31 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 2));
        }

        v34 = intCopy + 9;
        *(longArray + v31 + 2) = ((v23 & 0xF) << 18) | (v28 << 10) | (4 * v30) | (v32 >> 6);
        v35 = *(array + 2);
        if (intCopy + 9 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (intCopy + 9));
        }

        v36 = intCopy + 10;
        v37 = *(array + v34 + 12);
        if (intCopy + 10 < 0 || v36 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (intCopy + 10));
        }

        v38 = v7 + 3;
        v39 = *(array + v36 + 12);
        v40 = *(longArray + 2);
        if (v7 + 3 < 0 || v38 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 3));
        }

        *(longArray + v38 + 2) = ((v32 & 0x3F) << 16) | (v37 << 8) | v39;
        int = intCopy + 11;
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