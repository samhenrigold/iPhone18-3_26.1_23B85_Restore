@interface TSCEFunction_HYPERLINK
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_HYPERLINK

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v192 = 0;
  v193 = 0;
  v194 = 0;
  v8 = **arguments;
  v11 = v8;
  v184 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v191, 0, sizeof(v191));
  }

  sub_22114F414(&v192, &v191);
  v190 = 0;
  v13 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v190);
  v14 = v190;
  if (v14)
  {
    v18 = v14;
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v15, v14, v17);
    goto LABEL_34;
  }

  v20 = objc_msgSend_length(v13, v15, v16, v17);
  v182 = objc_msgSend_newArrayByScanningString_scanRange_(MEMORY[0x277D80FB0], v21, v13, 0, v20);
  if (objc_msgSend_count(v182, v22, v23, v24) == 1)
  {
    v28 = objc_msgSend_objectAtIndexedSubscript_(v182, v25, 0, v27);
    v31 = objc_msgSend_objectForKeyedSubscript_(v28, v29, *MEMORY[0x277D810C8], v30);
    v35 = objc_msgSend_rangeValue(v31, v32, v33, v34);
    v37 = v36;

    if (v35 || v37 != v20)
    {
    }

    else
    {
      v40 = objc_msgSend_objectForKeyedSubscript_(v28, v38, *MEMORY[0x277D810D0], v39);

      if (v40)
      {
        v41 = v182;
        goto LABEL_17;
      }
    }
  }

  v42 = objc_msgSend_URLFragmentAllowedCharacterSet(MEMORY[0x277CCA900], v25, v26, v27);
  v45 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v13, v43, v42, v44);

  v49 = objc_msgSend_length(v45, v46, v47, v48);
  v51 = objc_msgSend_newArrayByScanningString_scanRange_(MEMORY[0x277D80FB0], v50, v45, 0, v49);

  if (objc_msgSend_count(v51, v52, v53, v54) == 1)
  {
    v58 = objc_msgSend_objectAtIndexedSubscript_(v51, v55, 0, v57);
    v61 = objc_msgSend_objectForKeyedSubscript_(v58, v59, *MEMORY[0x277D810C8], v60);
    v65 = objc_msgSend_rangeValue(v61, v62, v63, v64);
    v67 = v66;

    if (v65 || v67 != v49)
    {
    }

    else
    {
      v40 = objc_msgSend_objectForKeyedSubscript_(v58, v68, *MEMORY[0x277D810D0], v69);

      if (v40)
      {
        v13 = v45;
        v41 = v51;
LABEL_17:
        sub_221077074(&v187, v13);
        if (*(arguments + 1) - *arguments >= 9uLL)
        {
          v73 = *(*arguments + 8);
          if ((objc_msgSend_isTokenOrEmptyArg(v73, v74, v75, v76) & 1) == 0)
          {
            if (v73)
            {
              objc_msgSend_formatWithContext_(v73, v77, context, v78);
            }

            else
            {
              memset(&v191, 0, sizeof(v191));
            }

            sub_22114F414(&v192, &v191);
            v186 = 0;
            if (v73)
            {
              objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v73, v164, context, spec, 1, &v186);
              v102 = v186;
              tskFormat = v191._tskFormat;
            }

            else
            {
              tskFormat = 0;
              v102 = 0;
              *&v191._formatType = 0;
              *&v191._durationFormat = 0;
            }

            v191._tskFormat = 0;
            v166 = v187;
            v187 = tskFormat;

            v167 = *&v191._formatType;
            *&v191._formatType = 0;
            v168 = v188;
            v188 = v167;

            durationFormat = v191._durationFormat;
            if (v102)
            {
              v19 = objc_msgSend_raiseErrorOrConvert_(context, v169, v102, v171);
              goto LABEL_32;
            }

            if (!sub_221078910(&v187, v169, v170, v171))
            {
              v86 = objc_msgSend_functionName(spec, v172, v173, v174);
              v181 = objc_msgSend_nonEmptyStringRequiredErrorForFunctionName_(TSCEError, v175, v86, v176);
              v19 = objc_msgSend_raiseErrorOrConvert_(context, v177, v181, v178);
LABEL_31:

LABEL_32:
              goto LABEL_33;
            }
          }
        }

        v79 = objc_msgSend_calcEngine(context, v70, v71, v72);
        v73 = objc_msgSend_documentRoot(v79, v80, v81, v82);

        v86 = objc_msgSend_context(v73, v83, v84, v85);
        v181 = objc_msgSend_stylesheet(v73, v87, v88, v89);
        if (sub_221077388(&v187))
        {
          sub_221077078(&v187, &v191, v90, v91, v92);
          v93 = v191._tskFormat;
          v191._tskFormat = 0;
          v94 = v187;
          v187 = v93;

          v95 = *&v191._formatType;
          *&v191._formatType = 0;
          v96 = v188;
          v188 = v95;

          durationFormat = v191._durationFormat;
        }

        else
        {
          v183 = v41;
          v179 = v40;
          v180 = v86;
          v103 = sub_2210772BC(&v187, v90, v91, v92);
          v107 = objc_msgSend_calcEngine(context, v104, v105, v106);
          v111 = objc_msgSend_containingTable(context, v108, v109, v110);
          v114 = objc_msgSend_tableResolverForTableUID_(v107, v112, v111, v113);

          if (v114)
          {
            v118 = objc_msgSend_containingCell(context, v115, v116, v117);
            v121 = objc_msgSend_cellTextStyle_(v114, v119, v118, v120);
          }

          else
          {
            v121 = 0;
          }

          v122 = objc_alloc(MEMORY[0x277D80F28]);
          v126 = objc_msgSend_theme(v73, v123, v124, v125);
          v130 = objc_msgSend_defaultListStyle(v126, v127, v128, v129);
          v132 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v122, v131, v180, v103, 5, v181, v121, v130, 0, 0);

          v133 = v187;
          v187 = 0;
          v134 = v132;

          v135 = v188;
          v188 = v134;

          *&durationFormat = 1;
          *(&durationFormat + 2) = 0;

          v41 = v183;
          v40 = v179;
          v86 = v180;
        }

        v136 = sub_2210771B0(&v187, v97, v98, v99);
        v137 = objc_alloc(MEMORY[0x277D80E58]);
        v139 = objc_msgSend_initWithContext_url_(v137, v138, v86, v40);
        v143 = objc_msgSend_length(v136, v140, v141, v142);
        objc_msgSend_addSmartField_toRange_dolcContext_undoTransaction_(v136, v144, v139, 0, v143, 0, 0);
        v148 = objc_msgSend_theme(v73, v145, v146, v147);
        v152 = objc_msgSend_hyperlinkStyle(v148, v149, v150, v151);

        v156 = objc_msgSend_length(v136, v153, v154, v155);
        objc_msgSend_setCharacterStyle_range_undoTransaction_(v136, v157, v152, 0, v156, 0);
        v19 = sub_2210789F4(&v187, v158, v159, v160);
        sub_221256020(&v192, &v185);
        TSCEFormat::TSCEFormat(&v191, &v185);
        objc_msgSend_setFormat_(v19, v161, &v191, v162);

        v102 = 0;
        goto LABEL_31;
      }
    }
  }

  v40 = objc_msgSend_invalidHyperlinkError(TSCEError, v55, v56, v57);
  v19 = objc_msgSend_raiseErrorOrConvert_(context, v100, v40, v101);
  v102 = 0;
  v13 = v45;
  v41 = v51;
LABEL_33:

  v18 = v102;
LABEL_34:

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  return v19;
}

@end