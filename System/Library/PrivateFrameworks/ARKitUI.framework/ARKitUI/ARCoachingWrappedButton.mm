@interface ARCoachingWrappedButton
- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ARCoachingWrappedButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = ARCoachingWrappedButton;
  [(ARCoachingWrappedButton *)&v6 setHighlighted:?];
  wrapperButton = [(ARCoachingWrappedButton *)self wrapperButton];
  [wrapperButton setHighlighted:highlightedCopy];
}

- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event
{
  eventCopy = event;
  toCopy = to;
  wrapperButton = [(ARCoachingWrappedButton *)self wrapperButton];
  [wrapperButton sendAction:action to:toCopy forEvent:eventCopy];
}

@end