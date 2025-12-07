@interface OrgApacheLuceneUtilPackedBulkOperationPacked19
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked19

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
        *(intArray + v7 + 3) = v12 >> 45;
        v15 = *(intArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(intArray + v14 + 3) = (v12 >> 26) & 0x7FFFF;
        v17 = *(intArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = (int + 1);
        *(intArray + v16 + 3) = (v12 >> 7) & 0x7FFFF;
        v19 = *(array + 2);
        if ((v18 & 0x80000000) != 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, v18);
        }

        v20 = v7 + 3;
        v21 = *(array + v18 + 2);
        v22 = *(intArray + 2);
        if (v7 + 3 < 0 || v20 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v7 + 3));
        }

        v23 = v7 + 4;
        *(intArray + v20 + 3) = (v21 >> 52) & 0xFFF | ((v12 & 0x7F) << 12);
        v24 = *(intArray + 2);
        if (v7 + 4 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 4));
        }

        v25 = v7 + 5;
        *(intArray + v23 + 3) = (v21 >> 33) & 0x7FFFF;
        v26 = *(intArray + 2);
        if (v7 + 5 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 5));
        }

        v27 = intCopy + 2;
        *(intArray + v25 + 3) = (v21 >> 14) & 0x7FFFF;
        v28 = *(array + 2);
        if (intCopy + 2 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (intCopy + 2));
        }

        v29 = v7 + 6;
        v30 = *(array + v27 + 2);
        v31 = *(intArray + 2);
        if (v7 + 6 < 0 || v29 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 6));
        }

        v32 = v7 + 7;
        *(intArray + v29 + 3) = (v30 >> 59) & 0x1F | (32 * (v21 & 0x3FFF));
        v33 = *(intArray + 2);
        if (v7 + 7 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 7));
        }

        v34 = v7 + 8;
        *(intArray + v32 + 3) = (v30 >> 40) & 0x7FFFF;
        v35 = *(intArray + 2);
        if (v7 + 8 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 8));
        }

        v36 = v7 + 9;
        *(intArray + v34 + 3) = (v30 >> 21) & 0x7FFFF;
        v37 = *(intArray + 2);
        if (v7 + 9 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 9));
        }

        v38 = intCopy + 3;
        *(intArray + v36 + 3) = (v30 >> 2) & 0x7FFFF;
        v39 = *(array + 2);
        if (intCopy + 3 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (intCopy + 3));
        }

        v40 = v7 + 10;
        v41 = *(array + v38 + 2);
        v42 = *(intArray + 2);
        if (v7 + 10 < 0 || v40 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 10));
        }

        v43 = v7 + 11;
        *(intArray + v40 + 3) = (v41 >> 47) & 0xFFF9FFFF | ((v30 & 3) << 17);
        v44 = *(intArray + 2);
        if (v7 + 11 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 11));
        }

        v45 = v7 + 12;
        *(intArray + v43 + 3) = (v41 >> 28) & 0x7FFFF;
        v46 = *(intArray + 2);
        if (v7 + 12 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 12));
        }

        v47 = intCopy + 4;
        *(intArray + v45 + 3) = (v41 >> 9) & 0x7FFFF;
        v48 = *(array + 2);
        if (intCopy + 4 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (intCopy + 4));
        }

        v49 = v7 + 13;
        v50 = *(array + v47 + 2);
        v51 = *(intArray + 2);
        if (v7 + 13 < 0 || v49 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 13));
        }

        v52 = v7 + 14;
        *(intArray + v49 + 3) = (v50 >> 54) & 0x3FF | ((v41 & 0x1FF) << 10);
        v53 = *(intArray + 2);
        if (v7 + 14 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 14));
        }

        v54 = v7 + 15;
        *(intArray + v52 + 3) = (v50 >> 35) & 0x7FFFF;
        v55 = *(intArray + 2);
        if (v7 + 15 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 15));
        }

        v56 = intCopy + 5;
        *(intArray + v54 + 3) = (v50 >> 16) & 0x7FFFF;
        v57 = *(array + 2);
        if (intCopy + 5 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (intCopy + 5));
        }

        v58 = v7 + 16;
        v59 = *(array + v56 + 2);
        v60 = *(intArray + 2);
        if (v7 + 16 < 0 || v58 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (v7 + 16));
        }

        v61 = v7 + 17;
        *(intArray + v58 + 3) = (v59 >> 61) & 7 | (8 * v50);
        v62 = *(intArray + 2);
        if (v7 + 17 < 0 || v61 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (v7 + 17));
        }

        v63 = v7 + 18;
        *(intArray + v61 + 3) = (v59 >> 42) & 0x7FFFF;
        v64 = *(intArray + 2);
        if (v7 + 18 < 0 || v63 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 18));
        }

        v65 = v7 + 19;
        *(intArray + v63 + 3) = (v59 >> 23) & 0x7FFFF;
        v66 = *(intArray + 2);
        if (v7 + 19 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 19));
        }

        v67 = intCopy + 6;
        *(intArray + v65 + 3) = (v59 >> 4) & 0x7FFFF;
        v68 = *(array + 2);
        if (intCopy + 6 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (intCopy + 6));
        }

        v69 = v7 + 20;
        v70 = *(array + v67 + 2);
        v71 = *(intArray + 2);
        if (v7 + 20 < 0 || v69 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 20));
        }

        v72 = v7 + 21;
        *(intArray + v69 + 3) = (v70 >> 49) & 0x7FFF | ((v59 & 0xF) << 15);
        v73 = *(intArray + 2);
        if (v7 + 21 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 21));
        }

        v74 = v7 + 22;
        *(intArray + v72 + 3) = (v70 >> 30) & 0x7FFFF;
        v75 = *(intArray + 2);
        if (v7 + 22 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 22));
        }

        v76 = intCopy + 7;
        *(intArray + v74 + 3) = (v70 >> 11) & 0x7FFFF;
        v77 = *(array + 2);
        if (intCopy + 7 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (intCopy + 7));
        }

        v78 = v7 + 23;
        v79 = *(array + v76 + 2);
        v80 = *(intArray + 2);
        if (v7 + 23 < 0 || v78 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 23));
        }

        v81 = v7 + 24;
        *(intArray + v78 + 3) = HIBYTE(v79) | ((v70 & 0x7FF) << 8);
        v82 = *(intArray + 2);
        if (v7 + 24 < 0 || v81 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 24));
        }

        v83 = v7 + 25;
        *(intArray + v81 + 3) = (v79 >> 37) & 0x7FFFF;
        v84 = *(intArray + 2);
        if (v7 + 25 < 0 || v83 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 25));
        }

        v85 = intCopy + 8;
        *(intArray + v83 + 3) = (v79 >> 18) & 0x7FFFF;
        v86 = *(array + 2);
        if (intCopy + 8 < 0 || v85 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (intCopy + 8));
        }

        v87 = v7 + 26;
        v88 = *(array + v85 + 2);
        v89 = *(intArray + 2);
        if (v7 + 26 < 0 || v87 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 26));
        }

        v90 = v7 + 27;
        *(intArray + v87 + 3) = (v88 >> 63) | (2 * (v79 & 0x3FFFF));
        v91 = *(intArray + 2);
        if (v7 + 27 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 27));
        }

        v92 = v7 + 28;
        *(intArray + v90 + 3) = (v88 >> 44) & 0x7FFFF;
        v93 = *(intArray + 2);
        if (v7 + 28 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 28));
        }

        v94 = v7 + 29;
        *(intArray + v92 + 3) = (v88 >> 25) & 0x7FFFF;
        v95 = *(intArray + 2);
        if (v7 + 29 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (v7 + 29));
        }

        v96 = intCopy + 9;
        *(intArray + v94 + 3) = (v88 >> 6) & 0x7FFFF;
        v97 = *(array + 2);
        if (intCopy + 9 < 0 || v96 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (intCopy + 9));
        }

        v98 = v7 + 30;
        v99 = *(array + v96 + 2);
        v100 = *(intArray + 2);
        if (v7 + 30 < 0 || v98 >= v100)
        {
          IOSArray_throwOutOfBoundsWithMsg(v100, (v7 + 30));
        }

        v101 = v7 + 31;
        *(intArray + v98 + 3) = (v99 >> 51) & 0x1FFF | ((v88 & 0x3F) << 13);
        v102 = *(intArray + 2);
        if (v7 + 31 < 0 || v101 >= v102)
        {
          IOSArray_throwOutOfBoundsWithMsg(v102, (v7 + 31));
        }

        v103 = v7 + 32;
        *(intArray + v101 + 3) = HIDWORD(v99) & 0x7FFFF;
        v104 = *(intArray + 2);
        if (v7 + 32 < 0 || v103 >= v104)
        {
          IOSArray_throwOutOfBoundsWithMsg(v104, (v7 + 32));
        }

        v105 = intCopy + 10;
        *(intArray + v103 + 3) = v99 >> 13;
        v106 = *(array + 2);
        if (intCopy + 10 < 0 || v105 >= v106)
        {
          IOSArray_throwOutOfBoundsWithMsg(v106, (intCopy + 10));
        }

        v107 = v7 + 33;
        v108 = *(array + v105 + 2);
        v109 = *(intArray + 2);
        if (v7 + 33 < 0 || v107 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 33));
        }

        v110 = v7 + 34;
        *(intArray + v107 + 3) = (v108 >> 58) & 0x3F | ((v99 & 0x1FFF) << 6);
        v111 = *(intArray + 2);
        if (v7 + 34 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 34));
        }

        v112 = v7 + 35;
        *(intArray + v110 + 3) = (v108 >> 39) & 0x7FFFF;
        v113 = *(intArray + 2);
        if (v7 + 35 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (v7 + 35));
        }

        v114 = v7 + 36;
        *(intArray + v112 + 3) = (v108 >> 20) & 0x7FFFF;
        v115 = *(intArray + 2);
        if (v7 + 36 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 36));
        }

        v116 = intCopy + 11;
        *(intArray + v114 + 3) = (v108 >> 1) & 0x7FFFF;
        v117 = *(array + 2);
        if (intCopy + 11 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (intCopy + 11));
        }

        v118 = v7 + 37;
        v119 = *(array + v116 + 2);
        v120 = *(intArray + 2);
        if (v7 + 37 < 0 || v118 >= v120)
        {
          IOSArray_throwOutOfBoundsWithMsg(v120, (v7 + 37));
        }

        v121 = v7 + 38;
        *(intArray + v118 + 3) = (v119 >> 46) & 0xFFFBFFFF | ((v108 & 1) << 18);
        v122 = *(intArray + 2);
        if (v7 + 38 < 0 || v121 >= v122)
        {
          IOSArray_throwOutOfBoundsWithMsg(v122, (v7 + 38));
        }

        v123 = v7 + 39;
        *(intArray + v121 + 3) = (v119 >> 27) & 0x7FFFF;
        v124 = *(intArray + 2);
        if (v7 + 39 < 0 || v123 >= v124)
        {
          IOSArray_throwOutOfBoundsWithMsg(v124, (v7 + 39));
        }

        v125 = intCopy + 12;
        *(intArray + v123 + 3) = (v119 >> 8) & 0x7FFFF;
        v126 = *(array + 2);
        if (intCopy + 12 < 0 || v125 >= v126)
        {
          IOSArray_throwOutOfBoundsWithMsg(v126, (intCopy + 12));
        }

        v127 = v7 + 40;
        v128 = *(array + v125 + 2);
        v129 = *(intArray + 2);
        if (v7 + 40 < 0 || v127 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 40));
        }

        v130 = v7 + 41;
        *(intArray + v127 + 3) = (v128 >> 53) & 0x7FF | (v119 << 11);
        v131 = *(intArray + 2);
        if (v7 + 41 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 41));
        }

        v132 = v7 + 42;
        *(intArray + v130 + 3) = (v128 >> 34) & 0x7FFFF;
        v133 = *(intArray + 2);
        if (v7 + 42 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 42));
        }

        v134 = intCopy + 13;
        *(intArray + v132 + 3) = (v128 >> 15) & 0x7FFFF;
        v135 = *(array + 2);
        if (intCopy + 13 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (intCopy + 13));
        }

        v136 = v7 + 43;
        v137 = *(array + v134 + 2);
        v138 = *(intArray + 2);
        if (v7 + 43 < 0 || v136 >= v138)
        {
          IOSArray_throwOutOfBoundsWithMsg(v138, (v7 + 43));
        }

        v139 = v7 + 44;
        *(intArray + v136 + 3) = (v137 >> 60) & 0xF | (16 * (v128 & 0x7FFF));
        v140 = *(intArray + 2);
        if (v7 + 44 < 0 || v139 >= v140)
        {
          IOSArray_throwOutOfBoundsWithMsg(v140, (v7 + 44));
        }

        v141 = v7 + 45;
        *(intArray + v139 + 3) = (v137 >> 41) & 0x7FFFF;
        v142 = *(intArray + 2);
        if (v7 + 45 < 0 || v141 >= v142)
        {
          IOSArray_throwOutOfBoundsWithMsg(v142, (v7 + 45));
        }

        v143 = v7 + 46;
        *(intArray + v141 + 3) = (v137 >> 22) & 0x7FFFF;
        v144 = *(intArray + 2);
        if (v7 + 46 < 0 || v143 >= v144)
        {
          IOSArray_throwOutOfBoundsWithMsg(v144, (v7 + 46));
        }

        v145 = intCopy + 14;
        *(intArray + v143 + 3) = (v137 >> 3) & 0x7FFFF;
        v146 = *(array + 2);
        if (intCopy + 14 < 0 || v145 >= v146)
        {
          IOSArray_throwOutOfBoundsWithMsg(v146, (intCopy + 14));
        }

        v147 = v7 + 47;
        v148 = *(array + v145 + 2);
        v149 = *(intArray + 2);
        if (v7 + 47 < 0 || v147 >= v149)
        {
          IOSArray_throwOutOfBoundsWithMsg(v149, (v7 + 47));
        }

        v150 = v7 + 48;
        *(intArray + v147 + 3) = HIWORD(v148) | ((v137 & 7) << 16);
        v151 = *(intArray + 2);
        if (v7 + 48 < 0 || v150 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (v7 + 48));
        }

        v152 = v7 + 49;
        *(intArray + v150 + 3) = (v148 >> 29) & 0x7FFFF;
        v153 = *(intArray + 2);
        if (v7 + 49 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (v7 + 49));
        }

        v154 = intCopy + 15;
        *(intArray + v152 + 3) = (v148 >> 10) & 0x7FFFF;
        v155 = *(array + 2);
        if (intCopy + 15 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (intCopy + 15));
        }

        v156 = v7 + 50;
        v157 = *(array + v154 + 2);
        v158 = *(intArray + 2);
        if (v7 + 50 < 0 || v156 >= v158)
        {
          IOSArray_throwOutOfBoundsWithMsg(v158, (v7 + 50));
        }

        v159 = v7 + 51;
        *(intArray + v156 + 3) = (v157 >> 55) & 0x1FF | ((v148 & 0x3FF) << 9);
        v160 = *(intArray + 2);
        if (v7 + 51 < 0 || v159 >= v160)
        {
          IOSArray_throwOutOfBoundsWithMsg(v160, (v7 + 51));
        }

        v161 = v7 + 52;
        *(intArray + v159 + 3) = (v157 >> 36) & 0x7FFFF;
        v162 = *(intArray + 2);
        if (v7 + 52 < 0 || v161 >= v162)
        {
          IOSArray_throwOutOfBoundsWithMsg(v162, (v7 + 52));
        }

        v163 = intCopy + 16;
        *(intArray + v161 + 3) = (v157 >> 17) & 0x7FFFF;
        v164 = *(array + 2);
        if (intCopy + 16 < 0 || v163 >= v164)
        {
          IOSArray_throwOutOfBoundsWithMsg(v164, (intCopy + 16));
        }

        v165 = v7 + 53;
        v166 = *(array + v163 + 2);
        v167 = *(intArray + 2);
        if (v7 + 53 < 0 || v165 >= v167)
        {
          IOSArray_throwOutOfBoundsWithMsg(v167, (v7 + 53));
        }

        v168 = v7 + 54;
        *(intArray + v165 + 3) = (v166 >> 62) & 3 | (4 * (v157 & 0x1FFFF));
        v169 = *(intArray + 2);
        if (v7 + 54 < 0 || v168 >= v169)
        {
          IOSArray_throwOutOfBoundsWithMsg(v169, (v7 + 54));
        }

        v170 = v7 + 55;
        *(intArray + v168 + 3) = (v166 >> 43) & 0x7FFFF;
        v171 = *(intArray + 2);
        if (v7 + 55 < 0 || v170 >= v171)
        {
          IOSArray_throwOutOfBoundsWithMsg(v171, (v7 + 55));
        }

        v172 = v7 + 56;
        *(intArray + v170 + 3) = (v166 >> 24) & 0x7FFFF;
        v173 = *(intArray + 2);
        if (v7 + 56 < 0 || v172 >= v173)
        {
          IOSArray_throwOutOfBoundsWithMsg(v173, (v7 + 56));
        }

        v174 = intCopy + 17;
        *(intArray + v172 + 3) = (v166 >> 5) & 0x7FFFF;
        v175 = *(array + 2);
        if (intCopy + 17 < 0 || v174 >= v175)
        {
          IOSArray_throwOutOfBoundsWithMsg(v175, (intCopy + 17));
        }

        v176 = v7 + 57;
        v177 = *(array + v174 + 2);
        v178 = *(intArray + 2);
        if (v7 + 57 < 0 || v176 >= v178)
        {
          IOSArray_throwOutOfBoundsWithMsg(v178, (v7 + 57));
        }

        v179 = v7 + 58;
        *(intArray + v176 + 3) = (v177 >> 50) & 0x3FFF | ((v166 & 0x1F) << 14);
        v180 = *(intArray + 2);
        if (v7 + 58 < 0 || v179 >= v180)
        {
          IOSArray_throwOutOfBoundsWithMsg(v180, (v7 + 58));
        }

        v181 = v7 + 59;
        *(intArray + v179 + 3) = (v177 >> 31) & 0x7FFFF;
        v182 = *(intArray + 2);
        if (v7 + 59 < 0 || v181 >= v182)
        {
          IOSArray_throwOutOfBoundsWithMsg(v182, (v7 + 59));
        }

        v183 = intCopy + 18;
        *(intArray + v181 + 3) = (v177 >> 12) & 0x7FFFF;
        v184 = *(array + 2);
        if (intCopy + 18 < 0 || v183 >= v184)
        {
          IOSArray_throwOutOfBoundsWithMsg(v184, (intCopy + 18));
        }

        v185 = v7 + 60;
        v186 = *(array + v183 + 2);
        v187 = *(intArray + 2);
        if (v7 + 60 < 0 || v185 >= v187)
        {
          IOSArray_throwOutOfBoundsWithMsg(v187, (v7 + 60));
        }

        v188 = v7 + 61;
        *(intArray + v185 + 3) = (v186 >> 57) & 0x7F | ((v177 & 0xFFF) << 7);
        v189 = *(intArray + 2);
        if (v7 + 61 < 0 || v188 >= v189)
        {
          IOSArray_throwOutOfBoundsWithMsg(v189, (v7 + 61));
        }

        v190 = v7 + 62;
        *(intArray + v188 + 3) = (v186 >> 38) & 0x7FFFF;
        v191 = *(intArray + 2);
        if (v7 + 62 < 0 || v190 >= v191)
        {
          IOSArray_throwOutOfBoundsWithMsg(v191, (v7 + 62));
        }

        v192 = v7 + 63;
        *(intArray + v190 + 3) = (v186 >> 19) & 0x7FFFF;
        v193 = *(intArray + 2);
        if (v7 + 63 < 0 || v192 >= v193)
        {
          IOSArray_throwOutOfBoundsWithMsg(v193, (v7 + 63));
        }

        int = intCopy + 19;
        v7 = (v7 + 64);
        *(intArray + v192 + 3) = v186 & 0x7FFFF;
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
        *(intArray + v7 + 3) = (*(array + intCopy + 12) << 11) | (8 * v13) | (v14 >> 5);
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
        *(intArray + v20 + 3) = ((v14 & 0x1F) << 14) | (v19 << 6) | (v21 >> 2);
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

        v27 = intCopy + 7;
        v28 = *(array + v25 + 12);
        if (intCopy + 7 < 0 || v27 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (intCopy + 7));
        }

        v29 = v7 + 2;
        v30 = *(array + v27 + 12);
        v31 = *(intArray + 2);
        if (v7 + 2 < 0 || v29 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 2));
        }

        v32 = intCopy + 8;
        *(intArray + v29 + 3) = ((v21 & 3) << 17) | (v26 << 9) | (2 * v28) | (v30 >> 7);
        v33 = *(array + 2);
        if (intCopy + 8 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (intCopy + 8));
        }

        v34 = intCopy + 9;
        v35 = *(array + v32 + 12);
        if (intCopy + 9 < 0 || v34 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (intCopy + 9));
        }

        v36 = v7 + 3;
        v37 = *(array + v34 + 12);
        v38 = *(intArray + 2);
        if (v7 + 3 < 0 || v36 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v7 + 3));
        }

        v39 = intCopy + 10;
        *(intArray + v36 + 3) = ((v30 & 0x7F) << 12) | (16 * v35) | (v37 >> 4);
        v40 = *(array + 2);
        if (intCopy + 10 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (intCopy + 10));
        }

        v41 = intCopy + 11;
        v42 = *(array + v39 + 12);
        if (intCopy + 11 < 0 || v41 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (intCopy + 11));
        }

        v43 = v7 + 4;
        v44 = *(array + v41 + 12);
        v45 = *(intArray + 2);
        if (v7 + 4 < 0 || v43 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 4));
        }

        v46 = intCopy + 12;
        *(intArray + v43 + 3) = ((v37 & 0xF) << 15) | (v42 << 7) | (v44 >> 1);
        v47 = *(array + 2);
        if (intCopy + 12 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (intCopy + 12));
        }

        v48 = intCopy + 13;
        v49 = *(array + v46 + 12);
        if (intCopy + 13 < 0 || v48 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (intCopy + 13));
        }

        v50 = intCopy + 14;
        v51 = *(array + v48 + 12);
        if (intCopy + 14 < 0 || v50 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (intCopy + 14));
        }

        v52 = v7 + 5;
        v53 = *(array + v50 + 12);
        v54 = *(intArray + 2);
        if (v7 + 5 < 0 || v52 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 5));
        }

        v55 = intCopy + 15;
        *(intArray + v52 + 3) = ((v44 & 1) << 18) | (v49 << 10) | (4 * v51) | (v53 >> 6);
        v56 = *(array + 2);
        if (intCopy + 15 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (intCopy + 15));
        }

        v57 = intCopy + 16;
        v58 = *(array + v55 + 12);
        if (intCopy + 16 < 0 || v57 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (intCopy + 16));
        }

        v59 = v7 + 6;
        v60 = *(array + v57 + 12);
        v61 = *(intArray + 2);
        if (v7 + 6 < 0 || v59 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 6));
        }

        v62 = intCopy + 17;
        *(intArray + v59 + 3) = ((v53 & 0x3F) << 13) | (32 * v58) | (v60 >> 3);
        v63 = *(array + 2);
        if (intCopy + 17 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (intCopy + 17));
        }

        v64 = intCopy + 18;
        v65 = *(array + v62 + 12);
        if (intCopy + 18 < 0 || v64 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (intCopy + 18));
        }

        v66 = v7 + 7;
        v67 = *(array + v64 + 12);
        v68 = *(intArray + 2);
        if (v7 + 7 < 0 || v66 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 7));
        }

        *(intArray + v66 + 3) = ((v60 & 7) << 16) | (v65 << 8) | v67;
        int = intCopy + 19;
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
        *(longArray + v7 + 2) = v12 >> 45;
        v15 = *(longArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(longArray + v14 + 2) = (v12 >> 26) & 0x7FFFF;
        v17 = *(longArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = (int + 1);
        *(longArray + v16 + 2) = (v12 >> 7) & 0x7FFFF;
        v19 = *(array + 2);
        if ((v18 & 0x80000000) != 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, v18);
        }

        v20 = v7 + 3;
        v21 = *(array + v18 + 2);
        v22 = *(longArray + 2);
        if (v7 + 3 < 0 || v20 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v7 + 3));
        }

        *(&v23 + 1) = v12;
        *&v23 = *(array + v18 + 2);
        v24 = v7 + 4;
        *(longArray + v20 + 2) = (v23 >> 52) & 0x7FFFF;
        v25 = *(longArray + 2);
        if (v7 + 4 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 4));
        }

        v26 = v7 + 5;
        *(longArray + v24 + 2) = (v21 >> 33) & 0x7FFFF;
        v27 = *(longArray + 2);
        if (v7 + 5 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 5));
        }

        v28 = intCopy + 2;
        *(longArray + v26 + 2) = (v21 >> 14) & 0x7FFFF;
        v29 = *(array + 2);
        if (intCopy + 2 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (intCopy + 2));
        }

        v30 = v7 + 6;
        v31 = *(array + v28 + 2);
        v32 = *(longArray + 2);
        if (v7 + 6 < 0 || v30 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 6));
        }

        *(&v33 + 1) = v21;
        *&v33 = *(array + v28 + 2);
        v34 = v7 + 7;
        *(longArray + v30 + 2) = (v33 >> 59) & 0x7FFFF;
        v35 = *(longArray + 2);
        if (v7 + 7 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 7));
        }

        v36 = v7 + 8;
        *(longArray + v34 + 2) = (v31 >> 40) & 0x7FFFF;
        v37 = *(longArray + 2);
        if (v7 + 8 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 8));
        }

        v38 = v7 + 9;
        *(longArray + v36 + 2) = (v31 >> 21) & 0x7FFFF;
        v39 = *(longArray + 2);
        if (v7 + 9 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 9));
        }

        v40 = intCopy + 3;
        *(longArray + v38 + 2) = (v31 >> 2) & 0x7FFFF;
        v41 = *(array + 2);
        if (intCopy + 3 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (intCopy + 3));
        }

        v42 = v7 + 10;
        v43 = *(array + v40 + 2);
        v44 = *(longArray + 2);
        if (v7 + 10 < 0 || v42 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 10));
        }

        *(&v45 + 1) = v31;
        *&v45 = *(array + v40 + 2);
        v46 = v7 + 11;
        *(longArray + v42 + 2) = (v45 >> 47) & 0x7FFFF;
        v47 = *(longArray + 2);
        if (v7 + 11 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 11));
        }

        v48 = v7 + 12;
        *(longArray + v46 + 2) = (v43 >> 28) & 0x7FFFF;
        v49 = *(longArray + 2);
        if (v7 + 12 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 12));
        }

        v50 = intCopy + 4;
        *(longArray + v48 + 2) = (v43 >> 9) & 0x7FFFF;
        v51 = *(array + 2);
        if (intCopy + 4 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (intCopy + 4));
        }

        v52 = v7 + 13;
        v53 = *(array + v50 + 2);
        v54 = *(longArray + 2);
        if (v7 + 13 < 0 || v52 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 13));
        }

        *(&v55 + 1) = v43;
        *&v55 = *(array + v50 + 2);
        v56 = v7 + 14;
        *(longArray + v52 + 2) = (v55 >> 54) & 0x7FFFF;
        v57 = *(longArray + 2);
        if (v7 + 14 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 14));
        }

        v58 = v7 + 15;
        *(longArray + v56 + 2) = (v53 >> 35) & 0x7FFFF;
        v59 = *(longArray + 2);
        if (v7 + 15 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 15));
        }

        v60 = intCopy + 5;
        *(longArray + v58 + 2) = (v53 >> 16) & 0x7FFFF;
        v61 = *(array + 2);
        if (intCopy + 5 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (intCopy + 5));
        }

        v62 = v7 + 16;
        v63 = *(array + v60 + 2);
        v64 = *(longArray + 2);
        if (v7 + 16 < 0 || v62 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 16));
        }

        *(&v65 + 1) = v53;
        *&v65 = *(array + v60 + 2);
        v66 = v7 + 17;
        *(longArray + v62 + 2) = (v65 >> 61) & 0x7FFFF;
        v67 = *(longArray + 2);
        if (v7 + 17 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (v7 + 17));
        }

        v68 = v7 + 18;
        *(longArray + v66 + 2) = (v63 >> 42) & 0x7FFFF;
        v69 = *(longArray + 2);
        if (v7 + 18 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 18));
        }

        v70 = v7 + 19;
        *(longArray + v68 + 2) = (v63 >> 23) & 0x7FFFF;
        v71 = *(longArray + 2);
        if (v7 + 19 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 19));
        }

        v72 = intCopy + 6;
        *(longArray + v70 + 2) = (v63 >> 4) & 0x7FFFF;
        v73 = *(array + 2);
        if (intCopy + 6 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (intCopy + 6));
        }

        v74 = v7 + 20;
        v75 = *(array + v72 + 2);
        v76 = *(longArray + 2);
        if (v7 + 20 < 0 || v74 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 20));
        }

        *(&v77 + 1) = v63;
        *&v77 = *(array + v72 + 2);
        v78 = v7 + 21;
        *(longArray + v74 + 2) = (v77 >> 49) & 0x7FFFF;
        v79 = *(longArray + 2);
        if (v7 + 21 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (v7 + 21));
        }

        v80 = v7 + 22;
        *(longArray + v78 + 2) = (v75 >> 30) & 0x7FFFF;
        v81 = *(longArray + 2);
        if (v7 + 22 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 22));
        }

        v82 = intCopy + 7;
        *(longArray + v80 + 2) = (v75 >> 11) & 0x7FFFF;
        v83 = *(array + 2);
        if (intCopy + 7 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (intCopy + 7));
        }

        v84 = v7 + 23;
        v85 = *(array + v82 + 2);
        v86 = *(longArray + 2);
        if (v7 + 23 < 0 || v84 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (v7 + 23));
        }

        *(&v87 + 1) = v75;
        *&v87 = *(array + v82 + 2);
        v88 = v7 + 24;
        *(longArray + v84 + 2) = (v87 >> 56) & 0x7FFFF;
        v89 = *(longArray + 2);
        if (v7 + 24 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 24));
        }

        v90 = v7 + 25;
        *(longArray + v88 + 2) = (v85 >> 37) & 0x7FFFF;
        v91 = *(longArray + 2);
        if (v7 + 25 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 25));
        }

        v92 = intCopy + 8;
        *(longArray + v90 + 2) = (v85 >> 18) & 0x7FFFF;
        v93 = *(array + 2);
        if (intCopy + 8 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (intCopy + 8));
        }

        v94 = v7 + 26;
        v95 = *(array + v92 + 2);
        v96 = *(longArray + 2);
        if (v7 + 26 < 0 || v94 >= v96)
        {
          IOSArray_throwOutOfBoundsWithMsg(v96, (v7 + 26));
        }

        *(&v97 + 1) = v85;
        *&v97 = *(array + v92 + 2);
        v98 = v7 + 27;
        *(longArray + v94 + 2) = (v97 >> 63) & 0x7FFFF;
        v99 = *(longArray + 2);
        if (v7 + 27 < 0 || v98 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (v7 + 27));
        }

        v100 = v7 + 28;
        *(longArray + v98 + 2) = (v95 >> 44) & 0x7FFFF;
        v101 = *(longArray + 2);
        if (v7 + 28 < 0 || v100 >= v101)
        {
          IOSArray_throwOutOfBoundsWithMsg(v101, (v7 + 28));
        }

        v102 = v7 + 29;
        *(longArray + v100 + 2) = (v95 >> 25) & 0x7FFFF;
        v103 = *(longArray + 2);
        if (v7 + 29 < 0 || v102 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (v7 + 29));
        }

        v104 = intCopy + 9;
        *(longArray + v102 + 2) = (v95 >> 6) & 0x7FFFF;
        v105 = *(array + 2);
        if (intCopy + 9 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (intCopy + 9));
        }

        v106 = v7 + 30;
        v107 = *(array + v104 + 2);
        v108 = *(longArray + 2);
        if (v7 + 30 < 0 || v106 >= v108)
        {
          IOSArray_throwOutOfBoundsWithMsg(v108, (v7 + 30));
        }

        *(&v109 + 1) = v95;
        *&v109 = *(array + v104 + 2);
        v110 = v7 + 31;
        *(longArray + v106 + 2) = (v109 >> 51) & 0x7FFFF;
        v111 = *(longArray + 2);
        if (v7 + 31 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 31));
        }

        v112 = v7 + 32;
        *(longArray + v110 + 2) = HIDWORD(v107) & 0x7FFFF;
        v113 = *(longArray + 2);
        if (v7 + 32 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (v7 + 32));
        }

        v114 = intCopy + 10;
        *(longArray + v112 + 2) = v107 >> 13;
        v115 = *(array + 2);
        if (intCopy + 10 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (intCopy + 10));
        }

        v116 = v7 + 33;
        v117 = *(array + v114 + 2);
        v118 = *(longArray + 2);
        if (v7 + 33 < 0 || v116 >= v118)
        {
          IOSArray_throwOutOfBoundsWithMsg(v118, (v7 + 33));
        }

        *(&v119 + 1) = v107;
        *&v119 = *(array + v114 + 2);
        v120 = v7 + 34;
        *(longArray + v116 + 2) = (v119 >> 58) & 0x7FFFF;
        v121 = *(longArray + 2);
        if (v7 + 34 < 0 || v120 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (v7 + 34));
        }

        v122 = v7 + 35;
        *(longArray + v120 + 2) = (v117 >> 39) & 0x7FFFF;
        v123 = *(longArray + 2);
        if (v7 + 35 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (v7 + 35));
        }

        v124 = v7 + 36;
        *(longArray + v122 + 2) = (v117 >> 20) & 0x7FFFF;
        v125 = *(longArray + 2);
        if (v7 + 36 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (v7 + 36));
        }

        v126 = intCopy + 11;
        *(longArray + v124 + 2) = (v117 >> 1) & 0x7FFFF;
        v127 = *(array + 2);
        if (intCopy + 11 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (intCopy + 11));
        }

        v128 = v7 + 37;
        v129 = *(array + v126 + 2);
        v130 = *(longArray + 2);
        if (v7 + 37 < 0 || v128 >= v130)
        {
          IOSArray_throwOutOfBoundsWithMsg(v130, (v7 + 37));
        }

        *(&v131 + 1) = v117;
        *&v131 = *(array + v126 + 2);
        v132 = v7 + 38;
        *(longArray + v128 + 2) = (v131 >> 46) & 0x7FFFF;
        v133 = *(longArray + 2);
        if (v7 + 38 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 38));
        }

        v134 = v7 + 39;
        *(longArray + v132 + 2) = (v129 >> 27) & 0x7FFFF;
        v135 = *(longArray + 2);
        if (v7 + 39 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (v7 + 39));
        }

        v136 = intCopy + 12;
        *(longArray + v134 + 2) = (v129 >> 8) & 0x7FFFF;
        v137 = *(array + 2);
        if (intCopy + 12 < 0 || v136 >= v137)
        {
          IOSArray_throwOutOfBoundsWithMsg(v137, (intCopy + 12));
        }

        v138 = v7 + 40;
        v139 = *(array + v136 + 2);
        v140 = *(longArray + 2);
        if (v7 + 40 < 0 || v138 >= v140)
        {
          IOSArray_throwOutOfBoundsWithMsg(v140, (v7 + 40));
        }

        *(&v141 + 1) = v129;
        *&v141 = *(array + v136 + 2);
        v142 = v7 + 41;
        *(longArray + v138 + 2) = (v141 >> 53) & 0x7FFFF;
        v143 = *(longArray + 2);
        if (v7 + 41 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 41));
        }

        v144 = v7 + 42;
        *(longArray + v142 + 2) = (v139 >> 34) & 0x7FFFF;
        v145 = *(longArray + 2);
        if (v7 + 42 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 42));
        }

        v146 = intCopy + 13;
        *(longArray + v144 + 2) = (v139 >> 15) & 0x7FFFF;
        v147 = *(array + 2);
        if (intCopy + 13 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (intCopy + 13));
        }

        v148 = v7 + 43;
        v149 = *(array + v146 + 2);
        v150 = *(longArray + 2);
        if (v7 + 43 < 0 || v148 >= v150)
        {
          IOSArray_throwOutOfBoundsWithMsg(v150, (v7 + 43));
        }

        *(&v151 + 1) = v139;
        *&v151 = *(array + v146 + 2);
        v152 = v7 + 44;
        *(longArray + v148 + 2) = (v151 >> 60) & 0x7FFFF;
        v153 = *(longArray + 2);
        if (v7 + 44 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (v7 + 44));
        }

        v154 = v7 + 45;
        *(longArray + v152 + 2) = (v149 >> 41) & 0x7FFFF;
        v155 = *(longArray + 2);
        if (v7 + 45 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 45));
        }

        v156 = v7 + 46;
        *(longArray + v154 + 2) = (v149 >> 22) & 0x7FFFF;
        v157 = *(longArray + 2);
        if (v7 + 46 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (v7 + 46));
        }

        v158 = intCopy + 14;
        *(longArray + v156 + 2) = (v149 >> 3) & 0x7FFFF;
        v159 = *(array + 2);
        if (intCopy + 14 < 0 || v158 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (intCopy + 14));
        }

        v160 = v7 + 47;
        v161 = *(array + v158 + 2);
        v162 = *(longArray + 2);
        if (v7 + 47 < 0 || v160 >= v162)
        {
          IOSArray_throwOutOfBoundsWithMsg(v162, (v7 + 47));
        }

        *(&v163 + 1) = v149;
        *&v163 = *(array + v158 + 2);
        v164 = v7 + 48;
        *(longArray + v160 + 2) = (v163 >> 48) & 0x7FFFF;
        v165 = *(longArray + 2);
        if (v7 + 48 < 0 || v164 >= v165)
        {
          IOSArray_throwOutOfBoundsWithMsg(v165, (v7 + 48));
        }

        v166 = v7 + 49;
        *(longArray + v164 + 2) = (v161 >> 29) & 0x7FFFF;
        v167 = *(longArray + 2);
        if (v7 + 49 < 0 || v166 >= v167)
        {
          IOSArray_throwOutOfBoundsWithMsg(v167, (v7 + 49));
        }

        v168 = intCopy + 15;
        *(longArray + v166 + 2) = (v161 >> 10) & 0x7FFFF;
        v169 = *(array + 2);
        if (intCopy + 15 < 0 || v168 >= v169)
        {
          IOSArray_throwOutOfBoundsWithMsg(v169, (intCopy + 15));
        }

        v170 = v7 + 50;
        v171 = *(array + v168 + 2);
        v172 = *(longArray + 2);
        if (v7 + 50 < 0 || v170 >= v172)
        {
          IOSArray_throwOutOfBoundsWithMsg(v172, (v7 + 50));
        }

        *(&v173 + 1) = v161;
        *&v173 = *(array + v168 + 2);
        v174 = v7 + 51;
        *(longArray + v170 + 2) = (v173 >> 55) & 0x7FFFF;
        v175 = *(longArray + 2);
        if (v7 + 51 < 0 || v174 >= v175)
        {
          IOSArray_throwOutOfBoundsWithMsg(v175, (v7 + 51));
        }

        v176 = v7 + 52;
        *(longArray + v174 + 2) = (v171 >> 36) & 0x7FFFF;
        v177 = *(longArray + 2);
        if (v7 + 52 < 0 || v176 >= v177)
        {
          IOSArray_throwOutOfBoundsWithMsg(v177, (v7 + 52));
        }

        v178 = intCopy + 16;
        *(longArray + v176 + 2) = (v171 >> 17) & 0x7FFFF;
        v179 = *(array + 2);
        if (intCopy + 16 < 0 || v178 >= v179)
        {
          IOSArray_throwOutOfBoundsWithMsg(v179, (intCopy + 16));
        }

        v180 = v7 + 53;
        v181 = *(array + v178 + 2);
        v182 = *(longArray + 2);
        if (v7 + 53 < 0 || v180 >= v182)
        {
          IOSArray_throwOutOfBoundsWithMsg(v182, (v7 + 53));
        }

        *(&v183 + 1) = v171;
        *&v183 = *(array + v178 + 2);
        v184 = v7 + 54;
        *(longArray + v180 + 2) = (v183 >> 62) & 0x7FFFF;
        v185 = *(longArray + 2);
        if (v7 + 54 < 0 || v184 >= v185)
        {
          IOSArray_throwOutOfBoundsWithMsg(v185, (v7 + 54));
        }

        v186 = v7 + 55;
        *(longArray + v184 + 2) = (v181 >> 43) & 0x7FFFF;
        v187 = *(longArray + 2);
        if (v7 + 55 < 0 || v186 >= v187)
        {
          IOSArray_throwOutOfBoundsWithMsg(v187, (v7 + 55));
        }

        v188 = v7 + 56;
        *(longArray + v186 + 2) = (v181 >> 24) & 0x7FFFF;
        v189 = *(longArray + 2);
        if (v7 + 56 < 0 || v188 >= v189)
        {
          IOSArray_throwOutOfBoundsWithMsg(v189, (v7 + 56));
        }

        v190 = intCopy + 17;
        *(longArray + v188 + 2) = (v181 >> 5) & 0x7FFFF;
        v191 = *(array + 2);
        if (intCopy + 17 < 0 || v190 >= v191)
        {
          IOSArray_throwOutOfBoundsWithMsg(v191, (intCopy + 17));
        }

        v192 = v7 + 57;
        v193 = *(array + v190 + 2);
        v194 = *(longArray + 2);
        if (v7 + 57 < 0 || v192 >= v194)
        {
          IOSArray_throwOutOfBoundsWithMsg(v194, (v7 + 57));
        }

        *(&v195 + 1) = v181;
        *&v195 = *(array + v190 + 2);
        v196 = v7 + 58;
        *(longArray + v192 + 2) = (v195 >> 50) & 0x7FFFF;
        v197 = *(longArray + 2);
        if (v7 + 58 < 0 || v196 >= v197)
        {
          IOSArray_throwOutOfBoundsWithMsg(v197, (v7 + 58));
        }

        v198 = v7 + 59;
        *(longArray + v196 + 2) = (v193 >> 31) & 0x7FFFF;
        v199 = *(longArray + 2);
        if (v7 + 59 < 0 || v198 >= v199)
        {
          IOSArray_throwOutOfBoundsWithMsg(v199, (v7 + 59));
        }

        v200 = intCopy + 18;
        *(longArray + v198 + 2) = (v193 >> 12) & 0x7FFFF;
        v201 = *(array + 2);
        if (intCopy + 18 < 0 || v200 >= v201)
        {
          IOSArray_throwOutOfBoundsWithMsg(v201, (intCopy + 18));
        }

        v202 = v7 + 60;
        v203 = *(array + v200 + 2);
        v204 = *(longArray + 2);
        if (v7 + 60 < 0 || v202 >= v204)
        {
          IOSArray_throwOutOfBoundsWithMsg(v204, (v7 + 60));
        }

        *(&v205 + 1) = v193;
        *&v205 = *(array + v200 + 2);
        v206 = v7 + 61;
        *(longArray + v202 + 2) = (v205 >> 57) & 0x7FFFF;
        v207 = *(longArray + 2);
        if (v7 + 61 < 0 || v206 >= v207)
        {
          IOSArray_throwOutOfBoundsWithMsg(v207, (v7 + 61));
        }

        v208 = v7 + 62;
        *(longArray + v206 + 2) = (v203 >> 38) & 0x7FFFF;
        v209 = *(longArray + 2);
        if (v7 + 62 < 0 || v208 >= v209)
        {
          IOSArray_throwOutOfBoundsWithMsg(v209, (v7 + 62));
        }

        v210 = v7 + 63;
        *(longArray + v208 + 2) = (v203 >> 19) & 0x7FFFF;
        v211 = *(longArray + 2);
        if (v7 + 63 < 0 || v210 >= v211)
        {
          IOSArray_throwOutOfBoundsWithMsg(v211, (v7 + 63));
        }

        int = intCopy + 19;
        v7 = (v7 + 64);
        *(longArray + v210 + 2) = v203 & 0x7FFFF;
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
        *(longArray + v7 + 2) = (*(array + intCopy + 12) << 11) | (8 * v13) | (v14 >> 5);
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
        *(longArray + v20 + 2) = ((v14 & 0x1F) << 14) | (v19 << 6) | (v21 >> 2);
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

        v27 = intCopy + 7;
        v28 = *(array + v25 + 12);
        if (intCopy + 7 < 0 || v27 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (intCopy + 7));
        }

        v29 = v7 + 2;
        v30 = *(array + v27 + 12);
        v31 = *(longArray + 2);
        if (v7 + 2 < 0 || v29 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 2));
        }

        v32 = intCopy + 8;
        *(longArray + v29 + 2) = ((v21 & 3) << 17) | (v26 << 9) | (2 * v28) | (v30 >> 7);
        v33 = *(array + 2);
        if (intCopy + 8 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (intCopy + 8));
        }

        v34 = intCopy + 9;
        v35 = *(array + v32 + 12);
        if (intCopy + 9 < 0 || v34 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (intCopy + 9));
        }

        v36 = v7 + 3;
        v37 = *(array + v34 + 12);
        v38 = *(longArray + 2);
        if (v7 + 3 < 0 || v36 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v7 + 3));
        }

        v39 = intCopy + 10;
        *(longArray + v36 + 2) = ((v30 & 0x7F) << 12) | (16 * v35) | (v37 >> 4);
        v40 = *(array + 2);
        if (intCopy + 10 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (intCopy + 10));
        }

        v41 = intCopy + 11;
        v42 = *(array + v39 + 12);
        if (intCopy + 11 < 0 || v41 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (intCopy + 11));
        }

        v43 = v7 + 4;
        v44 = *(array + v41 + 12);
        v45 = *(longArray + 2);
        if (v7 + 4 < 0 || v43 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 4));
        }

        v46 = intCopy + 12;
        *(longArray + v43 + 2) = ((v37 & 0xF) << 15) | (v42 << 7) | (v44 >> 1);
        v47 = *(array + 2);
        if (intCopy + 12 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (intCopy + 12));
        }

        v48 = intCopy + 13;
        v49 = *(array + v46 + 12);
        if (intCopy + 13 < 0 || v48 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (intCopy + 13));
        }

        v50 = intCopy + 14;
        v51 = *(array + v48 + 12);
        if (intCopy + 14 < 0 || v50 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (intCopy + 14));
        }

        v52 = v7 + 5;
        v53 = *(array + v50 + 12);
        v54 = *(longArray + 2);
        if (v7 + 5 < 0 || v52 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 5));
        }

        v55 = intCopy + 15;
        *(longArray + v52 + 2) = ((v44 & 1) << 18) | (v49 << 10) | (4 * v51) | (v53 >> 6);
        v56 = *(array + 2);
        if (intCopy + 15 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (intCopy + 15));
        }

        v57 = intCopy + 16;
        v58 = *(array + v55 + 12);
        if (intCopy + 16 < 0 || v57 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (intCopy + 16));
        }

        v59 = v7 + 6;
        v60 = *(array + v57 + 12);
        v61 = *(longArray + 2);
        if (v7 + 6 < 0 || v59 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 6));
        }

        v62 = intCopy + 17;
        *(longArray + v59 + 2) = ((v53 & 0x3F) << 13) | (32 * v58) | (v60 >> 3);
        v63 = *(array + 2);
        if (intCopy + 17 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (intCopy + 17));
        }

        v64 = intCopy + 18;
        v65 = *(array + v62 + 12);
        if (intCopy + 18 < 0 || v64 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (intCopy + 18));
        }

        v66 = v7 + 7;
        v67 = *(array + v64 + 12);
        v68 = *(longArray + 2);
        if (v7 + 7 < 0 || v66 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 7));
        }

        *(longArray + v66 + 2) = ((v60 & 7) << 16) | (v65 << 8) | v67;
        int = intCopy + 19;
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