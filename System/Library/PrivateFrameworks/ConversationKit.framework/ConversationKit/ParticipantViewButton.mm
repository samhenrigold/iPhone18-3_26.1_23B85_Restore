@interface ParticipantViewButton
- (BOOL)isEnabled;
- (BOOL)isHighlighted;
- (BOOL)isSelected;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation ParticipantViewButton

- (BOOL)isSelected
{
  selfCopy = self;
  v3 = ParticipantViewButton.isSelected.getter();

  return v3 & 1;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  selfCopy = self;
  ParticipantViewButton.isSelected.setter(selectedCopy);
}

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = ParticipantViewButton.isHighlighted.getter();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  selfCopy = self;
  ParticipantViewButton.isHighlighted.setter(highlightedCopy);
}

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = ParticipantViewButton.isEnabled.getter();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  ParticipantViewButton.isEnabled.setter(enabledCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  ParticipantViewButton.layoutSubviews()();
}

@end