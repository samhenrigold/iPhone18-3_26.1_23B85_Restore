@interface PDFExtensionContext
+ (void)initialize;
- (PDFExtensionViewController)extensionViewController;
- (void)hostToExtension:(id)extension;
@end

@implementation PDFExtensionContext

+ (void)initialize
{
  _CFPrefsSetDirectModeEnabled();

  MEMORY[0x1EEDB8498](1);
}

- (void)hostToExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [extensionCopy objectForKey:@"function"];
  v6 = v5;
  if (v5 && [v5 length])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PDFExtensionContext_hostToExtension___block_invoke;
    block[3] = &unk_1E8151480;
    block[4] = self;
    v8 = v6;
    v9 = extensionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __39__PDFExtensionContext_hostToExtension___block_invoke(id *a1)
{
  v96 = [a1[4] extensionViewController];
  if ([a1[5] isEqualToString:@"setDocumentData"])
  {
    v2 = [a1[6] objectForKey:@"data"];
    [v96 setDocumentData:v2];
LABEL_3:

    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"findString"])
  {
    v3 = [a1[6] objectForKey:@"string"];
    v4 = [a1[6] objectForKey:@"options"];
    [v96 findString:v3 withOptions:{objc_msgSend(v4, "unsignedIntegerValue")}];

LABEL_6:
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"cancelFindString"])
  {
    [v96 cancelFindString];
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"cancelFindStringWithHighlightsCleared"])
  {
    v5 = [a1[6] objectForKey:@"clearHighlights"];
    v6 = [v5 BOOLValue];

    [v96 cancelFindStringWithHighlightsCleared:v6];
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"focusOnSearchResultAtIndex"])
  {
    v7 = [a1[6] objectForKey:@"searchIndex"];
    v8 = [v7 integerValue];

    [v96 focusOnSearchResultAtIndex:v8];
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"clearSearchHighlights"])
  {
    [v96 clearSearchHighlights];
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"goToPageIndex"])
  {
    v9 = [a1[6] objectForKey:@"pageIndex"];
    v10 = [v9 integerValue];

    [v96 goToPageIndex:v10];
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"updatePDFViewLayout"])
  {
    v3 = [a1[6] objectForKey:@"boundsInDocument"];
    v11 = [a1[6] objectForKey:@"scrollViewFrame"];
    v12 = [a1[6] objectForKey:@"safeAreaInsets"];
    if ([v3 count] == 4 && objc_msgSend(v11, "count") == 4 && objc_msgSend(v12, "count") == 4)
    {
      v13 = [v3 objectAtIndex:0];
      [v13 floatValue];

      v14 = [v3 objectAtIndex:1];
      [v14 floatValue];

      v15 = [v3 objectAtIndex:2];
      [v15 floatValue];

      v16 = [v3 objectAtIndex:3];
      [v16 floatValue];

      PDFRectMake();
      v94 = v18;
      v95 = v17;
      v92 = v20;
      v93 = v19;
      v21 = [v11 objectAtIndex:0];
      [v21 floatValue];

      v22 = [v11 objectAtIndex:1];
      [v22 floatValue];

      v23 = [v11 objectAtIndex:2];
      [v23 floatValue];

      v24 = [v11 objectAtIndex:3];
      [v24 floatValue];

      PDFRectMake();
      v91 = v25;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = [v12 objectAtIndex:0];
      [v32 floatValue];
      v34 = v33;

      v35 = [v12 objectAtIndex:1];
      [v35 floatValue];
      v37 = v36;

      v38 = [v12 objectAtIndex:2];
      [v38 floatValue];
      v40 = v39;

      v41 = [v12 objectAtIndex:3];
      [v41 floatValue];
      v43 = v42;

      v44 = [a1[6] objectForKey:@"zoomScale"];
      [v44 floatValue];
      v46 = v45;

      [v96 updatePDFViewLayout:v95 scrollViewFrame:v94 safeAreaInsets:v93 zoomScale:{v92, v91, v27, v29, v31, *&v34, *&v37, *&v40, *&v43, *&v46}];
    }

    goto LABEL_26;
  }

  if ([a1[5] isEqualToString:@"setMinimumZoomScale"])
  {
    v47 = [a1[6] objectForKey:@"minimumZoomScale"];
    [v47 floatValue];
    v49 = v48;

    [v96 setMinimumZoomScale:v49];
  }

  else if ([a1[5] isEqualToString:@"setMaximumZoomScale"])
  {
    v50 = [a1[6] objectForKey:@"maximumZoomScale"];
    [v50 floatValue];
    v52 = v51;

    [v96 setMaximumZoomScale:v52];
  }

  else if ([a1[5] isEqualToString:@"handleGesture"])
  {
    v53 = [a1[6] objectForKey:@"gestureType"];
    v54 = [v53 integerValue];

    v55 = [a1[6] objectForKey:@"state"];
    v56 = [v55 integerValue];

    v57 = *MEMORY[0x1E695EFF8];
    v58 = *(MEMORY[0x1E695EFF8] + 8);
    v59 = [a1[6] objectForKey:@"location"];
    v60 = v58;
    v61 = v57;
    if ([v59 count] == 2)
    {
      v62 = [v59 objectAtIndex:0];
      [v62 floatValue];

      v63 = [v59 objectAtIndex:1];
      [v63 floatValue];

      PDFPointMake();
      v61 = v64;
      v60 = v65;
    }

    v66 = [a1[6] objectForKey:@"locationOfFirstTouch"];
    if ([v66 count] == 2)
    {
      v67 = [v66 objectAtIndex:0];
      [v67 floatValue];

      v68 = [v66 objectAtIndex:1];
      [v68 floatValue];

      PDFPointMake();
      v57 = v69;
      v58 = v70;
    }

    v71 = [a1[6] objectForKey:@"isIndirectTouch"];
    v72 = [v71 BOOLValue];

    [v96 handleGesture:v54 state:v56 location:v72 locationOfFirstTouch:v61 isIndirectTouch:{v60, v57, v58}];
  }

  else
  {
    if ([a1[5] isEqualToString:@"snapshotViewRect"])
    {
      v3 = [a1[6] objectForKey:@"rect"];
      v73 = [v3 objectAtIndex:0];
      [v73 floatValue];
      v75 = v74;
      v76 = [v3 objectAtIndex:1];
      [v76 floatValue];
      v78 = v77;
      v79 = [v3 objectAtIndex:2];
      [v79 floatValue];
      v81 = v80;
      v82 = [v3 objectAtIndex:3];
      [v82 floatValue];
      v84 = v83;

      v11 = [a1[6] objectForKey:@"width"];
      v85 = [a1[6] objectForKey:@"afterScreenUpdates"];
      [v11 floatValue];
      [v96 snapshotViewRect:objc_msgSend(v85 forWidth:"BOOLValue") afterScreenUpdates:{v75, v78, v81, v84, v86}];

LABEL_26:
      goto LABEL_6;
    }

    if ([a1[5] isEqualToString:@"copy"])
    {
      [v96 copy];
    }

    else if ([a1[5] isEqualToString:@"selectAll"])
    {
      [v96 selectAll];
    }

    else
    {
      if ([a1[5] isEqualToString:@"unlockWithPassword"])
      {
        v2 = [a1[6] objectForKey:@"password"];
        [v96 unlockWithPassword:v2];
        goto LABEL_3;
      }

      if ([a1[5] isEqualToString:@"teardown"])
      {
        [a1[4] completeRequestReturningItems:0 completionHandler:0];
      }

      else
      {
        if ([a1[5] isEqualToString:@"pointerRegionForLocation"])
        {
          v2 = [a1[6] objectForKey:@"location"];
          if ([v2 count] == 2)
          {
            v87 = [v2 objectAtIndex:0];
            [v87 floatValue];

            v88 = [v2 objectAtIndex:1];
            [v88 floatValue];

            PDFPointMake();
          }

          else
          {
            v89 = *MEMORY[0x1E695EFF8];
            v90 = *(MEMORY[0x1E695EFF8] + 8);
          }

          [v96 pointerRegionForLocation:{v89, v90}];
          goto LABEL_3;
        }

        if ([a1[5] isEqualToString:@"setUseIOSurfaceForTiles"])
        {
          v2 = [a1[6] objectForKey:@"value"];
          +[PDFView setUseIOSurfaceForTiles:](PDFView, "setUseIOSurfaceForTiles:", [v2 BOOLValue]);
          goto LABEL_3;
        }

        NSLog(&cfstr_UnsuportedHost.isa, a1[5]);
      }
    }
  }

LABEL_17:
}

- (PDFExtensionViewController)extensionViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionViewController);

  return WeakRetained;
}

@end