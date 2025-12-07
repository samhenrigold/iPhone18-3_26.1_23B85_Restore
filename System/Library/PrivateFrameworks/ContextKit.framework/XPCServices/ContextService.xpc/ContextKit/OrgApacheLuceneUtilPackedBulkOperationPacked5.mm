@interface OrgApacheLuceneUtilPackedBulkOperationPacked5
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked5

- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (array)
    {
      v7 = *&withInt;
      v9 = 0;
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

        v12 = *(array + int + 2);
        v13 = *(intArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v7);
        }

        v14 = v7 + 1;
        *(intArray + v7 + 3) = v12 >> 59;
        v15 = *(intArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(intArray + v14 + 3) = (v12 >> 54) & 0x1F;
        v17 = *(intArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(intArray + v16 + 3) = (v12 >> 49) & 0x1F;
        v19 = *(intArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = v7 + 4;
        *(intArray + v18 + 3) = (v12 >> 44) & 0x1F;
        v21 = *(intArray + 2);
        if (v7 + 4 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 4));
        }

        v22 = v7 + 5;
        *(intArray + v20 + 3) = (v12 >> 39) & 0x1F;
        v23 = *(intArray + 2);
        if (v7 + 5 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 5));
        }

        v24 = v7 + 6;
        *(intArray + v22 + 3) = (v12 >> 34) & 0x1F;
        v25 = *(intArray + 2);
        if (v7 + 6 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 6));
        }

        v26 = v7 + 7;
        *(intArray + v24 + 3) = (v12 >> 29) & 0x1F;
        v27 = *(intArray + 2);
        if (v7 + 7 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 7));
        }

        v28 = v7 + 8;
        *(intArray + v26 + 3) = BYTE3(v12) & 0x1F;
        v29 = *(intArray + 2);
        if (v7 + 8 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 8));
        }

        v30 = v7 + 9;
        *(intArray + v28 + 3) = (v12 >> 19) & 0x1F;
        v31 = *(intArray + 2);
        if (v7 + 9 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 9));
        }

        v32 = v7 + 10;
        *(intArray + v30 + 3) = (v12 >> 14) & 0x1F;
        v33 = *(intArray + 2);
        if (v7 + 10 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 10));
        }

        v34 = v7 + 11;
        *(intArray + v32 + 3) = (v12 >> 9) & 0x1F;
        v35 = *(intArray + 2);
        if (v7 + 11 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 11));
        }

        v36 = (int + 1);
        *(intArray + v34 + 3) = (v12 >> 4) & 0x1F;
        v37 = *(array + 2);
        if ((v36 & 0x80000000) != 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, v36);
        }

        v38 = v7 + 12;
        v39 = *(array + v36 + 2);
        v40 = *(intArray + 2);
        if (v7 + 12 < 0 || v38 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 12));
        }

        v41 = v7 + 13;
        *(intArray + v38 + 3) = (v39 >> 63) | (2 * (v12 & 0xF));
        v42 = *(intArray + 2);
        if (v7 + 13 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 13));
        }

        v43 = v7 + 14;
        *(intArray + v41 + 3) = (v39 >> 58) & 0x1F;
        v44 = *(intArray + 2);
        if (v7 + 14 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 14));
        }

        v45 = v7 + 15;
        *(intArray + v43 + 3) = (v39 >> 53) & 0x1F;
        v46 = *(intArray + 2);
        if (v7 + 15 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 15));
        }

        v47 = v7 + 16;
        *(intArray + v45 + 3) = HIWORD(v39) & 0x1F;
        v48 = *(intArray + 2);
        if (v7 + 16 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 16));
        }

        v49 = v7 + 17;
        *(intArray + v47 + 3) = (v39 >> 43) & 0x1F;
        v50 = *(intArray + 2);
        if (v7 + 17 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 17));
        }

        v51 = v7 + 18;
        *(intArray + v49 + 3) = (v39 >> 38) & 0x1F;
        v52 = *(intArray + 2);
        if (v7 + 18 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 18));
        }

        v53 = v7 + 19;
        *(intArray + v51 + 3) = (v39 >> 33) & 0x1F;
        v54 = *(intArray + 2);
        if (v7 + 19 < 0 || v53 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 19));
        }

        v55 = v7 + 20;
        *(intArray + v53 + 3) = (v39 >> 28) & 0x1F;
        v56 = *(intArray + 2);
        if (v7 + 20 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 20));
        }

        v57 = v7 + 21;
        *(intArray + v55 + 3) = (v39 >> 23) & 0x1F;
        v58 = *(intArray + 2);
        if (v7 + 21 < 0 || v57 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 21));
        }

        v59 = v7 + 22;
        *(intArray + v57 + 3) = (v39 >> 18) & 0x1F;
        v60 = *(intArray + 2);
        if (v7 + 22 < 0 || v59 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (v7 + 22));
        }

        v61 = v7 + 23;
        *(intArray + v59 + 3) = (v39 >> 13) & 0x1F;
        v62 = *(intArray + 2);
        if (v7 + 23 < 0 || v61 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (v7 + 23));
        }

        v63 = v7 + 24;
        *(intArray + v61 + 3) = (v39 >> 8) & 0x1F;
        v64 = *(intArray + 2);
        if (v7 + 24 < 0 || v63 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 24));
        }

        v65 = intCopy + 2;
        *(intArray + v63 + 3) = v39 >> 3;
        v66 = *(array + 2);
        if (intCopy + 2 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (intCopy + 2));
        }

        v67 = v7 + 25;
        v68 = *(array + v65 + 2);
        v69 = *(intArray + 2);
        if (v7 + 25 < 0 || v67 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 25));
        }

        v70 = v7 + 26;
        *(intArray + v67 + 3) = (v68 >> 62) & 0xE3 | (4 * (v39 & 7));
        v71 = *(intArray + 2);
        if (v7 + 26 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 26));
        }

        v72 = v7 + 27;
        *(intArray + v70 + 3) = (v68 >> 57) & 0x1F;
        v73 = *(intArray + 2);
        if (v7 + 27 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 27));
        }

        v74 = v7 + 28;
        *(intArray + v72 + 3) = (v68 >> 52) & 0x1F;
        v75 = *(intArray + 2);
        if (v7 + 28 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 28));
        }

        v76 = v7 + 29;
        *(intArray + v74 + 3) = (v68 >> 47) & 0x1F;
        v77 = *(intArray + 2);
        if (v7 + 29 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 29));
        }

        v78 = v7 + 30;
        *(intArray + v76 + 3) = (v68 >> 42) & 0x1F;
        v79 = *(intArray + 2);
        if (v7 + 30 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (v7 + 30));
        }

        v80 = v7 + 31;
        *(intArray + v78 + 3) = (v68 >> 37) & 0x1F;
        v81 = *(intArray + 2);
        if (v7 + 31 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 31));
        }

        v82 = v7 + 32;
        *(intArray + v80 + 3) = BYTE4(v68) & 0x1F;
        v83 = *(intArray + 2);
        if (v7 + 32 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (v7 + 32));
        }

        v84 = v7 + 33;
        *(intArray + v82 + 3) = v68 >> 27;
        v85 = *(intArray + 2);
        if (v7 + 33 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 33));
        }

        v86 = v7 + 34;
        *(intArray + v84 + 3) = (v68 >> 22) & 0x1F;
        v87 = *(intArray + 2);
        if (v7 + 34 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 34));
        }

        v88 = v7 + 35;
        *(intArray + v86 + 3) = (v68 >> 17) & 0x1F;
        v89 = *(intArray + 2);
        if (v7 + 35 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 35));
        }

        v90 = v7 + 36;
        *(intArray + v88 + 3) = (v68 >> 12) & 0x1F;
        v91 = *(intArray + 2);
        if (v7 + 36 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 36));
        }

        v92 = v7 + 37;
        *(intArray + v90 + 3) = (v68 >> 7) & 0x1F;
        v93 = *(intArray + 2);
        if (v7 + 37 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 37));
        }

        v94 = intCopy + 3;
        *(intArray + v92 + 3) = (v68 >> 2) & 0x1F;
        v95 = *(array + 2);
        if (intCopy + 3 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (intCopy + 3));
        }

        v96 = v7 + 38;
        v97 = *(array + v94 + 2);
        v98 = *(intArray + 2);
        if (v7 + 38 < 0 || v96 >= v98)
        {
          IOSArray_throwOutOfBoundsWithMsg(v98, (v7 + 38));
        }

        v99 = v7 + 39;
        *(intArray + v96 + 3) = (v97 >> 61) & 0xE7 | (8 * (v68 & 3));
        v100 = *(intArray + 2);
        if (v7 + 39 < 0 || v99 >= v100)
        {
          IOSArray_throwOutOfBoundsWithMsg(v100, (v7 + 39));
        }

        v101 = v7 + 40;
        *(intArray + v99 + 3) = HIBYTE(v97) & 0x1F;
        v102 = *(intArray + 2);
        if (v7 + 40 < 0 || v101 >= v102)
        {
          IOSArray_throwOutOfBoundsWithMsg(v102, (v7 + 40));
        }

        v103 = v7 + 41;
        *(intArray + v101 + 3) = (v97 >> 51) & 0x1F;
        v104 = *(intArray + 2);
        if (v7 + 41 < 0 || v103 >= v104)
        {
          IOSArray_throwOutOfBoundsWithMsg(v104, (v7 + 41));
        }

        v105 = v7 + 42;
        *(intArray + v103 + 3) = (v97 >> 46) & 0x1F;
        v106 = *(intArray + 2);
        if (v7 + 42 < 0 || v105 >= v106)
        {
          IOSArray_throwOutOfBoundsWithMsg(v106, (v7 + 42));
        }

        v107 = v7 + 43;
        *(intArray + v105 + 3) = (v97 >> 41) & 0x1F;
        v108 = *(intArray + 2);
        if (v7 + 43 < 0 || v107 >= v108)
        {
          IOSArray_throwOutOfBoundsWithMsg(v108, (v7 + 43));
        }

        v109 = v7 + 44;
        *(intArray + v107 + 3) = (v97 >> 36) & 0x1F;
        v110 = *(intArray + 2);
        if (v7 + 44 < 0 || v109 >= v110)
        {
          IOSArray_throwOutOfBoundsWithMsg(v110, (v7 + 44));
        }

        v111 = v7 + 45;
        *(intArray + v109 + 3) = (v97 >> 31) & 0x1F;
        v112 = *(intArray + 2);
        if (v7 + 45 < 0 || v111 >= v112)
        {
          IOSArray_throwOutOfBoundsWithMsg(v112, (v7 + 45));
        }

        v113 = v7 + 46;
        *(intArray + v111 + 3) = (v97 >> 26) & 0x1F;
        v114 = *(intArray + 2);
        if (v7 + 46 < 0 || v113 >= v114)
        {
          IOSArray_throwOutOfBoundsWithMsg(v114, (v7 + 46));
        }

        v115 = v7 + 47;
        *(intArray + v113 + 3) = (v97 >> 21) & 0x1F;
        v116 = *(intArray + 2);
        if (v7 + 47 < 0 || v115 >= v116)
        {
          IOSArray_throwOutOfBoundsWithMsg(v116, (v7 + 47));
        }

        v117 = v7 + 48;
        *(intArray + v115 + 3) = WORD1(v97) & 0x1F;
        v118 = *(intArray + 2);
        if (v7 + 48 < 0 || v117 >= v118)
        {
          IOSArray_throwOutOfBoundsWithMsg(v118, (v7 + 48));
        }

        v119 = v7 + 49;
        *(intArray + v117 + 3) = v97 >> 11;
        v120 = *(intArray + 2);
        if (v7 + 49 < 0 || v119 >= v120)
        {
          IOSArray_throwOutOfBoundsWithMsg(v120, (v7 + 49));
        }

        v121 = v7 + 50;
        *(intArray + v119 + 3) = (v97 >> 6) & 0x1F;
        v122 = *(intArray + 2);
        if (v7 + 50 < 0 || v121 >= v122)
        {
          IOSArray_throwOutOfBoundsWithMsg(v122, (v7 + 50));
        }

        v123 = intCopy + 4;
        *(intArray + v121 + 3) = (v97 >> 1) & 0x1F;
        v124 = *(array + 2);
        if (intCopy + 4 < 0 || v123 >= v124)
        {
          IOSArray_throwOutOfBoundsWithMsg(v124, (intCopy + 4));
        }

        v125 = v7 + 51;
        v126 = *(array + v123 + 2);
        v127 = *(intArray + 2);
        if (v7 + 51 < 0 || v125 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (v7 + 51));
        }

        v128 = v7 + 52;
        *(intArray + v125 + 3) = (v126 >> 60) & 0xEF | (16 * (v97 & 1));
        v129 = *(intArray + 2);
        if (v7 + 52 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 52));
        }

        v130 = v7 + 53;
        *(intArray + v128 + 3) = (v126 >> 55) & 0x1F;
        v131 = *(intArray + 2);
        if (v7 + 53 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 53));
        }

        v132 = v7 + 54;
        *(intArray + v130 + 3) = (v126 >> 50) & 0x1F;
        v133 = *(intArray + 2);
        if (v7 + 54 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 54));
        }

        v134 = v7 + 55;
        *(intArray + v132 + 3) = (v126 >> 45) & 0x1F;
        v135 = *(intArray + 2);
        if (v7 + 55 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (v7 + 55));
        }

        v136 = v7 + 56;
        *(intArray + v134 + 3) = (v126 >> 40) & 0x1F;
        v137 = *(intArray + 2);
        if (v7 + 56 < 0 || v136 >= v137)
        {
          IOSArray_throwOutOfBoundsWithMsg(v137, (v7 + 56));
        }

        v138 = v7 + 57;
        *(intArray + v136 + 3) = (v126 >> 35) & 0x1F;
        v139 = *(intArray + 2);
        if (v7 + 57 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 57));
        }

        v140 = v7 + 58;
        *(intArray + v138 + 3) = (v126 >> 30) & 0x1F;
        v141 = *(intArray + 2);
        if (v7 + 58 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 58));
        }

        v142 = v7 + 59;
        *(intArray + v140 + 3) = (v126 >> 25) & 0x1F;
        v143 = *(intArray + 2);
        if (v7 + 59 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 59));
        }

        v144 = v7 + 60;
        *(intArray + v142 + 3) = (v126 >> 20) & 0x1F;
        v145 = *(intArray + 2);
        if (v7 + 60 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 60));
        }

        v146 = v7 + 61;
        *(intArray + v144 + 3) = (v126 >> 15) & 0x1F;
        v147 = *(intArray + 2);
        if (v7 + 61 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (v7 + 61));
        }

        v148 = v7 + 62;
        *(intArray + v146 + 3) = (v126 >> 10) & 0x1F;
        v149 = *(intArray + 2);
        if (v7 + 62 < 0 || v148 >= v149)
        {
          IOSArray_throwOutOfBoundsWithMsg(v149, (v7 + 62));
        }

        v150 = v7 + 63;
        *(intArray + v148 + 3) = (v126 >> 5) & 0x1F;
        v151 = *(intArray + 2);
        if (v7 + 63 < 0 || v150 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (v7 + 63));
        }

        int = intCopy + 5;
        v7 = (v7 + 64);
        *(intArray + v150 + 3) = v126 & 0x1F;
        if (++v9 == a7)
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
        *(intArray + v8 + 3) = v12 >> 3;
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

        v19 = (v17 >> 6) & 0xFFFFFFE3 | (4 * (v12 & 7));
        v20 = v8 + 2;
        *(intArray + v16 + 3) = v19;
        v21 = *(intArray + 2);
        if (v8 + 2 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v8 + 2));
        }

        v22 = intCopy + 2;
        *(intArray + v20 + 3) = (v17 >> 1) & 0x1F;
        v23 = *(array + 2);
        if (intCopy + 2 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (intCopy + 2));
        }

        v24 = v8 + 3;
        v25 = *(array + v22 + 12);
        v26 = *(intArray + 2);
        if (v8 + 3 < 0 || v24 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v8 + 3));
        }

        v27 = intCopy + 3;
        *(intArray + v24 + 3) = (v25 >> 4) & 0xFFFFFFEF | (16 * (v17 & 1));
        v28 = *(array + 2);
        if (intCopy + 3 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (intCopy + 3));
        }

        v29 = v8 + 4;
        v30 = *(array + v27 + 12);
        v31 = *(intArray + 2);
        if (v8 + 4 < 0 || v29 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v8 + 4));
        }

        v32 = (v30 >> 7) & 0xFFFFFFE1 | (2 * (v25 & 0xF));
        v33 = v8 + 5;
        *(intArray + v29 + 3) = v32;
        v34 = *(intArray + 2);
        if (v8 + 5 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v8 + 5));
        }

        v35 = intCopy + 4;
        *(intArray + v33 + 3) = (v30 >> 2) & 0x1F;
        v36 = *(array + 2);
        if (intCopy + 4 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 4));
        }

        v37 = v8 + 6;
        v38 = *(array + v35 + 12);
        v39 = *(intArray + 2);
        if (v8 + 6 < 0 || v37 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v8 + 6));
        }

        v40 = v8 + 7;
        *(intArray + v37 + 3) = (v38 >> 5) & 0xFFFFFFE7 | (8 * (v30 & 3));
        v41 = *(intArray + 2);
        if (v8 + 7 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v8 + 7));
        }

        *(intArray + v40 + 3) = v38 & 0x1F;
        int = intCopy + 5;
        v8 = (v8 + 8);
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
      v9 = 0;
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

        v12 = *(array + int + 2);
        v13 = *(longArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v7);
        }

        v14 = v7 + 1;
        *(longArray + v7 + 2) = v12 >> 59;
        v15 = *(longArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(longArray + v14 + 2) = (v12 >> 54) & 0x1F;
        v17 = *(longArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(longArray + v16 + 2) = (v12 >> 49) & 0x1F;
        v19 = *(longArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = v7 + 4;
        *(longArray + v18 + 2) = (v12 >> 44) & 0x1F;
        v21 = *(longArray + 2);
        if (v7 + 4 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 4));
        }

        v22 = v7 + 5;
        *(longArray + v20 + 2) = (v12 >> 39) & 0x1F;
        v23 = *(longArray + 2);
        if (v7 + 5 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 5));
        }

        v24 = v7 + 6;
        *(longArray + v22 + 2) = (v12 >> 34) & 0x1F;
        v25 = *(longArray + 2);
        if (v7 + 6 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 6));
        }

        v26 = v7 + 7;
        *(longArray + v24 + 2) = (v12 >> 29) & 0x1F;
        v27 = *(longArray + 2);
        if (v7 + 7 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 7));
        }

        v28 = v7 + 8;
        *(longArray + v26 + 2) = (v12 >> 24) & 0x1F;
        v29 = *(longArray + 2);
        if (v7 + 8 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 8));
        }

        v30 = v7 + 9;
        *(longArray + v28 + 2) = (v12 >> 19) & 0x1F;
        v31 = *(longArray + 2);
        if (v7 + 9 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 9));
        }

        v32 = v7 + 10;
        *(longArray + v30 + 2) = (v12 >> 14) & 0x1F;
        v33 = *(longArray + 2);
        if (v7 + 10 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 10));
        }

        v34 = v7 + 11;
        *(longArray + v32 + 2) = (v12 >> 9) & 0x1F;
        v35 = *(longArray + 2);
        if (v7 + 11 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 11));
        }

        v36 = (int + 1);
        *(longArray + v34 + 2) = (v12 >> 4) & 0x1F;
        v37 = *(array + 2);
        if ((v36 & 0x80000000) != 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, v36);
        }

        v38 = v7 + 12;
        v39 = *(array + v36 + 2);
        v40 = *(longArray + 2);
        if (v7 + 12 < 0 || v38 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 12));
        }

        *(&v41 + 1) = v12;
        *&v41 = *(array + v36 + 2);
        v42 = v7 + 13;
        *(longArray + v38 + 2) = (v41 >> 63) & 0x1F;
        v43 = *(longArray + 2);
        if (v7 + 13 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 13));
        }

        v44 = v7 + 14;
        *(longArray + v42 + 2) = (v39 >> 58) & 0x1F;
        v45 = *(longArray + 2);
        if (v7 + 14 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 14));
        }

        v46 = v7 + 15;
        *(longArray + v44 + 2) = (v39 >> 53) & 0x1F;
        v47 = *(longArray + 2);
        if (v7 + 15 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 15));
        }

        v48 = v7 + 16;
        *(longArray + v46 + 2) = HIWORD(v39) & 0x1F;
        v49 = *(longArray + 2);
        if (v7 + 16 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 16));
        }

        v50 = v7 + 17;
        *(longArray + v48 + 2) = (v39 >> 43) & 0x1F;
        v51 = *(longArray + 2);
        if (v7 + 17 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 17));
        }

        v52 = v7 + 18;
        *(longArray + v50 + 2) = (v39 >> 38) & 0x1F;
        v53 = *(longArray + 2);
        if (v7 + 18 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 18));
        }

        v54 = v7 + 19;
        *(longArray + v52 + 2) = (v39 >> 33) & 0x1F;
        v55 = *(longArray + 2);
        if (v7 + 19 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 19));
        }

        v56 = v7 + 20;
        *(longArray + v54 + 2) = (v39 >> 28) & 0x1F;
        v57 = *(longArray + 2);
        if (v7 + 20 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 20));
        }

        v58 = v7 + 21;
        *(longArray + v56 + 2) = (v39 >> 23) & 0x1F;
        v59 = *(longArray + 2);
        if (v7 + 21 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 21));
        }

        v60 = v7 + 22;
        *(longArray + v58 + 2) = (v39 >> 18) & 0x1F;
        v61 = *(longArray + 2);
        if (v7 + 22 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 22));
        }

        v62 = v7 + 23;
        *(longArray + v60 + 2) = (v39 >> 13) & 0x1F;
        v63 = *(longArray + 2);
        if (v7 + 23 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 23));
        }

        v64 = v7 + 24;
        *(longArray + v62 + 2) = (v39 >> 8) & 0x1F;
        v65 = *(longArray + 2);
        if (v7 + 24 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 24));
        }

        v66 = intCopy + 2;
        *(longArray + v64 + 2) = v39 >> 3;
        v67 = *(array + 2);
        if (intCopy + 2 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (intCopy + 2));
        }

        v68 = v7 + 25;
        v69 = *(array + v66 + 2);
        v70 = *(longArray + 2);
        if (v7 + 25 < 0 || v68 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (v7 + 25));
        }

        *(&v71 + 1) = v39;
        *&v71 = *(array + v66 + 2);
        v72 = v7 + 26;
        *(longArray + v68 + 2) = (v71 >> 62) & 0x1F;
        v73 = *(longArray + 2);
        if (v7 + 26 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 26));
        }

        v74 = v7 + 27;
        *(longArray + v72 + 2) = (v69 >> 57) & 0x1F;
        v75 = *(longArray + 2);
        if (v7 + 27 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 27));
        }

        v76 = v7 + 28;
        *(longArray + v74 + 2) = (v69 >> 52) & 0x1F;
        v77 = *(longArray + 2);
        if (v7 + 28 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 28));
        }

        v78 = v7 + 29;
        *(longArray + v76 + 2) = (v69 >> 47) & 0x1F;
        v79 = *(longArray + 2);
        if (v7 + 29 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (v7 + 29));
        }

        v80 = v7 + 30;
        *(longArray + v78 + 2) = (v69 >> 42) & 0x1F;
        v81 = *(longArray + 2);
        if (v7 + 30 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 30));
        }

        v82 = v7 + 31;
        *(longArray + v80 + 2) = (v69 >> 37) & 0x1F;
        v83 = *(longArray + 2);
        if (v7 + 31 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (v7 + 31));
        }

        v84 = v7 + 32;
        *(longArray + v82 + 2) = HIDWORD(v69) & 0x1F;
        v85 = *(longArray + 2);
        if (v7 + 32 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 32));
        }

        v86 = v7 + 33;
        *(longArray + v84 + 2) = v69 >> 27;
        v87 = *(longArray + 2);
        if (v7 + 33 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 33));
        }

        v88 = v7 + 34;
        *(longArray + v86 + 2) = (v69 >> 22) & 0x1F;
        v89 = *(longArray + 2);
        if (v7 + 34 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 34));
        }

        v90 = v7 + 35;
        *(longArray + v88 + 2) = (v69 >> 17) & 0x1F;
        v91 = *(longArray + 2);
        if (v7 + 35 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 35));
        }

        v92 = v7 + 36;
        *(longArray + v90 + 2) = (v69 >> 12) & 0x1F;
        v93 = *(longArray + 2);
        if (v7 + 36 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 36));
        }

        v94 = v7 + 37;
        *(longArray + v92 + 2) = (v69 >> 7) & 0x1F;
        v95 = *(longArray + 2);
        if (v7 + 37 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (v7 + 37));
        }

        v96 = intCopy + 3;
        *(longArray + v94 + 2) = (v69 >> 2) & 0x1F;
        v97 = *(array + 2);
        if (intCopy + 3 < 0 || v96 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (intCopy + 3));
        }

        v98 = v7 + 38;
        v99 = *(array + v96 + 2);
        v100 = *(longArray + 2);
        if (v7 + 38 < 0 || v98 >= v100)
        {
          IOSArray_throwOutOfBoundsWithMsg(v100, (v7 + 38));
        }

        *(&v101 + 1) = v69;
        *&v101 = *(array + v96 + 2);
        v102 = v7 + 39;
        *(longArray + v98 + 2) = (v101 >> 61) & 0x1F;
        v103 = *(longArray + 2);
        if (v7 + 39 < 0 || v102 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (v7 + 39));
        }

        v104 = v7 + 40;
        *(longArray + v102 + 2) = HIBYTE(v99) & 0x1F;
        v105 = *(longArray + 2);
        if (v7 + 40 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (v7 + 40));
        }

        v106 = v7 + 41;
        *(longArray + v104 + 2) = (v99 >> 51) & 0x1F;
        v107 = *(longArray + 2);
        if (v7 + 41 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 41));
        }

        v108 = v7 + 42;
        *(longArray + v106 + 2) = (v99 >> 46) & 0x1F;
        v109 = *(longArray + 2);
        if (v7 + 42 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 42));
        }

        v110 = v7 + 43;
        *(longArray + v108 + 2) = (v99 >> 41) & 0x1F;
        v111 = *(longArray + 2);
        if (v7 + 43 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 43));
        }

        v112 = v7 + 44;
        *(longArray + v110 + 2) = (v99 >> 36) & 0x1F;
        v113 = *(longArray + 2);
        if (v7 + 44 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (v7 + 44));
        }

        v114 = v7 + 45;
        *(longArray + v112 + 2) = (v99 >> 31) & 0x1F;
        v115 = *(longArray + 2);
        if (v7 + 45 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 45));
        }

        v116 = v7 + 46;
        *(longArray + v114 + 2) = (v99 >> 26) & 0x1F;
        v117 = *(longArray + 2);
        if (v7 + 46 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 46));
        }

        v118 = v7 + 47;
        *(longArray + v116 + 2) = (v99 >> 21) & 0x1F;
        v119 = *(longArray + 2);
        if (v7 + 47 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (v7 + 47));
        }

        v120 = v7 + 48;
        *(longArray + v118 + 2) = (v99 >> 16) & 0x1F;
        v121 = *(longArray + 2);
        if (v7 + 48 < 0 || v120 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (v7 + 48));
        }

        v122 = v7 + 49;
        *(longArray + v120 + 2) = v99 >> 11;
        v123 = *(longArray + 2);
        if (v7 + 49 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (v7 + 49));
        }

        v124 = v7 + 50;
        *(longArray + v122 + 2) = (v99 >> 6) & 0x1F;
        v125 = *(longArray + 2);
        if (v7 + 50 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (v7 + 50));
        }

        v126 = intCopy + 4;
        *(longArray + v124 + 2) = (v99 >> 1) & 0x1F;
        v127 = *(array + 2);
        if (intCopy + 4 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (intCopy + 4));
        }

        v128 = v7 + 51;
        v129 = *(array + v126 + 2);
        v130 = *(longArray + 2);
        if (v7 + 51 < 0 || v128 >= v130)
        {
          IOSArray_throwOutOfBoundsWithMsg(v130, (v7 + 51));
        }

        *(&v131 + 1) = v99;
        *&v131 = *(array + v126 + 2);
        v132 = v7 + 52;
        *(longArray + v128 + 2) = (v131 >> 60) & 0x1F;
        v133 = *(longArray + 2);
        if (v7 + 52 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 52));
        }

        v134 = v7 + 53;
        *(longArray + v132 + 2) = (v129 >> 55) & 0x1F;
        v135 = *(longArray + 2);
        if (v7 + 53 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (v7 + 53));
        }

        v136 = v7 + 54;
        *(longArray + v134 + 2) = (v129 >> 50) & 0x1F;
        v137 = *(longArray + 2);
        if (v7 + 54 < 0 || v136 >= v137)
        {
          IOSArray_throwOutOfBoundsWithMsg(v137, (v7 + 54));
        }

        v138 = v7 + 55;
        *(longArray + v136 + 2) = (v129 >> 45) & 0x1F;
        v139 = *(longArray + 2);
        if (v7 + 55 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 55));
        }

        v140 = v7 + 56;
        *(longArray + v138 + 2) = (v129 >> 40) & 0x1F;
        v141 = *(longArray + 2);
        if (v7 + 56 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 56));
        }

        v142 = v7 + 57;
        *(longArray + v140 + 2) = (v129 >> 35) & 0x1F;
        v143 = *(longArray + 2);
        if (v7 + 57 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 57));
        }

        v144 = v7 + 58;
        *(longArray + v142 + 2) = (v129 >> 30) & 0x1F;
        v145 = *(longArray + 2);
        if (v7 + 58 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 58));
        }

        v146 = v7 + 59;
        *(longArray + v144 + 2) = (v129 >> 25) & 0x1F;
        v147 = *(longArray + 2);
        if (v7 + 59 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (v7 + 59));
        }

        v148 = v7 + 60;
        *(longArray + v146 + 2) = (v129 >> 20) & 0x1F;
        v149 = *(longArray + 2);
        if (v7 + 60 < 0 || v148 >= v149)
        {
          IOSArray_throwOutOfBoundsWithMsg(v149, (v7 + 60));
        }

        v150 = v7 + 61;
        *(longArray + v148 + 2) = (v129 >> 15) & 0x1F;
        v151 = *(longArray + 2);
        if (v7 + 61 < 0 || v150 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (v7 + 61));
        }

        v152 = v7 + 62;
        *(longArray + v150 + 2) = (v129 >> 10) & 0x1F;
        v153 = *(longArray + 2);
        if (v7 + 62 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (v7 + 62));
        }

        v154 = v7 + 63;
        *(longArray + v152 + 2) = (v129 >> 5) & 0x1F;
        v155 = *(longArray + 2);
        if (v7 + 63 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 63));
        }

        int = intCopy + 5;
        v7 = (v7 + 64);
        *(longArray + v154 + 2) = v129 & 0x1F;
        if (++v9 == a7)
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
        *(longArray + v8 + 2) = v12 >> 3;
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

        v19 = (v17 >> 6) & 0xFFFFFFFFFFFFFFE3 | (4 * (v12 & 7));
        v20 = v8 + 2;
        *(longArray + v16 + 2) = v19;
        v21 = *(longArray + 2);
        if (v8 + 2 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v8 + 2));
        }

        v22 = intCopy + 2;
        *(longArray + v20 + 2) = (v17 >> 1) & 0x1F;
        v23 = *(array + 2);
        if (intCopy + 2 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (intCopy + 2));
        }

        v24 = v8 + 3;
        v25 = *(array + v22 + 12);
        v26 = *(longArray + 2);
        if (v8 + 3 < 0 || v24 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v8 + 3));
        }

        v27 = intCopy + 3;
        *(longArray + v24 + 2) = (v25 >> 4) & 0xFFFFFFFFFFFFFFEFLL | (16 * (v17 & 1));
        v28 = *(array + 2);
        if (intCopy + 3 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (intCopy + 3));
        }

        v29 = v8 + 4;
        v30 = *(array + v27 + 12);
        v31 = *(longArray + 2);
        if (v8 + 4 < 0 || v29 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v8 + 4));
        }

        v32 = (v30 >> 7) & 0xFFFFFFFFFFFFFFE1 | (2 * (v25 & 0xF));
        v33 = v8 + 5;
        *(longArray + v29 + 2) = v32;
        v34 = *(longArray + 2);
        if (v8 + 5 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v8 + 5));
        }

        v35 = intCopy + 4;
        *(longArray + v33 + 2) = (v30 >> 2) & 0x1F;
        v36 = *(array + 2);
        if (intCopy + 4 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 4));
        }

        v37 = v8 + 6;
        v38 = *(array + v35 + 12);
        v39 = *(longArray + 2);
        if (v8 + 6 < 0 || v37 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v8 + 6));
        }

        v40 = v8 + 7;
        *(longArray + v37 + 2) = (v38 >> 5) & 0xFFFFFFFFFFFFFFE7 | (8 * (v30 & 3));
        v41 = *(longArray + 2);
        if (v8 + 7 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v8 + 7));
        }

        *(longArray + v40 + 2) = v38 & 0x1F;
        int = intCopy + 5;
        v8 = (v8 + 8);
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