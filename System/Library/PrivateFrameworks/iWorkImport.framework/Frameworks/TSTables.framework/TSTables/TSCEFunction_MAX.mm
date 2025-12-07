@interface TSCEFunction_MAX
+ (id)extremum:(id)extremum functionSpec:(id)spec arg:(id)arg index:(int)index isMax:(BOOL)max isA:(BOOL)a;
@end

@implementation TSCEFunction_MAX

+ (id)extremum:(id)extremum functionSpec:(id)spec arg:(id)arg index:(int)index isMax:(BOOL)max isA:(BOOL)a
{
  aCopy = a;
  maxCopy = max;
  v9 = *&index;
  extremumCopy = extremum;
  v169[0] = 0;
  argCopy = arg;
  v143 = extremumCopy;
  specCopy = spec;
  v14 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(argCopy, v13, extremumCopy, spec, v9, 1, v169);
  v15 = v169[0];
  if (v15)
  {
    v19 = v15;
    v20 = objc_msgSend_raiseErrorOrConvert_(extremumCopy, v16, v15, v18);
    goto LABEL_89;
  }

  v142 = objc_msgSend_zero(TSCENumberValue, v16, v17, v18);
  v146 = objc_msgSend_count(v14, v21, v22, v23);
  v24 = extremumCopy;
  v162[0] = v24;
  v162[1] = spec;
  v163 = 0;
  v164 = v9;
  *v165 = 0;
  v166 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v167 = 0;
  v168 = 0;
  v31 = objc_msgSend_hidingActionMask(v24, v25, v26, v27);
  *&v165[3] = v31 != 0;
  v161[0] = 0;
  v161[1] = 0;
  v160 = v161;
  if (!v146)
  {
LABEL_77:
    v20 = objc_msgSend_zero(TSCENumberValue, v28, v29, v30);
    v19 = 0;
    v120 = 0;
    goto LABEL_88;
  }

  v32 = 0;
  v138 = 0;
  v140 = 0;
  do
  {
    v33 = v14;
    v34 = objc_msgSend_valueAtIndex_accessContext_(v14, v28, v32, v162);
    v38 = objc_msgSend_nativeType(v34, v35, v36, v37);
    if (v38 == 1 || v38 == 16)
    {
      v43 = objc_msgSend_extremum_functionSpec_arg_index_isMax_isA_(self, v39, v24, specCopy, v34, v9, maxCopy, aCopy);

      v34 = v43;
    }

    if (v31)
    {
      if ((v165[6] & v31) != 0)
      {
        goto LABEL_55;
      }

      if ((v31 & 0x40) != 0 && (objc_msgSend_isNil(v34, v39, v40, v41) & 1) == 0)
      {
        if (objc_msgSend_isThunk(v34, v39, v40, v41))
        {
          v47 = objc_msgSend_unwrapThunk_(v24, v44, v34, v46);

          v34 = v47;
        }

        if (objc_msgSend_isReferenceValue(v34, v44, v45, v46))
        {
          v159 = 0;
          v48 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v34, v39, v24, specCopy, v9, &v159);
          v49 = v159;
          if (v49)
          {
            v19 = v49;
            v20 = objc_msgSend_raiseErrorOrConvert_(v24, v50, v49, v52);
            goto LABEL_85;
          }

          *&v152 = objc_msgSend_tableUID(v48, v50, v51, v52);
          *(&v152 + 1) = v53;
          objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v53, &v152, v54);
          v157._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
          v157._coordsForOwnerUid.__tree_.__size_ = 0;
          v157._coordsForOwnerUid.__tree_.__begin_node_ = &v157._coordsForOwnerUid.__tree_.__end_node_;
          v58 = objc_msgSend_tableUID(v48, v55, v56, v57);
          for (i = v161[0]; i; i = *i)
          {
            if (__PAIR128__(v59, v58) >= *(i + 2))
            {
              if (i[5] >= v59 && i[4] >= v58)
              {
                *&v152 = objc_msgSend_tableUID(v48, v59, v60, v61);
                *(&v152 + 1) = v116;
                v117 = sub_22121D288(&v160, &v152);
                TSCECellRefSet::operator=(&v157, v117);
                goto LABEL_29;
              }

              ++i;
            }
          }

          v63 = objc_msgSend_calcEngine(v24, v59, v60, v61);
          v66 = v63;
          if (v63)
          {
            objc_msgSend_cellDependentsOfCell_(v63, v64, v158, v65);
          }

          else
          {
            v152 = 0uLL;
            *v153 = 0;
          }

          TSCECellRefSet::operator=(&v157, &v152);
          sub_22107C800(&v152, *(&v152 + 1));

          *&v152 = objc_msgSend_tableUID(v48, v67, v68, v69);
          *(&v152 + 1) = v70;
          TSCECellRefSet::TSCECellRefSet(v153, &v157);
          sub_22121E5E0(&v160, &v152, &v152);
          sub_22107C800(v153, *&v153[8]);
LABEL_29:
          if (v48)
          {
            objc_msgSend_anyRef(v48, v71, v72, v73);
            v74 = *(&v152 + 1);
            v75 = *(&v155 + 1);
          }

          else
          {
            v75 = 0;
            v74 = 0;
            v154 = 0u;
            v155 = 0u;
            memset(v153, 0, sizeof(v153));
            v152 = 0u;
          }

          v156.coordinate = v74;
          v156._tableUID = *&v153[8];

          v76 = TSCECellRefSet::containsCellRef(&v157, &v156);
          sub_22107C800(&v157, v157._coordsForOwnerUid.__tree_.__end_node_.__left_);

          if (v76)
          {
            goto LABEL_55;
          }
        }
      }
    }

    if (objc_msgSend_isError(v34, v39, v40, v41))
    {
      goto LABEL_72;
    }

    if (objc_msgSend_isNil(v34, v77, v78, v79))
    {
      goto LABEL_55;
    }

    v82 = aCopy;
    v83 = objc_msgSend_deepType_(v34, v80, v24, v81);
    v85 = v83;
    if (v83 > 8u)
    {
      if (v83 == 10)
      {
        goto LABEL_55;
      }

      if (v83 == 9)
      {
LABEL_72:
        v48 = objc_msgSend_errorWithContext_(v34, v77, v24, v79);
        v20 = objc_msgSend_raiseErrorOrConvert_(v24, v118, v48, v119);
        v19 = 0;
        goto LABEL_85;
      }

LABEL_41:
      if (!aCopy || v83 != 2)
      {
        if (v83 == 3)
        {
          if (v138)
          {
LABEL_78:
            v48 = objc_msgSend_functionName(specCopy, v77, v84, v79);
            v129 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v121, v48, v122);
            v20 = objc_msgSend_raiseErrorOrConvert_(v24, v123, v129, v124);
            v19 = 0;
            goto LABEL_84;
          }

          if (v140)
          {
            v97 = 0;
          }

          else
          {
            v150 = 0;
            v106 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v34, v77, v24, specCopy, v9, &v150);
            v97 = v150;
            v140 = v106;
          }

          if (maxCopy)
          {
            v149 = v97;
            v107 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v34, v77, v24, specCopy, v9, &v149);
            v19 = v149;

            v139 = v107;
            objc_msgSend_laterDate_(v140, v108, v107, v109);
          }

          else
          {
            v148 = v97;
            v110 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v34, v77, v24, specCopy, v9, &v148);
            v19 = v148;

            v139 = v110;
            objc_msgSend_earlierDate_(v140, v111, v110, v112);
          }
          v113 = ;
          aCopy = v82;

          if (v19)
          {
            v20 = objc_msgSend_raiseErrorOrConvert_(v24, v114, v19, v115);
            v140 = v113;
LABEL_86:

            v14 = v33;
LABEL_87:
            v120 = v140;
            goto LABEL_88;
          }

          v138 = 0;
          v140 = v113;
        }

        else
        {
          v98 = MEMORY[0x277D81150];
          v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "+[TSCEFunction_MAX extremum:functionSpec:arg:index:isMax:isA:]", v79);
          v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v100);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v102, v137, v101, 3711, 0, "Unexpected value type in array needs handling: %d", v85);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105);
          aCopy = v82;
        }

        goto LABEL_55;
      }

      goto LABEL_43;
    }

    if (!v83)
    {
      goto LABEL_55;
    }

    if (v83 != 5)
    {
      goto LABEL_41;
    }

