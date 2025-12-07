@interface OrgApacheLuceneUtilPackedBulkOperationPacked7
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked7

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
        *(intArray + v7 + 3) = v12 >> 57;
        v15 = *(intArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(intArray + v14 + 3) = (v12 >> 50) & 0x7F;
        v17 = *(intArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(intArray + v16 + 3) = (v12 >> 43) & 0x7F;
        v19 = *(intArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = v7 + 4;
        *(intArray + v18 + 3) = (v12 >> 36) & 0x7F;
        v21 = *(intArray + 2);
        if (v7 + 4 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 4));
        }

        v22 = v7 + 5;
        *(intArray + v20 + 3) = (v12 >> 29) & 0x7F;
        v23 = *(intArray + 2);
        if (v7 + 5 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 5));
        }

        v24 = v7 + 6;
        *(intArray + v22 + 3) = (v12 >> 22) & 0x7F;
        v25 = *(intArray + 2);
        if (v7 + 6 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 6));
        }

        v26 = v7 + 7;
        *(intArray + v24 + 3) = (v12 >> 15) & 0x7F;
        v27 = *(intArray + 2);
        if (v7 + 7 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 7));
        }

        v28 = v7 + 8;
        *(intArray + v26 + 3) = (v12 >> 8) & 0x7F;
        v29 = *(intArray + 2);
        if (v7 + 8 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 8));
        }

        v30 = (int + 1);
        *(intArray + v28 + 3) = v12 >> 1;
        v31 = *(array + 2);
        if ((v30 & 0x80000000) != 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, v30);
        }

        v32 = v7 + 9;
        v33 = *(array + v30 + 2);
        v34 = *(intArray + 2);
        if (v7 + 9 < 0 || v32 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 9));
        }

        v35 = v7 + 10;
        *(intArray + v32 + 3) = (v33 >> 58) & 0xBF | ((v12 & 1) << 6);
        v36 = *(intArray + 2);
        if (v7 + 10 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v7 + 10));
        }

        v37 = v7 + 11;
        *(intArray + v35 + 3) = (v33 >> 51) & 0x7F;
        v38 = *(intArray + 2);
        if (v7 + 11 < 0 || v37 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v7 + 11));
        }

        v39 = v7 + 12;
        *(intArray + v37 + 3) = (v33 >> 44) & 0x7F;
        v40 = *(intArray + 2);
        if (v7 + 12 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 12));
        }

        v41 = v7 + 13;
        *(intArray + v39 + 3) = (v33 >> 37) & 0x7F;
        v42 = *(intArray + 2);
        if (v7 + 13 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 13));
        }

        v43 = v7 + 14;
        *(intArray + v41 + 3) = (v33 >> 30) & 0x7F;
        v44 = *(intArray + 2);
        if (v7 + 14 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 14));
        }

        v45 = v7 + 15;
        *(intArray + v43 + 3) = (v33 >> 23) & 0x7F;
        v46 = *(intArray + 2);
        if (v7 + 15 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 15));
        }

        v47 = v7 + 16;
        *(intArray + v45 + 3) = WORD1(v33) & 0x7F;
        v48 = *(intArray + 2);
        if (v7 + 16 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 16));
        }

        v49 = v7 + 17;
        *(intArray + v47 + 3) = v33 >> 9;
        v50 = *(intArray + 2);
        if (v7 + 17 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 17));
        }

        v51 = intCopy + 2;
        *(intArray + v49 + 3) = (v33 >> 2) & 0x7F;
        v52 = *(array + 2);
        if (intCopy + 2 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (intCopy + 2));
        }

        v53 = v7 + 18;
        v54 = *(array + v51 + 2);
        v55 = *(intArray + 2);
        if (v7 + 18 < 0 || v53 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 18));
        }

        v56 = v7 + 19;
        *(intArray + v53 + 3) = (v54 >> 59) & 0x9F | (32 * (v33 & 3));
        v57 = *(intArray + 2);
        if (v7 + 19 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 19));
        }

        v58 = v7 + 20;
        *(intArray + v56 + 3) = (v54 >> 52) & 0x7F;
        v59 = *(intArray + 2);
        if (v7 + 20 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 20));
        }

        v60 = v7 + 21;
        *(intArray + v58 + 3) = (v54 >> 45) & 0x7F;
        v61 = *(intArray + 2);
        if (v7 + 21 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 21));
        }

        v62 = v7 + 22;
        *(intArray + v60 + 3) = (v54 >> 38) & 0x7F;
        v63 = *(intArray + 2);
        if (v7 + 22 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 22));
        }

        v64 = v7 + 23;
        *(intArray + v62 + 3) = (v54 >> 31) & 0x7F;
        v65 = *(intArray + 2);
        if (v7 + 23 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 23));
        }

        v66 = v7 + 24;
        *(intArray + v64 + 3) = BYTE3(v54) & 0x7F;
        v67 = *(intArray + 2);
        if (v7 + 24 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (v7 + 24));
        }

        v68 = v7 + 25;
        *(intArray + v66 + 3) = (v54 >> 17) & 0x7F;
        v69 = *(intArray + 2);
        if (v7 + 25 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 25));
        }

        v70 = v7 + 26;
        *(intArray + v68 + 3) = (v54 >> 10) & 0x7F;
        v71 = *(intArray + 2);
        if (v7 + 26 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 26));
        }

        v72 = intCopy + 3;
        *(intArray + v70 + 3) = (v54 >> 3) & 0x7F;
        v73 = *(array + 2);
        if (intCopy + 3 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (intCopy + 3));
        }

        v74 = v7 + 27;
        v75 = *(array + v72 + 2);
        v76 = *(intArray + 2);
        if (v7 + 27 < 0 || v74 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 27));
        }

        v77 = v7 + 28;
        *(intArray + v74 + 3) = (v75 >> 60) & 0x8F | (16 * (v54 & 7));
        v78 = *(intArray + 2);
        if (v7 + 28 < 0 || v77 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (v7 + 28));
        }

        v79 = v7 + 29;
        *(intArray + v77 + 3) = (v75 >> 53) & 0x7F;
        v80 = *(intArray + 2);
        if (v7 + 29 < 0 || v79 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 29));
        }

        v81 = v7 + 30;
        *(intArray + v79 + 3) = (v75 >> 46) & 0x7F;
        v82 = *(intArray + 2);
        if (v7 + 30 < 0 || v81 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 30));
        }

        v83 = v7 + 31;
        *(intArray + v81 + 3) = (v75 >> 39) & 0x7F;
        v84 = *(intArray + 2);
        if (v7 + 31 < 0 || v83 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 31));
        }

        v85 = v7 + 32;
        *(intArray + v83 + 3) = BYTE4(v75) & 0x7F;
        v86 = *(intArray + 2);
        if (v7 + 32 < 0 || v85 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (v7 + 32));
        }

        v87 = v7 + 33;
        *(intArray + v85 + 3) = v75 >> 25;
        v88 = *(intArray + 2);
        if (v7 + 33 < 0 || v87 >= v88)
        {
          IOSArray_throwOutOfBoundsWithMsg(v88, (v7 + 33));
        }

        v89 = v7 + 34;
        *(intArray + v87 + 3) = (v75 >> 18) & 0x7F;
        v90 = *(intArray + 2);
        if (v7 + 34 < 0 || v89 >= v90)
        {
          IOSArray_throwOutOfBoundsWithMsg(v90, (v7 + 34));
        }

        v91 = v7 + 35;
        *(intArray + v89 + 3) = (v75 >> 11) & 0x7F;
        v92 = *(intArray + 2);
        if (v7 + 35 < 0 || v91 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 35));
        }

        v93 = intCopy + 4;
        *(intArray + v91 + 3) = (v75 >> 4) & 0x7F;
        v94 = *(array + 2);
        if (intCopy + 4 < 0 || v93 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (intCopy + 4));
        }

        v95 = v7 + 36;
        v96 = *(array + v93 + 2);
        v97 = *(intArray + 2);
        if (v7 + 36 < 0 || v95 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (v7 + 36));
        }

        v98 = v7 + 37;
        *(intArray + v95 + 3) = (v96 >> 61) & 0x87 | (8 * (v75 & 0xF));
        v99 = *(intArray + 2);
        if (v7 + 37 < 0 || v98 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (v7 + 37));
        }

        v100 = v7 + 38;
        *(intArray + v98 + 3) = (v96 >> 54) & 0x7F;
        v101 = *(intArray + 2);
        if (v7 + 38 < 0 || v100 >= v101)
        {
          IOSArray_throwOutOfBoundsWithMsg(v101, (v7 + 38));
        }

        v102 = v7 + 39;
        *(intArray + v100 + 3) = (v96 >> 47) & 0x7F;
        v103 = *(intArray + 2);
        if (v7 + 39 < 0 || v102 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (v7 + 39));
        }

        v104 = v7 + 40;
        *(intArray + v102 + 3) = (v96 >> 40) & 0x7F;
        v105 = *(intArray + 2);
        if (v7 + 40 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (v7 + 40));
        }

        v106 = v7 + 41;
        *(intArray + v104 + 3) = (v96 >> 33) & 0x7F;
        v107 = *(intArray + 2);
        if (v7 + 41 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 41));
        }

        v108 = v7 + 42;
        *(intArray + v106 + 3) = (v96 >> 26) & 0x7F;
        v109 = *(intArray + 2);
        if (v7 + 42 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 42));
        }

        v110 = v7 + 43;
        *(intArray + v108 + 3) = (v96 >> 19) & 0x7F;
        v111 = *(intArray + 2);
        if (v7 + 43 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 43));
        }

        v112 = v7 + 44;
        *(intArray + v110 + 3) = (v96 >> 12) & 0x7F;
        v113 = *(intArray + 2);
        if (v7 + 44 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (v7 + 44));
        }

        v114 = intCopy + 5;
        *(intArray + v112 + 3) = (v96 >> 5) & 0x7F;
        v115 = *(array + 2);
        if (intCopy + 5 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (intCopy + 5));
        }

        v116 = v7 + 45;
        v117 = *(array + v114 + 2);
        v118 = *(intArray + 2);
        if (v7 + 45 < 0 || v116 >= v118)
        {
          IOSArray_throwOutOfBoundsWithMsg(v118, (v7 + 45));
        }

        v119 = v7 + 46;
        *(intArray + v116 + 3) = (v117 >> 62) & 0x83 | (4 * (v96 & 0x1F));
        v120 = *(intArray + 2);
        if (v7 + 46 < 0 || v119 >= v120)
        {
          IOSArray_throwOutOfBoundsWithMsg(v120, (v7 + 46));
        }

        v121 = v7 + 47;
        *(intArray + v119 + 3) = (v117 >> 55) & 0x7F;
        v122 = *(intArray + 2);
        if (v7 + 47 < 0 || v121 >= v122)
        {
          IOSArray_throwOutOfBoundsWithMsg(v122, (v7 + 47));
        }

        v123 = v7 + 48;
        *(intArray + v121 + 3) = HIWORD(v117) & 0x7F;
        v124 = *(intArray + 2);
        if (v7 + 48 < 0 || v123 >= v124)
        {
          IOSArray_throwOutOfBoundsWithMsg(v124, (v7 + 48));
        }

        v125 = v7 + 49;
        *(intArray + v123 + 3) = (v117 >> 41) & 0x7F;
        v126 = *(intArray + 2);
        if (v7 + 49 < 0 || v125 >= v126)
        {
          IOSArray_throwOutOfBoundsWithMsg(v126, (v7 + 49));
        }

        v127 = v7 + 50;
        *(intArray + v125 + 3) = (v117 >> 34) & 0x7F;
        v128 = *(intArray + 2);
        if (v7 + 50 < 0 || v127 >= v128)
        {
          IOSArray_throwOutOfBoundsWithMsg(v128, (v7 + 50));
        }

        v129 = v7 + 51;
        *(intArray + v127 + 3) = (v117 >> 27) & 0x7F;
        v130 = *(intArray + 2);
        if (v7 + 51 < 0 || v129 >= v130)
        {
          IOSArray_throwOutOfBoundsWithMsg(v130, (v7 + 51));
        }

        v131 = v7 + 52;
        *(intArray + v129 + 3) = (v117 >> 20) & 0x7F;
        v132 = *(intArray + 2);
        if (v7 + 52 < 0 || v131 >= v132)
        {
          IOSArray_throwOutOfBoundsWithMsg(v132, (v7 + 52));
        }

        v133 = v7 + 53;
        *(intArray + v131 + 3) = (v117 >> 13) & 0x7F;
        v134 = *(intArray + 2);
        if (v7 + 53 < 0 || v133 >= v134)
        {
          IOSArray_throwOutOfBoundsWithMsg(v134, (v7 + 53));
        }

        v135 = intCopy + 6;
        *(intArray + v133 + 3) = (v117 >> 6) & 0x7F;
        v136 = *(array + 2);
        if (intCopy + 6 < 0 || v135 >= v136)
        {
          IOSArray_throwOutOfBoundsWithMsg(v136, (intCopy + 6));
        }

        v137 = v7 + 54;
        v138 = *(array + v135 + 2);
        v139 = *(intArray + 2);
        if (v7 + 54 < 0 || v137 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 54));
        }

        v140 = v7 + 55;
        *(intArray + v137 + 3) = (v138 >> 63) | (2 * (v117 & 0x3F));
        v141 = *(intArray + 2);
        if (v7 + 55 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 55));
        }

        v142 = v7 + 56;
        *(intArray + v140 + 3) = HIBYTE(v138) & 0x7F;
        v143 = *(intArray + 2);
        if (v7 + 56 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 56));
        }

        v144 = v7 + 57;
        *(intArray + v142 + 3) = (v138 >> 49) & 0x7F;
        v145 = *(intArray + 2);
        if (v7 + 57 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 57));
        }

        v146 = v7 + 58;
        *(intArray + v144 + 3) = (v138 >> 42) & 0x7F;
        v147 = *(intArray + 2);
        if (v7 + 58 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (v7 + 58));
        }

        v148 = v7 + 59;
        *(intArray + v146 + 3) = (v138 >> 35) & 0x7F;
        v149 = *(intArray + 2);
        if (v7 + 59 < 0 || v148 >= v149)
        {
          IOSArray_throwOutOfBoundsWithMsg(v149, (v7 + 59));
        }

        v150 = v7 + 60;
        *(intArray + v148 + 3) = (v138 >> 28) & 0x7F;
        v151 = *(intArray + 2);
        if (v7 + 60 < 0 || v150 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (v7 + 60));
        }

        v152 = v7 + 61;
        *(intArray + v150 + 3) = (v138 >> 21) & 0x7F;
        v153 = *(intArray + 2);
        if (v7 + 61 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (v7 + 61));
        }

        v154 = v7 + 62;
        *(intArray + v152 + 3) = (v138 >> 14) & 0x7F;
        v155 = *(intArray + 2);
        if (v7 + 62 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 62));
        }

        v156 = v7 + 63;
        *(intArray + v154 + 3) = (v138 >> 7) & 0x7F;
        v157 = *(intArray + 2);
        if (v7 + 63 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (v7 + 63));
        }

        int = intCopy + 7;
        v7 = (v7 + 64);
        *(intArray + v156 + 3) = v138 & 0x7F;
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
        *(intArray + v8 + 3) = v12 >> 1;
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
        *(intArray + v16 + 3) = (v17 >> 2) & 0xFFFFFFBF | ((v12 & 1) << 6);
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

        v24 = intCopy + 3;
        *(intArray + v21 + 3) = (v22 >> 3) & 0xFFFFFF9F | (32 * (v17 & 3));
        v25 = *(array + 2);
        if (intCopy + 3 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (intCopy + 3));
        }

        v26 = v8 + 3;
        v27 = *(array + v24 + 12);
        v28 = *(intArray + 2);
        if (v8 + 3 < 0 || v26 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v8 + 3));
        }

        v29 = intCopy + 4;
        *(intArray + v26 + 3) = (v27 >> 4) & 0xFFFFFF8F | (16 * (v22 & 7));
        v30 = *(array + 2);
        if (intCopy + 4 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (intCopy + 4));
        }

        v31 = v8 + 4;
        v32 = *(array + v29 + 12);
        v33 = *(intArray + 2);
        if (v8 + 4 < 0 || v31 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v8 + 4));
        }

        v34 = intCopy + 5;
        *(intArray + v31 + 3) = (v32 >> 5) & 0xFFFFFF87 | (8 * (v27 & 0xF));
        v35 = *(array + 2);
        if (intCopy + 5 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (intCopy + 5));
        }

        v36 = v8 + 5;
        v37 = *(array + v34 + 12);
        v38 = *(intArray + 2);
        if (v8 + 5 < 0 || v36 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v8 + 5));
        }

        v39 = intCopy + 6;
        *(intArray + v36 + 3) = (v37 >> 6) & 0xFFFFFF83 | (4 * (v32 & 0x1F));
        v40 = *(array + 2);
        if (intCopy + 6 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (intCopy + 6));
        }

        v41 = v8 + 6;
        v42 = *(array + v39 + 12);
        v43 = *(intArray + 2);
        if (v8 + 6 < 0 || v41 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v8 + 6));
        }

        v44 = v8 + 7;
        *(intArray + v41 + 3) = (v42 >> 7) & 0xFFFFFF81 | (2 * (v37 & 0x3F));
        v45 = *(intArray + 2);
        if (v8 + 7 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v8 + 7));
        }

        *(intArray + v44 + 3) = v42 & 0x7F;
        int = intCopy + 7;
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
        *(longArray + v7 + 2) = v12 >> 57;
        v15 = *(longArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(longArray + v14 + 2) = (v12 >> 50) & 0x7F;
        v17 = *(longArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(longArray + v16 + 2) = (v12 >> 43) & 0x7F;
        v19 = *(longArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = v7 + 4;
        *(longArray + v18 + 2) = (v12 >> 36) & 0x7F;
        v21 = *(longArray + 2);
        if (v7 + 4 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 4));
        }

        v22 = v7 + 5;
        *(longArray + v20 + 2) = (v12 >> 29) & 0x7F;
        v23 = *(longArray + 2);
        if (v7 + 5 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 5));
        }

        v24 = v7 + 6;
        *(longArray + v22 + 2) = (v12 >> 22) & 0x7F;
        v25 = *(longArray + 2);
        if (v7 + 6 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 6));
        }

        v26 = v7 + 7;
        *(longArray + v24 + 2) = (v12 >> 15) & 0x7F;
        v27 = *(longArray + 2);
        if (v7 + 7 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 7));
        }

        v28 = v7 + 8;
        *(longArray + v26 + 2) = (v12 >> 8) & 0x7F;
        v29 = *(longArray + 2);
        if (v7 + 8 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 8));
        }

        v30 = (int + 1);
        *(longArray + v28 + 2) = v12 >> 1;
        v31 = *(array + 2);
        if ((v30 & 0x80000000) != 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, v30);
        }

        v32 = v7 + 9;
        v33 = *(array + v30 + 2);
        v34 = *(longArray + 2);
        if (v7 + 9 < 0 || v32 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 9));
        }

        *(&v35 + 1) = v12;
        *&v35 = *(array + v30 + 2);
        v36 = v7 + 10;
        *(longArray + v32 + 2) = (v35 >> 58) & 0x7F;
        v37 = *(longArray + 2);
        if (v7 + 10 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 10));
        }

        v38 = v7 + 11;
        *(longArray + v36 + 2) = (v33 >> 51) & 0x7F;
        v39 = *(longArray + 2);
        if (v7 + 11 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 11));
        }

        v40 = v7 + 12;
        *(longArray + v38 + 2) = (v33 >> 44) & 0x7F;
        v41 = *(longArray + 2);
        if (v7 + 12 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 12));
        }

        v42 = v7 + 13;
        *(longArray + v40 + 2) = (v33 >> 37) & 0x7F;
        v43 = *(longArray + 2);
        if (v7 + 13 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 13));
        }

        v44 = v7 + 14;
        *(longArray + v42 + 2) = (v33 >> 30) & 0x7F;
        v45 = *(longArray + 2);
        if (v7 + 14 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 14));
        }

        v46 = v7 + 15;
        *(longArray + v44 + 2) = (v33 >> 23) & 0x7F;
        v47 = *(longArray + 2);
        if (v7 + 15 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 15));
        }

        v48 = v7 + 16;
        *(longArray + v46 + 2) = (v33 >> 16) & 0x7F;
        v49 = *(longArray + 2);
        if (v7 + 16 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 16));
        }

        v50 = v7 + 17;
        *(longArray + v48 + 2) = v33 >> 9;
        v51 = *(longArray + 2);
        if (v7 + 17 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 17));
        }

        v52 = intCopy + 2;
        *(longArray + v50 + 2) = (v33 >> 2) & 0x7F;
        v53 = *(array + 2);
        if (intCopy + 2 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (intCopy + 2));
        }

        v54 = v7 + 18;
        v55 = *(array + v52 + 2);
        v56 = *(longArray + 2);
        if (v7 + 18 < 0 || v54 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 18));
        }

        *(&v57 + 1) = v33;
        *&v57 = *(array + v52 + 2);
        v58 = v7 + 19;
        *(longArray + v54 + 2) = (v57 >> 59) & 0x7F;
        v59 = *(longArray + 2);
        if (v7 + 19 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 19));
        }

        v60 = v7 + 20;
        *(longArray + v58 + 2) = (v55 >> 52) & 0x7F;
        v61 = *(longArray + 2);
        if (v7 + 20 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 20));
        }

        v62 = v7 + 21;
        *(longArray + v60 + 2) = (v55 >> 45) & 0x7F;
        v63 = *(longArray + 2);
        if (v7 + 21 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 21));
        }

        v64 = v7 + 22;
        *(longArray + v62 + 2) = (v55 >> 38) & 0x7F;
        v65 = *(longArray + 2);
        if (v7 + 22 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 22));
        }

        v66 = v7 + 23;
        *(longArray + v64 + 2) = (v55 >> 31) & 0x7F;
        v67 = *(longArray + 2);
        if (v7 + 23 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (v7 + 23));
        }

        v68 = v7 + 24;
        *(longArray + v66 + 2) = (v55 >> 24) & 0x7F;
        v69 = *(longArray + 2);
        if (v7 + 24 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 24));
        }

        v70 = v7 + 25;
        *(longArray + v68 + 2) = (v55 >> 17) & 0x7F;
        v71 = *(longArray + 2);
        if (v7 + 25 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 25));
        }

        v72 = v7 + 26;
        *(longArray + v70 + 2) = (v55 >> 10) & 0x7F;
        v73 = *(longArray + 2);
        if (v7 + 26 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 26));
        }

        v74 = intCopy + 3;
        *(longArray + v72 + 2) = (v55 >> 3) & 0x7F;
        v75 = *(array + 2);
        if (intCopy + 3 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (intCopy + 3));
        }

        v76 = v7 + 27;
        v77 = *(array + v74 + 2);
        v78 = *(longArray + 2);
        if (v7 + 27 < 0 || v76 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (v7 + 27));
        }

        *(&v79 + 1) = v55;
        *&v79 = *(array + v74 + 2);
        v80 = v7 + 28;
        *(longArray + v76 + 2) = (v79 >> 60) & 0x7F;
        v81 = *(longArray + 2);
        if (v7 + 28 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 28));
        }

        v82 = v7 + 29;
        *(longArray + v80 + 2) = (v77 >> 53) & 0x7F;
        v83 = *(longArray + 2);
        if (v7 + 29 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (v7 + 29));
        }

        v84 = v7 + 30;
        *(longArray + v82 + 2) = (v77 >> 46) & 0x7F;
        v85 = *(longArray + 2);
        if (v7 + 30 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 30));
        }

        v86 = v7 + 31;
        *(longArray + v84 + 2) = (v77 >> 39) & 0x7F;
        v87 = *(longArray + 2);
        if (v7 + 31 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 31));
        }

        v88 = v7 + 32;
        *(longArray + v86 + 2) = HIDWORD(v77) & 0x7F;
        v89 = *(longArray + 2);
        if (v7 + 32 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 32));
        }

        v90 = v7 + 33;
        *(longArray + v88 + 2) = v77 >> 25;
        v91 = *(longArray + 2);
        if (v7 + 33 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 33));
        }

        v92 = v7 + 34;
        *(longArray + v90 + 2) = (v77 >> 18) & 0x7F;
        v93 = *(longArray + 2);
        if (v7 + 34 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 34));
        }

        v94 = v7 + 35;
        *(longArray + v92 + 2) = (v77 >> 11) & 0x7F;
        v95 = *(longArray + 2);
        if (v7 + 35 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (v7 + 35));
        }

        v96 = intCopy + 4;
        *(longArray + v94 + 2) = (v77 >> 4) & 0x7F;
        v97 = *(array + 2);
        if (intCopy + 4 < 0 || v96 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (intCopy + 4));
        }

        v98 = v7 + 36;
        v99 = *(array + v96 + 2);
        v100 = *(longArray + 2);
        if (v7 + 36 < 0 || v98 >= v100)
        {
          IOSArray_throwOutOfBoundsWithMsg(v100, (v7 + 36));
        }

        *(&v101 + 1) = v77;
        *&v101 = *(array + v96 + 2);
        v102 = v7 + 37;
        *(longArray + v98 + 2) = (v101 >> 61) & 0x7F;
        v103 = *(longArray + 2);
        if (v7 + 37 < 0 || v102 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (v7 + 37));
        }

        v104 = v7 + 38;
        *(longArray + v102 + 2) = (v99 >> 54) & 0x7F;
        v105 = *(longArray + 2);
        if (v7 + 38 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (v7 + 38));
        }

        v106 = v7 + 39;
        *(longArray + v104 + 2) = (v99 >> 47) & 0x7F;
        v107 = *(longArray + 2);
        if (v7 + 39 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 39));
        }

        v108 = v7 + 40;
        *(longArray + v106 + 2) = (v99 >> 40) & 0x7F;
        v109 = *(longArray + 2);
        if (v7 + 40 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 40));
        }

        v110 = v7 + 41;
        *(longArray + v108 + 2) = (v99 >> 33) & 0x7F;
        v111 = *(longArray + 2);
        if (v7 + 41 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 41));
        }

        v112 = v7 + 42;
        *(longArray + v110 + 2) = (v99 >> 26) & 0x7F;
        v113 = *(longArray + 2);
        if (v7 + 42 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (v7 + 42));
        }

        v114 = v7 + 43;
        *(longArray + v112 + 2) = (v99 >> 19) & 0x7F;
        v115 = *(longArray + 2);
        if (v7 + 43 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 43));
        }

        v116 = v7 + 44;
        *(longArray + v114 + 2) = (v99 >> 12) & 0x7F;
        v117 = *(longArray + 2);
        if (v7 + 44 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 44));
        }

        v118 = intCopy + 5;
        *(longArray + v116 + 2) = (v99 >> 5) & 0x7F;
        v119 = *(array + 2);
        if (intCopy + 5 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (intCopy + 5));
        }

        v120 = v7 + 45;
        v121 = *(array + v118 + 2);
        v122 = *(longArray + 2);
        if (v7 + 45 < 0 || v120 >= v122)
        {
          IOSArray_throwOutOfBoundsWithMsg(v122, (v7 + 45));
        }

        *(&v123 + 1) = v99;
        *&v123 = *(array + v118 + 2);
        v124 = v7 + 46;
        *(longArray + v120 + 2) = (v123 >> 62) & 0x7F;
        v125 = *(longArray + 2);
        if (v7 + 46 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (v7 + 46));
        }

        v126 = v7 + 47;
        *(longArray + v124 + 2) = (v121 >> 55) & 0x7F;
        v127 = *(longArray + 2);
        if (v7 + 47 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (v7 + 47));
        }

        v128 = v7 + 48;
        *(longArray + v126 + 2) = HIWORD(v121) & 0x7F;
        v129 = *(longArray + 2);
        if (v7 + 48 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 48));
        }

        v130 = v7 + 49;
        *(longArray + v128 + 2) = (v121 >> 41) & 0x7F;
        v131 = *(longArray + 2);
        if (v7 + 49 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 49));
        }

        v132 = v7 + 50;
        *(longArray + v130 + 2) = (v121 >> 34) & 0x7F;
        v133 = *(longArray + 2);
        if (v7 + 50 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 50));
        }

        v134 = v7 + 51;
        *(longArray + v132 + 2) = (v121 >> 27) & 0x7F;
        v135 = *(longArray + 2);
        if (v7 + 51 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (v7 + 51));
        }

        v136 = v7 + 52;
        *(longArray + v134 + 2) = (v121 >> 20) & 0x7F;
        v137 = *(longArray + 2);
        if (v7 + 52 < 0 || v136 >= v137)
        {
          IOSArray_throwOutOfBoundsWithMsg(v137, (v7 + 52));
        }

        v138 = v7 + 53;
        *(longArray + v136 + 2) = (v121 >> 13) & 0x7F;
        v139 = *(longArray + 2);
        if (v7 + 53 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 53));
        }

        v140 = intCopy + 6;
        *(longArray + v138 + 2) = (v121 >> 6) & 0x7F;
        v141 = *(array + 2);
        if (intCopy + 6 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (intCopy + 6));
        }

        v142 = v7 + 54;
        v143 = *(array + v140 + 2);
        v144 = *(longArray + 2);
        if (v7 + 54 < 0 || v142 >= v144)
        {
          IOSArray_throwOutOfBoundsWithMsg(v144, (v7 + 54));
        }

        *(&v145 + 1) = v121;
        *&v145 = *(array + v140 + 2);
        v146 = v7 + 55;
        *(longArray + v142 + 2) = (v145 >> 63) & 0x7F;
        v147 = *(longArray + 2);
        if (v7 + 55 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (v7 + 55));
        }

        v148 = v7 + 56;
        *(longArray + v146 + 2) = HIBYTE(v143) & 0x7F;
        v149 = *(longArray + 2);
        if (v7 + 56 < 0 || v148 >= v149)
        {
          IOSArray_throwOutOfBoundsWithMsg(v149, (v7 + 56));
        }

        v150 = v7 + 57;
        *(longArray + v148 + 2) = (v143 >> 49) & 0x7F;
        v151 = *(longArray + 2);
        if (v7 + 57 < 0 || v150 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (v7 + 57));
        }

        v152 = v7 + 58;
        *(longArray + v150 + 2) = (v143 >> 42) & 0x7F;
        v153 = *(longArray + 2);
        if (v7 + 58 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (v7 + 58));
        }

        v154 = v7 + 59;
        *(longArray + v152 + 2) = (v143 >> 35) & 0x7F;
        v155 = *(longArray + 2);
        if (v7 + 59 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 59));
        }

        v156 = v7 + 60;
        *(longArray + v154 + 2) = (v143 >> 28) & 0x7F;
        v157 = *(longArray + 2);
        if (v7 + 60 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (v7 + 60));
        }

        v158 = v7 + 61;
        *(longArray + v156 + 2) = (v143 >> 21) & 0x7F;
        v159 = *(longArray + 2);
        if (v7 + 61 < 0 || v158 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (v7 + 61));
        }

        v160 = v7 + 62;
        *(longArray + v158 + 2) = (v143 >> 14) & 0x7F;
        v161 = *(longArray + 2);
        if (v7 + 62 < 0 || v160 >= v161)
        {
          IOSArray_throwOutOfBoundsWithMsg(v161, (v7 + 62));
        }

        v162 = v7 + 63;
        *(longArray + v160 + 2) = (v143 >> 7) & 0x7F;
        v163 = *(longArray + 2);
        if (v7 + 63 < 0 || v162 >= v163)
        {
          IOSArray_throwOutOfBoundsWithMsg(v163, (v7 + 63));
        }

        int = intCopy + 7;
        v7 = (v7 + 64);
        *(longArray + v162 + 2) = v143 & 0x7F;
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
        *(longArray + v8 + 2) = v12 >> 1;
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
        *(longArray + v16 + 2) = (v17 >> 2) & 0xFFFFFFFFFFFFFFBFLL | ((v12 & 1) << 6);
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

        v24 = intCopy + 3;
        *(longArray + v21 + 2) = (v22 >> 3) & 0xFFFFFFFFFFFFFF9FLL | (32 * (v17 & 3));
        v25 = *(array + 2);
        if (intCopy + 3 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (intCopy + 3));
        }

        v26 = v8 + 3;
        v27 = *(array + v24 + 12);
        v28 = *(longArray + 2);
        if (v8 + 3 < 0 || v26 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v8 + 3));
        }

        v29 = intCopy + 4;
        *(longArray + v26 + 2) = (v27 >> 4) & 0xFFFFFFFFFFFFFF8FLL | (16 * (v22 & 7));
        v30 = *(array + 2);
        if (intCopy + 4 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (intCopy + 4));
        }

        v31 = v8 + 4;
        v32 = *(array + v29 + 12);
        v33 = *(longArray + 2);
        if (v8 + 4 < 0 || v31 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v8 + 4));
        }

        v34 = intCopy + 5;
        *(longArray + v31 + 2) = (v32 >> 5) & 0xFFFFFFFFFFFFFF87 | (8 * (v27 & 0xF));
        v35 = *(array + 2);
        if (intCopy + 5 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (intCopy + 5));
        }

        v36 = v8 + 5;
        v37 = *(array + v34 + 12);
        v38 = *(longArray + 2);
        if (v8 + 5 < 0 || v36 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v8 + 5));
        }

        v39 = intCopy + 6;
        *(longArray + v36 + 2) = (v37 >> 6) & 0xFFFFFFFFFFFFFF83 | (4 * (v32 & 0x1F));
        v40 = *(array + 2);
        if (intCopy + 6 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (intCopy + 6));
        }

        v41 = v8 + 6;
        v42 = *(array + v39 + 12);
        v43 = *(longArray + 2);
        if (v8 + 6 < 0 || v41 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v8 + 6));
        }

        v44 = v8 + 7;
        *(longArray + v41 + 2) = (v42 >> 7) & 0xFFFFFFFFFFFFFF81 | (2 * (v37 & 0x3F));
        v45 = *(longArray + 2);
        if (v8 + 7 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v8 + 7));
        }

        *(longArray + v44 + 2) = v42 & 0x7F;
        int = intCopy + 7;
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