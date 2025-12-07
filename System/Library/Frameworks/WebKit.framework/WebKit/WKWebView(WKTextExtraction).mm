@interface WKWebView(WKTextExtraction)
- (uint64_t)_requestTextExtraction:()WKTextExtraction completionHandler:;
@end

@implementation WKWebView(WKTextExtraction)

- (uint64_t)_requestTextExtraction:()WKTextExtraction completionHandler:
{
  WeakRetained = objc_loadWeakRetained((self + 16));
  v6 = WTF::fastMalloc(v5, 0x10);
  *v6 = &unk_1F10F9DB8;
  v6[1] = WeakRetained;
  v10 = v6;
  if (a2[80] || *a2)
  {
    v7 = 0;
  }

  else
  {
    WebKit::createItemRecursive(a2, &v10, &v11);
    v7 = v11;
  }

  (*(*(self + 8) + 16))(*(self + 8));
  if (v7)
  {
  }

  v8 = *(*v6 + 8);

  return v8(v6);
}

@end