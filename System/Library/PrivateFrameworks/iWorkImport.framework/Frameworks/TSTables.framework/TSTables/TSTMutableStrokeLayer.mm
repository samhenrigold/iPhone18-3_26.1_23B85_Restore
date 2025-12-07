@interface TSTMutableStrokeLayer
- (BOOL)hasStrokeInRange:(TSTSimpleRange)range;
- (void)applyStroke:(id)stroke atIndexes:(id)indexes order:(int)order applyStroke:(id)applyStroke atIndexes:(id)atIndexes order:(int)a8 applyStroke:(id)a9 atIndexes:(id)self0 order:(int)self1 applyStroke:(id)self2 atIndexes:(id)self3 order:(int)self4 applyStroke:(id)self5 atIndexes:(id)self6 order:(int)self7;
- (void)moveRange:(_NSRange)range toIndex:(int64_t)index;
- (void)swapSegmentAtIndex:(int64_t)index withSegmentAtIndex:(int64_t)atIndex;
@end

@implementation TSTMutableStrokeLayer

- (BOOL)hasStrokeInRange:(TSTSimpleRange)range
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213FEA5C;
  v5[3] = &unk_278463910;
  v5[4] = &v6;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, a2, range.origin, range.length, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)swapSegmentAtIndex:(int64_t)index withSegmentAtIndex:(int64_t)atIndex
{
  v31 = objc_msgSend_findStrokeAndRangeAtIndex_(self, a2, index, atIndex);
  v12 = objc_msgSend_findStrokeAndRangeAtIndex_(self, v7, atIndex, v8);
  if (!v31)
  {
    goto LABEL_7;
  }

  v13 = objc_msgSend_range(v31, v9, v10, v11);
  if (index == 0x7FFFFFFFFFFFFFFFLL || !v9 || v13 > index || &v9[v13 - 1] < index)
  {

LABEL_7:
    v31 = 0;
  }

  if (v12)
  {
    v14 = objc_msgSend_range(v12, v9, v10, v11);
    if (atIndex == 0x7FFFFFFFFFFFFFFFLL || !v9 || v14 > atIndex || &v9[v14 - 1] < atIndex)
    {

      v12 = 0;
    }
  }

  objc_msgSend_invalidateRange_(self, v9, index, 1);
  objc_msgSend_invalidateRange_(self, v15, atIndex, 1);
  if (v31)
  {
    v19 = objc_msgSend_stroke(v31, v16, v17, v18);
    v23 = objc_msgSend_order(v31, v20, v21, v22);
    objc_msgSend_setStroke_inRange_order_(self, v24, v19, atIndex, 1, v23);
  }

  if (v12)
  {
    v25 = objc_msgSend_stroke(v12, v16, v17, v18);
    v29 = objc_msgSend_order(v12, v26, v27, v28);
    objc_msgSend_setStroke_inRange_order_(self, v30, v25, index, 1, v29);
  }
}

- (void)moveRange:(_NSRange)range toIndex:(int64_t)index
{
  length = range.length;
  location = range.location;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v8 = range.location + range.length;
  if (range.location >= index)
  {
    v9 = 0;
  }

  else
  {
    v9 = range.length;
  }

  if (range.location >= index)
  {
    v10 = range.location + range.length;
  }

  else
  {
    v10 = range.location;
  }

  v11 = objc_msgSend_findStrokeAndRangeAtIndex_(self, a2, range.location, range.length);
  v46 = v10;
  v47 = v9 + index;
  if (v11)
  {
    v15 = v9 + index - location;
    v45 = v11;
    v16 = v11;
    while (1)
    {
      v17 = objc_msgSend_range(v16, v12, v13, v14, v45);
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v17 != 0x7FFFFFFFFFFFFFFFLL && length && v12)
      {
        if (location <= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = location;
        }

        v21 = &v12[v17];
        if (v8 < &v12[v17])
        {
          v21 = v8;
        }

        if (v21 > v20)
        {
          v22 = objc_msgSend_range(v16, v12, v18, v19);
          if (location <= v22)
          {
            v26 = v22;
          }

          else
          {
            v26 = location;
          }

          v27 = &v23[v22];
          if (v8 < &v23[v22])
          {
            v27 = v8;
          }

          v28 = v27 < v26;
          v29 = &v27[-v26];
          if (v28)
          {
            v26 = 0x7FFFFFFFFFFFFFFFLL;
            v29 = 0;
          }

          if (!v23)
          {
            v26 = 0x7FFFFFFFFFFFFFFFLL;
            v29 = 0;
          }

          v30 = v22 == 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v26;
          v31 = v22 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v29;
          v32 = objc_msgSend_stroke(v16, v23, v24, v25);
          v36 = objc_msgSend_order(v16, v33, v34, v35);
          sub_2213FFC6C(v48, v32, v15 + v30, v31, v36);
          sub_2213FD474(&v49, v48);

          v39 = objc_msgSend_nextStrokeAndRange_(self, v37, v16, v38);

          v16 = v39;
          if (v39)
          {
            continue;
          }
        }
      }

      goto LABEL_38;
    }

    v16 = v45;
  }

  else
  {
    v16 = 0;
  }

