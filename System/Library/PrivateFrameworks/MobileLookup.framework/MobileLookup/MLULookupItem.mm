@interface MLULookupItem
- (BOOL)_resolveAttachments:(id)attachments currentAttachmentIndex:(unint64_t)index;
- (BOOL)_resolveText:(id)text focusRange:(_NSRange)range;
- (BOOL)_resolveURL:(id)l DDResult:(__DDResult *)result focusRange:(_NSRange)range;
- (BOOL)resolve;
- (MLULookupItem)initWithAttachments:(id)attachments currentAttachment:(unint64_t)attachment;
- (MLULookupItem)initWithURL:(id)l dataDetectorsResult:(__DDResult *)result text:(id)text range:(_NSRange)range;
- (_NSRange)proposedRange;
- (id)viewControllerToPresent;
- (unint64_t)commitType;
- (void)commit;
- (void)commitWithTransitionForPreviewViewController:(id)controller inViewController:(id)viewController completion:(id)completion;
- (void)dealloc;
@end

@implementation MLULookupItem

- (void)dealloc
{
  ddResult = self->_ddResult;
  if (ddResult)
  {
    CFRelease(ddResult);
    self->_ddResult = 0;
  }

  v4.receiver = self;
  v4.super_class = MLULookupItem;
  [(MLULookupItem *)&v4 dealloc];
}

- (MLULookupItem)initWithAttachments:(id)attachments currentAttachment:(unint64_t)attachment
{
  attachmentsCopy = attachments;
  v11.receiver = self;
  v11.super_class = MLULookupItem;
  v7 = [(MLULookupItem *)&v11 init];
  if (v7)
  {
    if (attachment == 0x7FFFFFFFFFFFFFFFLL || [attachmentsCopy count] <= attachment)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MLULookupItem initWithAttachments:attachmentsCopy currentAttachment:attachment];
      }

      attachments = v7->_attachments;
      v7->_attachments = 0;
      attachment = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = attachmentsCopy;
      attachments = v7->_attachments;
      v7->_attachments = v8;
    }

    v7->_currentAttachmentIndex = attachment;
  }

  return v7;
}

- (MLULookupItem)initWithURL:(id)l dataDetectorsResult:(__DDResult *)result text:(id)text range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  lCopy = l;
  textCopy = text;
  v16.receiver = self;
  v16.super_class = MLULookupItem;
  v14 = [(MLULookupItem *)&v16 init];
  if (v14)
  {
    if (result)
    {
      CFRetain(result);
      v14->_ddResult = result;
    }

    objc_storeStrong(&v14->_url, l);
    objc_storeStrong(&v14->_text, text);
    v14->_focusRange.location = location;
    v14->_focusRange.length = length;
    v14->_proposedRange.location = location;
    v14->_proposedRange.length = length;
  }

  return v14;
}

