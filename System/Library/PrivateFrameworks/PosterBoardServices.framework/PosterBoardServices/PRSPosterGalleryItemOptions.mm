@interface PRSPosterGalleryItemOptions
+ (id)itemOptionsWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (PRSPosterGalleryItemOptions)init;
- (PRSPosterGalleryItemOptions)initWithCoder:(id)coder;
- (PRSPosterGalleryItemOptions)initWithModularComplications:(id)complications modularLandscapeComplications:(id)landscapeComplications inlineComplication:(id)complication allowsSystemSuggestedComplications:(BOOL)suggestedComplications allowsSystemSuggestedComplicationsInLandscape:(BOOL)landscape featuredConfidenceLevel:(int64_t)level displayNameLocalizationKey:(id)key spokenNameLocalizationKey:(id)self0 descriptiveTextLocalizationKey:(id)self1 hero:(BOOL)self2 shouldShowAsShuffleStack:(BOOL)self3 photoSubtype:(int64_t)self4 focus:(int64_t)self5 onlyEligibleForMadeForFocusSection:(BOOL)self6;
- (PRSPosterGalleryItemOptions)initWithProactiveRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)proactiveRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSPosterGalleryItemOptions

- (PRSPosterGalleryItemOptions)init
{
  LOBYTE(v4) = 0;
  LOWORD(v3) = 0;
  return [(PRSPosterGalleryItemOptions *)self initWithModularComplications:0 modularLandscapeComplications:0 inlineComplication:0 allowsSystemSuggestedComplications:0 allowsSystemSuggestedComplicationsInLandscape:0 featuredConfidenceLevel:1 displayNameLocalizationKey:0 spokenNameLocalizationKey:0 descriptiveTextLocalizationKey:0 hero:v3 shouldShowAsShuffleStack:0 photoSubtype:0 focus:v4 onlyEligibleForMadeForFocusSection:?];
}

- (PRSPosterGalleryItemOptions)initWithModularComplications:(id)complications modularLandscapeComplications:(id)landscapeComplications inlineComplication:(id)complication allowsSystemSuggestedComplications:(BOOL)suggestedComplications allowsSystemSuggestedComplicationsInLandscape:(BOOL)landscape featuredConfidenceLevel:(int64_t)level displayNameLocalizationKey:(id)key spokenNameLocalizationKey:(id)self0 descriptiveTextLocalizationKey:(id)self1 hero:(BOOL)self2 shouldShowAsShuffleStack:(BOOL)self3 photoSubtype:(int64_t)self4 focus:(int64_t)self5 onlyEligibleForMadeForFocusSection:(BOOL)self6
{
  complicationsCopy = complications;
  landscapeComplicationsCopy = landscapeComplications;
  complicationCopy = complication;
  keyCopy = key;
  localizationKeyCopy = localizationKey;
  textLocalizationKeyCopy = textLocalizationKey;
  v42.receiver = self;
  v42.super_class = PRSPosterGalleryItemOptions;
  v27 = [(PRSPosterGalleryItemOptions *)&v42 init];
  if (v27)
  {
    v28 = [complicationsCopy copy];
    modularComplications = v27->_modularComplications;
    v27->_modularComplications = v28;

    v30 = [landscapeComplicationsCopy copy];
    modularLandscapeComplications = v27->_modularLandscapeComplications;
    v27->_modularLandscapeComplications = v30;

    v32 = [complicationCopy copy];
    inlineComplication = v27->_inlineComplication;
    v27->_inlineComplication = v32;

    v27->_allowsSystemSuggestedComplications = suggestedComplications;
    v27->_allowsSystemSuggestedComplicationsInLandscape = landscape;
    v27->_featuredConfidenceLevel = level;
    v34 = [keyCopy copy];
    displayNameLocalizationKey = v27->_displayNameLocalizationKey;
    v27->_displayNameLocalizationKey = v34;

    v36 = [localizationKeyCopy copy];
    spokenNameLocalizationKey = v27->_spokenNameLocalizationKey;
    v27->_spokenNameLocalizationKey = v36;

    v38 = [textLocalizationKeyCopy copy];
    descriptiveTextLocalizationKey = v27->_descriptiveTextLocalizationKey;
    v27->_descriptiveTextLocalizationKey = v38;

    v27->_hero = hero;
    v27->_shouldShowAsShuffleStack = stack;
    v27->_photoSubtype = subtype;
    v27->_focus = focus;
    v27->_onlyEligibleForMadeForFocusSection = section;
  }

  return v27;
}

