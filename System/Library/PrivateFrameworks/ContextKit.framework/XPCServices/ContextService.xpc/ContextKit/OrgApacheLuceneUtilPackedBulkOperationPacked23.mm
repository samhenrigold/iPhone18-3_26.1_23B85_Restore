@interface OrgApacheLuceneUtilPackedBulkOperationPacked23
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked23

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
        *(intArray + v7 + 3) = v12 >> 41;
        v15 = *(intArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = (int + 1);
        *(intArray + v14 + 3) = (v12 >> 18) & 0x7FFFFF;
        v17 = *(array + 2);
        if ((v16 & 0x80000000) != 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v16);
        }

        v18 = v7 + 2;
        v19 = *(array + v16 + 2);
        v20 = *(intArray + 2);
        if (v7 + 2 < 0 || v18 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v7 + 2));
        }

        v21 = v7 + 3;
        *(intArray + v18 + 3) = (v19 >> 59) & 0x1F | (32 * (v12 & 0x3FFFF));
        v22 = *(intArray + 2);
        if (v7 + 3 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v7 + 3));
        }

        v23 = v7 + 4;
        *(intArray + v21 + 3) = (v19 >> 36) & 0x7FFFFF;
        v24 = *(intArray + 2);
        if (v7 + 4 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 4));
        }

        v25 = intCopy + 2;
        *(intArray + v23 + 3) = (v19 >> 13) & 0x7FFFFF;
        v26 = *(array + 2);
        if (intCopy + 2 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 2));
        }

        v27 = v7 + 5;
        v28 = *(array + v25 + 2);
        v29 = *(intArray + 2);
        if (v7 + 5 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 5));
        }

        v30 = v7 + 6;
        *(intArray + v27 + 3) = (v28 >> 54) & 0x3FF | ((v19 & 0x1FFF) << 10);
        v31 = *(intArray + 2);
        if (v7 + 6 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 6));
        }

        v32 = v7 + 7;
        *(intArray + v30 + 3) = (v28 >> 31) & 0x7FFFFF;
        v33 = *(intArray + 2);
        if (v7 + 7 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 7));
        }

        v34 = intCopy + 3;
        *(intArray + v32 + 3) = (v28 >> 8) & 0x7FFFFF;
        v35 = *(array + 2);
        if (intCopy + 3 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (intCopy + 3));
        }

        v36 = v7 + 8;
        v37 = *(array + v34 + 2);
        v38 = *(intArray + 2);
        if (v7 + 8 < 0 || v36 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v7 + 8));
        }

        v39 = v7 + 9;
        *(intArray + v36 + 3) = (v37 >> 49) & 0x7FFF | (v28 << 15);
        v40 = *(intArray + 2);
        if (v7 + 9 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 9));
        }

        v41 = v7 + 10;
        *(intArray + v39 + 3) = (v37 >> 26) & 0x7FFFFF;
        v42 = *(intArray + 2);
        if (v7 + 10 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 10));
        }

        v43 = intCopy + 4;
        *(intArray + v41 + 3) = (v37 >> 3) & 0x7FFFFF;
        v44 = *(array + 2);
        if (intCopy + 4 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (intCopy + 4));
        }

        v45 = v7 + 11;
        v46 = *(array + v43 + 2);
        v47 = *(intArray + 2);
        if (v7 + 11 < 0 || v45 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 11));
        }

        v48 = (v46 >> 44) & 0xFF8FFFFF | ((v37 & 7) << 20);
        v49 = v7 + 12;
        *(intArray + v45 + 3) = v48;
        v50 = *(intArray + 2);
        if (v7 + 12 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 12));
        }

        v51 = intCopy + 5;
        *(intArray + v49 + 3) = (v46 >> 21) & 0x7FFFFF;
        v52 = *(array + 2);
        if (intCopy + 5 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (intCopy + 5));
        }

        v53 = v7 + 13;
        v54 = *(array + v51 + 2);
        v55 = *(intArray + 2);
        if (v7 + 13 < 0 || v53 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 13));
        }

        v56 = v7 + 14;
        *(intArray + v53 + 3) = (v54 >> 62) & 3 | (4 * (v46 & 0x1FFFFF));
        v57 = *(intArray + 2);
        if (v7 + 14 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 14));
        }

        v58 = v7 + 15;
        *(intArray + v56 + 3) = (v54 >> 39) & 0x7FFFFF;
        v59 = *(intArray + 2);
        if (v7 + 15 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 15));
        }

        v60 = intCopy + 6;
        *(intArray + v58 + 3) = (v54 >> 16) & 0x7FFFFF;
        v61 = *(array + 2);
        if (intCopy + 6 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (intCopy + 6));
        }

        v62 = v7 + 16;
        v63 = *(array + v60 + 2);
        v64 = *(intArray + 2);
        if (v7 + 16 < 0 || v62 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 16));
        }

        v65 = v7 + 17;
        *(intArray + v62 + 3) = (v63 >> 57) & 0x7F | (v54 << 7);
        v66 = *(intArray + 2);
        if (v7 + 17 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 17));
        }

        v67 = v7 + 18;
        *(intArray + v65 + 3) = (v63 >> 34) & 0x7FFFFF;
        v68 = *(intArray + 2);
        if (v7 + 18 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 18));
        }

        v69 = intCopy + 7;
        *(intArray + v67 + 3) = (v63 >> 11) & 0x7FFFFF;
        v70 = *(array + 2);
        if (intCopy + 7 < 0 || v69 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (intCopy + 7));
        }

        v71 = v7 + 19;
        v72 = *(array + v69 + 2);
        v73 = *(intArray + 2);
        if (v7 + 19 < 0 || v71 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 19));
        }

        v74 = v7 + 20;
        *(intArray + v71 + 3) = (v72 >> 52) & 0xFFF | ((v63 & 0x7FF) << 12);
        v75 = *(intArray + 2);
        if (v7 + 20 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 20));
        }

        v76 = v7 + 21;
        *(intArray + v74 + 3) = (v72 >> 29) & 0x7FFFFF;
        v77 = *(intArray + 2);
        if (v7 + 21 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 21));
        }

        v78 = intCopy + 8;
        *(intArray + v76 + 3) = (v72 >> 6) & 0x7FFFFF;
        v79 = *(array + 2);
        if (intCopy + 8 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (intCopy + 8));
        }

        v80 = v7 + 22;
        v81 = *(array + v78 + 2);
        v82 = *(intArray + 2);
        if (v7 + 22 < 0 || v80 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 22));
        }

        v83 = v7 + 23;
        *(intArray + v80 + 3) = (v81 >> 47) & 0xFF81FFFF | ((v72 & 0x3F) << 17);
        v84 = *(intArray + 2);
        if (v7 + 23 < 0 || v83 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 23));
        }

        v85 = v7 + 24;
        *(intArray + v83 + 3) = (v81 >> 24) & 0x7FFFFF;
        v86 = *(intArray + 2);
        if (v7 + 24 < 0 || v85 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (v7 + 24));
        }

        v87 = intCopy + 9;
        *(intArray + v85 + 3) = (v81 >> 1) & 0x7FFFFF;
        v88 = *(array + 2);
        if (intCopy + 9 < 0 || v87 >= v88)
        {
          IOSArray_throwOutOfBoundsWithMsg(v88, (intCopy + 9));
        }

        v89 = v7 + 25;
        v90 = *(array + v87 + 2);
        v91 = *(intArray + 2);
        if (v7 + 25 < 0 || v89 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 25));
        }

        v92 = (v90 >> 42) & 0xFFBFFFFF | ((v81 & 1) << 22);
        v93 = v7 + 26;
        *(intArray + v89 + 3) = v92;
        v94 = *(intArray + 2);
        if (v7 + 26 < 0 || v93 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (v7 + 26));
        }

        v95 = intCopy + 10;
        *(intArray + v93 + 3) = (v90 >> 19) & 0x7FFFFF;
        v96 = *(array + 2);
        if (intCopy + 10 < 0 || v95 >= v96)
        {
          IOSArray_throwOutOfBoundsWithMsg(v96, (intCopy + 10));
        }

        v97 = v7 + 27;
        v98 = *(array + v95 + 2);
        v99 = *(intArray + 2);
        if (v7 + 27 < 0 || v97 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (v7 + 27));
        }

        v100 = v7 + 28;
        *(intArray + v97 + 3) = (v98 >> 60) & 0xF | (16 * (v90 & 0x7FFFF));
        v101 = *(intArray + 2);
        if (v7 + 28 < 0 || v100 >= v101)
        {
          IOSArray_throwOutOfBoundsWithMsg(v101, (v7 + 28));
        }

        v102 = v7 + 29;
        *(intArray + v100 + 3) = (v98 >> 37) & 0x7FFFFF;
        v103 = *(intArray + 2);
        if (v7 + 29 < 0 || v102 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (v7 + 29));
        }

        v104 = intCopy + 11;
        *(intArray + v102 + 3) = (v98 >> 14) & 0x7FFFFF;
        v105 = *(array + 2);
        if (intCopy + 11 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (intCopy + 11));
        }

        v106 = v7 + 30;
        v107 = *(array + v104 + 2);
        v108 = *(intArray + 2);
        if (v7 + 30 < 0 || v106 >= v108)
        {
          IOSArray_throwOutOfBoundsWithMsg(v108, (v7 + 30));
        }

        v109 = v7 + 31;
        *(intArray + v106 + 3) = (v107 >> 55) & 0x1FF | ((v98 & 0x3FFF) << 9);
        v110 = *(intArray + 2);
        if (v7 + 31 < 0 || v109 >= v110)
        {
          IOSArray_throwOutOfBoundsWithMsg(v110, (v7 + 31));
        }

        v111 = v7 + 32;
        *(intArray + v109 + 3) = HIDWORD(v107) & 0x7FFFFF;
        v112 = *(intArray + 2);
        if (v7 + 32 < 0 || v111 >= v112)
        {
          IOSArray_throwOutOfBoundsWithMsg(v112, (v7 + 32));
        }

        v113 = intCopy + 12;
        *(intArray + v111 + 3) = v107 >> 9;
        v114 = *(array + 2);
        if (intCopy + 12 < 0 || v113 >= v114)
        {
          IOSArray_throwOutOfBoundsWithMsg(v114, (intCopy + 12));
        }

        v115 = v7 + 33;
        v116 = *(array + v113 + 2);
        v117 = *(intArray + 2);
        if (v7 + 33 < 0 || v115 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 33));
        }

        v118 = v7 + 34;
        *(intArray + v115 + 3) = (v116 >> 50) & 0x3FFF | ((v107 & 0x1FF) << 14);
        v119 = *(intArray + 2);
        if (v7 + 34 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (v7 + 34));
        }

        v120 = v7 + 35;
        *(intArray + v118 + 3) = (v116 >> 27) & 0x7FFFFF;
        v121 = *(intArray + 2);
        if (v7 + 35 < 0 || v120 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (v7 + 35));
        }

        v122 = intCopy + 13;
        *(intArray + v120 + 3) = (v116 >> 4) & 0x7FFFFF;
        v123 = *(array + 2);
        if (intCopy + 13 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (intCopy + 13));
        }

        v124 = v7 + 36;
        v125 = *(array + v122 + 2);
        v126 = *(intArray + 2);
        if (v7 + 36 < 0 || v124 >= v126)
        {
          IOSArray_throwOutOfBoundsWithMsg(v126, (v7 + 36));
        }

        v127 = v7 + 37;
        *(intArray + v124 + 3) = (v125 >> 45) & 0xFF87FFFF | ((v116 & 0xF) << 19);
        v128 = *(intArray + 2);
        if (v7 + 37 < 0 || v127 >= v128)
        {
          IOSArray_throwOutOfBoundsWithMsg(v128, (v7 + 37));
        }

        v129 = intCopy + 14;
        *(intArray + v127 + 3) = (v125 >> 22) & 0x7FFFFF;
        v130 = *(array + 2);
        if (intCopy + 14 < 0 || v129 >= v130)
        {
          IOSArray_throwOutOfBoundsWithMsg(v130, (intCopy + 14));
        }

        v131 = v7 + 38;
        v132 = *(array + v129 + 2);
        v133 = *(intArray + 2);
        if (v7 + 38 < 0 || v131 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 38));
        }

        v134 = v7 + 39;
        *(intArray + v131 + 3) = (v132 >> 63) | (2 * (v125 & 0x3FFFFF));
        v135 = *(intArray + 2);
        if (v7 + 39 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (v7 + 39));
        }

        v136 = v7 + 40;
        *(intArray + v134 + 3) = (v132 >> 40) & 0x7FFFFF;
        v137 = *(intArray + 2);
        if (v7 + 40 < 0 || v136 >= v137)
        {
          IOSArray_throwOutOfBoundsWithMsg(v137, (v7 + 40));
        }

        v138 = intCopy + 15;
        *(intArray + v136 + 3) = (v132 >> 17) & 0x7FFFFF;
        v139 = *(array + 2);
        if (intCopy + 15 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (intCopy + 15));
        }

        v140 = v7 + 41;
        v141 = *(array + v138 + 2);
        v142 = *(intArray + 2);
        if (v7 + 41 < 0 || v140 >= v142)
        {
          IOSArray_throwOutOfBoundsWithMsg(v142, (v7 + 41));
        }

        v143 = v7 + 42;
        *(intArray + v140 + 3) = (v141 >> 58) & 0x3F | ((v132 & 0x1FFFF) << 6);
        v144 = *(intArray + 2);
        if (v7 + 42 < 0 || v143 >= v144)
        {
          IOSArray_throwOutOfBoundsWithMsg(v144, (v7 + 42));
        }

        v145 = v7 + 43;
        *(intArray + v143 + 3) = (v141 >> 35) & 0x7FFFFF;
        v146 = *(intArray + 2);
        if (v7 + 43 < 0 || v145 >= v146)
        {
          IOSArray_throwOutOfBoundsWithMsg(v146, (v7 + 43));
        }

        v147 = intCopy + 16;
        *(intArray + v145 + 3) = (v141 >> 12) & 0x7FFFFF;
        v148 = *(array + 2);
        if (intCopy + 16 < 0 || v147 >= v148)
        {
          IOSArray_throwOutOfBoundsWithMsg(v148, (intCopy + 16));
        }

        v149 = v7 + 44;
        v150 = *(array + v147 + 2);
        v151 = *(intArray + 2);
        if (v7 + 44 < 0 || v149 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (v7 + 44));
        }

        v152 = v7 + 45;
        *(intArray + v149 + 3) = (v150 >> 53) & 0x7FF | ((v141 & 0xFFF) << 11);
        v153 = *(intArray + 2);
        if (v7 + 45 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (v7 + 45));
        }

        v154 = v7 + 46;
        *(intArray + v152 + 3) = (v150 >> 30) & 0x7FFFFF;
        v155 = *(intArray + 2);
        if (v7 + 46 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 46));
        }

        v156 = intCopy + 17;
        *(intArray + v154 + 3) = (v150 >> 7) & 0x7FFFFF;
        v157 = *(array + 2);
        if (intCopy + 17 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (intCopy + 17));
        }

        v158 = v7 + 47;
        v159 = *(array + v156 + 2);
        v160 = *(intArray + 2);
        if (v7 + 47 < 0 || v158 >= v160)
        {
          IOSArray_throwOutOfBoundsWithMsg(v160, (v7 + 47));
        }

        v161 = v7 + 48;
        *(intArray + v158 + 3) = HIWORD(v159) | ((v150 & 0x7F) << 16);
        v162 = *(intArray + 2);
        if (v7 + 48 < 0 || v161 >= v162)
        {
          IOSArray_throwOutOfBoundsWithMsg(v162, (v7 + 48));
        }

        v163 = v7 + 49;
        *(intArray + v161 + 3) = (v159 >> 25) & 0x7FFFFF;
        v164 = *(intArray + 2);
        if (v7 + 49 < 0 || v163 >= v164)
        {
          IOSArray_throwOutOfBoundsWithMsg(v164, (v7 + 49));
        }

        v165 = intCopy + 18;
        *(intArray + v163 + 3) = (v159 >> 2) & 0x7FFFFF;
        v166 = *(array + 2);
        if (intCopy + 18 < 0 || v165 >= v166)
        {
          IOSArray_throwOutOfBoundsWithMsg(v166, (intCopy + 18));
        }

        v167 = v7 + 50;
        v168 = *(array + v165 + 2);
        v169 = *(intArray + 2);
        if (v7 + 50 < 0 || v167 >= v169)
        {
          IOSArray_throwOutOfBoundsWithMsg(v169, (v7 + 50));
        }

        v170 = (v168 >> 43) & 0xFF9FFFFF | ((v159 & 3) << 21);
        v171 = v7 + 51;
        *(intArray + v167 + 3) = v170;
        v172 = *(intArray + 2);
        if (v7 + 51 < 0 || v171 >= v172)
        {
          IOSArray_throwOutOfBoundsWithMsg(v172, (v7 + 51));
        }

        v173 = intCopy + 19;
        *(intArray + v171 + 3) = (v168 >> 20) & 0x7FFFFF;
        v174 = *(array + 2);
        if (intCopy + 19 < 0 || v173 >= v174)
        {
          IOSArray_throwOutOfBoundsWithMsg(v174, (intCopy + 19));
        }

        v175 = v7 + 52;
        v176 = *(array + v173 + 2);
        v177 = *(intArray + 2);
        if (v7 + 52 < 0 || v175 >= v177)
        {
          IOSArray_throwOutOfBoundsWithMsg(v177, (v7 + 52));
        }

        v178 = v7 + 53;
        *(intArray + v175 + 3) = (v176 >> 61) & 7 | (8 * (v168 & 0xFFFFF));
        v179 = *(intArray + 2);
        if (v7 + 53 < 0 || v178 >= v179)
        {
          IOSArray_throwOutOfBoundsWithMsg(v179, (v7 + 53));
        }

        v180 = v7 + 54;
        *(intArray + v178 + 3) = (v176 >> 38) & 0x7FFFFF;
        v181 = *(intArray + 2);
        if (v7 + 54 < 0 || v180 >= v181)
        {
          IOSArray_throwOutOfBoundsWithMsg(v181, (v7 + 54));
        }

        v182 = intCopy + 20;
        *(intArray + v180 + 3) = (v176 >> 15) & 0x7FFFFF;
        v183 = *(array + 2);
        if (intCopy + 20 < 0 || v182 >= v183)
        {
          IOSArray_throwOutOfBoundsWithMsg(v183, (intCopy + 20));
        }

        v184 = v7 + 55;
        v185 = *(array + v182 + 2);
        v186 = *(intArray + 2);
        if (v7 + 55 < 0 || v184 >= v186)
        {
          IOSArray_throwOutOfBoundsWithMsg(v186, (v7 + 55));
        }

        v187 = v7 + 56;
        *(intArray + v184 + 3) = HIBYTE(v185) | ((v176 & 0x7FFF) << 8);
        v188 = *(intArray + 2);
        if (v7 + 56 < 0 || v187 >= v188)
        {
          IOSArray_throwOutOfBoundsWithMsg(v188, (v7 + 56));
        }

        v189 = v7 + 57;
        *(intArray + v187 + 3) = (v185 >> 33) & 0x7FFFFF;
        v190 = *(intArray + 2);
        if (v7 + 57 < 0 || v189 >= v190)
        {
          IOSArray_throwOutOfBoundsWithMsg(v190, (v7 + 57));
        }

        v191 = intCopy + 21;
        *(intArray + v189 + 3) = (v185 >> 10) & 0x7FFFFF;
        v192 = *(array + 2);
        if (intCopy + 21 < 0 || v191 >= v192)
        {
          IOSArray_throwOutOfBoundsWithMsg(v192, (intCopy + 21));
        }

        v193 = v7 + 58;
        v194 = *(array + v191 + 2);
        v195 = *(intArray + 2);
        if (v7 + 58 < 0 || v193 >= v195)
        {
          IOSArray_throwOutOfBoundsWithMsg(v195, (v7 + 58));
        }

        v196 = v7 + 59;
        *(intArray + v193 + 3) = (v194 >> 51) & 0x1FFF | ((v185 & 0x3FF) << 13);
        v197 = *(intArray + 2);
        if (v7 + 59 < 0 || v196 >= v197)
        {
          IOSArray_throwOutOfBoundsWithMsg(v197, (v7 + 59));
        }

        v198 = v7 + 60;
        *(intArray + v196 + 3) = (v194 >> 28) & 0x7FFFFF;
        v199 = *(intArray + 2);
        if (v7 + 60 < 0 || v198 >= v199)
        {
          IOSArray_throwOutOfBoundsWithMsg(v199, (v7 + 60));
        }

        v200 = intCopy + 22;
        *(intArray + v198 + 3) = (v194 >> 5) & 0x7FFFFF;
        v201 = *(array + 2);
        if (intCopy + 22 < 0 || v200 >= v201)
        {
          IOSArray_throwOutOfBoundsWithMsg(v201, (intCopy + 22));
        }

        v202 = v7 + 61;
        v203 = *(array + v200 + 2);
        v204 = *(intArray + 2);
        if (v7 + 61 < 0 || v202 >= v204)
        {
          IOSArray_throwOutOfBoundsWithMsg(v204, (v7 + 61));
        }

        v205 = v7 + 62;
        *(intArray + v202 + 3) = (v203 >> 46) & 0xFF83FFFF | ((v194 & 0x1F) << 18);
        v206 = *(intArray + 2);
        if (v7 + 62 < 0 || v205 >= v206)
        {
          IOSArray_throwOutOfBoundsWithMsg(v206, (v7 + 62));
        }

        v207 = v7 + 63;
        *(intArray + v205 + 3) = (v203 >> 23) & 0x7FFFFF;
        v208 = *(intArray + 2);
        if (v7 + 63 < 0 || v207 >= v208)
        {
          IOSArray_throwOutOfBoundsWithMsg(v208, (v7 + 63));
        }

        int = intCopy + 23;
        v7 = (v7 + 64);
        *(intArray + v207 + 3) = v203 & 0x7FFFFF;
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
        *(intArray + v7 + 3) = (*(array + intCopy + 12) << 15) | (v13 << 7) | (v14 >> 1);
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
        *(intArray + v22 + 3) = ((v14 & 1) << 22) | (v19 << 14) | (v21 << 6) | (v23 >> 2);
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
        *(intArray + v31 + 3) = ((v23 & 3) << 21) | (v28 << 13) | (32 * v30) | (v32 >> 3);
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

        v38 = intCopy + 11;
        v39 = *(array + v36 + 12);
        if (intCopy + 11 < 0 || v38 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (intCopy + 11));
        }

        v40 = v7 + 3;
        v41 = *(array + v38 + 12);
        v42 = *(intArray + 2);
        if (v7 + 3 < 0 || v40 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 3));
        }

        v43 = intCopy + 12;
        *(intArray + v40 + 3) = ((v32 & 7) << 20) | (v37 << 12) | (16 * v39) | (v41 >> 4);
        v44 = *(array + 2);
        if (intCopy + 12 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (intCopy + 12));
        }

        v45 = intCopy + 13;
        v46 = *(array + v43 + 12);
        if (intCopy + 13 < 0 || v45 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (intCopy + 13));
        }

        v47 = intCopy + 14;
        v48 = *(array + v45 + 12);
        if (intCopy + 14 < 0 || v47 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (intCopy + 14));
        }

        v49 = v7 + 4;
        v50 = *(array + v47 + 12);
        v51 = *(intArray + 2);
        if (v7 + 4 < 0 || v49 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 4));
        }

        v52 = intCopy + 15;
        *(intArray + v49 + 3) = ((v41 & 0xF) << 19) | (v46 << 11) | (8 * v48) | (v50 >> 5);
        v53 = *(array + 2);
        if (intCopy + 15 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (intCopy + 15));
        }

        v54 = intCopy + 16;
        v55 = *(array + v52 + 12);
        if (intCopy + 16 < 0 || v54 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (intCopy + 16));
        }

        v56 = intCopy + 17;
        v57 = *(array + v54 + 12);
        if (intCopy + 17 < 0 || v56 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (intCopy + 17));
        }

        v58 = v7 + 5;
        v59 = *(array + v56 + 12);
        v60 = *(intArray + 2);
        if (v7 + 5 < 0 || v58 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (v7 + 5));
        }

        v61 = intCopy + 18;
        *(intArray + v58 + 3) = ((v50 & 0x1F) << 18) | (v55 << 10) | (4 * v57) | (v59 >> 6);
        v62 = *(array + 2);
        if (intCopy + 18 < 0 || v61 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (intCopy + 18));
        }

        v63 = intCopy + 19;
        v64 = *(array + v61 + 12);
        if (intCopy + 19 < 0 || v63 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (intCopy + 19));
        }

        v65 = intCopy + 20;
        v66 = *(array + v63 + 12);
        if (intCopy + 20 < 0 || v65 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (intCopy + 20));
        }

        v67 = v7 + 6;
        v68 = *(array + v65 + 12);
        v69 = *(intArray + 2);
        if (v7 + 6 < 0 || v67 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 6));
        }

        v70 = intCopy + 21;
        *(intArray + v67 + 3) = ((v59 & 0x3F) << 17) | (v64 << 9) | (2 * v66) | (v68 >> 7);
        v71 = *(array + 2);
        if (intCopy + 21 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (intCopy + 21));
        }

        v72 = intCopy + 22;
        v73 = *(array + v70 + 12);
        if (intCopy + 22 < 0 || v72 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (intCopy + 22));
        }

        v74 = v7 + 7;
        v75 = *(array + v72 + 12);
        v76 = *(intArray + 2);
        if (v7 + 7 < 0 || v74 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 7));
        }

        *(intArray + v74 + 3) = ((v68 & 0x7F) << 16) | (v73 << 8) | v75;
        int = intCopy + 23;
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
        *(longArray + v7 + 2) = v12 >> 41;
        v15 = *(longArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = (int + 1);
        *(longArray + v14 + 2) = (v12 >> 18) & 0x7FFFFF;
        v17 = *(array + 2);
        if ((v16 & 0x80000000) != 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v16);
        }

        v18 = v7 + 2;
        v19 = *(array + v16 + 2);
        v20 = *(longArray + 2);
        if (v7 + 2 < 0 || v18 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v7 + 2));
        }

        *(&v21 + 1) = v12;
        *&v21 = *(array + v16 + 2);
        v22 = v7 + 3;
        *(longArray + v18 + 2) = (v21 >> 59) & 0x7FFFFF;
        v23 = *(longArray + 2);
        if (v7 + 3 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 3));
        }

        v24 = v7 + 4;
        *(longArray + v22 + 2) = (v19 >> 36) & 0x7FFFFF;
        v25 = *(longArray + 2);
        if (v7 + 4 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 4));
        }

        v26 = intCopy + 2;
        *(longArray + v24 + 2) = (v19 >> 13) & 0x7FFFFF;
        v27 = *(array + 2);
        if (intCopy + 2 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (intCopy + 2));
        }

        v28 = v7 + 5;
        v29 = *(array + v26 + 2);
        v30 = *(longArray + 2);
        if (v7 + 5 < 0 || v28 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 5));
        }

        *(&v31 + 1) = v19;
        *&v31 = *(array + v26 + 2);
        v32 = v7 + 6;
        *(longArray + v28 + 2) = (v31 >> 54) & 0x7FFFFF;
        v33 = *(longArray + 2);
        if (v7 + 6 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 6));
        }

        v34 = v7 + 7;
        *(longArray + v32 + 2) = (v29 >> 31) & 0x7FFFFF;
        v35 = *(longArray + 2);
        if (v7 + 7 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 7));
        }

        v36 = intCopy + 3;
        *(longArray + v34 + 2) = (v29 >> 8) & 0x7FFFFF;
        v37 = *(array + 2);
        if (intCopy + 3 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (intCopy + 3));
        }

        v38 = v7 + 8;
        v39 = *(array + v36 + 2);
        v40 = *(longArray + 2);
        if (v7 + 8 < 0 || v38 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 8));
        }

        *(&v41 + 1) = v29;
        *&v41 = *(array + v36 + 2);
        v42 = v7 + 9;
        *(longArray + v38 + 2) = (v41 >> 49) & 0x7FFFFF;
        v43 = *(longArray + 2);
        if (v7 + 9 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 9));
        }

        v44 = v7 + 10;
        *(longArray + v42 + 2) = (v39 >> 26) & 0x7FFFFF;
        v45 = *(longArray + 2);
        if (v7 + 10 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 10));
        }

        v46 = intCopy + 4;
        *(longArray + v44 + 2) = (v39 >> 3) & 0x7FFFFF;
        v47 = *(array + 2);
        if (intCopy + 4 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (intCopy + 4));
        }

        v48 = v7 + 11;
        v49 = *(array + v46 + 2);
        v50 = *(longArray + 2);
        if (v7 + 11 < 0 || v48 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 11));
        }

        *(&v51 + 1) = v39;
        *&v51 = *(array + v46 + 2);
        v52 = v7 + 12;
        *(longArray + v48 + 2) = (v51 >> 44) & 0x7FFFFF;
        v53 = *(longArray + 2);
        if (v7 + 12 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 12));
        }

        v54 = intCopy + 5;
        *(longArray + v52 + 2) = (v49 >> 21) & 0x7FFFFF;
        v55 = *(array + 2);
        if (intCopy + 5 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (intCopy + 5));
        }

        v56 = v7 + 13;
        v57 = *(array + v54 + 2);
        v58 = *(longArray + 2);
        if (v7 + 13 < 0 || v56 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 13));
        }

        *(&v59 + 1) = v49;
        *&v59 = *(array + v54 + 2);
        v60 = v7 + 14;
        *(longArray + v56 + 2) = (v59 >> 62) & 0x7FFFFF;
        v61 = *(longArray + 2);
        if (v7 + 14 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 14));
        }

        v62 = v7 + 15;
        *(longArray + v60 + 2) = (v57 >> 39) & 0x7FFFFF;
        v63 = *(longArray + 2);
        if (v7 + 15 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 15));
        }

        v64 = intCopy + 6;
        *(longArray + v62 + 2) = (v57 >> 16) & 0x7FFFFF;
        v65 = *(array + 2);
        if (intCopy + 6 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (intCopy + 6));
        }

        v66 = v7 + 16;
        v67 = *(array + v64 + 2);
        v68 = *(longArray + 2);
        if (v7 + 16 < 0 || v66 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 16));
        }

        *(&v69 + 1) = v57;
        *&v69 = *(array + v64 + 2);
        v70 = v7 + 17;
        *(longArray + v66 + 2) = (v69 >> 57) & 0x7FFFFF;
        v71 = *(longArray + 2);
        if (v7 + 17 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 17));
        }

        v72 = v7 + 18;
        *(longArray + v70 + 2) = (v67 >> 34) & 0x7FFFFF;
        v73 = *(longArray + 2);
        if (v7 + 18 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 18));
        }

        v74 = intCopy + 7;
        *(longArray + v72 + 2) = (v67 >> 11) & 0x7FFFFF;
        v75 = *(array + 2);
        if (intCopy + 7 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (intCopy + 7));
        }

        v76 = v7 + 19;
        v77 = *(array + v74 + 2);
        v78 = *(longArray + 2);
        if (v7 + 19 < 0 || v76 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (v7 + 19));
        }

        *(&v79 + 1) = v67;
        *&v79 = *(array + v74 + 2);
        v80 = v7 + 20;
        *(longArray + v76 + 2) = (v79 >> 52) & 0x7FFFFF;
        v81 = *(longArray + 2);
        if (v7 + 20 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 20));
        }

        v82 = v7 + 21;
        *(longArray + v80 + 2) = (v77 >> 29) & 0x7FFFFF;
        v83 = *(longArray + 2);
        if (v7 + 21 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (v7 + 21));
        }

        v84 = intCopy + 8;
        *(longArray + v82 + 2) = (v77 >> 6) & 0x7FFFFF;
        v85 = *(array + 2);
        if (intCopy + 8 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (intCopy + 8));
        }

        v86 = v7 + 22;
        v87 = *(array + v84 + 2);
        v88 = *(longArray + 2);
        if (v7 + 22 < 0 || v86 >= v88)
        {
          IOSArray_throwOutOfBoundsWithMsg(v88, (v7 + 22));
        }

        *(&v89 + 1) = v77;
        *&v89 = *(array + v84 + 2);
        v90 = v7 + 23;
        *(longArray + v86 + 2) = (v89 >> 47) & 0x7FFFFF;
        v91 = *(longArray + 2);
        if (v7 + 23 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 23));
        }

        v92 = v7 + 24;
        *(longArray + v90 + 2) = (v87 >> 24) & 0x7FFFFF;
        v93 = *(longArray + 2);
        if (v7 + 24 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 24));
        }

        v94 = intCopy + 9;
        *(longArray + v92 + 2) = (v87 >> 1) & 0x7FFFFF;
        v95 = *(array + 2);
        if (intCopy + 9 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (intCopy + 9));
        }

        v96 = v7 + 25;
        v97 = *(array + v94 + 2);
        v98 = *(longArray + 2);
        if (v7 + 25 < 0 || v96 >= v98)
        {
          IOSArray_throwOutOfBoundsWithMsg(v98, (v7 + 25));
        }

        *(&v99 + 1) = v87;
        *&v99 = *(array + v94 + 2);
        v100 = v7 + 26;
        *(longArray + v96 + 2) = (v99 >> 42) & 0x7FFFFF;
        v101 = *(longArray + 2);
        if (v7 + 26 < 0 || v100 >= v101)
        {
          IOSArray_throwOutOfBoundsWithMsg(v101, (v7 + 26));
        }

        v102 = intCopy + 10;
        *(longArray + v100 + 2) = (v97 >> 19) & 0x7FFFFF;
        v103 = *(array + 2);
        if (intCopy + 10 < 0 || v102 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (intCopy + 10));
        }

        v104 = v7 + 27;
        v105 = *(array + v102 + 2);
        v106 = *(longArray + 2);
        if (v7 + 27 < 0 || v104 >= v106)
        {
          IOSArray_throwOutOfBoundsWithMsg(v106, (v7 + 27));
        }

        *(&v107 + 1) = v97;
        *&v107 = *(array + v102 + 2);
        v108 = v7 + 28;
        *(longArray + v104 + 2) = (v107 >> 60) & 0x7FFFFF;
        v109 = *(longArray + 2);
        if (v7 + 28 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 28));
        }

        v110 = v7 + 29;
        *(longArray + v108 + 2) = (v105 >> 37) & 0x7FFFFF;
        v111 = *(longArray + 2);
        if (v7 + 29 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 29));
        }

        v112 = intCopy + 11;
        *(longArray + v110 + 2) = (v105 >> 14) & 0x7FFFFF;
        v113 = *(array + 2);
        if (intCopy + 11 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (intCopy + 11));
        }

        v114 = v7 + 30;
        v115 = *(array + v112 + 2);
        v116 = *(longArray + 2);
        if (v7 + 30 < 0 || v114 >= v116)
        {
          IOSArray_throwOutOfBoundsWithMsg(v116, (v7 + 30));
        }

        *(&v117 + 1) = v105;
        *&v117 = *(array + v112 + 2);
        v118 = v7 + 31;
        *(longArray + v114 + 2) = (v117 >> 55) & 0x7FFFFF;
        v119 = *(longArray + 2);
        if (v7 + 31 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (v7 + 31));
        }

        v120 = v7 + 32;
        *(longArray + v118 + 2) = HIDWORD(v115) & 0x7FFFFF;
        v121 = *(longArray + 2);
        if (v7 + 32 < 0 || v120 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (v7 + 32));
        }

        v122 = intCopy + 12;
        *(longArray + v120 + 2) = v115 >> 9;
        v123 = *(array + 2);
        if (intCopy + 12 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (intCopy + 12));
        }

        v124 = v7 + 33;
        v125 = *(array + v122 + 2);
        v126 = *(longArray + 2);
        if (v7 + 33 < 0 || v124 >= v126)
        {
          IOSArray_throwOutOfBoundsWithMsg(v126, (v7 + 33));
        }

        *(&v127 + 1) = v115;
        *&v127 = *(array + v122 + 2);
        v128 = v7 + 34;
        *(longArray + v124 + 2) = (v127 >> 50) & 0x7FFFFF;
        v129 = *(longArray + 2);
        if (v7 + 34 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 34));
        }

        v130 = v7 + 35;
        *(longArray + v128 + 2) = (v125 >> 27) & 0x7FFFFF;
        v131 = *(longArray + 2);
        if (v7 + 35 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 35));
        }

        v132 = intCopy + 13;
        *(longArray + v130 + 2) = (v125 >> 4) & 0x7FFFFF;
        v133 = *(array + 2);
        if (intCopy + 13 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (intCopy + 13));
        }

        v134 = v7 + 36;
        v135 = *(array + v132 + 2);
        v136 = *(longArray + 2);
        if (v7 + 36 < 0 || v134 >= v136)
        {
          IOSArray_throwOutOfBoundsWithMsg(v136, (v7 + 36));
        }

        *(&v137 + 1) = v125;
        *&v137 = *(array + v132 + 2);
        v138 = v7 + 37;
        *(longArray + v134 + 2) = (v137 >> 45) & 0x7FFFFF;
        v139 = *(longArray + 2);
        if (v7 + 37 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 37));
        }

        v140 = intCopy + 14;
        *(longArray + v138 + 2) = (v135 >> 22) & 0x7FFFFF;
        v141 = *(array + 2);
        if (intCopy + 14 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (intCopy + 14));
        }

        v142 = v7 + 38;
        v143 = *(array + v140 + 2);
        v144 = *(longArray + 2);
        if (v7 + 38 < 0 || v142 >= v144)
        {
          IOSArray_throwOutOfBoundsWithMsg(v144, (v7 + 38));
        }

        *(&v145 + 1) = v135;
        *&v145 = *(array + v140 + 2);
        v146 = v7 + 39;
        *(longArray + v142 + 2) = (v145 >> 63) & 0x7FFFFF;
        v147 = *(longArray + 2);
        if (v7 + 39 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (v7 + 39));
        }

        v148 = v7 + 40;
        *(longArray + v146 + 2) = (v143 >> 40) & 0x7FFFFF;
        v149 = *(longArray + 2);
        if (v7 + 40 < 0 || v148 >= v149)
        {
          IOSArray_throwOutOfBoundsWithMsg(v149, (v7 + 40));
        }

        v150 = intCopy + 15;
        *(longArray + v148 + 2) = (v143 >> 17) & 0x7FFFFF;
        v151 = *(array + 2);
        if (intCopy + 15 < 0 || v150 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (intCopy + 15));
        }

        v152 = v7 + 41;
        v153 = *(array + v150 + 2);
        v154 = *(longArray + 2);
        if (v7 + 41 < 0 || v152 >= v154)
        {
          IOSArray_throwOutOfBoundsWithMsg(v154, (v7 + 41));
        }

        *(&v155 + 1) = v143;
        *&v155 = *(array + v150 + 2);
        v156 = v7 + 42;
        *(longArray + v152 + 2) = (v155 >> 58) & 0x7FFFFF;
        v157 = *(longArray + 2);
        if (v7 + 42 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (v7 + 42));
        }

        v158 = v7 + 43;
        *(longArray + v156 + 2) = (v153 >> 35) & 0x7FFFFF;
        v159 = *(longArray + 2);
        if (v7 + 43 < 0 || v158 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (v7 + 43));
        }

        v160 = intCopy + 16;
        *(longArray + v158 + 2) = (v153 >> 12) & 0x7FFFFF;
        v161 = *(array + 2);
        if (intCopy + 16 < 0 || v160 >= v161)
        {
          IOSArray_throwOutOfBoundsWithMsg(v161, (intCopy + 16));
        }

        v162 = v7 + 44;
        v163 = *(array + v160 + 2);
        v164 = *(longArray + 2);
        if (v7 + 44 < 0 || v162 >= v164)
        {
          IOSArray_throwOutOfBoundsWithMsg(v164, (v7 + 44));
        }

        *(&v165 + 1) = v153;
        *&v165 = *(array + v160 + 2);
        v166 = v7 + 45;
        *(longArray + v162 + 2) = (v165 >> 53) & 0x7FFFFF;
        v167 = *(longArray + 2);
        if (v7 + 45 < 0 || v166 >= v167)
        {
          IOSArray_throwOutOfBoundsWithMsg(v167, (v7 + 45));
        }

        v168 = v7 + 46;
        *(longArray + v166 + 2) = (v163 >> 30) & 0x7FFFFF;
        v169 = *(longArray + 2);
        if (v7 + 46 < 0 || v168 >= v169)
        {
          IOSArray_throwOutOfBoundsWithMsg(v169, (v7 + 46));
        }

        v170 = intCopy + 17;
        *(longArray + v168 + 2) = (v163 >> 7) & 0x7FFFFF;
        v171 = *(array + 2);
        if (intCopy + 17 < 0 || v170 >= v171)
        {
          IOSArray_throwOutOfBoundsWithMsg(v171, (intCopy + 17));
        }

        v172 = v7 + 47;
        v173 = *(array + v170 + 2);
        v174 = *(longArray + 2);
        if (v7 + 47 < 0 || v172 >= v174)
        {
          IOSArray_throwOutOfBoundsWithMsg(v174, (v7 + 47));
        }

        *(&v175 + 1) = v163;
        *&v175 = *(array + v170 + 2);
        v176 = v7 + 48;
        *(longArray + v172 + 2) = (v175 >> 48) & 0x7FFFFF;
        v177 = *(longArray + 2);
        if (v7 + 48 < 0 || v176 >= v177)
        {
          IOSArray_throwOutOfBoundsWithMsg(v177, (v7 + 48));
        }

        v178 = v7 + 49;
        *(longArray + v176 + 2) = (v173 >> 25) & 0x7FFFFF;
        v179 = *(longArray + 2);
        if (v7 + 49 < 0 || v178 >= v179)
        {
          IOSArray_throwOutOfBoundsWithMsg(v179, (v7 + 49));
        }

        v180 = intCopy + 18;
        *(longArray + v178 + 2) = (v173 >> 2) & 0x7FFFFF;
        v181 = *(array + 2);
        if (intCopy + 18 < 0 || v180 >= v181)
        {
          IOSArray_throwOutOfBoundsWithMsg(v181, (intCopy + 18));
        }

        v182 = v7 + 50;
        v183 = *(array + v180 + 2);
        v184 = *(longArray + 2);
        if (v7 + 50 < 0 || v182 >= v184)
        {
          IOSArray_throwOutOfBoundsWithMsg(v184, (v7 + 50));
        }

        *(&v185 + 1) = v173;
        *&v185 = *(array + v180 + 2);
        v186 = v7 + 51;
        *(longArray + v182 + 2) = (v185 >> 43) & 0x7FFFFF;
        v187 = *(longArray + 2);
        if (v7 + 51 < 0 || v186 >= v187)
        {
          IOSArray_throwOutOfBoundsWithMsg(v187, (v7 + 51));
        }

        v188 = intCopy + 19;
        *(longArray + v186 + 2) = (v183 >> 20) & 0x7FFFFF;
        v189 = *(array + 2);
        if (intCopy + 19 < 0 || v188 >= v189)
        {
          IOSArray_throwOutOfBoundsWithMsg(v189, (intCopy + 19));
        }

        v190 = v7 + 52;
        v191 = *(array + v188 + 2);
        v192 = *(longArray + 2);
        if (v7 + 52 < 0 || v190 >= v192)
        {
          IOSArray_throwOutOfBoundsWithMsg(v192, (v7 + 52));
        }

        *(&v193 + 1) = v183;
        *&v193 = *(array + v188 + 2);
        v194 = v7 + 53;
        *(longArray + v190 + 2) = (v193 >> 61) & 0x7FFFFF;
        v195 = *(longArray + 2);
        if (v7 + 53 < 0 || v194 >= v195)
        {
          IOSArray_throwOutOfBoundsWithMsg(v195, (v7 + 53));
        }

        v196 = v7 + 54;
        *(longArray + v194 + 2) = (v191 >> 38) & 0x7FFFFF;
        v197 = *(longArray + 2);
        if (v7 + 54 < 0 || v196 >= v197)
        {
          IOSArray_throwOutOfBoundsWithMsg(v197, (v7 + 54));
        }

        v198 = intCopy + 20;
        *(longArray + v196 + 2) = (v191 >> 15) & 0x7FFFFF;
        v199 = *(array + 2);
        if (intCopy + 20 < 0 || v198 >= v199)
        {
          IOSArray_throwOutOfBoundsWithMsg(v199, (intCopy + 20));
        }

        v200 = v7 + 55;
        v201 = *(array + v198 + 2);
        v202 = *(longArray + 2);
        if (v7 + 55 < 0 || v200 >= v202)
        {
          IOSArray_throwOutOfBoundsWithMsg(v202, (v7 + 55));
        }

        *(&v203 + 1) = v191;
        *&v203 = *(array + v198 + 2);
        v204 = v7 + 56;
        *(longArray + v200 + 2) = (v203 >> 56) & 0x7FFFFF;
        v205 = *(longArray + 2);
        if (v7 + 56 < 0 || v204 >= v205)
        {
          IOSArray_throwOutOfBoundsWithMsg(v205, (v7 + 56));
        }

        v206 = v7 + 57;
        *(longArray + v204 + 2) = (v201 >> 33) & 0x7FFFFF;
        v207 = *(longArray + 2);
        if (v7 + 57 < 0 || v206 >= v207)
        {
          IOSArray_throwOutOfBoundsWithMsg(v207, (v7 + 57));
        }

        v208 = intCopy + 21;
        *(longArray + v206 + 2) = (v201 >> 10) & 0x7FFFFF;
        v209 = *(array + 2);
        if (intCopy + 21 < 0 || v208 >= v209)
        {
          IOSArray_throwOutOfBoundsWithMsg(v209, (intCopy + 21));
        }

        v210 = v7 + 58;
        v211 = *(array + v208 + 2);
        v212 = *(longArray + 2);
        if (v7 + 58 < 0 || v210 >= v212)
        {
          IOSArray_throwOutOfBoundsWithMsg(v212, (v7 + 58));
        }

        *(&v213 + 1) = v201;
        *&v213 = *(array + v208 + 2);
        v214 = v7 + 59;
        *(longArray + v210 + 2) = (v213 >> 51) & 0x7FFFFF;
        v215 = *(longArray + 2);
        if (v7 + 59 < 0 || v214 >= v215)
        {
          IOSArray_throwOutOfBoundsWithMsg(v215, (v7 + 59));
        }

        v216 = v7 + 60;
        *(longArray + v214 + 2) = (v211 >> 28) & 0x7FFFFF;
        v217 = *(longArray + 2);
        if (v7 + 60 < 0 || v216 >= v217)
        {
          IOSArray_throwOutOfBoundsWithMsg(v217, (v7 + 60));
        }

        v218 = intCopy + 22;
        *(longArray + v216 + 2) = (v211 >> 5) & 0x7FFFFF;
        v219 = *(array + 2);
        if (intCopy + 22 < 0 || v218 >= v219)
        {
          IOSArray_throwOutOfBoundsWithMsg(v219, (intCopy + 22));
        }

        v220 = v7 + 61;
        v221 = *(array + v218 + 2);
        v222 = *(longArray + 2);
        if (v7 + 61 < 0 || v220 >= v222)
        {
          IOSArray_throwOutOfBoundsWithMsg(v222, (v7 + 61));
        }

        *(&v223 + 1) = v211;
        *&v223 = *(array + v218 + 2);
        v224 = v7 + 62;
        *(longArray + v220 + 2) = (v223 >> 46) & 0x7FFFFF;
        v225 = *(longArray + 2);
        if (v7 + 62 < 0 || v224 >= v225)
        {
          IOSArray_throwOutOfBoundsWithMsg(v225, (v7 + 62));
        }

        v226 = v7 + 63;
        *(longArray + v224 + 2) = (v221 >> 23) & 0x7FFFFF;
        v227 = *(longArray + 2);
        if (v7 + 63 < 0 || v226 >= v227)
        {
          IOSArray_throwOutOfBoundsWithMsg(v227, (v7 + 63));
        }

        int = intCopy + 23;
        v7 = (v7 + 64);
        *(longArray + v226 + 2) = v221 & 0x7FFFFF;
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
        *(longArray + v7 + 2) = (*(array + intCopy + 12) << 15) | (v13 << 7) | (v14 >> 1);
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
        *(longArray + v22 + 2) = ((v14 & 1) << 22) | (v19 << 14) | (v21 << 6) | (v23 >> 2);
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
        *(longArray + v31 + 2) = ((v23 & 3) << 21) | (v28 << 13) | (32 * v30) | (v32 >> 3);
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

        v38 = intCopy + 11;
        v39 = *(array + v36 + 12);
        if (intCopy + 11 < 0 || v38 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (intCopy + 11));
        }

        v40 = v7 + 3;
        v41 = *(array + v38 + 12);
        v42 = *(longArray + 2);
        if (v7 + 3 < 0 || v40 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 3));
        }

        v43 = intCopy + 12;
        *(longArray + v40 + 2) = ((v32 & 7) << 20) | (v37 << 12) | (16 * v39) | (v41 >> 4);
        v44 = *(array + 2);
        if (intCopy + 12 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (intCopy + 12));
        }

        v45 = intCopy + 13;
        v46 = *(array + v43 + 12);
        if (intCopy + 13 < 0 || v45 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (intCopy + 13));
        }

        v47 = intCopy + 14;
        v48 = *(array + v45 + 12);
        if (intCopy + 14 < 0 || v47 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (intCopy + 14));
        }

        v49 = v7 + 4;
        v50 = *(array + v47 + 12);
        v51 = *(longArray + 2);
        if (v7 + 4 < 0 || v49 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 4));
        }

        v52 = intCopy + 15;
        *(longArray + v49 + 2) = ((v41 & 0xF) << 19) | (v46 << 11) | (8 * v48) | (v50 >> 5);
        v53 = *(array + 2);
        if (intCopy + 15 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (intCopy + 15));
        }

        v54 = intCopy + 16;
        v55 = *(array + v52 + 12);
        if (intCopy + 16 < 0 || v54 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (intCopy + 16));
        }

        v56 = intCopy + 17;
        v57 = *(array + v54 + 12);
        if (intCopy + 17 < 0 || v56 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (intCopy + 17));
        }

        v58 = v7 + 5;
        v59 = *(array + v56 + 12);
        v60 = *(longArray + 2);
        if (v7 + 5 < 0 || v58 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (v7 + 5));
        }

        v61 = intCopy + 18;
        *(longArray + v58 + 2) = ((v50 & 0x1F) << 18) | (v55 << 10) | (4 * v57) | (v59 >> 6);
        v62 = *(array + 2);
        if (intCopy + 18 < 0 || v61 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (intCopy + 18));
        }

        v63 = intCopy + 19;
        v64 = *(array + v61 + 12);
        if (intCopy + 19 < 0 || v63 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (intCopy + 19));
        }

        v65 = intCopy + 20;
        v66 = *(array + v63 + 12);
        if (intCopy + 20 < 0 || v65 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (intCopy + 20));
        }

        v67 = v7 + 6;
        v68 = *(array + v65 + 12);
        v69 = *(longArray + 2);
        if (v7 + 6 < 0 || v67 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 6));
        }

        v70 = intCopy + 21;
        *(longArray + v67 + 2) = ((v59 & 0x3F) << 17) | (v64 << 9) | (2 * v66) | (v68 >> 7);
        v71 = *(array + 2);
        if (intCopy + 21 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (intCopy + 21));
        }

        v72 = intCopy + 22;
        v73 = *(array + v70 + 12);
        if (intCopy + 22 < 0 || v72 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (intCopy + 22));
        }

        v74 = v7 + 7;
        v75 = *(array + v72 + 12);
        v76 = *(longArray + 2);
        if (v7 + 7 < 0 || v74 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 7));
        }

        *(longArray + v74 + 2) = ((v68 & 0x7F) << 16) | (v73 << 8) | v75;
        int = intCopy + 23;
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