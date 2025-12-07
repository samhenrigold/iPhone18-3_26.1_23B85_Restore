@interface DDResultTracker
- (BOOL)addResultIfAppropriate:(__DDResult *)appropriate referenceDate:(id)date referenceTimeZone:(id)zone;
- (DDResultTracker)initWithReferenceResult:(__DDResult *)result;
- (id)results;
- (void)dealloc;
@end

@implementation DDResultTracker

- (DDResultTracker)initWithReferenceResult:(__DDResult *)result
{
  v12.receiver = self;
  v12.super_class = DDResultTracker;
  v4 = [(DDResultTracker *)&v12 init];
  if (v4)
  {
    *(v4 + 12) = CFRetain(result);
    *(v4 + 6) = DDResultGetRange();
    Category = DDResultGetCategory();
    *(v4 + 8) = xmmword_21ABCD8B0;
    *(v4 + 24) = xmmword_21ABCD8C0;
    if (Category == 4)
    {
      *(v4 + 6) = 2;
      v4[44] = 1;
      v6 = 8;
    }

    else
    {
      --*&v4[4 * Category + 8];
      v6 = vaddvq_s32(vaddq_s32(*(v4 + 8), *(v4 + 24)));
    }

    *(v4 + 10) = v6;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = *(v4 + 10);
    *(v4 + 10) = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = *(v4 + 11);
    *(v4 + 11) = v9;

    *(v4 + 9) = 0;
  }

  return v4;
}

- (void)dealloc
{
  referenceResult = self->referenceResult;
  if (referenceResult)
  {
    CFRelease(referenceResult);
  }

  v4.receiver = self;
  v4.super_class = DDResultTracker;
  [(DDResultTracker *)&v4 dealloc];
}

- (BOOL)addResultIfAppropriate:(__DDResult *)appropriate referenceDate:(id)date referenceTimeZone:(id)zone
{
  v52 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  zoneCopy = zone;
  if (!self->totalCountRemaining)
  {
    goto LABEL_14;
  }

  Category = DDResultGetCategory();
  referenceResultLocation = self->referenceResultLocation;
  v12 = referenceResultLocation - DDResultGetRange();
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  if (Category == 1)
  {
    if (v13 <= self->maximumDistanceForEmails)
    {
      if (v13 <= self->maximumDistance)
      {
        v14 = self->countRemainingByCategory[1];
LABEL_39:
        if (!v14)
        {
          goto LABEL_47;
        }

LABEL_44:
        --self->countRemainingByCategory[Category];
        --self->totalCountRemaining;
        if (v12 < 1)
        {
          [(NSMutableArray *)self->resultsAfter addObject:appropriate];
        }

        else
        {
          [(NSMutableArray *)self->resultsBefore insertObject:appropriate atIndex:0];
        }

        goto LABEL_47;
      }

      goto LABEL_14;
    }

LABEL_47:
    v16 = 1;
    goto LABEL_48;
  }

  maximumDistance = self->maximumDistance;
  if (v13 <= maximumDistance)
  {
    if (Category == 3)
    {
      if (!self->existingAddressResult)
      {
        self->existingAddressResult = appropriate;
        goto LABEL_44;
      }

      if (DDAddressResultCanBeMergedWith())
      {
        goto LABEL_44;
      }

      goto LABEL_47;
    }

    goto LABEL_19;
  }

  v16 = 0;
  if (Category == 4 && v13 <= 2 * maximumDistance)
  {
    if (!DDResultHasType() || DDResultIsPastDate())
    {
LABEL_14:
      v16 = 0;
      goto LABEL_48;
    }

LABEL_19:
    v14 = self->countRemainingByCategory[Category];
    if (v14 && Category == 4)
    {
      v35 = v12;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      referenceResult = self->referenceResult;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&referenceResult count:1];
      resultsBefore = self->resultsBefore;
      resultsAfter = self->resultsAfter;
      v50[0] = v17;
      v50[1] = resultsBefore;
      v50[2] = resultsAfter;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];

      v36 = [v20 countByEnumeratingWithState:&v44 objects:v51 count:16];
      if (v36)
      {
        v34 = dateCopy;
        v21 = *v45;
        v22 = *MEMORY[0x277D04198];
        v38 = v20;
        v39 = zoneCopy;
        v33 = *v45;
        while (2)
        {
          v23 = 0;
          do
          {
            if (*v45 != v21)
            {
              objc_enumerationMutation(v20);
            }

            v37 = v23;
            v24 = *(*(&v44 + 1) + 8 * v23);
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v41;
LABEL_29:
              v29 = 0;
              while (1)
              {
                if (*v41 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                Type = DDResultGetType();
                if (MEMORY[0x21CEDEBB0](Type, v22))
                {
                  v31 = DDResultGetType();
                  if (MEMORY[0x21CEDEBB0](Type, v31))
                  {
                    break;
                  }
                }

                if (v27 == ++v29)
                {
                  v27 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
                  if (!v27)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_29;
                }
              }

              v16 = 1;
              dateCopy = v34;
              zoneCopy = v39;
              goto LABEL_48;
            }

LABEL_36:

            ++v23;
            v20 = v38;
            zoneCopy = v39;
            v21 = v33;
          }

          while (v37 + 1 != v36);
          v36 = [v38 countByEnumeratingWithState:&v44 objects:v51 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }

        dateCopy = v34;
      }

      else
      {
      }

      v12 = v35;
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_48:

  return v16;
}

- (id)results
{
  v3 = [(NSMutableArray *)self->resultsBefore arrayByAddingObject:self->referenceResult];
  v4 = [v3 arrayByAddingObjectsFromArray:self->resultsAfter];

  if (self->sortByProximity)
  {
    v5 = [v4 sortedArrayUsingFunction:MEMORY[0x277D041E0] context:self->referenceResult];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

@end