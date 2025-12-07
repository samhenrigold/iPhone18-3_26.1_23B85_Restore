@interface TSCEQuotedRefPathSplitter
+ (BOOL)isLeftParen:(id)paren;
+ (BOOL)isRightParen:(id)paren;
+ (BOOL)isSingleQuote:(id)quote;
+ (id)refPathInterestingCharactersSet;
- (TSCEQuotedRefPathSplitter)initWithComponents:(id)components aggregateFunction:(id)function;
- (TSCEQuotedRefPathSplitter)initWithReferenceString:(id)string;
- (id)componentAtIndex:(unint64_t)index;
- (void)addComponent:(id)component;
- (void)splitRefPath:(id)path;
@end

@implementation TSCEQuotedRefPathSplitter

+ (BOOL)isSingleQuote:(id)quote
{
  quoteCopy = quote;
  if (objc_msgSend_length(quoteCopy, v4, v5, v6) != 1 || (v9 = objc_msgSend_characterAtIndex_(quoteCopy, v7, 0, v8), v10 = 1, (v9 - 8216) >= 2) && v9 != 39 && v9 != 65287)
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)isLeftParen:(id)paren
{
  parenCopy = paren;
  if (objc_msgSend_length(parenCopy, v4, v5, v6) == 1)
  {
    v9 = objc_msgSend_characterAtIndex_(parenCopy, v7, 0, v8);
  }

  else
  {
    v9 = 0;
  }

  v11 = v9 == 40 || v9 == 65288;

  return v11;
}

+ (BOOL)isRightParen:(id)paren
{
  parenCopy = paren;
  if (objc_msgSend_length(parenCopy, v4, v5, v6) == 1)
  {
    v9 = objc_msgSend_characterAtIndex_(parenCopy, v7, 0, v8);
  }

  else
  {
    v9 = 0;
  }

  v11 = v9 == 41 || v9 == 65289;

  return v11;
}

+ (id)refPathInterestingCharactersSet
{
  if (qword_27CFB5570 != -1)
  {
    sub_2216F7BA8();
  }

  v3 = qword_27CFB5568;

  return v3;
}

- (TSCEQuotedRefPathSplitter)initWithReferenceString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = TSCEQuotedRefPathSplitter;
  v5 = [(TSCEQuotedRefPathSplitter *)&v10 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_splitRefPath_(v5, v6, stringCopy, v7);
  }

  return v8;
}

- (TSCEQuotedRefPathSplitter)initWithComponents:(id)components aggregateFunction:(id)function
{
  v62 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  functionCopy = function;
  v60.receiver = self;
  v60.super_class = TSCEQuotedRefPathSplitter;
  v8 = [(TSCEQuotedRefPathSplitter *)&v60 init];
  if (v8)
  {
    v9 = objc_opt_new();
    quotedComponents = v8->_quotedComponents;
    v8->_quotedComponents = v9;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v11 = componentsCopy;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v56, v61, 16);
    if (v13)
    {
      v14 = *v57;
      do
      {
        v15 = 0;
        do
        {
          if (*v57 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v56 + 1) + 8 * v15);
          v17 = [TSCEQuotedRefPathSplitter alloc];
          v20 = objc_msgSend_initWithReferenceString_(v17, v18, v16, v19);
          v25 = objc_msgSend_componentAtIndex_(v20, v21, 0, v22);
          if (v25)
          {
            objc_msgSend_addObject_(v8->_quotedComponents, v23, v25, v24);
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v26, &v56, v61, 16);
      }

      while (v13);
    }

    if (objc_msgSend_length(functionCopy, v27, v28, v29) && objc_msgSend_count(v8->_quotedComponents, v30, v31, v32))
    {
      v36 = objc_msgSend_lastObject(v8->_quotedComponents, v33, v34, v35);
      if (objc_msgSend_hasPrefix_(functionCopy, v37, @"("), v38 && objc_msgSend_hasSuffix_(functionCopy, v39, @""), v40))
      {
        v41 = [TSCEQuotedRefPathWord alloc];
        v44 = objc_msgSend_initWithRawString_(v41, v42, functionCopy, v43);
        objc_msgSend_addRefPathWord_(v36, v45, v44, v46);
      }

      else
      {
        v47 = [TSCEQuotedRefPathWord alloc];
        v50 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v48, @"(%@)", v49, functionCopy);
        v44 = objc_msgSend_initWithRawString_(v47, v51, v50, v52);

        objc_msgSend_addRefPathWord_(v36, v53, v44, v54);
      }
    }
  }

  return v8;
}

