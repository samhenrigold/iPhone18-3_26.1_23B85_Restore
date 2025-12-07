@interface ATXPBSuggestionLayout
+ (uint64_t)oneByOneSuggestionsType;
- (BOOL)hasUuidOfHighestConfidenceSuggestion;
- (BOOL)hasUuidString;
- (BOOL)hasWidgetUniqueId;
- (BOOL)isEqual:(id)equal;
- (__CFString)layoutTypeAsString:(__CFString *)string;
- (double)layoutScore;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)fourByEightSuggestionsAtIndex:(void *)index;
- (id)fourByFourSuggestionsAtIndex:(void *)index;
- (id)oneByFourSuggestionsAtIndex:(void *)index;
- (id)oneByOneSuggestionsAtIndex:(void *)index;
- (id)oneByTwoSuggestionsAtIndex:(void *)index;
- (id)twoByFourSuggestionsAtIndex:(void *)index;
- (id)twoByTwoSuggestionsAtIndex:(void *)index;
- (uint64_t)StringAsLayoutType:(uint64_t)type;
- (uint64_t)addFourByEightSuggestions:(uint64_t)suggestions;
- (uint64_t)addFourByFourSuggestions:(uint64_t)suggestions;
- (uint64_t)addOneByFourSuggestions:(uint64_t)suggestions;
- (uint64_t)addOneByOneSuggestions:(uint64_t)suggestions;
- (uint64_t)addOneByTwoSuggestions:(uint64_t)suggestions;
- (uint64_t)addTwoByFourSuggestions:(uint64_t)suggestions;
- (uint64_t)addTwoByTwoSuggestions:(uint64_t)suggestions;
- (uint64_t)confidenceWarrantsSnappingOrNPlusOne;
- (uint64_t)fourByEightSuggestions;
- (uint64_t)fourByFourSuggestions;
- (uint64_t)hasConfidenceWarrantsSnappingOrNPlusOne;
- (uint64_t)hasIsLowConfidenceStackRotationForStaleStack;
- (uint64_t)hasIsNPlusOne;
- (uint64_t)hasIsValidForSuggestionsWidget;
- (uint64_t)hasLayoutScore;
- (uint64_t)hasLayoutType;
- (uint64_t)hasNumWidgetsInStack;
- (uint64_t)isLowConfidenceStackRotationForStaleStack;
- (uint64_t)isNPlusOne;
- (uint64_t)isValidForSuggestionsWidget;
- (uint64_t)layoutType;
- (uint64_t)numWidgetsInStack;
- (uint64_t)oneByFourSuggestions;
- (uint64_t)oneByOneSuggestions;
- (uint64_t)oneByTwoSuggestions;
- (uint64_t)setConfidenceWarrantsSnappingOrNPlusOne:(uint64_t)result;
- (uint64_t)setHasConfidenceWarrantsSnappingOrNPlusOne:(uint64_t)result;
- (uint64_t)setHasIsLowConfidenceStackRotationForStaleStack:(uint64_t)result;
- (uint64_t)setHasIsNPlusOne:(uint64_t)result;
- (uint64_t)setHasIsValidForSuggestionsWidget:(uint64_t)result;
- (uint64_t)setHasLayoutScore:(uint64_t)result;
- (uint64_t)setHasLayoutType:(uint64_t)result;
- (uint64_t)setHasNumWidgetsInStack:(uint64_t)result;
- (uint64_t)setIsLowConfidenceStackRotationForStaleStack:(uint64_t)result;
- (uint64_t)setIsNPlusOne:(uint64_t)result;
- (uint64_t)setIsValidForSuggestionsWidget:(uint64_t)result;
- (uint64_t)setLayoutScore:(uint64_t)result;
- (uint64_t)setLayoutType:(uint64_t)result;
- (uint64_t)setNumWidgetsInStack:(uint64_t)result;
- (uint64_t)twoByFourSuggestions;
- (uint64_t)twoByTwoSuggestions;
- (uint64_t)uuidOfHighestConfidenceSuggestion;
- (uint64_t)uuidString;
- (uint64_t)widgetUniqueId;
- (unint64_t)hash;
- (void)clearFourByEightSuggestions;
- (void)clearFourByFourSuggestions;
- (void)clearOneByFourSuggestions;
- (void)clearOneByOneSuggestions;
- (void)clearOneByTwoSuggestions;
- (void)clearTwoByFourSuggestions;
- (void)clearTwoByTwoSuggestions;
- (void)copyTo:(uint64_t)to;
- (void)fourByEightSuggestionsCount;
- (void)fourByFourSuggestionsCount;
- (void)mergeFrom:(uint64_t)from;
- (void)oneByFourSuggestionsCount;
- (void)oneByOneSuggestionsCount;
- (void)oneByTwoSuggestionsCount;
- (void)setFourByEightSuggestions:(uint64_t)suggestions;
- (void)setFourByFourSuggestions:(uint64_t)suggestions;
- (void)setOneByFourSuggestions:(uint64_t)suggestions;
- (void)setOneByOneSuggestions:(uint64_t)suggestions;
- (void)setOneByTwoSuggestions:(uint64_t)suggestions;
- (void)setTwoByFourSuggestions:(uint64_t)suggestions;
- (void)setTwoByTwoSuggestions:(uint64_t)suggestions;
- (void)setUuidOfHighestConfidenceSuggestion:(uint64_t)suggestion;
- (void)setUuidString:(uint64_t)string;
- (void)setWidgetUniqueId:(uint64_t)id;
- (void)twoByFourSuggestionsCount;
- (void)twoByTwoSuggestionsCount;
- (void)writeTo:(id)to;
@end

@implementation ATXPBSuggestionLayout