- (BOOL)_resolveAttachments:(id)attachments currentAttachmentIndex:(unint64_t)index
{
  v29 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  v7 = [attachmentsCopy objectAtIndexedSubscript:index];
  v8 = MEMORY[0x277CDAA58];
  v9 = [attachmentsCopy objectAtIndexedSubscript:index];
  v10 = [v8 canPreviewItem:v9];

  if (v10)
  {
    v23 = v7;
    v11 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = attachmentsCopy;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          if ([MEMORY[0x277CDAA58] canPreviewItem:v17])
          {
            [(NSArray *)v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    attachments = self->_attachments;
    self->_attachments = v11;
    v19 = v11;

    v7 = v23;
    v20 = [(NSArray *)v19 indexOfObject:v23];
    self->_currentAttachmentIndex = v20;
    v21 = [MLULookupItemContent contentWithAttachments:self->_attachments currentAttachmentIndex:v20];

    [(MLULookupItem *)self setPreviewContent:v21];
  }

  return v10;
}

- (BOOL)_resolveURL:(id)l DDResult:(__DDResult *)result focusRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  lCopy = l;
  documentProperties = [(MLULookupItem *)self documentProperties];
  v11 = [MLULookupItemContent contentWithURL:lCopy result:result documentProperties:documentProperties];

  if (v11)
  {
    v13.length = [(NSString *)self->_text length];
    v13.location = 0;
    v14.location = location;
    v14.length = length;
    self->_proposedRange = NSIntersectionRange(v13, v14);
    [(MLULookupItem *)self setPreviewContent:v11];
  }

  return v11 != 0;
}

- (BOOL)_resolveText:(id)text focusRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  if (![(NSString *)self->_text length])
  {
    v20 = 0;
    goto LABEL_22;
  }

  v8 = DDScannerCreate();
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  DDScannerScanString();
  v10 = DDScannerCopyResultsWithOptions();
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  Count = CFArrayGetCount(v10);
  if (Count < 1)
  {
    CFRelease(v11);
LABEL_18:
    CFRelease(v9);
    goto LABEL_19;
  }

  v13 = Count;
  v14 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v14 - 1);
    Range = DDResultGetRange();
    v19 = Range + v17 >= location && Range < location + length && [(MLULookupItem *)self _resolveURL:0 DDResult:ValueAtIndex focusRange:Range, v17];
    if (v14 >= v13)
    {
      break;
    }

    ++v14;
  }

  while (!v19);
  CFRelease(v11);
  CFRelease(v9);
  if (v19)
  {
    v20 = 1;
    goto LABEL_22;
  }

LABEL_19:
  v21 = [MLULookupItemContent contentWithText:textCopy range:location, length];
  v20 = v21 != 0;
  if (v21)
  {
    [(MLULookupItem *)self setPreviewContent:v21];
  }

LABEL_22:
  return v20;
}

- (BOOL)resolve
{
  if (self->_resolved)
  {
    return 0;
  }

  self->_resolved = 1;
  if (self->_attachments && self->_currentAttachmentIndex != 0x7FFFFFFFFFFFFFFFLL && [MLULookupItem _resolveAttachments:"_resolveAttachments:currentAttachmentIndex:" currentAttachmentIndex:?])
  {
    return 1;
  }

  if (*&self->_url != 0)
  {
    if (![MLULookupItem _resolveURL:"_resolveURL:DDResult:focusRange:" DDResult:? focusRange:?])
    {
      if (self->_ddResult && !self->_text)
      {
        v4 = DDResultGetMatchedString();
        text = self->_text;
        self->_text = v4;

        v6 = [(NSString *)self->_text length];
        self->_focusRange.location = 0;
        self->_focusRange.length = v6;
      }

      goto LABEL_7;
    }

    return 1;
  }

LABEL_7:
  if (!self->_text)
  {
    return 0;
  }

  return [MLULookupItem _resolveText:"_resolveText:focusRange:" focusRange:?];
}

- (_NSRange)proposedRange
{
  length = self->_proposedRange.length;
  location = self->_proposedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)viewControllerToPresent
{
  previewContent = [(MLULookupItem *)self previewContent];
  previewViewController = [previewContent previewViewController];

  return previewViewController;
}

- (void)commit
{
  previewContent = [(MLULookupItem *)self previewContent];
  viewControllerToPresent = [(MLULookupItem *)self viewControllerToPresent];
  presentingViewController = [viewControllerToPresent presentingViewController];
  [previewContent commitPreviewInController:presentingViewController];
}

- (unint64_t)commitType
{
  previewContent = [(MLULookupItem *)self previewContent];
  commitType = [previewContent commitType];

  return commitType;
}

