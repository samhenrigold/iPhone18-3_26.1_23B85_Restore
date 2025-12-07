@interface TSCEFunction_NETWORKDAYS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NETWORKDAYS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v132[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v132);
  v11 = v132[0];
  if (v11)
  {
    v15 = v11;
    context = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
    goto LABEL_38;
  }

  p_cache = TSCEFunction_XMATCH.cache;
  v17 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14);
  v120 = objc_msgSend_clearOffTime_(v17, v18, v10, v19);

  v20 = *(*arguments + 8);
  v131 = 0;
  v119 = v20;
  v122 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v131);
  v15 = v131;
  if (!v15)
  {
    v24 = objc_msgSend_clearOffTime_(v17, v22, v122, v23);

    v25 = v120;
    v118 = v8;
    v28 = objc_msgSend_compare_(v120, v26, v24, v27);
    if (v28 == 1)
    {
      v32 = v120;
    }

    else
    {
      v32 = v24;
    }

    v122 = v32;
    if (v28 == 1)
    {
      v25 = v24;
    }

    v120 = v25;
    if (*(arguments + 1) - *arguments <= 0x10uLL)
    {
      v121 = 0;
      v15 = 0;
    }

    else
    {
      v33 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v33, v34, v35, v36) & 1) != 0 || objc_msgSend_deepType_(v33, v37, context, v38) == 10)
      {
        v121 = 0;
        v15 = 0;
      }

      else
      {
        v130 = 0;
        v51 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v33, v39, context, spec, 2, 1, &v130);
        v80 = v130;
        if (v80)
        {
          v15 = v80;
          context = objc_msgSend_raiseErrorOrConvert_(context, v81, v80, v83);
          v121 = 0;
LABEL_35:

LABEL_36:
          v8 = v118;
          goto LABEL_37;
        }

        v84 = objc_msgSend_count(v51, v81, v82, v83);
        v121 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v85, v84, v86);
        contextCopy = context;
        v117 = v84;
        v124[0] = contextCopy;
        v124[1] = spec;
        v125 = 0;
        v126[0] = 2;
        *(v126 + 7) = 0;
        v127 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v128 = 0;
        v129 = 0;
        if (v84)
        {
          context = 0;
          v89 = 1;
          do
          {
            v90 = objc_msgSend_valueAtIndex_accessContext_(v51, v87, context, v124);
            if ((objc_msgSend_isNil(v90, v91, v92, v93) & 1) == 0)
            {
              v123 = 0;
              v95 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v90, v94, contextCopy, spec, 2, &v123);
              v15 = v123;
              if (v15)
              {
                context = objc_msgSend_raiseErrorOrConvert_(contextCopy, v96, v15, v97);

                goto LABEL_59;
              }

              v98 = objc_msgSend_clearOffTime_(v17, v96, v95, v97);

              if (v98)
              {
                objc_msgSend_addObject_(v121, v99, v98, v100);
              }
            }

            context = context + 1;
            v89 = context < v117;
          }

          while (v117 != context);
        }

        objc_msgSend_sortUsingSelector_(v121, v87, sel_compare_, v88);
        v106 = objc_msgSend_count(v121, v101, v102, v103);
        if (v106 >= 2)
        {
          v107 = 0;
          v108 = 1;
          do
          {
            context = objc_msgSend_objectAtIndex_(v121, v104, v107, v105);
            v111 = objc_msgSend_objectAtIndex_(v121, v109, v108, v110);
            if (objc_msgSend_isEqualToDate_(context, v112, v111, v113))
            {
              objc_msgSend_removeObjectAtIndex_(v121, v114, v107, v115);
              --v106;
            }

            else
            {
              v107 = v108;
            }

            v108 = v107 + 1;
          }

          while (v107 + 1 < v106);
        }

        v89 = 0;
        v15 = 0;
LABEL_59:

        p_cache = (TSCEFunction_XMATCH + 16);
        if (v89)
        {
          goto LABEL_36;
        }
      }
    }

    v40 = objc_msgSend_gregorianCalendar(p_cache + 233, v29, v30, v31);
    v33 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v41 = v120;
    Weekday = objc_msgSend_extractWeekday_(v40, v42, v41, v43);
    v49 = objc_msgSend_extractWeekday_(v40, v45, v122, v46);
    v50 = 0.0;
    v51 = v41;
    while (Weekday != v49)
    {
      v52 = v50 + 1.0;
      if (Weekday == 7)
      {
        v52 = v50;
      }

      if (Weekday != 1)
      {
        v50 = v52;
      }

      objc_msgSend_setDay_(v33, v47, 1, v48);
      v54 = objc_msgSend_dateByAddingComponents_toDate_options_(v40, v53, v33, v51, 0);

      v51 = v54;
      Weekday = objc_msgSend_extractWeekday_(v40, v55, v54, v56);
    }

    if (v49 != 1 && v49 != 7)
    {
      v50 = v50 + 1.0;
    }

    objc_msgSend_timeIntervalSinceDate_(v122, v47, v51, v48);
    v58 = v57;
    v64 = objc_msgSend_count(v121, v59, v60, v61);
    v65 = v50 + v58 / 60.0 / 60.0 / 24.0 / 7.0 * 5.0;
    if (v64)
    {
      for (i = 0; i != v64; ++i)
      {
        v67 = objc_msgSend_objectAtIndex_(v121, v62, i, v63);
        v70 = objc_msgSend_extractWeekday_(v40, v68, v67, v69);
        v73 = objc_msgSend_compare_(v67, v71, v41, v72);
        v76 = objc_msgSend_compare_(v67, v74, v122, v75);
        if (v73 <= 1 && (v76 + 1) <= 1 && v70 != 1 && v70 != 7)
        {
          v65 = v65 + -1.0;
        }
      }
    }

    v77 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    context = objc_msgSend_initWithDecimal_baseUnit_(v77, v78, v124, 3);
    goto LABEL_35;
  }

  context = objc_msgSend_raiseErrorOrConvert_(context, v22, v15, v23);
LABEL_37:

  v10 = v120;
LABEL_38:

  return context;
}

@end