LABEL_38:
  objc_msgSend_insertSpaceAtRange_(self, v12, v47, length);
  v41 = v49;
  v42 = v50;
  while (v41 != v42)
  {
    v43 = *v41;
    objc_msgSend_setStroke_inRange_order_(self, v44, v43, *(v41 + 8), *(v41 + 16), *(v41 + 24));

    v41 += 32;
  }

  objc_msgSend_removeRange_(self, v40, v46, length);

  v48[0] = &v49;
  sub_221400634(v48);
}

- (void)applyStroke:(id)stroke atIndexes:(id)indexes order:(int)order applyStroke:(id)applyStroke atIndexes:(id)atIndexes order:(int)a8 applyStroke:(id)a9 atIndexes:(id)self0 order:(int)self1 applyStroke:(id)self2 atIndexes:(id)self3 order:(int)self4 applyStroke:(id)self5 atIndexes:(id)self6 order:(int)self7
{
  strokeCopy = stroke;
  indexesCopy = indexes;
  applyStrokeCopy = applyStroke;
  atIndexesCopy = atIndexes;
  v143 = a9;
  v21 = a10;
  v144 = a12;
  v22 = a13;
  v142 = a15;
  v146 = a16;
  p_strokeRuns = &self->super._strokeRuns;
  if ((p_strokeRuns->__end_ - p_strokeRuns->__begin_) >= 0x80)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTMutableStrokeLayer applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:]", v25);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayer.mm", v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 792, 0, "this interface can't be used on complex stroke layers");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
  }

  v172 = 0;
  v173 = &v172;
  v174 = 0x4812000000;
  v175 = sub_2213FF890;
  v176 = sub_2213FF8B4;
  v177 = &unk_22188E88F;
  memset(v178, 0, sizeof(v178));
  v36 = applyStrokeCopy;
  if (objc_msgSend_count(v146, v23, v24, v25) && objc_msgSend_count(v22, v37, v38, v39) && sub_2213FC7C4(v142, v144))
  {
    v40 = objc_msgSend_tsu_indexSetByAddingIndexes_(v22, v37, v146, v39);

    v146 = 0;
    v22 = v40;
  }

  if (objc_msgSend_count(v22, v37, v38, v39) && objc_msgSend_count(v21, v41, v42, v43) && sub_2213FC7C4(v144, v143))
  {
    v44 = objc_msgSend_tsu_indexSetByAddingIndexes_(v21, v41, v22, v43);

    v22 = 0;
    v21 = v44;
  }

  if (objc_msgSend_count(v21, v41, v42, v43) && objc_msgSend_count(atIndexesCopy, v45, v46, v47) && sub_2213FC7C4(v143, applyStrokeCopy))
  {
    v48 = objc_msgSend_tsu_indexSetByAddingIndexes_(atIndexesCopy, v45, v21, v47);

    v21 = 0;
    atIndexesCopy = v48;
  }

  if (objc_msgSend_count(atIndexesCopy, v45, v46, v47) && objc_msgSend_count(indexesCopy, v49, v50, v51) && sub_2213FC7C4(applyStrokeCopy, strokeCopy))
  {
    v52 = objc_msgSend_tsu_indexSetByAddingIndexes_(indexesCopy, v49, atIndexesCopy, v51);

    atIndexesCopy = 0;
    indexesCopy = v52;
  }

  Index = objc_msgSend_firstIndex(indexesCopy, v49, v50, v51);
  begin = p_strokeRuns->__begin_;
  v57 = p_strokeRuns->__end_ - p_strokeRuns->__begin_;
  if (!v57)
  {
LABEL_33:
    v65 = 0;
    v137 = 1;
LABEL_34:
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSTMutableStrokeLayer applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:]", v55);
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayer.mm", v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v71, v67, v70, 840, 0, "invalid nil value for '%{public}s'", "bodyIndexes");

    v72 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75);
    goto LABEL_35;
  }

  v58 = 0;
  v59 = v57 >> 5;
  if (v59 <= 1)
  {
    v59 = 1;
  }

  v60 = 32;
  while (1)
  {
    v61 = *(begin + v60 - 24);
    v62 = *(begin + v60 - 16);
    v63 = Index == 0x7FFFFFFFFFFFFFFFLL || v62 == 0;
    v64 = !v63 && v61 <= Index;
    if (v64 && v61 + v62 - 1 >= Index)
    {
      break;
    }

    ++v58;
    v60 += 32;
    if (v59 == v58)
    {
      goto LABEL_33;
    }
  }

  v65 = *(begin + v60 - 32);
  v93 = p_strokeRuns->__begin_ + v60;
  v137 = *(v93 - 2);
  v72 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v94, *(v93 - 3), *(v93 - 2));
  if (v58)
  {
    sub_2213FF8E0(v173 + 6, p_strokeRuns->__begin_ + v60 - 64);
  }

  if (v58 < ((p_strokeRuns->__end_ - p_strokeRuns->__begin_) >> 5) - 1)
  {
    sub_2213FF8E0(v173 + 6, p_strokeRuns->__begin_ + v60);
  }

  objc_msgSend_removeIndexes_(v72, v95, v146, v96);
  objc_msgSend_removeIndexes_(v72, v97, v22, v98);
  objc_msgSend_removeIndexes_(v72, v99, v21, v100);
  objc_msgSend_removeIndexes_(v72, v101, atIndexesCopy, v102);
  objc_msgSend_removeIndexes_(v72, v103, indexesCopy, v104);
  if (!v72)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (!objc_msgSend_count(v72, v54, v76, v55))
  {
    goto LABEL_64;
  }

  if (objc_msgSend_count(v146, v77, v78, v79))
  {
    if (sub_2213FC7C4(v142, v65))
    {
      v85 = objc_msgSend_tsu_indexSetByAddingIndexes_(v146, v83, v72, v84);
      v86 = v146;
      v146 = v85;
LABEL_57:

      v72 = 0;
    }
  }

  else if (objc_msgSend_count(v22, v80, v81, v82))
  {
    if (sub_2213FC7C4(v144, v65))
    {
      v92 = objc_msgSend_tsu_indexSetByAddingIndexes_(v22, v90, v72, v91);
      v86 = v22;
      v22 = v92;
      goto LABEL_57;
    }
  }

  else if (objc_msgSend_count(v21, v87, v88, v89))
  {
    if (sub_2213FC7C4(v143, v65))
    {
      v110 = objc_msgSend_tsu_indexSetByAddingIndexes_(v21, v108, v72, v109);
      v86 = v21;
      v21 = v110;
      goto LABEL_57;
    }
  }

  else if (objc_msgSend_count(atIndexesCopy, v105, v106, v107))
  {
    if (sub_2213FC7C4(applyStrokeCopy, v65))
    {
      v116 = objc_msgSend_tsu_indexSetByAddingIndexes_(atIndexesCopy, v114, v72, v115);
      v86 = atIndexesCopy;
      atIndexesCopy = v116;
      goto LABEL_57;
    }
  }

  else if (objc_msgSend_count(indexesCopy, v111, v112, v113) && sub_2213FC7C4(strokeCopy, v65))
  {
    v119 = objc_msgSend_tsu_indexSetByAddingIndexes_(indexesCopy, v117, v72, v118);
    v86 = indexesCopy;
    indexesCopy = v119;
    goto LABEL_57;
  }

  v168[0] = MEMORY[0x277D85DD0];
  v168[1] = 3221225472;
  v168[2] = sub_2213FF9FC;
  v168[3] = &unk_2784649D0;
  v170 = &v172;
  v169 = strokeCopy;
  orderCopy = order;
  objc_msgSend_enumerateRangesUsingBlock_(indexesCopy, v120, v168, v121);
  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = sub_2213FFA64;
  v164[3] = &unk_2784649D0;
  v166 = &v172;
  v165 = applyStrokeCopy;
  v167 = a8;
  objc_msgSend_enumerateRangesUsingBlock_(atIndexesCopy, v122, v164, v123);
  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = sub_2213FFACC;
  v160[3] = &unk_2784649D0;
  v162 = &v172;
  v161 = v143;
  v163 = a11;
  objc_msgSend_enumerateRangesUsingBlock_(v21, v124, v160, v125);
  v156[0] = MEMORY[0x277D85DD0];
  v156[1] = 3221225472;
  v156[2] = sub_2213FFB34;
  v156[3] = &unk_2784649D0;
  v158 = &v172;
  v157 = v144;
  v159 = a14;
  objc_msgSend_enumerateRangesUsingBlock_(v22, v126, v156, v127);
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = sub_2213FFB9C;
  v152[3] = &unk_2784649D0;
  v154 = &v172;
  v153 = v142;
  v155 = a17;
  objc_msgSend_enumerateRangesUsingBlock_(v146, v128, v152, v129);
  v148[0] = MEMORY[0x277D85DD0];
  v148[1] = 3221225472;
  v148[2] = sub_2213FFC04;
  v148[3] = &unk_2784649D0;
  v150 = &v172;
  v149 = v65;
  v151 = v137;
  v36 = applyStrokeCopy;
  objc_msgSend_enumerateRangesUsingBlock_(v72, v130, v148, v131);
  v133 = v173[6];
  v134 = v173[7];
  v135 = 126 - 2 * __clz((v134 - v133) >> 5);
  v179 = sub_2213FC7B0;
  if (v134 == v133)
  {
    v136 = 0;
  }

  else
  {
    v136 = v135;
  }

  sub_2214006B4(v133, v134, &v179, v136, 1, v132);
  if (p_strokeRuns != (v173 + 6))
  {
    sub_2213FFCEC(p_strokeRuns, v173[6], v173[7], (v173[7] - v173[6]) >> 5);
  }

LABEL_64:
  _Block_object_dispose(&v172, 8);
  v180 = v178;
  sub_221400634(&v180);
}

@end