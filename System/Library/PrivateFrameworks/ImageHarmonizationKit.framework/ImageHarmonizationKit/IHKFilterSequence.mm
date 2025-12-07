@interface IHKFilterSequence
+ (id)breakPascalCaseIntoWords:(id)words;
+ (id)getScalarInputsForCIFilterNamed:(id)named;
+ (id)paramToInputName:(id)name;
+ (id)parseFilterSequenceSpec:(id)spec;
+ (id)uiNameForCIFilter:(id)filter paramName:(id)name;
+ (id)uiNameForCIFilterName:(id)name;
+ (id)uiNameForParamName:(id)name;
- (IHKFilterSequence)initWithFilterSpec:(id)spec;
- (id)applySliders:(id)sliders image:(id)image error:(id *)error;
- (id)packageSliderValues:(id)values;
@end

@implementation IHKFilterSequence

+ (id)getScalarInputsForCIFilterNamed:(id)named
{
  v47 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v40 = objc_opt_new();
  v6 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v3, namedCopy, v4, v5);
  v11 = v6;
  if (v6)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = objc_msgSend_inputKeys(v6, v7, v8, v9, v10);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v42, v46, 16);
    if (v17)
    {
      v18 = *v43;
      v19 = *MEMORY[0x277CBF7F0];
      v20 = *MEMORY[0x277CBF850];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v42 + 1) + 8 * i);
          v23 = objc_msgSend_attributes(v11, v13, v14, v15, v16);
          v27 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v22, v25, v26);
          v31 = objc_msgSend_objectForKeyedSubscript_(v27, v28, v19, v29, v30);

          if (objc_msgSend_isEqualToString_(v31, v32, v20, v33, v34))
          {
            objc_msgSend_addObject_(v40, v35, v22, v36, v37);
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v42, v46, 16);
      }

      while (v17);
    }
  }

  else
  {
    NSLog(&cfstr_CouldNotFindFi.isa, namedCopy);
  }

  return v40;
}

