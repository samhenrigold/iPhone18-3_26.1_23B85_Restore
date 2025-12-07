@interface NTKMagmaButton
- (NTKMagmaButtonDelegate)delegate;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation NTKMagmaButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(NTKMagmaButton *)self isHighlighted];
  v7.receiver = self;
  v7.super_class = NTKMagmaButton;
  [(NTKMagmaButton *)&v7 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    delegate = [(NTKMagmaButton *)self delegate];
    [delegate buttonHighlightedChanged:highlightedCopy];
  }
}

- (NTKMagmaButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end