@interface UICABackdropLayer
- (void)setValue:(id)value forKeyPath:(id)path;
@end

@implementation UICABackdropLayer

- (void)setValue:(id)value forKeyPath:(id)path
{
  valueCopy = value;
  pathCopy = path;
  v8 = [(UICABackdropLayer *)self valueForKeyPath:pathCopy];
  if ((objc_msgSend_isEqual_(v8) & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = UICABackdropLayer;
    [(UICABackdropLayer *)&v9 setValue:valueCopy forKeyPath:pathCopy];
  }
}

@end