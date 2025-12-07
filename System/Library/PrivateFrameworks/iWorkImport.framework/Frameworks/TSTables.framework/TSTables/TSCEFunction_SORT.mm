@interface TSCEFunction_SORT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SORT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v184[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, v184);
  v10 = v184[0];
  v159 = v9;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);
    goto LABEL_3;
  }

  v183 = objc_msgSend_dimensions(v9, v11, v12, v13);
  if (!(v183.height * v183.width))
  {
    v27 = objc_msgSend_emptyArrayError(TSCEError, v17, v18, v19);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v28, v27, v29);

    v14 = 0;
    goto LABEL_3;
  }

  v20 = *arguments;
  v21 = *(arguments + 1) - *arguments;
  if (v21 < 0x19)
  {
    v158 = 0;
  }

  else
  {
    v22 = v20[3];
    if (objc_msgSend_isTokenOrEmptyArg(v22, v23, v24, v25))
    {
      v158 = 0;
    }

    else
    {
      v182 = 0;
      v158 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v22, v26, context, spec, 3, &v182);
      v30 = v182;
      if (v30)
      {
        v14 = v30;
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32);

        goto LABEL_3;
      }
    }

    v20 = *arguments;
    v21 = *(arguments + 1) - *arguments;
  }

  v179 = 0;
  v180 = 0;
  v181 = 0;
  if (v21 <= 8)
  {
LABEL_19:
    LODWORD(v171) = 0;
    sub_2210C47D0(&v179, &v171);
LABEL_20:
    v43 = 0;
    __p = 0;
    v168 = 0;
    v169 = 0;
    if (*(arguments + 1) - *arguments >= 0x11uLL)
    {
      v44 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v44, v45, v46, v47) & 1) == 0 && objc_msgSend_deepType_(v44, v48, context, v49) != 10)
      {
        v166 = 0;
        v53 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v44, v50, context, spec, 2, 0, &v166);
        v95 = v166;
        if (v95)
        {
          v14 = v95;
          v15 = objc_msgSend_raiseErrorOrConvert_(context, v96, v95, v98);
LABEL_45:

          if (__p)
          {
            v168 = __p;
            operator delete(__p);
          }

          goto LABEL_47;
        }

        v117 = objc_msgSend_count(v53, v96, v97, v98);
        if (v117)
        {
          v118 = 0;
          contextCopy = context;
          v171 = contextCopy;
          specCopy2 = spec;
          v173 = 0;
          v174[0] = 2;
          *(v174 + 7) = 0;
          v175 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
          v176 = 0;
          v177 = 0;
          while (1)
          {
            v120 = objc_msgSend_valueAtIndex_accessContext_(v53, v119, v118, &v171);
            v165 = 0;
            v122 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v120, v121, contextCopy, spec, 1, &v165);
            v14 = v165;
            v126 = objc_msgSend_integer(v122, v123, v124, v125);

            if (v14)
            {
              v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v127, v14, v129);
              goto LABEL_83;
            }

            if (v126 != 1 && v126 != -1)
            {
              break;
            }

            v164 = v126;
            sub_2211531C0(&__p, &v164);

            if (v117 == ++v118)
            {

              goto LABEL_71;
            }
          }

          v139 = objc_msgSend_functionName(spec, v127, v128, v129);
          v141 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v140, v139, 2);
          v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v142, v141, v143);

LABEL_83:
          goto LABEL_45;
        }

