@interface FilterElementDefinition
- ($89967B733E8F0E8859294B5D59E7AF0F)encodeInto:(_MDPlistContainer *)into auxArray:(id)array namedRootMap:(id)map;
- (id)initAsRoot:(id)root;
- (void)addRuleField:(int)field value:(int)value hasAuxValue:(BOOL)auxValue auxValue:(unint64_t)a6 inside:(BOOL)inside forPathComponents:(id)components permitLink:(BOOL)link componentIndex:(int)self0 parentElement:(id)self1 copyParentWildcardLink:(BOOL)self2;
- (void)dealloc;
- (void)dumpAttributesInto:(char *)into forLevel:(int)level;
@end

@implementation FilterElementDefinition

- (id)initAsRoot:(id)root
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = FilterElementDefinition;
  v4 = [(FilterElementDefinition *)&v6 init];
  if (v4)
  {
    v4->_rootName = root;
    v4->_setOfMatches = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_setOfPrefixedWildCards = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = FilterElementDefinition;
  [(FilterElementDefinition *)&v3 dealloc];
}

- ($89967B733E8F0E8859294B5D59E7AF0F)encodeInto:(_MDPlistContainer *)into auxArray:(id)array namedRootMap:(id)map
{
  arrayCopy = array;
  v148 = *MEMORY[0x1E69E9840];
  v12 = [array count];
  if (self->_hasAuxValue)
  {
    [arrayCopy addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", self->_auxValue)}];
  }

  if (self->_namedLink)
  {
    v13 = [map objectForKey:?];
    if (!v13)
    {
      [FilterElementDefinition encodeInto:auxArray:namedRootMap:];
    }

    v14 = [v13 intValue] + 1;
  }

  else
  {
    v14 = 0;
  }

  v116 = v14;
  v118 = 0;
  v117 = 0;
  v119 = 0;
  hasAuxValue = self->_hasAuxValue;
  if (self->_hasAuxValue)
  {
    v16 = v12 + 1;
  }

  else
  {
    v16 = 0;
  }

  v120 = v16;
  v121 = hasAuxValue + v12;
  subAuxValueCount = self->_subAuxValueCount;
  mask = self->_mask;
  if ([(FilterElementDefinition *)self isBottomValue])
  {
    v18 = 0;
  }

  else
  {
    v18 = 0x4000000000000000;
  }

  v123 = v18 | mask;
  rule = self->_rule;
  if ([(FilterElementDefinition *)self isBottomValue])
  {
    v24 = 0;
  }

  else
  {
    v24 = 0x4000000000000000;
  }

  v124 = v24 | rule;
  v125 = vextq_s8(*&self->_subRule, *&self->_subRule, 8uLL);
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  _MDPlistContainerAddDataValue(into, &v116, 0x3CuLL, &v114, v20, v21, v22, v23);
  if ([(NSMutableDictionary *)self->_setOfMatches count])
  {
    _MDPlistContainerBeginDictionary(into, v25, v26, v27, v28, v29, v30, v31);
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    setOfMatches = self->_setOfMatches;
    v33 = [(NSMutableDictionary *)setOfMatches countByEnumeratingWithState:&v144 objects:v143 count:16];
    if (v33)
    {
      v40 = v33;
      v41 = *v145;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v145 != v41)
          {
            objc_enumerationMutation(setOfMatches);
          }

          v43 = *(*(&v144 + 1) + 8 * i);
          v44 = [(NSMutableDictionary *)self->_setOfMatches objectForKey:v43];
          _MDPlistContainerAddObject(into, v43, 0);
          [v44 encodeInto:into auxArray:arrayCopy namedRootMap:map];
        }

        v40 = [(NSMutableDictionary *)setOfMatches countByEnumeratingWithState:&v144 objects:v143 count:16];
      }

      while (v40);
    }

    _MDPlistContainerEndDictionary(into, &v112, v34, v35, v36, v37, v38, v39);
  }

  if ([(NSMutableDictionary *)self->_setOfPrefixedWildCards count])
  {
    v103 = arrayCopy;
    array = [MEMORY[0x1E695DF70] array];
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    setOfPrefixedWildCards = self->_setOfPrefixedWildCards;
    v53 = [(NSMutableDictionary *)setOfPrefixedWildCards countByEnumeratingWithState:&v139 objects:v138 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v140;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v140 != v55)
          {
            objc_enumerationMutation(setOfPrefixedWildCards);
          }

          v57 = [[MDElementAndFED alloc] initWithElement:*(*(&v139 + 1) + 8 * j) fed:[(NSMutableDictionary *)self->_setOfPrefixedWildCards objectForKeyedSubscript:*(*(&v139 + 1) + 8 * j)]];
          [array addObject:v57];
        }

        v54 = [(NSMutableDictionary *)setOfPrefixedWildCards countByEnumeratingWithState:&v139 objects:v138 count:16];
      }

      while (v54);
    }

    [array sortUsingComparator:&__block_literal_global_13];
    _MDPlistContainerBeginArray(into, v58, v59, v60, v61, v62, v63, v64);
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v65 = [array countByEnumeratingWithState:&v134 objects:v133 count:16];
    arrayCopy = v103;
    if (v65)
    {
      v72 = v65;
      v73 = *v135;
      do
      {
        for (k = 0; k != v72; ++k)
        {
          if (*v135 != v73)
          {
            objc_enumerationMutation(array);
          }

          _MDPlistContainerAddObject(into, *(*(*(&v134 + 1) + 8 * k) + 8), 0);
        }

        v72 = [array countByEnumeratingWithState:&v134 objects:v133 count:16];
      }

      while (v72);
    }

    _MDPlistContainerEndArray(into, &v110, v66, v67, v68, v69, v70, v71);
    _MDPlistContainerBeginArray(into, v75, v76, v77, v78, v79, v80, v81);
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v82 = [array countByEnumeratingWithState:&v129 objects:v128 count:16];
    if (v82)
    {
      v89 = v82;
      v90 = *v130;
      do
      {
        for (m = 0; m != v89; ++m)
        {
          if (*v130 != v90)
          {
            objc_enumerationMutation(array);
          }

          [*(*(*(&v129 + 1) + 8 * m) + 16) encodeInto:into auxArray:v103 namedRootMap:map];
        }

        v89 = [array countByEnumeratingWithState:&v129 objects:v128 count:16];
      }

      while (v89);
    }

    _MDPlistContainerEndArray(into, &v108, v83, v84, v85, v86, v87, v88);
  }

  wildCard = self->_wildCard;
  if (wildCard)
  {
    v93 = [(FilterElementDefinition *)wildCard encodeInto:into auxArray:arrayCopy namedRootMap:map];
  }

  else
  {
    v93 = 0;
  }

  superWildCard = self->_superWildCard;
  if (superWildCard)
  {
    v95 = [(FilterElementDefinition *)superWildCard encodeInto:into auxArray:arrayCopy namedRootMap:map];
  }

  else
  {
    v95 = 0;
  }

  v127 = 0;
  v126 = 0;
  _MDPlistContainerEndArray(into, &v126, v45, v46, v47, v48, v49, v50);
  v106 = 0uLL;
  v107 = 0;
  _MDPlistReferenceToPlistObject(into, v114 | (v115 << 32), &v106, v96, v97, v98, v99, v100);
  v104 = v106;
  v105 = v107;
  BytePtr = _MDPlistDataGetBytePtr(&v104, 0);
  *(BytePtr + 2) = v112;
  *(BytePtr + 6) = v110;
  *(BytePtr + 10) = v108;
  *(BytePtr + 14) = v93;
  *(BytePtr + 18) = v95;
  return (v126 | (v127 << 32));
}

