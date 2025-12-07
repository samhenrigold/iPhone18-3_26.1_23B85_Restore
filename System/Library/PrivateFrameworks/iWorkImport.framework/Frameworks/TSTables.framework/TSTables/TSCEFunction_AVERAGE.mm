@interface TSCEFunction_AVERAGE
+ (id)averageOfVector:(id)vector functionSpec:(id)spec argVector:(id)argVector argumentIndex:(int)index;
+ (id)averageOfVector:(id)vector functionSpec:(id)spec argVector:(id)argVector argumentIndex:(int)index criteria:(id)criteria criteriaVectorIndex:(int)vectorIndex ignoreError:(BOOL)error;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_AVERAGE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v20 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 1, &v20);
  v11 = v20;
  if (v11)
  {
    v12 = objc_msgSend_raiseErrorOrConvert_(context, v9, v11, v10);
  }

  else
  {
    v12 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_(TSCEFunction_AVERAGE, v9, context, spec, v8, 0);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v13, context, v14);
    }

    else
    {
      memset(&v18, 0, sizeof(v18));
    }

    TSCEFormat::TSCEFormat(&v19, &v18);
    objc_msgSend_setFormat_(v12, v15, &v19, v16);
  }

  return v12;
}

+ (id)averageOfVector:(id)vector functionSpec:(id)spec argVector:(id)argVector argumentIndex:(int)index
{
  v8 = 0;
  v6 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_criteria_criteriaVectorIndex_ignoreError_(TSCEFunction_AVERAGE, a2, vector, spec, argVector, *&index, 0, 0, v8);

  return v6;
}

