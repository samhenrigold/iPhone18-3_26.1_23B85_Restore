@interface TPPBPolicyDocument
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCategoriesByView:(id)view;
- (void)addInheritedExcludedViews:(id)views;
- (void)addIntroducersByCategory:(id)category;
- (void)addKeyViewMapping:(id)mapping;
- (void)addModelToCategory:(id)category;
- (void)addPiggybackViews:(id)views;
- (void)addPriorityViews:(id)views;
- (void)addRedactions:(id)redactions;
- (void)addUserControllableViews:(id)views;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBPolicyDocument

- (void)mergeFrom:(id)from
{
  v96 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 88))
  {
    self->_policyVersion = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v6 = *(fromCopy + 6);
  v7 = [v6 countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v84;
    do
    {
      v10 = 0;
      do
      {
        if (*v84 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(TPPBPolicyDocument *)self addModelToCategory:*(*(&v83 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v8);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v11 = v5[2];
  v12 = [v11 countByEnumeratingWithState:&v79 objects:v94 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v80;
    do
    {
      v15 = 0;
      do
      {
        if (*v80 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(TPPBPolicyDocument *)self addCategoriesByView:*(*(&v79 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v79 objects:v94 count:16];
    }

    while (v13);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v16 = v5[4];
  v17 = [v16 countByEnumeratingWithState:&v75 objects:v93 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v76;
    do
    {
      v20 = 0;
      do
      {
        if (*v76 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(TPPBPolicyDocument *)self addIntroducersByCategory:*(*(&v75 + 1) + 8 * v20++)];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v75 objects:v93 count:16];
    }

    while (v18);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v21 = v5[9];
  v22 = [v21 countByEnumeratingWithState:&v71 objects:v92 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v72;
    do
    {
      v25 = 0;
      do
      {
        if (*v72 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(TPPBPolicyDocument *)self addRedactions:*(*(&v71 + 1) + 8 * v25++)];
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v71 objects:v92 count:16];
    }

    while (v23);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v26 = v5[5];
  v27 = [v26 countByEnumeratingWithState:&v67 objects:v91 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v68;
    do
    {
      v30 = 0;
      do
      {
        if (*v68 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(TPPBPolicyDocument *)self addKeyViewMapping:*(*(&v67 + 1) + 8 * v30++)];
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v67 objects:v91 count:16];
    }

    while (v28);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v31 = v5[10];
  v32 = [v31 countByEnumeratingWithState:&v63 objects:v90 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v64;
    do
    {
      v35 = 0;
      do
      {
        if (*v64 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(TPPBPolicyDocument *)self addUserControllableViews:*(*(&v63 + 1) + 8 * v35++)];
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v63 objects:v90 count:16];
    }

    while (v33);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v36 = v5[7];
  v37 = [v36 countByEnumeratingWithState:&v59 objects:v89 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v60;
    do
    {
      v40 = 0;
      do
      {
        if (*v60 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(TPPBPolicyDocument *)self addPiggybackViews:*(*(&v59 + 1) + 8 * v40++)];
      }

      while (v38 != v40);
      v38 = [v36 countByEnumeratingWithState:&v59 objects:v89 count:16];
    }

    while (v38);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v41 = v5[8];
  v42 = [v41 countByEnumeratingWithState:&v55 objects:v88 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v56;
    do
    {
      v45 = 0;
      do
      {
        if (*v56 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(TPPBPolicyDocument *)self addPriorityViews:*(*(&v55 + 1) + 8 * v45++)];
      }

      while (v43 != v45);
      v43 = [v41 countByEnumeratingWithState:&v55 objects:v88 count:16];
    }

    while (v43);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v46 = v5[3];
  v47 = [v46 countByEnumeratingWithState:&v51 objects:v87 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v52;
    do
    {
      v50 = 0;
      do
      {
        if (*v52 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(TPPBPolicyDocument *)self addInheritedExcludedViews:*(*(&v51 + 1) + 8 * v50++), v51];
      }

      while (v48 != v50);
      v48 = [v46 countByEnumeratingWithState:&v51 objects:v87 count:16];
    }

    while (v48);
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_policyVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_modelToCategorys hash]^ v3;
  v5 = [(NSMutableArray *)self->_categoriesByViews hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_introducersByCategorys hash];
  v7 = [(NSMutableArray *)self->_redactions hash];
  v8 = v7 ^ [(NSMutableArray *)self->_keyViewMappings hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_userControllableViews hash];
  v10 = [(NSMutableArray *)self->_piggybackViews hash];
  v11 = v10 ^ [(NSMutableArray *)self->_priorityViews hash];
  return v9 ^ v11 ^ [(NSMutableArray *)self->_inheritedExcludedViews hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_policyVersion != *(equalCopy + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 88))
  {
LABEL_25:
    v14 = 0;
    goto LABEL_26;
  }

  modelToCategorys = self->_modelToCategorys;
  if (modelToCategorys | *(equalCopy + 6) && ![(NSMutableArray *)modelToCategorys isEqual:?])
  {
    goto LABEL_25;
  }

  categoriesByViews = self->_categoriesByViews;
  if (categoriesByViews | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)categoriesByViews isEqual:?])
    {
      goto LABEL_25;
    }
  }

  introducersByCategorys = self->_introducersByCategorys;
  if (introducersByCategorys | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)introducersByCategorys isEqual:?])
    {
      goto LABEL_25;
    }
  }

  redactions = self->_redactions;
  if (redactions | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)redactions isEqual:?])
    {
      goto LABEL_25;
    }
  }

  keyViewMappings = self->_keyViewMappings;
  if (keyViewMappings | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)keyViewMappings isEqual:?])
    {
      goto LABEL_25;
    }
  }

  userControllableViews = self->_userControllableViews;
  if (userControllableViews | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)userControllableViews isEqual:?])
    {
      goto LABEL_25;
    }
  }

  piggybackViews = self->_piggybackViews;
  if (piggybackViews | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)piggybackViews isEqual:?])
    {
      goto LABEL_25;
    }
  }

  priorityViews = self->_priorityViews;
  if (priorityViews | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)priorityViews isEqual:?])
    {
      goto LABEL_25;
    }
  }

  inheritedExcludedViews = self->_inheritedExcludedViews;
  if (inheritedExcludedViews | *(equalCopy + 3))
  {
    v14 = [(NSMutableArray *)inheritedExcludedViews isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_26:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v107 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_policyVersion;
    *(v5 + 88) |= 1u;
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v7 = self->_modelToCategorys;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v95;
    do
    {
      v11 = 0;
      do
      {
        if (*v95 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v94 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addModelToCategory:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v94 objects:v106 count:16];
    }

    while (v9);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v13 = self->_categoriesByViews;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v90 objects:v105 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v91;
    do
    {
      v17 = 0;
      do
      {
        if (*v91 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v90 + 1) + 8 * v17) copyWithZone:zone];
        [v6 addCategoriesByView:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v90 objects:v105 count:16];
    }

    while (v15);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v19 = self->_introducersByCategorys;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v86 objects:v104 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v87;
    do
    {
      v23 = 0;
      do
      {
        if (*v87 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v86 + 1) + 8 * v23) copyWithZone:zone];
        [v6 addIntroducersByCategory:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v86 objects:v104 count:16];
    }

    while (v21);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v25 = self->_redactions;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v82 objects:v103 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v83;
    do
    {
      v29 = 0;
      do
      {
        if (*v83 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v82 + 1) + 8 * v29) copyWithZone:zone];
        [v6 addRedactions:v30];

        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v82 objects:v103 count:16];
    }

    while (v27);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v31 = self->_keyViewMappings;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v78 objects:v102 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v79;
    do
    {
      v35 = 0;
      do
      {
        if (*v79 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v78 + 1) + 8 * v35) copyWithZone:zone];
        [v6 addKeyViewMapping:v36];

        ++v35;
      }

      while (v33 != v35);
      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v78 objects:v102 count:16];
    }

    while (v33);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v37 = self->_userControllableViews;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v74 objects:v101 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v75;
    do
    {
      v41 = 0;
      do
      {
        if (*v75 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [*(*(&v74 + 1) + 8 * v41) copyWithZone:zone];
        [v6 addUserControllableViews:v42];

        ++v41;
      }

      while (v39 != v41);
      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v74 objects:v101 count:16];
    }

    while (v39);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v43 = self->_piggybackViews;
  v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v70 objects:v100 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v71;
    do
    {
      v47 = 0;
      do
      {
        if (*v71 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = [*(*(&v70 + 1) + 8 * v47) copyWithZone:zone];
        [v6 addPiggybackViews:v48];

        ++v47;
      }

      while (v45 != v47);
      v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v70 objects:v100 count:16];
    }

    while (v45);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v49 = self->_priorityViews;
  v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v66 objects:v99 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v67;
    do
    {
      v53 = 0;
      do
      {
        if (*v67 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = [*(*(&v66 + 1) + 8 * v53) copyWithZone:zone];
        [v6 addPriorityViews:v54];

        ++v53;
      }

      while (v51 != v53);
      v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v66 objects:v99 count:16];
    }

    while (v51);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v55 = self->_inheritedExcludedViews;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v62 objects:v98 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v63;
    do
    {
      v59 = 0;
      do
      {
        if (*v63 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = [*(*(&v62 + 1) + 8 * v59) copyWithZone:{zone, v62}];
        [v6 addInheritedExcludedViews:v60];

        ++v59;
      }

      while (v57 != v59);
      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v62 objects:v98 count:16];
    }

    while (v57);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_policyVersion;
    *(toCopy + 88) |= 1u;
  }

  v41 = toCopy;
  if ([(TPPBPolicyDocument *)self modelToCategorysCount])
  {
    [v41 clearModelToCategorys];
    modelToCategorysCount = [(TPPBPolicyDocument *)self modelToCategorysCount];
    if (modelToCategorysCount)
    {
      v6 = modelToCategorysCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(TPPBPolicyDocument *)self modelToCategoryAtIndex:i];
        [v41 addModelToCategory:v8];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self categoriesByViewsCount])
  {
    [v41 clearCategoriesByViews];
    categoriesByViewsCount = [(TPPBPolicyDocument *)self categoriesByViewsCount];
    if (categoriesByViewsCount)
    {
      v10 = categoriesByViewsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(TPPBPolicyDocument *)self categoriesByViewAtIndex:j];
        [v41 addCategoriesByView:v12];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self introducersByCategorysCount])
  {
    [v41 clearIntroducersByCategorys];
    introducersByCategorysCount = [(TPPBPolicyDocument *)self introducersByCategorysCount];
    if (introducersByCategorysCount)
    {
      v14 = introducersByCategorysCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(TPPBPolicyDocument *)self introducersByCategoryAtIndex:k];
        [v41 addIntroducersByCategory:v16];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self redactionsCount])
  {
    [v41 clearRedactions];
    redactionsCount = [(TPPBPolicyDocument *)self redactionsCount];
    if (redactionsCount)
    {
      v18 = redactionsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(TPPBPolicyDocument *)self redactionsAtIndex:m];
        [v41 addRedactions:v20];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self keyViewMappingsCount])
  {
    [v41 clearKeyViewMappings];
    keyViewMappingsCount = [(TPPBPolicyDocument *)self keyViewMappingsCount];
    if (keyViewMappingsCount)
    {
      v22 = keyViewMappingsCount;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(TPPBPolicyDocument *)self keyViewMappingAtIndex:n];
        [v41 addKeyViewMapping:v24];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self userControllableViewsCount])
  {
    [v41 clearUserControllableViews];
    userControllableViewsCount = [(TPPBPolicyDocument *)self userControllableViewsCount];
    if (userControllableViewsCount)
    {
      v26 = userControllableViewsCount;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(TPPBPolicyDocument *)self userControllableViewsAtIndex:ii];
        [v41 addUserControllableViews:v28];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self piggybackViewsCount])
  {
    [v41 clearPiggybackViews];
    piggybackViewsCount = [(TPPBPolicyDocument *)self piggybackViewsCount];
    if (piggybackViewsCount)
    {
      v30 = piggybackViewsCount;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(TPPBPolicyDocument *)self piggybackViewsAtIndex:jj];
        [v41 addPiggybackViews:v32];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self priorityViewsCount])
  {
    [v41 clearPriorityViews];
    priorityViewsCount = [(TPPBPolicyDocument *)self priorityViewsCount];
    if (priorityViewsCount)
    {
      v34 = priorityViewsCount;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(TPPBPolicyDocument *)self priorityViewsAtIndex:kk];
        [v41 addPriorityViews:v36];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self inheritedExcludedViewsCount])
  {
    [v41 clearInheritedExcludedViews];
    inheritedExcludedViewsCount = [(TPPBPolicyDocument *)self inheritedExcludedViewsCount];
    if (inheritedExcludedViewsCount)
    {
      v38 = inheritedExcludedViewsCount;
      for (mm = 0; mm != v38; ++mm)
      {
        v40 = [(TPPBPolicyDocument *)self inheritedExcludedViewsAtIndex:mm];
        [v41 addInheritedExcludedViews:v40];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v95 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v5 = self->_modelToCategorys;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v83;
    do
    {
      v9 = 0;
      do
      {
        if (*v83 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v82 objects:v94 count:16];
    }

    while (v7);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v10 = self->_categoriesByViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v78 objects:v93 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v79;
    do
    {
      v14 = 0;
      do
      {
        if (*v79 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v78 objects:v93 count:16];
    }

    while (v12);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v15 = self->_introducersByCategorys;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v74 objects:v92 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v75;
    do
    {
      v19 = 0;
      do
      {
        if (*v75 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v74 objects:v92 count:16];
    }

    while (v17);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v20 = self->_redactions;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v70 objects:v91 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v71;
    do
    {
      v24 = 0;
      do
      {
        if (*v71 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v70 objects:v91 count:16];
    }

    while (v22);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v25 = self->_keyViewMappings;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v66 objects:v90 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v67;
    do
    {
      v29 = 0;
      do
      {
        if (*v67 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v66 objects:v90 count:16];
    }

    while (v27);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v30 = self->_userControllableViews;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v62 objects:v89 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v63;
    do
    {
      v34 = 0;
      do
      {
        if (*v63 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteStringField();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v62 objects:v89 count:16];
    }

    while (v32);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v35 = self->_piggybackViews;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v58 objects:v88 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v59;
    do
    {
      v39 = 0;
      do
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(v35);
        }

        PBDataWriterWriteStringField();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v58 objects:v88 count:16];
    }

    while (v37);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v40 = self->_priorityViews;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v54 objects:v87 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v55;
    do
    {
      v44 = 0;
      do
      {
        if (*v55 != v43)
        {
          objc_enumerationMutation(v40);
        }

        PBDataWriterWriteStringField();
        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v54 objects:v87 count:16];
    }

    while (v42);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v45 = self->_inheritedExcludedViews;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v50 objects:v86 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v51;
    do
    {
      v49 = 0;
      do
      {
        if (*v51 != v48)
        {
          objc_enumerationMutation(v45);
        }

        PBDataWriterWriteStringField();
        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v50 objects:v86 count:16];
    }

    while (v47);
  }
}

- (id)dictionaryRepresentation
{
  v70 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_policyVersion];
    [dictionary setObject:v4 forKey:@"policyVersion"];
  }

  if ([(NSMutableArray *)self->_modelToCategorys count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_modelToCategorys, "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v6 = self->_modelToCategorys;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v62;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v62 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v61 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"modelToCategory"];
  }

  if ([(NSMutableArray *)self->_categoriesByViews count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_categoriesByViews, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v13 = self->_categoriesByViews;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v57 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v58;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v57 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v57 objects:v68 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"categoriesByView"];
  }

  if ([(NSMutableArray *)self->_introducersByCategorys count])
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_introducersByCategorys, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v20 = self->_introducersByCategorys;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v53 objects:v67 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v54;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v54 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v53 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation3];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v53 objects:v67 count:16];
      }

      while (v22);
    }

    [dictionary setObject:v19 forKey:@"introducersByCategory"];
  }

  if ([(NSMutableArray *)self->_redactions count])
  {
    v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_redactions, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v27 = self->_redactions;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v49 objects:v66 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v50;
      do
      {
        for (m = 0; m != v29; ++m)
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(v27);
          }

          dictionaryRepresentation4 = [*(*(&v49 + 1) + 8 * m) dictionaryRepresentation];
          [v26 addObject:dictionaryRepresentation4];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v49 objects:v66 count:16];
      }

      while (v29);
    }

    [dictionary setObject:v26 forKey:@"redactions"];
  }

  if ([(NSMutableArray *)self->_keyViewMappings count])
  {
    v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_keyViewMappings, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v34 = self->_keyViewMappings;
    v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v45 objects:v65 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v46;
      do
      {
        for (n = 0; n != v36; ++n)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(v34);
          }

          dictionaryRepresentation5 = [*(*(&v45 + 1) + 8 * n) dictionaryRepresentation];
          [v33 addObject:dictionaryRepresentation5];
        }

        v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v45 objects:v65 count:16];
      }

      while (v36);
    }

    [dictionary setObject:v33 forKey:@"keyViewMapping"];
  }

  userControllableViews = self->_userControllableViews;
  if (userControllableViews)
  {
    [dictionary setObject:userControllableViews forKey:@"user_controllable_views"];
  }

  piggybackViews = self->_piggybackViews;
  if (piggybackViews)
  {
    [dictionary setObject:piggybackViews forKey:@"piggyback_views"];
  }

  priorityViews = self->_priorityViews;
  if (priorityViews)
  {
    [dictionary setObject:priorityViews forKey:@"priority_views"];
  }

  inheritedExcludedViews = self->_inheritedExcludedViews;
  if (inheritedExcludedViews)
  {
    [dictionary setObject:inheritedExcludedViews forKey:@"inherited_excluded_views"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyDocument;
  v4 = [(TPPBPolicyDocument *)&v8 description];
  dictionaryRepresentation = [(TPPBPolicyDocument *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addInheritedExcludedViews:(id)views
{
  viewsCopy = views;
  inheritedExcludedViews = self->_inheritedExcludedViews;
  v8 = viewsCopy;
  if (!inheritedExcludedViews)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_inheritedExcludedViews;
    self->_inheritedExcludedViews = v6;

    viewsCopy = v8;
    inheritedExcludedViews = self->_inheritedExcludedViews;
  }

  [(NSMutableArray *)inheritedExcludedViews addObject:viewsCopy];
}

- (void)addPriorityViews:(id)views
{
  viewsCopy = views;
  priorityViews = self->_priorityViews;
  v8 = viewsCopy;
  if (!priorityViews)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_priorityViews;
    self->_priorityViews = v6;

    viewsCopy = v8;
    priorityViews = self->_priorityViews;
  }

  [(NSMutableArray *)priorityViews addObject:viewsCopy];
}

- (void)addPiggybackViews:(id)views
{
  viewsCopy = views;
  piggybackViews = self->_piggybackViews;
  v8 = viewsCopy;
  if (!piggybackViews)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_piggybackViews;
    self->_piggybackViews = v6;

    viewsCopy = v8;
    piggybackViews = self->_piggybackViews;
  }

  [(NSMutableArray *)piggybackViews addObject:viewsCopy];
}

- (void)addUserControllableViews:(id)views
{
  viewsCopy = views;
  userControllableViews = self->_userControllableViews;
  v8 = viewsCopy;
  if (!userControllableViews)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_userControllableViews;
    self->_userControllableViews = v6;

    viewsCopy = v8;
    userControllableViews = self->_userControllableViews;
  }

  [(NSMutableArray *)userControllableViews addObject:viewsCopy];
}

