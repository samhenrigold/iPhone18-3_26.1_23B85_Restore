@interface TVPInterstitialCollection
- (TVPInterstitialCollection)initWithInterstitials:(id)interstitials;
- (double)timeAdjustedByIncludingInterstitials:(double)interstitials;
- (double)timeAdjustedByRemovingInterstitials:(double)interstitials;
- (id)interstitialForTime:(double)time;
- (id)mergedInterstitialForTime:(double)time;
@end

@implementation TVPInterstitialCollection

- (TVPInterstitialCollection)initWithInterstitials:(id)interstitials
{
  interstitialsCopy = interstitials;
  v25.receiver = self;
  v25.super_class = TVPInterstitialCollection;
  v5 = [(TVPInterstitialCollection *)&v25 init];
  if (v5)
  {
    v6 = [interstitialsCopy sortedArrayUsingComparator:&__block_literal_global_0];
    objc_storeStrong(&v5->_interstitials, v6);
    array = [MEMORY[0x277CBEB18] array];
    v8 = [(NSArray *)v5->_interstitials count];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0;
    interstitials = v5->_interstitials;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __51__TVPInterstitialCollection_initWithInterstitials___block_invoke_2;
    v19 = &unk_279D7B8F0;
    v23 = v8;
    v10 = v5;
    v20 = v10;
    v22 = v24;
    v11 = array;
    v21 = v11;
    [(NSArray *)interstitials enumerateObjectsUsingBlock:&v16];
    v12 = objc_alloc(MEMORY[0x277CBEA60]);
    v13 = [v12 initWithArray:{v11, v16, v17, v18, v19}];
    interstitialsWithAdjacentsMerged = v10->_interstitialsWithAdjacentsMerged;
    v10->_interstitialsWithAdjacentsMerged = v13;

    _Block_object_dispose(v24, 8);
  }

  return v5;
}

uint64_t __51__TVPInterstitialCollection_initWithInterstitials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = objc_msgSend_timeRange(a2);
  objc_msgSend_startTime(v5);
  v7 = v6;

  v8 = objc_msgSend_timeRange(v4);

  objc_msgSend_startTime(v8);
  v10 = v9;

  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

void __51__TVPInterstitialCollection_initWithInterstitials___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v22 = a2;
  if (*(a1 + 56) - 1 <= a3)
  {
    v5 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = [*(*(a1 + 32) + 8) objectAtIndex:a3 + 1];
  if (a3)
  {
    goto LABEL_5;
  }

LABEL_7:
  v6 = objc_msgSend_timeRange(v22);
  objc_msgSend_startTime(v6);
  *(*(*(a1 + 48) + 8) + 24) = v7;

  if (!v5)
  {
LABEL_9:
    v14 = objc_alloc_init(TVPMutableInterstitial);
    v15 = [TVPTimeRange alloc];
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v17 = objc_msgSend_timeRange(v22);
    [v17 endTime];
    v19 = [(TVPTimeRange *)v15 initWithStartTime:v16 endTime:v18];

    [(TVPInterstitial *)v14 setTimeRange:v19];
    [*(a1 + 40) addObject:v14];
    if (v5)
    {
      v20 = objc_msgSend_timeRange(v5);
      objc_msgSend_startTime(v20);
      *(*(*(a1 + 48) + 8) + 24) = v21;
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    goto LABEL_13;
  }

LABEL_8:
  v8 = objc_msgSend_timeRange(v5);
  objc_msgSend_startTime(v8);
  v10 = v9;
  v11 = objc_msgSend_timeRange(v22);
  [v11 endTime];
  v13 = v12;

  if (v10 != v13)
  {
    goto LABEL_9;
  }

LABEL_13:
}

- (double)timeAdjustedByRemovingInterstitials:(double)interstitials
{
  v30 = *MEMORY[0x277D85DE8];
  interstitials = self->_interstitials;
  if (interstitials)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    interstitialsCopy = interstitials;
    v6 = [(NSArray *)interstitialsCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      v9 = 0.0;
      v10 = 0.0;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(interstitialsCopy);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v13 = objc_msgSend_timeRange(v12, v25);
        objc_msgSend_startTime(v13);
        v15 = v14 - v9;

        if (interstitials <= v15)
        {
          break;
        }

        v16 = objc_msgSend_timeRange(v12);
        [v16 endTime];
        v18 = v17;
        v19 = objc_msgSend_timeRange(v12);
        objc_msgSend_startTime(v19);
        v21 = interstitials - (v18 - v20);

        if (v21 - v15 >= 0.0)
        {
          interstitials = v21 - v15;
        }

        else
        {
          interstitials = 0.0;
        }

        v10 = v10 + v15;
        v22 = objc_msgSend_timeRange(v12);
        [v22 endTime];
        v9 = v23;

        if (v7 == ++v11)
        {
          v7 = [(NSArray *)interstitialsCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v10 = 0.0;
    }

    return interstitials + v10;
  }

  return interstitials;
}

- (double)timeAdjustedByIncludingInterstitials:(double)interstitials
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_interstitials;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = 0.0;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      v11 = objc_msgSend_timeRange(v10, v19);
      objc_msgSend_startTime(v11);
      v13 = v12;

      if (v8 + interstitials <= v13)
      {
        break;
      }

      v14 = objc_msgSend_timeRange(v10);
      objc_msgSend_startTime(v14);
      interstitials = interstitials - (v15 - v8);

      v16 = objc_msgSend_timeRange(v10);
      [v16 endTime];
      v8 = v17;

      if (v6 == ++v9)
      {
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8 + interstitials;
}

- (id)interstitialForTime:(double)time
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  interstitials = [(TVPInterstitialCollection *)self interstitials];
  v5 = [interstitials countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(interstitials);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_msgSend_timeRange(v8);
        v10 = [v9 containsTime:time];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [interstitials countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)mergedInterstitialForTime:(double)time
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  interstitialsWithAdjacentsMerged = [(TVPInterstitialCollection *)self interstitialsWithAdjacentsMerged];
  v5 = [interstitialsWithAdjacentsMerged countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(interstitialsWithAdjacentsMerged);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_msgSend_timeRange(v8);
        v10 = [v9 containsTime:time];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [interstitialsWithAdjacentsMerged countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

@end