- (PRSPosterGalleryItemOptions)initWithProactiveRepresentation:(id)representation
{
  representationCopy = representation;
  modularComplications = [representationCopy modularComplications];
  v25 = [modularComplications bs_map:&__block_literal_global_2];

  modularLandscapeComplications = [representationCopy modularLandscapeComplications];
  v23 = [modularLandscapeComplications bs_map:&__block_literal_global_21];

  inlineComplication = [representationCopy inlineComplication];
  posterBoardRepresentation = [inlineComplication posterBoardRepresentation];
  allowsSystemSuggestedComplications = [representationCopy allowsSystemSuggestedComplications];
  allowsSystemSuggestedComplicationsInLandscape = [representationCopy allowsSystemSuggestedComplicationsInLandscape];
  featuredConfidenceLevel = [representationCopy featuredConfidenceLevel];
  displayNameLocalizationKey = [representationCopy displayNameLocalizationKey];
  spokenNameLocalizationKey = [representationCopy spokenNameLocalizationKey];
  descriptiveTextLocalizationKey = [representationCopy descriptiveTextLocalizationKey];
  isHero = [representationCopy isHero];
  shouldShowAsShuffleStack = [representationCopy shouldShowAsShuffleStack];
  photoSubtype = [representationCopy photoSubtype];
  if ((photoSubtype - 1) >= 8)
  {
    v14 = 0;
  }

  else
  {
    v14 = photoSubtype;
  }

  focus = [representationCopy focus];
  if ((focus - 1) >= 9)
  {
    v16 = 0;
  }

  else
  {
    v16 = focus;
  }

  if (featuredConfidenceLevel != 2)
  {
    featuredConfidenceLevel = featuredConfidenceLevel == 1;
  }

  LOBYTE(v20) = [representationCopy isOnlyEligibleForMadeForFocusSection];
  BYTE1(v19) = shouldShowAsShuffleStack;
  LOBYTE(v19) = isHero;
  v17 = [(PRSPosterGalleryItemOptions *)self initWithModularComplications:v25 modularLandscapeComplications:v23 inlineComplication:posterBoardRepresentation allowsSystemSuggestedComplications:allowsSystemSuggestedComplications allowsSystemSuggestedComplicationsInLandscape:allowsSystemSuggestedComplicationsInLandscape featuredConfidenceLevel:featuredConfidenceLevel displayNameLocalizationKey:displayNameLocalizationKey spokenNameLocalizationKey:spokenNameLocalizationKey descriptiveTextLocalizationKey:descriptiveTextLocalizationKey hero:v19 shouldShowAsShuffleStack:v14 photoSubtype:v16 focus:v20 onlyEligibleForMadeForFocusSection:?];

  return v17;
}

- (id)proactiveRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E698AF20]) initWithPosterBoardRepresentation:self];

  return v2;
}