- (uint64_t)layoutType
{
  if (result)
  {
    if ((*(result + 116) & 4) != 0)
    {
      return *(result + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)hasUuidOfHighestConfidenceSuggestion
{
  if (result)
  {
    return *(result + 88) != 0;
  }

  return result;
}

- (uint64_t)oneByOneSuggestions
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)uuidOfHighestConfidenceSuggestion
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)oneByTwoSuggestions
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)twoByTwoSuggestions
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)oneByFourSuggestions
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)twoByFourSuggestions
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)fourByFourSuggestions
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)fourByEightSuggestions
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)uuidString
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)isValidForSuggestionsWidget
{
  if (self)
  {
    return OUTLINED_FUNCTION_5(*(self + 115));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (uint64_t)isLowConfidenceStackRotationForStaleStack
{
  if (self)
  {
    return OUTLINED_FUNCTION_5(*(self + 113));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (uint64_t)isNPlusOne
{
  if (self)
  {
    return OUTLINED_FUNCTION_5(*(self + 114));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (uint64_t)confidenceWarrantsSnappingOrNPlusOne
{
  if (self)
  {
    return OUTLINED_FUNCTION_5(*(self + 112));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (double)layoutScore
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)widgetUniqueId
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (uint64_t)numWidgetsInStack
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

+ (uint64_t)oneByOneSuggestionsType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBSuggestionLayout;
  v4 = [(ATXPBSuggestionLayout *)&v8 description];
  dictionaryRepresentation = [(ATXPBSuggestionLayout *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v102 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    layoutType = self->_layoutType;
    if (layoutType >= 0x12)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_layoutType];
    }

    else
    {
      v6 = off_1E86A43D0[layoutType];
    }

    [dictionary setObject:v6 forKey:@"layoutType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_layoutScore];
    [dictionary setObject:v7 forKey:@"layoutScore"];
  }

  uuidString = self->_uuidString;
  if (uuidString)
  {
    [dictionary setObject:uuidString forKey:@"uuidString"];
  }

  if ([(NSMutableArray *)self->_oneByOneSuggestions count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_oneByOneSuggestions, "count")}];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v10 = self->_oneByOneSuggestions;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v91 objects:v101 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v92;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v92 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v91 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v91 objects:v101 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"oneByOneSuggestions"];
  }

  if ([(NSMutableArray *)self->_oneByTwoSuggestions count])
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_oneByTwoSuggestions, "count")}];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v17 = self->_oneByTwoSuggestions;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v87 objects:v100 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v88;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v88 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation2 = [*(*(&v87 + 1) + 8 * j) dictionaryRepresentation];
          [v16 addObject:dictionaryRepresentation2];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v87 objects:v100 count:16];
      }

      while (v19);
    }

    [dictionary setObject:v16 forKey:@"oneByTwoSuggestions"];
  }

  if ([(NSMutableArray *)self->_twoByTwoSuggestions count])
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_twoByTwoSuggestions, "count")}];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v24 = self->_twoByTwoSuggestions;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v83 objects:v99 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v84;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v84 != v27)
          {
            objc_enumerationMutation(v24);
          }

          dictionaryRepresentation3 = [*(*(&v83 + 1) + 8 * k) dictionaryRepresentation];
          [v23 addObject:dictionaryRepresentation3];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v83 objects:v99 count:16];
      }

      while (v26);
    }

    [dictionary setObject:v23 forKey:@"twoByTwoSuggestions"];
  }

  if ([(NSMutableArray *)self->_oneByFourSuggestions count])
  {
    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_oneByFourSuggestions, "count")}];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v31 = self->_oneByFourSuggestions;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v79 objects:v98 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v80;
      do
      {
        for (m = 0; m != v33; ++m)
        {
          if (*v80 != v34)
          {
            objc_enumerationMutation(v31);
          }

          dictionaryRepresentation4 = [*(*(&v79 + 1) + 8 * m) dictionaryRepresentation];
          [v30 addObject:dictionaryRepresentation4];
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v79 objects:v98 count:16];
      }

      while (v33);
    }

    [dictionary setObject:v30 forKey:@"oneByFourSuggestions"];
  }

  if ([(NSMutableArray *)self->_twoByFourSuggestions count])
  {
    v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_twoByFourSuggestions, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v38 = self->_twoByFourSuggestions;
    v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v75 objects:v97 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v76;
      do
      {
        for (n = 0; n != v40; ++n)
        {
          if (*v76 != v41)
          {
            objc_enumerationMutation(v38);
          }

          dictionaryRepresentation5 = [*(*(&v75 + 1) + 8 * n) dictionaryRepresentation];
          [v37 addObject:dictionaryRepresentation5];
        }

        v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v75 objects:v97 count:16];
      }

      while (v40);
    }

    [dictionary setObject:v37 forKey:@"twoByFourSuggestions"];
  }

  v44 = self->_has;
  if ((v44 & 0x40) != 0)
  {
    v65 = [MEMORY[0x1E696AD98] numberWithBool:self->_isValidForSuggestionsWidget];
    [dictionary setObject:v65 forKey:@"isValidForSuggestionsWidget"];

    v44 = self->_has;
    if ((v44 & 8) == 0)
    {
LABEL_57:
      if ((v44 & 0x20) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_57;
  }

  v66 = [MEMORY[0x1E696AD98] numberWithBool:self->_confidenceWarrantsSnappingOrNPlusOne];
  [dictionary setObject:v66 forKey:@"confidenceWarrantsSnappingOrNPlusOne"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_58:
    v45 = [MEMORY[0x1E696AD98] numberWithBool:self->_isNPlusOne];
    [dictionary setObject:v45 forKey:@"isNPlusOne"];
  }

LABEL_59:
  widgetUniqueId = self->_widgetUniqueId;
  if (widgetUniqueId)
  {
    [dictionary setObject:widgetUniqueId forKey:@"widgetUniqueId"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLowConfidenceStackRotationForStaleStack];
    [dictionary setObject:v47 forKey:@"isLowConfidenceStackRotationForStaleStack"];
  }

  uuidOfHighestConfidenceSuggestion = self->_uuidOfHighestConfidenceSuggestion;
  if (uuidOfHighestConfidenceSuggestion)
  {
    [dictionary setObject:uuidOfHighestConfidenceSuggestion forKey:@"uuidOfHighestConfidenceSuggestion"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numWidgetsInStack];
    [dictionary setObject:v49 forKey:@"numWidgetsInStack"];
  }

  if ([(NSMutableArray *)self->_fourByFourSuggestions count])
  {
    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_fourByFourSuggestions, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v51 = self->_fourByFourSuggestions;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v71 objects:v96 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v72;
      do
      {
        for (ii = 0; ii != v53; ++ii)
        {
          if (*v72 != v54)
          {
            objc_enumerationMutation(v51);
          }

          dictionaryRepresentation6 = [*(*(&v71 + 1) + 8 * ii) dictionaryRepresentation];
          [v50 addObject:dictionaryRepresentation6];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v71 objects:v96 count:16];
      }

      while (v53);
    }

    [dictionary setObject:v50 forKey:@"fourByFourSuggestions"];
  }

  if ([(NSMutableArray *)self->_fourByEightSuggestions count])
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_fourByEightSuggestions, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v58 = self->_fourByEightSuggestions;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v67 objects:v95 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v68;
      do
      {
        for (jj = 0; jj != v60; ++jj)
        {
          if (*v68 != v61)
          {
            objc_enumerationMutation(v58);
          }

          dictionaryRepresentation7 = [*(*(&v67 + 1) + 8 * jj) dictionaryRepresentation];
          [v57 addObject:dictionaryRepresentation7];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v67 objects:v95 count:16];
      }

      while (v60);
    }

    [dictionary setObject:v57 forKey:@"fourByEightSuggestions"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v77 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v6 = self->_oneByOneSuggestions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v67;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v67 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v8);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v11 = self->_oneByTwoSuggestions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v63;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v13);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v16 = self->_twoByTwoSuggestions;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v58 objects:v74 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v59;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v59 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v58 objects:v74 count:16];
    }

    while (v18);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v21 = self->_oneByFourSuggestions;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v54 objects:v73 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v55;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v55 != v24)
        {
          objc_enumerationMutation(v21);
        }

        PBDataWriterWriteSubmessage();
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v54 objects:v73 count:16];
    }

    while (v23);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v26 = self->_twoByFourSuggestions;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v50 objects:v72 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v51;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v26);
        }

        PBDataWriterWriteSubmessage();
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v50 objects:v72 count:16];
    }

    while (v28);
  }

  v31 = self->_has;
  if ((v31 & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
    v31 = self->_has;
    if ((v31 & 8) == 0)
    {
LABEL_44:
      if ((v31 & 0x20) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_44;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_45:
    PBDataWriterWriteBOOLField();
  }

LABEL_46:
  if (self->_widgetUniqueId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_uuidOfHighestConfidenceSuggestion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v32 = self->_fourByFourSuggestions;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v46 objects:v71 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v47;
    do
    {
      for (ii = 0; ii != v34; ++ii)
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(v32);
        }

        PBDataWriterWriteSubmessage();
      }

      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v46 objects:v71 count:16];
    }

    while (v34);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v37 = self->_fourByEightSuggestions;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v42 objects:v70 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v43;
    do
    {
      for (jj = 0; jj != v39; ++jj)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(v37);
        }

        PBDataWriterWriteSubmessage();
      }

      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v42 objects:v70 count:16];
    }

    while (v39);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 40) = self->_layoutType;
    *(v5 + 116) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_layoutScore;
    *(v5 + 116) |= 1u;
  }

  v8 = [(NSString *)self->_uuidString copyWithZone:zone];
  v9 = *(v6 + 96);
  *(v6 + 96) = v8;

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v10 = self->_oneByOneSuggestions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v82 objects:v92 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v83;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v83 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v82 + 1) + 8 * i) copyWithZone:zone];
        [(ATXPBSuggestionLayout *)v6 addOneByOneSuggestions:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v82 objects:v92 count:16];
    }

    while (v12);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v16 = self->_oneByTwoSuggestions;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v79;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v79 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v78 + 1) + 8 * j) copyWithZone:zone];
        [(ATXPBSuggestionLayout *)v6 addOneByTwoSuggestions:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v78 objects:v91 count:16];
    }

    while (v18);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v22 = self->_twoByTwoSuggestions;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v74 objects:v90 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v75;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v75 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v74 + 1) + 8 * k) copyWithZone:zone];
        [(ATXPBSuggestionLayout *)v6 addTwoByTwoSuggestions:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v74 objects:v90 count:16];
    }

    while (v24);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v28 = self->_oneByFourSuggestions;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v70 objects:v89 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v71;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v71 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v70 + 1) + 8 * m) copyWithZone:zone];
        [(ATXPBSuggestionLayout *)v6 addOneByFourSuggestions:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v70 objects:v89 count:16];
    }

    while (v30);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v34 = self->_twoByFourSuggestions;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v66 objects:v88 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v67;
    do
    {
      for (n = 0; n != v36; ++n)
      {
        if (*v67 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v66 + 1) + 8 * n) copyWithZone:zone];
        [(ATXPBSuggestionLayout *)v6 addTwoByFourSuggestions:v39];
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v66 objects:v88 count:16];
    }

    while (v36);
  }

  v40 = self->_has;
  if ((v40 & 0x40) != 0)
  {
    *(v6 + 115) = self->_isValidForSuggestionsWidget;
    *(v6 + 116) |= 0x40u;
    v40 = self->_has;
    if ((v40 & 8) == 0)
    {
LABEL_42:
      if ((v40 & 0x20) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_42;
  }

  *(v6 + 112) = self->_confidenceWarrantsSnappingOrNPlusOne;
  *(v6 + 116) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_43:
    *(v6 + 114) = self->_isNPlusOne;
    *(v6 + 116) |= 0x20u;
  }

LABEL_44:
  v41 = [(NSString *)self->_widgetUniqueId copyWithZone:zone];
  v42 = *(v6 + 104);
  *(v6 + 104) = v41;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 113) = self->_isLowConfidenceStackRotationForStaleStack;
    *(v6 + 116) |= 0x10u;
  }

  v43 = [(NSString *)self->_uuidOfHighestConfidenceSuggestion copyWithZone:zone];
  v44 = *(v6 + 88);
  *(v6 + 88) = v43;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_numWidgetsInStack;
    *(v6 + 116) |= 2u;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v45 = self->_fourByFourSuggestions;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v62 objects:v87 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v63;
    do
    {
      for (ii = 0; ii != v47; ++ii)
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v62 + 1) + 8 * ii) copyWithZone:zone];
        [(ATXPBSuggestionLayout *)v6 addFourByFourSuggestions:v50];
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v62 objects:v87 count:16];
    }

    while (v47);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v51 = self->_fourByEightSuggestions;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v58 objects:v86 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v59;
    do
    {
      for (jj = 0; jj != v53; ++jj)
      {
        if (*v59 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v58 + 1) + 8 * jj) copyWithZone:{zone, v58}];
        [(ATXPBSuggestionLayout *)v6 addFourByEightSuggestions:v56];
      }

      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v58 objects:v86 count:16];
    }

    while (v53);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_70;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 116) & 4) == 0 || self->_layoutType != *(equalCopy + 10))
    {
      goto LABEL_70;
    }
  }

  else if ((*(equalCopy + 116) & 4) != 0)
  {
    goto LABEL_70;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 116) & 1) == 0 || self->_layoutScore != *(equalCopy + 1))
    {
      goto LABEL_70;
    }
  }

  else if (*(equalCopy + 116))
  {
    goto LABEL_70;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(equalCopy + 12) && ![(NSString *)uuidString isEqual:?])
  {
    goto LABEL_70;
  }

  oneByOneSuggestions = self->_oneByOneSuggestions;
  if (oneByOneSuggestions | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)oneByOneSuggestions isEqual:?])
    {
      goto LABEL_70;
    }
  }

  oneByTwoSuggestions = self->_oneByTwoSuggestions;
  if (oneByTwoSuggestions | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)oneByTwoSuggestions isEqual:?])
    {
      goto LABEL_70;
    }
  }

  twoByTwoSuggestions = self->_twoByTwoSuggestions;
  if (twoByTwoSuggestions | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)twoByTwoSuggestions isEqual:?])
    {
      goto LABEL_70;
    }
  }

  oneByFourSuggestions = self->_oneByFourSuggestions;
  if (oneByFourSuggestions | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)oneByFourSuggestions isEqual:?])
    {
      goto LABEL_70;
    }
  }

  twoByFourSuggestions = self->_twoByFourSuggestions;
  if (twoByFourSuggestions | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)twoByFourSuggestions isEqual:?])
    {
      goto LABEL_70;
    }
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    if ((*(equalCopy + 116) & 0x40) == 0)
    {
      goto LABEL_70;
    }

    if (self->_isValidForSuggestionsWidget)
    {
      if ((*(equalCopy + 115) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (*(equalCopy + 115))
    {
      goto LABEL_70;
    }
  }

  else if ((*(equalCopy + 116) & 0x40) != 0)
  {
    goto LABEL_70;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 116) & 8) == 0)
    {
      goto LABEL_70;
    }

    if (self->_confidenceWarrantsSnappingOrNPlusOne)
    {
      if ((*(equalCopy + 112) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (*(equalCopy + 112))
    {
      goto LABEL_70;
    }
  }

  else if ((*(equalCopy + 116) & 8) != 0)
  {
    goto LABEL_70;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 116) & 0x20) == 0)
    {
      goto LABEL_70;
    }

    if (self->_isNPlusOne)
    {
      if ((*(equalCopy + 114) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (*(equalCopy + 114))
    {
      goto LABEL_70;
    }
  }

  else if ((*(equalCopy + 116) & 0x20) != 0)
  {
    goto LABEL_70;
  }

  widgetUniqueId = self->_widgetUniqueId;
  if (widgetUniqueId | *(equalCopy + 13))
  {
    if (![(NSString *)widgetUniqueId isEqual:?])
    {
      goto LABEL_70;
    }

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 116) & 0x10) == 0)
    {
      goto LABEL_70;
    }

    if (self->_isLowConfidenceStackRotationForStaleStack)
    {
      if ((*(equalCopy + 113) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (*(equalCopy + 113))
    {
      goto LABEL_70;
    }
  }

  else if ((*(equalCopy + 116) & 0x10) != 0)
  {
    goto LABEL_70;
  }

  uuidOfHighestConfidenceSuggestion = self->_uuidOfHighestConfidenceSuggestion;
  if (!(uuidOfHighestConfidenceSuggestion | *(equalCopy + 11)))
  {
    goto LABEL_38;
  }

  if (![(NSString *)uuidOfHighestConfidenceSuggestion isEqual:?])
  {
LABEL_70:
    v16 = 0;
    goto LABEL_71;
  }

  has = self->_has;
LABEL_38:
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 116) & 2) == 0 || self->_numWidgetsInStack != *(equalCopy + 2))
    {
      goto LABEL_70;
    }
  }

  else if ((*(equalCopy + 116) & 2) != 0)
  {
    goto LABEL_70;
  }

  fourByFourSuggestions = self->_fourByFourSuggestions;
  if (fourByFourSuggestions | *(equalCopy + 4) && ![(NSMutableArray *)fourByFourSuggestions isEqual:?])
  {
    goto LABEL_70;
  }

  fourByEightSuggestions = self->_fourByEightSuggestions;
  if (fourByEightSuggestions | *(equalCopy + 3))
  {
    v16 = [(NSMutableArray *)fourByEightSuggestions isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_71:

  return v16;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v26 = 2654435761 * self->_layoutType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v26 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  layoutScore = self->_layoutScore;
  if (layoutScore < 0.0)
  {
    layoutScore = -layoutScore;
  }

  *v2.i64 = floor(layoutScore + 0.5);
  v6 = (layoutScore - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_9:
  v25 = v8;
  v24 = [(NSString *)self->_uuidString hash];
  v23 = [(NSMutableArray *)self->_oneByOneSuggestions hash];
  v22 = [(NSMutableArray *)self->_oneByTwoSuggestions hash];
  v21 = [(NSMutableArray *)self->_twoByTwoSuggestions hash];
  v9 = [(NSMutableArray *)self->_oneByFourSuggestions hash];
  v10 = [(NSMutableArray *)self->_twoByFourSuggestions hash];
  if ((*&self->_has & 0x40) == 0)
  {
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v11 = 2654435761 * self->_isValidForSuggestionsWidget;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = 2654435761 * self->_confidenceWarrantsSnappingOrNPlusOne;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_isNPlusOne;
    goto LABEL_16;
  }

LABEL_15:
  v13 = 0;
LABEL_16:
  v14 = [(NSString *)self->_widgetUniqueId hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v15 = 2654435761 * self->_isLowConfidenceStackRotationForStaleStack;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NSString *)self->_uuidOfHighestConfidenceSuggestion hash];
  if ((*&self->_has & 2) != 0)
  {
    v17 = 2654435761u * self->_numWidgetsInStack;
  }

  else
  {
    v17 = 0;
  }

  v18 = v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  v19 = v17 ^ [(NSMutableArray *)self->_fourByFourSuggestions hash];
  return v18 ^ v19 ^ [(NSMutableArray *)self->_fourByEightSuggestions hash];
}

- (uint64_t)setLayoutType:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 4u;
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setHasLayoutType:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasLayoutType
{
  if (result)
  {
    return (*(result + 116) >> 2) & 1;
  }

  return result;
}

- (__CFString)layoutTypeAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 0x12)
  {
    string = off_1E86A43D0[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsLayoutType:(uint64_t)type
{
  v3 = a2;
  v4 = v3;
  if (type)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Eight1x1"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Two1x2AndFour1x1"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"One2x2AndFour1x1"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"One2x4"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"Two1x2"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"One2x2"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"Two2x2"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"Four1x2"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"N1x4"])
    {
      v6 = 8;
    }

    else if ([v5 isEqualToString:@"Two1x4"])
    {
      v6 = 9;
    }

    else if ([v5 isEqualToString:@"One4x4"])
    {
      v6 = 10;
    }

    else if ([v5 isEqualToString:@"Four1x4"])
    {
      v6 = 11;
    }

    else if ([v5 isEqualToString:@"N2x2AndN1x1"])
    {
      v6 = 12;
    }

    else if ([v5 isEqualToString:@"N2x4AndN1x1"])
    {
      v6 = 13;
    }

    else if ([v5 isEqualToString:@"N2x4AndN2x2AndN1x1"])
    {
      v6 = 14;
    }

    else if ([v5 isEqualToString:@"N1x1"])
    {
      v6 = 15;
    }

    else if ([v5 isEqualToString:@"One4x8"])
    {
      v6 = 16;
    }

    else if ([v5 isEqualToString:@"SuggestionList"])
    {
      v6 = 17;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)setLayoutScore:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasLayoutScore:(uint64_t)result
{
  if (result)
  {
    *(result + 116) = *(result + 116) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasLayoutScore
{
  if (result)
  {
    return *(result + 116) & 1;
  }

  return result;
}

- (BOOL)hasUuidString
{
  if (result)
  {
    return *(result + 96) != 0;
  }

  return result;
}

- (void)clearOneByOneSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 56);
  }

  return result;
}

