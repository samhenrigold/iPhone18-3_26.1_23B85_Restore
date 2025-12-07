@interface RawCameraCIImageProxy
- (RawCameraCIImageProxy)initWithRawImage:(shared_ptr<CRawImage>)image;
- (id).cxx_construct;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)proxyedObject;
- (shared_ptr<CRawImage>)rawImage;
- (void)forwardInvocation:(id)invocation;
@end

@implementation RawCameraCIImageProxy

- (id)proxyedObject
{
  objc_msgSend_rawImage(self, a2);
  if (v8)
  {
    ciImage = [(RawCameraCIImageProxy *)self ciImage];
    v4 = ciImage == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v9)
  {
    sub_2337239E8(v9);
  }

  if (v4)
  {
    v5 = sub_2337D2F6C(self->rawImage.__ptr_, 0);
    [(RawCameraCIImageProxy *)self setCiImage:v5];
  }

  ciImage2 = [(RawCameraCIImageProxy *)self ciImage];

  return ciImage2;
}

- (RawCameraCIImageProxy)initWithRawImage:(shared_ptr<CRawImage>)image
{
  if (self)
  {
    v4 = *(image.__ptr_ + 1);
    v6 = *image.__ptr_;
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(RawCameraCIImageProxy *)self setRawImage:&v6, image.__cntrl_];
    if (v7)
    {
      sub_2337239E8(v7);
    }
  }

  return self;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  proxyedObject = [(RawCameraCIImageProxy *)self proxyedObject];
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    [invocationCopy invokeWithTarget:proxyedObject];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = RawCameraCIImageProxy;
    [(RawCameraCIImageProxy *)&v6 forwardInvocation:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  proxyedObject = [(RawCameraCIImageProxy *)self proxyedObject];
  v5 = [proxyedObject methodSignatureForSelector:selector];

  return v5;
}

- (shared_ptr<CRawImage>)rawImage
{
  objc_copyCppObjectAtomic(v2, &self->rawImage, sub_2337819B4);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end