@interface BCStackRenderer
- (BCStackRenderer)init;
- (id)_bookFilter:(id)filter;
- (id)_seriesFilter:(id)filter;
- (void)_applySeriesFilter:(id)filter toImages:(id)images filters:(id)filters size:(CGSize)size completion:(id)completion;
- (void)_renderStackFromSource:(id)source images:(id)images forRequest:(id)request onQueue:(id)queue withCompletion:(id)completion;
- (void)renderStackFromSource:(id)source forRequest:(id)request onQueue:(id)queue completion:(id)completion;
@end

@implementation BCStackRenderer

- (BCStackRenderer)init
{
  v7.receiver = self;
  v7.super_class = BCStackRenderer;
  v2 = [(BCStackRenderer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableArray array];
    renderOperations = v3->_renderOperations;
    v3->_renderOperations = v4;
  }

  return v3;
}

- (id)_bookFilter:(id)filter
{
  filterCopy = filter;
  v4 = +[BCCoverEffects sharedInstance];
  bookCoverEffectFilters = [v4 bookCoverEffectFilters];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = bookCoverEffectFilters;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:filterCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_seriesFilter:(id)filter
{
  filterCopy = filter;
  v4 = +[BCCoverEffects sharedInstance];
  seriesCoverEffectFilters = [v4 seriesCoverEffectFilters];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = seriesCoverEffectFilters;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:filterCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)renderStackFromSource:(id)source forRequest:(id)request onQueue:(id)queue completion:(id)completion
{
  sourceCopy = source;
  requestCopy = request;
  queueCopy = queue;
  completionCopy = completion;
  v14 = +[NSMutableArray array];
  seriesDecomposer = [(BCStackRenderer *)self seriesDecomposer];
  identifier = [sourceCopy identifier];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_14424C;
  v22[3] = &unk_2CE128;
  v23 = requestCopy;
  v24 = queueCopy;
  v25 = sourceCopy;
  selfCopy = self;
  v27 = v14;
  v28 = completionCopy;
  v17 = v14;
  v18 = sourceCopy;
  v19 = queueCopy;
  v20 = completionCopy;
  v21 = requestCopy;
  [seriesDecomposer assetIDsAndOptionsForBooksInSeries:identifier completion:v22];
}

- (void)_renderStackFromSource:(id)source images:(id)images forRequest:(id)request onQueue:(id)queue withCompletion:(id)completion
{
  sourceCopy = source;
  imagesCopy = images;
  requestCopy = request;
  queueCopy = queue;
  completionCopy = completion;
  v56 = objc_opt_new();
  v55 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v16 = imagesCopy;
  v60 = [v16 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v60)
  {
    v51 = completionCopy;
    v52 = queueCopy;
    v53 = sourceCopy;
    v54 = requestCopy;
    v17 = 0;
    v18 = 0;
    v58 = *v68;
    quality = &stru_B8 + 24;
    do
    {
      for (i = 0; i != v60; i = i + 1)
      {
        if (*v68 != v58)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v67 + 1) + 8 * i);
        v22 = ([v21 processingOptions] >> 7) & 1;
        processingOptions = [v21 processingOptions];
        v24 = processingOptions;
        v25 = (processingOptions >> 6) & 1;
        if (([v21 processingOptions] & 8) != 0)
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }

        v27 = [BCUCoverEffects effectIdentifierWithRTL:v22 style:v26 content:1 nightMode:v25];
        v28 = [(BCStackRenderer *)self _bookFilter:v27];
        v29 = v28;
        if (v21)
        {
          v30 = v28 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          [v21 image];
          v57 = v17;
          v31 = quality;
          v33 = v32 = v16;
          v34 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v33 CGImage]);
          [v56 addObject:v34];

          v16 = v32;
          quality = v31;
          v17 = v57;
          [v55 addObject:v29];
        }

        if ([v21 quality] < quality)
        {
          quality = [v21 quality];
        }

        v18 |= [v21 isGeneric];
        v17 |= v24 & 0x40;
      }

      v60 = [v16 countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v60);

    if (v18)
    {
      v37 = 2;
    }

    else
    {
      v37 = quality;
    }

    sourceCopy = v53;
    requestCopy = v54;
    completionCopy = v51;
    queueCopy = v52;
  }

  else
  {

    LOWORD(v17) = 0;
    v37 = 208;
  }

  v38 = mainScreenScaleFactor(v35, v36);
  [sourceCopy imageSize];
  v40 = v39;
  v42 = v41;
  v43 = BCUCoverEffectsIdentifierSeriesStackDiagonal;
  v44 = v16;
  if (([requestCopy processingOptions] & 0x1000) != 0)
  {
    processingOptions2 = [requestCopy processingOptions];
    v46 = &BCUCoverEffectsIdentifierSeriesStackHorizontal;
    if ((processingOptions2 & 0x80) != 0)
    {
      v46 = &BCUCoverEffectsIdentifierSeriesStackHorizontalRTL;
    }

    v47 = *v46;

    v43 = v47;
  }

  v61[1] = 3221225472;
  v61[0] = _NSConcreteStackBlock;
  v61[2] = sub_145280;
  v61[3] = &unk_2CE178;
  v62 = queueCopy;
  v63 = sourceCopy;
  v65 = v17;
  v66 = v37;
  v64 = completionCopy;
  v48 = completionCopy;
  v49 = sourceCopy;
  v50 = queueCopy;
  [(BCStackRenderer *)self _applySeriesFilter:v43 toImages:v56 filters:v55 size:v61 completion:v40 / v38, v42 / v38];
}

- (void)_applySeriesFilter:(id)filter toImages:(id)images filters:(id)filters size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  imagesCopy = images;
  filtersCopy = filters;
  completionCopy = completion;
  v16 = [(BCStackRenderer *)self _seriesFilter:filter];
  v17 = [imagesCopy count];
  v18 = [filtersCopy count];
  if (v16 && v17 && v18 == v17)
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_145748;
    v31[3] = &unk_2CE1A0;
    v32 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(imagesCopy, "count")}];
    v19 = v32;
    v20 = [imagesCopy enumerateObjectsUsingBlock:v31];
    v22 = mainScreenScaleFactor(v20, v21);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_145794;
    v29[3] = &unk_2CE1C8;
    v29[4] = self;
    v30 = completionCopy;
    v23 = [v16 newOperationWithImages:v19 filters:filtersCopy size:1 contentsScale:v29 waitForCPUSynchronization:width completion:{height, v22}];
    [v23 start];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1459AC;
    v27[3] = &unk_2C7BE8;
    v27[4] = self;
    v28 = v23;
    v24 = v23;
    os_unfair_lock_lock(&self->_accessLock);
    sub_1459AC(v27);
    os_unfair_lock_unlock(&self->_accessLock);
  }

  else
  {
    v25 = objc_retainBlock(completionCopy);
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25, 0, 0);
    }
  }
}

@end