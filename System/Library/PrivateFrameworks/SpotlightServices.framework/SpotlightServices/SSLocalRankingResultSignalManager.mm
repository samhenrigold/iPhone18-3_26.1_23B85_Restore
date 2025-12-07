@interface SSLocalRankingResultSignalManager
+ (id)_getSpotlightRecentEngagementAttributes;
+ (id)_getSpotlightRecentEngagementAttributesNonUnique;
+ (id)updateRecentEngagementAttributes:(id)attributes queryString:(id)string renderPosition:(id)position engagementAttributes:(id)engagementAttributes unique:(BOOL)unique;
@end

@implementation SSLocalRankingResultSignalManager

+ (id)_getSpotlightRecentEngagementAttributes
{
  if (_getSpotlightRecentEngagementAttributes_onceToken != -1)
  {
    +[SSLocalRankingResultSignalManager _getSpotlightRecentEngagementAttributes];
  }

  v3 = _getSpotlightRecentEngagementAttributes_attrNames;

  return v3;
}

void __76__SSLocalRankingResultSignalManager__getSpotlightRecentEngagementAttributes__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69649B0];
  v3[0] = *MEMORY[0x1E69649C0];
  v3[1] = v0;
  v3[2] = *MEMORY[0x1E69649D0];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v2 = _getSpotlightRecentEngagementAttributes_attrNames;
  _getSpotlightRecentEngagementAttributes_attrNames = v1;
}

+ (id)_getSpotlightRecentEngagementAttributesNonUnique
{
  if (_getSpotlightRecentEngagementAttributesNonUnique_onceToken != -1)
  {
    +[SSLocalRankingResultSignalManager _getSpotlightRecentEngagementAttributesNonUnique];
  }

  v3 = _getSpotlightRecentEngagementAttributesNonUnique_attrNames;

  return v3;
}

void __85__SSLocalRankingResultSignalManager__getSpotlightRecentEngagementAttributesNonUnique__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69649B8];
  v3[0] = *MEMORY[0x1E69649C8];
  v3[1] = v0;
  v3[2] = *MEMORY[0x1E69649D8];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v2 = _getSpotlightRecentEngagementAttributesNonUnique_attrNames;
  _getSpotlightRecentEngagementAttributesNonUnique_attrNames = v1;
}

+ (id)updateRecentEngagementAttributes:(id)attributes queryString:(id)string renderPosition:(id)position engagementAttributes:(id)engagementAttributes unique:(BOOL)unique
{
  uniqueCopy = unique;
  v62[3] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  stringCopy = string;
  positionCopy = position;
  engagementAttributesCopy = engagementAttributes;
  date = [MEMORY[0x1E695DF00] date];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v58 = attributesCopy;
  if (objc_msgSend_count(attributesCopy) == 3)
  {
    v53 = uniqueCopy;
    v55 = v14;
    v17 = [attributesCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [attributesCopy objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [attributesCopy objectAtIndexedSubscript:2];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        uniqueCopy = v53;
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_19;
        }

        v17 = [attributesCopy objectAtIndexedSubscript:0];
        v21 = [attributesCopy objectAtIndexedSubscript:1];
        v22 = [attributesCopy objectAtIndexedSubscript:2];
        v23 = objc_msgSend_count(v17);
        v52 = v21;
        if (v23 == objc_msgSend_count(v21))
        {
          v24 = objc_msgSend_count(v17);
          if (v24 == objc_msgSend_count(v22))
          {
            if (objc_msgSend_count(v17))
            {
              v25 = 0;
              while (1)
              {
                v26 = [v17 objectAtIndexedSubscript:v25];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  break;
                }

                v27 = [v52 objectAtIndexedSubscript:v25];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

                  break;
                }

                [v22 objectAtIndexedSubscript:v25];
                v28 = v16;
                v30 = v29 = engagementAttributesCopy;
                objc_opt_class();
                v51 = objc_opt_isKindOfClass();

                engagementAttributesCopy = v29;
                v16 = v28;

                if (v51)
                {
                  v31 = [v17 objectAtIndexedSubscript:v25];
                  [v55 addObject:v31];

                  v32 = [v52 objectAtIndexedSubscript:v25];
                  [v15 addObject:v32];

                  v33 = [v22 objectAtIndexedSubscript:v25];
                  [v28 addObject:v33];

                  if (++v25 < objc_msgSend_count(v17))
                  {
                    continue;
                  }
                }

                goto LABEL_16;
              }
            }
          }
        }

LABEL_16:

        v18 = v52;
      }
    }

    v14 = v55;

    uniqueCopy = v53;
  }

LABEL_19:
  if ([stringCopy length])
  {
    v56 = engagementAttributesCopy;
    v34 = objc_msgSend_count(v14);
    v35 = v34;
    if (uniqueCopy)
    {
      v36 = 0x7FFFFFFFFFFFFFFFLL;
      if (v34)
      {
        v36 = 0;
        while (1)
        {
          v37 = [v14 objectAtIndexedSubscript:v36];
          v38 = [v37 isEqualToString:stringCopy];

          if (v38)
          {
            break;
          }

          if (v35 == ++v36)
          {
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
LABEL_25:
      v36 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v36 == 0x7FFFFFFFFFFFFFFFLL && v35 >= 0xA)
    {
      v36 = 0;
      for (i = 1; i != v35; ++i)
      {
        v40 = [v15 objectAtIndexedSubscript:i];
        v41 = [v15 objectAtIndexedSubscript:v36];
        v42 = [v40 compare:v41];

        if (v42 == -1)
        {
          v36 = i;
        }
      }

      [v14 setObject:stringCopy atIndexedSubscript:v36];
    }

    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v14 addObject:stringCopy];
      [v15 addObject:date];
      [v16 addObject:positionCopy];
    }

    else
    {
      [v15 setObject:date atIndexedSubscript:v36];
      [v16 setObject:positionCopy atIndexedSubscript:v36];
    }

    engagementAttributesCopy = v56;
  }

  if (objc_msgSend_count(engagementAttributesCopy) != 3)
  {
    +[SSLocalRankingResultSignalManager updateRecentEngagementAttributes:queryString:renderPosition:engagementAttributes:unique:];
  }

  v43 = [engagementAttributesCopy objectAtIndexedSubscript:0];
  v61[0] = v43;
  v44 = [v14 copy];
  v62[0] = v44;
  v45 = [engagementAttributesCopy objectAtIndexedSubscript:1];
  v61[1] = v45;
  v46 = [v15 copy];
  v62[1] = v46;
  [engagementAttributesCopy objectAtIndexedSubscript:2];
  v47 = v57 = stringCopy;
  v61[2] = v47;
  v48 = v14;
  v49 = [v16 copy];
  v62[2] = v49;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:3];

  return v54;
}

@end