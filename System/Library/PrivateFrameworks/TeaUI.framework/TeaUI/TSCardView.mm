@interface TSCardView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)toggleExpansion;
@end

@implementation TSCardView

- (void)layoutSubviews
{
  selfCopy = self;
  CardView.layoutSubviews()();
}

- (void)toggleExpansion
{
  selfCopy = self;
  CardView.toggleExpansion()();
}

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_1D8190F14();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  CardView.accessibilityLabel.setter(selfCopy, v5);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = CardView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(selfCopy, gestureRecognizerCopy);

  return v9;
}

@end