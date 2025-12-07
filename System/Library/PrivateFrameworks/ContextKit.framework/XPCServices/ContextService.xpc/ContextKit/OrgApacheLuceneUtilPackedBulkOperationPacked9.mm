@interface OrgApacheLuceneUtilPackedBulkOperationPacked9
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked9

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
        *(intArray + v7 + 3) = v12 >> 55;
        v15 = *(intArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(intArray + v14 + 3) = (v12 >> 46) & 0x1FF;
        v17 = *(intArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(intArray + v16 + 3) = (v12 >> 37) & 0x1FF;
        v19 = *(intArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = v7 + 4;
        *(intArray + v18 + 3) = (v12 >> 28) & 0x1FF;
        v21 = *(intArray + 2);
        if (v7 + 4 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 4));
        }

        v22 = v7 + 5;
        *(intArray + v20 + 3) = (v12 >> 19) & 0x1FF;
        v23 = *(intArray + 2);
        if (v7 + 5 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 5));
        }

        v24 = v7 + 6;
        *(intArray + v22 + 3) = (v12 >> 10) & 0x1FF;
        v25 = *(intArray + 2);
        if (v7 + 6 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 6));
        }

        v26 = (int + 1);
        *(intArray + v24 + 3) = (v12 >> 1) & 0x1FF;
        v27 = *(array + 2);
        if ((v26 & 0x80000000) != 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, v26);
        }

        v28 = v7 + 7;
        v29 = *(array + v26 + 2);
        v30 = *(intArray + 2);
        if (v7 + 7 < 0 || v28 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 7));
        }

        v31 = v7 + 8;
        *(intArray + v28 + 3) = HIBYTE(v29) | ((v12 & 1) << 8);
        v32 = *(intArray + 2);
        if (v7 + 8 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 8));
        }

        v33 = v7 + 9;
        *(intArray + v31 + 3) = (v29 >> 47) & 0x1FF;
        v34 = *(intArray + 2);
        if (v7 + 9 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 9));
        }

        v35 = v7 + 10;
        *(intArray + v33 + 3) = (v29 >> 38) & 0x1FF;
        v36 = *(intArray + 2);
        if (v7 + 10 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (v7 + 10));
        }

        v37 = v7 + 11;
        *(intArray + v35 + 3) = (v29 >> 29) & 0x1FF;
        v38 = *(intArray + 2);
        if (v7 + 11 < 0 || v37 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v7 + 11));
        }

        v39 = v7 + 12;
        *(intArray + v37 + 3) = (v29 >> 20) & 0x1FF;
        v40 = *(intArray + 2);
        if (v7 + 12 < 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, (v7 + 12));
        }

        v41 = v7 + 13;
        *(intArray + v39 + 3) = (v29 >> 11) & 0x1FF;
        v42 = *(intArray + 2);
        if (v7 + 13 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 13));
        }

        v43 = intCopy + 2;
        *(intArray + v41 + 3) = (v29 >> 2) & 0x1FF;
        v44 = *(array + 2);
        if (intCopy + 2 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (intCopy + 2));
        }

        v45 = v7 + 14;
        v46 = *(array + v43 + 2);
        v47 = *(intArray + 2);
        if (v7 + 14 < 0 || v45 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 14));
        }

        v48 = v7 + 15;
        *(intArray + v45 + 3) = (v46 >> 57) & 0x7F | ((v29 & 3) << 7);
        v49 = *(intArray + 2);
        if (v7 + 15 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v7 + 15));
        }

        v50 = v7 + 16;
        *(intArray + v48 + 3) = HIWORD(v46) & 0x1FF;
        v51 = *(intArray + 2);
        if (v7 + 16 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 16));
        }

        v52 = v7 + 17;
        *(intArray + v50 + 3) = (v46 >> 39) & 0x1FF;
        v53 = *(intArray + 2);
        if (v7 + 17 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 17));
        }

        v54 = v7 + 18;
        *(intArray + v52 + 3) = (v46 >> 30) & 0x1FF;
        v55 = *(intArray + 2);
        if (v7 + 18 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 18));
        }

        v56 = v7 + 19;
        *(intArray + v54 + 3) = (v46 >> 21) & 0x1FF;
        v57 = *(intArray + 2);
        if (v7 + 19 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 19));
        }

        v58 = v7 + 20;
        *(intArray + v56 + 3) = (v46 >> 12) & 0x1FF;
        v59 = *(intArray + 2);
        if (v7 + 20 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 20));
        }

        v60 = intCopy + 3;
        *(intArray + v58 + 3) = (v46 >> 3) & 0x1FF;
        v61 = *(array + 2);
        if (intCopy + 3 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (intCopy + 3));
        }

        v62 = v7 + 21;
        v63 = *(array + v60 + 2);
        v64 = *(intArray + 2);
        if (v7 + 21 < 0 || v62 >= v64)
        {
          IOSArray_throwOutOfBoundsWithMsg(v64, (v7 + 21));
        }

        v65 = v7 + 22;
        *(intArray + v62 + 3) = (v63 >> 58) & 0x3F | ((v46 & 7) << 6);
        v66 = *(intArray + 2);
        if (v7 + 22 < 0 || v65 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 22));
        }

        v67 = v7 + 23;
        *(intArray + v65 + 3) = (v63 >> 49) & 0x1FF;
        v68 = *(intArray + 2);
        if (v7 + 23 < 0 || v67 >= v68)
        {
          IOSArray_throwOutOfBoundsWithMsg(v68, (v7 + 23));
        }

        v69 = v7 + 24;
        *(intArray + v67 + 3) = (v63 >> 40) & 0x1FF;
        v70 = *(intArray + 2);
        if (v7 + 24 < 0 || v69 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, (v7 + 24));
        }

        v71 = v7 + 25;
        *(intArray + v69 + 3) = (v63 >> 31) & 0x1FF;
        v72 = *(intArray + 2);
        if (v7 + 25 < 0 || v71 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, (v7 + 25));
        }

        v73 = v7 + 26;
        *(intArray + v71 + 3) = (v63 >> 22) & 0x1FF;
        v74 = *(intArray + 2);
        if (v7 + 26 < 0 || v73 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, (v7 + 26));
        }

        v75 = v7 + 27;
        *(intArray + v73 + 3) = (v63 >> 13) & 0x1FF;
        v76 = *(intArray + 2);
        if (v7 + 27 < 0 || v75 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 27));
        }

        v77 = intCopy + 4;
        *(intArray + v75 + 3) = (v63 >> 4) & 0x1FF;
        v78 = *(array + 2);
        if (intCopy + 4 < 0 || v77 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (intCopy + 4));
        }

        v79 = v7 + 28;
        v80 = *(array + v77 + 2);
        v81 = *(intArray + 2);
        if (v7 + 28 < 0 || v79 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (v7 + 28));
        }

        v82 = v7 + 29;
        *(intArray + v79 + 3) = (v80 >> 59) & 0x1F | (32 * (v63 & 0xF));
        v83 = *(intArray + 2);
        if (v7 + 29 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (v7 + 29));
        }

        v84 = v7 + 30;
        *(intArray + v82 + 3) = (v80 >> 50) & 0x1FF;
        v85 = *(intArray + 2);
        if (v7 + 30 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 30));
        }

        v86 = v7 + 31;
        *(intArray + v84 + 3) = (v80 >> 41) & 0x1FF;
        v87 = *(intArray + 2);
        if (v7 + 31 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 31));
        }

        v88 = v7 + 32;
        *(intArray + v86 + 3) = WORD2(v80) & 0x1FF;
        v89 = *(intArray + 2);
        if (v7 + 32 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 32));
        }

        v90 = v7 + 33;
        *(intArray + v88 + 3) = v80 >> 23;
        v91 = *(intArray + 2);
        if (v7 + 33 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 33));
        }

        v92 = v7 + 34;
        *(intArray + v90 + 3) = (v80 >> 14) & 0x1FF;
        v93 = *(intArray + 2);
        if (v7 + 34 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 34));
        }

        v94 = intCopy + 5;
        *(intArray + v92 + 3) = (v80 >> 5) & 0x1FF;
        v95 = *(array + 2);
        if (intCopy + 5 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (intCopy + 5));
        }

        v96 = v7 + 35;
        v97 = *(array + v94 + 2);
        v98 = *(intArray + 2);
        if (v7 + 35 < 0 || v96 >= v98)
        {
          IOSArray_throwOutOfBoundsWithMsg(v98, (v7 + 35));
        }

        v99 = v7 + 36;
        *(intArray + v96 + 3) = (v97 >> 60) & 0xF | (16 * (v80 & 0x1F));
        v100 = *(intArray + 2);
        if (v7 + 36 < 0 || v99 >= v100)
        {
          IOSArray_throwOutOfBoundsWithMsg(v100, (v7 + 36));
        }

        v101 = v7 + 37;
        *(intArray + v99 + 3) = (v97 >> 51) & 0x1FF;
        v102 = *(intArray + 2);
        if (v7 + 37 < 0 || v101 >= v102)
        {
          IOSArray_throwOutOfBoundsWithMsg(v102, (v7 + 37));
        }

        v103 = v7 + 38;
        *(intArray + v101 + 3) = (v97 >> 42) & 0x1FF;
        v104 = *(intArray + 2);
        if (v7 + 38 < 0 || v103 >= v104)
        {
          IOSArray_throwOutOfBoundsWithMsg(v104, (v7 + 38));
        }

        v105 = v7 + 39;
        *(intArray + v103 + 3) = (v97 >> 33) & 0x1FF;
        v106 = *(intArray + 2);
        if (v7 + 39 < 0 || v105 >= v106)
        {
          IOSArray_throwOutOfBoundsWithMsg(v106, (v7 + 39));
        }

        v107 = v7 + 40;
        *(intArray + v105 + 3) = (v97 >> 24) & 0x1FF;
        v108 = *(intArray + 2);
        if (v7 + 40 < 0 || v107 >= v108)
        {
          IOSArray_throwOutOfBoundsWithMsg(v108, (v7 + 40));
        }

        v109 = v7 + 41;
        *(intArray + v107 + 3) = (v97 >> 15) & 0x1FF;
        v110 = *(intArray + 2);
        if (v7 + 41 < 0 || v109 >= v110)
        {
          IOSArray_throwOutOfBoundsWithMsg(v110, (v7 + 41));
        }

        v111 = intCopy + 6;
        *(intArray + v109 + 3) = (v97 >> 6) & 0x1FF;
        v112 = *(array + 2);
        if (intCopy + 6 < 0 || v111 >= v112)
        {
          IOSArray_throwOutOfBoundsWithMsg(v112, (intCopy + 6));
        }

        v113 = v7 + 42;
        v114 = *(array + v111 + 2);
        v115 = *(intArray + 2);
        if (v7 + 42 < 0 || v113 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 42));
        }

        v116 = v7 + 43;
        *(intArray + v113 + 3) = (v114 >> 61) & 7 | (8 * (v97 & 0x3F));
        v117 = *(intArray + 2);
        if (v7 + 43 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 43));
        }

        v118 = v7 + 44;
        *(intArray + v116 + 3) = (v114 >> 52) & 0x1FF;
        v119 = *(intArray + 2);
        if (v7 + 44 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (v7 + 44));
        }

        v120 = v7 + 45;
        *(intArray + v118 + 3) = (v114 >> 43) & 0x1FF;
        v121 = *(intArray + 2);
        if (v7 + 45 < 0 || v120 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (v7 + 45));
        }

        v122 = v7 + 46;
        *(intArray + v120 + 3) = (v114 >> 34) & 0x1FF;
        v123 = *(intArray + 2);
        if (v7 + 46 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (v7 + 46));
        }

        v124 = v7 + 47;
        *(intArray + v122 + 3) = (v114 >> 25) & 0x1FF;
        v125 = *(intArray + 2);
        if (v7 + 47 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (v7 + 47));
        }

        v126 = v7 + 48;
        *(intArray + v124 + 3) = WORD1(v114) & 0x1FF;
        v127 = *(intArray + 2);
        if (v7 + 48 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (v7 + 48));
        }

        v128 = intCopy + 7;
        *(intArray + v126 + 3) = v114 >> 7;
        v129 = *(array + 2);
        if (intCopy + 7 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (intCopy + 7));
        }

        v130 = v7 + 49;
        v131 = *(array + v128 + 2);
        v132 = *(intArray + 2);
        if (v7 + 49 < 0 || v130 >= v132)
        {
          IOSArray_throwOutOfBoundsWithMsg(v132, (v7 + 49));
        }

        v133 = v7 + 50;
        *(intArray + v130 + 3) = (v131 >> 62) & 3 | (4 * (v114 & 0x7F));
        v134 = *(intArray + 2);
        if (v7 + 50 < 0 || v133 >= v134)
        {
          IOSArray_throwOutOfBoundsWithMsg(v134, (v7 + 50));
        }

        v135 = v7 + 51;
        *(intArray + v133 + 3) = (v131 >> 53) & 0x1FF;
        v136 = *(intArray + 2);
        if (v7 + 51 < 0 || v135 >= v136)
        {
          IOSArray_throwOutOfBoundsWithMsg(v136, (v7 + 51));
        }

        v137 = v7 + 52;
        *(intArray + v135 + 3) = (v131 >> 44) & 0x1FF;
        v138 = *(intArray + 2);
        if (v7 + 52 < 0 || v137 >= v138)
        {
          IOSArray_throwOutOfBoundsWithMsg(v138, (v7 + 52));
        }

        v139 = v7 + 53;
        *(intArray + v137 + 3) = (v131 >> 35) & 0x1FF;
        v140 = *(intArray + 2);
        if (v7 + 53 < 0 || v139 >= v140)
        {
          IOSArray_throwOutOfBoundsWithMsg(v140, (v7 + 53));
        }

        v141 = v7 + 54;
        *(intArray + v139 + 3) = (v131 >> 26) & 0x1FF;
        v142 = *(intArray + 2);
        if (v7 + 54 < 0 || v141 >= v142)
        {
          IOSArray_throwOutOfBoundsWithMsg(v142, (v7 + 54));
        }

        v143 = v7 + 55;
        *(intArray + v141 + 3) = (v131 >> 17) & 0x1FF;
        v144 = *(intArray + 2);
        if (v7 + 55 < 0 || v143 >= v144)
        {
          IOSArray_throwOutOfBoundsWithMsg(v144, (v7 + 55));
        }

        v145 = intCopy + 8;
        *(intArray + v143 + 3) = (v131 >> 8) & 0x1FF;
        v146 = *(array + 2);
        if (intCopy + 8 < 0 || v145 >= v146)
        {
          IOSArray_throwOutOfBoundsWithMsg(v146, (intCopy + 8));
        }

        v147 = v7 + 56;
        v148 = *(array + v145 + 2);
        v149 = *(intArray + 2);
        if (v7 + 56 < 0 || v147 >= v149)
        {
          IOSArray_throwOutOfBoundsWithMsg(v149, (v7 + 56));
        }

        v150 = v7 + 57;
        *(intArray + v147 + 3) = (v148 >> 63) | (2 * v131);
        v151 = *(intArray + 2);
        if (v7 + 57 < 0 || v150 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (v7 + 57));
        }

        v152 = v7 + 58;
        *(intArray + v150 + 3) = (v148 >> 54) & 0x1FF;
        v153 = *(intArray + 2);
        if (v7 + 58 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (v7 + 58));
        }

        v154 = v7 + 59;
        *(intArray + v152 + 3) = (v148 >> 45) & 0x1FF;
        v155 = *(intArray + 2);
        if (v7 + 59 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 59));
        }

        v156 = v7 + 60;
        *(intArray + v154 + 3) = (v148 >> 36) & 0x1FF;
        v157 = *(intArray + 2);
        if (v7 + 60 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (v7 + 60));
        }

        v158 = v7 + 61;
        *(intArray + v156 + 3) = (v148 >> 27) & 0x1FF;
        v159 = *(intArray + 2);
        if (v7 + 61 < 0 || v158 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (v7 + 61));
        }

        v160 = v7 + 62;
        *(intArray + v158 + 3) = (v148 >> 18) & 0x1FF;
        v161 = *(intArray + 2);
        if (v7 + 62 < 0 || v160 >= v161)
        {
          IOSArray_throwOutOfBoundsWithMsg(v161, (v7 + 62));
        }

        v162 = v7 + 63;
        *(intArray + v160 + 3) = (v148 >> 9) & 0x1FF;
        v163 = *(intArray + 2);
        if (v7 + 63 < 0 || v162 >= v163)
        {
          IOSArray_throwOutOfBoundsWithMsg(v163, (v7 + 63));
        }

        int = intCopy + 9;
        v7 = (v7 + 64);
        *(intArray + v162 + 3) = v148 & 0x1FF;
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

        v12 = (int + 1);
        if ((v12 & 0x80000000) != 0 || v12 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v12);
        }

        if (!intArray)
        {
          break;
        }

        v13 = *(array + v12 + 12);
        v14 = *(intArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v8);
        }

        v15 = intCopy + 2;
        *(intArray + v8 + 3) = (v13 >> 7) | (2 * *(array + intCopy + 12));
        v16 = *(array + 2);
        if (intCopy + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (intCopy + 2));
        }

        v17 = v8 + 1;
        v18 = *(array + v15 + 12);
        v19 = *(intArray + 2);
        if (v8 + 1 < 0 || v17 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v8 + 1));
        }

        v20 = intCopy + 3;
        *(intArray + v17 + 3) = (v18 >> 6) & 0xFFFFFE03 | (4 * (v13 & 0x7F));
        v21 = *(array + 2);
        if (intCopy + 3 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (intCopy + 3));
        }

        v22 = v8 + 2;
        v23 = *(array + v20 + 12);
        v24 = *(intArray + 2);
        if (v8 + 2 < 0 || v22 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v8 + 2));
        }

        v25 = intCopy + 4;
        *(intArray + v22 + 3) = (v23 >> 5) & 0xFFFFFE07 | (8 * (v18 & 0x3F));
        v26 = *(array + 2);
        if (intCopy + 4 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 4));
        }

        v27 = v8 + 3;
        v28 = *(array + v25 + 12);
        v29 = *(intArray + 2);
        if (v8 + 3 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v8 + 3));
        }

        v30 = intCopy + 5;
        *(intArray + v27 + 3) = (v28 >> 4) & 0xFFFFFE0F | (16 * (v23 & 0x1F));
        v31 = *(array + 2);
        if (intCopy + 5 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (intCopy + 5));
        }

        v32 = v8 + 4;
        v33 = *(array + v30 + 12);
        v34 = *(intArray + 2);
        if (v8 + 4 < 0 || v32 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v8 + 4));
        }

        v35 = intCopy + 6;
        *(intArray + v32 + 3) = (v33 >> 3) & 0xFFFFFE1F | (32 * (v28 & 0xF));
        v36 = *(array + 2);
        if (intCopy + 6 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 6));
        }

        v37 = v8 + 5;
        v38 = *(array + v35 + 12);
        v39 = *(intArray + 2);
        if (v8 + 5 < 0 || v37 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v8 + 5));
        }

        v40 = intCopy + 7;
        *(intArray + v37 + 3) = (v38 >> 2) & 0xFFFFFE3F | ((v33 & 7) << 6);
        v41 = *(array + 2);
        if (intCopy + 7 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (intCopy + 7));
        }

        v42 = v8 + 6;
        v43 = *(array + v40 + 12);
        v44 = *(intArray + 2);
        if (v8 + 6 < 0 || v42 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v8 + 6));
        }

        v45 = intCopy + 8;
        *(intArray + v42 + 3) = (v43 >> 1) & 0xFFFFFE7F | ((v38 & 3) << 7);
        v46 = *(array + 2);
        if (intCopy + 8 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (intCopy + 8));
        }

        v47 = v8 + 7;
        v48 = *(array + v45 + 12);
        v49 = *(intArray + 2);
        if (v8 + 7 < 0 || v47 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v8 + 7));
        }

        *(intArray + v47 + 3) = v48 & 0xFFFFFEFF | ((v43 & 1) << 8);
        int = intCopy + 9;
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
        *(longArray + v7 + 2) = v12 >> 55;
        v15 = *(longArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(longArray + v14 + 2) = (v12 >> 46) & 0x1FF;
        v17 = *(longArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(longArray + v16 + 2) = (v12 >> 37) & 0x1FF;
        v19 = *(longArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = v7 + 4;
        *(longArray + v18 + 2) = (v12 >> 28) & 0x1FF;
        v21 = *(longArray + 2);
        if (v7 + 4 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + 4));
        }

        v22 = v7 + 5;
        *(longArray + v20 + 2) = (v12 >> 19) & 0x1FF;
        v23 = *(longArray + 2);
        if (v7 + 5 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v7 + 5));
        }

        v24 = v7 + 6;
        *(longArray + v22 + 2) = (v12 >> 10) & 0x1FF;
        v25 = *(longArray + 2);
        if (v7 + 6 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 6));
        }

        v26 = (int + 1);
        *(longArray + v24 + 2) = (v12 >> 1) & 0x1FF;
        v27 = *(array + 2);
        if ((v26 & 0x80000000) != 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, v26);
        }

        v28 = v7 + 7;
        v29 = *(array + v26 + 2);
        v30 = *(longArray + 2);
        if (v7 + 7 < 0 || v28 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 7));
        }

        *(&v31 + 1) = v12;
        *&v31 = *(array + v26 + 2);
        v32 = v7 + 8;
        *(longArray + v28 + 2) = (v31 >> 56) & 0x1FF;
        v33 = *(longArray + 2);
        if (v7 + 8 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 8));
        }

        v34 = v7 + 9;
        *(longArray + v32 + 2) = (v29 >> 47) & 0x1FF;
        v35 = *(longArray + 2);
        if (v7 + 9 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v7 + 9));
        }

        v36 = v7 + 10;
        *(longArray + v34 + 2) = (v29 >> 38) & 0x1FF;
        v37 = *(longArray + 2);
        if (v7 + 10 < 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 10));
        }

        v38 = v7 + 11;
        *(longArray + v36 + 2) = (v29 >> 29) & 0x1FF;
        v39 = *(longArray + 2);
        if (v7 + 11 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 11));
        }

        v40 = v7 + 12;
        *(longArray + v38 + 2) = (v29 >> 20) & 0x1FF;
        v41 = *(longArray + 2);
        if (v7 + 12 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 12));
        }

        v42 = v7 + 13;
        *(longArray + v40 + 2) = (v29 >> 11) & 0x1FF;
        v43 = *(longArray + 2);
        if (v7 + 13 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 13));
        }

        v44 = intCopy + 2;
        *(longArray + v42 + 2) = (v29 >> 2) & 0x1FF;
        v45 = *(array + 2);
        if (intCopy + 2 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (intCopy + 2));
        }

        v46 = v7 + 14;
        v47 = *(array + v44 + 2);
        v48 = *(longArray + 2);
        if (v7 + 14 < 0 || v46 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 14));
        }

        *(&v49 + 1) = v29;
        *&v49 = *(array + v44 + 2);
        v50 = v7 + 15;
        *(longArray + v46 + 2) = (v49 >> 57) & 0x1FF;
        v51 = *(longArray + 2);
        if (v7 + 15 < 0 || v50 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 15));
        }

        v52 = v7 + 16;
        *(longArray + v50 + 2) = HIWORD(v47) & 0x1FF;
        v53 = *(longArray + 2);
        if (v7 + 16 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (v7 + 16));
        }

        v54 = v7 + 17;
        *(longArray + v52 + 2) = (v47 >> 39) & 0x1FF;
        v55 = *(longArray + 2);
        if (v7 + 17 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 17));
        }

        v56 = v7 + 18;
        *(longArray + v54 + 2) = (v47 >> 30) & 0x1FF;
        v57 = *(longArray + 2);
        if (v7 + 18 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 18));
        }

        v58 = v7 + 19;
        *(longArray + v56 + 2) = (v47 >> 21) & 0x1FF;
        v59 = *(longArray + 2);
        if (v7 + 19 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 19));
        }

        v60 = v7 + 20;
        *(longArray + v58 + 2) = (v47 >> 12) & 0x1FF;
        v61 = *(longArray + 2);
        if (v7 + 20 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 20));
        }

        v62 = intCopy + 3;
        *(longArray + v60 + 2) = (v47 >> 3) & 0x1FF;
        v63 = *(array + 2);
        if (intCopy + 3 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (intCopy + 3));
        }

        v64 = v7 + 21;
        v65 = *(array + v62 + 2);
        v66 = *(longArray + 2);
        if (v7 + 21 < 0 || v64 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 21));
        }

        *(&v67 + 1) = v47;
        *&v67 = *(array + v62 + 2);
        v68 = v7 + 22;
        *(longArray + v64 + 2) = (v67 >> 58) & 0x1FF;
        v69 = *(longArray + 2);
        if (v7 + 22 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 22));
        }

        v70 = v7 + 23;
        *(longArray + v68 + 2) = (v65 >> 49) & 0x1FF;
        v71 = *(longArray + 2);
        if (v7 + 23 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 23));
        }

        v72 = v7 + 24;
        *(longArray + v70 + 2) = (v65 >> 40) & 0x1FF;
        v73 = *(longArray + 2);
        if (v7 + 24 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 24));
        }

        v74 = v7 + 25;
        *(longArray + v72 + 2) = (v65 >> 31) & 0x1FF;
        v75 = *(longArray + 2);
        if (v7 + 25 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 25));
        }

        v76 = v7 + 26;
        *(longArray + v74 + 2) = (v65 >> 22) & 0x1FF;
        v77 = *(longArray + 2);
        if (v7 + 26 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (v7 + 26));
        }

        v78 = v7 + 27;
        *(longArray + v76 + 2) = (v65 >> 13) & 0x1FF;
        v79 = *(longArray + 2);
        if (v7 + 27 < 0 || v78 >= v79)
        {
          IOSArray_throwOutOfBoundsWithMsg(v79, (v7 + 27));
        }

        v80 = intCopy + 4;
        *(longArray + v78 + 2) = (v65 >> 4) & 0x1FF;
        v81 = *(array + 2);
        if (intCopy + 4 < 0 || v80 >= v81)
        {
          IOSArray_throwOutOfBoundsWithMsg(v81, (intCopy + 4));
        }

        v82 = v7 + 28;
        v83 = *(array + v80 + 2);
        v84 = *(longArray + 2);
        if (v7 + 28 < 0 || v82 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 28));
        }

        *(&v85 + 1) = v65;
        *&v85 = *(array + v80 + 2);
        v86 = v7 + 29;
        *(longArray + v82 + 2) = (v85 >> 59) & 0x1FF;
        v87 = *(longArray + 2);
        if (v7 + 29 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 29));
        }

        v88 = v7 + 30;
        *(longArray + v86 + 2) = (v83 >> 50) & 0x1FF;
        v89 = *(longArray + 2);
        if (v7 + 30 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 30));
        }

        v90 = v7 + 31;
        *(longArray + v88 + 2) = (v83 >> 41) & 0x1FF;
        v91 = *(longArray + 2);
        if (v7 + 31 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 31));
        }

        v92 = v7 + 32;
        *(longArray + v90 + 2) = HIDWORD(v83) & 0x1FF;
        v93 = *(longArray + 2);
        if (v7 + 32 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 32));
        }

        v94 = v7 + 33;
        *(longArray + v92 + 2) = v83 >> 23;
        v95 = *(longArray + 2);
        if (v7 + 33 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (v7 + 33));
        }

        v96 = v7 + 34;
        *(longArray + v94 + 2) = (v83 >> 14) & 0x1FF;
        v97 = *(longArray + 2);
        if (v7 + 34 < 0 || v96 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (v7 + 34));
        }

        v98 = intCopy + 5;
        *(longArray + v96 + 2) = (v83 >> 5) & 0x1FF;
        v99 = *(array + 2);
        if (intCopy + 5 < 0 || v98 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (intCopy + 5));
        }

        v100 = v7 + 35;
        v101 = *(array + v98 + 2);
        v102 = *(longArray + 2);
        if (v7 + 35 < 0 || v100 >= v102)
        {
          IOSArray_throwOutOfBoundsWithMsg(v102, (v7 + 35));
        }

        *(&v103 + 1) = v83;
        *&v103 = *(array + v98 + 2);
        v104 = v7 + 36;
        *(longArray + v100 + 2) = (v103 >> 60) & 0x1FF;
        v105 = *(longArray + 2);
        if (v7 + 36 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (v7 + 36));
        }

        v106 = v7 + 37;
        *(longArray + v104 + 2) = (v101 >> 51) & 0x1FF;
        v107 = *(longArray + 2);
        if (v7 + 37 < 0 || v106 >= v107)
        {
          IOSArray_throwOutOfBoundsWithMsg(v107, (v7 + 37));
        }

        v108 = v7 + 38;
        *(longArray + v106 + 2) = (v101 >> 42) & 0x1FF;
        v109 = *(longArray + 2);
        if (v7 + 38 < 0 || v108 >= v109)
        {
          IOSArray_throwOutOfBoundsWithMsg(v109, (v7 + 38));
        }

        v110 = v7 + 39;
        *(longArray + v108 + 2) = (v101 >> 33) & 0x1FF;
        v111 = *(longArray + 2);
        if (v7 + 39 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 39));
        }

        v112 = v7 + 40;
        *(longArray + v110 + 2) = (v101 >> 24) & 0x1FF;
        v113 = *(longArray + 2);
        if (v7 + 40 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (v7 + 40));
        }

        v114 = v7 + 41;
        *(longArray + v112 + 2) = (v101 >> 15) & 0x1FF;
        v115 = *(longArray + 2);
        if (v7 + 41 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 41));
        }

        v116 = intCopy + 6;
        *(longArray + v114 + 2) = (v101 >> 6) & 0x1FF;
        v117 = *(array + 2);
        if (intCopy + 6 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (intCopy + 6));
        }

        v118 = v7 + 42;
        v119 = *(array + v116 + 2);
        v120 = *(longArray + 2);
        if (v7 + 42 < 0 || v118 >= v120)
        {
          IOSArray_throwOutOfBoundsWithMsg(v120, (v7 + 42));
        }

        *(&v121 + 1) = v101;
        *&v121 = *(array + v116 + 2);
        v122 = v7 + 43;
        *(longArray + v118 + 2) = (v121 >> 61) & 0x1FF;
        v123 = *(longArray + 2);
        if (v7 + 43 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (v7 + 43));
        }

        v124 = v7 + 44;
        *(longArray + v122 + 2) = (v119 >> 52) & 0x1FF;
        v125 = *(longArray + 2);
        if (v7 + 44 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (v7 + 44));
        }

        v126 = v7 + 45;
        *(longArray + v124 + 2) = (v119 >> 43) & 0x1FF;
        v127 = *(longArray + 2);
        if (v7 + 45 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (v7 + 45));
        }

        v128 = v7 + 46;
        *(longArray + v126 + 2) = (v119 >> 34) & 0x1FF;
        v129 = *(longArray + 2);
        if (v7 + 46 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 46));
        }

        v130 = v7 + 47;
        *(longArray + v128 + 2) = (v119 >> 25) & 0x1FF;
        v131 = *(longArray + 2);
        if (v7 + 47 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 47));
        }

        v132 = v7 + 48;
        *(longArray + v130 + 2) = (v119 >> 16) & 0x1FF;
        v133 = *(longArray + 2);
        if (v7 + 48 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (v7 + 48));
        }

        v134 = intCopy + 7;
        *(longArray + v132 + 2) = v119 >> 7;
        v135 = *(array + 2);
        if (intCopy + 7 < 0 || v134 >= v135)
        {
          IOSArray_throwOutOfBoundsWithMsg(v135, (intCopy + 7));
        }

        v136 = v7 + 49;
        v137 = *(array + v134 + 2);
        v138 = *(longArray + 2);
        if (v7 + 49 < 0 || v136 >= v138)
        {
          IOSArray_throwOutOfBoundsWithMsg(v138, (v7 + 49));
        }

        *(&v139 + 1) = v119;
        *&v139 = *(array + v134 + 2);
        v140 = v7 + 50;
        *(longArray + v136 + 2) = (v139 >> 62) & 0x1FF;
        v141 = *(longArray + 2);
        if (v7 + 50 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 50));
        }

        v142 = v7 + 51;
        *(longArray + v140 + 2) = (v137 >> 53) & 0x1FF;
        v143 = *(longArray + 2);
        if (v7 + 51 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 51));
        }

        v144 = v7 + 52;
        *(longArray + v142 + 2) = (v137 >> 44) & 0x1FF;
        v145 = *(longArray + 2);
        if (v7 + 52 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 52));
        }

        v146 = v7 + 53;
        *(longArray + v144 + 2) = (v137 >> 35) & 0x1FF;
        v147 = *(longArray + 2);
        if (v7 + 53 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (v7 + 53));
        }

        v148 = v7 + 54;
        *(longArray + v146 + 2) = (v137 >> 26) & 0x1FF;
        v149 = *(longArray + 2);
        if (v7 + 54 < 0 || v148 >= v149)
        {
          IOSArray_throwOutOfBoundsWithMsg(v149, (v7 + 54));
        }

        v150 = v7 + 55;
        *(longArray + v148 + 2) = (v137 >> 17) & 0x1FF;
        v151 = *(longArray + 2);
        if (v7 + 55 < 0 || v150 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (v7 + 55));
        }

        v152 = intCopy + 8;
        *(longArray + v150 + 2) = (v137 >> 8) & 0x1FF;
        v153 = *(array + 2);
        if (intCopy + 8 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (intCopy + 8));
        }

        v154 = v7 + 56;
        v155 = *(array + v152 + 2);
        v156 = *(longArray + 2);
        if (v7 + 56 < 0 || v154 >= v156)
        {
          IOSArray_throwOutOfBoundsWithMsg(v156, (v7 + 56));
        }

        *(&v157 + 1) = v137;
        *&v157 = *(array + v152 + 2);
        v158 = v7 + 57;
        *(longArray + v154 + 2) = (v157 >> 63) & 0x1FF;
        v159 = *(longArray + 2);
        if (v7 + 57 < 0 || v158 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (v7 + 57));
        }

        v160 = v7 + 58;
        *(longArray + v158 + 2) = (v155 >> 54) & 0x1FF;
        v161 = *(longArray + 2);
        if (v7 + 58 < 0 || v160 >= v161)
        {
          IOSArray_throwOutOfBoundsWithMsg(v161, (v7 + 58));
        }

        v162 = v7 + 59;
        *(longArray + v160 + 2) = (v155 >> 45) & 0x1FF;
        v163 = *(longArray + 2);
        if (v7 + 59 < 0 || v162 >= v163)
        {
          IOSArray_throwOutOfBoundsWithMsg(v163, (v7 + 59));
        }

        v164 = v7 + 60;
        *(longArray + v162 + 2) = (v155 >> 36) & 0x1FF;
        v165 = *(longArray + 2);
        if (v7 + 60 < 0 || v164 >= v165)
        {
          IOSArray_throwOutOfBoundsWithMsg(v165, (v7 + 60));
        }

        v166 = v7 + 61;
        *(longArray + v164 + 2) = (v155 >> 27) & 0x1FF;
        v167 = *(longArray + 2);
        if (v7 + 61 < 0 || v166 >= v167)
        {
          IOSArray_throwOutOfBoundsWithMsg(v167, (v7 + 61));
        }

        v168 = v7 + 62;
        *(longArray + v166 + 2) = (v155 >> 18) & 0x1FF;
        v169 = *(longArray + 2);
        if (v7 + 62 < 0 || v168 >= v169)
        {
          IOSArray_throwOutOfBoundsWithMsg(v169, (v7 + 62));
        }

        v170 = v7 + 63;
        *(longArray + v168 + 2) = (v155 >> 9) & 0x1FF;
        v171 = *(longArray + 2);
        if (v7 + 63 < 0 || v170 >= v171)
        {
          IOSArray_throwOutOfBoundsWithMsg(v171, (v7 + 63));
        }

        int = intCopy + 9;
        v7 = (v7 + 64);
        *(longArray + v170 + 2) = v155 & 0x1FF;
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

        v12 = (int + 1);
        if ((v12 & 0x80000000) != 0 || v12 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v12);
        }

        if (!longArray)
        {
          break;
        }

        v13 = *(array + v12 + 12);
        v14 = *(longArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v8);
        }

        v15 = intCopy + 2;
        *(longArray + v8 + 2) = (v13 >> 7) | (2 * *(array + intCopy + 12));
        v16 = *(array + 2);
        if (intCopy + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (intCopy + 2));
        }

        v17 = v8 + 1;
        v18 = *(array + v15 + 12);
        v19 = *(longArray + 2);
        if (v8 + 1 < 0 || v17 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v8 + 1));
        }

        v20 = intCopy + 3;
        *(longArray + v17 + 2) = (v18 >> 6) & 0xFFFFFFFFFFFFFE03 | (4 * (v13 & 0x7F));
        v21 = *(array + 2);
        if (intCopy + 3 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (intCopy + 3));
        }

        v22 = v8 + 2;
        v23 = *(array + v20 + 12);
        v24 = *(longArray + 2);
        if (v8 + 2 < 0 || v22 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v8 + 2));
        }

        v25 = intCopy + 4;
        *(longArray + v22 + 2) = (v23 >> 5) & 0xFFFFFFFFFFFFFE07 | (8 * (v18 & 0x3F));
        v26 = *(array + 2);
        if (intCopy + 4 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 4));
        }

        v27 = v8 + 3;
        v28 = *(array + v25 + 12);
        v29 = *(longArray + 2);
        if (v8 + 3 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v8 + 3));
        }

        v30 = intCopy + 5;
        *(longArray + v27 + 2) = (v28 >> 4) & 0xFFFFFFFFFFFFFE0FLL | (16 * (v23 & 0x1F));
        v31 = *(array + 2);
        if (intCopy + 5 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (intCopy + 5));
        }

        v32 = v8 + 4;
        v33 = *(array + v30 + 12);
        v34 = *(longArray + 2);
        if (v8 + 4 < 0 || v32 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v8 + 4));
        }

        v35 = intCopy + 6;
        *(longArray + v32 + 2) = (v33 >> 3) & 0xFFFFFFFFFFFFFE1FLL | (32 * (v28 & 0xF));
        v36 = *(array + 2);
        if (intCopy + 6 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 6));
        }

        v37 = v8 + 5;
        v38 = *(array + v35 + 12);
        v39 = *(longArray + 2);
        if (v8 + 5 < 0 || v37 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v8 + 5));
        }

        v40 = intCopy + 7;
        *(longArray + v37 + 2) = (v38 >> 2) & 0xFFFFFFFFFFFFFE3FLL | ((v33 & 7) << 6);
        v41 = *(array + 2);
        if (intCopy + 7 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (intCopy + 7));
        }

        v42 = v8 + 6;
        v43 = *(array + v40 + 12);
        v44 = *(longArray + 2);
        if (v8 + 6 < 0 || v42 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v8 + 6));
        }

        v45 = intCopy + 8;
        *(longArray + v42 + 2) = (v43 >> 1) & 0xFFFFFFFFFFFFFE7FLL | ((v38 & 3) << 7);
        v46 = *(array + 2);
        if (intCopy + 8 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (intCopy + 8));
        }

        v47 = v8 + 7;
        v48 = *(array + v45 + 12);
        v49 = *(longArray + 2);
        if (v8 + 7 < 0 || v47 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v8 + 7));
        }

        *(longArray + v47 + 2) = v48 & 0xFFFFFFFFFFFFFEFFLL | ((v43 & 1) << 8);
        int = intCopy + 9;
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