+ (id)paramToInputName:(id)name
{
  nameCopy = name;
  v8 = nameCopy;
  if (nameCopy && objc_msgSend_length(nameCopy, v4, v5, v6, v7))
  {
    v13 = 0;
    v14 = @"input";
    do
    {
      v15 = 0;
      do
      {
        v16 = v15;
        if (v13 + v15 + 1 >= objc_msgSend_length(v8, v9, v10, v11, v12))
        {
          break;
        }

        v17 = v8;
        v22 = objc_msgSend_UTF8String(v17, v18, v19, v20, v21);
        v15 = v16 + 1;
      }

      while (*(v22 + v13 + v16 + 1) != 95);
      v23 = objc_msgSend_substringWithRange_(v8, v9, v13, v16 + 1, v12);
      v27 = objc_msgSend_substringToIndex_(v23, v24, 1, v25, v26);
      v31 = objc_msgSend_substringFromIndex_(v23, v28, 1, v29, v30);
      v32 = MEMORY[0x277CCACA8];
      v37 = objc_msgSend_uppercaseString(v27, v33, v34, v35, v36);
      v41 = objc_msgSend_stringWithFormat_(v32, v38, @"%@%@%@", v39, v40, v14, v37, v31);

      v13 += v16 + 2;
      v14 = v41;
    }

    while (v13 < objc_msgSend_length(v8, v42, v43, v44, v45));
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

+ (id)breakPascalCaseIntoWords:(id)words
{
  wordsCopy = words;
  v8 = 0;
  v9 = &stru_2866F5EB0;
  v10 = &stru_2866F5EB0;
  do
  {
    v11 = 0;
    do
    {
      v12 = v11;
      if (v8 + v11 + 1 >= objc_msgSend_length(wordsCopy, v3, v4, v5, v6))
      {
        break;
      }

      v13 = wordsCopy;
      v18 = *(objc_msgSend_UTF8String(v13, v14, v15, v16, v17) + v8 + v12 + 1);
      v19 = __toupper(v18);
      v20 = wordsCopy;
      v25 = *(objc_msgSend_UTF8String(v20, v21, v22, v23, v24) + v8 + v12);
      v26 = __toupper(v25);
      v11 = v12 + 1;
    }

    while (v19 != v18 || v26 == v25);
    v28 = objc_msgSend_substringWithRange_(wordsCopy, v3, v8, v12 + 1, v6);
    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v29, @"%@%@%@", v30, v31, v10, v9, v28);

    v8 += v12 + 1;
    v9 = @" ";
    v10 = v32;
  }

  while (v8 < objc_msgSend_length(wordsCopy, v33, v34, v35, v36));

  return v32;
}

+ (id)uiNameForParamName:(id)name
{
  nameCopy = name;
  v8 = objc_msgSend_length(@"input", v4, v5, v6, v7);
  v12 = objc_msgSend_substringFromIndex_(nameCopy, v9, v8, v10, v11);

  v16 = objc_msgSend_breakPascalCaseIntoWords_(IHKFilterSequence, v13, v12, v14, v15);

  return v16;
}

+ (id)uiNameForCIFilterName:(id)name
{
  nameCopy = name;
  for (i = 0; i < objc_msgSend_length(nameCopy, v3, v4, v5, v6); ++i)
  {
    v9 = nameCopy;
    v14 = objc_msgSend_UTF8String(v9, v10, v11, v12, v13);
    v15 = __tolower(*(v14 + i));
    v16 = nameCopy;
    if (v15 == *(objc_msgSend_UTF8String(v16, v17, v18, v19, v20) + i))
    {
      break;
    }
  }

  if (i <= 1)
  {
    LODWORD(i) = 1;
  }

  v21 = objc_msgSend_length(nameCopy, v3, v4, v5, v6);
  if (objc_msgSend_hasSuffix_(nameCopy, v22, @"Filter", v23, v24))
  {
    v21 -= objc_msgSend_length(@"Filter", v25, v26, v27, v28);
  }

  v29 = objc_msgSend_substringWithRange_(nameCopy, v25, (i - 1), v21 - (i - 1), v28);

  v33 = objc_msgSend_breakPascalCaseIntoWords_(IHKFilterSequence, v30, v29, v31, v32);

  return v33;
}

+ (id)uiNameForCIFilter:(id)filter paramName:(id)name
{
  filterCopy = filter;
  nameCopy = name;
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@.%@", v8, v9, filterCopy, nameCopy);
  v14 = objc_msgSend_objectForKeyedSubscript_(&unk_2866F8C50, v11, v10, v12, v13);

  if (!v14)
  {
    if (objc_msgSend_isEqualToString_(nameCopy, v15, @"inputStrength", v16, v17))
    {
      objc_msgSend_uiNameForCIFilterName_(IHKFilterSequence, v18, filterCopy, v19, v20);
    }

    else
    {
      objc_msgSend_uiNameForParamName_(IHKFilterSequence, v18, nameCopy, v19, v20);
    }
    v14 = ;
  }

  return v14;
}

+ (id)parseFilterSequenceSpec:(id)spec
{
  v81 = *MEMORY[0x277D85DE8];
  specCopy = spec;
  v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_componentsSeparatedByString_(specCopy, v4, @"->", v5, v6);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  obj = v74 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v73, v80, 16);
  if (v8)
  {
    v65 = *v74;
    do
    {
      v12 = 0;
      v67 = v8;
      do
      {
        if (*v74 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v73 + 1) + 8 * v12);
        v14 = objc_msgSend_rangeOfString_(v13, v9, @"[", v10, v11);
        v16 = v15;
        v19 = objc_msgSend_rangeOfString_(v13, v15, @"]", v17, v18);
        v21 = v20;
        v22 = v13;
        v26 = objc_opt_new();
        if (v16)
        {
          v27 = v21 == 0;
        }

        else
        {
          v27 = 1;
        }

        v68 = v22;
        if (v27)
        {
          v33 = objc_msgSend_getScalarInputsForCIFilterNamed_(self, v23, v22, v24, v25);
          v32 = v26;
          v26 = objc_msgSend_mutableCopy(v33, v28, v29, v30, v31);
        }

        else
        {
          v33 = objc_msgSend_substringWithRange_(v22, v23, v14 + 1, v19 + ~v14, v25);
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v37 = objc_msgSend_componentsSeparatedByString_(v33, v34, @",", v35, v36);
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v69, v79, 16);
          v43 = v39;
          if (v39)
          {
            v44 = *v70;
            do
            {
              v45 = 0;
              do
              {
                if (*v70 != v44)
                {
                  objc_enumerationMutation(v37);
                }

                v46 = objc_msgSend_paramToInputName_(self, v40, *(*(&v69 + 1) + 8 * v45), v41, v42);
                objc_msgSend_addObject_(v26, v47, v46, v48, v49);

                ++v45;
              }

              while (v43 != v45);
              v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v69, v79, 16);
            }

            while (v43);
          }

          v32 = v68;
          v68 = objc_msgSend_substringToIndex_(v68, v50, v14, v51, v52);
        }

        v56 = objc_msgSend_sortedArrayUsingSelector_(v26, v53, sel_compare_, v54, v55);
        v77[0] = @"filterName";
        v77[1] = @"inputNames";
        v78[0] = v68;
        v78[1] = v56;
        v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, v78, v77, 2);
        objc_msgSend_addObject_(v66, v59, v58, v60, v61);

        ++v12;
      }

      while (v12 != v67);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v73, v80, 16);
    }

    while (v8);
  }

  return v66;
}