- (uint64_t)addOneByOneSuggestions:(uint64_t)suggestions
{
  v3 = a2;
  v4 = v3;
  if (suggestions)
  {
    v5 = OUTLINED_FUNCTION_13(56);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 56);
      v5 = *(suggestions + 56);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)oneByOneSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 56);
  }

  return result;
}

- (id)oneByOneSuggestionsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 56)];
    v1 = vars8;
  }

  return index;
}

- (void)clearOneByTwoSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 64);
  }

  return result;
}

- (uint64_t)addOneByTwoSuggestions:(uint64_t)suggestions
{
  v3 = a2;
  v4 = v3;
  if (suggestions)
  {
    v5 = OUTLINED_FUNCTION_13(64);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 64);
      v5 = *(suggestions + 64);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)oneByTwoSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 64);
  }

  return result;
}

- (id)oneByTwoSuggestionsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 64)];
    v1 = vars8;
  }

  return index;
}

- (void)clearTwoByTwoSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 80);
  }

  return result;
}

- (uint64_t)addTwoByTwoSuggestions:(uint64_t)suggestions
{
  v3 = a2;
  v4 = v3;
  if (suggestions)
  {
    v5 = OUTLINED_FUNCTION_13(80);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 80);
      v5 = *(suggestions + 80);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)twoByTwoSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 80);
  }

  return result;
}

