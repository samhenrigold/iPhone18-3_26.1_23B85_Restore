@interface _NTKEFaceChoiceHighlightButton
- (_NTKEFaceChoiceHighlightButtonDelegate)delegate;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation _NTKEFaceChoiceHighlightButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = _NTKEFaceChoiceHighlightButton;
  [(_NTKEFaceChoiceHighlightButton *)&v6 setHighlighted:?];
  delegate = [(_NTKEFaceChoiceHighlightButton *)self delegate];
  [delegate button:self didHighlight:highlightedCopy];
}

- (_NTKEFaceChoiceHighlightButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end