LABEL_71:
      }

      v43 = (v168 - __p) >> 3;
    }

    for (i = v180 - v179; v43 < (v180 - v179) >> 2; i = v180 - v179)
    {
      v171 = 1;
      sub_2211531C0(&__p, &v171);
      v43 = (v168 - __p) >> 3;
    }

    if (v43 <= i >> 2)
    {
      v155 = objc_msgSend_asValueGrid_(v159, v40, context, v42);
      objc_msgSend_deepResolveInPlace_(v155, v56, context, v57);
      p_height = &v183;
      if (!v158)
      {
        p_height = &v183.height;
      }

      width = p_height->width;
      v61 = v179;
      v60 = v180;
      v62 = objc_alloc(MEMORY[0x277CBEB18]);
      v53 = objc_msgSend_initWithCapacity_(v62, v63, width, v64);
      v66 = v60 - v61;
      if (width)
      {
        v67 = 0;
        do
        {
          v68 = [TSTTableSortTag alloc];
          v71 = objc_msgSend_initWithNumberOfSortRules_(v68, v69, v60 - v61, v70);
          objc_msgSend_setColumnOrRowIndex_(v71, v72, v67, v73);
          objc_msgSend_addObject_(v53, v74, v71, v75);

          v67 = (v67 + 1);
        }

        while (width != v67);
      }

      if (v60 != v61)
      {
        v76 = 0;
        if (v66 <= 1)
        {
          v66 = 1;
        }

        do
        {
          v77 = *&v179[4 * v76];
          if (v158)
          {
            v162[0] = MEMORY[0x277D85DD0];
            v162[1] = 3221225472;
            v162[2] = sub_221213C50;
            v162[3] = &unk_2784615E8;
            v163[0] = v53;
            v163[1] = context;
            v163[2] = v76;
            objc_msgSend_enumerateValuesForRow_usingBlock_(v155, v78, v77, v162);
            v79 = v163;
          }

          else
          {
            v160[0] = MEMORY[0x277D85DD0];
            v160[1] = 3221225472;
            v160[2] = sub_221213D0C;
            v160[3] = &unk_2784615E8;
            v161[0] = v53;
            v161[1] = context;
            v161[2] = v76;
            objc_msgSend_enumerateValuesForColumn_usingBlock_(v155, v80, v77, v160);
            v79 = v161;
          }

          ++v76;
        }

        while (v66 != v76);
      }

      v83 = objc_msgSend_shuffleMapForSortDirections_unsortedTags_sortDirections_(TSCEFunction_SORTBY, v65, context, v53, &__p);
      v44 = v155;
      if (v158)
      {
        objc_msgSend_rearrangeColumnsWithMapping_(v155, v81, v83, v82);
      }

      else
      {
        objc_msgSend_rearrangeRowsWithMapping_(v155, v81, v83, v82);
      }

      v84 = [TSCEDenseGrid alloc];
      v87 = objc_msgSend_initWithValueGrid_(v84, v85, v155, v86);
      v15 = objc_msgSend_gridValue_(TSCEGridValue, v88, v87, v89);
    }

    else
    {
      v44 = objc_msgSend_functionName(spec, v40, v41, v42);
      v53 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v52, v44, 2);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v54, v53, v55);
    }

    v14 = 0;
    goto LABEL_45;
  }

  v33 = v20[1];
  if ((objc_msgSend_isTokenOrEmptyArg(v33, v34, v35, v36) & 1) != 0 || objc_msgSend_deepType_(v33, v37, context, v38) == 10)
  {
LABEL_18:

    if (v179 != v180)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v178 = 0;
  v90 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v33, v39, context, spec, 1, 0, &v178);
  v91 = v178;
  if (!v91)
  {
    v99 = objc_msgSend_count(v90, v92, v93, v94);
    if (!v99)
    {
LABEL_63:

      goto LABEL_18;
    }

    v100 = 0;
    contextCopy2 = context;
    v171 = contextCopy2;
    specCopy2 = spec;
    v173 = 0;
    v174[0] = 1;
    *(v174 + 7) = 0;
    v175 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v176 = 0;
    v177 = 0;
    while (1)
    {
      v102 = v90;
      v103 = objc_msgSend_valueAtIndex_accessContext_(v90, v101, v100, &v171, contextCopy2);
      v170 = 0;
      v156 = v103;
      v105 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v103, v104, contextCopy2, spec, 1, &v170);
      v14 = v170;
      v109 = objc_msgSend_integer(v105, v106, v107, v108);

      if (v14)
      {
        v112 = v156;
        v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v110, v14, v111);
        goto LABEL_87;
      }

      LODWORD(__p) = 0;
      v112 = v156;
      if (v158)
      {
        v113 = TSCEGridDimensions::rowIndexForOneBasedIndex(&v183, v109, 1);
      }

      else
      {
        v113 = TSCEGridDimensions::columnIndexForOneBasedIndex(&v183, v109, 1);
      }

      LODWORD(__p) = v113;
      if (v109 < 0)
      {
        v131 = v183.width;
        height = v183.height;
        v133 = objc_msgSend_functionName(spec, v114, v115, v116);
        if (v158)
        {
          v134 = height;
        }

        else
        {
          v134 = v131;
        }

        v135 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v132, 2, v133, 1, 1, 1.0, v134);
        v138 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v136, v135, v137);
        goto LABEL_78;
      }

      if (v113 == 0x7FFFFFFF)
      {
        break;
      }

      sub_2210C47D0(&v179, &__p);

      ++v100;
      v90 = v102;
      if (v99 == v100)
      {

        goto LABEL_63;
      }
    }

    if (v158)
    {
      if (v183.height == 1)
      {
        goto LABEL_85;
      }

      v133 = objc_msgSend_functionName(spec, v114, v115, v116);
      LODWORD(v146) = v183.height;
      v135 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v147, 2, v133, 1, 1, 1.0, v146);
      v138 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v148, v135, v149);
    }

    else
    {
      if (v183.width == 1)
      {
LABEL_85:
        v133 = objc_msgSend_oneDimensionArrayIndexOutOfBoundsError(TSCEError, v114, v115, v116);
        v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v144, v133, v145);
LABEL_86:

LABEL_87:
        v90 = v102;
        goto LABEL_88;
      }

      v133 = objc_msgSend_functionName(spec, v114, v115, v116);
      LODWORD(v150) = v183.width;
      v135 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v151, 2, v133, 1, 1, 1.0, v150);
      v138 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v152, v135, v153);
    }

LABEL_78:
    v15 = v138;

    goto LABEL_86;
  }

  v14 = v91;
  v15 = objc_msgSend_raiseErrorOrConvert_(context, v92, v91, v94);
LABEL_88:

LABEL_47:
  if (v179)
  {
    v180 = v179;
    operator delete(v179);
  }

LABEL_3:

  return v15;
}

@end