- (id)twoByTwoSuggestionsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 80)];
    v1 = vars8;
  }

  return index;
}

- (void)clearOneByFourSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 48);
  }

  return result;
}

- (uint64_t)addOneByFourSuggestions:(uint64_t)suggestions
{
  v3 = a2;
  v4 = v3;
  if (suggestions)
  {
    v5 = OUTLINED_FUNCTION_13(48);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 48);
      v5 = *(suggestions + 48);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)oneByFourSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 48);
  }

  return result;
}

- (id)oneByFourSuggestionsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 48)];
    v1 = vars8;
  }

  return index;
}

- (void)clearTwoByFourSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 72);
  }

  return result;
}

- (uint64_t)addTwoByFourSuggestions:(uint64_t)suggestions
{
  v3 = a2;
  v4 = v3;
  if (suggestions)
  {
    v5 = OUTLINED_FUNCTION_13(72);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 72);
      v5 = *(suggestions + 72);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)twoByFourSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 72);
  }

  return result;
}

- (id)twoByFourSuggestionsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 72)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)setIsValidForSuggestionsWidget:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 0x40u;
    *(result + 115) = a2;
  }

  return result;
}

- (uint64_t)setHasIsValidForSuggestionsWidget:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 64;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xBF | v2;
  }

  return result;
}

