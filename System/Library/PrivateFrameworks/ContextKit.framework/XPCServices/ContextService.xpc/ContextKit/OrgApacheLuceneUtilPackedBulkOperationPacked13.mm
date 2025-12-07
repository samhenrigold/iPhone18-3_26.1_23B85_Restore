@interface OrgApacheLuceneUtilPackedBulkOperationPacked13
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked13

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
        *(intArray + v7 + 3) = v12 >> 51;
        v15 = *(intArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(intArray + v14 + 3) = (v12 >> 38) & 0x1FFF;
        v17 = *(intArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(intArray + v16 + 3) = (v12 >> 25) & 0x1FFF;
        v19 = *(intArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = (int + 1);
        *(intArray + v18 + 3) = (v12 >> 12) & 0x1FFF;
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
        *(intArray + v22 + 3) = (v23 >> 63) | (2 * (v12 & 0xFFF));
        v26 = *(intArray + 2);
        if (v7 + 5 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v7 + 5));
        }

        v27 = v7 + 6;
        *(intArray + v25 + 3) = (v23 >> 50) & 0x1FFF;
        v28 = *(intArray + 2);
        if (v7 + 6 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v7 + 6));
        }

        v29 = v7 + 7;
        *(intArray + v27 + 3) = (v23 >> 37) & 0x1FFF;
        v30 = *(intArray + 2);
        if (v7 + 7 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 7));
        }

        v31 = v7 + 8;
        *(intArray + v29 + 3) = (v23 >> 24) & 0x1FFF;
        v32 = *(intArray + 2);
        if (v7 + 8 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 8));
        }

        v33 = intCopy + 2;
        *(intArray + v31 + 3) = (v23 >> 11) & 0x1FFF;
        v34 = *(array + 2);
        if (intCopy + 2 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (intCopy + 2));
        }

        v35 = v7 + 9;
        v36 = *(array + v33 + 2);
        v37 = *(intArray + 2);
        if (v7 + 9 < 0 || v35 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, (v7 + 9));
        }

        v38 = v7 + 10;
        *(intArray + v35 + 3) = (v36 >> 62) & 3 | (4 * (v23 & 0x7FF));
        v39 = *(intArray + 2);
        if (v7 + 10 < 0 || v38 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 10));
        }

        v40 = v7 + 11;
        *(intArray + v38 + 3) = (v36 >> 49) & 0x1FFF;
        v41 = *(intArray + 2);
        if (v7 + 11 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 11));
        }

        v42 = v7 + 12;
        *(intArray + v40 + 3) = (v36 >> 36) & 0x1FFF;
        v43 = *(intArray + 2);
        if (v7 + 12 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 12));
        }

        v44 = v7 + 13;
        *(intArray + v42 + 3) = (v36 >> 23) & 0x1FFF;
        v45 = *(intArray + 2);
        if (v7 + 13 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 13));
        }

        v46 = intCopy + 3;
        *(intArray + v44 + 3) = (v36 >> 10) & 0x1FFF;
        v47 = *(array + 2);
        if (intCopy + 3 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (intCopy + 3));
        }

        v48 = v7 + 14;
        v49 = *(array + v46 + 2);
        v50 = *(intArray + 2);
        if (v7 + 14 < 0 || v48 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 14));
        }

        v51 = v7 + 15;
        *(intArray + v48 + 3) = (v49 >> 61) & 7 | (8 * (v36 & 0x3FF));
        v52 = *(intArray + 2);
        if (v7 + 15 < 0 || v51 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 15));
        }

        v53 = v7 + 16;
        *(intArray + v51 + 3) = HIWORD(v49) & 0x1FFF;
        v54 = *(intArray + 2);
        if (v7 + 16 < 0 || v53 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, (v7 + 16));
        }

        v55 = v7 + 17;
        *(intArray + v53 + 3) = (v49 >> 35) & 0x1FFF;
        v56 = *(intArray + 2);
        if (v7 + 17 < 0 || v55 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 17));
        }

        v57 = v7 + 18;
        *(intArray + v55 + 3) = (v49 >> 22) & 0x1FFF;
        v58 = *(intArray + 2);
        if (v7 + 18 < 0 || v57 >= v58)
        {
          IOSArray_throwOutOfBoundsWithMsg(v58, (v7 + 18));
        }

        v59 = intCopy + 4;
        *(intArray + v57 + 3) = (v49 >> 9) & 0x1FFF;
        v60 = *(array + 2);
        if (intCopy + 4 < 0 || v59 >= v60)
        {
          IOSArray_throwOutOfBoundsWithMsg(v60, (intCopy + 4));
        }

        v61 = v7 + 19;
        v62 = *(array + v59 + 2);
        v63 = *(intArray + 2);
        if (v7 + 19 < 0 || v61 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (v7 + 19));
        }

        v64 = v7 + 20;
        *(intArray + v61 + 3) = (v62 >> 60) & 0xF | (16 * (v49 & 0x1FF));
        v65 = *(intArray + 2);
        if (v7 + 20 < 0 || v64 >= v65)
        {
          IOSArray_throwOutOfBoundsWithMsg(v65, (v7 + 20));
        }

        v66 = v7 + 21;
        *(intArray + v64 + 3) = (v62 >> 47) & 0x1FFF;
        v67 = *(intArray + 2);
        if (v7 + 21 < 0 || v66 >= v67)
        {
          IOSArray_throwOutOfBoundsWithMsg(v67, (v7 + 21));
        }

        v68 = v7 + 22;
        *(intArray + v66 + 3) = (v62 >> 34) & 0x1FFF;
        v69 = *(intArray + 2);
        if (v7 + 22 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 22));
        }

        v70 = v7 + 23;
        *(intArray + v68 + 3) = (v62 >> 21) & 0x1FFF;
        v71 = *(intArray + 2);
        if (v7 + 23 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 23));
        }

        v72 = intCopy + 5;
        *(intArray + v70 + 3) = (v62 >> 8) & 0x1FFF;
        v73 = *(array + 2);
        if (intCopy + 5 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (intCopy + 5));
        }

        v74 = v7 + 24;
        v75 = *(array + v72 + 2);
        v76 = *(intArray + 2);
        if (v7 + 24 < 0 || v74 >= v76)
        {
          IOSArray_throwOutOfBoundsWithMsg(v76, (v7 + 24));
        }

        v77 = v7 + 25;
        *(intArray + v74 + 3) = (v75 >> 59) & 0x1F | (32 * v62);
        v78 = *(intArray + 2);
        if (v7 + 25 < 0 || v77 >= v78)
        {
          IOSArray_throwOutOfBoundsWithMsg(v78, (v7 + 25));
        }

        v79 = v7 + 26;
        *(intArray + v77 + 3) = (v75 >> 46) & 0x1FFF;
        v80 = *(intArray + 2);
        if (v7 + 26 < 0 || v79 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 26));
        }

        v81 = v7 + 27;
        *(intArray + v79 + 3) = (v75 >> 33) & 0x1FFF;
        v82 = *(intArray + 2);
        if (v7 + 27 < 0 || v81 >= v82)
        {
          IOSArray_throwOutOfBoundsWithMsg(v82, (v7 + 27));
        }

        v83 = v7 + 28;
        *(intArray + v81 + 3) = (v75 >> 20) & 0x1FFF;
        v84 = *(intArray + 2);
        if (v7 + 28 < 0 || v83 >= v84)
        {
          IOSArray_throwOutOfBoundsWithMsg(v84, (v7 + 28));
        }

        v85 = intCopy + 6;
        *(intArray + v83 + 3) = (v75 >> 7) & 0x1FFF;
        v86 = *(array + 2);
        if (intCopy + 6 < 0 || v85 >= v86)
        {
          IOSArray_throwOutOfBoundsWithMsg(v86, (intCopy + 6));
        }

        v87 = v7 + 29;
        v88 = *(array + v85 + 2);
        v89 = *(intArray + 2);
        if (v7 + 29 < 0 || v87 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 29));
        }

        v90 = v7 + 30;
        *(intArray + v87 + 3) = (v88 >> 58) & 0x3F | ((v75 & 0x7F) << 6);
        v91 = *(intArray + 2);
        if (v7 + 30 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (v7 + 30));
        }

        v92 = v7 + 31;
        *(intArray + v90 + 3) = (v88 >> 45) & 0x1FFF;
        v93 = *(intArray + 2);
        if (v7 + 31 < 0 || v92 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, (v7 + 31));
        }

        v94 = v7 + 32;
        *(intArray + v92 + 3) = WORD2(v88) & 0x1FFF;
        v95 = *(intArray + 2);
        if (v7 + 32 < 0 || v94 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, (v7 + 32));
        }

        v96 = v7 + 33;
        *(intArray + v94 + 3) = v88 >> 19;
        v97 = *(intArray + 2);
        if (v7 + 33 < 0 || v96 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (v7 + 33));
        }

        v98 = intCopy + 7;
        *(intArray + v96 + 3) = (v88 >> 6) & 0x1FFF;
        v99 = *(array + 2);
        if (intCopy + 7 < 0 || v98 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (intCopy + 7));
        }

        v100 = v7 + 34;
        v101 = *(array + v98 + 2);
        v102 = *(intArray + 2);
        if (v7 + 34 < 0 || v100 >= v102)
        {
          IOSArray_throwOutOfBoundsWithMsg(v102, (v7 + 34));
        }

        v103 = v7 + 35;
        *(intArray + v100 + 3) = (v101 >> 57) & 0x7F | ((v88 & 0x3F) << 7);
        v104 = *(intArray + 2);
        if (v7 + 35 < 0 || v103 >= v104)
        {
          IOSArray_throwOutOfBoundsWithMsg(v104, (v7 + 35));
        }

        v105 = v7 + 36;
        *(intArray + v103 + 3) = (v101 >> 44) & 0x1FFF;
        v106 = *(intArray + 2);
        if (v7 + 36 < 0 || v105 >= v106)
        {
          IOSArray_throwOutOfBoundsWithMsg(v106, (v7 + 36));
        }

        v107 = v7 + 37;
        *(intArray + v105 + 3) = (v101 >> 31) & 0x1FFF;
        v108 = *(intArray + 2);
        if (v7 + 37 < 0 || v107 >= v108)
        {
          IOSArray_throwOutOfBoundsWithMsg(v108, (v7 + 37));
        }

        v109 = v7 + 38;
        *(intArray + v107 + 3) = (v101 >> 18) & 0x1FFF;
        v110 = *(intArray + 2);
        if (v7 + 38 < 0 || v109 >= v110)
        {
          IOSArray_throwOutOfBoundsWithMsg(v110, (v7 + 38));
        }

        v111 = intCopy + 8;
        *(intArray + v109 + 3) = (v101 >> 5) & 0x1FFF;
        v112 = *(array + 2);
        if (intCopy + 8 < 0 || v111 >= v112)
        {
          IOSArray_throwOutOfBoundsWithMsg(v112, (intCopy + 8));
        }

        v113 = v7 + 39;
        v114 = *(array + v111 + 2);
        v115 = *(intArray + 2);
        if (v7 + 39 < 0 || v113 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 39));
        }

        v116 = v7 + 40;
        *(intArray + v113 + 3) = HIBYTE(v114) | ((v101 & 0x1F) << 8);
        v117 = *(intArray + 2);
        if (v7 + 40 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 40));
        }

        v118 = v7 + 41;
        *(intArray + v116 + 3) = (v114 >> 43) & 0x1FFF;
        v119 = *(intArray + 2);
        if (v7 + 41 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (v7 + 41));
        }

        v120 = v7 + 42;
        *(intArray + v118 + 3) = (v114 >> 30) & 0x1FFF;
        v121 = *(intArray + 2);
        if (v7 + 42 < 0 || v120 >= v121)
        {
          IOSArray_throwOutOfBoundsWithMsg(v121, (v7 + 42));
        }

        v122 = v7 + 43;
        *(intArray + v120 + 3) = (v114 >> 17) & 0x1FFF;
        v123 = *(intArray + 2);
        if (v7 + 43 < 0 || v122 >= v123)
        {
          IOSArray_throwOutOfBoundsWithMsg(v123, (v7 + 43));
        }

        v124 = intCopy + 9;
        *(intArray + v122 + 3) = (v114 >> 4) & 0x1FFF;
        v125 = *(array + 2);
        if (intCopy + 9 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (intCopy + 9));
        }

        v126 = v7 + 44;
        v127 = *(array + v124 + 2);
        v128 = *(intArray + 2);
        if (v7 + 44 < 0 || v126 >= v128)
        {
          IOSArray_throwOutOfBoundsWithMsg(v128, (v7 + 44));
        }

        v129 = v7 + 45;
        *(intArray + v126 + 3) = (v127 >> 55) & 0xE1FF | ((v114 & 0xF) << 9);
        v130 = *(intArray + 2);
        if (v7 + 45 < 0 || v129 >= v130)
        {
          IOSArray_throwOutOfBoundsWithMsg(v130, (v7 + 45));
        }

        v131 = v7 + 46;
        *(intArray + v129 + 3) = (v127 >> 42) & 0x1FFF;
        v132 = *(intArray + 2);
        if (v7 + 46 < 0 || v131 >= v132)
        {
          IOSArray_throwOutOfBoundsWithMsg(v132, (v7 + 46));
        }

        v133 = v7 + 47;
        *(intArray + v131 + 3) = (v127 >> 29) & 0x1FFF;
        v134 = *(intArray + 2);
        if (v7 + 47 < 0 || v133 >= v134)
        {
          IOSArray_throwOutOfBoundsWithMsg(v134, (v7 + 47));
        }

        v135 = v7 + 48;
        *(intArray + v133 + 3) = WORD1(v127) & 0x1FFF;
        v136 = *(intArray + 2);
        if (v7 + 48 < 0 || v135 >= v136)
        {
          IOSArray_throwOutOfBoundsWithMsg(v136, (v7 + 48));
        }

        v137 = intCopy + 10;
        *(intArray + v135 + 3) = v127 >> 3;
        v138 = *(array + 2);
        if (intCopy + 10 < 0 || v137 >= v138)
        {
          IOSArray_throwOutOfBoundsWithMsg(v138, (intCopy + 10));
        }

        v139 = v7 + 49;
        v140 = *(array + v137 + 2);
        v141 = *(intArray + 2);
        if (v7 + 49 < 0 || v139 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 49));
        }

        v142 = v7 + 50;
        *(intArray + v139 + 3) = (v140 >> 54) & 0xE3FF | ((v127 & 7) << 10);
        v143 = *(intArray + 2);
        if (v7 + 50 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 50));
        }

        v144 = v7 + 51;
        *(intArray + v142 + 3) = (v140 >> 41) & 0x1FFF;
        v145 = *(intArray + 2);
        if (v7 + 51 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 51));
        }

        v146 = v7 + 52;
        *(intArray + v144 + 3) = (v140 >> 28) & 0x1FFF;
        v147 = *(intArray + 2);
        if (v7 + 52 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (v7 + 52));
        }

        v148 = v7 + 53;
        *(intArray + v146 + 3) = (v140 >> 15) & 0x1FFF;
        v149 = *(intArray + 2);
        if (v7 + 53 < 0 || v148 >= v149)
        {
          IOSArray_throwOutOfBoundsWithMsg(v149, (v7 + 53));
        }

        v150 = intCopy + 11;
        *(intArray + v148 + 3) = (v140 >> 2) & 0x1FFF;
        v151 = *(array + 2);
        if (intCopy + 11 < 0 || v150 >= v151)
        {
          IOSArray_throwOutOfBoundsWithMsg(v151, (intCopy + 11));
        }

        v152 = v7 + 54;
        v153 = *(array + v150 + 2);
        v154 = *(intArray + 2);
        if (v7 + 54 < 0 || v152 >= v154)
        {
          IOSArray_throwOutOfBoundsWithMsg(v154, (v7 + 54));
        }

        v155 = v7 + 55;
        *(intArray + v152 + 3) = (v153 >> 53) & 0xE7FF | ((v140 & 3) << 11);
        v156 = *(intArray + 2);
        if (v7 + 55 < 0 || v155 >= v156)
        {
          IOSArray_throwOutOfBoundsWithMsg(v156, (v7 + 55));
        }

        v157 = v7 + 56;
        *(intArray + v155 + 3) = (v153 >> 40) & 0x1FFF;
        v158 = *(intArray + 2);
        if (v7 + 56 < 0 || v157 >= v158)
        {
          IOSArray_throwOutOfBoundsWithMsg(v158, (v7 + 56));
        }

        v159 = v7 + 57;
        *(intArray + v157 + 3) = (v153 >> 27) & 0x1FFF;
        v160 = *(intArray + 2);
        if (v7 + 57 < 0 || v159 >= v160)
        {
          IOSArray_throwOutOfBoundsWithMsg(v160, (v7 + 57));
        }

        v161 = v7 + 58;
        *(intArray + v159 + 3) = (v153 >> 14) & 0x1FFF;
        v162 = *(intArray + 2);
        if (v7 + 58 < 0 || v161 >= v162)
        {
          IOSArray_throwOutOfBoundsWithMsg(v162, (v7 + 58));
        }

        v163 = intCopy + 12;
        *(intArray + v161 + 3) = (v153 >> 1) & 0x1FFF;
        v164 = *(array + 2);
        if (intCopy + 12 < 0 || v163 >= v164)
        {
          IOSArray_throwOutOfBoundsWithMsg(v164, (intCopy + 12));
        }

        v165 = v7 + 59;
        v166 = *(array + v163 + 2);
        v167 = *(intArray + 2);
        if (v7 + 59 < 0 || v165 >= v167)
        {
          IOSArray_throwOutOfBoundsWithMsg(v167, (v7 + 59));
        }

        v168 = v7 + 60;
        *(intArray + v165 + 3) = (v166 >> 52) & 0xEFFF | ((v153 & 1) << 12);
        v169 = *(intArray + 2);
        if (v7 + 60 < 0 || v168 >= v169)
        {
          IOSArray_throwOutOfBoundsWithMsg(v169, (v7 + 60));
        }

        v170 = v7 + 61;
        *(intArray + v168 + 3) = (v166 >> 39) & 0x1FFF;
        v171 = *(intArray + 2);
        if (v7 + 61 < 0 || v170 >= v171)
        {
          IOSArray_throwOutOfBoundsWithMsg(v171, (v7 + 61));
        }

        v172 = v7 + 62;
        *(intArray + v170 + 3) = (v166 >> 26) & 0x1FFF;
        v173 = *(intArray + 2);
        if (v7 + 62 < 0 || v172 >= v173)
        {
          IOSArray_throwOutOfBoundsWithMsg(v173, (v7 + 62));
        }

        v174 = v7 + 63;
        *(intArray + v172 + 3) = (v166 >> 13) & 0x1FFF;
        v175 = *(intArray + 2);
        if (v7 + 63 < 0 || v174 >= v175)
        {
          IOSArray_throwOutOfBoundsWithMsg(v175, (v7 + 63));
        }

        int = intCopy + 13;
        v7 = (v7 + 64);
        *(intArray + v174 + 3) = v166 & 0x1FFF;
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
        *(intArray + v7 + 3) = (v12 >> 3) | (32 * *(array + intCopy + 12));
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
        *(intArray + v18 + 3) = ((v12 & 7) << 10) | (4 * v17) | (v19 >> 6);
        v22 = *(array + 2);
        if (intCopy + 4 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (intCopy + 4));
        }

        v23 = v7 + 2;
        v24 = *(array + v21 + 12);
        v25 = *(intArray + 2);
        if (v7 + 2 < 0 || v23 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 2));
        }

        v26 = intCopy + 5;
        *(intArray + v23 + 3) = (v24 >> 1) & 0xFFFFE07F | ((v19 & 0x3F) << 7);
        v27 = *(array + 2);
        if (intCopy + 5 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (intCopy + 5));
        }

        v28 = intCopy + 6;
        v29 = *(array + v26 + 12);
        if (intCopy + 6 < 0 || v28 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (intCopy + 6));
        }

        v30 = v7 + 3;
        v31 = *(array + v28 + 12);
        v32 = *(intArray + 2);
        if (v7 + 3 < 0 || v30 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 3));
        }

        v33 = intCopy + 7;
        *(intArray + v30 + 3) = ((v24 & 1) << 12) | (16 * v29) | (v31 >> 4);
        v34 = *(array + 2);
        if (intCopy + 7 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (intCopy + 7));
        }

        v35 = intCopy + 8;
        v36 = *(array + v33 + 12);
        if (intCopy + 8 < 0 || v35 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (intCopy + 8));
        }

        v37 = v7 + 4;
        v38 = *(array + v35 + 12);
        v39 = *(intArray + 2);
        if (v7 + 4 < 0 || v37 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 4));
        }

        v40 = intCopy + 9;
        *(intArray + v37 + 3) = ((v31 & 0xF) << 9) | (2 * v36) | (v38 >> 7);
        v41 = *(array + 2);
        if (intCopy + 9 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (intCopy + 9));
        }

        v42 = v7 + 5;
        v43 = *(array + v40 + 12);
        v44 = *(intArray + 2);
        if (v7 + 5 < 0 || v42 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 5));
        }

        v45 = intCopy + 10;
        *(intArray + v42 + 3) = (v43 >> 2) & 0xFFFFE03F | ((v38 & 0x7F) << 6);
        v46 = *(array + 2);
        if (intCopy + 10 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (intCopy + 10));
        }

        v47 = intCopy + 11;
        v48 = *(array + v45 + 12);
        if (intCopy + 11 < 0 || v47 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (intCopy + 11));
        }

        v49 = v7 + 6;
        v50 = *(array + v47 + 12);
        v51 = *(intArray + 2);
        if (v7 + 6 < 0 || v49 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 6));
        }

        v52 = intCopy + 12;
        *(intArray + v49 + 3) = ((v43 & 3) << 11) | (8 * v48) | (v50 >> 5);
        v53 = *(array + 2);
        if (intCopy + 12 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (intCopy + 12));
        }

        v54 = v7 + 7;
        v55 = *(intArray + 2);
        if (v7 + 7 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 7));
        }

        *(intArray + v54 + 3) = *(array + v52 + 12) | ((v50 & 0x1F) << 8);
        int = intCopy + 13;
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
        *(longArray + v7 + 2) = v12 >> 51;
        v15 = *(longArray + 2);
        if (v7 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v7 + 1));
        }

        v16 = v7 + 2;
        *(longArray + v14 + 2) = (v12 >> 38) & 0x1FFF;
        v17 = *(longArray + 2);
        if (v7 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v7 + 2));
        }

        v18 = v7 + 3;
        *(longArray + v16 + 2) = (v12 >> 25) & 0x1FFF;
        v19 = *(longArray + 2);
        if (v7 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v7 + 3));
        }

        v20 = (int + 1);
        *(longArray + v18 + 2) = (v12 >> 12) & 0x1FFF;
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
        *(longArray + v22 + 2) = (v25 >> 63) & 0x1FFF;
        v27 = *(longArray + 2);
        if (v7 + 5 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (v7 + 5));
        }

        v28 = v7 + 6;
        *(longArray + v26 + 2) = (v23 >> 50) & 0x1FFF;
        v29 = *(longArray + 2);
        if (v7 + 6 < 0 || v28 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v7 + 6));
        }

        v30 = v7 + 7;
        *(longArray + v28 + 2) = (v23 >> 37) & 0x1FFF;
        v31 = *(longArray + 2);
        if (v7 + 7 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, (v7 + 7));
        }

        v32 = v7 + 8;
        *(longArray + v30 + 2) = (v23 >> 24) & 0x1FFF;
        v33 = *(longArray + 2);
        if (v7 + 8 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v7 + 8));
        }

        v34 = intCopy + 2;
        *(longArray + v32 + 2) = (v23 >> 11) & 0x1FFF;
        v35 = *(array + 2);
        if (intCopy + 2 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (intCopy + 2));
        }

        v36 = v7 + 9;
        v37 = *(array + v34 + 2);
        v38 = *(longArray + 2);
        if (v7 + 9 < 0 || v36 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, (v7 + 9));
        }

        *(&v39 + 1) = v23;
        *&v39 = *(array + v34 + 2);
        v40 = v7 + 10;
        *(longArray + v36 + 2) = (v39 >> 62) & 0x1FFF;
        v41 = *(longArray + 2);
        if (v7 + 10 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v7 + 10));
        }

        v42 = v7 + 11;
        *(longArray + v40 + 2) = (v37 >> 49) & 0x1FFF;
        v43 = *(longArray + 2);
        if (v7 + 11 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v7 + 11));
        }

        v44 = v7 + 12;
        *(longArray + v42 + 2) = (v37 >> 36) & 0x1FFF;
        v45 = *(longArray + 2);
        if (v7 + 12 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v7 + 12));
        }

        v46 = v7 + 13;
        *(longArray + v44 + 2) = (v37 >> 23) & 0x1FFF;
        v47 = *(longArray + 2);
        if (v7 + 13 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v7 + 13));
        }

        v48 = intCopy + 3;
        *(longArray + v46 + 2) = (v37 >> 10) & 0x1FFF;
        v49 = *(array + 2);
        if (intCopy + 3 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (intCopy + 3));
        }

        v50 = v7 + 14;
        v51 = *(array + v48 + 2);
        v52 = *(longArray + 2);
        if (v7 + 14 < 0 || v50 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, (v7 + 14));
        }

        *(&v53 + 1) = v37;
        *&v53 = *(array + v48 + 2);
        v54 = v7 + 15;
        *(longArray + v50 + 2) = (v53 >> 61) & 0x1FFF;
        v55 = *(longArray + 2);
        if (v7 + 15 < 0 || v54 >= v55)
        {
          IOSArray_throwOutOfBoundsWithMsg(v55, (v7 + 15));
        }

        v56 = v7 + 16;
        *(longArray + v54 + 2) = HIWORD(v51) & 0x1FFF;
        v57 = *(longArray + 2);
        if (v7 + 16 < 0 || v56 >= v57)
        {
          IOSArray_throwOutOfBoundsWithMsg(v57, (v7 + 16));
        }

        v58 = v7 + 17;
        *(longArray + v56 + 2) = (v51 >> 35) & 0x1FFF;
        v59 = *(longArray + 2);
        if (v7 + 17 < 0 || v58 >= v59)
        {
          IOSArray_throwOutOfBoundsWithMsg(v59, (v7 + 17));
        }

        v60 = v7 + 18;
        *(longArray + v58 + 2) = (v51 >> 22) & 0x1FFF;
        v61 = *(longArray + 2);
        if (v7 + 18 < 0 || v60 >= v61)
        {
          IOSArray_throwOutOfBoundsWithMsg(v61, (v7 + 18));
        }

        v62 = intCopy + 4;
        *(longArray + v60 + 2) = (v51 >> 9) & 0x1FFF;
        v63 = *(array + 2);
        if (intCopy + 4 < 0 || v62 >= v63)
        {
          IOSArray_throwOutOfBoundsWithMsg(v63, (intCopy + 4));
        }

        v64 = v7 + 19;
        v65 = *(array + v62 + 2);
        v66 = *(longArray + 2);
        if (v7 + 19 < 0 || v64 >= v66)
        {
          IOSArray_throwOutOfBoundsWithMsg(v66, (v7 + 19));
        }

        *(&v67 + 1) = v51;
        *&v67 = *(array + v62 + 2);
        v68 = v7 + 20;
        *(longArray + v64 + 2) = (v67 >> 60) & 0x1FFF;
        v69 = *(longArray + 2);
        if (v7 + 20 < 0 || v68 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, (v7 + 20));
        }

        v70 = v7 + 21;
        *(longArray + v68 + 2) = (v65 >> 47) & 0x1FFF;
        v71 = *(longArray + 2);
        if (v7 + 21 < 0 || v70 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, (v7 + 21));
        }

        v72 = v7 + 22;
        *(longArray + v70 + 2) = (v65 >> 34) & 0x1FFF;
        v73 = *(longArray + 2);
        if (v7 + 22 < 0 || v72 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, (v7 + 22));
        }

        v74 = v7 + 23;
        *(longArray + v72 + 2) = (v65 >> 21) & 0x1FFF;
        v75 = *(longArray + 2);
        if (v7 + 23 < 0 || v74 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, (v7 + 23));
        }

        v76 = intCopy + 5;
        *(longArray + v74 + 2) = (v65 >> 8) & 0x1FFF;
        v77 = *(array + 2);
        if (intCopy + 5 < 0 || v76 >= v77)
        {
          IOSArray_throwOutOfBoundsWithMsg(v77, (intCopy + 5));
        }

        v78 = v7 + 24;
        v79 = *(array + v76 + 2);
        v80 = *(longArray + 2);
        if (v7 + 24 < 0 || v78 >= v80)
        {
          IOSArray_throwOutOfBoundsWithMsg(v80, (v7 + 24));
        }

        *(&v81 + 1) = v65;
        *&v81 = *(array + v76 + 2);
        v82 = v7 + 25;
        *(longArray + v78 + 2) = (v81 >> 59) & 0x1FFF;
        v83 = *(longArray + 2);
        if (v7 + 25 < 0 || v82 >= v83)
        {
          IOSArray_throwOutOfBoundsWithMsg(v83, (v7 + 25));
        }

        v84 = v7 + 26;
        *(longArray + v82 + 2) = (v79 >> 46) & 0x1FFF;
        v85 = *(longArray + 2);
        if (v7 + 26 < 0 || v84 >= v85)
        {
          IOSArray_throwOutOfBoundsWithMsg(v85, (v7 + 26));
        }

        v86 = v7 + 27;
        *(longArray + v84 + 2) = (v79 >> 33) & 0x1FFF;
        v87 = *(longArray + 2);
        if (v7 + 27 < 0 || v86 >= v87)
        {
          IOSArray_throwOutOfBoundsWithMsg(v87, (v7 + 27));
        }

        v88 = v7 + 28;
        *(longArray + v86 + 2) = (v79 >> 20) & 0x1FFF;
        v89 = *(longArray + 2);
        if (v7 + 28 < 0 || v88 >= v89)
        {
          IOSArray_throwOutOfBoundsWithMsg(v89, (v7 + 28));
        }

        v90 = intCopy + 6;
        *(longArray + v88 + 2) = (v79 >> 7) & 0x1FFF;
        v91 = *(array + 2);
        if (intCopy + 6 < 0 || v90 >= v91)
        {
          IOSArray_throwOutOfBoundsWithMsg(v91, (intCopy + 6));
        }

        v92 = v7 + 29;
        v93 = *(array + v90 + 2);
        v94 = *(longArray + 2);
        if (v7 + 29 < 0 || v92 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, (v7 + 29));
        }

        *(&v95 + 1) = v79;
        *&v95 = *(array + v90 + 2);
        v96 = v7 + 30;
        *(longArray + v92 + 2) = (v95 >> 58) & 0x1FFF;
        v97 = *(longArray + 2);
        if (v7 + 30 < 0 || v96 >= v97)
        {
          IOSArray_throwOutOfBoundsWithMsg(v97, (v7 + 30));
        }

        v98 = v7 + 31;
        *(longArray + v96 + 2) = (v93 >> 45) & 0x1FFF;
        v99 = *(longArray + 2);
        if (v7 + 31 < 0 || v98 >= v99)
        {
          IOSArray_throwOutOfBoundsWithMsg(v99, (v7 + 31));
        }

        v100 = v7 + 32;
        *(longArray + v98 + 2) = HIDWORD(v93) & 0x1FFF;
        v101 = *(longArray + 2);
        if (v7 + 32 < 0 || v100 >= v101)
        {
          IOSArray_throwOutOfBoundsWithMsg(v101, (v7 + 32));
        }

        v102 = v7 + 33;
        *(longArray + v100 + 2) = v93 >> 19;
        v103 = *(longArray + 2);
        if (v7 + 33 < 0 || v102 >= v103)
        {
          IOSArray_throwOutOfBoundsWithMsg(v103, (v7 + 33));
        }

        v104 = intCopy + 7;
        *(longArray + v102 + 2) = (v93 >> 6) & 0x1FFF;
        v105 = *(array + 2);
        if (intCopy + 7 < 0 || v104 >= v105)
        {
          IOSArray_throwOutOfBoundsWithMsg(v105, (intCopy + 7));
        }

        v106 = v7 + 34;
        v107 = *(array + v104 + 2);
        v108 = *(longArray + 2);
        if (v7 + 34 < 0 || v106 >= v108)
        {
          IOSArray_throwOutOfBoundsWithMsg(v108, (v7 + 34));
        }

        *(&v109 + 1) = v93;
        *&v109 = *(array + v104 + 2);
        v110 = v7 + 35;
        *(longArray + v106 + 2) = (v109 >> 57) & 0x1FFF;
        v111 = *(longArray + 2);
        if (v7 + 35 < 0 || v110 >= v111)
        {
          IOSArray_throwOutOfBoundsWithMsg(v111, (v7 + 35));
        }

        v112 = v7 + 36;
        *(longArray + v110 + 2) = (v107 >> 44) & 0x1FFF;
        v113 = *(longArray + 2);
        if (v7 + 36 < 0 || v112 >= v113)
        {
          IOSArray_throwOutOfBoundsWithMsg(v113, (v7 + 36));
        }

        v114 = v7 + 37;
        *(longArray + v112 + 2) = (v107 >> 31) & 0x1FFF;
        v115 = *(longArray + 2);
        if (v7 + 37 < 0 || v114 >= v115)
        {
          IOSArray_throwOutOfBoundsWithMsg(v115, (v7 + 37));
        }

        v116 = v7 + 38;
        *(longArray + v114 + 2) = (v107 >> 18) & 0x1FFF;
        v117 = *(longArray + 2);
        if (v7 + 38 < 0 || v116 >= v117)
        {
          IOSArray_throwOutOfBoundsWithMsg(v117, (v7 + 38));
        }

        v118 = intCopy + 8;
        *(longArray + v116 + 2) = (v107 >> 5) & 0x1FFF;
        v119 = *(array + 2);
        if (intCopy + 8 < 0 || v118 >= v119)
        {
          IOSArray_throwOutOfBoundsWithMsg(v119, (intCopy + 8));
        }

        v120 = v7 + 39;
        v121 = *(array + v118 + 2);
        v122 = *(longArray + 2);
        if (v7 + 39 < 0 || v120 >= v122)
        {
          IOSArray_throwOutOfBoundsWithMsg(v122, (v7 + 39));
        }

        *(&v123 + 1) = v107;
        *&v123 = *(array + v118 + 2);
        v124 = v7 + 40;
        *(longArray + v120 + 2) = (v123 >> 56) & 0x1FFF;
        v125 = *(longArray + 2);
        if (v7 + 40 < 0 || v124 >= v125)
        {
          IOSArray_throwOutOfBoundsWithMsg(v125, (v7 + 40));
        }

        v126 = v7 + 41;
        *(longArray + v124 + 2) = (v121 >> 43) & 0x1FFF;
        v127 = *(longArray + 2);
        if (v7 + 41 < 0 || v126 >= v127)
        {
          IOSArray_throwOutOfBoundsWithMsg(v127, (v7 + 41));
        }

        v128 = v7 + 42;
        *(longArray + v126 + 2) = (v121 >> 30) & 0x1FFF;
        v129 = *(longArray + 2);
        if (v7 + 42 < 0 || v128 >= v129)
        {
          IOSArray_throwOutOfBoundsWithMsg(v129, (v7 + 42));
        }

        v130 = v7 + 43;
        *(longArray + v128 + 2) = (v121 >> 17) & 0x1FFF;
        v131 = *(longArray + 2);
        if (v7 + 43 < 0 || v130 >= v131)
        {
          IOSArray_throwOutOfBoundsWithMsg(v131, (v7 + 43));
        }

        v132 = intCopy + 9;
        *(longArray + v130 + 2) = (v121 >> 4) & 0x1FFF;
        v133 = *(array + 2);
        if (intCopy + 9 < 0 || v132 >= v133)
        {
          IOSArray_throwOutOfBoundsWithMsg(v133, (intCopy + 9));
        }

        v134 = v7 + 44;
        v135 = *(array + v132 + 2);
        v136 = *(longArray + 2);
        if (v7 + 44 < 0 || v134 >= v136)
        {
          IOSArray_throwOutOfBoundsWithMsg(v136, (v7 + 44));
        }

        *(&v137 + 1) = v121;
        *&v137 = *(array + v132 + 2);
        v138 = v7 + 45;
        *(longArray + v134 + 2) = (v137 >> 55) & 0x1FFF;
        v139 = *(longArray + 2);
        if (v7 + 45 < 0 || v138 >= v139)
        {
          IOSArray_throwOutOfBoundsWithMsg(v139, (v7 + 45));
        }

        v140 = v7 + 46;
        *(longArray + v138 + 2) = (v135 >> 42) & 0x1FFF;
        v141 = *(longArray + 2);
        if (v7 + 46 < 0 || v140 >= v141)
        {
          IOSArray_throwOutOfBoundsWithMsg(v141, (v7 + 46));
        }

        v142 = v7 + 47;
        *(longArray + v140 + 2) = (v135 >> 29) & 0x1FFF;
        v143 = *(longArray + 2);
        if (v7 + 47 < 0 || v142 >= v143)
        {
          IOSArray_throwOutOfBoundsWithMsg(v143, (v7 + 47));
        }

        v144 = v7 + 48;
        *(longArray + v142 + 2) = (v135 >> 16) & 0x1FFF;
        v145 = *(longArray + 2);
        if (v7 + 48 < 0 || v144 >= v145)
        {
          IOSArray_throwOutOfBoundsWithMsg(v145, (v7 + 48));
        }

        v146 = intCopy + 10;
        *(longArray + v144 + 2) = v135 >> 3;
        v147 = *(array + 2);
        if (intCopy + 10 < 0 || v146 >= v147)
        {
          IOSArray_throwOutOfBoundsWithMsg(v147, (intCopy + 10));
        }

        v148 = v7 + 49;
        v149 = *(array + v146 + 2);
        v150 = *(longArray + 2);
        if (v7 + 49 < 0 || v148 >= v150)
        {
          IOSArray_throwOutOfBoundsWithMsg(v150, (v7 + 49));
        }

        *(&v151 + 1) = v135;
        *&v151 = *(array + v146 + 2);
        v152 = v7 + 50;
        *(longArray + v148 + 2) = (v151 >> 54) & 0x1FFF;
        v153 = *(longArray + 2);
        if (v7 + 50 < 0 || v152 >= v153)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, (v7 + 50));
        }

        v154 = v7 + 51;
        *(longArray + v152 + 2) = (v149 >> 41) & 0x1FFF;
        v155 = *(longArray + 2);
        if (v7 + 51 < 0 || v154 >= v155)
        {
          IOSArray_throwOutOfBoundsWithMsg(v155, (v7 + 51));
        }

        v156 = v7 + 52;
        *(longArray + v154 + 2) = (v149 >> 28) & 0x1FFF;
        v157 = *(longArray + 2);
        if (v7 + 52 < 0 || v156 >= v157)
        {
          IOSArray_throwOutOfBoundsWithMsg(v157, (v7 + 52));
        }

        v158 = v7 + 53;
        *(longArray + v156 + 2) = (v149 >> 15) & 0x1FFF;
        v159 = *(longArray + 2);
        if (v7 + 53 < 0 || v158 >= v159)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, (v7 + 53));
        }

        v160 = intCopy + 11;
        *(longArray + v158 + 2) = (v149 >> 2) & 0x1FFF;
        v161 = *(array + 2);
        if (intCopy + 11 < 0 || v160 >= v161)
        {
          IOSArray_throwOutOfBoundsWithMsg(v161, (intCopy + 11));
        }

        v162 = v7 + 54;
        v163 = *(array + v160 + 2);
        v164 = *(longArray + 2);
        if (v7 + 54 < 0 || v162 >= v164)
        {
          IOSArray_throwOutOfBoundsWithMsg(v164, (v7 + 54));
        }

        *(&v165 + 1) = v149;
        *&v165 = *(array + v160 + 2);
        v166 = v7 + 55;
        *(longArray + v162 + 2) = (v165 >> 53) & 0x1FFF;
        v167 = *(longArray + 2);
        if (v7 + 55 < 0 || v166 >= v167)
        {
          IOSArray_throwOutOfBoundsWithMsg(v167, (v7 + 55));
        }

        v168 = v7 + 56;
        *(longArray + v166 + 2) = (v163 >> 40) & 0x1FFF;
        v169 = *(longArray + 2);
        if (v7 + 56 < 0 || v168 >= v169)
        {
          IOSArray_throwOutOfBoundsWithMsg(v169, (v7 + 56));
        }

        v170 = v7 + 57;
        *(longArray + v168 + 2) = (v163 >> 27) & 0x1FFF;
        v171 = *(longArray + 2);
        if (v7 + 57 < 0 || v170 >= v171)
        {
          IOSArray_throwOutOfBoundsWithMsg(v171, (v7 + 57));
        }

        v172 = v7 + 58;
        *(longArray + v170 + 2) = (v163 >> 14) & 0x1FFF;
        v173 = *(longArray + 2);
        if (v7 + 58 < 0 || v172 >= v173)
        {
          IOSArray_throwOutOfBoundsWithMsg(v173, (v7 + 58));
        }

        v174 = intCopy + 12;
        *(longArray + v172 + 2) = (v163 >> 1) & 0x1FFF;
        v175 = *(array + 2);
        if (intCopy + 12 < 0 || v174 >= v175)
        {
          IOSArray_throwOutOfBoundsWithMsg(v175, (intCopy + 12));
        }

        v176 = v7 + 59;
        v177 = *(array + v174 + 2);
        v178 = *(longArray + 2);
        if (v7 + 59 < 0 || v176 >= v178)
        {
          IOSArray_throwOutOfBoundsWithMsg(v178, (v7 + 59));
        }

        *(&v179 + 1) = v163;
        *&v179 = *(array + v174 + 2);
        v180 = v7 + 60;
        *(longArray + v176 + 2) = (v179 >> 52) & 0x1FFF;
        v181 = *(longArray + 2);
        if (v7 + 60 < 0 || v180 >= v181)
        {
          IOSArray_throwOutOfBoundsWithMsg(v181, (v7 + 60));
        }

        v182 = v7 + 61;
        *(longArray + v180 + 2) = (v177 >> 39) & 0x1FFF;
        v183 = *(longArray + 2);
        if (v7 + 61 < 0 || v182 >= v183)
        {
          IOSArray_throwOutOfBoundsWithMsg(v183, (v7 + 61));
        }

        v184 = v7 + 62;
        *(longArray + v182 + 2) = (v177 >> 26) & 0x1FFF;
        v185 = *(longArray + 2);
        if (v7 + 62 < 0 || v184 >= v185)
        {
          IOSArray_throwOutOfBoundsWithMsg(v185, (v7 + 62));
        }

        v186 = v7 + 63;
        *(longArray + v184 + 2) = (v177 >> 13) & 0x1FFF;
        v187 = *(longArray + 2);
        if (v7 + 63 < 0 || v186 >= v187)
        {
          IOSArray_throwOutOfBoundsWithMsg(v187, (v7 + 63));
        }

        int = intCopy + 13;
        v7 = (v7 + 64);
        *(longArray + v186 + 2) = v177 & 0x1FFF;
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
        *(longArray + v7 + 2) = (v12 >> 3) | (32 * *(array + intCopy + 12));
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
        *(longArray + v18 + 2) = ((v12 & 7) << 10) | (4 * v17) | (v19 >> 6);
        v22 = *(array + 2);
        if (intCopy + 4 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (intCopy + 4));
        }

        v23 = v7 + 2;
        v24 = *(array + v21 + 12);
        v25 = *(longArray + 2);
        if (v7 + 2 < 0 || v23 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 2));
        }

        v26 = intCopy + 5;
        *(longArray + v23 + 2) = (v24 >> 1) & 0xFFFFFFFFFFFFE07FLL | ((v19 & 0x3F) << 7);
        v27 = *(array + 2);
        if (intCopy + 5 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (intCopy + 5));
        }

        v28 = intCopy + 6;
        v29 = *(array + v26 + 12);
        if (intCopy + 6 < 0 || v28 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (intCopy + 6));
        }

        v30 = v7 + 3;
        v31 = *(array + v28 + 12);
        v32 = *(longArray + 2);
        if (v7 + 3 < 0 || v30 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 3));
        }

        v33 = intCopy + 7;
        *(longArray + v30 + 2) = ((v24 & 1) << 12) | (16 * v29) | (v31 >> 4);
        v34 = *(array + 2);
        if (intCopy + 7 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (intCopy + 7));
        }

        v35 = intCopy + 8;
        v36 = *(array + v33 + 12);
        if (intCopy + 8 < 0 || v35 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (intCopy + 8));
        }

        v37 = v7 + 4;
        v38 = *(array + v35 + 12);
        v39 = *(longArray + 2);
        if (v7 + 4 < 0 || v37 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 4));
        }

        v40 = intCopy + 9;
        *(longArray + v37 + 2) = ((v31 & 0xF) << 9) | (2 * v36) | (v38 >> 7);
        v41 = *(array + 2);
        if (intCopy + 9 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (intCopy + 9));
        }

        v42 = v7 + 5;
        v43 = *(array + v40 + 12);
        v44 = *(longArray + 2);
        if (v7 + 5 < 0 || v42 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 5));
        }

        v45 = intCopy + 10;
        *(longArray + v42 + 2) = (v43 >> 2) & 0xFFFFFFFFFFFFE03FLL | ((v38 & 0x7F) << 6);
        v46 = *(array + 2);
        if (intCopy + 10 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (intCopy + 10));
        }

        v47 = intCopy + 11;
        v48 = *(array + v45 + 12);
        if (intCopy + 11 < 0 || v47 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (intCopy + 11));
        }

        v49 = v7 + 6;
        v50 = *(array + v47 + 12);
        v51 = *(longArray + 2);
        if (v7 + 6 < 0 || v49 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, (v7 + 6));
        }

        v52 = intCopy + 12;
        *(longArray + v49 + 2) = ((v43 & 3) << 11) | (8 * v48) | (v50 >> 5);
        v53 = *(array + 2);
        if (intCopy + 12 < 0 || v52 >= v53)
        {
          IOSArray_throwOutOfBoundsWithMsg(v53, (intCopy + 12));
        }

        v54 = v7 + 7;
        v55 = *(array + v52 + 12);
        v56 = *(longArray + 2);
        if (v7 + 7 < 0 || v54 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, (v7 + 7));
        }

        *(longArray + v54 + 2) = v55 & 0xFFFFFFFFFFFFE0FFLL | ((v50 & 0x1F) << 8);
        int = intCopy + 13;
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