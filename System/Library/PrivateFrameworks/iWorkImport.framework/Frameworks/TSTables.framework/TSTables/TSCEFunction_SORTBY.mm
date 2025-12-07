@interface TSCEFunction_SORTBY
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)shuffleMapForSortDirections:(id)directions unsortedTags:(id)tags sortDirections:(const void *)sortDirections;
@end

@implementation TSCEFunction_SORTBY

+ (id)shuffleMapForSortDirections:(id)directions unsortedTags:(id)tags sortDirections:(const void *)sortDirections
{
  directionsCopy = directions;
  tagsCopy = tags;
  v12 = objc_msgSend_locale(directionsCopy, v9, v10, v11);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_221213F6C;
  v38[3] = &unk_278461608;
  v38[4] = sortDirections;
  v38[5] = v12;
  v15 = objc_msgSend_sortedArrayUsingComparator_(tagsCopy, v13, v38, v14);
  v19 = objc_msgSend_count(tagsCopy, v16, v17, v18);
  v20 = objc_alloc(MEMORY[0x277D806D0]);
  started = objc_msgSend_initWithStartIndex_endIndex_(v20, v21, 0, v19 - 1);
  v26 = objc_msgSend_mapping(started, v23, v24, v25);
  if (v19)
  {
    v29 = v26;
    v30 = 0;
    v31 = v19;
    do
    {
      v32 = objc_msgSend_objectAtIndexedSubscript_(v15, v27, v30, v28);
      v36 = objc_msgSend_columnOrRowIndex(v32, v33, v34, v35);

      *(*v29 + 4 * v36) = v30++;
    }

    while (v31 != v30);
  }

  return started;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v144[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, v144);
  v10 = v144[0];
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);
  }

  else
  {
    v16 = objc_msgSend_dimensions(v9, v11, v12, v13);
    if (HIDWORD(v16) * v16)
    {
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v138 = 0;
      v139 = 0;
      v140 = 0;
      v20 = (*(arguments + 1) - *arguments) >> 3;
      if (v20 < 2)
      {
LABEL_34:
        v15 = v9;
      }

      else
      {
        v127 = HIDWORD(v16);
        v128 = v16;
        v21 = 0;
        v129 = v9;
        do
        {
          v22 = *(*arguments + 8 * v21 + 8);
          if (objc_msgSend_isError(v22, v23, v24, v25))
          {
            v15 = v22;
            v14 = 0;
            goto LABEL_39;
          }

          if ((objc_msgSend_isTokenOrEmptyArg(v22, v26, v27, v28) & 1) == 0)
          {
            v30 = *(*arguments + 8 * v21 + 8);
            v136 = 0;
            v31 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v30, v29, context, spec, (v21 + 1), 0, &v136);
            v32 = v136;
            v137 = v31;
            if (v32)
            {
              v14 = v32;
              v15 = objc_msgSend_raiseErrorOrConvert_(context, v33, v32, v34);
              goto LABEL_38;
            }

            sub_22121488C(&v141, &v137);
            if (v21 + 2 >= ((*(arguments + 1) - *arguments) >> 3))
            {
              v134 = 1;
              sub_2211531C0(&v138, &v134);
            }

            else
            {
              v35 = *(*arguments + 8 * v21 + 16);
              if (objc_msgSend_isTokenOrEmptyArg(v35, v36, v37, v38))
              {
                v134 = 1;
                sub_2211531C0(&v138, &v134);
              }

              else if (objc_msgSend_deepType_(v35, v39, context, v40) != 10)
              {
                v135 = 0;
                v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v35, v41, context, spec, (v21 + 2), &v135);
                v14 = v135;
                v46 = objc_msgSend_integer(v42, v43, v44, v45);

                if (v14)
                {
                  v15 = objc_msgSend_raiseErrorOrConvert_(context, v47, v14, v49);
                  v9 = v129;
                  goto LABEL_66;
                }

                if (v46 != 1 && v46 != -1)
                {
                  v120 = objc_msgSend_functionName(spec, v47, v48, v49);
                  v9 = v129;
                  v122 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v121, v120, v21 + 2);
                  v15 = objc_msgSend_raiseErrorOrConvert_(context, v123, v122, v124);

LABEL_66:
LABEL_38:

LABEL_39:
                  goto LABEL_40;
                }

                v134 = v46;
                sub_2211531C0(&v138, &v134);
                v9 = v129;
              }
            }
          }

          v21 += 2;
        }

        while (v21 + 1 < v20);
        v53 = v128;
        if (v141 == v142)
        {
          goto LABEL_34;
        }

        v54 = objc_msgSend_dimensions(*v141, v50, v51, v52);
        v57 = v54 >> 33 == 0;
        v58 = (v54 & 0xFFFFFFFE) != 0;
        v59 = v57 && v58;
        if (v57 && v58)
        {
          v60 = 1;
        }

        else
        {
          v53 = 1;
          v60 = v127;
        }

        v61 = v141;
        v62 = v142;
        while (v61 != v62)
        {
          v63 = *v61;
          v67 = objc_msgSend_dimensions(v63, v64, v65, v66);
          if (v53 != v67 || v60 != HIDWORD(v67))
          {
            v114 = objc_msgSend_functionName(spec, v68, v69, v70);
            v117 = objc_msgSend_rangeSizeMismatchErrorForFunctionName_(TSCEError, v115, v114, v116);
            v15 = objc_msgSend_raiseErrorOrConvert_(context, v118, v117, v119);

            goto LABEL_35;
          }

          ++v61;
        }

        v125 = objc_msgSend_asValueGrid_(v9, v55, context, v56);
        if (v59)
        {
          v76 = v128;
        }

        else
        {
          v76 = v127;
        }

        v78 = v138;
        v77 = v139;
        v79 = objc_alloc(MEMORY[0x277CBEB18]);
        v83 = objc_msgSend_initWithCapacity_(v79, v80, v76, v81);
        v84 = v77 - v78;
        if (v76)
        {
          v85 = 0;
          do
          {
            v86 = [TSTTableSortTag alloc];
            v89 = objc_msgSend_initWithNumberOfSortRules_(v86, v87, v77 - v78, v88);
            objc_msgSend_setColumnOrRowIndex_(v89, v90, v85, v91);
            objc_msgSend_addObject_(v83, v92, v89, v93);

            v85 = (v85 + 1);
          }

          while (v76 != v85);
        }

        if (v77 != v78)
        {
          v94 = 0;
          if (v84 <= 1)
          {
            v95 = 1;
          }

          else
          {
            v95 = v84;
          }

          do
          {
            v96 = v141[v94];
            v99 = objc_msgSend_asValueGrid_(v96, v97, context, v98);
            objc_msgSend_deepResolveInPlace_(v99, v100, context, v101);
            if (v59)
            {
              v132[0] = MEMORY[0x277D85DD0];
              v132[1] = 3221225472;
              v132[2] = sub_221214980;
              v132[3] = &unk_2784615E8;
              v133[0] = v83;
              v133[1] = context;
              v133[2] = v94;
              objc_msgSend_enumerateValuesForRow_usingBlock_(v99, v102, 0, v132);
              v103 = v133;
            }

            else
            {
              v130[0] = MEMORY[0x277D85DD0];
              v130[1] = 3221225472;
              v130[2] = sub_221214A3C;
              v130[3] = &unk_2784615E8;
              v131[0] = v83;
              v131[1] = context;
              v131[2] = v94;
              objc_msgSend_enumerateValuesForColumn_usingBlock_(v99, v104, 0, v130);
              v103 = v131;
            }

            ++v94;
          }

          while (v95 != v94);
        }

        v107 = objc_msgSend_shuffleMapForSortDirections_unsortedTags_sortDirections_(TSCEFunction_SORTBY, v82, context, v83, &v138, v125);
        v9 = v129;
        if (v59)
        {
          objc_msgSend_rearrangeColumnsWithMapping_(v126, v105, v107, v106);
        }

        else
        {
          objc_msgSend_rearrangeRowsWithMapping_(v126, v105, v107, v106);
        }

        v108 = [TSCEDenseGrid alloc];
        v111 = objc_msgSend_initWithValueGrid_(v108, v109, v126, v110);
        v15 = objc_msgSend_gridValue_(TSCEGridValue, v112, v111, v113);
      }

LABEL_35:
      v14 = 0;
LABEL_40:
      if (v138)
      {
        v139 = v138;
        operator delete(v138);
      }

      v138 = &v141;
      sub_22107C2C0(&v138);
    }

    else
    {
      v72 = objc_msgSend_emptyArrayError(TSCEError, v17, v18, v19);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v73, v72, v74);

      v14 = 0;
    }
  }

  return v15;
}

@end