@interface UIAccessibilityHandleValidationErrorWithDescription
@end

@implementation UIAccessibilityHandleValidationErrorWithDescription

void ____UIAccessibilityHandleValidationErrorWithDescription_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = AXShouldLogValidationErrors(a1, a2);
  if (v2)
  {
    v3 = AXLogValidations(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_19159B000, v3, OS_LOG_TYPE_ERROR, "UIAccessibility validation error: see log output above.", v4, 2u);
    }
  }

  abort();
}

@end