LABEL_43:
    if (v140)
    {
      goto LABEL_78;
    }

    v151 = 0;
    v48 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v77, v24, specCopy, v9, &v151);
    v19 = v151;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(v24, v86, v19, v88);
      v140 = 0;
      goto LABEL_85;
    }

    if (v138)
    {
      if ((objc_msgSend_isNil(v48, v86, v87, v88) & 1) == 0)
      {
        if ((objc_msgSend_dimensionsMatchModuloCurrency_(v48, v89, v142, v90) & 1) == 0)
        {
          v129 = objc_msgSend_functionName(specCopy, v91, v92, v93);
          v132 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v125, v129, v126);
          v135 = objc_msgSend_raiseErrorOrConvert_(v24, v127, v132, v128);
LABEL_83:
          v20 = v135;

          v140 = 0;
LABEL_84:

LABEL_85:
          goto LABEL_86;
        }

        if ((objc_msgSend_areCurrenciesMatched_(v48, v91, v142, v93) & 1) == 0)
        {
          v129 = objc_msgSend_functionName(specCopy, v89, v94, v90);
          v132 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v130, v129, v131);
          v135 = objc_msgSend_raiseErrorOrConvert_(v24, v133, v132, v134);
          goto LABEL_83;
        }
      }
    }

    else
    {
      v95 = v48;

      v142 = v95;
    }

    if (maxCopy)
    {
      objc_msgSend_max_(v142, v89, v48, v90);
    }

    else
    {
      objc_msgSend_min_(v142, v89, v48, v90);
    }
    v96 = ;

    v140 = 0;
    v138 = 1;
    v142 = v96;
LABEL_55:

    ++v32;
    v14 = v33;
  }

  while (v32 != v146);
  if (v140)
  {
    if (v33)
    {
      objc_msgSend_formatWithContext_(v33, v28, v24, v30);
    }

    else
    {
      v152 = 0u;
      *v153 = 0u;
    }

    v20 = objc_msgSend_dateValue_format_(TSCEDateValue, v28, v140, &v152);
    v19 = 0;
    goto LABEL_87;
  }

  if ((v138 & 1) == 0)
  {
    goto LABEL_77;
  }

  v20 = v142;
  v19 = 0;
  v120 = 0;
  v142 = v20;
LABEL_88:
  sub_22121E580(&v160, v161[0]);

LABEL_89:

  return v20;
}

@end