- (void)addKeyViewMapping:(id)mapping
{
  mappingCopy = mapping;
  keyViewMappings = self->_keyViewMappings;
  v8 = mappingCopy;
  if (!keyViewMappings)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_keyViewMappings;
    self->_keyViewMappings = v6;

    mappingCopy = v8;
    keyViewMappings = self->_keyViewMappings;
  }

  [(NSMutableArray *)keyViewMappings addObject:mappingCopy];
}

- (void)addRedactions:(id)redactions
{
  redactionsCopy = redactions;
  redactions = self->_redactions;
  v8 = redactionsCopy;
  if (!redactions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_redactions;
    self->_redactions = v6;

    redactionsCopy = v8;
    redactions = self->_redactions;
  }

  [(NSMutableArray *)redactions addObject:redactionsCopy];
}

- (void)addIntroducersByCategory:(id)category
{
  categoryCopy = category;
  introducersByCategorys = self->_introducersByCategorys;
  v8 = categoryCopy;
  if (!introducersByCategorys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_introducersByCategorys;
    self->_introducersByCategorys = v6;

    categoryCopy = v8;
    introducersByCategorys = self->_introducersByCategorys;
  }

  [(NSMutableArray *)introducersByCategorys addObject:categoryCopy];
}

- (void)addCategoriesByView:(id)view
{
  viewCopy = view;
  categoriesByViews = self->_categoriesByViews;
  v8 = viewCopy;
  if (!categoriesByViews)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_categoriesByViews;
    self->_categoriesByViews = v6;

    viewCopy = v8;
    categoriesByViews = self->_categoriesByViews;
  }

  [(NSMutableArray *)categoriesByViews addObject:viewCopy];
}

- (void)addModelToCategory:(id)category
{
  categoryCopy = category;
  modelToCategorys = self->_modelToCategorys;
  v8 = categoryCopy;
  if (!modelToCategorys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_modelToCategorys;
    self->_modelToCategorys = v6;

    categoryCopy = v8;
    modelToCategorys = self->_modelToCategorys;
  }

  [(NSMutableArray *)modelToCategorys addObject:categoryCopy];
}

@end