- (IHKFilterSequence)initWithFilterSpec:(id)spec
{
  v134 = *MEMORY[0x277D85DE8];
  specCopy = spec;
  v131.receiver = self;
  v131.super_class = IHKFilterSequence;
  v112 = [(IHKFilterSequence *)&v131 init];
  if (v112)
  {
    v7 = objc_msgSend_parseFilterSequenceSpec_(IHKFilterSequence, v4, specCopy, v5, v6);
    objc_msgSend_setFilterSeq_(v112, v8, v7, v9, v10);

    v121 = objc_opt_new();
    v120 = objc_opt_new();
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    obj = objc_msgSend_filterSeq(v112, v11, v12, v13, v14);
    v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v127, v133, 16);
    if (v115)
    {
      v114 = *v128;
      v118 = *MEMORY[0x277CBF7C8];
      v119 = *MEMORY[0x277CBF7D0];
      v19 = *MEMORY[0x277CBF7C0];
      do
      {
        for (i = 0; i != v115; ++i)
        {
          if (*v128 != v114)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v127 + 1) + 8 * i);
          v122 = objc_msgSend_objectForKeyedSubscript_(v20, v16, @"filterName", v17, v18);
          v24 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v21, v122, v22, v23);
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v117 = objc_msgSend_objectForKeyedSubscript_(v20, v25, @"inputNames", v26, v27);
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v28, &v123, v132, 16);
          if (v31)
          {
            v32 = *v124;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v124 != v32)
                {
                  objc_enumerationMutation(v117);
                }

                v34 = *(*(&v123 + 1) + 8 * j);
                v35 = objc_msgSend_uiNameForCIFilter_paramName_(IHKFilterSequence, v29, v122, v34, v30);
                objc_msgSend_addObject_(v121, v36, v35, v37, v38);
                v43 = objc_msgSend_attributes(v24, v39, v40, v41, v42);
                v47 = objc_msgSend_objectForKeyedSubscript_(v43, v44, v34, v45, v46);
                v51 = objc_msgSend_objectForKeyedSubscript_(v47, v48, v119, v49, v50);
                objc_msgSend_doubleValue(v51, v52, v53, v54, v55);
                v57 = v56;

                v62 = objc_msgSend_attributes(v24, v58, v59, v60, v61);
                v66 = objc_msgSend_objectForKeyedSubscript_(v62, v63, v34, v64, v65);
                v70 = objc_msgSend_objectForKeyedSubscript_(v66, v67, v118, v68, v69);
                objc_msgSend_doubleValue(v70, v71, v72, v73, v74);
                v76 = v75;

                v81 = objc_msgSend_attributes(v24, v77, v78, v79, v80);
                v85 = objc_msgSend_objectForKeyedSubscript_(v81, v82, v34, v83, v84);
                v89 = objc_msgSend_objectForKeyedSubscript_(v85, v86, v19, v87, v88);
                objc_msgSend_doubleValue(v89, v90, v91, v92, v93);
                v95 = v94;

                v96 = [IHKSliderSpec alloc];
                v101 = objc_msgSend_initWithMin_max_identity_(v96, v97, v98, v99, v100, v57, v76, v95);
                objc_msgSend_setObject_forKeyedSubscript_(v120, v102, v101, v35, v103);
              }

              v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v29, &v123, v132, 16);
            }

            while (v31);
          }
        }

        v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v127, v133, 16);
      }

      while (v115);
    }

    objc_msgSend_setSliderOrder_(v112, v104, v121, v105, v106);
    objc_msgSend_setSliderSpecs_(v112, v107, v120, v108, v109);
  }

  return v112;
}

- (id)packageSliderValues:(id)values
{
  v71 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v46 = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  objc_msgSend_filterSeq(self, v4, v5, v6, v7);
  obj = v47 = self;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v64, v70, 16);
  if (v43)
  {
    v44 = *v65;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v65 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v51 = *(*(&v64 + 1) + 8 * i);
        v12 = objc_msgSend_objectForKeyedSubscript_(v51, v9, @"filterName", v10, v11);
        v55 = objc_opt_new();
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v49 = objc_msgSend_sliderOrder(v47, v13, v14, v15, v16);
        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v17, &v60, v69, 16);
        if (v52)
        {
          v50 = *v61;
          do
          {
            for (j = 0; j != v52; ++j)
            {
              if (*v61 != v50)
              {
                objc_enumerationMutation(v49);
              }

              v21 = *(*(&v60 + 1) + 8 * j);
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v22 = objc_msgSend_objectForKeyedSubscript_(v51, v18, @"inputNames", v19, v20);
              v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v56, v68, 16);
              if (v26)
              {
                v27 = *v57;
                do
                {
                  for (k = 0; k != v26; ++k)
                  {
                    if (*v57 != v27)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v29 = *(*(&v56 + 1) + 8 * k);
                    v30 = objc_msgSend_uiNameForCIFilter_paramName_(IHKFilterSequence, v24, v12, v29, v25);
                    if (objc_msgSend_isEqualToString_(v21, v31, v30, v32, v33))
                    {
                      v37 = objc_msgSend_objectForKeyedSubscript_(valuesCopy, v34, v21, v35, v36);
                      objc_msgSend_setObject_forKeyedSubscript_(v55, v38, v37, v29, v39);
                    }
                  }

                  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v56, v68, 16);
                }

                while (v26);
              }
            }

            v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v18, &v60, v69, 16);
          }

          while (v52);
        }

        objc_msgSend_setObject_forKeyedSubscript_(v46, v40, v55, v12, v41);
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v64, v70, 16);
    }

    while (v43);
  }

  return v46;
}

