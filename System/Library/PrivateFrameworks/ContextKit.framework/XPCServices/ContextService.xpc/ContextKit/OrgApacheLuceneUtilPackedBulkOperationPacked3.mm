@interface OrgApacheLuceneUtilPackedBulkOperationPacked3
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked3

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
        *(intArray + v7 + 3) = v12 >> 61;
        v15 = *(intArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(intArray + v14 + 3) = (v12 >> 58) & 7;
        v17 = *(intArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(intArray + v16 + 3) = (v12 >> 55) & 7;
        v19 = *(intArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = v7 + 4;
        *(intArray + v18 + 3) = (v12 >> 52) & 7;
        v21 = *(intArray + 2);
        if (v7 + 4 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 4));
        }

        v22 = v7 + 5;
        *(intArray + v20 + 3) = (v12 >> 49) & 7;
        v23 = *(intArray + 2);
        if (v7 + 5 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 5));
        }

        v24 = v7 + 6;
        *(intArray + v22 + 3) = (v12 >> 46) & 7;
        v25 = *(intArray + 2);
        if (v7 + 6 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 6));
        }

        v26 = v7 + 7;
        *(intArray + v24 + 3) = (v12 >> 43) & 7;
        v27 = *(intArray + 2);
        if (v7 + 7 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 7));
        }

        v28 = v7 + 8;
        *(intArray + v26 + 3) = (v12 >> 40) & 7;
        v29 = *(intArray + 2);
        if (v7 + 8 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 8));
        }

        v30 = v7 + 9;
        *(intArray + v28 + 3) = (v12 >> 37) & 7;
        v31 = *(intArray + 2);
        if (v7 + 9 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 9));
        }

        v32 = v7 + 10;
        *(intArray + v30 + 3) = (v12 >> 34) & 7;
        v33 = *(intArray + 2);
        if (v7 + 10 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 10));
        }

        v34 = v7 + 11;
        *(intArray + v32 + 3) = (v12 >> 31) & 7;
        v35 = *(intArray + 2);
        if (v7 + 11 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 11));
        }

        v36 = v7 + 12;
        *(intArray + v34 + 3) = (v12 >> 28) & 7;
        v37 = *(intArray + 2);
        if (v7 + 12 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 12));
        }

        v38 = v7 + 13;
        *(intArray + v36 + 3) = (v12 >> 25) & 7;
        v39 = *(intArray + 2);
        if (v7 + 13 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 13));
        }

        v40 = v7 + 14;
        *(intArray + v38 + 3) = (v12 >> 22) & 7;
        v41 = *(intArray + 2);
        if (v7 + 14 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 14));
        }

        v42 = v7 + 15;
        *(intArray + v40 + 3) = (v12 >> 19) & 7;
        v43 = *(intArray + 2);
        if (v7 + 15 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 15));
        }

        v44 = v7 + 16;
        *(intArray + v42 + 3) = WORD1(v12) & 7;
        v45 = *(intArray + 2);
        if (v7 + 16 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 16));
        }

        v46 = v7 + 17;
        *(intArray + v44 + 3) = v12 >> 13;
        v47 = *(intArray + 2);
        if (v7 + 17 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 17));
        }

        v48 = v7 + 18;
        *(intArray + v46 + 3) = (v12 >> 10) & 7;
        v49 = *(intArray + 2);
        if (v7 + 18 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 18));
        }

        v50 = v7 + 19;
        *(intArray + v48 + 3) = (v12 >> 7) & 7;
        v51 = *(intArray + 2);
        if (v7 + 19 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 19));
        }

        v52 = v7 + 20;
        *(intArray + v50 + 3) = (v12 >> 4) & 7;
        v53 = *(intArray + 2);
        if (v7 + 20 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 20));
        }

        v54 = (int + 1);
        *(intArray + v52 + 3) = (v12 >> 1) & 7;
        v55 = *(array + 2);
        if ((v54 & 0x80000000) != 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, v54);
        }

        v56 = v7 + 21;
        v57 = *(array + v54 + 2);
        v58 = *(intArray + 2);
        if (v7 + 21 < 0 || v56 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 21));
        }

        v59 = v7 + 22;
        *(intArray + v56 + 3) = (v57 >> 62) & 0xFB | (4 * (v12 & 1));
        v60 = *(intArray + 2);
        if (v7 + 22 < 0 || v59 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (v7 + 22));
        }

        v61 = v7 + 23;
        *(intArray + v59 + 3) = (v57 >> 59) & 7;
        v62 = *(intArray + 2);
        if (v7 + 23 < 0 || v61 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (v7 + 23));
        }

        v63 = v7 + 24;
        *(intArray + v61 + 3) = HIBYTE(v57) & 7;
        v64 = *(intArray + 2);
        if (v7 + 24 < 0 || v63 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 24));
        }

        v65 = v7 + 25;
        *(intArray + v63 + 3) = (v57 >> 53) & 7;
        v66 = *(intArray + 2);
        if (v7 + 25 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 25));
        }

        v67 = v7 + 26;
        *(intArray + v65 + 3) = (v57 >> 50) & 7;
        v68 = *(intArray + 2);
        if (v7 + 26 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 26));
        }

        v69 = v7 + 27;
        *(intArray + v67 + 3) = (v57 >> 47) & 7;
        v70 = *(intArray + 2);
        if (v7 + 27 < 0 || v69 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (v7 + 27));
        }

        v71 = v7 + 28;
        *(intArray + v69 + 3) = (v57 >> 44) & 7;
        v72 = *(intArray + 2);
        if (v7 + 28 < 0 || v71 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 28));
        }

        v73 = v7 + 29;
        *(intArray + v71 + 3) = (v57 >> 41) & 7;
        v74 = *(intArray + 2);
        if (v7 + 29 < 0 || v73 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (v7 + 29));
        }

        v75 = v7 + 30;
        *(intArray + v73 + 3) = (v57 >> 38) & 7;
        v76 = *(intArray + 2);
        if (v7 + 30 < 0 || v75 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 30));
        }

        v77 = v7 + 31;
        *(intArray + v75 + 3) = (v57 >> 35) & 7;
        v78 = *(intArray + 2);
        if (v7 + 31 < 0 || v77 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (v7 + 31));
        }

        v79 = v7 + 32;
        *(intArray + v77 + 3) = BYTE4(v57) & 7;
        v80 = *(intArray + 2);
        if (v7 + 32 < 0 || v79 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 32));
        }

        v81 = v7 + 33;
        *(intArray + v79 + 3) = v57 >> 29;
        v82 = *(intArray + 2);
        if (v7 + 33 < 0 || v81 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 33));
        }

        v83 = v7 + 34;
        *(intArray + v81 + 3) = (v57 >> 26) & 7;
        v84 = *(intArray + 2);
        if (v7 + 34 < 0 || v83 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 34));
        }

        v85 = v7 + 35;
        *(intArray + v83 + 3) = (v57 >> 23) & 7;
        v86 = *(intArray + 2);
        if (v7 + 35 < 0 || v85 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (v7 + 35));
        }

        v87 = v7 + 36;
        *(intArray + v85 + 3) = (v57 >> 20) & 7;
        v88 = *(intArray + 2);
        if (v7 + 36 < 0 || v87 >= v88)
        {
          IOSArray_throwOutOfBoundsWithMsg(v88, (v7 + 36));
        }

        v89 = v7 + 37;
        *(intArray + v87 + 3) = (v57 >> 17) & 7;
        v90 = *(intArray + 2);
        if (v7 + 37 < 0 || v89 >= v90)
        {
          IOSArray_throwOutOfBoundsWithMsg(v90, (v7 + 37));
        }

        v91 = v7 + 38;
        *(intArray + v89 + 3) = (v57 >> 14) & 7;
        v92 = *(intArray + 2);
        if (v7 + 38 < 0 || v91 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 38));
        }

        v93 = v7 + 39;
        *(intArray + v91 + 3) = (v57 >> 11) & 7;
        v94 = *(intArray + 2);
        if (v7 + 39 < 0 || v93 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (v7 + 39));
        }

        v95 = v7 + 40;
        *(intArray + v93 + 3) = (v57 >> 8) & 7;
        v96 = *(intArray + 2);
        if (v7 + 40 < 0 || v95 >= v96)
        {
          IOSArray_throwOutOfBoundsWithMsg(v96, (v7 + 40));
        }

        v97 = v7 + 41;
        *(intArray + v95 + 3) = v57 >> 5;
        v98 = *(intArray + 2);
        if (v7 + 41 < 0 || v97 >= v98)
        {
          IOSArray_throwOutOfBoundsWithMsg(v98, (v7 + 41));
        }

        v99 = intCopy + 2;
        *(intArray + v97 + 3) = (v57 >> 2) & 7;
        v100 = *(array + 2);
        if (intCopy + 2 < 0 || v99 >= v100)
        {
          IOSArray_throwOutOfBoundsWithMsg(v100, (intCopy + 2));
        }

        v101 = v7 + 42;
        v102 = *(array + v99 + 2);
        v103 = *(intArray + 2);
        if (v7 + 42 < 0 || v101 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (v7 + 42));
        }

        v104 = v7 + 43;
        *(intArray + v101 + 3) = (v102 >> 63) | (2 * (v57 & 3));
        v105 = *(intArray + 2);
        if (v7 + 43 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (v7 + 43));
        }

        v106 = v7 + 44;
        *(intArray + v104 + 3) = (v102 >> 60) & 7;
        v107 = *(intArray + 2);
        if (v7 + 44 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 44));
        }

        v108 = v7 + 45;
        *(intArray + v106 + 3) = (v102 >> 57) & 7;
        v109 = *(intArray + 2);
        if (v7 + 45 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 45));
        }

        v110 = v7 + 46;
        *(intArray + v108 + 3) = (v102 >> 54) & 7;
        v111 = *(intArray + 2);
        if (v7 + 46 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 46));
        }

        v112 = v7 + 47;
        *(intArray + v110 + 3) = (v102 >> 51) & 7;
        v113 = *(intArray + 2);
        if (v7 + 47 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (v7 + 47));
        }

        v114 = v7 + 48;
        *(intArray + v112 + 3) = HIWORD(v102) & 7;
        v115 = *(intArray + 2);
        if (v7 + 48 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 48));
        }

        v116 = v7 + 49;
        *(intArray + v114 + 3) = (v102 >> 45) & 7;
        v117 = *(intArray + 2);
        if (v7 + 49 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 49));
        }

        v118 = v7 + 50;
        *(intArray + v116 + 3) = (v102 >> 42) & 7;
        v119 = *(intArray + 2);
        if (v7 + 50 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (v7 + 50));
        }

        v120 = v7 + 51;
        *(intArray + v118 + 3) = (v102 >> 39) & 7;
        v121 = *(intArray + 2);
        if (v7 + 51 < 0 || v120 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (v7 + 51));
        }

        v122 = v7 + 52;
        *(intArray + v120 + 3) = (v102 >> 36) & 7;
        v123 = *(intArray + 2);
        if (v7 + 52 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (v7 + 52));
        }

        v124 = v7 + 53;
        *(intArray + v122 + 3) = (v102 >> 33) & 7;
        v125 = *(intArray + 2);
        if (v7 + 53 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (v7 + 53));
        }

        v126 = v7 + 54;
        *(intArray + v124 + 3) = (v102 >> 30) & 7;
        v127 = *(intArray + 2);
        if (v7 + 54 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (v7 + 54));
        }

        v128 = v7 + 55;
        *(intArray + v126 + 3) = (v102 >> 27) & 7;
        v129 = *(intArray + 2);
        if (v7 + 55 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 55));
        }

        v130 = v7 + 56;
        *(intArray + v128 + 3) = BYTE3(v102) & 7;
        v131 = *(intArray + 2);
        if (v7 + 56 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 56));
        }

        v132 = v7 + 57;
        *(intArray + v130 + 3) = (v102 >> 21) & 7;
        v133 = *(intArray + 2);
        if (v7 + 57 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 57));
        }

        v134 = v7 + 58;
        *(intArray + v132 + 3) = (v102 >> 18) & 7;
        v135 = *(intArray + 2);
        if (v7 + 58 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (v7 + 58));
        }

        v136 = v7 + 59;
        *(intArray + v134 + 3) = (v102 >> 15) & 7;
        v137 = *(intArray + 2);
        if (v7 + 59 < 0 || v136 >= v137)
        {
          IOSArray_throwOutOfBoundsWithMsg(v137, (v7 + 59));
        }

        v138 = v7 + 60;
        *(intArray + v136 + 3) = (v102 >> 12) & 7;
        v139 = *(intArray + 2);
        if (v7 + 60 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 60));
        }

        v140 = v7 + 61;
        *(intArray + v138 + 3) = (v102 >> 9) & 7;
        v141 = *(intArray + 2);
        if (v7 + 61 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 61));
        }

        v142 = v7 + 62;
        *(intArray + v140 + 3) = (v102 >> 6) & 7;
        v143 = *(intArray + 2);
        if (v7 + 62 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 62));
        }

        v144 = v7 + 63;
        *(intArray + v142 + 3) = (v102 >> 3) & 7;
        v145 = *(intArray + 2);
        if (v7 + 63 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 63));
        }

        int = intCopy + 3;
        v7 = (v7 + 64);
        *(intArray + v144 + 3) = v102 & 7;
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

        v14 = v8 + 1;
        *(intArray + v8 + 3) = v12 >> 5;
        v15 = *(intArray + 2);
        if (v8 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v8 + 1));
        }

        v16 = (int + 1);
        *(intArray + v14 + 3) = (v12 >> 2) & 7;
        v17 = *(array + 2);
        if ((v16 & 0x80000000) != 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v16);
        }

        v18 = v8 + 2;
        v19 = *(array + v16 + 12);
        v20 = *(intArray + 2);
        if (v8 + 2 < 0 || v18 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v8 + 2));
        }

        v21 = v8 + 3;
        *(intArray + v18 + 3) = (v19 >> 7) & 0xFFFFFFF9 | (2 * (v12 & 3));
        v22 = *(intArray + 2);
        if (v8 + 3 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v8 + 3));
        }

        v23 = v8 + 4;
        *(intArray + v21 + 3) = (v19 >> 4) & 7;
        v24 = *(intArray + 2);
        if (v8 + 4 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v8 + 4));
        }

        v25 = intCopy + 2;
        *(intArray + v23 + 3) = (v19 >> 1) & 7;
        v26 = *(array + 2);
        if (intCopy + 2 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 2));
        }

        v27 = v8 + 5;
        v28 = *(array + v25 + 12);
        v29 = *(intArray + 2);
        if (v8 + 5 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v8 + 5));
        }

        v30 = v8 + 6;
        *(intArray + v27 + 3) = (v28 >> 6) & 0xFFFFFFFB | (4 * (v19 & 1));
        v31 = *(intArray + 2);
        if (v8 + 6 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v8 + 6));
        }

        v32 = v8 + 7;
        *(intArray + v30 + 3) = (v28 >> 3) & 7;
        v33 = *(intArray + 2);
        if (v8 + 7 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v8 + 7));
        }

        *(intArray + v32 + 3) = v28 & 7;
        int = intCopy + 3;
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
        *(longArray + v7 + 2) = v12 >> 61;
        v15 = *(longArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(longArray + v14 + 2) = (v12 >> 58) & 7;
        v17 = *(longArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(longArray + v16 + 2) = (v12 >> 55) & 7;
        v19 = *(longArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = v7 + 4;
        *(longArray + v18 + 2) = (v12 >> 52) & 7;
        v21 = *(longArray + 2);
        if (v7 + 4 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 4));
        }

        v22 = v7 + 5;
        *(longArray + v20 + 2) = (v12 >> 49) & 7;
        v23 = *(longArray + 2);
        if (v7 + 5 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 5));
        }

        v24 = v7 + 6;
        *(longArray + v22 + 2) = (v12 >> 46) & 7;
        v25 = *(longArray + 2);
        if (v7 + 6 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 6));
        }

        v26 = v7 + 7;
        *(longArray + v24 + 2) = (v12 >> 43) & 7;
        v27 = *(longArray + 2);
        if (v7 + 7 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 7));
        }

        v28 = v7 + 8;
        *(longArray + v26 + 2) = (v12 >> 40) & 7;
        v29 = *(longArray + 2);
        if (v7 + 8 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 8));
        }

        v30 = v7 + 9;
        *(longArray + v28 + 2) = (v12 >> 37) & 7;
        v31 = *(longArray + 2);
        if (v7 + 9 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 9));
        }

        v32 = v7 + 10;
        *(longArray + v30 + 2) = (v12 >> 34) & 7;
        v33 = *(longArray + 2);
        if (v7 + 10 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 10));
        }

        v34 = v7 + 11;
        *(longArray + v32 + 2) = (v12 >> 31) & 7;
        v35 = *(longArray + 2);
        if (v7 + 11 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 11));
        }

        v36 = v7 + 12;
        *(longArray + v34 + 2) = (v12 >> 28) & 7;
        v37 = *(longArray + 2);
        if (v7 + 12 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 12));
        }

        v38 = v7 + 13;
        *(longArray + v36 + 2) = (v12 >> 25) & 7;
        v39 = *(longArray + 2);
        if (v7 + 13 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 13));
        }

        v40 = v7 + 14;
        *(longArray + v38 + 2) = (v12 >> 22) & 7;
        v41 = *(longArray + 2);
        if (v7 + 14 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 14));
        }

        v42 = v7 + 15;
        *(longArray + v40 + 2) = (v12 >> 19) & 7;
        v43 = *(longArray + 2);
        if (v7 + 15 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 15));
        }

        v44 = v7 + 16;
        *(longArray + v42 + 2) = (v12 >> 16) & 7;
        v45 = *(longArray + 2);
        if (v7 + 16 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 16));
        }

        v46 = v7 + 17;
        *(longArray + v44 + 2) = v12 >> 13;
        v47 = *(longArray + 2);
        if (v7 + 17 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 17));
        }

        v48 = v7 + 18;
        *(longArray + v46 + 2) = (v12 >> 10) & 7;
        v49 = *(longArray + 2);
        if (v7 + 18 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 18));
        }

        v50 = v7 + 19;
        *(longArray + v48 + 2) = (v12 >> 7) & 7;
        v51 = *(longArray + 2);
        if (v7 + 19 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 19));
        }

        v52 = v7 + 20;
        *(longArray + v50 + 2) = (v12 >> 4) & 7;
        v53 = *(longArray + 2);
        if (v7 + 20 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 20));
        }

        v54 = (int + 1);
        *(longArray + v52 + 2) = (v12 >> 1) & 7;
        v55 = *(array + 2);
        if ((v54 & 0x80000000) != 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, v54);
        }

        v56 = v7 + 21;
        v57 = *(array + v54 + 2);
        v58 = *(longArray + 2);
        if (v7 + 21 < 0 || v56 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 21));
        }

        *(&v59 + 1) = v12;
        *&v59 = *(array + v54 + 2);
        v60 = v7 + 22;
        *(longArray + v56 + 2) = (v59 >> 62) & 7;
        v61 = *(longArray + 2);
        if (v7 + 22 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 22));
        }

        v62 = v7 + 23;
        *(longArray + v60 + 2) = (v57 >> 59) & 7;
        v63 = *(longArray + 2);
        if (v7 + 23 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 23));
        }

        v64 = v7 + 24;
        *(longArray + v62 + 2) = HIBYTE(v57) & 7;
        v65 = *(longArray + 2);
        if (v7 + 24 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 24));
        }

        v66 = v7 + 25;
        *(longArray + v64 + 2) = (v57 >> 53) & 7;
        v67 = *(longArray + 2);
        if (v7 + 25 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (v7 + 25));
        }

        v68 = v7 + 26;
        *(longArray + v66 + 2) = (v57 >> 50) & 7;
        v69 = *(longArray + 2);
        if (v7 + 26 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 26));
        }

        v70 = v7 + 27;
        *(longArray + v68 + 2) = (v57 >> 47) & 7;
        v71 = *(longArray + 2);
        if (v7 + 27 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 27));
        }

        v72 = v7 + 28;
        *(longArray + v70 + 2) = (v57 >> 44) & 7;
        v73 = *(longArray + 2);
        if (v7 + 28 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 28));
        }

        v74 = v7 + 29;
        *(longArray + v72 + 2) = (v57 >> 41) & 7;
        v75 = *(longArray + 2);
        if (v7 + 29 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 29));
        }

        v76 = v7 + 30;
        *(longArray + v74 + 2) = (v57 >> 38) & 7;
        v77 = *(longArray + 2);
        if (v7 + 30 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 30));
        }

        v78 = v7 + 31;
        *(longArray + v76 + 2) = (v57 >> 35) & 7;
        v79 = *(longArray + 2);
        if (v7 + 31 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (v7 + 31));
        }

        v80 = v7 + 32;
        *(longArray + v78 + 2) = HIDWORD(v57) & 7;
        v81 = *(longArray + 2);
        if (v7 + 32 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 32));
        }

        v82 = v7 + 33;
        *(longArray + v80 + 2) = v57 >> 29;
        v83 = *(longArray + 2);
        if (v7 + 33 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (v7 + 33));
        }

        v84 = v7 + 34;
        *(longArray + v82 + 2) = (v57 >> 26) & 7;
        v85 = *(longArray + 2);
        if (v7 + 34 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 34));
        }

        v86 = v7 + 35;
        *(longArray + v84 + 2) = (v57 >> 23) & 7;
        v87 = *(longArray + 2);
        if (v7 + 35 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 35));
        }

        v88 = v7 + 36;
        *(longArray + v86 + 2) = (v57 >> 20) & 7;
        v89 = *(longArray + 2);
        if (v7 + 36 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 36));
        }

        v90 = v7 + 37;
        *(longArray + v88 + 2) = (v57 >> 17) & 7;
        v91 = *(longArray + 2);
        if (v7 + 37 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 37));
        }

        v92 = v7 + 38;
        *(longArray + v90 + 2) = (v57 >> 14) & 7;
        v93 = *(longArray + 2);
        if (v7 + 38 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 38));
        }

        v94 = v7 + 39;
        *(longArray + v92 + 2) = (v57 >> 11) & 7;
        v95 = *(longArray + 2);
        if (v7 + 39 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (v7 + 39));
        }

        v96 = v7 + 40;
        *(longArray + v94 + 2) = (v57 >> 8) & 7;
        v97 = *(longArray + 2);
        if (v7 + 40 < 0 || v96 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (v7 + 40));
        }

        v98 = v7 + 41;
        *(longArray + v96 + 2) = v57 >> 5;
        v99 = *(longArray + 2);
        if (v7 + 41 < 0 || v98 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (v7 + 41));
        }

        v100 = intCopy + 2;
        *(longArray + v98 + 2) = (v57 >> 2) & 7;
        v101 = *(array + 2);
        if (intCopy + 2 < 0 || v100 >= v101)
        {
          IOSArray_throwOutOfBoundsWithMsg(v101, (intCopy + 2));
        }

        v102 = v7 + 42;
        v103 = *(array + v100 + 2);
        v104 = *(longArray + 2);
        if (v7 + 42 < 0 || v102 >= v104)
        {
          IOSArray_throwOutOfBoundsWithMsg(v104, (v7 + 42));
        }

        *(&v105 + 1) = v57;
        *&v105 = *(array + v100 + 2);
        v106 = v7 + 43;
        *(longArray + v102 + 2) = (v105 >> 63) & 7;
        v107 = *(longArray + 2);
        if (v7 + 43 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 43));
        }

        v108 = v7 + 44;
        *(longArray + v106 + 2) = (v103 >> 60) & 7;
        v109 = *(longArray + 2);
        if (v7 + 44 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 44));
        }

        v110 = v7 + 45;
        *(longArray + v108 + 2) = (v103 >> 57) & 7;
        v111 = *(longArray + 2);
        if (v7 + 45 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 45));
        }

        v112 = v7 + 46;
        *(longArray + v110 + 2) = (v103 >> 54) & 7;
        v113 = *(longArray + 2);
        if (v7 + 46 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (v7 + 46));
        }

        v114 = v7 + 47;
        *(longArray + v112 + 2) = (v103 >> 51) & 7;
        v115 = *(longArray + 2);
        if (v7 + 47 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 47));
        }

        v116 = v7 + 48;
        *(longArray + v114 + 2) = HIWORD(v103) & 7;
        v117 = *(longArray + 2);
        if (v7 + 48 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 48));
        }

        v118 = v7 + 49;
        *(longArray + v116 + 2) = (v103 >> 45) & 7;
        v119 = *(longArray + 2);
        if (v7 + 49 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (v7 + 49));
        }

        v120 = v7 + 50;
        *(longArray + v118 + 2) = (v103 >> 42) & 7;
        v121 = *(longArray + 2);
        if (v7 + 50 < 0 || v120 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (v7 + 50));
        }

        v122 = v7 + 51;
        *(longArray + v120 + 2) = (v103 >> 39) & 7;
        v123 = *(longArray + 2);
        if (v7 + 51 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (v7 + 51));
        }

        v124 = v7 + 52;
        *(longArray + v122 + 2) = (v103 >> 36) & 7;
        v125 = *(longArray + 2);
        if (v7 + 52 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (v7 + 52));
        }

        v126 = v7 + 53;
        *(longArray + v124 + 2) = (v103 >> 33) & 7;
        v127 = *(longArray + 2);
        if (v7 + 53 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (v7 + 53));
        }

        v128 = v7 + 54;
        *(longArray + v126 + 2) = (v103 >> 30) & 7;
        v129 = *(longArray + 2);
        if (v7 + 54 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 54));
        }

        v130 = v7 + 55;
        *(longArray + v128 + 2) = (v103 >> 27) & 7;
        v131 = *(longArray + 2);
        if (v7 + 55 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 55));
        }

        v132 = v7 + 56;
        *(longArray + v130 + 2) = (v103 >> 24) & 7;
        v133 = *(longArray + 2);
        if (v7 + 56 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 56));
        }

        v134 = v7 + 57;
        *(longArray + v132 + 2) = (v103 >> 21) & 7;
        v135 = *(longArray + 2);
        if (v7 + 57 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (v7 + 57));
        }

        v136 = v7 + 58;
        *(longArray + v134 + 2) = (v103 >> 18) & 7;
        v137 = *(longArray + 2);
        if (v7 + 58 < 0 || v136 >= v137)
        {
          IOSArray_throwOutOfBoundsWithMsg(v137, (v7 + 58));
        }

        v138 = v7 + 59;
        *(longArray + v136 + 2) = (v103 >> 15) & 7;
        v139 = *(longArray + 2);
        if (v7 + 59 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 59));
        }

        v140 = v7 + 60;
        *(longArray + v138 + 2) = (v103 >> 12) & 7;
        v141 = *(longArray + 2);
        if (v7 + 60 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 60));
        }

        v142 = v7 + 61;
        *(longArray + v140 + 2) = (v103 >> 9) & 7;
        v143 = *(longArray + 2);
        if (v7 + 61 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 61));
        }

        v144 = v7 + 62;
        *(longArray + v142 + 2) = (v103 >> 6) & 7;
        v145 = *(longArray + 2);
        if (v7 + 62 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 62));
        }

        v146 = v7 + 63;
        *(longArray + v144 + 2) = (v103 >> 3) & 7;
        v147 = *(longArray + 2);
        if (v7 + 63 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (v7 + 63));
        }

        int = intCopy + 3;
        v7 = (v7 + 64);
        *(longArray + v146 + 2) = v103 & 7;
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

        v14 = v8 + 1;
        *(longArray + v8 + 2) = v12 >> 5;
        v15 = *(longArray + 2);
        if (v8 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v8 + 1));
        }

        v16 = (int + 1);
        *(longArray + v14 + 2) = (v12 >> 2) & 7;
        v17 = *(array + 2);
        if ((v16 & 0x80000000) != 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v16);
        }

        v18 = v8 + 2;
        v19 = *(array + v16 + 12);
        v20 = *(longArray + 2);
        if (v8 + 2 < 0 || v18 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v8 + 2));
        }

        v21 = v8 + 3;
        *(longArray + v18 + 2) = (v19 >> 7) & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3));
        v22 = *(longArray + 2);
        if (v8 + 3 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v8 + 3));
        }

        v23 = v8 + 4;
        *(longArray + v21 + 2) = (v19 >> 4) & 7;
        v24 = *(longArray + 2);
        if (v8 + 4 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v8 + 4));
        }

        v25 = intCopy + 2;
        *(longArray + v23 + 2) = (v19 >> 1) & 7;
        v26 = *(array + 2);
        if (intCopy + 2 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 2));
        }

        v27 = v8 + 5;
        v28 = *(array + v25 + 12);
        v29 = *(longArray + 2);
        if (v8 + 5 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v8 + 5));
        }

        v30 = v8 + 6;
        *(longArray + v27 + 2) = (v28 >> 6) & 0xFFFFFFFFFFFFFFFBLL | (4 * (v19 & 1));
        v31 = *(longArray + 2);
        if (v8 + 6 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v8 + 6));
        }

        v32 = v8 + 7;
        *(longArray + v30 + 2) = (v28 >> 3) & 7;
        v33 = *(longArray + 2);
        if (v8 + 7 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v8 + 7));
        }

        *(longArray + v32 + 2) = v28 & 7;
        int = intCopy + 3;
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