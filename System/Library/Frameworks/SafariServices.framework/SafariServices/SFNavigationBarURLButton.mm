@interface SFNavigationBarURLButton
@end

@implementation SFNavigationBarURLButton

void __110___SFNavigationBarURLButton__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = WBS_LOG_CHANNEL_PREFIXPencilInput(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __110___SFNavigationBarURLButton__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) textFieldForNavigationBarURLButton:*(a1 + 40)];
  (*(v5 + 16))(v5, v6);
}

@end