+ (id)averageOfVector:(id)vector functionSpec:(id)spec argVector:(id)argVector argumentIndex:(int)index criteria:(id)criteria criteriaVectorIndex:(int)vectorIndex ignoreError:(BOOL)error
{
  vectorCopy = vector;
  argVectorCopy = argVector;
  criteriaCopy = criteria;
  v147 = argVectorCopy;
  v18 = objc_msgSend_zero(TSCENumberValue, v15, v16, v17);
  v22 = objc_msgSend_count(argVectorCopy, v19, v20, v21);
  v177[0] = vectorCopy;
  v177[1] = spec;
  v178 = 0;
  indexCopy = index;
  *v180 = 0;
  v181 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v182 = 0;
  v183 = 0;
  v26 = objc_msgSend_hidingActionMask(v177[0], v23, v24, v25);
  *&v180[3] = v26 != 0;
  v152 = v177[0];
  v170[0] = v152;
  v170[1] = spec;
  v171 = 0;
  vectorIndexCopy = vectorIndex;
  v173[0] = 0;
  *(v173 + 3) = 0;
  v174 = v181;
  v175 = 0;
  v176 = 0;
  v169[0] = 0;
  v169[1] = 0;
  v168 = v169;
  if (!v22)
  {
    v115 = 0;
LABEL_61:
    v48 = objc_msgSend_divideByZeroError(TSCEError, v27, v28, v29);
    v118 = objc_msgSend_raiseErrorOrConvert_(v152, v119, v48, v120);
LABEL_62:
    v121 = v118;
    v86 = 0;
    goto LABEL_63;
  }

  specCopy = spec;
  v146 = v18;
  v148 = 0;
  v151 = 0;
  v149 = 0;
  v30 = 0;
  v144 = vectorCopy;
  v31 = 0.0;
  while (1)
  {
    v32 = objc_msgSend_valueAtIndexPassesCriteria_index_criteria_(TSCEGridValue, v27, v170, v30, criteriaCopy, v144);
    v36 = objc_msgSend_nilValue(TSCENilValue, v33, v34, v35);
    v40 = v36;
    if (v32)
    {
      if (error)
      {
        v41 = objc_msgSend_valueAtIndex_accessContext_(argVectorCopy, v37, v30, v177);

        if (objc_msgSend_isError(v41, v42, v43, v44))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v41 = objc_msgSend_valueAtIndex_accessContext_(argVectorCopy, v37, v30, v177);

        if (objc_msgSend_isError(v41, v45, v46, v47))
        {
          v123 = objc_msgSend_errorWithContext_(v41, v37, v152, v39);
          v18 = v146;
          v115 = v151;
          v121 = objc_msgSend_raiseErrorOrConvert_(v152, v124, v123, v125);

          v86 = 0;
          v48 = v41;
          goto LABEL_63;
        }
      }
    }

    else
    {
      v41 = v36;
    }

    if (!v26)
    {
      goto LABEL_26;
    }

    if ((v180[6] & v26) != 0)
    {
      goto LABEL_11;
    }

    if (v26 & 0x40) == 0 || (objc_msgSend_isNil(v41, v37, v38, v39))
    {
      goto LABEL_26;
    }

    if (objc_msgSend_isThunk(v41, v37, v38, v39))
    {
      v52 = objc_msgSend_unwrapThunk_(v152, v49, v41, v51);

      v41 = v52;
    }

    if (objc_msgSend_isReferenceValue(v41, v49, v50, v51))
    {
      v167 = 0;
      v53 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v41, v37, v152, specCopy, index, &v167);
      v54 = v167;
      if (v54)
      {
        v86 = v54;
        v121 = objc_msgSend_raiseErrorOrConvert_(v152, v55, v54, v57);

        v48 = v41;
        v18 = v146;
        v115 = v151;
        goto LABEL_63;
      }

      *&v160 = objc_msgSend_tableUID(v53, v55, v56, v57);
      *(&v160 + 1) = v58;
      objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v58, &v160, v59);
      v165._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v165._coordsForOwnerUid.__tree_.__size_ = 0;
      v165._coordsForOwnerUid.__tree_.__begin_node_ = &v165._coordsForOwnerUid.__tree_.__end_node_;
      v63 = objc_msgSend_tableUID(v53, v60, v61, v62);
      for (i = v169[0]; i; i = *i)
      {
        if (__PAIR128__(v64, v63) >= *(i + 2))
        {
          if (i[5] >= v64 && i[4] >= v63)
          {
            *&v160 = objc_msgSend_tableUID(v53, v64, v65, v66);
            *(&v160 + 1) = v113;
            v114 = sub_22121D288(&v168, &v160);
            TSCECellRefSet::operator=(&v165, v114);
            goto LABEL_50;
          }

          ++i;
        }
      }

      v68 = objc_msgSend_calcEngine(v152, v64, v65, v66);
      v71 = v68;
      if (v68)
      {
        objc_msgSend_cellDependentsOfCell_(v68, v69, v166, v70);
      }

      else
      {
        v160 = 0uLL;
        *v161 = 0;
      }

      TSCECellRefSet::operator=(&v165, &v160);
      sub_22107C800(&v160, *(&v160 + 1));

      *&v160 = objc_msgSend_tableUID(v53, v103, v104, v105);
      *(&v160 + 1) = v106;
      TSCECellRefSet::TSCECellRefSet(v161, &v165);
      sub_22121E5E0(&v168, &v160, &v160);
      sub_22107C800(v161, *&v161[8]);
LABEL_50:
      if (v53)
      {
        objc_msgSend_anyRef(v53, v107, v108, v109);
        v110 = *(&v160 + 1);
        v111 = *(&v163 + 1);
      }

      else
      {
        v111 = 0;
        v110 = 0;
        v162 = 0u;
        v163 = 0u;
        memset(v161, 0, sizeof(v161));
        v160 = 0u;
      }

      v164.coordinate = v110;
      v164._tableUID = *&v161[8];

      v112 = TSCECellRefSet::containsCellRef(&v165, &v164);
      sub_22107C800(&v165, v165._coordsForOwnerUid.__tree_.__end_node_.__left_);

      v48 = v41;
      if (v112)
      {
LABEL_11:
        v48 = v41;
        goto LABEL_46;
      }
    }

    else
    {
LABEL_26:
      v48 = v41;
    }

    if ((objc_msgSend_isNil(v48, v37, v38, v39) & 1) != 0 || !v32)
    {
      goto LABEL_46;
    }

    v74 = objc_msgSend_deepType_(v48, v72, v152, v73);
    if (v74 != 3)
    {
      if (v74 == 5)
      {
        if (v151)
        {
          goto LABEL_70;
        }

        ++v149;
        if ((v148 & 1) == 0)
        {
          v159 = 0;
          v96 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v48, v75, v152, specCopy, index, &v159);
          v86 = v159;

          if (v86)
          {
            v115 = 0;
            v121 = objc_msgSend_raiseErrorOrConvert_(v152, v97, v86, v98);
            v18 = v96;
            goto LABEL_80;
          }

          v151 = 0;
          v148 = 1;
          v146 = v96;
          goto LABEL_45;
        }

        v158 = 0;
        v78 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v48, v75, v152, specCopy, index, &v158);
        v79 = v158;
        if (v79)
        {
          v86 = v79;
          v18 = v146;
          v121 = objc_msgSend_raiseErrorOrConvert_(v152, v80, v79, v81);
        }

        else if (objc_msgSend_dimensionsMatchModuloCurrency_(v146, v80, v78, v81))
        {
          v157 = 0;
          v85 = objc_msgSend_add_functionSpec_outError_(v146, v82, v78, specCopy, &v157);
          v86 = v157;

          if (!v86)
          {

            v151 = 0;
            v148 = 1;
            v146 = v85;
            goto LABEL_45;
          }

          v121 = objc_msgSend_raiseErrorOrConvert_(v152, v87, v86, v88);
          v18 = v85;
        }

        else
        {
          v18 = v146;
          v138 = objc_msgSend_functionName(specCopy, v82, v83, v84);
          v141 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v139, v138, v140);
          v121 = objc_msgSend_raiseErrorOrConvert_(v152, v142, v141, v143);

          v86 = 0;
        }

        argVectorCopy = v147;

