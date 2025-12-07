@interface OrgApacheLuceneUtilPackedBulkOperationPacked17
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked17

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
        *(intArray + v7 + 3) = v12 >> 47;
        v15 = *(intArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(intArray + v14 + 3) = (v12 >> 30) & 0x1FFFF;
        v17 = *(intArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = (int + 1);
        *(intArray + v16 + 3) = (v12 >> 13) & 0x1FFFF;
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
        *(intArray + v20 + 3) = (v21 >> 60) & 0xF | (16 * (v12 & 0x1FFF));
        v24 = *(intArray + 2);
        if (v7 + 4 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v7 + 4));
        }

        v25 = v7 + 5;
        *(intArray + v23 + 3) = (v21 >> 43) & 0x1FFFF;
        v26 = *(intArray + 2);
        if (v7 + 5 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 5));
        }

        v27 = v7 + 6;
        *(intArray + v25 + 3) = (v21 >> 26) & 0x1FFFF;
        v28 = *(intArray + 2);
        if (v7 + 6 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v7 + 6));
        }

        v29 = intCopy + 2;
        *(intArray + v27 + 3) = (v21 >> 9) & 0x1FFFF;
        v30 = *(array + 2);
        if (intCopy + 2 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (intCopy + 2));
        }

        v31 = v7 + 7;
        v32 = *(array + v29 + 2);
        v33 = *(intArray + 2);
        if (v7 + 7 < 0 || v31 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 7));
        }

        v34 = v7 + 8;
        *(intArray + v31 + 3) = HIBYTE(v32) | ((v21 & 0x1FF) << 8);
        v35 = *(intArray + 2);
        if (v7 + 8 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 8));
        }

        v36 = v7 + 9;
        *(intArray + v34 + 3) = (v32 >> 39) & 0x1FFFF;
        v37 = *(intArray + 2);
        if (v7 + 9 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 9));
        }

        v38 = v7 + 10;
        *(intArray + v36 + 3) = (v32 >> 22) & 0x1FFFF;
        v39 = *(intArray + 2);
        if (v7 + 10 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 10));
        }

        v40 = intCopy + 3;
        *(intArray + v38 + 3) = (v32 >> 5) & 0x1FFFF;
        v41 = *(array + 2);
        if (intCopy + 3 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (intCopy + 3));
        }

        v42 = v7 + 11;
        v43 = *(array + v40 + 2);
        v44 = *(intArray + 2);
        if (v7 + 11 < 0 || v42 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 11));
        }

        v45 = v7 + 12;
        *(intArray + v42 + 3) = (v43 >> 52) & 0xFFF | ((v32 & 0x1F) << 12);
        v46 = *(intArray + 2);
        if (v7 + 12 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 12));
        }

        v47 = v7 + 13;
        *(intArray + v45 + 3) = (v43 >> 35) & 0x1FFFF;
        v48 = *(intArray + 2);
        if (v7 + 13 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 13));
        }

        v49 = v7 + 14;
        *(intArray + v47 + 3) = (v43 >> 18) & 0x1FFFF;
        v50 = *(intArray + 2);
        if (v7 + 14 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 14));
        }

        v51 = intCopy + 4;
        *(intArray + v49 + 3) = (v43 >> 1) & 0x1FFFF;
        v52 = *(array + 2);
        if (intCopy + 4 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (intCopy + 4));
        }

        v53 = v7 + 15;
        v54 = *(array + v51 + 2);
        v55 = *(intArray + 2);
        if (v7 + 15 < 0 || v53 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 15));
        }

        v56 = v7 + 16;
        *(intArray + v53 + 3) = HIWORD(v54) | ((v43 & 1) << 16);
        v57 = *(intArray + 2);
        if (v7 + 16 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 16));
        }

        v58 = v7 + 17;
        *(intArray + v56 + 3) = (v54 >> 31) & 0x1FFFF;
        v59 = *(intArray + 2);
        if (v7 + 17 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 17));
        }

        v60 = intCopy + 5;
        *(intArray + v58 + 3) = (v54 >> 14) & 0x1FFFF;
        v61 = *(array + 2);
        if (intCopy + 5 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (intCopy + 5));
        }

        v62 = v7 + 18;
        v63 = *(array + v60 + 2);
        v64 = *(intArray + 2);
        if (v7 + 18 < 0 || v62 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 18));
        }

        v65 = v7 + 19;
        *(intArray + v62 + 3) = (v63 >> 61) & 7 | (8 * (v54 & 0x3FFF));
        v66 = *(intArray + 2);
        if (v7 + 19 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 19));
        }

        v67 = v7 + 20;
        *(intArray + v65 + 3) = (v63 >> 44) & 0x1FFFF;
        v68 = *(intArray + 2);
        if (v7 + 20 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 20));
        }

        v69 = v7 + 21;
        *(intArray + v67 + 3) = (v63 >> 27) & 0x1FFFF;
        v70 = *(intArray + 2);
        if (v7 + 21 < 0 || v69 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (v7 + 21));
        }

        v71 = intCopy + 6;
        *(intArray + v69 + 3) = (v63 >> 10) & 0x1FFFF;
        v72 = *(array + 2);
        if (intCopy + 6 < 0 || v71 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (intCopy + 6));
        }

        v73 = v7 + 22;
        v74 = *(array + v71 + 2);
        v75 = *(intArray + 2);
        if (v7 + 22 < 0 || v73 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 22));
        }

        v76 = v7 + 23;
        *(intArray + v73 + 3) = (v74 >> 57) & 0x7F | ((v63 & 0x3FF) << 7);
        v77 = *(intArray + 2);
        if (v7 + 23 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 23));
        }

        v78 = v7 + 24;
        *(intArray + v76 + 3) = (v74 >> 40) & 0x1FFFF;
        v79 = *(intArray + 2);
        if (v7 + 24 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (v7 + 24));
        }

        v80 = v7 + 25;
        *(intArray + v78 + 3) = (v74 >> 23) & 0x1FFFF;
        v81 = *(intArray + 2);
        if (v7 + 25 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 25));
        }

        v82 = intCopy + 7;
        *(intArray + v80 + 3) = (v74 >> 6) & 0x1FFFF;
        v83 = *(array + 2);
        if (intCopy + 7 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (intCopy + 7));
        }

        v84 = v7 + 26;
        v85 = *(array + v82 + 2);
        v86 = *(intArray + 2);
        if (v7 + 26 < 0 || v84 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (v7 + 26));
        }

        v87 = v7 + 27;
        *(intArray + v84 + 3) = (v85 >> 53) & 0x7FF | ((v74 & 0x3F) << 11);
        v88 = *(intArray + 2);
        if (v7 + 27 < 0 || v87 >= v88)
        {
          IOSArray_throwOutOfBoundsWithMsg(v88, (v7 + 27));
        }

        v89 = v7 + 28;
        *(intArray + v87 + 3) = (v85 >> 36) & 0x1FFFF;
        v90 = *(intArray + 2);
        if (v7 + 28 < 0 || v89 >= v90)
        {
          IOSArray_throwOutOfBoundsWithMsg(v90, (v7 + 28));
        }

        v91 = v7 + 29;
        *(intArray + v89 + 3) = (v85 >> 19) & 0x1FFFF;
        v92 = *(intArray + 2);
        if (v7 + 29 < 0 || v91 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 29));
        }

        v93 = intCopy + 8;
        *(intArray + v91 + 3) = (v85 >> 2) & 0x1FFFF;
        v94 = *(array + 2);
        if (intCopy + 8 < 0 || v93 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (intCopy + 8));
        }

        v95 = v7 + 30;
        v96 = *(array + v93 + 2);
        v97 = *(intArray + 2);
        if (v7 + 30 < 0 || v95 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (v7 + 30));
        }

        v98 = v7 + 31;
        *(intArray + v95 + 3) = (v96 >> 49) & 0x7FFF | ((v85 & 3) << 15);
        v99 = *(intArray + 2);
        if (v7 + 31 < 0 || v98 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (v7 + 31));
        }

        v100 = v7 + 32;
        *(intArray + v98 + 3) = HIDWORD(v96) & 0x1FFFF;
        v101 = *(intArray + 2);
        if (v7 + 32 < 0 || v100 >= v101)
        {
          IOSArray_throwOutOfBoundsWithMsg(v101, (v7 + 32));
        }

        v102 = intCopy + 9;
        *(intArray + v100 + 3) = v96 >> 15;
        v103 = *(array + 2);
        if (intCopy + 9 < 0 || v102 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (intCopy + 9));
        }

        v104 = v7 + 33;
        v105 = *(array + v102 + 2);
        v106 = *(intArray + 2);
        if (v7 + 33 < 0 || v104 >= v106)
        {
          IOSArray_throwOutOfBoundsWithMsg(v106, (v7 + 33));
        }

        v107 = v7 + 34;
        *(intArray + v104 + 3) = (v105 >> 62) & 3 | (4 * (v96 & 0x7FFF));
        v108 = *(intArray + 2);
        if (v7 + 34 < 0 || v107 >= v108)
        {
          IOSArray_throwOutOfBoundsWithMsg(v108, (v7 + 34));
        }

        v109 = v7 + 35;
        *(intArray + v107 + 3) = (v105 >> 45) & 0x1FFFF;
        v110 = *(intArray + 2);
        if (v7 + 35 < 0 || v109 >= v110)
        {
          IOSArray_throwOutOfBoundsWithMsg(v110, (v7 + 35));
        }

        v111 = v7 + 36;
        *(intArray + v109 + 3) = (v105 >> 28) & 0x1FFFF;
        v112 = *(intArray + 2);
        if (v7 + 36 < 0 || v111 >= v112)
        {
          IOSArray_throwOutOfBoundsWithMsg(v112, (v7 + 36));
        }

        v113 = intCopy + 10;
        *(intArray + v111 + 3) = (v105 >> 11) & 0x1FFFF;
        v114 = *(array + 2);
        if (intCopy + 10 < 0 || v113 >= v114)
        {
          IOSArray_throwOutOfBoundsWithMsg(v114, (intCopy + 10));
        }

        v115 = v7 + 37;
        v116 = *(array + v113 + 2);
        v117 = *(intArray + 2);
        if (v7 + 37 < 0 || v115 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 37));
        }

        v118 = v7 + 38;
        *(intArray + v115 + 3) = (v116 >> 58) & 0x3F | ((v105 & 0x7FF) << 6);
        v119 = *(intArray + 2);
        if (v7 + 38 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (v7 + 38));
        }

        v120 = v7 + 39;
        *(intArray + v118 + 3) = (v116 >> 41) & 0x1FFFF;
        v121 = *(intArray + 2);
        if (v7 + 39 < 0 || v120 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (v7 + 39));
        }

        v122 = v7 + 40;
        *(intArray + v120 + 3) = (v116 >> 24) & 0x1FFFF;
        v123 = *(intArray + 2);
        if (v7 + 40 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (v7 + 40));
        }

        v124 = intCopy + 11;
        *(intArray + v122 + 3) = (v116 >> 7) & 0x1FFFF;
        v125 = *(array + 2);
        if (intCopy + 11 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (intCopy + 11));
        }

        v126 = v7 + 41;
        v127 = *(array + v124 + 2);
        v128 = *(intArray + 2);
        if (v7 + 41 < 0 || v126 >= v128)
        {
          IOSArray_throwOutOfBoundsWithMsg(v128, (v7 + 41));
        }

        v129 = v7 + 42;
        *(intArray + v126 + 3) = (v127 >> 54) & 0x3FF | ((v116 & 0x7F) << 10);
        v130 = *(intArray + 2);
        if (v7 + 42 < 0 || v129 >= v130)
        {
          IOSArray_throwOutOfBoundsWithMsg(v130, (v7 + 42));
        }

        v131 = v7 + 43;
        *(intArray + v129 + 3) = (v127 >> 37) & 0x1FFFF;
        v132 = *(intArray + 2);
        if (v7 + 43 < 0 || v131 >= v132)
        {
          IOSArray_throwOutOfBoundsWithMsg(v132, (v7 + 43));
        }

        v133 = v7 + 44;
        *(intArray + v131 + 3) = (v127 >> 20) & 0x1FFFF;
        v134 = *(intArray + 2);
        if (v7 + 44 < 0 || v133 >= v134)
        {
          IOSArray_throwOutOfBoundsWithMsg(v134, (v7 + 44));
        }

        v135 = intCopy + 12;
        *(intArray + v133 + 3) = (v127 >> 3) & 0x1FFFF;
        v136 = *(array + 2);
        if (intCopy + 12 < 0 || v135 >= v136)
        {
          IOSArray_throwOutOfBoundsWithMsg(v136, (intCopy + 12));
        }

        v137 = v7 + 45;
        v138 = *(array + v135 + 2);
        v139 = *(intArray + 2);
        if (v7 + 45 < 0 || v137 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 45));
        }

        v140 = v7 + 46;
        *(intArray + v137 + 3) = (v138 >> 50) & 0x3FFF | ((v127 & 7) << 14);
        v141 = *(intArray + 2);
        if (v7 + 46 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 46));
        }

        v142 = v7 + 47;
        *(intArray + v140 + 3) = (v138 >> 33) & 0x1FFFF;
        v143 = *(intArray + 2);
        if (v7 + 47 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 47));
        }

        v144 = intCopy + 13;
        *(intArray + v142 + 3) = (v138 >> 16) & 0x1FFFF;
        v145 = *(array + 2);
        if (intCopy + 13 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (intCopy + 13));
        }

        v146 = v7 + 48;
        v147 = *(array + v144 + 2);
        v148 = *(intArray + 2);
        if (v7 + 48 < 0 || v146 >= v148)
        {
          IOSArray_throwOutOfBoundsWithMsg(v148, (v7 + 48));
        }

        v149 = v7 + 49;
        *(intArray + v146 + 3) = (v147 >> 63) | (2 * v138);
        v150 = *(intArray + 2);
        if (v7 + 49 < 0 || v149 >= v150)
        {
          IOSArray_throwOutOfBoundsWithMsg(v150, (v7 + 49));
        }

        v151 = v7 + 50;
        *(intArray + v149 + 3) = (v147 >> 46) & 0x1FFFF;
        v152 = *(intArray + 2);
        if (v7 + 50 < 0 || v151 >= v152)
        {
          IOSArray_throwOutOfBoundsWithMsg(v152, (v7 + 50));
        }

        v153 = v7 + 51;
        *(intArray + v151 + 3) = (v147 >> 29) & 0x1FFFF;
        v154 = *(intArray + 2);
        if (v7 + 51 < 0 || v153 >= v154)
        {
          IOSArray_throwOutOfBoundsWithMsg(v154, (v7 + 51));
        }

        v155 = intCopy + 14;
        *(intArray + v153 + 3) = (v147 >> 12) & 0x1FFFF;
        v156 = *(array + 2);
        if (intCopy + 14 < 0 || v155 >= v156)
        {
          IOSArray_throwOutOfBoundsWithMsg(v156, (intCopy + 14));
        }

        v157 = v7 + 52;
        v158 = *(array + v155 + 2);
        v159 = *(intArray + 2);
        if (v7 + 52 < 0 || v157 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (v7 + 52));
        }

        v160 = v7 + 53;
        *(intArray + v157 + 3) = (v158 >> 59) & 0x1F | (32 * (v147 & 0xFFF));
        v161 = *(intArray + 2);
        if (v7 + 53 < 0 || v160 >= v161)
        {
          IOSArray_throwOutOfBoundsWithMsg(v161, (v7 + 53));
        }

        v162 = v7 + 54;
        *(intArray + v160 + 3) = (v158 >> 42) & 0x1FFFF;
        v163 = *(intArray + 2);
        if (v7 + 54 < 0 || v162 >= v163)
        {
          IOSArray_throwOutOfBoundsWithMsg(v163, (v7 + 54));
        }

        v164 = v7 + 55;
        *(intArray + v162 + 3) = (v158 >> 25) & 0x1FFFF;
        v165 = *(intArray + 2);
        if (v7 + 55 < 0 || v164 >= v165)
        {
          IOSArray_throwOutOfBoundsWithMsg(v165, (v7 + 55));
        }

        v166 = intCopy + 15;
        *(intArray + v164 + 3) = (v158 >> 8) & 0x1FFFF;
        v167 = *(array + 2);
        if (intCopy + 15 < 0 || v166 >= v167)
        {
          IOSArray_throwOutOfBoundsWithMsg(v167, (intCopy + 15));
        }

        v168 = v7 + 56;
        v169 = *(array + v166 + 2);
        v170 = *(intArray + 2);
        if (v7 + 56 < 0 || v168 >= v170)
        {
          IOSArray_throwOutOfBoundsWithMsg(v170, (v7 + 56));
        }

        v171 = v7 + 57;
        *(intArray + v168 + 3) = (v169 >> 55) & 0x1FF | (v158 << 9);
        v172 = *(intArray + 2);
        if (v7 + 57 < 0 || v171 >= v172)
        {
          IOSArray_throwOutOfBoundsWithMsg(v172, (v7 + 57));
        }

        v173 = v7 + 58;
        *(intArray + v171 + 3) = (v169 >> 38) & 0x1FFFF;
        v174 = *(intArray + 2);
        if (v7 + 58 < 0 || v173 >= v174)
        {
          IOSArray_throwOutOfBoundsWithMsg(v174, (v7 + 58));
        }

        v175 = v7 + 59;
        *(intArray + v173 + 3) = (v169 >> 21) & 0x1FFFF;
        v176 = *(intArray + 2);
        if (v7 + 59 < 0 || v175 >= v176)
        {
          IOSArray_throwOutOfBoundsWithMsg(v176, (v7 + 59));
        }

        v177 = intCopy + 16;
        *(intArray + v175 + 3) = (v169 >> 4) & 0x1FFFF;
        v178 = *(array + 2);
        if (intCopy + 16 < 0 || v177 >= v178)
        {
          IOSArray_throwOutOfBoundsWithMsg(v178, (intCopy + 16));
        }

        v179 = v7 + 60;
        v180 = *(array + v177 + 2);
        v181 = *(intArray + 2);
        if (v7 + 60 < 0 || v179 >= v181)
        {
          IOSArray_throwOutOfBoundsWithMsg(v181, (v7 + 60));
        }

        v182 = v7 + 61;
        *(intArray + v179 + 3) = (v180 >> 51) & 0x1FFF | ((v169 & 0xF) << 13);
        v183 = *(intArray + 2);
        if (v7 + 61 < 0 || v182 >= v183)
        {
          IOSArray_throwOutOfBoundsWithMsg(v183, (v7 + 61));
        }

        v184 = v7 + 62;
        *(intArray + v182 + 3) = (v180 >> 34) & 0x1FFFF;
        v185 = *(intArray + 2);
        if (v7 + 62 < 0 || v184 >= v185)
        {
          IOSArray_throwOutOfBoundsWithMsg(v185, (v7 + 62));
        }

        v186 = v7 + 63;
        *(intArray + v184 + 3) = (v180 >> 17) & 0x1FFFF;
        v187 = *(intArray + 2);
        if (v7 + 63 < 0 || v186 >= v187)
        {
          IOSArray_throwOutOfBoundsWithMsg(v187, (v7 + 63));
        }

        int = intCopy + 17;
        v7 = (v7 + 64);
        *(intArray + v186 + 3) = v180 & 0x1FFFF;
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
        *(intArray + v7 + 3) = (*(array + intCopy + 12) << 9) | (2 * v13) | (v14 >> 7);
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
        *(intArray + v20 + 3) = ((v14 & 0x7F) << 10) | (4 * v19) | (v21 >> 6);
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
        *(intArray + v27 + 3) = ((v21 & 0x3F) << 11) | (8 * v26) | (v28 >> 5);
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

        v37 = intCopy + 9;
        *(intArray + v34 + 3) = ((v28 & 0x1F) << 12) | (16 * v33) | (v35 >> 4);
        v38 = *(array + 2);
        if (intCopy + 9 < 0 || v37 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (intCopy + 9));
        }

        v39 = intCopy + 10;
        v40 = *(array + v37 + 12);
        if (intCopy + 10 < 0 || v39 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (intCopy + 10));
        }

        v41 = v7 + 4;
        v42 = *(array + v39 + 12);
        v43 = *(intArray + 2);
        if (v7 + 4 < 0 || v41 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 4));
        }

        v44 = intCopy + 11;
        *(intArray + v41 + 3) = ((v35 & 0xF) << 13) | (32 * v40) | (v42 >> 3);
        v45 = *(array + 2);
        if (intCopy + 11 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (intCopy + 11));
        }

        v46 = intCopy + 12;
        v47 = *(array + v44 + 12);
        if (intCopy + 12 < 0 || v46 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (intCopy + 12));
        }

        v48 = v7 + 5;
        v49 = *(array + v46 + 12);
        v50 = *(intArray + 2);
        if (v7 + 5 < 0 || v48 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 5));
        }

        v51 = intCopy + 13;
        *(intArray + v48 + 3) = ((v42 & 7) << 14) | (v47 << 6) | (v49 >> 2);
        v52 = *(array + 2);
        if (intCopy + 13 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (intCopy + 13));
        }

        v53 = intCopy + 14;
        v54 = *(array + v51 + 12);
        if (intCopy + 14 < 0 || v53 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (intCopy + 14));
        }

        v55 = v7 + 6;
        v56 = *(array + v53 + 12);
        v57 = *(intArray + 2);
        if (v7 + 6 < 0 || v55 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 6));
        }

        v58 = intCopy + 15;
        *(intArray + v55 + 3) = ((v49 & 3) << 15) | (v54 << 7) | (v56 >> 1);
        v59 = *(array + 2);
        if (intCopy + 15 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (intCopy + 15));
        }

        v60 = intCopy + 16;
        v61 = *(array + v58 + 12);
        if (intCopy + 16 < 0 || v60 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (intCopy + 16));
        }

        v62 = v7 + 7;
        v63 = *(array + v60 + 12);
        v64 = *(intArray + 2);
        if (v7 + 7 < 0 || v62 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 7));
        }

        *(intArray + v62 + 3) = ((v56 & 1) << 16) | (v61 << 8) | v63;
        int = intCopy + 17;
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
        *(longArray + v7 + 2) = v12 >> 47;
        v15 = *(longArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(longArray + v14 + 2) = (v12 >> 30) & 0x1FFFF;
        v17 = *(longArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = (int + 1);
        *(longArray + v16 + 2) = (v12 >> 13) & 0x1FFFF;
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
        *(longArray + v20 + 2) = (v23 >> 60) & 0x1FFFF;
        v25 = *(longArray + 2);
        if (v7 + 4 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 4));
        }

        v26 = v7 + 5;
        *(longArray + v24 + 2) = (v21 >> 43) & 0x1FFFF;
        v27 = *(longArray + 2);
        if (v7 + 5 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 5));
        }

        v28 = v7 + 6;
        *(longArray + v26 + 2) = (v21 >> 26) & 0x1FFFF;
        v29 = *(longArray + 2);
        if (v7 + 6 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 6));
        }

        v30 = intCopy + 2;
        *(longArray + v28 + 2) = (v21 >> 9) & 0x1FFFF;
        v31 = *(array + 2);
        if (intCopy + 2 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (intCopy + 2));
        }

        v32 = v7 + 7;
        v33 = *(array + v30 + 2);
        v34 = *(longArray + 2);
        if (v7 + 7 < 0 || v32 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 7));
        }

        *(&v35 + 1) = v21;
        *&v35 = *(array + v30 + 2);
        v36 = v7 + 8;
        *(longArray + v32 + 2) = (v35 >> 56) & 0x1FFFF;
        v37 = *(longArray + 2);
        if (v7 + 8 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 8));
        }

        v38 = v7 + 9;
        *(longArray + v36 + 2) = (v33 >> 39) & 0x1FFFF;
        v39 = *(longArray + 2);
        if (v7 + 9 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 9));
        }

        v40 = v7 + 10;
        *(longArray + v38 + 2) = (v33 >> 22) & 0x1FFFF;
        v41 = *(longArray + 2);
        if (v7 + 10 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 10));
        }

        v42 = intCopy + 3;
        *(longArray + v40 + 2) = (v33 >> 5) & 0x1FFFF;
        v43 = *(array + 2);
        if (intCopy + 3 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (intCopy + 3));
        }

        v44 = v7 + 11;
        v45 = *(array + v42 + 2);
        v46 = *(longArray + 2);
        if (v7 + 11 < 0 || v44 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 11));
        }

        *(&v47 + 1) = v33;
        *&v47 = *(array + v42 + 2);
        v48 = v7 + 12;
        *(longArray + v44 + 2) = (v47 >> 52) & 0x1FFFF;
        v49 = *(longArray + 2);
        if (v7 + 12 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 12));
        }

        v50 = v7 + 13;
        *(longArray + v48 + 2) = (v45 >> 35) & 0x1FFFF;
        v51 = *(longArray + 2);
        if (v7 + 13 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 13));
        }

        v52 = v7 + 14;
        *(longArray + v50 + 2) = (v45 >> 18) & 0x1FFFF;
        v53 = *(longArray + 2);
        if (v7 + 14 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 14));
        }

        v54 = intCopy + 4;
        *(longArray + v52 + 2) = (v45 >> 1) & 0x1FFFF;
        v55 = *(array + 2);
        if (intCopy + 4 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (intCopy + 4));
        }

        v56 = v7 + 15;
        v57 = *(array + v54 + 2);
        v58 = *(longArray + 2);
        if (v7 + 15 < 0 || v56 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 15));
        }

        *(&v59 + 1) = v45;
        *&v59 = *(array + v54 + 2);
        v60 = v7 + 16;
        *(longArray + v56 + 2) = (v59 >> 48) & 0x1FFFF;
        v61 = *(longArray + 2);
        if (v7 + 16 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 16));
        }

        v62 = v7 + 17;
        *(longArray + v60 + 2) = (v57 >> 31) & 0x1FFFF;
        v63 = *(longArray + 2);
        if (v7 + 17 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 17));
        }

        v64 = intCopy + 5;
        *(longArray + v62 + 2) = (v57 >> 14) & 0x1FFFF;
        v65 = *(array + 2);
        if (intCopy + 5 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (intCopy + 5));
        }

        v66 = v7 + 18;
        v67 = *(array + v64 + 2);
        v68 = *(longArray + 2);
        if (v7 + 18 < 0 || v66 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 18));
        }

        *(&v69 + 1) = v57;
        *&v69 = *(array + v64 + 2);
        v70 = v7 + 19;
        *(longArray + v66 + 2) = (v69 >> 61) & 0x1FFFF;
        v71 = *(longArray + 2);
        if (v7 + 19 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 19));
        }

        v72 = v7 + 20;
        *(longArray + v70 + 2) = (v67 >> 44) & 0x1FFFF;
        v73 = *(longArray + 2);
        if (v7 + 20 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 20));
        }

        v74 = v7 + 21;
        *(longArray + v72 + 2) = (v67 >> 27) & 0x1FFFF;
        v75 = *(longArray + 2);
        if (v7 + 21 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 21));
        }

        v76 = intCopy + 6;
        *(longArray + v74 + 2) = (v67 >> 10) & 0x1FFFF;
        v77 = *(array + 2);
        if (intCopy + 6 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (intCopy + 6));
        }

        v78 = v7 + 22;
        v79 = *(array + v76 + 2);
        v80 = *(longArray + 2);
        if (v7 + 22 < 0 || v78 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 22));
        }

        *(&v81 + 1) = v67;
        *&v81 = *(array + v76 + 2);
        v82 = v7 + 23;
        *(longArray + v78 + 2) = (v81 >> 57) & 0x1FFFF;
        v83 = *(longArray + 2);
        if (v7 + 23 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (v7 + 23));
        }

        v84 = v7 + 24;
        *(longArray + v82 + 2) = (v79 >> 40) & 0x1FFFF;
        v85 = *(longArray + 2);
        if (v7 + 24 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 24));
        }

        v86 = v7 + 25;
        *(longArray + v84 + 2) = (v79 >> 23) & 0x1FFFF;
        v87 = *(longArray + 2);
        if (v7 + 25 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 25));
        }

        v88 = intCopy + 7;
        *(longArray + v86 + 2) = (v79 >> 6) & 0x1FFFF;
        v89 = *(array + 2);
        if (intCopy + 7 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (intCopy + 7));
        }

        v90 = v7 + 26;
        v91 = *(array + v88 + 2);
        v92 = *(longArray + 2);
        if (v7 + 26 < 0 || v90 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, (v7 + 26));
        }

        *(&v93 + 1) = v79;
        *&v93 = *(array + v88 + 2);
        v94 = v7 + 27;
        *(longArray + v90 + 2) = (v93 >> 53) & 0x1FFFF;
        v95 = *(longArray + 2);
        if (v7 + 27 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (v7 + 27));
        }

        v96 = v7 + 28;
        *(longArray + v94 + 2) = (v91 >> 36) & 0x1FFFF;
        v97 = *(longArray + 2);
        if (v7 + 28 < 0 || v96 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (v7 + 28));
        }

        v98 = v7 + 29;
        *(longArray + v96 + 2) = (v91 >> 19) & 0x1FFFF;
        v99 = *(longArray + 2);
        if (v7 + 29 < 0 || v98 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (v7 + 29));
        }

        v100 = intCopy + 8;
        *(longArray + v98 + 2) = (v91 >> 2) & 0x1FFFF;
        v101 = *(array + 2);
        if (intCopy + 8 < 0 || v100 >= v101)
        {
          IOSArray_throwOutOfBoundsWithMsg(v101, (intCopy + 8));
        }

        v102 = v7 + 30;
        v103 = *(array + v100 + 2);
        v104 = *(longArray + 2);
        if (v7 + 30 < 0 || v102 >= v104)
        {
          IOSArray_throwOutOfBoundsWithMsg(v104, (v7 + 30));
        }

        *(&v105 + 1) = v91;
        *&v105 = *(array + v100 + 2);
        v106 = v7 + 31;
        *(longArray + v102 + 2) = (v105 >> 49) & 0x1FFFF;
        v107 = *(longArray + 2);
        if (v7 + 31 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 31));
        }

        v108 = v7 + 32;
        *(longArray + v106 + 2) = HIDWORD(v103) & 0x1FFFF;
        v109 = *(longArray + 2);
        if (v7 + 32 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 32));
        }

        v110 = intCopy + 9;
        *(longArray + v108 + 2) = v103 >> 15;
        v111 = *(array + 2);
        if (intCopy + 9 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (intCopy + 9));
        }

        v112 = v7 + 33;
        v113 = *(array + v110 + 2);
        v114 = *(longArray + 2);
        if (v7 + 33 < 0 || v112 >= v114)
        {
          IOSArray_throwOutOfBoundsWithMsg(v114, (v7 + 33));
        }

        *(&v115 + 1) = v103;
        *&v115 = *(array + v110 + 2);
        v116 = v7 + 34;
        *(longArray + v112 + 2) = (v115 >> 62) & 0x1FFFF;
        v117 = *(longArray + 2);
        if (v7 + 34 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 34));
        }

        v118 = v7 + 35;
        *(longArray + v116 + 2) = (v113 >> 45) & 0x1FFFF;
        v119 = *(longArray + 2);
        if (v7 + 35 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (v7 + 35));
        }

        v120 = v7 + 36;
        *(longArray + v118 + 2) = (v113 >> 28) & 0x1FFFF;
        v121 = *(longArray + 2);
        if (v7 + 36 < 0 || v120 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (v7 + 36));
        }

        v122 = intCopy + 10;
        *(longArray + v120 + 2) = (v113 >> 11) & 0x1FFFF;
        v123 = *(array + 2);
        if (intCopy + 10 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (intCopy + 10));
        }

        v124 = v7 + 37;
        v125 = *(array + v122 + 2);
        v126 = *(longArray + 2);
        if (v7 + 37 < 0 || v124 >= v126)
        {
          IOSArray_throwOutOfBoundsWithMsg(v126, (v7 + 37));
        }

        *(&v127 + 1) = v113;
        *&v127 = *(array + v122 + 2);
        v128 = v7 + 38;
        *(longArray + v124 + 2) = (v127 >> 58) & 0x1FFFF;
        v129 = *(longArray + 2);
        if (v7 + 38 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 38));
        }

        v130 = v7 + 39;
        *(longArray + v128 + 2) = (v125 >> 41) & 0x1FFFF;
        v131 = *(longArray + 2);
        if (v7 + 39 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 39));
        }

        v132 = v7 + 40;
        *(longArray + v130 + 2) = (v125 >> 24) & 0x1FFFF;
        v133 = *(longArray + 2);
        if (v7 + 40 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 40));
        }

        v134 = intCopy + 11;
        *(longArray + v132 + 2) = (v125 >> 7) & 0x1FFFF;
        v135 = *(array + 2);
        if (intCopy + 11 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (intCopy + 11));
        }

        v136 = v7 + 41;
        v137 = *(array + v134 + 2);
        v138 = *(longArray + 2);
        if (v7 + 41 < 0 || v136 >= v138)
        {
          IOSArray_throwOutOfBoundsWithMsg(v138, (v7 + 41));
        }

        *(&v139 + 1) = v125;
        *&v139 = *(array + v134 + 2);
        v140 = v7 + 42;
        *(longArray + v136 + 2) = (v139 >> 54) & 0x1FFFF;
        v141 = *(longArray + 2);
        if (v7 + 42 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 42));
        }

        v142 = v7 + 43;
        *(longArray + v140 + 2) = (v137 >> 37) & 0x1FFFF;
        v143 = *(longArray + 2);
        if (v7 + 43 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 43));
        }

        v144 = v7 + 44;
        *(longArray + v142 + 2) = (v137 >> 20) & 0x1FFFF;
        v145 = *(longArray + 2);
        if (v7 + 44 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 44));
        }

        v146 = intCopy + 12;
        *(longArray + v144 + 2) = (v137 >> 3) & 0x1FFFF;
        v147 = *(array + 2);
        if (intCopy + 12 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (intCopy + 12));
        }

        v148 = v7 + 45;
        v149 = *(array + v146 + 2);
        v150 = *(longArray + 2);
        if (v7 + 45 < 0 || v148 >= v150)
        {
          IOSArray_throwOutOfBoundsWithMsg(v150, (v7 + 45));
        }

        *(&v151 + 1) = v137;
        *&v151 = *(array + v146 + 2);
        v152 = v7 + 46;
        *(longArray + v148 + 2) = (v151 >> 50) & 0x1FFFF;
        v153 = *(longArray + 2);
        if (v7 + 46 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (v7 + 46));
        }

        v154 = v7 + 47;
        *(longArray + v152 + 2) = (v149 >> 33) & 0x1FFFF;
        v155 = *(longArray + 2);
        if (v7 + 47 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 47));
        }

        v156 = intCopy + 13;
        *(longArray + v154 + 2) = (v149 >> 16) & 0x1FFFF;
        v157 = *(array + 2);
        if (intCopy + 13 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (intCopy + 13));
        }

        v158 = v7 + 48;
        v159 = *(array + v156 + 2);
        v160 = *(longArray + 2);
        if (v7 + 48 < 0 || v158 >= v160)
        {
          IOSArray_throwOutOfBoundsWithMsg(v160, (v7 + 48));
        }

        *(&v161 + 1) = v149;
        *&v161 = *(array + v156 + 2);
        v162 = v7 + 49;
        *(longArray + v158 + 2) = (v161 >> 63) & 0x1FFFF;
        v163 = *(longArray + 2);
        if (v7 + 49 < 0 || v162 >= v163)
        {
          IOSArray_throwOutOfBoundsWithMsg(v163, (v7 + 49));
        }

        v164 = v7 + 50;
        *(longArray + v162 + 2) = (v159 >> 46) & 0x1FFFF;
        v165 = *(longArray + 2);
        if (v7 + 50 < 0 || v164 >= v165)
        {
          IOSArray_throwOutOfBoundsWithMsg(v165, (v7 + 50));
        }

        v166 = v7 + 51;
        *(longArray + v164 + 2) = (v159 >> 29) & 0x1FFFF;
        v167 = *(longArray + 2);
        if (v7 + 51 < 0 || v166 >= v167)
        {
          IOSArray_throwOutOfBoundsWithMsg(v167, (v7 + 51));
        }

        v168 = intCopy + 14;
        *(longArray + v166 + 2) = (v159 >> 12) & 0x1FFFF;
        v169 = *(array + 2);
        if (intCopy + 14 < 0 || v168 >= v169)
        {
          IOSArray_throwOutOfBoundsWithMsg(v169, (intCopy + 14));
        }

        v170 = v7 + 52;
        v171 = *(array + v168 + 2);
        v172 = *(longArray + 2);
        if (v7 + 52 < 0 || v170 >= v172)
        {
          IOSArray_throwOutOfBoundsWithMsg(v172, (v7 + 52));
        }

        *(&v173 + 1) = v159;
        *&v173 = *(array + v168 + 2);
        v174 = v7 + 53;
        *(longArray + v170 + 2) = (v173 >> 59) & 0x1FFFF;
        v175 = *(longArray + 2);
        if (v7 + 53 < 0 || v174 >= v175)
        {
          IOSArray_throwOutOfBoundsWithMsg(v175, (v7 + 53));
        }

        v176 = v7 + 54;
        *(longArray + v174 + 2) = (v171 >> 42) & 0x1FFFF;
        v177 = *(longArray + 2);
        if (v7 + 54 < 0 || v176 >= v177)
        {
          IOSArray_throwOutOfBoundsWithMsg(v177, (v7 + 54));
        }

        v178 = v7 + 55;
        *(longArray + v176 + 2) = (v171 >> 25) & 0x1FFFF;
        v179 = *(longArray + 2);
        if (v7 + 55 < 0 || v178 >= v179)
        {
          IOSArray_throwOutOfBoundsWithMsg(v179, (v7 + 55));
        }

        v180 = intCopy + 15;
        *(longArray + v178 + 2) = (v171 >> 8) & 0x1FFFF;
        v181 = *(array + 2);
        if (intCopy + 15 < 0 || v180 >= v181)
        {
          IOSArray_throwOutOfBoundsWithMsg(v181, (intCopy + 15));
        }

        v182 = v7 + 56;
        v183 = *(array + v180 + 2);
        v184 = *(longArray + 2);
        if (v7 + 56 < 0 || v182 >= v184)
        {
          IOSArray_throwOutOfBoundsWithMsg(v184, (v7 + 56));
        }

        *(&v185 + 1) = v171;
        *&v185 = *(array + v180 + 2);
        v186 = v7 + 57;
        *(longArray + v182 + 2) = (v185 >> 55) & 0x1FFFF;
        v187 = *(longArray + 2);
        if (v7 + 57 < 0 || v186 >= v187)
        {
          IOSArray_throwOutOfBoundsWithMsg(v187, (v7 + 57));
        }

        v188 = v7 + 58;
        *(longArray + v186 + 2) = (v183 >> 38) & 0x1FFFF;
        v189 = *(longArray + 2);
        if (v7 + 58 < 0 || v188 >= v189)
        {
          IOSArray_throwOutOfBoundsWithMsg(v189, (v7 + 58));
        }

        v190 = v7 + 59;
        *(longArray + v188 + 2) = (v183 >> 21) & 0x1FFFF;
        v191 = *(longArray + 2);
        if (v7 + 59 < 0 || v190 >= v191)
        {
          IOSArray_throwOutOfBoundsWithMsg(v191, (v7 + 59));
        }

        v192 = intCopy + 16;
        *(longArray + v190 + 2) = (v183 >> 4) & 0x1FFFF;
        v193 = *(array + 2);
        if (intCopy + 16 < 0 || v192 >= v193)
        {
          IOSArray_throwOutOfBoundsWithMsg(v193, (intCopy + 16));
        }

        v194 = v7 + 60;
        v195 = *(array + v192 + 2);
        v196 = *(longArray + 2);
        if (v7 + 60 < 0 || v194 >= v196)
        {
          IOSArray_throwOutOfBoundsWithMsg(v196, (v7 + 60));
        }

        *(&v197 + 1) = v183;
        *&v197 = *(array + v192 + 2);
        v198 = v7 + 61;
        *(longArray + v194 + 2) = (v197 >> 51) & 0x1FFFF;
        v199 = *(longArray + 2);
        if (v7 + 61 < 0 || v198 >= v199)
        {
          IOSArray_throwOutOfBoundsWithMsg(v199, (v7 + 61));
        }

        v200 = v7 + 62;
        *(longArray + v198 + 2) = (v195 >> 34) & 0x1FFFF;
        v201 = *(longArray + 2);
        if (v7 + 62 < 0 || v200 >= v201)
        {
          IOSArray_throwOutOfBoundsWithMsg(v201, (v7 + 62));
        }

        v202 = v7 + 63;
        *(longArray + v200 + 2) = (v195 >> 17) & 0x1FFFF;
        v203 = *(longArray + 2);
        if (v7 + 63 < 0 || v202 >= v203)
        {
          IOSArray_throwOutOfBoundsWithMsg(v203, (v7 + 63));
        }

        int = intCopy + 17;
        v7 = (v7 + 64);
        *(longArray + v202 + 2) = v195 & 0x1FFFF;
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
        *(longArray + v7 + 2) = (*(array + intCopy + 12) << 9) | (2 * v13) | (v14 >> 7);
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
        *(longArray + v20 + 2) = ((v14 & 0x7F) << 10) | (4 * v19) | (v21 >> 6);
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
        *(longArray + v27 + 2) = ((v21 & 0x3F) << 11) | (8 * v26) | (v28 >> 5);
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

        v37 = intCopy + 9;
        *(longArray + v34 + 2) = ((v28 & 0x1F) << 12) | (16 * v33) | (v35 >> 4);
        v38 = *(array + 2);
        if (intCopy + 9 < 0 || v37 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (intCopy + 9));
        }

        v39 = intCopy + 10;
        v40 = *(array + v37 + 12);
        if (intCopy + 10 < 0 || v39 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (intCopy + 10));
        }

        v41 = v7 + 4;
        v42 = *(array + v39 + 12);
        v43 = *(longArray + 2);
        if (v7 + 4 < 0 || v41 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 4));
        }

        v44 = intCopy + 11;
        *(longArray + v41 + 2) = ((v35 & 0xF) << 13) | (32 * v40) | (v42 >> 3);
        v45 = *(array + 2);
        if (intCopy + 11 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (intCopy + 11));
        }

        v46 = intCopy + 12;
        v47 = *(array + v44 + 12);
        if (intCopy + 12 < 0 || v46 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (intCopy + 12));
        }

        v48 = v7 + 5;
        v49 = *(array + v46 + 12);
        v50 = *(longArray + 2);
        if (v7 + 5 < 0 || v48 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 5));
        }

        v51 = intCopy + 13;
        *(longArray + v48 + 2) = ((v42 & 7) << 14) | (v47 << 6) | (v49 >> 2);
        v52 = *(array + 2);
        if (intCopy + 13 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (intCopy + 13));
        }

        v53 = intCopy + 14;
        v54 = *(array + v51 + 12);
        if (intCopy + 14 < 0 || v53 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (intCopy + 14));
        }

        v55 = v7 + 6;
        v56 = *(array + v53 + 12);
        v57 = *(longArray + 2);
        if (v7 + 6 < 0 || v55 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 6));
        }

        v58 = intCopy + 15;
        *(longArray + v55 + 2) = ((v49 & 3) << 15) | (v54 << 7) | (v56 >> 1);
        v59 = *(array + 2);
        if (intCopy + 15 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (intCopy + 15));
        }

        v60 = intCopy + 16;
        v61 = *(array + v58 + 12);
        if (intCopy + 16 < 0 || v60 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (intCopy + 16));
        }

        v62 = v7 + 7;
        v63 = *(array + v60 + 12);
        v64 = *(longArray + 2);
        if (v7 + 7 < 0 || v62 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 7));
        }

        *(longArray + v62 + 2) = ((v56 & 1) << 16) | (v61 << 8) | v63;
        int = intCopy + 17;
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