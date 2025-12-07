@interface OrgApacheLuceneUtilPackedBulkOperationPacked18
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked18

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
        *(intArray + v7 + 3) = v11 >> 46;
        v14 = *(intArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = v7 + 2;
        *(intArray + v13 + 3) = (v11 >> 28) & 0x3FFFF;
        v16 = *(intArray + 2);
        if (v7 + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v7 + 2));
        }

        v17 = (int + 1);
        *(intArray + v15 + 3) = (v11 >> 10) & 0x3FFFF;
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
        *(intArray + v19 + 3) = HIBYTE(v20) | ((v11 & 0x3FF) << 8);
        v23 = *(intArray + 2);
        if (v7 + 4 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 4));
        }

        v24 = v7 + 5;
        *(intArray + v22 + 3) = (v20 >> 38) & 0x3FFFF;
        v25 = *(intArray + 2);
        if (v7 + 5 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 5));
        }

        v26 = v7 + 6;
        *(intArray + v24 + 3) = (v20 >> 20) & 0x3FFFF;
        v27 = *(intArray + 2);
        if (v7 + 6 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 6));
        }

        v28 = intCopy + 2;
        *(intArray + v26 + 3) = (v20 >> 2) & 0x3FFFF;
        v29 = *(array + 2);
        if (intCopy + 2 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (intCopy + 2));
        }

        v30 = v7 + 7;
        v31 = *(array + v28 + 2);
        v32 = *(intArray + 2);
        if (v7 + 7 < 0 || v30 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 7));
        }

        v33 = v7 + 8;
        *(intArray + v30 + 3) = HIWORD(v31) | ((v20 & 3) << 16);
        v34 = *(intArray + 2);
        if (v7 + 8 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 8));
        }

        v35 = v7 + 9;
        *(intArray + v33 + 3) = (v31 >> 30) & 0x3FFFF;
        v36 = *(intArray + 2);
        if (v7 + 9 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v7 + 9));
        }

        v37 = intCopy + 3;
        *(intArray + v35 + 3) = (v31 >> 12) & 0x3FFFF;
        v38 = *(array + 2);
        if (intCopy + 3 < 0 || v37 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (intCopy + 3));
        }

        v39 = v7 + 10;
        v40 = *(array + v37 + 2);
        v41 = *(intArray + 2);
        if (v7 + 10 < 0 || v39 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 10));
        }

        v42 = v7 + 11;
        *(intArray + v39 + 3) = (v40 >> 58) & 0x3F | ((v31 & 0xFFF) << 6);
        v43 = *(intArray + 2);
        if (v7 + 11 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 11));
        }

        v44 = v7 + 12;
        *(intArray + v42 + 3) = (v40 >> 40) & 0x3FFFF;
        v45 = *(intArray + 2);
        if (v7 + 12 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 12));
        }

        v46 = v7 + 13;
        *(intArray + v44 + 3) = (v40 >> 22) & 0x3FFFF;
        v47 = *(intArray + 2);
        if (v7 + 13 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 13));
        }

        v48 = intCopy + 4;
        *(intArray + v46 + 3) = (v40 >> 4) & 0x3FFFF;
        v49 = *(array + 2);
        if (intCopy + 4 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (intCopy + 4));
        }

        v50 = v7 + 14;
        v51 = *(array + v48 + 2);
        v52 = *(intArray + 2);
        if (v7 + 14 < 0 || v50 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 14));
        }

        v53 = v7 + 15;
        *(intArray + v50 + 3) = (v51 >> 50) & 0x3FFF | ((v40 & 0xF) << 14);
        v54 = *(intArray + 2);
        if (v7 + 15 < 0 || v53 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 15));
        }

        v55 = v7 + 16;
        *(intArray + v53 + 3) = HIDWORD(v51) & 0x3FFFF;
        v56 = *(intArray + 2);
        if (v7 + 16 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 16));
        }

        v57 = intCopy + 5;
        *(intArray + v55 + 3) = v51 >> 14;
        v58 = *(array + 2);
        if (intCopy + 5 < 0 || v57 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (intCopy + 5));
        }

        v59 = v7 + 17;
        v60 = *(array + v57 + 2);
        v61 = *(intArray + 2);
        if (v7 + 17 < 0 || v59 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 17));
        }

        v62 = v7 + 18;
        *(intArray + v59 + 3) = (v60 >> 60) & 0xF | (16 * (v51 & 0x3FFF));
        v63 = *(intArray + 2);
        if (v7 + 18 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 18));
        }

        v64 = v7 + 19;
        *(intArray + v62 + 3) = (v60 >> 42) & 0x3FFFF;
        v65 = *(intArray + 2);
        if (v7 + 19 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 19));
        }

        v66 = v7 + 20;
        *(intArray + v64 + 3) = (v60 >> 24) & 0x3FFFF;
        v67 = *(intArray + 2);
        if (v7 + 20 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (v7 + 20));
        }

        v68 = intCopy + 6;
        *(intArray + v66 + 3) = (v60 >> 6) & 0x3FFFF;
        v69 = *(array + 2);
        if (intCopy + 6 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (intCopy + 6));
        }

        v70 = v7 + 21;
        v71 = *(array + v68 + 2);
        v72 = *(intArray + 2);
        if (v7 + 21 < 0 || v70 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 21));
        }

        v73 = v7 + 22;
        *(intArray + v70 + 3) = (v71 >> 52) & 0xFFF | ((v60 & 0x3F) << 12);
        v74 = *(intArray + 2);
        if (v7 + 22 < 0 || v73 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (v7 + 22));
        }

        v75 = v7 + 23;
        *(intArray + v73 + 3) = (v71 >> 34) & 0x3FFFF;
        v76 = *(intArray + 2);
        if (v7 + 23 < 0 || v75 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 23));
        }

        v77 = intCopy + 7;
        *(intArray + v75 + 3) = (v71 >> 16) & 0x3FFFF;
        v78 = *(array + 2);
        if (intCopy + 7 < 0 || v77 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (intCopy + 7));
        }

        v79 = v7 + 24;
        v80 = *(array + v77 + 2);
        v81 = *(intArray + 2);
        if (v7 + 24 < 0 || v79 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 24));
        }

        v82 = v7 + 25;
        *(intArray + v79 + 3) = (v80 >> 62) & 3 | (4 * v71);
        v83 = *(intArray + 2);
        if (v7 + 25 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (v7 + 25));
        }

        v84 = v7 + 26;
        *(intArray + v82 + 3) = (v80 >> 44) & 0x3FFFF;
        v85 = *(intArray + 2);
        if (v7 + 26 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 26));
        }

        v86 = v7 + 27;
        *(intArray + v84 + 3) = (v80 >> 26) & 0x3FFFF;
        v87 = *(intArray + 2);
        if (v7 + 27 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 27));
        }

        v88 = intCopy + 8;
        *(intArray + v86 + 3) = (v80 >> 8) & 0x3FFFF;
        v89 = *(array + 2);
        if (intCopy + 8 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (intCopy + 8));
        }

        v90 = v7 + 28;
        v91 = *(array + v88 + 2);
        v92 = *(intArray + 2);
        if (v7 + 28 < 0 || v90 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 28));
        }

        v93 = v7 + 29;
        *(intArray + v90 + 3) = (v91 >> 54) & 0x3FF | (v80 << 10);
        v94 = *(intArray + 2);
        if (v7 + 29 < 0 || v93 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (v7 + 29));
        }

        v95 = v7 + 30;
        *(intArray + v93 + 3) = (v91 >> 36) & 0x3FFFF;
        v96 = *(intArray + 2);
        if (v7 + 30 < 0 || v95 >= v96)
        {
          IOSArray_throwOutOfBoundsWithMsg(v96, (v7 + 30));
        }

        v97 = v7 + 31;
        *(intArray + v95 + 3) = (v91 >> 18) & 0x3FFFF;
        v98 = *(intArray + 2);
        if (v7 + 31 < 0 || v97 >= v98)
        {
          IOSArray_throwOutOfBoundsWithMsg(v98, (v7 + 31));
        }

        *(intArray + v97 + 3) = v91 & 0x3FFFF;
        int = intCopy + 9;
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
        *(intArray + v7 + 3) = (*(array + intCopy + 12) << 10) | (4 * v13) | (v14 >> 6);
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

        v20 = v7 + 1;
        v21 = *(array + v18 + 12);
        v22 = *(intArray + 2);
        if (v7 + 1 < 0 || v20 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v7 + 1));
        }

        v23 = intCopy + 5;
        *(intArray + v20 + 3) = ((v14 & 0x3F) << 12) | (16 * v19) | (v21 >> 4);
        v24 = *(array + 2);
        if (intCopy + 5 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (intCopy + 5));
        }

        v25 = intCopy + 6;
        v26 = *(array + v23 + 12);
        if (intCopy + 6 < 0 || v25 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (intCopy + 6));
        }

        v27 = v7 + 2;
        v28 = *(array + v25 + 12);
        v29 = *(intArray + 2);
        if (v7 + 2 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 2));
        }

        v30 = intCopy + 7;
        *(intArray + v27 + 3) = ((v21 & 0xF) << 14) | (v26 << 6) | (v28 >> 2);
        v31 = *(array + 2);
        if (intCopy + 7 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (intCopy + 7));
        }

        v32 = intCopy + 8;
        v33 = *(array + v30 + 12);
        if (intCopy + 8 < 0 || v32 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (intCopy + 8));
        }

        v34 = v7 + 3;
        v35 = *(array + v32 + 12);
        v36 = *(intArray + 2);
        if (v7 + 3 < 0 || v34 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v7 + 3));
        }

        *(intArray + v34 + 3) = ((v28 & 3) << 16) | (v33 << 8) | v35;
        int = intCopy + 9;
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
        *(longArray + v7 + 2) = v11 >> 46;
        v14 = *(longArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = v7 + 2;
        *(longArray + v13 + 2) = (v11 >> 28) & 0x3FFFF;
        v16 = *(longArray + 2);
        if (v7 + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v7 + 2));
        }

        v17 = (int + 1);
        *(longArray + v15 + 2) = (v11 >> 10) & 0x3FFFF;
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
        *(longArray + v19 + 2) = (v22 >> 56) & 0x3FFFF;
        v24 = *(longArray + 2);
        if (v7 + 4 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 4));
        }

        v25 = v7 + 5;
        *(longArray + v23 + 2) = (v20 >> 38) & 0x3FFFF;
        v26 = *(longArray + 2);
        if (v7 + 5 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 5));
        }

        v27 = v7 + 6;
        *(longArray + v25 + 2) = (v20 >> 20) & 0x3FFFF;
        v28 = *(longArray + 2);
        if (v7 + 6 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v7 + 6));
        }

        v29 = intCopy + 2;
        *(longArray + v27 + 2) = (v20 >> 2) & 0x3FFFF;
        v30 = *(array + 2);
        if (intCopy + 2 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (intCopy + 2));
        }

        v31 = v7 + 7;
        v32 = *(array + v29 + 2);
        v33 = *(longArray + 2);
        if (v7 + 7 < 0 || v31 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 7));
        }

        *(&v34 + 1) = v20;
        *&v34 = *(array + v29 + 2);
        v35 = v7 + 8;
        *(longArray + v31 + 2) = (v34 >> 48) & 0x3FFFF;
        v36 = *(longArray + 2);
        if (v7 + 8 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v7 + 8));
        }

        v37 = v7 + 9;
        *(longArray + v35 + 2) = (v32 >> 30) & 0x3FFFF;
        v38 = *(longArray + 2);
        if (v7 + 9 < 0 || v37 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v7 + 9));
        }

        v39 = intCopy + 3;
        *(longArray + v37 + 2) = (v32 >> 12) & 0x3FFFF;
        v40 = *(array + 2);
        if (intCopy + 3 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (intCopy + 3));
        }

        v41 = v7 + 10;
        v42 = *(array + v39 + 2);
        v43 = *(longArray + 2);
        if (v7 + 10 < 0 || v41 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 10));
        }

        *(&v44 + 1) = v32;
        *&v44 = *(array + v39 + 2);
        v45 = v7 + 11;
        *(longArray + v41 + 2) = (v44 >> 58) & 0x3FFFF;
        v46 = *(longArray + 2);
        if (v7 + 11 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 11));
        }

        v47 = v7 + 12;
        *(longArray + v45 + 2) = (v42 >> 40) & 0x3FFFF;
        v48 = *(longArray + 2);
        if (v7 + 12 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 12));
        }

        v49 = v7 + 13;
        *(longArray + v47 + 2) = (v42 >> 22) & 0x3FFFF;
        v50 = *(longArray + 2);
        if (v7 + 13 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 13));
        }

        v51 = intCopy + 4;
        *(longArray + v49 + 2) = (v42 >> 4) & 0x3FFFF;
        v52 = *(array + 2);
        if (intCopy + 4 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (intCopy + 4));
        }

        v53 = v7 + 14;
        v54 = *(array + v51 + 2);
        v55 = *(longArray + 2);
        if (v7 + 14 < 0 || v53 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 14));
        }

        *(&v56 + 1) = v42;
        *&v56 = *(array + v51 + 2);
        v57 = v7 + 15;
        *(longArray + v53 + 2) = (v56 >> 50) & 0x3FFFF;
        v58 = *(longArray + 2);
        if (v7 + 15 < 0 || v57 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 15));
        }

        v59 = v7 + 16;
        *(longArray + v57 + 2) = HIDWORD(v54) & 0x3FFFF;
        v60 = *(longArray + 2);
        if (v7 + 16 < 0 || v59 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (v7 + 16));
        }

        v61 = intCopy + 5;
        *(longArray + v59 + 2) = v54 >> 14;
        v62 = *(array + 2);
        if (intCopy + 5 < 0 || v61 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (intCopy + 5));
        }

        v63 = v7 + 17;
        v64 = *(array + v61 + 2);
        v65 = *(longArray + 2);
        if (v7 + 17 < 0 || v63 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 17));
        }

        *(&v66 + 1) = v54;
        *&v66 = *(array + v61 + 2);
        v67 = v7 + 18;
        *(longArray + v63 + 2) = (v66 >> 60) & 0x3FFFF;
        v68 = *(longArray + 2);
        if (v7 + 18 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 18));
        }

        v69 = v7 + 19;
        *(longArray + v67 + 2) = (v64 >> 42) & 0x3FFFF;
        v70 = *(longArray + 2);
        if (v7 + 19 < 0 || v69 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (v7 + 19));
        }

        v71 = v7 + 20;
        *(longArray + v69 + 2) = (v64 >> 24) & 0x3FFFF;
        v72 = *(longArray + 2);
        if (v7 + 20 < 0 || v71 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 20));
        }

        v73 = intCopy + 6;
        *(longArray + v71 + 2) = (v64 >> 6) & 0x3FFFF;
        v74 = *(array + 2);
        if (intCopy + 6 < 0 || v73 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (intCopy + 6));
        }

        v75 = v7 + 21;
        v76 = *(array + v73 + 2);
        v77 = *(longArray + 2);
        if (v7 + 21 < 0 || v75 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 21));
        }

        *(&v78 + 1) = v64;
        *&v78 = *(array + v73 + 2);
        v79 = v7 + 22;
        *(longArray + v75 + 2) = (v78 >> 52) & 0x3FFFF;
        v80 = *(longArray + 2);
        if (v7 + 22 < 0 || v79 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 22));
        }

        v81 = v7 + 23;
        *(longArray + v79 + 2) = (v76 >> 34) & 0x3FFFF;
        v82 = *(longArray + 2);
        if (v7 + 23 < 0 || v81 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 23));
        }

        v83 = intCopy + 7;
        *(longArray + v81 + 2) = (v76 >> 16) & 0x3FFFF;
        v84 = *(array + 2);
        if (intCopy + 7 < 0 || v83 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (intCopy + 7));
        }

        v85 = v7 + 24;
        v86 = *(array + v83 + 2);
        v87 = *(longArray + 2);
        if (v7 + 24 < 0 || v85 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 24));
        }

        *(&v88 + 1) = v76;
        *&v88 = *(array + v83 + 2);
        v89 = v7 + 25;
        *(longArray + v85 + 2) = (v88 >> 62) & 0x3FFFF;
        v90 = *(longArray + 2);
        if (v7 + 25 < 0 || v89 >= v90)
        {
          IOSArray_throwOutOfBoundsWithMsg(v90, (v7 + 25));
        }

        v91 = v7 + 26;
        *(longArray + v89 + 2) = (v86 >> 44) & 0x3FFFF;
        v92 = *(longArray + 2);
        if (v7 + 26 < 0 || v91 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 26));
        }

        v93 = v7 + 27;
        *(longArray + v91 + 2) = (v86 >> 26) & 0x3FFFF;
        v94 = *(longArray + 2);
        if (v7 + 27 < 0 || v93 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (v7 + 27));
        }

        v95 = intCopy + 8;
        *(longArray + v93 + 2) = (v86 >> 8) & 0x3FFFF;
        v96 = *(array + 2);
        if (intCopy + 8 < 0 || v95 >= v96)
        {
          IOSArray_throwOutOfBoundsWithMsg(v96, (intCopy + 8));
        }

        v97 = v7 + 28;
        v98 = *(array + v95 + 2);
        v99 = *(longArray + 2);
        if (v7 + 28 < 0 || v97 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (v7 + 28));
        }

        *(&v100 + 1) = v86;
        *&v100 = *(array + v95 + 2);
        v101 = v7 + 29;
        *(longArray + v97 + 2) = (v100 >> 54) & 0x3FFFF;
        v102 = *(longArray + 2);
        if (v7 + 29 < 0 || v101 >= v102)
        {
          IOSArray_throwOutOfBoundsWithMsg(v102, (v7 + 29));
        }

        v103 = v7 + 30;
        *(longArray + v101 + 2) = (v98 >> 36) & 0x3FFFF;
        v104 = *(longArray + 2);
        if (v7 + 30 < 0 || v103 >= v104)
        {
          IOSArray_throwOutOfBoundsWithMsg(v104, (v7 + 30));
        }

        v105 = v7 + 31;
        *(longArray + v103 + 2) = (v98 >> 18) & 0x3FFFF;
        v106 = *(longArray + 2);
        if (v7 + 31 < 0 || v105 >= v106)
        {
          IOSArray_throwOutOfBoundsWithMsg(v106, (v7 + 31));
        }

        *(longArray + v105 + 2) = v98 & 0x3FFFF;
        int = intCopy + 9;
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
        *(longArray + v7 + 2) = (*(array + intCopy + 12) << 10) | (4 * v13) | (v14 >> 6);
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

        v20 = v7 + 1;
        v21 = *(array + v18 + 12);
        v22 = *(longArray + 2);
        if (v7 + 1 < 0 || v20 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v7 + 1));
        }

        v23 = intCopy + 5;
        *(longArray + v20 + 2) = ((v14 & 0x3F) << 12) | (16 * v19) | (v21 >> 4);
        v24 = *(array + 2);
        if (intCopy + 5 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (intCopy + 5));
        }

        v25 = intCopy + 6;
        v26 = *(array + v23 + 12);
        if (intCopy + 6 < 0 || v25 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (intCopy + 6));
        }

        v27 = v7 + 2;
        v28 = *(array + v25 + 12);
        v29 = *(longArray + 2);
        if (v7 + 2 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 2));
        }

        v30 = intCopy + 7;
        *(longArray + v27 + 2) = ((v21 & 0xF) << 14) | (v26 << 6) | (v28 >> 2);
        v31 = *(array + 2);
        if (intCopy + 7 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (intCopy + 7));
        }

        v32 = intCopy + 8;
        v33 = *(array + v30 + 12);
        if (intCopy + 8 < 0 || v32 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (intCopy + 8));
        }

        v34 = v7 + 3;
        v35 = *(array + v32 + 12);
        v36 = *(longArray + 2);
        if (v7 + 3 < 0 || v34 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v7 + 3));
        }

        *(longArray + v34 + 2) = ((v28 & 3) << 16) | (v33 << 8) | v35;
        int = intCopy + 9;
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