- (id)applySliders:(id)sliders image:(id)image error:(id *)error
{
  v119 = *MEMORY[0x277D85DE8];
  slidersCopy = sliders;
  imageCopy = image;
  v14 = objc_msgSend_count(slidersCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_sliderOrder(self, v15, v16, v17, v18);
  v24 = objc_msgSend_count(v19, v20, v21, v22, v23);

  if (v14 == v24)
  {
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = objc_msgSend_filterSeq(self, v25, v26, v27, v28);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v113, v118, 16);
    if (v30)
    {
      v34 = 0;
      v100 = v30;
      v101 = *v114;
      errorCopy = error;
      while (2)
      {
        v103 = 0;
        v105 = imageCopy;
        do
        {
          if (*v114 != v101)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v113 + 1) + 8 * v103);
          v104 = objc_msgSend_objectForKeyedSubscript_(v35, v31, @"filterName", v32, v33);
          v36 = objc_opt_new();
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v40 = objc_msgSend_objectForKeyedSubscript_(v35, v37, @"inputNames", v38, v39);
          v107 = v40;
          v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v109, v117, 16);
          if (v46)
          {
            v47 = *v110;
            while (2)
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v110 != v47)
                {
                  objc_enumerationMutation(v107);
                }

                v49 = *(*(&v109 + 1) + 8 * i);
                v50 = objc_msgSend_sliderOrder(self, v42, v43, v44, v45);
                v54 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, v34, v52, v53);

                v58 = objc_msgSend_objectForKeyedSubscript_(slidersCopy, v55, v54, v56, v57);
                LODWORD(v50) = v58 == 0;

                if (v50)
                {
                  if (errorCopy)
                  {
                    v94 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v59, @"No value for slider named %@ in sliders dictionary.", v60, v61, v54);
                    *errorCopy = objc_msgSend_errorWithCode_message_(IHKError, v95, 6, v94, v96);
                  }

                  goto LABEL_26;
                }

                v62 = objc_msgSend_objectForKeyedSubscript_(slidersCopy, v59, v54, v60, v61);
                objc_msgSend_setObject_forKeyedSubscript_(v36, v63, v62, v49, v64);

                ++v34;
              }

              v40 = v107;
              v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v42, &v109, v117, 16);
              if (v46)
              {
                continue;
              }

              break;
            }
          }

          objc_msgSend_setObject_forKeyedSubscript_(v36, v65, v105, @"inputImage", v66);
          v69 = objc_msgSend_filterWithName_withInputParameters_(MEMORY[0x277CBF750], v67, v104, v36, v68);
          v74 = v69;
          if (!v69)
          {
            if (errorCopy)
            {
              v108 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v70, @"Could not find filter named %@.", v72, v73, v104);
              *errorCopy = objc_msgSend_errorWithCode_message_(IHKError, v98, 5, v108, v99);
            }

LABEL_26:

            v75 = 0;
            imageCopy = v105;
            goto LABEL_27;
          }

          imageCopy = objc_msgSend_outputImage(v69, v70, v71, v72, v73);

          v105 = imageCopy;
          ++v103;
        }

        while (v103 != v100);
        v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v113, v118, 16);
        if (v100)
        {
          continue;
        }

        break;
      }
    }

    imageCopy = imageCopy;
    v75 = imageCopy;
  }

  else
  {
    if (error)
    {
      v76 = MEMORY[0x277CCACA8];
      v77 = objc_msgSend_count(slidersCopy, v25, v26, v27, v28);
      v82 = objc_msgSend_sliderOrder(self, v78, v79, v80, v81);
      v87 = objc_msgSend_count(v82, v83, v84, v85, v86);
      v91 = objc_msgSend_stringWithFormat_(v76, v88, @"Number of sliders does not match number of sliders in filter sequence (given: %lu != expected: %lu).", v89, v90, v77, v87);

      *error = objc_msgSend_errorWithCode_message_(IHKError, v92, 7, v91, v93);
    }

    v75 = 0;
  }

LABEL_27:

  return v75;
}

@end