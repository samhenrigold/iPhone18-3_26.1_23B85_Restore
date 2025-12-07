@interface OrgApacheLuceneUtilPackedBulkOperationPacked11
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked11

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
        *(intArray + v7 + 3) = v12 >> 53;
        v15 = *(intArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(intArray + v14 + 3) = (v12 >> 42) & 0x7FF;
        v17 = *(intArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(intArray + v16 + 3) = (v12 >> 31) & 0x7FF;
        v19 = *(intArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = v7 + 4;
        *(intArray + v18 + 3) = (v12 >> 20) & 0x7FF;
        v21 = *(intArray + 2);
        if (v7 + 4 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 4));
        }

        v22 = (int + 1);
        *(intArray + v20 + 3) = (v12 >> 9) & 0x7FF;
        v23 = *(array + 2);
        if ((v22 & 0x80000000) != 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v22);
        }

        v24 = v7 + 5;
        v25 = *(array + v22 + 2);
        v26 = *(intArray + 2);
        if (v7 + 5 < 0 || v24 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 5));
        }

        v27 = v7 + 6;
        *(intArray + v24 + 3) = (v25 >> 62) & 3 | (4 * (v12 & 0x1FF));
        v28 = *(intArray + 2);
        if (v7 + 6 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v7 + 6));
        }

        v29 = v7 + 7;
        *(intArray + v27 + 3) = (v25 >> 51) & 0x7FF;
        v30 = *(intArray + 2);
        if (v7 + 7 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 7));
        }

        v31 = v7 + 8;
        *(intArray + v29 + 3) = (v25 >> 40) & 0x7FF;
        v32 = *(intArray + 2);
        if (v7 + 8 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 8));
        }

        v33 = v7 + 9;
        *(intArray + v31 + 3) = (v25 >> 29) & 0x7FF;
        v34 = *(intArray + 2);
        if (v7 + 9 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 9));
        }

        v35 = v7 + 10;
        *(intArray + v33 + 3) = (v25 >> 18) & 0x7FF;
        v36 = *(intArray + 2);
        if (v7 + 10 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v7 + 10));
        }

        v37 = intCopy + 2;
        *(intArray + v35 + 3) = (v25 >> 7) & 0x7FF;
        v38 = *(array + 2);
        if (intCopy + 2 < 0 || v37 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (intCopy + 2));
        }

        v39 = v7 + 11;
        v40 = *(array + v37 + 2);
        v41 = *(intArray + 2);
        if (v7 + 11 < 0 || v39 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 11));
        }

        v42 = v7 + 12;
        *(intArray + v39 + 3) = (v40 >> 60) & 0xF | (16 * (v25 & 0x7F));
        v43 = *(intArray + 2);
        if (v7 + 12 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 12));
        }

        v44 = v7 + 13;
        *(intArray + v42 + 3) = (v40 >> 49) & 0x7FF;
        v45 = *(intArray + 2);
        if (v7 + 13 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 13));
        }

        v46 = v7 + 14;
        *(intArray + v44 + 3) = (v40 >> 38) & 0x7FF;
        v47 = *(intArray + 2);
        if (v7 + 14 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 14));
        }

        v48 = v7 + 15;
        *(intArray + v46 + 3) = (v40 >> 27) & 0x7FF;
        v49 = *(intArray + 2);
        if (v7 + 15 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 15));
        }

        v50 = v7 + 16;
        *(intArray + v48 + 3) = WORD1(v40) & 0x7FF;
        v51 = *(intArray + 2);
        if (v7 + 16 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 16));
        }

        v52 = intCopy + 3;
        *(intArray + v50 + 3) = v40 >> 5;
        v53 = *(array + 2);
        if (intCopy + 3 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (intCopy + 3));
        }

        v54 = v7 + 17;
        v55 = *(array + v52 + 2);
        v56 = *(intArray + 2);
        if (v7 + 17 < 0 || v54 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 17));
        }

        v57 = v7 + 18;
        *(intArray + v54 + 3) = (v55 >> 58) & 0x3F | ((v40 & 0x1F) << 6);
        v58 = *(intArray + 2);
        if (v7 + 18 < 0 || v57 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 18));
        }

        v59 = v7 + 19;
        *(intArray + v57 + 3) = (v55 >> 47) & 0x7FF;
        v60 = *(intArray + 2);
        if (v7 + 19 < 0 || v59 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (v7 + 19));
        }

        v61 = v7 + 20;
        *(intArray + v59 + 3) = (v55 >> 36) & 0x7FF;
        v62 = *(intArray + 2);
        if (v7 + 20 < 0 || v61 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (v7 + 20));
        }

        v63 = v7 + 21;
        *(intArray + v61 + 3) = (v55 >> 25) & 0x7FF;
        v64 = *(intArray + 2);
        if (v7 + 21 < 0 || v63 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 21));
        }

        v65 = v7 + 22;
        *(intArray + v63 + 3) = (v55 >> 14) & 0x7FF;
        v66 = *(intArray + 2);
        if (v7 + 22 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 22));
        }

        v67 = intCopy + 4;
        *(intArray + v65 + 3) = (v55 >> 3) & 0x7FF;
        v68 = *(array + 2);
        if (intCopy + 4 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (intCopy + 4));
        }

        v69 = v7 + 23;
        v70 = *(array + v67 + 2);
        v71 = *(intArray + 2);
        if (v7 + 23 < 0 || v69 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 23));
        }

        v72 = v7 + 24;
        *(intArray + v69 + 3) = HIBYTE(v70) | ((v55 & 7) << 8);
        v73 = *(intArray + 2);
        if (v7 + 24 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 24));
        }

        v74 = v7 + 25;
        *(intArray + v72 + 3) = (v70 >> 45) & 0x7FF;
        v75 = *(intArray + 2);
        if (v7 + 25 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 25));
        }

        v76 = v7 + 26;
        *(intArray + v74 + 3) = (v70 >> 34) & 0x7FF;
        v77 = *(intArray + 2);
        if (v7 + 26 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 26));
        }

        v78 = v7 + 27;
        *(intArray + v76 + 3) = (v70 >> 23) & 0x7FF;
        v79 = *(intArray + 2);
        if (v7 + 27 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (v7 + 27));
        }

        v80 = v7 + 28;
        *(intArray + v78 + 3) = (v70 >> 12) & 0x7FF;
        v81 = *(intArray + 2);
        if (v7 + 28 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 28));
        }

        v82 = intCopy + 5;
        *(intArray + v80 + 3) = (v70 >> 1) & 0x7FF;
        v83 = *(array + 2);
        if (intCopy + 5 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (intCopy + 5));
        }

        v84 = v7 + 29;
        v85 = *(array + v82 + 2);
        v86 = *(intArray + 2);
        if (v7 + 29 < 0 || v84 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (v7 + 29));
        }

        v87 = v7 + 30;
        *(intArray + v84 + 3) = (v85 >> 54) & 0xFBFF | ((v70 & 1) << 10);
        v88 = *(intArray + 2);
        if (v7 + 30 < 0 || v87 >= v88)
        {
          IOSArray_throwOutOfBoundsWithMsg(v88, (v7 + 30));
        }

        v89 = v7 + 31;
        *(intArray + v87 + 3) = (v85 >> 43) & 0x7FF;
        v90 = *(intArray + 2);
        if (v7 + 31 < 0 || v89 >= v90)
        {
          IOSArray_throwOutOfBoundsWithMsg(v90, (v7 + 31));
        }

        v91 = v7 + 32;
        *(intArray + v89 + 3) = WORD2(v85) & 0x7FF;
        v92 = *(intArray + 2);
        if (v7 + 32 < 0 || v91 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 32));
        }

        v93 = v7 + 33;
        *(intArray + v91 + 3) = v85 >> 21;
        v94 = *(intArray + 2);
        if (v7 + 33 < 0 || v93 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (v7 + 33));
        }

        v95 = intCopy + 6;
        *(intArray + v93 + 3) = (v85 >> 10) & 0x7FF;
        v96 = *(array + 2);
        if (intCopy + 6 < 0 || v95 >= v96)
        {
          IOSArray_throwOutOfBoundsWithMsg(v96, (intCopy + 6));
        }

        v97 = v7 + 34;
        v98 = *(array + v95 + 2);
        v99 = *(intArray + 2);
        if (v7 + 34 < 0 || v97 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (v7 + 34));
        }

        v100 = v7 + 35;
        *(intArray + v97 + 3) = (v98 >> 63) | (2 * (v85 & 0x3FF));
        v101 = *(intArray + 2);
        if (v7 + 35 < 0 || v100 >= v101)
        {
          IOSArray_throwOutOfBoundsWithMsg(v101, (v7 + 35));
        }

        v102 = v7 + 36;
        *(intArray + v100 + 3) = (v98 >> 52) & 0x7FF;
        v103 = *(intArray + 2);
        if (v7 + 36 < 0 || v102 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (v7 + 36));
        }

        v104 = v7 + 37;
        *(intArray + v102 + 3) = (v98 >> 41) & 0x7FF;
        v105 = *(intArray + 2);
        if (v7 + 37 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (v7 + 37));
        }

        v106 = v7 + 38;
        *(intArray + v104 + 3) = (v98 >> 30) & 0x7FF;
        v107 = *(intArray + 2);
        if (v7 + 38 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 38));
        }

        v108 = v7 + 39;
        *(intArray + v106 + 3) = (v98 >> 19) & 0x7FF;
        v109 = *(intArray + 2);
        if (v7 + 39 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 39));
        }

        v110 = intCopy + 7;
        *(intArray + v108 + 3) = (v98 >> 8) & 0x7FF;
        v111 = *(array + 2);
        if (intCopy + 7 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (intCopy + 7));
        }

        v112 = v7 + 40;
        v113 = *(array + v110 + 2);
        v114 = *(intArray + 2);
        if (v7 + 40 < 0 || v112 >= v114)
        {
          IOSArray_throwOutOfBoundsWithMsg(v114, (v7 + 40));
        }

        v115 = v7 + 41;
        *(intArray + v112 + 3) = (v113 >> 61) & 7 | (8 * v98);
        v116 = *(intArray + 2);
        if (v7 + 41 < 0 || v115 >= v116)
        {
          IOSArray_throwOutOfBoundsWithMsg(v116, (v7 + 41));
        }

        v117 = v7 + 42;
        *(intArray + v115 + 3) = (v113 >> 50) & 0x7FF;
        v118 = *(intArray + 2);
        if (v7 + 42 < 0 || v117 >= v118)
        {
          IOSArray_throwOutOfBoundsWithMsg(v118, (v7 + 42));
        }

        v119 = v7 + 43;
        *(intArray + v117 + 3) = (v113 >> 39) & 0x7FF;
        v120 = *(intArray + 2);
        if (v7 + 43 < 0 || v119 >= v120)
        {
          IOSArray_throwOutOfBoundsWithMsg(v120, (v7 + 43));
        }

        v121 = v7 + 44;
        *(intArray + v119 + 3) = (v113 >> 28) & 0x7FF;
        v122 = *(intArray + 2);
        if (v7 + 44 < 0 || v121 >= v122)
        {
          IOSArray_throwOutOfBoundsWithMsg(v122, (v7 + 44));
        }

        v123 = v7 + 45;
        *(intArray + v121 + 3) = (v113 >> 17) & 0x7FF;
        v124 = *(intArray + 2);
        if (v7 + 45 < 0 || v123 >= v124)
        {
          IOSArray_throwOutOfBoundsWithMsg(v124, (v7 + 45));
        }

        v125 = intCopy + 8;
        *(intArray + v123 + 3) = (v113 >> 6) & 0x7FF;
        v126 = *(array + 2);
        if (intCopy + 8 < 0 || v125 >= v126)
        {
          IOSArray_throwOutOfBoundsWithMsg(v126, (intCopy + 8));
        }

        v127 = v7 + 46;
        v128 = *(array + v125 + 2);
        v129 = *(intArray + 2);
        if (v7 + 46 < 0 || v127 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 46));
        }

        v130 = v7 + 47;
        *(intArray + v127 + 3) = (v128 >> 59) & 0x1F | (32 * (v113 & 0x3F));
        v131 = *(intArray + 2);
        if (v7 + 47 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 47));
        }

        v132 = v7 + 48;
        *(intArray + v130 + 3) = HIWORD(v128) & 0x7FF;
        v133 = *(intArray + 2);
        if (v7 + 48 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 48));
        }

        v134 = v7 + 49;
        *(intArray + v132 + 3) = (v128 >> 37) & 0x7FF;
        v135 = *(intArray + 2);
        if (v7 + 49 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (v7 + 49));
        }

        v136 = v7 + 50;
        *(intArray + v134 + 3) = (v128 >> 26) & 0x7FF;
        v137 = *(intArray + 2);
        if (v7 + 50 < 0 || v136 >= v137)
        {
          IOSArray_throwOutOfBoundsWithMsg(v137, (v7 + 50));
        }

        v138 = v7 + 51;
        *(intArray + v136 + 3) = (v128 >> 15) & 0x7FF;
        v139 = *(intArray + 2);
        if (v7 + 51 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 51));
        }

        v140 = intCopy + 9;
        *(intArray + v138 + 3) = (v128 >> 4) & 0x7FF;
        v141 = *(array + 2);
        if (intCopy + 9 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (intCopy + 9));
        }

        v142 = v7 + 52;
        v143 = *(array + v140 + 2);
        v144 = *(intArray + 2);
        if (v7 + 52 < 0 || v142 >= v144)
        {
          IOSArray_throwOutOfBoundsWithMsg(v144, (v7 + 52));
        }

        v145 = v7 + 53;
        *(intArray + v142 + 3) = (v143 >> 57) & 0x7F | ((v128 & 0xF) << 7);
        v146 = *(intArray + 2);
        if (v7 + 53 < 0 || v145 >= v146)
        {
          IOSArray_throwOutOfBoundsWithMsg(v146, (v7 + 53));
        }

        v147 = v7 + 54;
        *(intArray + v145 + 3) = (v143 >> 46) & 0x7FF;
        v148 = *(intArray + 2);
        if (v7 + 54 < 0 || v147 >= v148)
        {
          IOSArray_throwOutOfBoundsWithMsg(v148, (v7 + 54));
        }

        v149 = v7 + 55;
        *(intArray + v147 + 3) = (v143 >> 35) & 0x7FF;
        v150 = *(intArray + 2);
        if (v7 + 55 < 0 || v149 >= v150)
        {
          IOSArray_throwOutOfBoundsWithMsg(v150, (v7 + 55));
        }

        v151 = v7 + 56;
        *(intArray + v149 + 3) = (v143 >> 24) & 0x7FF;
        v152 = *(intArray + 2);
        if (v7 + 56 < 0 || v151 >= v152)
        {
          IOSArray_throwOutOfBoundsWithMsg(v152, (v7 + 56));
        }

        v153 = v7 + 57;
        *(intArray + v151 + 3) = (v143 >> 13) & 0x7FF;
        v154 = *(intArray + 2);
        if (v7 + 57 < 0 || v153 >= v154)
        {
          IOSArray_throwOutOfBoundsWithMsg(v154, (v7 + 57));
        }

        v155 = intCopy + 10;
        *(intArray + v153 + 3) = (v143 >> 2) & 0x7FF;
        v156 = *(array + 2);
        if (intCopy + 10 < 0 || v155 >= v156)
        {
          IOSArray_throwOutOfBoundsWithMsg(v156, (intCopy + 10));
        }

        v157 = v7 + 58;
        v158 = *(array + v155 + 2);
        v159 = *(intArray + 2);
        if (v7 + 58 < 0 || v157 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (v7 + 58));
        }

        v160 = v7 + 59;
        *(intArray + v157 + 3) = (v158 >> 55) & 0xF9FF | ((v143 & 3) << 9);
        v161 = *(intArray + 2);
        if (v7 + 59 < 0 || v160 >= v161)
        {
          IOSArray_throwOutOfBoundsWithMsg(v161, (v7 + 59));
        }

        v162 = v7 + 60;
        *(intArray + v160 + 3) = (v158 >> 44) & 0x7FF;
        v163 = *(intArray + 2);
        if (v7 + 60 < 0 || v162 >= v163)
        {
          IOSArray_throwOutOfBoundsWithMsg(v163, (v7 + 60));
        }

        v164 = v7 + 61;
        *(intArray + v162 + 3) = (v158 >> 33) & 0x7FF;
        v165 = *(intArray + 2);
        if (v7 + 61 < 0 || v164 >= v165)
        {
          IOSArray_throwOutOfBoundsWithMsg(v165, (v7 + 61));
        }

        v166 = v7 + 62;
        *(intArray + v164 + 3) = (v158 >> 22) & 0x7FF;
        v167 = *(intArray + 2);
        if (v7 + 62 < 0 || v166 >= v167)
        {
          IOSArray_throwOutOfBoundsWithMsg(v167, (v7 + 62));
        }

        v168 = v7 + 63;
        *(intArray + v166 + 3) = (v158 >> 11) & 0x7FF;
        v169 = *(intArray + 2);
        if (v7 + 63 < 0 || v168 >= v169)
        {
          IOSArray_throwOutOfBoundsWithMsg(v169, (v7 + 63));
        }

        int = intCopy + 11;
        v7 = (v7 + 64);
        *(intArray + v168 + 3) = v158 & 0x7FF;
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
        *(intArray + v7 + 3) = (v12 >> 5) | (8 * *(array + intCopy + 12));
        v15 = *(array + 2);
        if (intCopy + 2 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (intCopy + 2));
        }

        v16 = v7 + 1;
        v17 = *(array + v14 + 12);
        v18 = *(intArray + 2);
        if (v7 + 1 < 0 || v16 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (v7 + 1));
        }

        v19 = intCopy + 3;
        *(intArray + v16 + 3) = (v17 >> 2) & 0xFFFFF83F | ((v12 & 0x1F) << 6);
        v20 = *(array + 2);
        if (intCopy + 3 < 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (intCopy + 3));
        }

        v21 = intCopy + 4;
        v22 = *(array + v19 + 12);
        if (intCopy + 4 < 0 || v21 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (intCopy + 4));
        }

        v23 = v7 + 2;
        v24 = *(array + v21 + 12);
        v25 = *(intArray + 2);
        if (v7 + 2 < 0 || v23 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 2));
        }

        v26 = intCopy + 5;
        *(intArray + v23 + 3) = ((v17 & 3) << 9) | (2 * v22) | (v24 >> 7);
        v27 = *(array + 2);
        if (intCopy + 5 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (intCopy + 5));
        }

        v28 = v7 + 3;
        v29 = *(array + v26 + 12);
        v30 = *(intArray + 2);
        if (v7 + 3 < 0 || v28 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 3));
        }

        v31 = intCopy + 6;
        *(intArray + v28 + 3) = (v29 >> 4) & 0xFFFFF80F | (16 * (v24 & 0x7F));
        v32 = *(array + 2);
        if (intCopy + 6 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (intCopy + 6));
        }

        v33 = v7 + 4;
        v34 = *(array + v31 + 12);
        v35 = *(intArray + 2);
        if (v7 + 4 < 0 || v33 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 4));
        }

        v36 = intCopy + 7;
        *(intArray + v33 + 3) = (v34 >> 1) & 0xFFFFF87F | ((v29 & 0xF) << 7);
        v37 = *(array + 2);
        if (intCopy + 7 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (intCopy + 7));
        }

        v38 = intCopy + 8;
        v39 = *(array + v36 + 12);
        if (intCopy + 8 < 0 || v38 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (intCopy + 8));
        }

        v40 = v7 + 5;
        v41 = *(array + v38 + 12);
        v42 = *(intArray + 2);
        if (v7 + 5 < 0 || v40 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 5));
        }

        v43 = intCopy + 9;
        *(intArray + v40 + 3) = ((v34 & 1) << 10) | (4 * v39) | (v41 >> 6);
        v44 = *(array + 2);
        if (intCopy + 9 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (intCopy + 9));
        }

        v45 = v7 + 6;
        v46 = *(array + v43 + 12);
        v47 = *(intArray + 2);
        if (v7 + 6 < 0 || v45 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 6));
        }

        v48 = intCopy + 10;
        *(intArray + v45 + 3) = (v46 >> 3) & 0xFFFFF81F | (32 * (v41 & 0x3F));
        v49 = *(array + 2);
        if (intCopy + 10 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (intCopy + 10));
        }

        v50 = v7 + 7;
        v51 = *(intArray + 2);
        if (v7 + 7 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 7));
        }

        *(intArray + v50 + 3) = *(array + v48 + 12) | ((v46 & 7) << 8);
        int = intCopy + 11;
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
        *(longArray + v7 + 2) = v12 >> 53;
        v15 = *(longArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(longArray + v14 + 2) = (v12 >> 42) & 0x7FF;
        v17 = *(longArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(longArray + v16 + 2) = (v12 >> 31) & 0x7FF;
        v19 = *(longArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = v7 + 4;
        *(longArray + v18 + 2) = (v12 >> 20) & 0x7FF;
        v21 = *(longArray + 2);
        if (v7 + 4 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 4));
        }

        v22 = (int + 1);
        *(longArray + v20 + 2) = (v12 >> 9) & 0x7FF;
        v23 = *(array + 2);
        if ((v22 & 0x80000000) != 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v22);
        }

        v24 = v7 + 5;
        v25 = *(array + v22 + 2);
        v26 = *(longArray + 2);
        if (v7 + 5 < 0 || v24 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 5));
        }

        *(&v27 + 1) = v12;
        *&v27 = *(array + v22 + 2);
        v28 = v7 + 6;
        *(longArray + v24 + 2) = (v27 >> 62) & 0x7FF;
        v29 = *(longArray + 2);
        if (v7 + 6 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 6));
        }

        v30 = v7 + 7;
        *(longArray + v28 + 2) = (v25 >> 51) & 0x7FF;
        v31 = *(longArray + 2);
        if (v7 + 7 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 7));
        }

        v32 = v7 + 8;
        *(longArray + v30 + 2) = (v25 >> 40) & 0x7FF;
        v33 = *(longArray + 2);
        if (v7 + 8 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 8));
        }

        v34 = v7 + 9;
        *(longArray + v32 + 2) = (v25 >> 29) & 0x7FF;
        v35 = *(longArray + 2);
        if (v7 + 9 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 9));
        }

        v36 = v7 + 10;
        *(longArray + v34 + 2) = (v25 >> 18) & 0x7FF;
        v37 = *(longArray + 2);
        if (v7 + 10 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 10));
        }

        v38 = intCopy + 2;
        *(longArray + v36 + 2) = (v25 >> 7) & 0x7FF;
        v39 = *(array + 2);
        if (intCopy + 2 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (intCopy + 2));
        }

        v40 = v7 + 11;
        v41 = *(array + v38 + 2);
        v42 = *(longArray + 2);
        if (v7 + 11 < 0 || v40 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 11));
        }

        *(&v43 + 1) = v25;
        *&v43 = *(array + v38 + 2);
        v44 = v7 + 12;
        *(longArray + v40 + 2) = (v43 >> 60) & 0x7FF;
        v45 = *(longArray + 2);
        if (v7 + 12 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 12));
        }

        v46 = v7 + 13;
        *(longArray + v44 + 2) = (v41 >> 49) & 0x7FF;
        v47 = *(longArray + 2);
        if (v7 + 13 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 13));
        }

        v48 = v7 + 14;
        *(longArray + v46 + 2) = (v41 >> 38) & 0x7FF;
        v49 = *(longArray + 2);
        if (v7 + 14 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 14));
        }

        v50 = v7 + 15;
        *(longArray + v48 + 2) = (v41 >> 27) & 0x7FF;
        v51 = *(longArray + 2);
        if (v7 + 15 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 15));
        }

        v52 = v7 + 16;
        *(longArray + v50 + 2) = (v41 >> 16) & 0x7FF;
        v53 = *(longArray + 2);
        if (v7 + 16 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 16));
        }

        v54 = intCopy + 3;
        *(longArray + v52 + 2) = v41 >> 5;
        v55 = *(array + 2);
        if (intCopy + 3 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (intCopy + 3));
        }

        v56 = v7 + 17;
        v57 = *(array + v54 + 2);
        v58 = *(longArray + 2);
        if (v7 + 17 < 0 || v56 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 17));
        }

        *(&v59 + 1) = v41;
        *&v59 = *(array + v54 + 2);
        v60 = v7 + 18;
        *(longArray + v56 + 2) = (v59 >> 58) & 0x7FF;
        v61 = *(longArray + 2);
        if (v7 + 18 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 18));
        }

        v62 = v7 + 19;
        *(longArray + v60 + 2) = (v57 >> 47) & 0x7FF;
        v63 = *(longArray + 2);
        if (v7 + 19 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 19));
        }

        v64 = v7 + 20;
        *(longArray + v62 + 2) = (v57 >> 36) & 0x7FF;
        v65 = *(longArray + 2);
        if (v7 + 20 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 20));
        }

        v66 = v7 + 21;
        *(longArray + v64 + 2) = (v57 >> 25) & 0x7FF;
        v67 = *(longArray + 2);
        if (v7 + 21 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (v7 + 21));
        }

        v68 = v7 + 22;
        *(longArray + v66 + 2) = (v57 >> 14) & 0x7FF;
        v69 = *(longArray + 2);
        if (v7 + 22 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 22));
        }

        v70 = intCopy + 4;
        *(longArray + v68 + 2) = (v57 >> 3) & 0x7FF;
        v71 = *(array + 2);
        if (intCopy + 4 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (intCopy + 4));
        }

        v72 = v7 + 23;
        v73 = *(array + v70 + 2);
        v74 = *(longArray + 2);
        if (v7 + 23 < 0 || v72 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (v7 + 23));
        }

        *(&v75 + 1) = v57;
        *&v75 = *(array + v70 + 2);
        v76 = v7 + 24;
        *(longArray + v72 + 2) = (v75 >> 56) & 0x7FF;
        v77 = *(longArray + 2);
        if (v7 + 24 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 24));
        }

        v78 = v7 + 25;
        *(longArray + v76 + 2) = (v73 >> 45) & 0x7FF;
        v79 = *(longArray + 2);
        if (v7 + 25 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (v7 + 25));
        }

        v80 = v7 + 26;
        *(longArray + v78 + 2) = (v73 >> 34) & 0x7FF;
        v81 = *(longArray + 2);
        if (v7 + 26 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 26));
        }

        v82 = v7 + 27;
        *(longArray + v80 + 2) = (v73 >> 23) & 0x7FF;
        v83 = *(longArray + 2);
        if (v7 + 27 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (v7 + 27));
        }

        v84 = v7 + 28;
        *(longArray + v82 + 2) = (v73 >> 12) & 0x7FF;
        v85 = *(longArray + 2);
        if (v7 + 28 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 28));
        }

        v86 = intCopy + 5;
        *(longArray + v84 + 2) = (v73 >> 1) & 0x7FF;
        v87 = *(array + 2);
        if (intCopy + 5 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (intCopy + 5));
        }

        v88 = v7 + 29;
        v89 = *(array + v86 + 2);
        v90 = *(longArray + 2);
        if (v7 + 29 < 0 || v88 >= v90)
        {
          IOSArray_throwOutOfBoundsWithMsg(v90, (v7 + 29));
        }

        *(&v91 + 1) = v73;
        *&v91 = *(array + v86 + 2);
        v92 = v7 + 30;
        *(longArray + v88 + 2) = (v91 >> 54) & 0x7FF;
        v93 = *(longArray + 2);
        if (v7 + 30 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 30));
        }

        v94 = v7 + 31;
        *(longArray + v92 + 2) = (v89 >> 43) & 0x7FF;
        v95 = *(longArray + 2);
        if (v7 + 31 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (v7 + 31));
        }

        v96 = v7 + 32;
        *(longArray + v94 + 2) = HIDWORD(v89) & 0x7FF;
        v97 = *(longArray + 2);
        if (v7 + 32 < 0 || v96 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (v7 + 32));
        }

        v98 = v7 + 33;
        *(longArray + v96 + 2) = v89 >> 21;
        v99 = *(longArray + 2);
        if (v7 + 33 < 0 || v98 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (v7 + 33));
        }

        v100 = intCopy + 6;
        *(longArray + v98 + 2) = (v89 >> 10) & 0x7FF;
        v101 = *(array + 2);
        if (intCopy + 6 < 0 || v100 >= v101)
        {
          IOSArray_throwOutOfBoundsWithMsg(v101, (intCopy + 6));
        }

        v102 = v7 + 34;
        v103 = *(array + v100 + 2);
        v104 = *(longArray + 2);
        if (v7 + 34 < 0 || v102 >= v104)
        {
          IOSArray_throwOutOfBoundsWithMsg(v104, (v7 + 34));
        }

        *(&v105 + 1) = v89;
        *&v105 = *(array + v100 + 2);
        v106 = v7 + 35;
        *(longArray + v102 + 2) = (v105 >> 63) & 0x7FF;
        v107 = *(longArray + 2);
        if (v7 + 35 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 35));
        }

        v108 = v7 + 36;
        *(longArray + v106 + 2) = (v103 >> 52) & 0x7FF;
        v109 = *(longArray + 2);
        if (v7 + 36 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 36));
        }

        v110 = v7 + 37;
        *(longArray + v108 + 2) = (v103 >> 41) & 0x7FF;
        v111 = *(longArray + 2);
        if (v7 + 37 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 37));
        }

        v112 = v7 + 38;
        *(longArray + v110 + 2) = (v103 >> 30) & 0x7FF;
        v113 = *(longArray + 2);
        if (v7 + 38 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (v7 + 38));
        }

        v114 = v7 + 39;
        *(longArray + v112 + 2) = (v103 >> 19) & 0x7FF;
        v115 = *(longArray + 2);
        if (v7 + 39 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 39));
        }

        v116 = intCopy + 7;
        *(longArray + v114 + 2) = (v103 >> 8) & 0x7FF;
        v117 = *(array + 2);
        if (intCopy + 7 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (intCopy + 7));
        }

        v118 = v7 + 40;
        v119 = *(array + v116 + 2);
        v120 = *(longArray + 2);
        if (v7 + 40 < 0 || v118 >= v120)
        {
          IOSArray_throwOutOfBoundsWithMsg(v120, (v7 + 40));
        }

        *(&v121 + 1) = v103;
        *&v121 = *(array + v116 + 2);
        v122 = v7 + 41;
        *(longArray + v118 + 2) = (v121 >> 61) & 0x7FF;
        v123 = *(longArray + 2);
        if (v7 + 41 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (v7 + 41));
        }

        v124 = v7 + 42;
        *(longArray + v122 + 2) = (v119 >> 50) & 0x7FF;
        v125 = *(longArray + 2);
        if (v7 + 42 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (v7 + 42));
        }

        v126 = v7 + 43;
        *(longArray + v124 + 2) = (v119 >> 39) & 0x7FF;
        v127 = *(longArray + 2);
        if (v7 + 43 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (v7 + 43));
        }

        v128 = v7 + 44;
        *(longArray + v126 + 2) = (v119 >> 28) & 0x7FF;
        v129 = *(longArray + 2);
        if (v7 + 44 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 44));
        }

        v130 = v7 + 45;
        *(longArray + v128 + 2) = (v119 >> 17) & 0x7FF;
        v131 = *(longArray + 2);
        if (v7 + 45 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 45));
        }

        v132 = intCopy + 8;
        *(longArray + v130 + 2) = (v119 >> 6) & 0x7FF;
        v133 = *(array + 2);
        if (intCopy + 8 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (intCopy + 8));
        }

        v134 = v7 + 46;
        v135 = *(array + v132 + 2);
        v136 = *(longArray + 2);
        if (v7 + 46 < 0 || v134 >= v136)
        {
          IOSArray_throwOutOfBoundsWithMsg(v136, (v7 + 46));
        }

        *(&v137 + 1) = v119;
        *&v137 = *(array + v132 + 2);
        v138 = v7 + 47;
        *(longArray + v134 + 2) = (v137 >> 59) & 0x7FF;
        v139 = *(longArray + 2);
        if (v7 + 47 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 47));
        }

        v140 = v7 + 48;
        *(longArray + v138 + 2) = HIWORD(v135) & 0x7FF;
        v141 = *(longArray + 2);
        if (v7 + 48 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 48));
        }

        v142 = v7 + 49;
        *(longArray + v140 + 2) = (v135 >> 37) & 0x7FF;
        v143 = *(longArray + 2);
        if (v7 + 49 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 49));
        }

        v144 = v7 + 50;
        *(longArray + v142 + 2) = (v135 >> 26) & 0x7FF;
        v145 = *(longArray + 2);
        if (v7 + 50 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 50));
        }

        v146 = v7 + 51;
        *(longArray + v144 + 2) = (v135 >> 15) & 0x7FF;
        v147 = *(longArray + 2);
        if (v7 + 51 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (v7 + 51));
        }

        v148 = intCopy + 9;
        *(longArray + v146 + 2) = (v135 >> 4) & 0x7FF;
        v149 = *(array + 2);
        if (intCopy + 9 < 0 || v148 >= v149)
        {
          IOSArray_throwOutOfBoundsWithMsg(v149, (intCopy + 9));
        }

        v150 = v7 + 52;
        v151 = *(array + v148 + 2);
        v152 = *(longArray + 2);
        if (v7 + 52 < 0 || v150 >= v152)
        {
          IOSArray_throwOutOfBoundsWithMsg(v152, (v7 + 52));
        }

        *(&v153 + 1) = v135;
        *&v153 = *(array + v148 + 2);
        v154 = v7 + 53;
        *(longArray + v150 + 2) = (v153 >> 57) & 0x7FF;
        v155 = *(longArray + 2);
        if (v7 + 53 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 53));
        }

        v156 = v7 + 54;
        *(longArray + v154 + 2) = (v151 >> 46) & 0x7FF;
        v157 = *(longArray + 2);
        if (v7 + 54 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (v7 + 54));
        }

        v158 = v7 + 55;
        *(longArray + v156 + 2) = (v151 >> 35) & 0x7FF;
        v159 = *(longArray + 2);
        if (v7 + 55 < 0 || v158 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (v7 + 55));
        }

        v160 = v7 + 56;
        *(longArray + v158 + 2) = (v151 >> 24) & 0x7FF;
        v161 = *(longArray + 2);
        if (v7 + 56 < 0 || v160 >= v161)
        {
          IOSArray_throwOutOfBoundsWithMsg(v161, (v7 + 56));
        }

        v162 = v7 + 57;
        *(longArray + v160 + 2) = (v151 >> 13) & 0x7FF;
        v163 = *(longArray + 2);
        if (v7 + 57 < 0 || v162 >= v163)
        {
          IOSArray_throwOutOfBoundsWithMsg(v163, (v7 + 57));
        }

        v164 = intCopy + 10;
        *(longArray + v162 + 2) = (v151 >> 2) & 0x7FF;
        v165 = *(array + 2);
        if (intCopy + 10 < 0 || v164 >= v165)
        {
          IOSArray_throwOutOfBoundsWithMsg(v165, (intCopy + 10));
        }

        v166 = v7 + 58;
        v167 = *(array + v164 + 2);
        v168 = *(longArray + 2);
        if (v7 + 58 < 0 || v166 >= v168)
        {
          IOSArray_throwOutOfBoundsWithMsg(v168, (v7 + 58));
        }

        *(&v169 + 1) = v151;
        *&v169 = *(array + v164 + 2);
        v170 = v7 + 59;
        *(longArray + v166 + 2) = (v169 >> 55) & 0x7FF;
        v171 = *(longArray + 2);
        if (v7 + 59 < 0 || v170 >= v171)
        {
          IOSArray_throwOutOfBoundsWithMsg(v171, (v7 + 59));
        }

        v172 = v7 + 60;
        *(longArray + v170 + 2) = (v167 >> 44) & 0x7FF;
        v173 = *(longArray + 2);
        if (v7 + 60 < 0 || v172 >= v173)
        {
          IOSArray_throwOutOfBoundsWithMsg(v173, (v7 + 60));
        }

        v174 = v7 + 61;
        *(longArray + v172 + 2) = (v167 >> 33) & 0x7FF;
        v175 = *(longArray + 2);
        if (v7 + 61 < 0 || v174 >= v175)
        {
          IOSArray_throwOutOfBoundsWithMsg(v175, (v7 + 61));
        }

        v176 = v7 + 62;
        *(longArray + v174 + 2) = (v167 >> 22) & 0x7FF;
        v177 = *(longArray + 2);
        if (v7 + 62 < 0 || v176 >= v177)
        {
          IOSArray_throwOutOfBoundsWithMsg(v177, (v7 + 62));
        }

        v178 = v7 + 63;
        *(longArray + v176 + 2) = (v167 >> 11) & 0x7FF;
        v179 = *(longArray + 2);
        if (v7 + 63 < 0 || v178 >= v179)
        {
          IOSArray_throwOutOfBoundsWithMsg(v179, (v7 + 63));
        }

        int = intCopy + 11;
        v7 = (v7 + 64);
        *(longArray + v178 + 2) = v167 & 0x7FF;
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
        *(longArray + v7 + 2) = (v12 >> 5) | (8 * *(array + intCopy + 12));
        v15 = *(array + 2);
        if (intCopy + 2 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (intCopy + 2));
        }

        v16 = v7 + 1;
        v17 = *(array + v14 + 12);
        v18 = *(longArray + 2);
        if (v7 + 1 < 0 || v16 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (v7 + 1));
        }

        v19 = intCopy + 3;
        *(longArray + v16 + 2) = (v17 >> 2) & 0xFFFFFFFFFFFFF83FLL | ((v12 & 0x1F) << 6);
        v20 = *(array + 2);
        if (intCopy + 3 < 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (intCopy + 3));
        }

        v21 = intCopy + 4;
        v22 = *(array + v19 + 12);
        if (intCopy + 4 < 0 || v21 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (intCopy + 4));
        }

        v23 = v7 + 2;
        v24 = *(array + v21 + 12);
        v25 = *(longArray + 2);
        if (v7 + 2 < 0 || v23 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 2));
        }

        v26 = intCopy + 5;
        *(longArray + v23 + 2) = ((v17 & 3) << 9) | (2 * v22) | (v24 >> 7);
        v27 = *(array + 2);
        if (intCopy + 5 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (intCopy + 5));
        }

        v28 = v7 + 3;
        v29 = *(array + v26 + 12);
        v30 = *(longArray + 2);
        if (v7 + 3 < 0 || v28 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 3));
        }

        v31 = intCopy + 6;
        *(longArray + v28 + 2) = (v29 >> 4) & 0xFFFFFFFFFFFFF80FLL | (16 * (v24 & 0x7F));
        v32 = *(array + 2);
        if (intCopy + 6 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (intCopy + 6));
        }

        v33 = v7 + 4;
        v34 = *(array + v31 + 12);
        v35 = *(longArray + 2);
        if (v7 + 4 < 0 || v33 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 4));
        }

        v36 = intCopy + 7;
        *(longArray + v33 + 2) = (v34 >> 1) & 0xFFFFFFFFFFFFF87FLL | ((v29 & 0xF) << 7);
        v37 = *(array + 2);
        if (intCopy + 7 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (intCopy + 7));
        }

        v38 = intCopy + 8;
        v39 = *(array + v36 + 12);
        if (intCopy + 8 < 0 || v38 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (intCopy + 8));
        }

        v40 = v7 + 5;
        v41 = *(array + v38 + 12);
        v42 = *(longArray + 2);
        if (v7 + 5 < 0 || v40 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 5));
        }

        v43 = intCopy + 9;
        *(longArray + v40 + 2) = ((v34 & 1) << 10) | (4 * v39) | (v41 >> 6);
        v44 = *(array + 2);
        if (intCopy + 9 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (intCopy + 9));
        }

        v45 = v7 + 6;
        v46 = *(array + v43 + 12);
        v47 = *(longArray + 2);
        if (v7 + 6 < 0 || v45 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 6));
        }

        v48 = intCopy + 10;
        *(longArray + v45 + 2) = (v46 >> 3) & 0xFFFFFFFFFFFFF81FLL | (32 * (v41 & 0x3F));
        v49 = *(array + 2);
        if (intCopy + 10 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (intCopy + 10));
        }

        v50 = v7 + 7;
        v51 = *(longArray + 2);
        if (v7 + 7 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 7));
        }

        *(longArray + v50 + 2) = *(array + v48 + 12) | ((v46 & 7) << 8);
        int = intCopy + 11;
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