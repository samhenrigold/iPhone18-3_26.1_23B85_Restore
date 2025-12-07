@interface JavaNioChannelsSpiSelectorProvider
+ (id)loadProviderByJar;
+ (void)initialize;
@end

@implementation JavaNioChannelsSpiSelectorProvider

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssign(&qword_1005551A0, 0);
    atomic_store(1u, JavaNioChannelsSpiSelectorProvider__initialized);
  }
}

+ (id)loadProviderByJar
{
  if ((atomic_load_explicit(JavaNioChannelsSpiSelectorProvider__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10021C290();
  }

  memset(v4, 0, sizeof(v4));
  v0 = JavaNioChannelsSpiSelectorProvider_class_();
  v2 = JavaUtilServiceLoader_load__WithIOSClass_(v0, v1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilServiceLoader *)v2 countByEnumeratingWithState:v4 objects:v5 count:16];
  if (result)
  {
    return **(&v4[0] + 1);
  }

  return result;
}

@end