- (void)splitRefPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  quotedComponents = self->_quotedComponents;
  if (quotedComponents)
  {
    objc_msgSend_removeAllObjects(quotedComponents, v4, v5, v6);
  }

  else
  {
    v12 = objc_opt_new();
    v13 = self->_quotedComponents;
    self->_quotedComponents = v12;
  }

  v14 = objc_msgSend_refPathInterestingCharactersSet(TSCEQuotedRefPathSplitter, v9, v10, v11);
  v17 = objc_msgSend_rangeOfCharacterFromSet_(pathCopy, v15, v14, v16);

  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = objc_opt_new();
    objc_msgSend_addObject_(self->_quotedComponents, v22, v21, v23);
    v24 = [TSCEQuotedRefPathWord alloc];
    v27 = objc_msgSend_initWithRawString_(v24, v25, pathCopy, v26);
    objc_msgSend_addRefPathWord_(v21, v28, v27, v29);

    goto LABEL_101;
  }

  v177 = 0;
  v178 = &v177;
  v179 = 0x4812000000;
  v180 = sub_22141C9A0;
  v181 = sub_22141C9C4;
  v182 = &unk_22188E88F;
  memset(v183, 0, 24);
  v30 = objc_msgSend_length(pathCopy, v18, v19, v20);
  v176[0] = MEMORY[0x277D85DD0];
  v176[1] = 3221225472;
  v176[2] = sub_22141C9F0;
  v176[3] = &unk_278464D58;
  v176[4] = &v177;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(pathCopy, v31, 0, v30, 2, v176);
  v35 = v178;
  v37 = v178[7];
  v36 = v178[8];
  if (v37 >= v36)
  {
    v39 = v178[6];
    v40 = (v37 - v39) >> 3;
    if ((v40 + 1) >> 61)
    {
      sub_22107C148();
    }

    v41 = v36 - v39;
    v42 = v41 >> 2;
    if (v41 >> 2 <= (v40 + 1))
    {
      v42 = v40 + 1;
    }

    if (v41 >= 0x7FFFFFFFFFFFFFF8)
    {
      v43 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v42;
    }

    v188 = v178 + 6;
    if (v43)
    {
      sub_22107C1F0((v178 + 6), v43);
    }

    v184 = 0;
    v185 = (8 * v40);
    v187 = 0;
    *v185 = 0;
    v186 = 8 * v40 + 8;
    sub_22107C098((v35 + 6), &v184);
    v38 = v35[7];
    sub_22107C26C(&v184);
  }

  else
  {
    *v37 = 0;
    v38 = v37 + 1;
    v35[7] = v38;
  }

  v35[7] = v38;
  v171 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v32, v33, v34);
  v175 = objc_opt_new();
  v45 = v178[6];
  v44 = v178[7];
  if (v45 == v44)
  {
    v168 = 0;
    goto LABEL_100;
  }

  v170 = pathCopy;
  v46 = 0;
  v172 = 0;
  v173 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 1;
  while (1)
  {
    v50 = *v45;
    if ((v48 & 1) == 0)
    {
      break;
    }

    v48 = 0;
LABEL_90:

    ++v45;
    ++v49;
    if (v45 == v44)
    {
      v167 = v46 ^ 1;
      goto LABEL_96;
    }
  }

  v51 = v178[6];
  if (v49 >= (v178[7] - v51) >> 3)
  {
    v52 = 0;
  }

  else
  {
    v52 = *(v51 + 8 * v49);
  }

  v56 = v52;
  if ((v47 & 1) == 0)
  {
    v57 = v175;
    v58 = v173;
    if (!objc_msgSend_length(v175, v53, v54, v55))
    {
      if (sub_22141B810(TSCEQuotedRefPathSplitter, v50))
      {
        if (v172)
        {
          if (!selfCopy->_forceSplitting)
          {
            v47 = 0;
            v48 = 0;
            LOBYTE(v172) = 1;
            goto LABEL_87;
          }

          objc_msgSend_appendString_(v175, v109, @"$$", v111);
          v48 = 0;
          v47 = 0;
          LOBYTE(v172) = 0;
          if ((v46 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v48 = 0;
          v47 = 0;
          LOBYTE(v172) = 1;
          if ((v46 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        goto LABEL_87;
      }

      if (objc_msgSend_length(v50, v109, v110, v111) == 1)
      {
        v144 = objc_msgSend_characterAtIndex_(v50, v59, 0, v61);
        if (objc_msgSend_characterIsMember_(v171, v145, v144, v146))
        {
LABEL_79:
          v48 = 0;
          v47 = 0;
          if (v46)
          {
            goto LABEL_87;
          }

          goto LABEL_80;
        }
      }
    }

    if (objc_msgSend_length(v50, v59, v60, v61) == 1 && (v64 = objc_msgSend_characterAtIndex_(v50, v62, 0, v63), objc_msgSend_characterIsMember_(v171, v65, v64, v66)))
    {
      if (!v173)
      {
        v58 = objc_opt_new();
        objc_msgSend_addObject_(selfCopy->_quotedComponents, v68, v58, v69);
      }

      v173 = v58;
      if (!objc_msgSend_length(v175, v62, v67, v63))
      {
        goto LABEL_79;
      }

      v72 = objc_msgSend_substringToIndex_(v175, v70, 1, v71);
      if (!objc_msgSend_isLeftParen_(TSCEQuotedRefPathSplitter, v73, v72, v74) || (objc_msgSend_rangeOfCharacterFromSet_(v175, v75, v171, v76), v79))
      {

LABEL_36:
        v80 = [TSCEQuotedRefPathWord alloc];
        v83 = objc_msgSend_initWithRawString_(v80, v81, v175, v82);
        objc_msgSend_setHasPreserveFlag_(v83, v84, v172 & 1, v85);
        objc_msgSend_setWasQuoted_(v83, v86, 0, v87);
        objc_msgSend_addRefPathWord_(v58, v88, v83, v89);
        v90 = objc_opt_new();

        LOBYTE(v172) = 0;
LABEL_64:
        v47 = 0;
        v48 = 0;
        v106 = 0;
LABEL_65:
        v175 = v90;
        if ((v46 & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      v161 = objc_msgSend_length(v175, 0, v77, v78);
      v169 = objc_msgSend_substringFromIndex_(v175, v162, v161 - 1, v163);
      isRightParen = objc_msgSend_isRightParen_(TSCEQuotedRefPathSplitter, v164, v169, v165);

      if (isRightParen)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (objc_msgSend_isSingleQuote_(TSCEQuotedRefPathSplitter, v62, v50, v63))
      {
        if (!objc_msgSend_length(v175, v91, v92, v93))
        {
          v48 = 0;
LABEL_74:
          v47 = 1;
          if (v46)
          {
            goto LABEL_87;
          }

LABEL_80:
          v106 = 0;
LABEL_89:

          v46 = v106;
          goto LABEL_90;
        }

        if (!v173)
        {
          v58 = objc_opt_new();
          objc_msgSend_addObject_(selfCopy->_quotedComponents, v94, v58, v95);
        }

        v173 = v58;
        v96 = [TSCEQuotedRefPathWord alloc];
        v99 = objc_msgSend_initWithRawString_(v96, v97, v175, v98);
        objc_msgSend_setHasPreserveFlag_(v99, v100, v172 & 1, v101);
        objc_msgSend_setWasQuoted_(v99, v102, 0, v103);
        objc_msgSend_addRefPathWord_(v58, v104, v99, v105);
        v90 = objc_opt_new();

        LOBYTE(v172) = 0;
        v48 = 0;
        v106 = 0;
        v47 = 1;
        goto LABEL_65;
      }

      if (!v50 || sub_22141B890(TSCEQuotedRefPathSplitter, v50) && sub_22141B890(TSCEQuotedRefPathSplitter, v56))
      {
        if (!v173)
        {
          v58 = objc_opt_new();
          objc_msgSend_addObject_(selfCopy->_quotedComponents, v112, v58, v113);
        }

        v114 = objc_msgSend_numWords(v58, v91, v92, v93);
        if (objc_msgSend_length(v175, v115, v116, v117) || !v114)
        {
          v118 = [TSCEQuotedRefPathWord alloc];
          v121 = objc_msgSend_initWithRawString_(v118, v119, v175, v120);
          objc_msgSend_setHasPreserveFlag_(v121, v122, v172 & 1, v123);
          objc_msgSend_setWasQuoted_(v121, v124, 0, v125);
          objc_msgSend_addRefPathWord_(v58, v126, v121, v127);
          v128 = objc_opt_new();

          LOBYTE(v172) = 0;
          v57 = v128;
        }

        v175 = v57;
        if (v50)
        {
          v129 = objc_opt_new();

          objc_msgSend_addObject_(selfCopy->_quotedComponents, v130, v129, v131);
          v47 = 0;
          v48 = 1;
          v173 = v129;
          if (v46)
          {
            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v173 = v58;
        goto LABEL_79;
      }
    }

    objc_msgSend_appendString_(v175, v91, v50, v93);
    goto LABEL_79;
  }

  if ((v172 & 0x100000000) != 0)
  {
LABEL_26:
    objc_msgSend_appendString_(v175, v53, v50, v55);
    v48 = 0;
    BYTE4(v172) = 0;
    goto LABEL_74;
  }

  if (sub_22141B784(TSCEQuotedRefPathSplitter, v50, v56))
  {
    v48 = 0;
    BYTE4(v172) = 1;
    goto LABEL_74;
  }

  if (objc_msgSend_isSingleQuote_(TSCEQuotedRefPathSplitter, v107, v50, v108))
  {
    if (!v173)
    {
      v173 = objc_opt_new();
      objc_msgSend_addObject_(selfCopy->_quotedComponents, v132, v173, v133);
    }

    v134 = [TSCEQuotedRefPathWord alloc];
    v137 = objc_msgSend_initWithRawString_(v134, v135, v175, v136);
    objc_msgSend_setHasPreserveFlag_(v137, v138, v172 & 1, v139);
    objc_msgSend_setWasQuoted_(v137, v140, 1, v141);
    objc_msgSend_addRefPathWord_(v173, v142, v137, v143);
    v90 = objc_opt_new();

    v172 = 0;
    goto LABEL_64;
  }

  if (v50)
  {
    goto LABEL_26;
  }

  if (selfCopy->_forceSplitting)
  {
    if (!v173)
    {
      v173 = objc_opt_new();
      objc_msgSend_addObject_(selfCopy->_quotedComponents, v147, v173, v148);
    }

    v149 = [TSCEQuotedRefPathWord alloc];
    v152 = objc_msgSend_initWithRawString_(v149, v150, v175, v151);
    objc_msgSend_setHasPreserveFlag_(v152, v153, v172 & 1, v154);
    objc_msgSend_addRefPathWord_(v173, v155, v152, v156);
    v157 = objc_opt_new();

    v172 = 0;
    v48 = 0;
    v47 = 1;
    v175 = v157;
  }

  else
  {
    BYTE4(v172) = 0;
    v48 = 0;
    v47 = 1;
  }

LABEL_87:
  if (selfCopy->_forceSplitting)
  {
    v106 = 1;
    goto LABEL_89;
  }

  v167 = 0;
LABEL_96:
  pathCopy = v170;
  if (!selfCopy->_forceSplitting && (v167 & 1) == 0)
  {
    objc_msgSend_removeAllObjects(selfCopy->_quotedComponents, v158, v159, v160);
  }

  v168 = v173;
LABEL_100:

  _Block_object_dispose(&v177, 8);
  v184 = v183;
  sub_22107C2C0(&v184);
LABEL_101:
}

- (void)addComponent:(id)component
{
  componentCopy = component;
  if (componentCopy)
  {
    quotedComponents = self->_quotedComponents;
    if (!quotedComponents)
    {
      v7 = objc_opt_new();
      v8 = self->_quotedComponents;
      self->_quotedComponents = v7;

      quotedComponents = self->_quotedComponents;
    }

    objc_msgSend_addObject_(quotedComponents, v4, componentCopy, v5);
  }
}

- (id)componentAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_quotedComponents, a2, index, v3) <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndex_(self->_quotedComponents, v6, index, v7);
  }

  return v8;
}

@end