+ (id)itemOptionsWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v138 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v6 = NSStringFromSelector(sel_modularComplications);
  v7 = [representationCopy objectForKey:v6];
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = 0x1E695D000uLL;
  v125 = v11;
  v126 = representationCopy;
  if (v11)
  {
    v127 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v132 objects:v137 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v133;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v133 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v132 + 1) + 8 * i);
          v19 = objc_opt_class();
          v20 = v18;
          if (v19)
          {
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;

          if (v22)
          {
            v23 = [PRSPosterGallerySuggestedComplication suggestedComplicationWithDictionaryRepresentation:v22 error:error];
            v24 = v23;
            if (error && *error)
            {
              v31 = 0;
              v32 = v126;
              v33 = v13;
              goto LABEL_143;
            }

            if (v23)
            {
              [v127 addObject:v23];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v132 objects:v137 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v25 = [v127 copy];
    v127 = v25;
    representationCopy = v126;
    v12 = 0x1E695D000;
  }

  else
  {
    v127 = 0;
  }

  v26 = NSStringFromSelector(sel_modularLandscapeComplications);
  v27 = [representationCopy objectForKey:v26];
  v28 = objc_opt_class();
  v29 = v27;
  if (v28)
  {
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v33 = v30;

  v124 = v33;
  if (v33)
  {
    v22 = objc_alloc_init(*(v12 + 3952));
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v24 = v33;
    v34 = [v24 countByEnumeratingWithState:&v128 objects:v136 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v129;
      while (2)
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v129 != v36)
          {
            objc_enumerationMutation(v24);
          }

          v38 = *(*(&v128 + 1) + 8 * j);
          v39 = objc_opt_class();
          v40 = v38;
          if (v39)
          {
            if (objc_opt_isKindOfClass())
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
          }

          v42 = v41;

          if (v42)
          {
            v43 = [PRSPosterGallerySuggestedComplication suggestedComplicationWithDictionaryRepresentation:v42 error:error];
            v44 = v43;
            if (error && *error)
            {
              v31 = 0;
              v32 = v126;
              v33 = v124;
              goto LABEL_141;
            }

            if (v43)
            {
              [v22 addObject:v43];
            }
          }
        }

        v35 = [v24 countByEnumeratingWithState:&v128 objects:v136 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v45 = [v22 copy];
    v22 = v45;
    v33 = v124;
  }

  else
  {
    v22 = 0;
  }

  v46 = NSStringFromSelector(sel_inlineComplication);
  v32 = v126;
  v47 = [v126 objectForKey:v46];
  v48 = objc_opt_class();
  v49 = v47;
  if (v48)
  {
    if (objc_opt_isKindOfClass())
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v50 = 0;
  }

  v42 = v50;

  if (!v42)
  {
    v24 = 0;
LABEL_65:
    v51 = NSStringFromSelector(sel_allowsSystemSuggestedComplications);
    v52 = [v126 objectForKey:v51];
    v53 = objc_opt_class();
    v54 = v52;
    if (v53)
    {
      if (objc_opt_isKindOfClass())
      {
        v55 = v54;
      }

      else
      {
        v55 = 0;
      }
    }

    else
    {
      v55 = 0;
    }

    v44 = v55;

    if (v44)
    {
      bOOLValue = [v44 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v56 = NSStringFromSelector(sel_allowsSystemSuggestedComplicationsInLandscape);
    v57 = [v126 objectForKey:v56];
    v58 = objc_opt_class();
    v59 = v57;
    if (v58)
    {
      if (objc_opt_isKindOfClass())
      {
        v60 = v59;
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v60 = 0;
    }

    v61 = v60;

    v121 = v61;
    if (v61)
    {
      bOOLValue2 = [v61 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    v62 = NSStringFromSelector(sel_featuredConfidenceLevel);
    v63 = [v126 objectForKey:v62];
    v64 = objc_opt_class();
    v65 = v63;
    if (v64)
    {
      if (objc_opt_isKindOfClass())
      {
        v66 = v65;
      }

      else
      {
        v66 = 0;
      }
    }

    else
    {
      v66 = 0;
    }

    v67 = v66;

    v119 = v67;
    if (v67)
    {
      integerValue = [v67 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v68 = NSStringFromSelector(sel_displayNameLocalizationKey);
    v69 = [v126 objectForKey:v68];
    v70 = objc_opt_class();
    v71 = v69;
    if (v70)
    {
      if (objc_opt_isKindOfClass())
      {
        v72 = v71;
      }

      else
      {
        v72 = 0;
      }
    }

    else
    {
      v72 = 0;
    }

    v117 = v72;

    v73 = [v126 objectForKey:@"hero"];
    v74 = objc_opt_class();
    v75 = v73;
    if (v74)
    {
      if (objc_opt_isKindOfClass())
      {
        v76 = v75;
      }

      else
      {
        v76 = 0;
      }
    }

    else
    {
      v76 = 0;
    }

    v77 = v76;

    if (v77)
    {
      v78 = v77;
    }

    else
    {
      v79 = [v126 objectForKey:@"blankTemplate"];
      v80 = objc_opt_class();
      v81 = v79;
      if (v80)
      {
        if (objc_opt_isKindOfClass())
        {
          v82 = v81;
        }

        else
        {
          v82 = 0;
        }
      }

      else
      {
        v82 = 0;
      }

      v83 = v82;

      v78 = v83;
      if (!v78)
      {
        bOOLValue5 = 0;
LABEL_108:
        v84 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
        v85 = [v126 objectForKey:v84];
        v86 = objc_opt_class();
        v87 = v85;
        if (v86)
        {
          if (objc_opt_isKindOfClass())
          {
            v88 = v87;
          }

          else
          {
            v88 = 0;
          }
        }

        else
        {
          v88 = 0;
        }

        v89 = v88;

        v115 = v89;
        if (v89)
        {
          bOOLValue3 = [v89 BOOLValue];
        }

        else
        {
          bOOLValue3 = 0;
        }

        v90 = NSStringFromSelector(sel_photoSubtype);
        v91 = [v126 objectForKey:v90];
        v92 = objc_opt_class();
        v93 = v91;
        if (v92)
        {
          if (objc_opt_isKindOfClass())
          {
            v94 = v93;
          }

          else
          {
            v94 = 0;
          }
        }

        else
        {
          v94 = 0;
        }

        v95 = v94;

        if (v95)
        {
          integerValue2 = [v95 integerValue];
        }

        else
        {
          integerValue2 = 0;
        }

        v96 = NSStringFromSelector(sel_focus);
        v97 = [v126 objectForKey:v96];
        v98 = objc_opt_class();
        v99 = v97;
        if (v98)
        {
          if (objc_opt_isKindOfClass())
          {
            v100 = v99;
          }

          else
          {
            v100 = 0;
          }
        }

        else
        {
          v100 = 0;
        }

        v101 = v100;

        v113 = v95;
        if (v101)
        {
          integerValue3 = [v101 integerValue];
        }

        else
        {
          integerValue3 = 0;
        }

        v103 = [v126 objectForKey:@"onlyEligibleForMadeForFocusSection"];
        v104 = objc_opt_class();
        v105 = v103;
        if (v104)
        {
          if (objc_opt_isKindOfClass())
          {
            v106 = v105;
          }

          else
          {
            v106 = 0;
          }
        }

        else
        {
          v106 = 0;
        }

        v33 = v124;
        v107 = v106;

        if (v107)
        {
          bOOLValue4 = [v107 BOOLValue];
        }

        else
        {
          bOOLValue4 = 0;
        }

        LOBYTE(v111) = bOOLValue4;
        BYTE1(v110) = bOOLValue3;
        LOBYTE(v110) = bOOLValue5;
        v31 = [[self alloc] initWithModularComplications:v127 modularLandscapeComplications:v22 inlineComplication:v24 allowsSystemSuggestedComplications:bOOLValue allowsSystemSuggestedComplicationsInLandscape:bOOLValue2 featuredConfidenceLevel:integerValue displayNameLocalizationKey:v117 spokenNameLocalizationKey:0 descriptiveTextLocalizationKey:0 hero:v110 shouldShowAsShuffleStack:integerValue2 photoSubtype:integerValue3 focus:v111 onlyEligibleForMadeForFocusSection:?];

LABEL_141:
        goto LABEL_142;
      }
    }

    bOOLValue5 = [v78 BOOLValue];

    goto LABEL_108;
  }

  v24 = [PRSPosterGallerySuggestedComplication suggestedComplicationWithDictionaryRepresentation:v42 error:error];
  if (!error || !*error)
  {
    goto LABEL_65;
  }

  v31 = 0;
LABEL_142:

LABEL_143:

  return v31;
}

- (id)dictionaryRepresentation
{
  v35[12] = *MEMORY[0x1E69E9840];
  v33 = NSStringFromSelector(sel_modularComplications);
  v34[0] = v33;
  null = [(NSArray *)self->_modularComplications bs_map:&__block_literal_global_50];
  v4 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v35[0] = null;
  v31 = NSStringFromSelector(sel_modularLandscapeComplications);
  v34[1] = v31;
  null2 = [(NSArray *)self->_modularLandscapeComplications bs_map:&__block_literal_global_53];
  v6 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v6;
  v32 = v4;
  v20 = null2;
  v35[1] = null2;
  v29 = NSStringFromSelector(sel_inlineComplication);
  v34[2] = v29;
  inlineComplication = self->_inlineComplication;
  v28 = inlineComplication;
  if (!inlineComplication)
  {
    inlineComplication = [MEMORY[0x1E695DFB0] null];
  }

  v19 = inlineComplication;
  v35[2] = inlineComplication;
  v27 = NSStringFromSelector(sel_allowsSystemSuggestedComplications);
  v34[3] = v27;
  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsSystemSuggestedComplications];
  v35[3] = v26;
  v25 = NSStringFromSelector(sel_allowsSystemSuggestedComplicationsInLandscape);
  v34[4] = v25;
  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsSystemSuggestedComplicationsInLandscape];
  v35[4] = v24;
  v23 = NSStringFromSelector(sel_featuredConfidenceLevel);
  v34[5] = v23;
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:self->_featuredConfidenceLevel];
  v35[5] = v22;
  v8 = NSStringFromSelector(sel_displayNameLocalizationKey);
  v35[6] = self->_displayNameLocalizationKey;
  v34[6] = v8;
  v34[7] = @"hero";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_hero];
  v35[7] = v9;
  v10 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
  v34[8] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldShowAsShuffleStack];
  v35[8] = v11;
  v12 = NSStringFromSelector(sel_photoSubtype);
  v34[9] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_photoSubtype];
  v35[9] = v13;
  v14 = NSStringFromSelector(sel_focus);
  v34[10] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_focus];
  v35[10] = v15;
  v34[11] = @"onlyEligibleForMadeForFocusSection";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_onlyEligibleForMadeForFocusSection];
  v35[11] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:12];

  if (!v28)
  {
  }

  if (!v30)
  {
  }

  if (!v32)
  {
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOBYTE(v7) = self->_onlyEligibleForMadeForFocusSection;
  LOWORD(v6) = *&self->_hero;
  return [v4 initWithModularComplications:self->_modularComplications modularLandscapeComplications:self->_modularLandscapeComplications inlineComplication:self->_inlineComplication allowsSystemSuggestedComplications:self->_allowsSystemSuggestedComplications allowsSystemSuggestedComplicationsInLandscape:self->_allowsSystemSuggestedComplicationsInLandscape featuredConfidenceLevel:self->_featuredConfidenceLevel displayNameLocalizationKey:self->_displayNameLocalizationKey spokenNameLocalizationKey:self->_spokenNameLocalizationKey descriptiveTextLocalizationKey:self->_descriptiveTextLocalizationKey hero:v6 shouldShowAsShuffleStack:self->_photoSubtype photoSubtype:self->_focus focus:v7 onlyEligibleForMadeForFocusSection:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9)
    {
      builder = [MEMORY[0x1E698E6A0] builder];
      modularComplications = self->_modularComplications;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke;
      v82[3] = &unk_1E818CD58;
      v12 = v9;
      v83 = v12;
      v13 = [builder appendObject:modularComplications counterpart:v82];
      modularLandscapeComplications = self->_modularLandscapeComplications;
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_2;
      v80[3] = &unk_1E818CD58;
      v15 = v12;
      v81 = v15;
      v16 = [builder appendObject:modularLandscapeComplications counterpart:v80];
      inlineComplication = self->_inlineComplication;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_3;
      v78[3] = &unk_1E818CD58;
      v18 = v15;
      v79 = v18;
      v19 = [builder appendObject:inlineComplication counterpart:v78];
      allowsSystemSuggestedComplications = self->_allowsSystemSuggestedComplications;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_4;
      v76[3] = &unk_1E818CD80;
      v21 = v18;
      v77 = v21;
      v22 = [builder appendBool:allowsSystemSuggestedComplications counterpart:v76];
      allowsSystemSuggestedComplicationsInLandscape = self->_allowsSystemSuggestedComplicationsInLandscape;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_5;
      v74[3] = &unk_1E818CD80;
      v24 = v21;
      v75 = v24;
      v25 = [builder appendBool:allowsSystemSuggestedComplicationsInLandscape counterpart:v74];
      featuredConfidenceLevel = self->_featuredConfidenceLevel;
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_6;
      v72[3] = &unk_1E818CDA8;
      v27 = v24;
      v73 = v27;
      v28 = [builder appendInteger:featuredConfidenceLevel counterpart:v72];
      displayNameLocalizationKey = self->_displayNameLocalizationKey;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_7;
      v70[3] = &unk_1E818CD58;
      v30 = v27;
      v71 = v30;
      v31 = [builder appendObject:displayNameLocalizationKey counterpart:v70];
      spokenNameLocalizationKey = self->_spokenNameLocalizationKey;
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_8;
      v68[3] = &unk_1E818CD58;
      v33 = v30;
      v69 = v33;
      v34 = [builder appendObject:spokenNameLocalizationKey counterpart:v68];
      descriptiveTextLocalizationKey = self->_descriptiveTextLocalizationKey;
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_9;
      v66[3] = &unk_1E818CD58;
      v36 = v33;
      v67 = v36;
      v37 = [builder appendObject:descriptiveTextLocalizationKey counterpart:v66];
      hero = self->_hero;
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_10;
      v64[3] = &unk_1E818CD80;
      v39 = v36;
      v65 = v39;
      v40 = [builder appendBool:hero counterpart:v64];
      shouldShowAsShuffleStack = self->_shouldShowAsShuffleStack;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_11;
      v62[3] = &unk_1E818CD80;
      v42 = v39;
      v63 = v42;
      v43 = [builder appendBool:shouldShowAsShuffleStack counterpart:v62];
      photoSubtype = self->_photoSubtype;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_12;
      v60[3] = &unk_1E818CDA8;
      v45 = v42;
      v61 = v45;
      v46 = [builder appendInteger:photoSubtype counterpart:v60];
      focus = self->_focus;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_13;
      v58[3] = &unk_1E818CDA8;
      v48 = v45;
      v59 = v48;
      v49 = [builder appendInteger:focus counterpart:v58];
      onlyEligibleForMadeForFocusSection = self->_onlyEligibleForMadeForFocusSection;
      v53 = MEMORY[0x1E69E9820];
      v54 = 3221225472;
      v55 = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_14;
      v56 = &unk_1E818CD80;
      v57 = v48;
      v51 = [builder appendBool:onlyEligibleForMadeForFocusSection counterpart:&v53];
      v8 = [builder isEqual];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v40 = *MEMORY[0x1E69E9840];
  builder = [MEMORY[0x1E698E6B8] builder];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = self->_modularComplications;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [builder appendObject:*(*(&v34 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v6);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = self->_modularLandscapeComplications;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      v14 = 0;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [builder appendObject:{*(*(&v30 + 1) + 8 * v14++), v30}];
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v12);
  }

  v16 = [builder appendObject:self->_inlineComplication];
  v17 = [builder appendBool:self->_allowsSystemSuggestedComplications];
  v18 = [builder appendBool:self->_allowsSystemSuggestedComplicationsInLandscape];
  v19 = [builder appendInteger:self->_featuredConfidenceLevel];
  v20 = [builder appendObject:self->_displayNameLocalizationKey];
  v21 = [builder appendObject:self->_spokenNameLocalizationKey];
  v22 = [builder appendObject:self->_descriptiveTextLocalizationKey];
  v23 = [builder appendBool:self->_hero];
  v24 = [builder appendBool:self->_shouldShowAsShuffleStack];
  v25 = [builder appendInteger:self->_photoSubtype];
  v26 = [builder appendInteger:self->_focus];
  v27 = [builder appendBool:self->_onlyEligibleForMadeForFocusSection];
  v28 = [builder hash];

  return v28;
}

- (PRSPosterGalleryItemOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_modularComplications);
  v38 = [coderCopy decodeArrayOfObjectsOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_modularLandscapeComplications);
  v37 = [coderCopy decodeArrayOfObjectsOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_inlineComplication);
  v36 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v10 = NSStringFromSelector(sel_allowsSystemSuggestedComplications);
  v35 = [coderCopy decodeBoolForKey:v10];

  v11 = NSStringFromSelector(sel_allowsSystemSuggestedComplicationsInLandscape);
  v34 = [coderCopy decodeBoolForKey:v11];

  v12 = NSStringFromSelector(sel_featuredConfidenceLevel);
  v33 = [coderCopy decodeIntegerForKey:v12];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_displayNameLocalizationKey);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_spokenNameLocalizationKey);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_descriptiveTextLocalizationKey);
  v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];

  v22 = NSStringFromSelector(sel_isHero);
  LOBYTE(v20) = [coderCopy decodeBoolForKey:v22];

  v23 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
  LOBYTE(v22) = [coderCopy decodeBoolForKey:v23];

  v24 = NSStringFromSelector(sel_photoSubtype);
  v25 = [coderCopy decodeIntegerForKey:v24];

  v26 = NSStringFromSelector(sel_focus);
  v27 = [coderCopy decodeIntegerForKey:v26];

  v28 = NSStringFromSelector(sel_isOnlyEligibleForMadeForFocusSection);
  LOBYTE(v7) = [coderCopy decodeBoolForKey:v28];

  LOBYTE(v32) = v7;
  BYTE1(v31) = v22;
  LOBYTE(v31) = v20;
  v29 = [(PRSPosterGalleryItemOptions *)self initWithModularComplications:v38 modularLandscapeComplications:v37 inlineComplication:v36 allowsSystemSuggestedComplications:v35 allowsSystemSuggestedComplicationsInLandscape:v34 featuredConfidenceLevel:v33 displayNameLocalizationKey:v15 spokenNameLocalizationKey:v18 descriptiveTextLocalizationKey:v21 hero:v31 shouldShowAsShuffleStack:v25 photoSubtype:v27 focus:v32 onlyEligibleForMadeForFocusSection:?];

  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  modularComplications = self->_modularComplications;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_modularComplications);
  [coderCopy encodeObject:modularComplications forKey:v6];

  modularLandscapeComplications = self->_modularLandscapeComplications;
  v8 = NSStringFromSelector(sel_modularLandscapeComplications);
  [coderCopy encodeObject:modularLandscapeComplications forKey:v8];

  inlineComplication = self->_inlineComplication;
  v10 = NSStringFromSelector(sel_inlineComplication);
  [coderCopy encodeObject:inlineComplication forKey:v10];

  allowsSystemSuggestedComplications = self->_allowsSystemSuggestedComplications;
  v12 = NSStringFromSelector(sel_allowsSystemSuggestedComplications);
  [coderCopy encodeBool:allowsSystemSuggestedComplications forKey:v12];

  allowsSystemSuggestedComplicationsInLandscape = self->_allowsSystemSuggestedComplicationsInLandscape;
  v14 = NSStringFromSelector(sel_allowsSystemSuggestedComplicationsInLandscape);
  [coderCopy encodeBool:allowsSystemSuggestedComplicationsInLandscape forKey:v14];

  featuredConfidenceLevel = self->_featuredConfidenceLevel;
  v16 = NSStringFromSelector(sel_featuredConfidenceLevel);
  [coderCopy encodeInteger:featuredConfidenceLevel forKey:v16];

  displayNameLocalizationKey = self->_displayNameLocalizationKey;
  v18 = NSStringFromSelector(sel_displayNameLocalizationKey);
  [coderCopy encodeObject:displayNameLocalizationKey forKey:v18];

  spokenNameLocalizationKey = self->_spokenNameLocalizationKey;
  v20 = NSStringFromSelector(sel_spokenNameLocalizationKey);
  [coderCopy encodeObject:spokenNameLocalizationKey forKey:v20];

  descriptiveTextLocalizationKey = self->_descriptiveTextLocalizationKey;
  v22 = NSStringFromSelector(sel_descriptiveTextLocalizationKey);
  [coderCopy encodeObject:descriptiveTextLocalizationKey forKey:v22];

  hero = self->_hero;
  v24 = NSStringFromSelector(sel_isHero);
  [coderCopy encodeBool:hero forKey:v24];

  shouldShowAsShuffleStack = self->_shouldShowAsShuffleStack;
  v26 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
  [coderCopy encodeBool:shouldShowAsShuffleStack forKey:v26];

  photoSubtype = self->_photoSubtype;
  v28 = NSStringFromSelector(sel_photoSubtype);
  [coderCopy encodeInteger:photoSubtype forKey:v28];

  focus = self->_focus;
  v30 = NSStringFromSelector(sel_focus);
  [coderCopy encodeInteger:focus forKey:v30];

  onlyEligibleForMadeForFocusSection = self->_onlyEligibleForMadeForFocusSection;
  v32 = NSStringFromSelector(sel_isOnlyEligibleForMadeForFocusSection);
  [coderCopy encodeBool:onlyEligibleForMadeForFocusSection forKey:v32];
}

@end