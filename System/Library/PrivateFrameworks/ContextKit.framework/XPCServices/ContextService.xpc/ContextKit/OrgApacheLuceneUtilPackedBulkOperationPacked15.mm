@interface OrgApacheLuceneUtilPackedBulkOperationPacked15
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked15

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
        *(intArray + v7 + 3) = v12 >> 49;
        v15 = *(intArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(intArray + v14 + 3) = (v12 >> 34) & 0x7FFF;
        v17 = *(intArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(intArray + v16 + 3) = (v12 >> 19) & 0x7FFF;
        v19 = *(intArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = (int + 1);
        *(intArray + v18 + 3) = (v12 >> 4) & 0x7FFF;
        v21 = *(array + 2);
        if ((v20 & 0x80000000) != 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, v20);
        }

        v22 = v7 + 4;
        v23 = *(array + v20 + 2);
        v24 = *(intArray + 2);
        if (v7 + 4 < 0 || v22 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 4));
        }

        v25 = v7 + 5;
        *(intArray + v22 + 3) = (v23 >> 53) & 0x87FF | ((v12 & 0xF) << 11);
        v26 = *(intArray + 2);
        if (v7 + 5 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 5));
        }

        v27 = v7 + 6;
        *(intArray + v25 + 3) = (v23 >> 38) & 0x7FFF;
        v28 = *(intArray + 2);
        if (v7 + 6 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v7 + 6));
        }

        v29 = v7 + 7;
        *(intArray + v27 + 3) = (v23 >> 23) & 0x7FFF;
        v30 = *(intArray + 2);
        if (v7 + 7 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 7));
        }

        v31 = intCopy + 2;
        *(intArray + v29 + 3) = (v23 >> 8) & 0x7FFF;
        v32 = *(array + 2);
        if (intCopy + 2 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (intCopy + 2));
        }

        v33 = v7 + 8;
        v34 = *(array + v31 + 2);
        v35 = *(intArray + 2);
        if (v7 + 8 < 0 || v33 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 8));
        }

        v36 = v7 + 9;
        *(intArray + v33 + 3) = (v34 >> 57) & 0x7F | (v23 << 7);
        v37 = *(intArray + 2);
        if (v7 + 9 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 9));
        }

        v38 = v7 + 10;
        *(intArray + v36 + 3) = (v34 >> 42) & 0x7FFF;
        v39 = *(intArray + 2);
        if (v7 + 10 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 10));
        }

        v40 = v7 + 11;
        *(intArray + v38 + 3) = (v34 >> 27) & 0x7FFF;
        v41 = *(intArray + 2);
        if (v7 + 11 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 11));
        }

        v42 = intCopy + 3;
        *(intArray + v40 + 3) = (v34 >> 12) & 0x7FFF;
        v43 = *(array + 2);
        if (intCopy + 3 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (intCopy + 3));
        }

        v44 = v7 + 12;
        v45 = *(array + v42 + 2);
        v46 = *(intArray + 2);
        if (v7 + 12 < 0 || v44 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 12));
        }

        v47 = v7 + 13;
        *(intArray + v44 + 3) = (v45 >> 61) & 7 | (8 * (v34 & 0xFFF));
        v48 = *(intArray + 2);
        if (v7 + 13 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 13));
        }

        v49 = v7 + 14;
        *(intArray + v47 + 3) = (v45 >> 46) & 0x7FFF;
        v50 = *(intArray + 2);
        if (v7 + 14 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 14));
        }

        v51 = v7 + 15;
        *(intArray + v49 + 3) = (v45 >> 31) & 0x7FFF;
        v52 = *(intArray + 2);
        if (v7 + 15 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 15));
        }

        v53 = v7 + 16;
        *(intArray + v51 + 3) = WORD1(v45) & 0x7FFF;
        v54 = *(intArray + 2);
        if (v7 + 16 < 0 || v53 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 16));
        }

        v55 = intCopy + 4;
        *(intArray + v53 + 3) = v45 >> 1;
        v56 = *(array + 2);
        if (intCopy + 4 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (intCopy + 4));
        }

        v57 = v7 + 17;
        v58 = *(array + v55 + 2);
        v59 = *(intArray + 2);
        if (v7 + 17 < 0 || v57 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 17));
        }

        v60 = v7 + 18;
        *(intArray + v57 + 3) = (v58 >> 50) & 0xBFFF | ((v45 & 1) << 14);
        v61 = *(intArray + 2);
        if (v7 + 18 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 18));
        }

        v62 = v7 + 19;
        *(intArray + v60 + 3) = (v58 >> 35) & 0x7FFF;
        v63 = *(intArray + 2);
        if (v7 + 19 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 19));
        }

        v64 = v7 + 20;
        *(intArray + v62 + 3) = (v58 >> 20) & 0x7FFF;
        v65 = *(intArray + 2);
        if (v7 + 20 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 20));
        }

        v66 = intCopy + 5;
        *(intArray + v64 + 3) = (v58 >> 5) & 0x7FFF;
        v67 = *(array + 2);
        if (intCopy + 5 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (intCopy + 5));
        }

        v68 = v7 + 21;
        v69 = *(array + v66 + 2);
        v70 = *(intArray + 2);
        if (v7 + 21 < 0 || v68 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (v7 + 21));
        }

        v71 = v7 + 22;
        *(intArray + v68 + 3) = (v69 >> 54) & 0x83FF | ((v58 & 0x1F) << 10);
        v72 = *(intArray + 2);
        if (v7 + 22 < 0 || v71 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 22));
        }

        v73 = v7 + 23;
        *(intArray + v71 + 3) = (v69 >> 39) & 0x7FFF;
        v74 = *(intArray + 2);
        if (v7 + 23 < 0 || v73 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (v7 + 23));
        }

        v75 = v7 + 24;
        *(intArray + v73 + 3) = (v69 >> 24) & 0x7FFF;
        v76 = *(intArray + 2);
        if (v7 + 24 < 0 || v75 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 24));
        }

        v77 = intCopy + 6;
        *(intArray + v75 + 3) = (v69 >> 9) & 0x7FFF;
        v78 = *(array + 2);
        if (intCopy + 6 < 0 || v77 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (intCopy + 6));
        }

        v79 = v7 + 25;
        v80 = *(array + v77 + 2);
        v81 = *(intArray + 2);
        if (v7 + 25 < 0 || v79 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 25));
        }

        v82 = v7 + 26;
        *(intArray + v79 + 3) = (v80 >> 58) & 0x3F | ((v69 & 0x1FF) << 6);
        v83 = *(intArray + 2);
        if (v7 + 26 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (v7 + 26));
        }

        v84 = v7 + 27;
        *(intArray + v82 + 3) = (v80 >> 43) & 0x7FFF;
        v85 = *(intArray + 2);
        if (v7 + 27 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 27));
        }

        v86 = v7 + 28;
        *(intArray + v84 + 3) = (v80 >> 28) & 0x7FFF;
        v87 = *(intArray + 2);
        if (v7 + 28 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 28));
        }

        v88 = intCopy + 7;
        *(intArray + v86 + 3) = (v80 >> 13) & 0x7FFF;
        v89 = *(array + 2);
        if (intCopy + 7 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (intCopy + 7));
        }

        v90 = v7 + 29;
        v91 = *(array + v88 + 2);
        v92 = *(intArray + 2);
        if (v7 + 29 < 0 || v90 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 29));
        }

        v93 = v7 + 30;
        *(intArray + v90 + 3) = (v91 >> 62) & 3 | (4 * (v80 & 0x1FFF));
        v94 = *(intArray + 2);
        if (v7 + 30 < 0 || v93 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (v7 + 30));
        }

        v95 = v7 + 31;
        *(intArray + v93 + 3) = (v91 >> 47) & 0x7FFF;
        v96 = *(intArray + 2);
        if (v7 + 31 < 0 || v95 >= v96)
        {
          IOSArray_throwOutOfBoundsWithMsg(v96, (v7 + 31));
        }

        v97 = v7 + 32;
        *(intArray + v95 + 3) = WORD2(v91) & 0x7FFF;
        v98 = *(intArray + 2);
        if (v7 + 32 < 0 || v97 >= v98)
        {
          IOSArray_throwOutOfBoundsWithMsg(v98, (v7 + 32));
        }

        v99 = v7 + 33;
        *(intArray + v97 + 3) = v91 >> 17;
        v100 = *(intArray + 2);
        if (v7 + 33 < 0 || v99 >= v100)
        {
          IOSArray_throwOutOfBoundsWithMsg(v100, (v7 + 33));
        }

        v101 = intCopy + 8;
        *(intArray + v99 + 3) = (v91 >> 2) & 0x7FFF;
        v102 = *(array + 2);
        if (intCopy + 8 < 0 || v101 >= v102)
        {
          IOSArray_throwOutOfBoundsWithMsg(v102, (intCopy + 8));
        }

        v103 = v7 + 34;
        v104 = *(array + v101 + 2);
        v105 = *(intArray + 2);
        if (v7 + 34 < 0 || v103 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (v7 + 34));
        }

        v106 = v7 + 35;
        *(intArray + v103 + 3) = (v104 >> 51) & 0x9FFF | ((v91 & 3) << 13);
        v107 = *(intArray + 2);
        if (v7 + 35 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 35));
        }

        v108 = v7 + 36;
        *(intArray + v106 + 3) = (v104 >> 36) & 0x7FFF;
        v109 = *(intArray + 2);
        if (v7 + 36 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 36));
        }

        v110 = v7 + 37;
        *(intArray + v108 + 3) = (v104 >> 21) & 0x7FFF;
        v111 = *(intArray + 2);
        if (v7 + 37 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 37));
        }

        v112 = intCopy + 9;
        *(intArray + v110 + 3) = (v104 >> 6) & 0x7FFF;
        v113 = *(array + 2);
        if (intCopy + 9 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (intCopy + 9));
        }

        v114 = v7 + 38;
        v115 = *(array + v112 + 2);
        v116 = *(intArray + 2);
        if (v7 + 38 < 0 || v114 >= v116)
        {
          IOSArray_throwOutOfBoundsWithMsg(v116, (v7 + 38));
        }

        v117 = v7 + 39;
        *(intArray + v114 + 3) = (v115 >> 55) & 0x81FF | ((v104 & 0x3F) << 9);
        v118 = *(intArray + 2);
        if (v7 + 39 < 0 || v117 >= v118)
        {
          IOSArray_throwOutOfBoundsWithMsg(v118, (v7 + 39));
        }

        v119 = v7 + 40;
        *(intArray + v117 + 3) = (v115 >> 40) & 0x7FFF;
        v120 = *(intArray + 2);
        if (v7 + 40 < 0 || v119 >= v120)
        {
          IOSArray_throwOutOfBoundsWithMsg(v120, (v7 + 40));
        }

        v121 = v7 + 41;
        *(intArray + v119 + 3) = (v115 >> 25) & 0x7FFF;
        v122 = *(intArray + 2);
        if (v7 + 41 < 0 || v121 >= v122)
        {
          IOSArray_throwOutOfBoundsWithMsg(v122, (v7 + 41));
        }

        v123 = intCopy + 10;
        *(intArray + v121 + 3) = (v115 >> 10) & 0x7FFF;
        v124 = *(array + 2);
        if (intCopy + 10 < 0 || v123 >= v124)
        {
          IOSArray_throwOutOfBoundsWithMsg(v124, (intCopy + 10));
        }

        v125 = v7 + 42;
        v126 = *(array + v123 + 2);
        v127 = *(intArray + 2);
        if (v7 + 42 < 0 || v125 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (v7 + 42));
        }

        v128 = v7 + 43;
        *(intArray + v125 + 3) = (v126 >> 59) & 0x1F | (32 * (v115 & 0x3FF));
        v129 = *(intArray + 2);
        if (v7 + 43 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 43));
        }

        v130 = v7 + 44;
        *(intArray + v128 + 3) = (v126 >> 44) & 0x7FFF;
        v131 = *(intArray + 2);
        if (v7 + 44 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 44));
        }

        v132 = v7 + 45;
        *(intArray + v130 + 3) = (v126 >> 29) & 0x7FFF;
        v133 = *(intArray + 2);
        if (v7 + 45 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 45));
        }

        v134 = intCopy + 11;
        *(intArray + v132 + 3) = (v126 >> 14) & 0x7FFF;
        v135 = *(array + 2);
        if (intCopy + 11 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (intCopy + 11));
        }

        v136 = v7 + 46;
        v137 = *(array + v134 + 2);
        v138 = *(intArray + 2);
        if (v7 + 46 < 0 || v136 >= v138)
        {
          IOSArray_throwOutOfBoundsWithMsg(v138, (v7 + 46));
        }

        v139 = v7 + 47;
        *(intArray + v136 + 3) = (v137 >> 63) | (2 * (v126 & 0x3FFF));
        v140 = *(intArray + 2);
        if (v7 + 47 < 0 || v139 >= v140)
        {
          IOSArray_throwOutOfBoundsWithMsg(v140, (v7 + 47));
        }

        v141 = v7 + 48;
        *(intArray + v139 + 3) = HIWORD(v137) & 0x7FFF;
        v142 = *(intArray + 2);
        if (v7 + 48 < 0 || v141 >= v142)
        {
          IOSArray_throwOutOfBoundsWithMsg(v142, (v7 + 48));
        }

        v143 = v7 + 49;
        *(intArray + v141 + 3) = (v137 >> 33) & 0x7FFF;
        v144 = *(intArray + 2);
        if (v7 + 49 < 0 || v143 >= v144)
        {
          IOSArray_throwOutOfBoundsWithMsg(v144, (v7 + 49));
        }

        v145 = v7 + 50;
        *(intArray + v143 + 3) = (v137 >> 18) & 0x7FFF;
        v146 = *(intArray + 2);
        if (v7 + 50 < 0 || v145 >= v146)
        {
          IOSArray_throwOutOfBoundsWithMsg(v146, (v7 + 50));
        }

        v147 = intCopy + 12;
        *(intArray + v145 + 3) = (v137 >> 3) & 0x7FFF;
        v148 = *(array + 2);
        if (intCopy + 12 < 0 || v147 >= v148)
        {
          IOSArray_throwOutOfBoundsWithMsg(v148, (intCopy + 12));
        }

        v149 = v7 + 51;
        v150 = *(array + v147 + 2);
        v151 = *(intArray + 2);
        if (v7 + 51 < 0 || v149 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (v7 + 51));
        }

        v152 = v7 + 52;
        *(intArray + v149 + 3) = (v150 >> 52) & 0x8FFF | ((v137 & 7) << 12);
        v153 = *(intArray + 2);
        if (v7 + 52 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (v7 + 52));
        }

        v154 = v7 + 53;
        *(intArray + v152 + 3) = (v150 >> 37) & 0x7FFF;
        v155 = *(intArray + 2);
        if (v7 + 53 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 53));
        }

        v156 = v7 + 54;
        *(intArray + v154 + 3) = (v150 >> 22) & 0x7FFF;
        v157 = *(intArray + 2);
        if (v7 + 54 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (v7 + 54));
        }

        v158 = intCopy + 13;
        *(intArray + v156 + 3) = (v150 >> 7) & 0x7FFF;
        v159 = *(array + 2);
        if (intCopy + 13 < 0 || v158 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (intCopy + 13));
        }

        v160 = v7 + 55;
        v161 = *(array + v158 + 2);
        v162 = *(intArray + 2);
        if (v7 + 55 < 0 || v160 >= v162)
        {
          IOSArray_throwOutOfBoundsWithMsg(v162, (v7 + 55));
        }

        v163 = v7 + 56;
        *(intArray + v160 + 3) = HIBYTE(v161) | ((v150 & 0x7F) << 8);
        v164 = *(intArray + 2);
        if (v7 + 56 < 0 || v163 >= v164)
        {
          IOSArray_throwOutOfBoundsWithMsg(v164, (v7 + 56));
        }

        v165 = v7 + 57;
        *(intArray + v163 + 3) = (v161 >> 41) & 0x7FFF;
        v166 = *(intArray + 2);
        if (v7 + 57 < 0 || v165 >= v166)
        {
          IOSArray_throwOutOfBoundsWithMsg(v166, (v7 + 57));
        }

        v167 = v7 + 58;
        *(intArray + v165 + 3) = (v161 >> 26) & 0x7FFF;
        v168 = *(intArray + 2);
        if (v7 + 58 < 0 || v167 >= v168)
        {
          IOSArray_throwOutOfBoundsWithMsg(v168, (v7 + 58));
        }

        v169 = intCopy + 14;
        *(intArray + v167 + 3) = (v161 >> 11) & 0x7FFF;
        v170 = *(array + 2);
        if (intCopy + 14 < 0 || v169 >= v170)
        {
          IOSArray_throwOutOfBoundsWithMsg(v170, (intCopy + 14));
        }

        v171 = v7 + 59;
        v172 = *(array + v169 + 2);
        v173 = *(intArray + 2);
        if (v7 + 59 < 0 || v171 >= v173)
        {
          IOSArray_throwOutOfBoundsWithMsg(v173, (v7 + 59));
        }

        v174 = v7 + 60;
        *(intArray + v171 + 3) = (v172 >> 60) & 0xF | (16 * (v161 & 0x7FF));
        v175 = *(intArray + 2);
        if (v7 + 60 < 0 || v174 >= v175)
        {
          IOSArray_throwOutOfBoundsWithMsg(v175, (v7 + 60));
        }

        v176 = v7 + 61;
        *(intArray + v174 + 3) = (v172 >> 45) & 0x7FFF;
        v177 = *(intArray + 2);
        if (v7 + 61 < 0 || v176 >= v177)
        {
          IOSArray_throwOutOfBoundsWithMsg(v177, (v7 + 61));
        }

        v178 = v7 + 62;
        *(intArray + v176 + 3) = (v172 >> 30) & 0x7FFF;
        v179 = *(intArray + 2);
        if (v7 + 62 < 0 || v178 >= v179)
        {
          IOSArray_throwOutOfBoundsWithMsg(v179, (v7 + 62));
        }

        v180 = v7 + 63;
        *(intArray + v178 + 3) = (v172 >> 15) & 0x7FFF;
        v181 = *(intArray + 2);
        if (v7 + 63 < 0 || v180 >= v181)
        {
          IOSArray_throwOutOfBoundsWithMsg(v181, (v7 + 63));
        }

        int = intCopy + 15;
        v7 = (v7 + 64);
        *(intArray + v180 + 3) = v172 & 0x7FFF;
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
        *(intArray + v7 + 3) = (v12 >> 1) | (*(array + intCopy + 12) << 7);
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
        *(intArray + v18 + 3) = ((v12 & 1) << 14) | (v17 << 6) | (v19 >> 2);
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
        *(intArray + v25 + 3) = ((v19 & 3) << 13) | (32 * v24) | (v26 >> 3);
        v29 = *(array + 2);
        if (intCopy + 6 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (intCopy + 6));
        }

        v30 = intCopy + 7;
        v31 = *(array + v28 + 12);
        if (intCopy + 7 < 0 || v30 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (intCopy + 7));
        }

        v32 = v7 + 3;
        v33 = *(array + v30 + 12);
        v34 = *(intArray + 2);
        if (v7 + 3 < 0 || v32 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 3));
        }

        v35 = intCopy + 8;
        *(intArray + v32 + 3) = ((v26 & 7) << 12) | (16 * v31) | (v33 >> 4);
        v36 = *(array + 2);
        if (intCopy + 8 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 8));
        }

        v37 = intCopy + 9;
        v38 = *(array + v35 + 12);
        if (intCopy + 9 < 0 || v37 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 9));
        }

        v39 = v7 + 4;
        v40 = *(array + v37 + 12);
        v41 = *(intArray + 2);
        if (v7 + 4 < 0 || v39 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 4));
        }

        v42 = intCopy + 10;
        *(intArray + v39 + 3) = ((v33 & 0xF) << 11) | (8 * v38) | (v40 >> 5);
        v43 = *(array + 2);
        if (intCopy + 10 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (intCopy + 10));
        }

        v44 = intCopy + 11;
        v45 = *(array + v42 + 12);
        if (intCopy + 11 < 0 || v44 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (intCopy + 11));
        }

        v46 = v7 + 5;
        v47 = *(array + v44 + 12);
        v48 = *(intArray + 2);
        if (v7 + 5 < 0 || v46 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 5));
        }

        v49 = intCopy + 12;
        *(intArray + v46 + 3) = ((v40 & 0x1F) << 10) | (4 * v45) | (v47 >> 6);
        v50 = *(array + 2);
        if (intCopy + 12 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (intCopy + 12));
        }

        v51 = intCopy + 13;
        v52 = *(array + v49 + 12);
        if (intCopy + 13 < 0 || v51 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (intCopy + 13));
        }

        v53 = v7 + 6;
        v54 = *(array + v51 + 12);
        v55 = *(intArray + 2);
        if (v7 + 6 < 0 || v53 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 6));
        }

        v56 = intCopy + 14;
        *(intArray + v53 + 3) = ((v47 & 0x3F) << 9) | (2 * v52) | (v54 >> 7);
        v57 = *(array + 2);
        if (intCopy + 14 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (intCopy + 14));
        }

        v58 = v7 + 7;
        v59 = *(intArray + 2);
        if (v7 + 7 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 7));
        }

        *(intArray + v58 + 3) = *(array + v56 + 12) | ((v54 & 0x7F) << 8);
        int = intCopy + 15;
        v7 = (v7 + 8);
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
        *(longArray + v7 + 2) = v12 >> 49;
        v15 = *(longArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(longArray + v14 + 2) = (v12 >> 34) & 0x7FFF;
        v17 = *(longArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(longArray + v16 + 2) = (v12 >> 19) & 0x7FFF;
        v19 = *(longArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = (int + 1);
        *(longArray + v18 + 2) = (v12 >> 4) & 0x7FFF;
        v21 = *(array + 2);
        if ((v20 & 0x80000000) != 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, v20);
        }

        v22 = v7 + 4;
        v23 = *(array + v20 + 2);
        v24 = *(longArray + 2);
        if (v7 + 4 < 0 || v22 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 4));
        }

        *(&v25 + 1) = v12;
        *&v25 = *(array + v20 + 2);
        v26 = v7 + 5;
        *(longArray + v22 + 2) = (v25 >> 53) & 0x7FFF;
        v27 = *(longArray + 2);
        if (v7 + 5 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 5));
        }

        v28 = v7 + 6;
        *(longArray + v26 + 2) = (v23 >> 38) & 0x7FFF;
        v29 = *(longArray + 2);
        if (v7 + 6 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 6));
        }

        v30 = v7 + 7;
        *(longArray + v28 + 2) = (v23 >> 23) & 0x7FFF;
        v31 = *(longArray + 2);
        if (v7 + 7 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 7));
        }

        v32 = intCopy + 2;
        *(longArray + v30 + 2) = (v23 >> 8) & 0x7FFF;
        v33 = *(array + 2);
        if (intCopy + 2 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (intCopy + 2));
        }

        v34 = v7 + 8;
        v35 = *(array + v32 + 2);
        v36 = *(longArray + 2);
        if (v7 + 8 < 0 || v34 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v7 + 8));
        }

        *(&v37 + 1) = v23;
        *&v37 = *(array + v32 + 2);
        v38 = v7 + 9;
        *(longArray + v34 + 2) = (v37 >> 57) & 0x7FFF;
        v39 = *(longArray + 2);
        if (v7 + 9 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 9));
        }

        v40 = v7 + 10;
        *(longArray + v38 + 2) = (v35 >> 42) & 0x7FFF;
        v41 = *(longArray + 2);
        if (v7 + 10 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 10));
        }

        v42 = v7 + 11;
        *(longArray + v40 + 2) = (v35 >> 27) & 0x7FFF;
        v43 = *(longArray + 2);
        if (v7 + 11 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 11));
        }

        v44 = intCopy + 3;
        *(longArray + v42 + 2) = (v35 >> 12) & 0x7FFF;
        v45 = *(array + 2);
        if (intCopy + 3 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (intCopy + 3));
        }

        v46 = v7 + 12;
        v47 = *(array + v44 + 2);
        v48 = *(longArray + 2);
        if (v7 + 12 < 0 || v46 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 12));
        }

        *(&v49 + 1) = v35;
        *&v49 = *(array + v44 + 2);
        v50 = v7 + 13;
        *(longArray + v46 + 2) = (v49 >> 61) & 0x7FFF;
        v51 = *(longArray + 2);
        if (v7 + 13 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 13));
        }

        v52 = v7 + 14;
        *(longArray + v50 + 2) = (v47 >> 46) & 0x7FFF;
        v53 = *(longArray + 2);
        if (v7 + 14 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 14));
        }

        v54 = v7 + 15;
        *(longArray + v52 + 2) = (v47 >> 31) & 0x7FFF;
        v55 = *(longArray + 2);
        if (v7 + 15 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 15));
        }

        v56 = v7 + 16;
        *(longArray + v54 + 2) = (v47 >> 16) & 0x7FFF;
        v57 = *(longArray + 2);
        if (v7 + 16 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 16));
        }

        v58 = intCopy + 4;
        *(longArray + v56 + 2) = v47 >> 1;
        v59 = *(array + 2);
        if (intCopy + 4 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (intCopy + 4));
        }

        v60 = v7 + 17;
        v61 = *(array + v58 + 2);
        v62 = *(longArray + 2);
        if (v7 + 17 < 0 || v60 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (v7 + 17));
        }

        *(&v63 + 1) = v47;
        *&v63 = *(array + v58 + 2);
        v64 = v7 + 18;
        *(longArray + v60 + 2) = (v63 >> 50) & 0x7FFF;
        v65 = *(longArray + 2);
        if (v7 + 18 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 18));
        }

        v66 = v7 + 19;
        *(longArray + v64 + 2) = (v61 >> 35) & 0x7FFF;
        v67 = *(longArray + 2);
        if (v7 + 19 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (v7 + 19));
        }

        v68 = v7 + 20;
        *(longArray + v66 + 2) = (v61 >> 20) & 0x7FFF;
        v69 = *(longArray + 2);
        if (v7 + 20 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 20));
        }

        v70 = intCopy + 5;
        *(longArray + v68 + 2) = (v61 >> 5) & 0x7FFF;
        v71 = *(array + 2);
        if (intCopy + 5 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (intCopy + 5));
        }

        v72 = v7 + 21;
        v73 = *(array + v70 + 2);
        v74 = *(longArray + 2);
        if (v7 + 21 < 0 || v72 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (v7 + 21));
        }

        *(&v75 + 1) = v61;
        *&v75 = *(array + v70 + 2);
        v76 = v7 + 22;
        *(longArray + v72 + 2) = (v75 >> 54) & 0x7FFF;
        v77 = *(longArray + 2);
        if (v7 + 22 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 22));
        }

        v78 = v7 + 23;
        *(longArray + v76 + 2) = (v73 >> 39) & 0x7FFF;
        v79 = *(longArray + 2);
        if (v7 + 23 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (v7 + 23));
        }

        v80 = v7 + 24;
        *(longArray + v78 + 2) = (v73 >> 24) & 0x7FFF;
        v81 = *(longArray + 2);
        if (v7 + 24 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 24));
        }

        v82 = intCopy + 6;
        *(longArray + v80 + 2) = (v73 >> 9) & 0x7FFF;
        v83 = *(array + 2);
        if (intCopy + 6 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (intCopy + 6));
        }

        v84 = v7 + 25;
        v85 = *(array + v82 + 2);
        v86 = *(longArray + 2);
        if (v7 + 25 < 0 || v84 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (v7 + 25));
        }

        *(&v87 + 1) = v73;
        *&v87 = *(array + v82 + 2);
        v88 = v7 + 26;
        *(longArray + v84 + 2) = (v87 >> 58) & 0x7FFF;
        v89 = *(longArray + 2);
        if (v7 + 26 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 26));
        }

        v90 = v7 + 27;
        *(longArray + v88 + 2) = (v85 >> 43) & 0x7FFF;
        v91 = *(longArray + 2);
        if (v7 + 27 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 27));
        }

        v92 = v7 + 28;
        *(longArray + v90 + 2) = (v85 >> 28) & 0x7FFF;
        v93 = *(longArray + 2);
        if (v7 + 28 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 28));
        }

        v94 = intCopy + 7;
        *(longArray + v92 + 2) = (v85 >> 13) & 0x7FFF;
        v95 = *(array + 2);
        if (intCopy + 7 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (intCopy + 7));
        }

        v96 = v7 + 29;
        v97 = *(array + v94 + 2);
        v98 = *(longArray + 2);
        if (v7 + 29 < 0 || v96 >= v98)
        {
          IOSArray_throwOutOfBoundsWithMsg(v98, (v7 + 29));
        }

        *(&v99 + 1) = v85;
        *&v99 = *(array + v94 + 2);
        v100 = v7 + 30;
        *(longArray + v96 + 2) = (v99 >> 62) & 0x7FFF;
        v101 = *(longArray + 2);
        if (v7 + 30 < 0 || v100 >= v101)
        {
          IOSArray_throwOutOfBoundsWithMsg(v101, (v7 + 30));
        }

        v102 = v7 + 31;
        *(longArray + v100 + 2) = (v97 >> 47) & 0x7FFF;
        v103 = *(longArray + 2);
        if (v7 + 31 < 0 || v102 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (v7 + 31));
        }

        v104 = v7 + 32;
        *(longArray + v102 + 2) = HIDWORD(v97) & 0x7FFF;
        v105 = *(longArray + 2);
        if (v7 + 32 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (v7 + 32));
        }

        v106 = v7 + 33;
        *(longArray + v104 + 2) = v97 >> 17;
        v107 = *(longArray + 2);
        if (v7 + 33 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 33));
        }

        v108 = intCopy + 8;
        *(longArray + v106 + 2) = (v97 >> 2) & 0x7FFF;
        v109 = *(array + 2);
        if (intCopy + 8 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (intCopy + 8));
        }

        v110 = v7 + 34;
        v111 = *(array + v108 + 2);
        v112 = *(longArray + 2);
        if (v7 + 34 < 0 || v110 >= v112)
        {
          IOSArray_throwOutOfBoundsWithMsg(v112, (v7 + 34));
        }

        *(&v113 + 1) = v97;
        *&v113 = *(array + v108 + 2);
        v114 = v7 + 35;
        *(longArray + v110 + 2) = (v113 >> 51) & 0x7FFF;
        v115 = *(longArray + 2);
        if (v7 + 35 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 35));
        }

        v116 = v7 + 36;
        *(longArray + v114 + 2) = (v111 >> 36) & 0x7FFF;
        v117 = *(longArray + 2);
        if (v7 + 36 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 36));
        }

        v118 = v7 + 37;
        *(longArray + v116 + 2) = (v111 >> 21) & 0x7FFF;
        v119 = *(longArray + 2);
        if (v7 + 37 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (v7 + 37));
        }

        v120 = intCopy + 9;
        *(longArray + v118 + 2) = (v111 >> 6) & 0x7FFF;
        v121 = *(array + 2);
        if (intCopy + 9 < 0 || v120 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (intCopy + 9));
        }

        v122 = v7 + 38;
        v123 = *(array + v120 + 2);
        v124 = *(longArray + 2);
        if (v7 + 38 < 0 || v122 >= v124)
        {
          IOSArray_throwOutOfBoundsWithMsg(v124, (v7 + 38));
        }

        *(&v125 + 1) = v111;
        *&v125 = *(array + v120 + 2);
        v126 = v7 + 39;
        *(longArray + v122 + 2) = (v125 >> 55) & 0x7FFF;
        v127 = *(longArray + 2);
        if (v7 + 39 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (v7 + 39));
        }

        v128 = v7 + 40;
        *(longArray + v126 + 2) = (v123 >> 40) & 0x7FFF;
        v129 = *(longArray + 2);
        if (v7 + 40 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 40));
        }

        v130 = v7 + 41;
        *(longArray + v128 + 2) = (v123 >> 25) & 0x7FFF;
        v131 = *(longArray + 2);
        if (v7 + 41 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 41));
        }

        v132 = intCopy + 10;
        *(longArray + v130 + 2) = (v123 >> 10) & 0x7FFF;
        v133 = *(array + 2);
        if (intCopy + 10 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (intCopy + 10));
        }

        v134 = v7 + 42;
        v135 = *(array + v132 + 2);
        v136 = *(longArray + 2);
        if (v7 + 42 < 0 || v134 >= v136)
        {
          IOSArray_throwOutOfBoundsWithMsg(v136, (v7 + 42));
        }

        *(&v137 + 1) = v123;
        *&v137 = *(array + v132 + 2);
        v138 = v7 + 43;
        *(longArray + v134 + 2) = (v137 >> 59) & 0x7FFF;
        v139 = *(longArray + 2);
        if (v7 + 43 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 43));
        }

        v140 = v7 + 44;
        *(longArray + v138 + 2) = (v135 >> 44) & 0x7FFF;
        v141 = *(longArray + 2);
        if (v7 + 44 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 44));
        }

        v142 = v7 + 45;
        *(longArray + v140 + 2) = (v135 >> 29) & 0x7FFF;
        v143 = *(longArray + 2);
        if (v7 + 45 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 45));
        }

        v144 = intCopy + 11;
        *(longArray + v142 + 2) = (v135 >> 14) & 0x7FFF;
        v145 = *(array + 2);
        if (intCopy + 11 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (intCopy + 11));
        }

        v146 = v7 + 46;
        v147 = *(array + v144 + 2);
        v148 = *(longArray + 2);
        if (v7 + 46 < 0 || v146 >= v148)
        {
          IOSArray_throwOutOfBoundsWithMsg(v148, (v7 + 46));
        }

        *(&v149 + 1) = v135;
        *&v149 = *(array + v144 + 2);
        v150 = v7 + 47;
        *(longArray + v146 + 2) = (v149 >> 63) & 0x7FFF;
        v151 = *(longArray + 2);
        if (v7 + 47 < 0 || v150 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (v7 + 47));
        }

        v152 = v7 + 48;
        *(longArray + v150 + 2) = HIWORD(v147) & 0x7FFF;
        v153 = *(longArray + 2);
        if (v7 + 48 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (v7 + 48));
        }

        v154 = v7 + 49;
        *(longArray + v152 + 2) = (v147 >> 33) & 0x7FFF;
        v155 = *(longArray + 2);
        if (v7 + 49 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 49));
        }

        v156 = v7 + 50;
        *(longArray + v154 + 2) = (v147 >> 18) & 0x7FFF;
        v157 = *(longArray + 2);
        if (v7 + 50 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (v7 + 50));
        }

        v158 = intCopy + 12;
        *(longArray + v156 + 2) = (v147 >> 3) & 0x7FFF;
        v159 = *(array + 2);
        if (intCopy + 12 < 0 || v158 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (intCopy + 12));
        }

        v160 = v7 + 51;
        v161 = *(array + v158 + 2);
        v162 = *(longArray + 2);
        if (v7 + 51 < 0 || v160 >= v162)
        {
          IOSArray_throwOutOfBoundsWithMsg(v162, (v7 + 51));
        }

        *(&v163 + 1) = v147;
        *&v163 = *(array + v158 + 2);
        v164 = v7 + 52;
        *(longArray + v160 + 2) = (v163 >> 52) & 0x7FFF;
        v165 = *(longArray + 2);
        if (v7 + 52 < 0 || v164 >= v165)
        {
          IOSArray_throwOutOfBoundsWithMsg(v165, (v7 + 52));
        }

        v166 = v7 + 53;
        *(longArray + v164 + 2) = (v161 >> 37) & 0x7FFF;
        v167 = *(longArray + 2);
        if (v7 + 53 < 0 || v166 >= v167)
        {
          IOSArray_throwOutOfBoundsWithMsg(v167, (v7 + 53));
        }

        v168 = v7 + 54;
        *(longArray + v166 + 2) = (v161 >> 22) & 0x7FFF;
        v169 = *(longArray + 2);
        if (v7 + 54 < 0 || v168 >= v169)
        {
          IOSArray_throwOutOfBoundsWithMsg(v169, (v7 + 54));
        }

        v170 = intCopy + 13;
        *(longArray + v168 + 2) = (v161 >> 7) & 0x7FFF;
        v171 = *(array + 2);
        if (intCopy + 13 < 0 || v170 >= v171)
        {
          IOSArray_throwOutOfBoundsWithMsg(v171, (intCopy + 13));
        }

        v172 = v7 + 55;
        v173 = *(array + v170 + 2);
        v174 = *(longArray + 2);
        if (v7 + 55 < 0 || v172 >= v174)
        {
          IOSArray_throwOutOfBoundsWithMsg(v174, (v7 + 55));
        }

        *(&v175 + 1) = v161;
        *&v175 = *(array + v170 + 2);
        v176 = v7 + 56;
        *(longArray + v172 + 2) = (v175 >> 56) & 0x7FFF;
        v177 = *(longArray + 2);
        if (v7 + 56 < 0 || v176 >= v177)
        {
          IOSArray_throwOutOfBoundsWithMsg(v177, (v7 + 56));
        }

        v178 = v7 + 57;
        *(longArray + v176 + 2) = (v173 >> 41) & 0x7FFF;
        v179 = *(longArray + 2);
        if (v7 + 57 < 0 || v178 >= v179)
        {
          IOSArray_throwOutOfBoundsWithMsg(v179, (v7 + 57));
        }

        v180 = v7 + 58;
        *(longArray + v178 + 2) = (v173 >> 26) & 0x7FFF;
        v181 = *(longArray + 2);
        if (v7 + 58 < 0 || v180 >= v181)
        {
          IOSArray_throwOutOfBoundsWithMsg(v181, (v7 + 58));
        }

        v182 = intCopy + 14;
        *(longArray + v180 + 2) = (v173 >> 11) & 0x7FFF;
        v183 = *(array + 2);
        if (intCopy + 14 < 0 || v182 >= v183)
        {
          IOSArray_throwOutOfBoundsWithMsg(v183, (intCopy + 14));
        }

        v184 = v7 + 59;
        v185 = *(array + v182 + 2);
        v186 = *(longArray + 2);
        if (v7 + 59 < 0 || v184 >= v186)
        {
          IOSArray_throwOutOfBoundsWithMsg(v186, (v7 + 59));
        }

        *(&v187 + 1) = v173;
        *&v187 = *(array + v182 + 2);
        v188 = v7 + 60;
        *(longArray + v184 + 2) = (v187 >> 60) & 0x7FFF;
        v189 = *(longArray + 2);
        if (v7 + 60 < 0 || v188 >= v189)
        {
          IOSArray_throwOutOfBoundsWithMsg(v189, (v7 + 60));
        }

        v190 = v7 + 61;
        *(longArray + v188 + 2) = (v185 >> 45) & 0x7FFF;
        v191 = *(longArray + 2);
        if (v7 + 61 < 0 || v190 >= v191)
        {
          IOSArray_throwOutOfBoundsWithMsg(v191, (v7 + 61));
        }

        v192 = v7 + 62;
        *(longArray + v190 + 2) = (v185 >> 30) & 0x7FFF;
        v193 = *(longArray + 2);
        if (v7 + 62 < 0 || v192 >= v193)
        {
          IOSArray_throwOutOfBoundsWithMsg(v193, (v7 + 62));
        }

        v194 = v7 + 63;
        *(longArray + v192 + 2) = (v185 >> 15) & 0x7FFF;
        v195 = *(longArray + 2);
        if (v7 + 63 < 0 || v194 >= v195)
        {
          IOSArray_throwOutOfBoundsWithMsg(v195, (v7 + 63));
        }

        int = intCopy + 15;
        v7 = (v7 + 64);
        *(longArray + v194 + 2) = v185 & 0x7FFF;
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
        *(longArray + v7 + 2) = (v12 >> 1) | (*(array + intCopy + 12) << 7);
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
        *(longArray + v18 + 2) = ((v12 & 1) << 14) | (v17 << 6) | (v19 >> 2);
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
        *(longArray + v25 + 2) = ((v19 & 3) << 13) | (32 * v24) | (v26 >> 3);
        v29 = *(array + 2);
        if (intCopy + 6 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (intCopy + 6));
        }

        v30 = intCopy + 7;
        v31 = *(array + v28 + 12);
        if (intCopy + 7 < 0 || v30 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (intCopy + 7));
        }

        v32 = v7 + 3;
        v33 = *(array + v30 + 12);
        v34 = *(longArray + 2);
        if (v7 + 3 < 0 || v32 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 3));
        }

        v35 = intCopy + 8;
        *(longArray + v32 + 2) = ((v26 & 7) << 12) | (16 * v31) | (v33 >> 4);
        v36 = *(array + 2);
        if (intCopy + 8 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 8));
        }

        v37 = intCopy + 9;
        v38 = *(array + v35 + 12);
        if (intCopy + 9 < 0 || v37 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 9));
        }

        v39 = v7 + 4;
        v40 = *(array + v37 + 12);
        v41 = *(longArray + 2);
        if (v7 + 4 < 0 || v39 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 4));
        }

        v42 = intCopy + 10;
        *(longArray + v39 + 2) = ((v33 & 0xF) << 11) | (8 * v38) | (v40 >> 5);
        v43 = *(array + 2);
        if (intCopy + 10 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (intCopy + 10));
        }

        v44 = intCopy + 11;
        v45 = *(array + v42 + 12);
        if (intCopy + 11 < 0 || v44 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (intCopy + 11));
        }

        v46 = v7 + 5;
        v47 = *(array + v44 + 12);
        v48 = *(longArray + 2);
        if (v7 + 5 < 0 || v46 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 5));
        }

        v49 = intCopy + 12;
        *(longArray + v46 + 2) = ((v40 & 0x1F) << 10) | (4 * v45) | (v47 >> 6);
        v50 = *(array + 2);
        if (intCopy + 12 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (intCopy + 12));
        }

        v51 = intCopy + 13;
        v52 = *(array + v49 + 12);
        if (intCopy + 13 < 0 || v51 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (intCopy + 13));
        }

        v53 = v7 + 6;
        v54 = *(array + v51 + 12);
        v55 = *(longArray + 2);
        if (v7 + 6 < 0 || v53 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 6));
        }

        v56 = intCopy + 14;
        *(longArray + v53 + 2) = ((v47 & 0x3F) << 9) | (2 * v52) | (v54 >> 7);
        v57 = *(array + 2);
        if (intCopy + 14 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (intCopy + 14));
        }

        v58 = v7 + 7;
        v59 = *(longArray + 2);
        if (v7 + 7 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 7));
        }

        *(longArray + v58 + 2) = *(array + v56 + 12) | ((v54 & 0x7F) << 8);
        int = intCopy + 15;
        v7 = (v7 + 8);
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