- (uint64_t)hasIsValidForSuggestionsWidget
{
  if (result)
  {
    return (*(result + 116) >> 6) & 1;
  }

  return result;
}

- (uint64_t)setConfidenceWarrantsSnappingOrNPlusOne:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 8u;
    *(result + 112) = a2;
  }

  return result;
}

- (uint64_t)setHasConfidenceWarrantsSnappingOrNPlusOne:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 8;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasConfidenceWarrantsSnappingOrNPlusOne
{
  if (result)
  {
    return (*(result + 116) >> 3) & 1;
  }

  return result;
}

- (uint64_t)setIsNPlusOne:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 0x20u;
    *(result + 114) = a2;
  }

  return result;
}

- (uint64_t)setHasIsNPlusOne:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 32;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xDF | v2;
  }

  return result;
}

- (uint64_t)hasIsNPlusOne
{
  if (result)
  {
    return (*(result + 116) >> 5) & 1;
  }

  return result;
}

- (BOOL)hasWidgetUniqueId
{
  if (result)
  {
    return *(result + 104) != 0;
  }

  return result;
}

- (uint64_t)setIsLowConfidenceStackRotationForStaleStack:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 0x10u;
    *(result + 113) = a2;
  }

  return result;
}

- (uint64_t)setHasIsLowConfidenceStackRotationForStaleStack:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 16;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xEF | v2;
  }

  return result;
}

