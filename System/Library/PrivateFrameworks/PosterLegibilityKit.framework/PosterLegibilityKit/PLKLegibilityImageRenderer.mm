@interface PLKLegibilityImageRenderer
- (id)renderLegibilityImageDecoratingImage:(id)image actions:(id)actions;
- (id)renderLegibilityImageForImage:(id)image legibilityDescriptor:(id)descriptor;
@end

@implementation PLKLegibilityImageRenderer

- (id)renderLegibilityImageForImage:(id)image legibilityDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  v6 = [PLKLegibilityImageRenderer renderLegibilityImageDecoratingImage:"renderLegibilityImageDecoratingImage:actions:" actions:?];

  return v6;
}

void __81__PLKLegibilityImageRenderer_renderLegibilityImageForImage_legibilityDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 background];
  [v4 plk_renderWithContext:?];
}

- (id)renderLegibilityImageDecoratingImage:(id)image actions:(id)actions
{
  imageCopy = image;
  actionsCopy = actions;
  v8 = actionsCopy;
  if (imageCopy && actionsCopy)
  {
    if (renderLegibilityImageDecoratingImage_actions__onceToken != -1)
    {
      [PLKLegibilityImageRenderer renderLegibilityImageDecoratingImage:actions:];
    }

    v9 = PLKLogRendering(actionsCopy);
    v10 = v9;
    v11 = renderLegibilityImageDecoratingImage_actions__signpostID;
    if ((renderLegibilityImageDecoratingImage_actions__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21E5D5000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PLK:renderLegibilityImageDecoratingImage:actions:", &unk_21E5F550D, buf, 2u);
    }

    format = [(UIGraphicsRenderer *)self format];
    [format bounds];
    [imageCopy size];
    BSRectWithSize();
    UIRectCenteredRect();
    v18 = MEMORY[0x277D85DD0];
    v19 = imageCopy;
    v20 = v8;
    v13 = [(PLKImageRenderer *)self imageWithActions:v18, 3221225472, __75__PLKLegibilityImageRenderer_renderLegibilityImageDecoratingImage_actions___block_invoke_2, &unk_27835B8E0];
    v14 = PLKLogRendering(v13);
    v15 = v14;
    v16 = renderLegibilityImageDecoratingImage_actions__signpostID;
    if ((renderLegibilityImageDecoratingImage_actions__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21E5D5000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PLK:renderLegibilityImageDecoratingImage:actions:", &unk_21E5F550D, buf, 2u);
    }
  }

  else
  {
    v13 = objc_opt_new();
  }

  return v13;
}

void __75__PLKLegibilityImageRenderer_renderLegibilityImageDecoratingImage_actions___block_invoke(uint64_t a1)
{
  v1 = PLKLogRendering(a1);
  renderLegibilityImageDecoratingImage_actions__signpostID = os_signpost_id_generate(v1);
}

void __75__PLKLegibilityImageRenderer_renderLegibilityImageDecoratingImage_actions___block_invoke_2(double *a1, void *a2)
{
  v3 = a2;
  [v3 setContentRect:?];
  [v3 setOverrideCurrentImage:?];
  (*(*(a1 + 5) + 16))();
  [v3 setOverrideCurrentImage:?];
}

@end