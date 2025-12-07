@interface OrgApacheLuceneUtilPackedBulkOperationPacked21
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked21

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
        *(intArray + v7 + 3) = v12 >> 43;
        v15 = *(intArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(intArray + v14 + 3) = (v12 >> 22) & 0x1FFFFF;
        v17 = *(intArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = (int + 1);
        *(intArray + v16 + 3) = (v12 >> 1) & 0x1FFFFF;
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
        *(intArray + v20 + 3) = (v21 >> 44) & 0xFFEFFFFF | ((v12 & 1) << 20);
        v24 = *(intArray + 2);
        if (v7 + 4 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 4));
        }

        v25 = v7 + 5;
        *(intArray + v23 + 3) = (v21 >> 23) & 0x1FFFFF;
        v26 = *(intArray + 2);
        if (v7 + 5 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 5));
        }

        v27 = intCopy + 2;
        *(intArray + v25 + 3) = (v21 >> 2) & 0x1FFFFF;
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
        *(intArray + v29 + 3) = (v30 >> 45) & 0xFFE7FFFF | ((v21 & 3) << 19);
        v33 = *(intArray + 2);
        if (v7 + 7 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 7));
        }

        v34 = v7 + 8;
        *(intArray + v32 + 3) = (v30 >> 24) & 0x1FFFFF;
        v35 = *(intArray + 2);
        if (v7 + 8 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 8));
        }

        v36 = intCopy + 3;
        *(intArray + v34 + 3) = (v30 >> 3) & 0x1FFFFF;
        v37 = *(array + 2);
        if (intCopy + 3 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (intCopy + 3));
        }

        v38 = v7 + 9;
        v39 = *(array + v36 + 2);
        v40 = *(intArray + 2);
        if (v7 + 9 < 0 || v38 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 9));
        }

        v41 = v7 + 10;
        *(intArray + v38 + 3) = (v39 >> 46) & 0xFFE3FFFF | ((v30 & 7) << 18);
        v42 = *(intArray + 2);
        if (v7 + 10 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 10));
        }

        v43 = v7 + 11;
        *(intArray + v41 + 3) = (v39 >> 25) & 0x1FFFFF;
        v44 = *(intArray + 2);
        if (v7 + 11 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 11));
        }

        v45 = intCopy + 4;
        *(intArray + v43 + 3) = (v39 >> 4) & 0x1FFFFF;
        v46 = *(array + 2);
        if (intCopy + 4 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (intCopy + 4));
        }

        v47 = v7 + 12;
        v48 = *(array + v45 + 2);
        v49 = *(intArray + 2);
        if (v7 + 12 < 0 || v47 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 12));
        }

        v50 = v7 + 13;
        *(intArray + v47 + 3) = (v48 >> 47) & 0xFFE1FFFF | ((v39 & 0xF) << 17);
        v51 = *(intArray + 2);
        if (v7 + 13 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 13));
        }

        v52 = v7 + 14;
        *(intArray + v50 + 3) = (v48 >> 26) & 0x1FFFFF;
        v53 = *(intArray + 2);
        if (v7 + 14 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 14));
        }

        v54 = intCopy + 5;
        *(intArray + v52 + 3) = (v48 >> 5) & 0x1FFFFF;
        v55 = *(array + 2);
        if (intCopy + 5 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (intCopy + 5));
        }

        v56 = v7 + 15;
        v57 = *(array + v54 + 2);
        v58 = *(intArray + 2);
        if (v7 + 15 < 0 || v56 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 15));
        }

        v59 = v7 + 16;
        *(intArray + v56 + 3) = HIWORD(v57) | ((v48 & 0x1F) << 16);
        v60 = *(intArray + 2);
        if (v7 + 16 < 0 || v59 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (v7 + 16));
        }

        v61 = v7 + 17;
        *(intArray + v59 + 3) = (v57 >> 27) & 0x1FFFFF;
        v62 = *(intArray + 2);
        if (v7 + 17 < 0 || v61 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (v7 + 17));
        }

        v63 = intCopy + 6;
        *(intArray + v61 + 3) = (v57 >> 6) & 0x1FFFFF;
        v64 = *(array + 2);
        if (intCopy + 6 < 0 || v63 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (intCopy + 6));
        }

        v65 = v7 + 18;
        v66 = *(array + v63 + 2);
        v67 = *(intArray + 2);
        if (v7 + 18 < 0 || v65 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (v7 + 18));
        }

        v68 = v7 + 19;
        *(intArray + v65 + 3) = (v66 >> 49) & 0x7FFF | ((v57 & 0x3F) << 15);
        v69 = *(intArray + 2);
        if (v7 + 19 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 19));
        }

        v70 = v7 + 20;
        *(intArray + v68 + 3) = (v66 >> 28) & 0x1FFFFF;
        v71 = *(intArray + 2);
        if (v7 + 20 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 20));
        }

        v72 = intCopy + 7;
        *(intArray + v70 + 3) = (v66 >> 7) & 0x1FFFFF;
        v73 = *(array + 2);
        if (intCopy + 7 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (intCopy + 7));
        }

        v74 = v7 + 21;
        v75 = *(array + v72 + 2);
        v76 = *(intArray + 2);
        if (v7 + 21 < 0 || v74 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 21));
        }

        v77 = v7 + 22;
        *(intArray + v74 + 3) = (v75 >> 50) & 0x3FFF | ((v66 & 0x7F) << 14);
        v78 = *(intArray + 2);
        if (v7 + 22 < 0 || v77 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (v7 + 22));
        }

        v79 = v7 + 23;
        *(intArray + v77 + 3) = (v75 >> 29) & 0x1FFFFF;
        v80 = *(intArray + 2);
        if (v7 + 23 < 0 || v79 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 23));
        }

        v81 = intCopy + 8;
        *(intArray + v79 + 3) = (v75 >> 8) & 0x1FFFFF;
        v82 = *(array + 2);
        if (intCopy + 8 < 0 || v81 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (intCopy + 8));
        }

        v83 = v7 + 24;
        v84 = *(array + v81 + 2);
        v85 = *(intArray + 2);
        if (v7 + 24 < 0 || v83 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 24));
        }

        v86 = v7 + 25;
        *(intArray + v83 + 3) = (v84 >> 51) & 0x1FFF | (v75 << 13);
        v87 = *(intArray + 2);
        if (v7 + 25 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 25));
        }

        v88 = v7 + 26;
        *(intArray + v86 + 3) = (v84 >> 30) & 0x1FFFFF;
        v89 = *(intArray + 2);
        if (v7 + 26 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 26));
        }

        v90 = intCopy + 9;
        *(intArray + v88 + 3) = (v84 >> 9) & 0x1FFFFF;
        v91 = *(array + 2);
        if (intCopy + 9 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (intCopy + 9));
        }

        v92 = v7 + 27;
        v93 = *(array + v90 + 2);
        v94 = *(intArray + 2);
        if (v7 + 27 < 0 || v92 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (v7 + 27));
        }

        v95 = v7 + 28;
        *(intArray + v92 + 3) = (v93 >> 52) & 0xFFF | ((v84 & 0x1FF) << 12);
        v96 = *(intArray + 2);
        if (v7 + 28 < 0 || v95 >= v96)
        {
          IOSArray_throwOutOfBoundsWithMsg(v96, (v7 + 28));
        }

        v97 = v7 + 29;
        *(intArray + v95 + 3) = (v93 >> 31) & 0x1FFFFF;
        v98 = *(intArray + 2);
        if (v7 + 29 < 0 || v97 >= v98)
        {
          IOSArray_throwOutOfBoundsWithMsg(v98, (v7 + 29));
        }

        v99 = intCopy + 10;
        *(intArray + v97 + 3) = (v93 >> 10) & 0x1FFFFF;
        v100 = *(array + 2);
        if (intCopy + 10 < 0 || v99 >= v100)
        {
          IOSArray_throwOutOfBoundsWithMsg(v100, (intCopy + 10));
        }

        v101 = v7 + 30;
        v102 = *(array + v99 + 2);
        v103 = *(intArray + 2);
        if (v7 + 30 < 0 || v101 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (v7 + 30));
        }

        v104 = v7 + 31;
        *(intArray + v101 + 3) = (v102 >> 53) & 0x7FF | ((v93 & 0x3FF) << 11);
        v105 = *(intArray + 2);
        if (v7 + 31 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (v7 + 31));
        }

        v106 = v7 + 32;
        *(intArray + v104 + 3) = HIDWORD(v102) & 0x1FFFFF;
        v107 = *(intArray + 2);
        if (v7 + 32 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 32));
        }

        v108 = intCopy + 11;
        *(intArray + v106 + 3) = v102 >> 11;
        v109 = *(array + 2);
        if (intCopy + 11 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (intCopy + 11));
        }

        v110 = v7 + 33;
        v111 = *(array + v108 + 2);
        v112 = *(intArray + 2);
        if (v7 + 33 < 0 || v110 >= v112)
        {
          IOSArray_throwOutOfBoundsWithMsg(v112, (v7 + 33));
        }

        v113 = v7 + 34;
        *(intArray + v110 + 3) = (v111 >> 54) & 0x3FF | ((v102 & 0x7FF) << 10);
        v114 = *(intArray + 2);
        if (v7 + 34 < 0 || v113 >= v114)
        {
          IOSArray_throwOutOfBoundsWithMsg(v114, (v7 + 34));
        }

        v115 = v7 + 35;
        *(intArray + v113 + 3) = (v111 >> 33) & 0x1FFFFF;
        v116 = *(intArray + 2);
        if (v7 + 35 < 0 || v115 >= v116)
        {
          IOSArray_throwOutOfBoundsWithMsg(v116, (v7 + 35));
        }

        v117 = intCopy + 12;
        *(intArray + v115 + 3) = (v111 >> 12) & 0x1FFFFF;
        v118 = *(array + 2);
        if (intCopy + 12 < 0 || v117 >= v118)
        {
          IOSArray_throwOutOfBoundsWithMsg(v118, (intCopy + 12));
        }

        v119 = v7 + 36;
        v120 = *(array + v117 + 2);
        v121 = *(intArray + 2);
        if (v7 + 36 < 0 || v119 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (v7 + 36));
        }

        v122 = v7 + 37;
        *(intArray + v119 + 3) = (v120 >> 55) & 0x1FF | ((v111 & 0xFFF) << 9);
        v123 = *(intArray + 2);
        if (v7 + 37 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (v7 + 37));
        }

        v124 = v7 + 38;
        *(intArray + v122 + 3) = (v120 >> 34) & 0x1FFFFF;
        v125 = *(intArray + 2);
        if (v7 + 38 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (v7 + 38));
        }

        v126 = intCopy + 13;
        *(intArray + v124 + 3) = (v120 >> 13) & 0x1FFFFF;
        v127 = *(array + 2);
        if (intCopy + 13 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (intCopy + 13));
        }

        v128 = v7 + 39;
        v129 = *(array + v126 + 2);
        v130 = *(intArray + 2);
        if (v7 + 39 < 0 || v128 >= v130)
        {
          IOSArray_throwOutOfBoundsWithMsg(v130, (v7 + 39));
        }

        v131 = v7 + 40;
        *(intArray + v128 + 3) = HIBYTE(v129) | ((v120 & 0x1FFF) << 8);
        v132 = *(intArray + 2);
        if (v7 + 40 < 0 || v131 >= v132)
        {
          IOSArray_throwOutOfBoundsWithMsg(v132, (v7 + 40));
        }

        v133 = v7 + 41;
        *(intArray + v131 + 3) = (v129 >> 35) & 0x1FFFFF;
        v134 = *(intArray + 2);
        if (v7 + 41 < 0 || v133 >= v134)
        {
          IOSArray_throwOutOfBoundsWithMsg(v134, (v7 + 41));
        }

        v135 = intCopy + 14;
        *(intArray + v133 + 3) = (v129 >> 14) & 0x1FFFFF;
        v136 = *(array + 2);
        if (intCopy + 14 < 0 || v135 >= v136)
        {
          IOSArray_throwOutOfBoundsWithMsg(v136, (intCopy + 14));
        }

        v137 = v7 + 42;
        v138 = *(array + v135 + 2);
        v139 = *(intArray + 2);
        if (v7 + 42 < 0 || v137 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 42));
        }

        v140 = v7 + 43;
        *(intArray + v137 + 3) = (v138 >> 57) & 0x7F | ((v129 & 0x3FFF) << 7);
        v141 = *(intArray + 2);
        if (v7 + 43 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 43));
        }

        v142 = v7 + 44;
        *(intArray + v140 + 3) = (v138 >> 36) & 0x1FFFFF;
        v143 = *(intArray + 2);
        if (v7 + 44 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 44));
        }

        v144 = intCopy + 15;
        *(intArray + v142 + 3) = (v138 >> 15) & 0x1FFFFF;
        v145 = *(array + 2);
        if (intCopy + 15 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (intCopy + 15));
        }

        v146 = v7 + 45;
        v147 = *(array + v144 + 2);
        v148 = *(intArray + 2);
        if (v7 + 45 < 0 || v146 >= v148)
        {
          IOSArray_throwOutOfBoundsWithMsg(v148, (v7 + 45));
        }

        v149 = v7 + 46;
        *(intArray + v146 + 3) = (v147 >> 58) & 0x3F | ((v138 & 0x7FFF) << 6);
        v150 = *(intArray + 2);
        if (v7 + 46 < 0 || v149 >= v150)
        {
          IOSArray_throwOutOfBoundsWithMsg(v150, (v7 + 46));
        }

        v151 = v7 + 47;
        *(intArray + v149 + 3) = (v147 >> 37) & 0x1FFFFF;
        v152 = *(intArray + 2);
        if (v7 + 47 < 0 || v151 >= v152)
        {
          IOSArray_throwOutOfBoundsWithMsg(v152, (v7 + 47));
        }

        v153 = intCopy + 16;
        *(intArray + v151 + 3) = (v147 >> 16) & 0x1FFFFF;
        v154 = *(array + 2);
        if (intCopy + 16 < 0 || v153 >= v154)
        {
          IOSArray_throwOutOfBoundsWithMsg(v154, (intCopy + 16));
        }

        v155 = v7 + 48;
        v156 = *(array + v153 + 2);
        v157 = *(intArray + 2);
        if (v7 + 48 < 0 || v155 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (v7 + 48));
        }

        v158 = v7 + 49;
        *(intArray + v155 + 3) = (v156 >> 59) & 0x1F | (32 * v147);
        v159 = *(intArray + 2);
        if (v7 + 49 < 0 || v158 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (v7 + 49));
        }

        v160 = v7 + 50;
        *(intArray + v158 + 3) = (v156 >> 38) & 0x1FFFFF;
        v161 = *(intArray + 2);
        if (v7 + 50 < 0 || v160 >= v161)
        {
          IOSArray_throwOutOfBoundsWithMsg(v161, (v7 + 50));
        }

        v162 = intCopy + 17;
        *(intArray + v160 + 3) = (v156 >> 17) & 0x1FFFFF;
        v163 = *(array + 2);
        if (intCopy + 17 < 0 || v162 >= v163)
        {
          IOSArray_throwOutOfBoundsWithMsg(v163, (intCopy + 17));
        }

        v164 = v7 + 51;
        v165 = *(array + v162 + 2);
        v166 = *(intArray + 2);
        if (v7 + 51 < 0 || v164 >= v166)
        {
          IOSArray_throwOutOfBoundsWithMsg(v166, (v7 + 51));
        }

        v167 = v7 + 52;
        *(intArray + v164 + 3) = (v165 >> 60) & 0xF | (16 * (v156 & 0x1FFFF));
        v168 = *(intArray + 2);
        if (v7 + 52 < 0 || v167 >= v168)
        {
          IOSArray_throwOutOfBoundsWithMsg(v168, (v7 + 52));
        }

        v169 = v7 + 53;
        *(intArray + v167 + 3) = (v165 >> 39) & 0x1FFFFF;
        v170 = *(intArray + 2);
        if (v7 + 53 < 0 || v169 >= v170)
        {
          IOSArray_throwOutOfBoundsWithMsg(v170, (v7 + 53));
        }

        v171 = intCopy + 18;
        *(intArray + v169 + 3) = (v165 >> 18) & 0x1FFFFF;
        v172 = *(array + 2);
        if (intCopy + 18 < 0 || v171 >= v172)
        {
          IOSArray_throwOutOfBoundsWithMsg(v172, (intCopy + 18));
        }

        v173 = v7 + 54;
        v174 = *(array + v171 + 2);
        v175 = *(intArray + 2);
        if (v7 + 54 < 0 || v173 >= v175)
        {
          IOSArray_throwOutOfBoundsWithMsg(v175, (v7 + 54));
        }

        v176 = v7 + 55;
        *(intArray + v173 + 3) = (v174 >> 61) & 7 | (8 * (v165 & 0x3FFFF));
        v177 = *(intArray + 2);
        if (v7 + 55 < 0 || v176 >= v177)
        {
          IOSArray_throwOutOfBoundsWithMsg(v177, (v7 + 55));
        }

        v178 = v7 + 56;
        *(intArray + v176 + 3) = (v174 >> 40) & 0x1FFFFF;
        v179 = *(intArray + 2);
        if (v7 + 56 < 0 || v178 >= v179)
        {
          IOSArray_throwOutOfBoundsWithMsg(v179, (v7 + 56));
        }

        v180 = intCopy + 19;
        *(intArray + v178 + 3) = (v174 >> 19) & 0x1FFFFF;
        v181 = *(array + 2);
        if (intCopy + 19 < 0 || v180 >= v181)
        {
          IOSArray_throwOutOfBoundsWithMsg(v181, (intCopy + 19));
        }

        v182 = v7 + 57;
        v183 = *(array + v180 + 2);
        v184 = *(intArray + 2);
        if (v7 + 57 < 0 || v182 >= v184)
        {
          IOSArray_throwOutOfBoundsWithMsg(v184, (v7 + 57));
        }

        v185 = v7 + 58;
        *(intArray + v182 + 3) = (v183 >> 62) & 3 | (4 * (v174 & 0x7FFFF));
        v186 = *(intArray + 2);
        if (v7 + 58 < 0 || v185 >= v186)
        {
          IOSArray_throwOutOfBoundsWithMsg(v186, (v7 + 58));
        }

        v187 = v7 + 59;
        *(intArray + v185 + 3) = (v183 >> 41) & 0x1FFFFF;
        v188 = *(intArray + 2);
        if (v7 + 59 < 0 || v187 >= v188)
        {
          IOSArray_throwOutOfBoundsWithMsg(v188, (v7 + 59));
        }

        v189 = intCopy + 20;
        *(intArray + v187 + 3) = (v183 >> 20) & 0x1FFFFF;
        v190 = *(array + 2);
        if (intCopy + 20 < 0 || v189 >= v190)
        {
          IOSArray_throwOutOfBoundsWithMsg(v190, (intCopy + 20));
        }

        v191 = v7 + 60;
        v192 = *(array + v189 + 2);
        v193 = *(intArray + 2);
        if (v7 + 60 < 0 || v191 >= v193)
        {
          IOSArray_throwOutOfBoundsWithMsg(v193, (v7 + 60));
        }

        v194 = v7 + 61;
        *(intArray + v191 + 3) = (v192 >> 63) | (2 * (v183 & 0xFFFFF));
        v195 = *(intArray + 2);
        if (v7 + 61 < 0 || v194 >= v195)
        {
          IOSArray_throwOutOfBoundsWithMsg(v195, (v7 + 61));
        }

        v196 = v7 + 62;
        *(intArray + v194 + 3) = (v192 >> 42) & 0x1FFFFF;
        v197 = *(intArray + 2);
        if (v7 + 62 < 0 || v196 >= v197)
        {
          IOSArray_throwOutOfBoundsWithMsg(v197, (v7 + 62));
        }

        v198 = v7 + 63;
        *(intArray + v196 + 3) = (v192 >> 21) & 0x1FFFFF;
        v199 = *(intArray + 2);
        if (v7 + 63 < 0 || v198 >= v199)
        {
          IOSArray_throwOutOfBoundsWithMsg(v199, (v7 + 63));
        }

        int = intCopy + 21;
        v7 = (v7 + 64);
        *(intArray + v198 + 3) = v192 & 0x1FFFFF;
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
        *(intArray + v7 + 3) = (*(array + intCopy + 12) << 13) | (32 * v13) | (v14 >> 3);
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
        *(intArray + v22 + 3) = ((v14 & 7) << 18) | (v19 << 10) | (4 * v21) | (v23 >> 6);
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

        v29 = v7 + 2;
        v30 = *(array + v27 + 12);
        v31 = *(intArray + 2);
        if (v7 + 2 < 0 || v29 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 2));
        }

        v32 = intCopy + 8;
        *(intArray + v29 + 3) = ((v23 & 0x3F) << 15) | (v28 << 7) | (v30 >> 1);
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

        v36 = intCopy + 10;
        v37 = *(array + v34 + 12);
        if (intCopy + 10 < 0 || v36 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (intCopy + 10));
        }

        v38 = v7 + 3;
        v39 = *(array + v36 + 12);
        v40 = *(intArray + 2);
        if (v7 + 3 < 0 || v38 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 3));
        }

        v41 = intCopy + 11;
        *(intArray + v38 + 3) = ((v30 & 1) << 20) | (v35 << 12) | (16 * v37) | (v39 >> 4);
        v42 = *(array + 2);
        if (intCopy + 11 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (intCopy + 11));
        }

        v43 = intCopy + 12;
        v44 = *(array + v41 + 12);
        if (intCopy + 12 < 0 || v43 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (intCopy + 12));
        }

        v45 = intCopy + 13;
        v46 = *(array + v43 + 12);
        if (intCopy + 13 < 0 || v45 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (intCopy + 13));
        }

        v47 = v7 + 4;
        v48 = *(array + v45 + 12);
        v49 = *(intArray + 2);
        if (v7 + 4 < 0 || v47 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 4));
        }

        v50 = intCopy + 14;
        *(intArray + v47 + 3) = ((v39 & 0xF) << 17) | (v44 << 9) | (2 * v46) | (v48 >> 7);
        v51 = *(array + 2);
        if (intCopy + 14 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (intCopy + 14));
        }

        v52 = intCopy + 15;
        v53 = *(array + v50 + 12);
        if (intCopy + 15 < 0 || v52 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (intCopy + 15));
        }

        v54 = v7 + 5;
        v55 = *(array + v52 + 12);
        v56 = *(intArray + 2);
        if (v7 + 5 < 0 || v54 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 5));
        }

        v57 = intCopy + 16;
        *(intArray + v54 + 3) = ((v48 & 0x7F) << 14) | (v53 << 6) | (v55 >> 2);
        v58 = *(array + 2);
        if (intCopy + 16 < 0 || v57 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (intCopy + 16));
        }

        v59 = intCopy + 17;
        v60 = *(array + v57 + 12);
        if (intCopy + 17 < 0 || v59 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (intCopy + 17));
        }

        v61 = intCopy + 18;
        v62 = *(array + v59 + 12);
        if (intCopy + 18 < 0 || v61 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (intCopy + 18));
        }

        v63 = v7 + 6;
        v64 = *(array + v61 + 12);
        v65 = *(intArray + 2);
        if (v7 + 6 < 0 || v63 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 6));
        }

        v66 = intCopy + 19;
        *(intArray + v63 + 3) = ((v55 & 3) << 19) | (v60 << 11) | (8 * v62) | (v64 >> 5);
        v67 = *(array + 2);
        if (intCopy + 19 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (intCopy + 19));
        }

        v68 = intCopy + 20;
        v69 = *(array + v66 + 12);
        if (intCopy + 20 < 0 || v68 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (intCopy + 20));
        }

        v70 = v7 + 7;
        v71 = *(array + v68 + 12);
        v72 = *(intArray + 2);
        if (v7 + 7 < 0 || v70 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 7));
        }

        *(intArray + v70 + 3) = ((v64 & 0x1F) << 16) | (v69 << 8) | v71;
        int = intCopy + 21;
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
        *(longArray + v7 + 2) = v12 >> 43;
        v15 = *(longArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(longArray + v14 + 2) = (v12 >> 22) & 0x1FFFFF;
        v17 = *(longArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = (int + 1);
        *(longArray + v16 + 2) = (v12 >> 1) & 0x1FFFFF;
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
        *(longArray + v20 + 2) = (v23 >> 44) & 0x1FFFFF;
        v25 = *(longArray + 2);
        if (v7 + 4 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 4));
        }

        v26 = v7 + 5;
        *(longArray + v24 + 2) = (v21 >> 23) & 0x1FFFFF;
        v27 = *(longArray + 2);
        if (v7 + 5 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 5));
        }

        v28 = intCopy + 2;
        *(longArray + v26 + 2) = (v21 >> 2) & 0x1FFFFF;
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
        *(longArray + v30 + 2) = (v33 >> 45) & 0x1FFFFF;
        v35 = *(longArray + 2);
        if (v7 + 7 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 7));
        }

        v36 = v7 + 8;
        *(longArray + v34 + 2) = (v31 >> 24) & 0x1FFFFF;
        v37 = *(longArray + 2);
        if (v7 + 8 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 8));
        }

        v38 = intCopy + 3;
        *(longArray + v36 + 2) = (v31 >> 3) & 0x1FFFFF;
        v39 = *(array + 2);
        if (intCopy + 3 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (intCopy + 3));
        }

        v40 = v7 + 9;
        v41 = *(array + v38 + 2);
        v42 = *(longArray + 2);
        if (v7 + 9 < 0 || v40 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 9));
        }

        *(&v43 + 1) = v31;
        *&v43 = *(array + v38 + 2);
        v44 = v7 + 10;
        *(longArray + v40 + 2) = (v43 >> 46) & 0x1FFFFF;
        v45 = *(longArray + 2);
        if (v7 + 10 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 10));
        }

        v46 = v7 + 11;
        *(longArray + v44 + 2) = (v41 >> 25) & 0x1FFFFF;
        v47 = *(longArray + 2);
        if (v7 + 11 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 11));
        }

        v48 = intCopy + 4;
        *(longArray + v46 + 2) = (v41 >> 4) & 0x1FFFFF;
        v49 = *(array + 2);
        if (intCopy + 4 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (intCopy + 4));
        }

        v50 = v7 + 12;
        v51 = *(array + v48 + 2);
        v52 = *(longArray + 2);
        if (v7 + 12 < 0 || v50 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 12));
        }

        *(&v53 + 1) = v41;
        *&v53 = *(array + v48 + 2);
        v54 = v7 + 13;
        *(longArray + v50 + 2) = (v53 >> 47) & 0x1FFFFF;
        v55 = *(longArray + 2);
        if (v7 + 13 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 13));
        }

        v56 = v7 + 14;
        *(longArray + v54 + 2) = (v51 >> 26) & 0x1FFFFF;
        v57 = *(longArray + 2);
        if (v7 + 14 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 14));
        }

        v58 = intCopy + 5;
        *(longArray + v56 + 2) = (v51 >> 5) & 0x1FFFFF;
        v59 = *(array + 2);
        if (intCopy + 5 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (intCopy + 5));
        }

        v60 = v7 + 15;
        v61 = *(array + v58 + 2);
        v62 = *(longArray + 2);
        if (v7 + 15 < 0 || v60 >= v62)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, (v7 + 15));
        }

        *(&v63 + 1) = v51;
        *&v63 = *(array + v58 + 2);
        v64 = v7 + 16;
        *(longArray + v60 + 2) = (v63 >> 48) & 0x1FFFFF;
        v65 = *(longArray + 2);
        if (v7 + 16 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 16));
        }

        v66 = v7 + 17;
        *(longArray + v64 + 2) = (v61 >> 27) & 0x1FFFFF;
        v67 = *(longArray + 2);
        if (v7 + 17 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (v7 + 17));
        }

        v68 = intCopy + 6;
        *(longArray + v66 + 2) = (v61 >> 6) & 0x1FFFFF;
        v69 = *(array + 2);
        if (intCopy + 6 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (intCopy + 6));
        }

        v70 = v7 + 18;
        v71 = *(array + v68 + 2);
        v72 = *(longArray + 2);
        if (v7 + 18 < 0 || v70 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 18));
        }

        *(&v73 + 1) = v61;
        *&v73 = *(array + v68 + 2);
        v74 = v7 + 19;
        *(longArray + v70 + 2) = (v73 >> 49) & 0x1FFFFF;
        v75 = *(longArray + 2);
        if (v7 + 19 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 19));
        }

        v76 = v7 + 20;
        *(longArray + v74 + 2) = (v71 >> 28) & 0x1FFFFF;
        v77 = *(longArray + 2);
        if (v7 + 20 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 20));
        }

        v78 = intCopy + 7;
        *(longArray + v76 + 2) = (v71 >> 7) & 0x1FFFFF;
        v79 = *(array + 2);
        if (intCopy + 7 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (intCopy + 7));
        }

        v80 = v7 + 21;
        v81 = *(array + v78 + 2);
        v82 = *(longArray + 2);
        if (v7 + 21 < 0 || v80 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 21));
        }

        *(&v83 + 1) = v71;
        *&v83 = *(array + v78 + 2);
        v84 = v7 + 22;
        *(longArray + v80 + 2) = (v83 >> 50) & 0x1FFFFF;
        v85 = *(longArray + 2);
        if (v7 + 22 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 22));
        }

        v86 = v7 + 23;
        *(longArray + v84 + 2) = (v81 >> 29) & 0x1FFFFF;
        v87 = *(longArray + 2);
        if (v7 + 23 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 23));
        }

        v88 = intCopy + 8;
        *(longArray + v86 + 2) = (v81 >> 8) & 0x1FFFFF;
        v89 = *(array + 2);
        if (intCopy + 8 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (intCopy + 8));
        }

        v90 = v7 + 24;
        v91 = *(array + v88 + 2);
        v92 = *(longArray + 2);
        if (v7 + 24 < 0 || v90 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 24));
        }

        *(&v93 + 1) = v81;
        *&v93 = *(array + v88 + 2);
        v94 = v7 + 25;
        *(longArray + v90 + 2) = (v93 >> 51) & 0x1FFFFF;
        v95 = *(longArray + 2);
        if (v7 + 25 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (v7 + 25));
        }

        v96 = v7 + 26;
        *(longArray + v94 + 2) = (v91 >> 30) & 0x1FFFFF;
        v97 = *(longArray + 2);
        if (v7 + 26 < 0 || v96 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (v7 + 26));
        }

        v98 = intCopy + 9;
        *(longArray + v96 + 2) = (v91 >> 9) & 0x1FFFFF;
        v99 = *(array + 2);
        if (intCopy + 9 < 0 || v98 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (intCopy + 9));
        }

        v100 = v7 + 27;
        v101 = *(array + v98 + 2);
        v102 = *(longArray + 2);
        if (v7 + 27 < 0 || v100 >= v102)
        {
          IOSArray_throwOutOfBoundsWithMsg(v102, (v7 + 27));
        }

        *(&v103 + 1) = v91;
        *&v103 = *(array + v98 + 2);
        v104 = v7 + 28;
        *(longArray + v100 + 2) = (v103 >> 52) & 0x1FFFFF;
        v105 = *(longArray + 2);
        if (v7 + 28 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (v7 + 28));
        }

        v106 = v7 + 29;
        *(longArray + v104 + 2) = (v101 >> 31) & 0x1FFFFF;
        v107 = *(longArray + 2);
        if (v7 + 29 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 29));
        }

        v108 = intCopy + 10;
        *(longArray + v106 + 2) = (v101 >> 10) & 0x1FFFFF;
        v109 = *(array + 2);
        if (intCopy + 10 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (intCopy + 10));
        }

        v110 = v7 + 30;
        v111 = *(array + v108 + 2);
        v112 = *(longArray + 2);
        if (v7 + 30 < 0 || v110 >= v112)
        {
          IOSArray_throwOutOfBoundsWithMsg(v112, (v7 + 30));
        }

        *(&v113 + 1) = v101;
        *&v113 = *(array + v108 + 2);
        v114 = v7 + 31;
        *(longArray + v110 + 2) = (v113 >> 53) & 0x1FFFFF;
        v115 = *(longArray + 2);
        if (v7 + 31 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 31));
        }

        v116 = v7 + 32;
        *(longArray + v114 + 2) = HIDWORD(v111) & 0x1FFFFF;
        v117 = *(longArray + 2);
        if (v7 + 32 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 32));
        }

        v118 = intCopy + 11;
        *(longArray + v116 + 2) = v111 >> 11;
        v119 = *(array + 2);
        if (intCopy + 11 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (intCopy + 11));
        }

        v120 = v7 + 33;
        v121 = *(array + v118 + 2);
        v122 = *(longArray + 2);
        if (v7 + 33 < 0 || v120 >= v122)
        {
          IOSArray_throwOutOfBoundsWithMsg(v122, (v7 + 33));
        }

        *(&v123 + 1) = v111;
        *&v123 = *(array + v118 + 2);
        v124 = v7 + 34;
        *(longArray + v120 + 2) = (v123 >> 54) & 0x1FFFFF;
        v125 = *(longArray + 2);
        if (v7 + 34 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (v7 + 34));
        }

        v126 = v7 + 35;
        *(longArray + v124 + 2) = (v121 >> 33) & 0x1FFFFF;
        v127 = *(longArray + 2);
        if (v7 + 35 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (v7 + 35));
        }

        v128 = intCopy + 12;
        *(longArray + v126 + 2) = (v121 >> 12) & 0x1FFFFF;
        v129 = *(array + 2);
        if (intCopy + 12 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (intCopy + 12));
        }

        v130 = v7 + 36;
        v131 = *(array + v128 + 2);
        v132 = *(longArray + 2);
        if (v7 + 36 < 0 || v130 >= v132)
        {
          IOSArray_throwOutOfBoundsWithMsg(v132, (v7 + 36));
        }

        *(&v133 + 1) = v121;
        *&v133 = *(array + v128 + 2);
        v134 = v7 + 37;
        *(longArray + v130 + 2) = (v133 >> 55) & 0x1FFFFF;
        v135 = *(longArray + 2);
        if (v7 + 37 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (v7 + 37));
        }

        v136 = v7 + 38;
        *(longArray + v134 + 2) = (v131 >> 34) & 0x1FFFFF;
        v137 = *(longArray + 2);
        if (v7 + 38 < 0 || v136 >= v137)
        {
          IOSArray_throwOutOfBoundsWithMsg(v137, (v7 + 38));
        }

        v138 = intCopy + 13;
        *(longArray + v136 + 2) = (v131 >> 13) & 0x1FFFFF;
        v139 = *(array + 2);
        if (intCopy + 13 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (intCopy + 13));
        }

        v140 = v7 + 39;
        v141 = *(array + v138 + 2);
        v142 = *(longArray + 2);
        if (v7 + 39 < 0 || v140 >= v142)
        {
          IOSArray_throwOutOfBoundsWithMsg(v142, (v7 + 39));
        }

        *(&v143 + 1) = v131;
        *&v143 = *(array + v138 + 2);
        v144 = v7 + 40;
        *(longArray + v140 + 2) = (v143 >> 56) & 0x1FFFFF;
        v145 = *(longArray + 2);
        if (v7 + 40 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 40));
        }

        v146 = v7 + 41;
        *(longArray + v144 + 2) = (v141 >> 35) & 0x1FFFFF;
        v147 = *(longArray + 2);
        if (v7 + 41 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (v7 + 41));
        }

        v148 = intCopy + 14;
        *(longArray + v146 + 2) = (v141 >> 14) & 0x1FFFFF;
        v149 = *(array + 2);
        if (intCopy + 14 < 0 || v148 >= v149)
        {
          IOSArray_throwOutOfBoundsWithMsg(v149, (intCopy + 14));
        }

        v150 = v7 + 42;
        v151 = *(array + v148 + 2);
        v152 = *(longArray + 2);
        if (v7 + 42 < 0 || v150 >= v152)
        {
          IOSArray_throwOutOfBoundsWithMsg(v152, (v7 + 42));
        }

        *(&v153 + 1) = v141;
        *&v153 = *(array + v148 + 2);
        v154 = v7 + 43;
        *(longArray + v150 + 2) = (v153 >> 57) & 0x1FFFFF;
        v155 = *(longArray + 2);
        if (v7 + 43 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 43));
        }

        v156 = v7 + 44;
        *(longArray + v154 + 2) = (v151 >> 36) & 0x1FFFFF;
        v157 = *(longArray + 2);
        if (v7 + 44 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (v7 + 44));
        }

        v158 = intCopy + 15;
        *(longArray + v156 + 2) = (v151 >> 15) & 0x1FFFFF;
        v159 = *(array + 2);
        if (intCopy + 15 < 0 || v158 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (intCopy + 15));
        }

        v160 = v7 + 45;
        v161 = *(array + v158 + 2);
        v162 = *(longArray + 2);
        if (v7 + 45 < 0 || v160 >= v162)
        {
          IOSArray_throwOutOfBoundsWithMsg(v162, (v7 + 45));
        }

        *(&v163 + 1) = v151;
        *&v163 = *(array + v158 + 2);
        v164 = v7 + 46;
        *(longArray + v160 + 2) = (v163 >> 58) & 0x1FFFFF;
        v165 = *(longArray + 2);
        if (v7 + 46 < 0 || v164 >= v165)
        {
          IOSArray_throwOutOfBoundsWithMsg(v165, (v7 + 46));
        }

        v166 = v7 + 47;
        *(longArray + v164 + 2) = (v161 >> 37) & 0x1FFFFF;
        v167 = *(longArray + 2);
        if (v7 + 47 < 0 || v166 >= v167)
        {
          IOSArray_throwOutOfBoundsWithMsg(v167, (v7 + 47));
        }

        v168 = intCopy + 16;
        *(longArray + v166 + 2) = (v161 >> 16) & 0x1FFFFF;
        v169 = *(array + 2);
        if (intCopy + 16 < 0 || v168 >= v169)
        {
          IOSArray_throwOutOfBoundsWithMsg(v169, (intCopy + 16));
        }

        v170 = v7 + 48;
        v171 = *(array + v168 + 2);
        v172 = *(longArray + 2);
        if (v7 + 48 < 0 || v170 >= v172)
        {
          IOSArray_throwOutOfBoundsWithMsg(v172, (v7 + 48));
        }

        *(&v173 + 1) = v161;
        *&v173 = *(array + v168 + 2);
        v174 = v7 + 49;
        *(longArray + v170 + 2) = (v173 >> 59) & 0x1FFFFF;
        v175 = *(longArray + 2);
        if (v7 + 49 < 0 || v174 >= v175)
        {
          IOSArray_throwOutOfBoundsWithMsg(v175, (v7 + 49));
        }

        v176 = v7 + 50;
        *(longArray + v174 + 2) = (v171 >> 38) & 0x1FFFFF;
        v177 = *(longArray + 2);
        if (v7 + 50 < 0 || v176 >= v177)
        {
          IOSArray_throwOutOfBoundsWithMsg(v177, (v7 + 50));
        }

        v178 = intCopy + 17;
        *(longArray + v176 + 2) = (v171 >> 17) & 0x1FFFFF;
        v179 = *(array + 2);
        if (intCopy + 17 < 0 || v178 >= v179)
        {
          IOSArray_throwOutOfBoundsWithMsg(v179, (intCopy + 17));
        }

        v180 = v7 + 51;
        v181 = *(array + v178 + 2);
        v182 = *(longArray + 2);
        if (v7 + 51 < 0 || v180 >= v182)
        {
          IOSArray_throwOutOfBoundsWithMsg(v182, (v7 + 51));
        }

        *(&v183 + 1) = v171;
        *&v183 = *(array + v178 + 2);
        v184 = v7 + 52;
        *(longArray + v180 + 2) = (v183 >> 60) & 0x1FFFFF;
        v185 = *(longArray + 2);
        if (v7 + 52 < 0 || v184 >= v185)
        {
          IOSArray_throwOutOfBoundsWithMsg(v185, (v7 + 52));
        }

        v186 = v7 + 53;
        *(longArray + v184 + 2) = (v181 >> 39) & 0x1FFFFF;
        v187 = *(longArray + 2);
        if (v7 + 53 < 0 || v186 >= v187)
        {
          IOSArray_throwOutOfBoundsWithMsg(v187, (v7 + 53));
        }

        v188 = intCopy + 18;
        *(longArray + v186 + 2) = (v181 >> 18) & 0x1FFFFF;
        v189 = *(array + 2);
        if (intCopy + 18 < 0 || v188 >= v189)
        {
          IOSArray_throwOutOfBoundsWithMsg(v189, (intCopy + 18));
        }

        v190 = v7 + 54;
        v191 = *(array + v188 + 2);
        v192 = *(longArray + 2);
        if (v7 + 54 < 0 || v190 >= v192)
        {
          IOSArray_throwOutOfBoundsWithMsg(v192, (v7 + 54));
        }

        *(&v193 + 1) = v181;
        *&v193 = *(array + v188 + 2);
        v194 = v7 + 55;
        *(longArray + v190 + 2) = (v193 >> 61) & 0x1FFFFF;
        v195 = *(longArray + 2);
        if (v7 + 55 < 0 || v194 >= v195)
        {
          IOSArray_throwOutOfBoundsWithMsg(v195, (v7 + 55));
        }

        v196 = v7 + 56;
        *(longArray + v194 + 2) = (v191 >> 40) & 0x1FFFFF;
        v197 = *(longArray + 2);
        if (v7 + 56 < 0 || v196 >= v197)
        {
          IOSArray_throwOutOfBoundsWithMsg(v197, (v7 + 56));
        }

        v198 = intCopy + 19;
        *(longArray + v196 + 2) = (v191 >> 19) & 0x1FFFFF;
        v199 = *(array + 2);
        if (intCopy + 19 < 0 || v198 >= v199)
        {
          IOSArray_throwOutOfBoundsWithMsg(v199, (intCopy + 19));
        }

        v200 = v7 + 57;
        v201 = *(array + v198 + 2);
        v202 = *(longArray + 2);
        if (v7 + 57 < 0 || v200 >= v202)
        {
          IOSArray_throwOutOfBoundsWithMsg(v202, (v7 + 57));
        }

        *(&v203 + 1) = v191;
        *&v203 = *(array + v198 + 2);
        v204 = v7 + 58;
        *(longArray + v200 + 2) = (v203 >> 62) & 0x1FFFFF;
        v205 = *(longArray + 2);
        if (v7 + 58 < 0 || v204 >= v205)
        {
          IOSArray_throwOutOfBoundsWithMsg(v205, (v7 + 58));
        }

        v206 = v7 + 59;
        *(longArray + v204 + 2) = (v201 >> 41) & 0x1FFFFF;
        v207 = *(longArray + 2);
        if (v7 + 59 < 0 || v206 >= v207)
        {
          IOSArray_throwOutOfBoundsWithMsg(v207, (v7 + 59));
        }

        v208 = intCopy + 20;
        *(longArray + v206 + 2) = (v201 >> 20) & 0x1FFFFF;
        v209 = *(array + 2);
        if (intCopy + 20 < 0 || v208 >= v209)
        {
          IOSArray_throwOutOfBoundsWithMsg(v209, (intCopy + 20));
        }

        v210 = v7 + 60;
        v211 = *(array + v208 + 2);
        v212 = *(longArray + 2);
        if (v7 + 60 < 0 || v210 >= v212)
        {
          IOSArray_throwOutOfBoundsWithMsg(v212, (v7 + 60));
        }

        *(&v213 + 1) = v201;
        *&v213 = *(array + v208 + 2);
        v214 = v7 + 61;
        *(longArray + v210 + 2) = (v213 >> 63) & 0x1FFFFF;
        v215 = *(longArray + 2);
        if (v7 + 61 < 0 || v214 >= v215)
        {
          IOSArray_throwOutOfBoundsWithMsg(v215, (v7 + 61));
        }

        v216 = v7 + 62;
        *(longArray + v214 + 2) = (v211 >> 42) & 0x1FFFFF;
        v217 = *(longArray + 2);
        if (v7 + 62 < 0 || v216 >= v217)
        {
          IOSArray_throwOutOfBoundsWithMsg(v217, (v7 + 62));
        }

        v218 = v7 + 63;
        *(longArray + v216 + 2) = (v211 >> 21) & 0x1FFFFF;
        v219 = *(longArray + 2);
        if (v7 + 63 < 0 || v218 >= v219)
        {
          IOSArray_throwOutOfBoundsWithMsg(v219, (v7 + 63));
        }

        int = intCopy + 21;
        v7 = (v7 + 64);
        *(longArray + v218 + 2) = v211 & 0x1FFFFF;
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
        *(longArray + v7 + 2) = (*(array + intCopy + 12) << 13) | (32 * v13) | (v14 >> 3);
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
        *(longArray + v22 + 2) = ((v14 & 7) << 18) | (v19 << 10) | (4 * v21) | (v23 >> 6);
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

        v29 = v7 + 2;
        v30 = *(array + v27 + 12);
        v31 = *(longArray + 2);
        if (v7 + 2 < 0 || v29 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 2));
        }

        v32 = intCopy + 8;
        *(longArray + v29 + 2) = ((v23 & 0x3F) << 15) | (v28 << 7) | (v30 >> 1);
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

        v36 = intCopy + 10;
        v37 = *(array + v34 + 12);
        if (intCopy + 10 < 0 || v36 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (intCopy + 10));
        }

        v38 = v7 + 3;
        v39 = *(array + v36 + 12);
        v40 = *(longArray + 2);
        if (v7 + 3 < 0 || v38 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 3));
        }

        v41 = intCopy + 11;
        *(longArray + v38 + 2) = ((v30 & 1) << 20) | (v35 << 12) | (16 * v37) | (v39 >> 4);
        v42 = *(array + 2);
        if (intCopy + 11 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (intCopy + 11));
        }

        v43 = intCopy + 12;
        v44 = *(array + v41 + 12);
        if (intCopy + 12 < 0 || v43 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (intCopy + 12));
        }

        v45 = intCopy + 13;
        v46 = *(array + v43 + 12);
        if (intCopy + 13 < 0 || v45 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (intCopy + 13));
        }

        v47 = v7 + 4;
        v48 = *(array + v45 + 12);
        v49 = *(longArray + 2);
        if (v7 + 4 < 0 || v47 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 4));
        }

        v50 = intCopy + 14;
        *(longArray + v47 + 2) = ((v39 & 0xF) << 17) | (v44 << 9) | (2 * v46) | (v48 >> 7);
        v51 = *(array + 2);
        if (intCopy + 14 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (intCopy + 14));
        }

        v52 = intCopy + 15;
        v53 = *(array + v50 + 12);
        if (intCopy + 15 < 0 || v52 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (intCopy + 15));
        }

        v54 = v7 + 5;
        v55 = *(array + v52 + 12);
        v56 = *(longArray + 2);
        if (v7 + 5 < 0 || v54 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 5));
        }

        v57 = intCopy + 16;
        *(longArray + v54 + 2) = ((v48 & 0x7F) << 14) | (v53 << 6) | (v55 >> 2);
        v58 = *(array + 2);
        if (intCopy + 16 < 0 || v57 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (intCopy + 16));
        }

        v59 = intCopy + 17;
        v60 = *(array + v57 + 12);
        if (intCopy + 17 < 0 || v59 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (intCopy + 17));
        }

        v61 = intCopy + 18;
        v62 = *(array + v59 + 12);
        if (intCopy + 18 < 0 || v61 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (intCopy + 18));
        }

        v63 = v7 + 6;
        v64 = *(array + v61 + 12);
        v65 = *(longArray + 2);
        if (v7 + 6 < 0 || v63 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 6));
        }

        v66 = intCopy + 19;
        *(longArray + v63 + 2) = ((v55 & 3) << 19) | (v60 << 11) | (8 * v62) | (v64 >> 5);
        v67 = *(array + 2);
        if (intCopy + 19 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (intCopy + 19));
        }

        v68 = intCopy + 20;
        v69 = *(array + v66 + 12);
        if (intCopy + 20 < 0 || v68 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (intCopy + 20));
        }

        v70 = v7 + 7;
        v71 = *(array + v68 + 12);
        v72 = *(longArray + 2);
        if (v7 + 7 < 0 || v70 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 7));
        }

        *(longArray + v70 + 2) = ((v64 & 0x1F) << 16) | (v69 << 8) | v71;
        int = intCopy + 21;
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