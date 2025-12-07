@interface UnRegisterThemeRef
@end

@implementation UnRegisterThemeRef

void ___UnRegisterThemeRef_block_invoke(uint64_t a1, NSMapTable *table)
{
  v4 = NSMapGet(table, *(a1 + 32));
  v5 = v4;
  NSMapRemove(table, *(a1 + 32));
  _CUILog(3, "CoreUI: CUIThemeStore unregister themeRef %d", *(a1 + 32));
  v6 = CUIGetThemeCleanupQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___UnRegisterThemeRef_block_invoke_2;
  block[3] = &unk_1E7251540;
  block[4] = v4;
  dispatch_async(v6, block);
}

@end