- (uint64_t)hasIsLowConfidenceStackRotationForStaleStack
{
  if (result)
  {
    return (*(result + 116) >> 4) & 1;
  }

  return result;
}

- (uint64_t)setNumWidgetsInStack:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setHasNumWidgetsInStack:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasNumWidgetsInStack
{
  if (result)
  {
    return (*(result + 116) >> 1) & 1;
  }

  return result;
}

- (void)clearFourByFourSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 32);
  }

  return result;
}

- (uint64_t)addFourByFourSuggestions:(uint64_t)suggestions
{
  v3 = a2;
  v4 = v3;
  if (suggestions)
  {
    v5 = OUTLINED_FUNCTION_13(32);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 32);
      v5 = *(suggestions + 32);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)fourByFourSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 32);
  }

  return result;
}

- (id)fourByFourSuggestionsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 32)];
    v1 = vars8;
  }

  return index;
}

- (void)clearFourByEightSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 24);
  }

  return result;
}

- (uint64_t)addFourByEightSuggestions:(uint64_t)suggestions
{
  v3 = a2;
  v4 = v3;
  if (suggestions)
  {
    v5 = OUTLINED_FUNCTION_13(24);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 24);
      v5 = *(suggestions + 24);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)fourByEightSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 24);
  }

  return result;
}

- (id)fourByEightSuggestionsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 24)];
    v1 = vars8;
  }

  return index;
}