- (void)commitWithTransitionForPreviewViewController:(id)controller inViewController:(id)viewController completion:(id)completion
{
  v59 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  completionCopy = completion;
  [(MLULookupItem *)self commit];
  view = [viewControllerCopy view];
  window = [view window];

  v12 = objc_alloc(MEMORY[0x277D75D18]);
  [window bounds];
  v13 = [v12 initWithFrame:?];
  v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
  [v13 setBackgroundColor:v14];

  [v13 setUserInteractionEnabled:0];
  [window addSubview:v13];
  v15 = [MLUBlurryView alloc];
  [window bounds];
  v16 = [(MLUBlurryView *)v15 initWithFrame:?];
  [(MLUBlurryView *)v16 setUserInteractionEnabled:0];
  [window addSubview:v16];
  view2 = [controllerCopy view];
  v43 = viewControllerCopy;
  v44 = controllerCopy;
  v41 = v13;
  if (view2)
  {
    do
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v19 containsString:@"_UIPreviewPresentationContainerView"];

      if (v20)
      {
        break;
      }

      superview = [view2 superview];

      view2 = superview;
    }

    while (superview);
  }

  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v54 = 0u;
  superview2 = [view2 superview];
  v22Superview = [superview2 superview];
  subviews = [v22Superview subviews];

  v25 = [subviews countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v40 = window;
    v27 = *v55;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(subviews);
        }

        v29 = *(*(&v54 + 1) + 8 * i);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [v31 containsString:@"UIImageView"];

        if (v32)
        {
          v33 = v29;
          goto LABEL_14;
        }
      }

      v26 = [subviews countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

    v33 = 0;
LABEL_14:
    window = v40;
  }

  else
  {
    v33 = 0;
  }

  v34 = [view2 snapshotViewAfterScreenUpdates:0];
  [(MLUBlurryView *)v16 addSubview:v34];
  [view2 setHidden:1];
  [v33 setHidden:1];
  v35 = MEMORY[0x277D75D18];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke;
  v50[3] = &unk_2798EB340;
  v51 = v16;
  v52 = v34;
  v53 = v41;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_7;
  v45[3] = &unk_2798EB368;
  v46 = v52;
  v47 = v51;
  v48 = v53;
  v49 = completionCopy;
  v36 = v52;
  v37 = v51;
  v38 = v53;
  v39 = completionCopy;
  [v35 animateKeyframesWithDuration:0 delay:v50 options:v45 animations:0.4 completion:0.0];
}

void __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke(id *a1)
{
  v2 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_2;
  v15[3] = &unk_2798EB318;
  v16 = a1[4];
  [v2 addKeyframeWithRelativeStartTime:v15 relativeDuration:0.0 animations:0.1];
  v3 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_3;
  v13[3] = &unk_2798EB318;
  v14 = a1[4];
  [v3 addKeyframeWithRelativeStartTime:v13 relativeDuration:0.1 animations:1.0];
  v4 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_4;
  v11[3] = &unk_2798EB318;
  v12 = a1[4];
  [v4 addKeyframeWithRelativeStartTime:v11 relativeDuration:0.0 animations:0.8];
  v5 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_5;
  v9[3] = &unk_2798EB318;
  v10 = a1[5];
  [v5 addKeyframeWithRelativeStartTime:v9 relativeDuration:0.3 animations:0.7];
  v6 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_6;
  v7[3] = &unk_2798EB318;
  v8 = a1[6];
  [v6 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.0 animations:0.2];
}

void __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  CATransform3DMakeScale(&v2, 1.10000002, 1.10000002, 1.0);
  [v1 setTransform:&v2];
}

void __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  CATransform3DMakeScale(&v2, 1.5, 1.5, 1.0);
  [v1 setTransform:&v2];
}

uint64_t __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_7(uint64_t a1)
{
  usleep(0x7A120u);
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)initWithAttachments:(void *)a1 currentAttachment:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218240;
  v3 = a2;
  v4 = 2048;
  v5 = [a1 count];
  _os_log_error_impl(&dword_259AFE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Inconsistent attachment index in [MLULookupItem initWithAttachments:currentAttachment:] index %ld is not in the array range (array size = %ld)", &v2, 0x16u);
}

@end