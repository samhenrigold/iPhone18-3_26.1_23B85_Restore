@interface UITextFieldDrawingBackgroundProvider
@end

@implementation UITextFieldDrawingBackgroundProvider

void __54___UITextFieldDrawingBackgroundProvider_drawInBounds___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_VisualizeMaterials_block_invoke___s_category_4) + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = v1;
    v3 = 138412290;
    v4 = objc_opt_class();
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "%@ does not implement -drawInBounds:, and it should!", &v3, 0xCu);
  }
}

@end