LABEL_78:
        v115 = 0;
        goto LABEL_63;
      }

LABEL_45:
      argVectorCopy = v147;
      goto LABEL_46;
    }

    v76 = v152;
    if (v148)
    {
LABEL_70:
      v18 = v146;
      v115 = v151;
      v132 = objc_msgSend_functionName(specCopy, v75, v76, v77);
      v135 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v133, v132, v134);
      v121 = objc_msgSend_raiseErrorOrConvert_(v152, v136, v135, v137);

      v86 = 0;
      goto LABEL_80;
    }

    ++v149;
    if (!v151)
    {
      break;
    }

    v155 = 0;
    v89 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v48, v75, v152, specCopy, index, &v155);
    v86 = v155;
    objc_msgSend_timeIntervalSinceDate_(v89, v90, v151, v91);
    v93 = v92;

    argVectorCopy = v147;
    if (v86)
    {
      v18 = v146;
      v115 = v151;
      v121 = objc_msgSend_raiseErrorOrConvert_(v152, v94, v86, v95);
      goto LABEL_80;
    }

    v148 = 0;
    v31 = v31 + v93;
LABEL_46:

    if (++v30 == v22)
    {
      v27 = v149;
      if (!v149)
      {
        v18 = v146;
        v115 = v151;
        goto LABEL_61;
      }

      v18 = v146;
      v115 = v151;
      if (v151)
      {
        v48 = objc_msgSend_dateByAddingTimeInterval_(v151, v149, v28, v29, v31 / v149);
        v118 = objc_msgSend_dateValue_(TSCEDateValue, v116, v48, v117);
        goto LABEL_62;
      }

      TSUDecimal::operator=();
      v128 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v126, &v160, v127);
      v154 = 0;
      v48 = objc_msgSend_divide_outError_(v146, v129, v128, &v154);
      v86 = v154;

      if (!v86)
      {
        v48 = v48;
        v115 = 0;
        v121 = v48;
        goto LABEL_63;
      }

      v121 = objc_msgSend_raiseErrorOrConvert_(v152, v130, v86, v131);
      goto LABEL_78;
    }
  }

  v156 = 0;
  v99 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v48, v75, v152, specCopy, index, &v156);
  v100 = v156;
  if (!v100)
  {
    v148 = 0;
    v151 = v99;
    goto LABEL_45;
  }

  v86 = v100;
  v18 = v146;
  v121 = objc_msgSend_raiseErrorOrConvert_(v152, v101, v100, v102);
  v115 = v99;
LABEL_80:
  argVectorCopy = v147;
LABEL_63:

  sub_22121E580(&v168, v169[0]);

  return v121;
}

@end