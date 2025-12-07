@interface PDFHostExtensionContext
- (PDFHostViewController)hostViewController;
- (void)extensionSnapshotToHost:(id)host scale:(double)scale;
- (void)extensionToHost:(id)host;
@end

@implementation PDFHostExtensionContext

- (void)extensionToHost:(id)host
{
  hostCopy = host;
  v5 = [hostCopy objectForKey:@"function"];
  v6 = v5;
  if (v5 && [v5 length])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PDFHostExtensionContext_extensionToHost___block_invoke;
    block[3] = &unk_1E8151480;
    block[4] = self;
    v8 = v6;
    v9 = hostCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __43__PDFHostExtensionContext_extensionToHost___block_invoke(id *a1)
{
  v110 = [a1[4] hostViewController];
  if ([a1[5] isEqualToString:@"setupDocumentViewSize"])
  {
    v2 = [a1[6] objectForKey:@"documentViewSize"];
    if ([v2 count] == 2)
    {
      v3 = [v2 objectAtIndex:0];
      [v3 floatValue];
      v4 = [v2 objectAtIndex:1];
      [v4 floatValue];
      PDFSizeMake();
      v6 = v5;
      v8 = v7;

      [v110 setupDocumentViewSize:{v6, v8}];
    }

    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"updateDocumentViewSize"])
  {
    [v110 updateDocumentViewSize];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"documentIsLocked"])
  {
    v9 = [a1[6] objectForKey:@"isLocked"];
    v10 = [v9 BOOLValue];

    [v110 documentIsLocked:v10];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"updateDocumentIsLocked"])
  {
    v11 = [a1[6] objectForKey:@"isLocked"];
    v12 = [v11 BOOLValue];

    [v110 updateDocumentIsLocked:v12];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"findStringUpdate"])
  {
    v13 = [a1[6] objectForKey:@"numFound"];
    v14 = [v13 integerValue];

    v15 = [a1[6] objectForKey:@"done"];
    v16 = [v15 BOOLValue];

    [v110 findStringUpdate:v14 done:v16];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"goToPage"])
  {
    v17 = [a1[6] objectForKey:@"pageIndex"];
    v18 = [v17 integerValue];

    v2 = [a1[6] objectForKey:@"pageFrame"];
    if ([v2 count] == 4)
    {
      v19 = [v2 objectAtIndex:0];
      [v19 floatValue];

      v20 = [v2 objectAtIndex:1];
      [v20 floatValue];

      v21 = [v2 objectAtIndex:2];
      [v21 floatValue];

      v22 = [v2 objectAtIndex:3];
      [v22 floatValue];

      PDFRectMake();
      [v110 goToPageIndex:v18 pageFrame:?];
    }

    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"goToDestination"])
  {
    v23 = [a1[6] objectForKey:@"pageIndex"];
    v24 = [v23 integerValue];

    v2 = [a1[6] objectForKey:@"point"];
    if ([v2 count] == 2)
    {
      v25 = [v2 objectAtIndex:0];
      [v25 floatValue];

      v26 = [v2 objectAtIndex:1];
      [v26 floatValue];

      PDFPointMake();
      [v110 goToDestination:v24 point:?];
    }

    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"zoomToRect"])
  {
    v2 = [a1[6] objectForKey:@"visibleRect"];
    if ([v2 count] == 4)
    {
      v27 = [v2 objectAtIndex:0];
      [v27 floatValue];

      v28 = [v2 objectAtIndex:1];
      [v28 floatValue];

      v29 = [v2 objectAtIndex:2];
      [v29 floatValue];

      v30 = [v2 objectAtIndex:3];
      [v30 floatValue];

      PDFRectMake();
      [v110 zoomToRect:?];
    }

    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"showSelectionRect"])
  {
    v2 = [a1[6] objectForKey:@"selectionRect"];
    if ([v2 count] == 4)
    {
      v31 = [v2 objectAtIndex:0];
      [v31 floatValue];

      v32 = [v2 objectAtIndex:1];
      [v32 floatValue];

      v33 = [v2 objectAtIndex:2];
      [v33 floatValue];

      v34 = [v2 objectAtIndex:3];
      [v34 floatValue];

      PDFRectMake();
      [v110 showSelectionRect:?];
    }

    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"updateCurrentPageIndex"])
  {
    v35 = [a1[6] objectForKey:@"pageIndex"];
    v36 = [v35 integerValue];

    [v110 updateCurrentPageIndex:v36];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"updatePageCount"])
  {
    v37 = [a1[6] objectForKey:@"pageCount"];
    v38 = [v37 integerValue];

    [v110 updatePageCount:v38];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"setHasSelection"])
  {
    v39 = [a1[6] objectForKey:@"hasSelection"];
    v40 = [v39 BOOLValue];

    [v110 setHasSelection:v40];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"setTextSelectionPoints"])
  {
    v41 = *MEMORY[0x1E695EFF8];
    v42 = *(MEMORY[0x1E695EFF8] + 8);
    v43 = [a1[6] objectForKey:@"topLeftSelectionPoint"];
    v44 = v42;
    v45 = v41;
    if ([v43 count] == 2)
    {
      v46 = [v43 objectAtIndex:0];
      [v46 floatValue];

      v47 = [v43 objectAtIndex:1];
      [v47 floatValue];

      PDFPointMake();
      v45 = v48;
      v44 = v49;
    }

    v50 = [a1[6] objectForKey:@"bottomRightSelectionPoint"];
    if ([v50 count] == 2)
    {
      v51 = [v50 objectAtIndex:0];
      [v51 floatValue];

      v52 = [v50 objectAtIndex:1];
      [v52 floatValue];

      PDFPointMake();
      v41 = v53;
      v42 = v54;
    }

    [v110 setTextSelectionPoints:v45 right:{v44, v41, v42}];
    goto LABEL_40;
  }

  if ([a1[5] isEqualToString:@"showTextSelectionMenu"])
  {
    v55 = [a1[6] objectForKey:@"visible"];
    v56 = [v55 BOOLValue];

    v2 = [a1[6] objectForKey:@"selectionRect"];
    if ([v2 count] == 4)
    {
      v57 = [v2 objectAtIndex:0];
      [v57 floatValue];

      v58 = [v2 objectAtIndex:1];
      [v58 floatValue];

      v59 = [v2 objectAtIndex:2];
      [v59 floatValue];

      v60 = [v2 objectAtIndex:3];
      [v60 floatValue];

      PDFRectMake();
    }

    else
    {
      v61 = *MEMORY[0x1E695F058];
      v62 = *(MEMORY[0x1E695F058] + 8);
      v63 = *(MEMORY[0x1E695F058] + 16);
      v64 = *(MEMORY[0x1E695F058] + 24);
    }

    [v110 showTextSelectionMenu:v56 selectionRect:{v61, v62, v63, v64}];
    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"didCopy"])
  {
    v2 = [a1[6] objectForKey:@"items"];
    [v110 didCopy:v2];
LABEL_4:

    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"goToURL"])
  {
    v43 = [a1[6] objectForKey:@"location"];
    if ([v43 count] != 2)
    {
      goto LABEL_41;
    }

    v65 = [v43 objectAtIndex:0];
    [v65 floatValue];

    v66 = [v43 objectAtIndex:1];
    [v66 floatValue];

    PDFPointMake();
    v68 = v67;
    v70 = v69;
    v50 = [a1[6] objectForKey:@"urlString"];
    v71 = [MEMORY[0x1E695DFF8] URLWithString:v50];
    [v110 goToURL:v71 atLocation:{v68, v70}];
    goto LABEL_64;
  }

  if ([a1[5] isEqualToString:@"didLongPressLink"])
  {
    v43 = [a1[6] objectForKey:@"location"];
    v72 = [a1[6] objectForKey:@"annotationRect"];
    if ([v43 count] == 2 && objc_msgSend(v72, "count") == 4)
    {
      v73 = [v43 objectAtIndex:0];
      [v73 floatValue];

      v74 = [v43 objectAtIndex:1];
      [v74 floatValue];

      PDFPointMake();
      v76 = v75;
      v78 = v77;
      v79 = [v72 objectAtIndex:0];
      [v79 floatValue];

      v80 = [v72 objectAtIndex:1];
      [v80 floatValue];

      v81 = [v72 objectAtIndex:2];
      [v81 floatValue];

      v82 = [v72 objectAtIndex:3];
      [v82 floatValue];

      PDFRectMake();
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v91 = [a1[6] objectForKey:@"urlString"];

      v92 = a1[6];
      if (v91)
      {
        v93 = [v92 objectForKey:@"urlString"];
        v94 = [MEMORY[0x1E695DFF8] URLWithString:v93];
        [v110 didLongPressURL:v94 atLocation:v76 withAnnotationRect:{v78, v84, v86, v88, v90}];
      }

      else
      {
        v107 = [v92 objectForKey:@"pageIndex"];

        if (v107)
        {
          v108 = [a1[6] objectForKey:@"pageIndex"];
          v109 = [v108 integerValue];

          [v110 didLongPressPageIndex:v109 atLocation:v76 withAnnotationRect:{v78, v84, v86, v88, v90}];
        }
      }
    }

    goto LABEL_41;
  }

  if ([a1[5] isEqualToString:@"pointerRegionForLocation"])
  {
    v43 = [a1[6] objectForKey:@"regionRect"];
    if ([v43 count] == 4)
    {
      v95 = [v43 objectAtIndex:0];
      [v95 floatValue];

      v96 = [v43 objectAtIndex:1];
      [v96 floatValue];

      v97 = [v43 objectAtIndex:2];
      [v97 floatValue];

      v98 = [v43 objectAtIndex:3];
      [v98 floatValue];

      PDFRectMake();
      v100 = v99;
      v102 = v101;
      v104 = v103;
      v106 = v105;
    }

    else
    {
      v100 = *MEMORY[0x1E695F058];
      v102 = *(MEMORY[0x1E695F058] + 8);
      v104 = *(MEMORY[0x1E695F058] + 16);
      v106 = *(MEMORY[0x1E695F058] + 24);
    }

    v50 = [a1[6] objectForKey:@"regionIdentifier"];
    v71 = [[PDFPointerRegion alloc] initWithRect:v50 identifier:v100, v102, v104, v106];
    [v110 completePointerInteractionRegionForRequest:v71];
LABEL_64:

LABEL_40:
LABEL_41:

    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"killExtensionProcess"])
  {
    [v110 killExtensionProcess];
  }

  else
  {
    NSLog(&cfstr_UnsuportedExte.isa, a1[5]);
  }

LABEL_13:
}

- (void)extensionSnapshotToHost:(id)host scale:(double)scale
{
  hostCopy = host;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PDFHostExtensionContext_extensionSnapshotToHost_scale___block_invoke;
  block[3] = &unk_1E8152188;
  scaleCopy = scale;
  v9 = hostCopy;
  selfCopy = self;
  v7 = hostCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57__PDFHostExtensionContext_extensionSnapshotToHost_scale___block_invoke(uint64_t a1)
{
  v2 = CGImageCreateFromIOSurface();
  if (v2)
  {
    v3 = v2;
    v5 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v2 scale:0 orientation:*(a1 + 48)];
    CGImageRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  v4 = [*(a1 + 40) hostViewController];
  [v4 recievedSnapshotViewRect:v5];
}

- (PDFHostViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

@end