- (void)copyTo:(uint64_t)to
{
  v110 = a2;
  if (!to)
  {
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_16();
  if ((v5 & 4) != 0)
  {
    *(v110 + 10) = *(to + 40);
    *(v110 + 116) |= 4u;
    OUTLINED_FUNCTION_16();
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = v110;
  if (v5)
  {
LABEL_6:
    v6[1] = *(to + 8);
    *(v6 + v4) |= 1u;
  }

LABEL_7:
  v8 = *(to + 96);
  if (v8)
  {
    [(ATXPBSuggestionLayout *)v110 setUuidString:v8];
  }

  if ([*(to + 56) count])
  {
    if (v110)
    {
      [*(v110 + 7) removeAllObjects];
    }

    if ([*(to + 56) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v9 = OUTLINED_FUNCTION_11();
        v10 = [ATXPBSuggestionLayout oneByOneSuggestionsAtIndex:v9];
        v18 = OUTLINED_FUNCTION_4(v10, v11, v12, v13, v14, v15, v16, v17, v109, v110);
        [(ATXPBSuggestionLayout *)v18 addOneByOneSuggestions:v19];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  if ([*(to + 64) count])
  {
    if (v110)
    {
      [*(v110 + 8) removeAllObjects];
    }

    if ([*(to + 64) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v21 = OUTLINED_FUNCTION_11();
        v22 = [ATXPBSuggestionLayout oneByTwoSuggestionsAtIndex:v21];
        v30 = OUTLINED_FUNCTION_4(v22, v23, v24, v25, v26, v27, v28, v29, v109, v110);
        [(ATXPBSuggestionLayout *)v30 addOneByTwoSuggestions:v31];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  if ([*(to + 80) count])
  {
    if (v110)
    {
      [*(v110 + 10) removeAllObjects];
    }

    if ([*(to + 80) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v32 = OUTLINED_FUNCTION_11();
        v33 = [ATXPBSuggestionLayout twoByTwoSuggestionsAtIndex:v32];
        v41 = OUTLINED_FUNCTION_4(v33, v34, v35, v36, v37, v38, v39, v40, v109, v110);
        [(ATXPBSuggestionLayout *)v41 addTwoByTwoSuggestions:v42];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  if ([*(to + 48) count])
  {
    if (v110)
    {
      [*(v110 + 6) removeAllObjects];
    }

    if ([*(to + 48) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v43 = OUTLINED_FUNCTION_11();
        v44 = [ATXPBSuggestionLayout oneByFourSuggestionsAtIndex:v43];
        v52 = OUTLINED_FUNCTION_4(v44, v45, v46, v47, v48, v49, v50, v51, v109, v110);
        [(ATXPBSuggestionLayout *)v52 addOneByFourSuggestions:v53];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  if ([*(to + 72) count])
  {
    if (v110)
    {
      [*(v110 + 9) removeAllObjects];
    }

    if ([*(to + 72) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v54 = OUTLINED_FUNCTION_11();
        v55 = [ATXPBSuggestionLayout twoByFourSuggestionsAtIndex:v54];
        v63 = OUTLINED_FUNCTION_4(v55, v56, v57, v58, v59, v60, v61, v62, v109, v110);
        [(ATXPBSuggestionLayout *)v63 addTwoByFourSuggestions:v64];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  OUTLINED_FUNCTION_9();
  v66 = v110;
  if ((v65 & 0x40) == 0)
  {
    if ((v65 & 8) == 0)
    {
      goto LABEL_46;
    }

LABEL_74:
    v105 = OUTLINED_FUNCTION_6_0(v66, 112);
    *(v105 + v107) = v106 | 8;
    OUTLINED_FUNCTION_9();
    if ((v108 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v102 = OUTLINED_FUNCTION_6_0(v110, 115);
  *(v102 + v104) = v103 | 0x40;
  OUTLINED_FUNCTION_9();
  if ((v65 & 8) != 0)
  {
    goto LABEL_74;
  }

LABEL_46:
  if ((v65 & 0x20) != 0)
  {
LABEL_47:
    v67 = OUTLINED_FUNCTION_6_0(v66, 114);
    *(v67 + v69) = v68 | 0x20;
  }

LABEL_48:
  v70 = *(to + 104);
  if (v70)
  {
    [(ATXPBSuggestionLayout *)v110 setWidgetUniqueId:v70];
  }

  OUTLINED_FUNCTION_9();
  if ((v72 & 0x10) != 0)
  {
    v73 = OUTLINED_FUNCTION_6_0(v71, 113);
    *(v73 + v75) = v74 | 0x10;
  }

  v76 = *(to + 88);
  if (v76)
  {
    [(ATXPBSuggestionLayout *)v110 setUuidOfHighestConfidenceSuggestion:v76];
  }

  OUTLINED_FUNCTION_16();
  if ((v79 & 2) != 0)
  {
    *(v77 + 16) = *(to + 16);
    *(v77 + v78) |= 2u;
  }

  if ([*(to + 32) count])
  {
    if (v110)
    {
      [*(v110 + 4) removeAllObjects];
    }

    if ([*(to + 32) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v80 = OUTLINED_FUNCTION_11();
        v81 = [ATXPBSuggestionLayout fourByFourSuggestionsAtIndex:v80];
        v89 = OUTLINED_FUNCTION_4(v81, v82, v83, v84, v85, v86, v87, v88, v109, v110);
        [(ATXPBSuggestionLayout *)v89 addFourByFourSuggestions:v90];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  if ([*(to + 24) count])
  {
    if (v110)
    {
      [*(v110 + 3) removeAllObjects];
    }

    if ([*(to + 24) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v91 = OUTLINED_FUNCTION_11();
        v92 = [ATXPBSuggestionLayout fourByEightSuggestionsAtIndex:v91];
        v100 = OUTLINED_FUNCTION_4(v92, v93, v94, v95, v96, v97, v98, v99, v109, v110);
        [(ATXPBSuggestionLayout *)v100 addFourByEightSuggestions:v101];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

LABEL_70:
}

- (void)setUuidString:(uint64_t)string
{
  if (string)
  {
    OUTLINED_FUNCTION_0_3(string, a2, 96);
  }
}

- (void)setWidgetUniqueId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_0_3(id, a2, 104);
  }
}

- (void)setUuidOfHighestConfidenceSuggestion:(uint64_t)suggestion
{
  if (suggestion)
  {
    OUTLINED_FUNCTION_0_3(suggestion, a2, 88);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v82 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!from)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_16();
  if ((v5 & 4) != 0)
  {
    *(from + 40) = *(v3 + 10);
    *(from + 116) |= 4u;
    OUTLINED_FUNCTION_16();
  }

  if (v5)
  {
    *(from + 8) = *(v3 + 1);
    *(from + v4) |= 1u;
  }

  v6 = *(v3 + 12);
  if (v6)
  {
    [(ATXPBSuggestionLayout *)from setUuidString:v6];
  }

  memset(v74, 0, sizeof(v74));
  v7 = *(v3 + 7);
  if ([v7 countByEnumeratingWithState:v74 objects:v81 count:16])
  {
    do
    {
      OUTLINED_FUNCTION_20();
      if (!v8)
      {
        objc_enumerationMutation(v7);
      }

      v9 = OUTLINED_FUNCTION_19();
      [(ATXPBSuggestionLayout *)v9 addOneByOneSuggestions:v10];
      OUTLINED_FUNCTION_18();
    }

    while (!v8 || OUTLINED_FUNCTION_22(v11, v12, v74, v81));
  }

  memset(v73, 0, sizeof(v73));
  v13 = *(v3 + 8);
  if ([v13 countByEnumeratingWithState:v73 objects:v80 count:16])
  {
    do
    {
      OUTLINED_FUNCTION_20();
      if (!v8)
      {
        objc_enumerationMutation(v13);
      }

      v14 = OUTLINED_FUNCTION_19();
      [(ATXPBSuggestionLayout *)v14 addOneByTwoSuggestions:v15];
      OUTLINED_FUNCTION_18();
    }

    while (!v8 || OUTLINED_FUNCTION_22(v16, v17, v73, v80));
  }

  memset(v72, 0, sizeof(v72));
  v18 = *(v3 + 10);
  if ([v18 countByEnumeratingWithState:v72 objects:v79 count:16])
  {
    do
    {
      OUTLINED_FUNCTION_20();
      if (!v8)
      {
        objc_enumerationMutation(v18);
      }

      v19 = OUTLINED_FUNCTION_19();
      [(ATXPBSuggestionLayout *)v19 addTwoByTwoSuggestions:v20];
      OUTLINED_FUNCTION_18();
    }

    while (!v8 || OUTLINED_FUNCTION_22(v21, v22, v72, v79));
  }

  memset(v71, 0, sizeof(v71));
  v23 = *(v3 + 6);
  if ([v23 countByEnumeratingWithState:v71 objects:v78 count:16])
  {
    do
    {
      OUTLINED_FUNCTION_20();
      if (!v8)
      {
        objc_enumerationMutation(v23);
      }

      v24 = OUTLINED_FUNCTION_19();
      [(ATXPBSuggestionLayout *)v24 addOneByFourSuggestions:v25];
      OUTLINED_FUNCTION_18();
    }

    while (!v8 || OUTLINED_FUNCTION_22(v26, v27, v71, v78));
  }

  memset(v70, 0, sizeof(v70));
  v28 = *(v3 + 9);
  if ([v28 countByEnumeratingWithState:v70 objects:v77 count:16])
  {
    do
    {
      OUTLINED_FUNCTION_20();
      if (!v8)
      {
        objc_enumerationMutation(v28);
      }

      v29 = OUTLINED_FUNCTION_19();
      [(ATXPBSuggestionLayout *)v29 addTwoByFourSuggestions:v30];
      OUTLINED_FUNCTION_18();
    }

    while (!v8 || OUTLINED_FUNCTION_22(v31, v32, v70, v77));
  }

  OUTLINED_FUNCTION_9();
  if ((v33 & 0x40) == 0)
  {
    if ((v33 & 8) == 0)
    {
      goto LABEL_40;
    }

LABEL_67:
    OUTLINED_FUNCTION_7(112);
    *(from + v60) = v59 | 8;
    OUTLINED_FUNCTION_9();
    if ((v61 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_7(115);
  *(from + v58) = v57 | 0x40;
  OUTLINED_FUNCTION_9();
  if ((v33 & 8) != 0)
  {
    goto LABEL_67;
  }

LABEL_40:
  if ((v33 & 0x20) != 0)
  {
LABEL_41:
    OUTLINED_FUNCTION_7(114);
    *(from + v35) = v34 | 0x20;
  }

LABEL_42:
  v36 = *(v3 + 13);
  if (v36)
  {
    [(ATXPBSuggestionLayout *)from setWidgetUniqueId:v36];
  }

  OUTLINED_FUNCTION_9();
  if ((v37 & 0x10) != 0)
  {
    OUTLINED_FUNCTION_7(113);
    *(from + v39) = v38 | 0x10;
  }

  v40 = *(v3 + 11);
  if (v40)
  {
    [(ATXPBSuggestionLayout *)from setUuidOfHighestConfidenceSuggestion:v40];
  }

  OUTLINED_FUNCTION_16();
  if ((v42 & 2) != 0)
  {
    *(from + 16) = *(v3 + 2);
    *(from + v41) |= 2u;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v43 = *(v3 + 4);
  v44 = [v43 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v67;
    do
    {
      v47 = 0;
      do
      {
        if (*v67 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = [(ATXPBSuggestionLayout *)from addFourByFourSuggestions:?];
      }

      while (v45 != v47);
      v45 = OUTLINED_FUNCTION_22(v48, v49, &v66, v76);
    }

    while (v45);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v50 = *(v3 + 3);
  v51 = [v50 countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v63;
    do
    {
      v54 = 0;
      do
      {
        if (*v63 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = [(ATXPBSuggestionLayout *)from addFourByEightSuggestions:?];
      }

      while (v52 != v54);
      v52 = OUTLINED_FUNCTION_22(v55, v56, &v62, v75);
    }

    while (v52);
  }

LABEL_65:
}

- (void)setOneByOneSuggestions:(uint64_t)suggestions
{
  if (suggestions)
  {
    OUTLINED_FUNCTION_0_3(suggestions, a2, 56);
  }
}

- (void)setOneByTwoSuggestions:(uint64_t)suggestions
{
  if (suggestions)
  {
    OUTLINED_FUNCTION_0_3(suggestions, a2, 64);
  }
}

- (void)setTwoByTwoSuggestions:(uint64_t)suggestions
{
  if (suggestions)
  {
    OUTLINED_FUNCTION_0_3(suggestions, a2, 80);
  }
}

- (void)setOneByFourSuggestions:(uint64_t)suggestions
{
  if (suggestions)
  {
    OUTLINED_FUNCTION_0_3(suggestions, a2, 48);
  }
}

- (void)setTwoByFourSuggestions:(uint64_t)suggestions
{
  if (suggestions)
  {
    OUTLINED_FUNCTION_0_3(suggestions, a2, 72);
  }
}

- (void)setFourByFourSuggestions:(uint64_t)suggestions
{
  if (suggestions)
  {
    OUTLINED_FUNCTION_0_3(suggestions, a2, 32);
  }
}

- (void)setFourByEightSuggestions:(uint64_t)suggestions
{
  if (suggestions)
  {
    OUTLINED_FUNCTION_0_3(suggestions, a2, 24);
  }
}

@end