uint64_t __60__FilterElementDefinition_encodeInto_auxArray_namedRootMap___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a2 + 8) length];
  v5 = [*(a3 + 8) length];
  if (v4 > v5)
  {
    return -1;
  }

  else
  {
    return v4 < v5;
  }
}

- (void)addRuleField:(int)field value:(int)value hasAuxValue:(BOOL)auxValue auxValue:(unint64_t)a6 inside:(BOOL)inside forPathComponents:(id)components permitLink:(BOOL)link componentIndex:(int)self0 parentElement:(id)self1 copyParentWildcardLink:(BOOL)self2
{
  insideCopy = inside;
  auxValueCopy = auxValue;
  v15 = *&value;
  v16 = *&field;
  v18 = [components count];
  if (v18 > index)
  {
    v19 = v18;
    v20 = [components objectAtIndex:index];
    v21 = v20;
    v36 = v20;
    if (!link)
    {
      goto LABEL_55;
    }

    if ([v20 hasPrefix:@"<"] && objc_msgSend(v36, "hasSuffix:", @">"))
    {
      v22 = v36;
      namedLink = self->_namedLink;
      if (namedLink && ![(NSString *)namedLink isEqualToString:v22]|| v19 - 1 != index || insideCopy)
      {
        CFLog();
        __break(1u);
      }

      if (v16 != 196607)
      {
        [FilterElementDefinition addRuleField:value:hasAuxValue:auxValue:inside:forPathComponents:permitLink:componentIndex:parentElement:copyParentWildcardLink:];
      }

      self->_namedLink = v22;

      return;
    }

    if ([v36 isEqualToString:@"*"])
    {
      wildCard = self->_wildCard;
      if (!wildCard)
      {
        wildCard = [[FilterElementDefinition alloc] initAsRoot:0];
        self->_wildCard = wildCard;
      }

      if (index && [objc_msgSend(components objectAtIndex:{index - 1), "isEqualToString:", @"**"}])
      {
        [FilterElementDefinition addRuleField:value:hasAuxValue:auxValue:inside:forPathComponents:permitLink:componentIndex:parentElement:copyParentWildcardLink:];
      }

      goto LABEL_42;
    }

    v30 = [v36 isEqualToString:@"**"];
    v21 = v36;
    if (v30)
    {
      wildCard = self->_superWildCard;
      if (!wildCard)
      {
        wildCard = [[FilterElementDefinition alloc] initAsRoot:0];
        self->_superWildCard = wildCard;
      }

      if (index && [objc_msgSend(components objectAtIndex:{index - 1), "isEqualToString:", @"**"}])
      {
        [FilterElementDefinition addRuleField:value:hasAuxValue:auxValue:inside:forPathComponents:permitLink:componentIndex:parentElement:copyParentWildcardLink:];
      }
    }

    else
    {
LABEL_55:
      if ([v21 hasSuffix:@"*"])
      {
        v31 = [v36 substringToIndex:{objc_msgSend(v36, "length") - 1}];
        p_setOfPrefixedWildCards = &self->_setOfPrefixedWildCards;
        setOfPrefixedWildCards = self->_setOfPrefixedWildCards;
        v36 = v31;
      }

      else
      {
        p_setOfPrefixedWildCards = &self->_setOfMatches;
        setOfPrefixedWildCards = self->_setOfMatches;
        v31 = v36;
      }

      v34 = [(NSMutableDictionary *)setOfPrefixedWildCards objectForKey:v31];
      if (!v34)
      {
        wildCard = [[FilterElementDefinition alloc] initAsRoot:0];
        [(NSMutableDictionary *)*p_setOfPrefixedWildCards setObject:wildCard forKey:v36];

        if (!auxValueCopy)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      wildCard = v34;
    }

LABEL_42:
    if (!auxValueCopy)
    {
LABEL_44:

      [FilterElementDefinition addRuleField:"addRuleField:value:hasAuxValue:auxValue:inside:forPathComponents:permitLink:componentIndex:parentElement:copyParentWildcardLink:" value:v16 hasAuxValue:v15 auxValue:auxValueCopy inside:a6 forPathComponents:insideCopy permitLink:components componentIndex:? parentElement:? copyParentWildcardLink:?];
      return;
    }

LABEL_43:
    ++self->_subAuxValueCount;
    goto LABEL_44;
  }

  if (v16 == 196607)
  {
    [FilterElementDefinition addRuleField:value:hasAuxValue:auxValue:inside:forPathComponents:permitLink:componentIndex:parentElement:copyParentWildcardLink:];
  }

  v24 = -1 << (v16 >> 6);
  v25 = ~v24 << v16;
  v26 = (v15 & ~v24) << v16;
  v27 = 16;
  if (insideCopy)
  {
    v27 = 32;
  }

  *(&self->super.isa + v27) = (v26 | *(&self->super.isa + v27) & ~v25 | 0x8000000000000000);
  if (insideCopy)
  {
    v28 = 40;
  }

  else
  {
    v28 = 24;
  }

  *(&self->super.isa + v28) = (*(&self->super.isa + v28) | v25);
  if (auxValueCopy)
  {
    self->_hasAuxValue = auxValueCopy;
    self->_auxValue = a6;
    if (element)
    {
      if (*(element + 11) && wildcardLink)
      {

        self->_namedLink = *(*(element + 11) + 80);
      }
    }
  }
}

- (void)dumpAttributesInto:(char *)into forLevel:(int)level
{
  rootName = self->_rootName;
  if (rootName)
  {
    uTF8String = [(NSString *)rootName UTF8String];
    rule = self->_rule;
    mask = self->_mask;
    [(FilterElementDefinition *)self isBottomValue];
    sprintf(into, "--| (name:%s rule:%llX %llX %s sub:%llX %llX bottom:%d auxValue:%lld count:%d %d)", uTF8String, rule, mask);
  }

  else
  {
    v10 = self->_rule;
    v11 = self->_mask;
    [(FilterElementDefinition *)self isBottomValue];
    sprintf(into, "  (rule:%llX %llX %s sub:%llX %llX bottom:%d auxValue:%lld count:%d %d)", v10, v11);
  }
}

@end