@interface InCallControlButton
- (BOOL)isEnabled;
- (BOOL)isHighlighted;
- (BOOL)isSelected;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation InCallControlButton

- (BOOL)isSelected
{
  selfCopy = self;
  v3 = InCallControlButton.isSelected.getter();

  return v3 & 1;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  selfCopy = self;
  InCallControlButton.isSelected.setter(selectedCopy);
}

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = InCallControlButton.isHighlighted.getter();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  selfCopy = self;
  InCallControlButton.isHighlighted.setter(highlightedCopy);
}

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = InCallControlButton.isEnabled.getter();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  InCallControlButton.isEnabled.setter(enabledCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  InCallControlButton.layoutSubviews()();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v9 = InCallControlButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(selfCopy, __PAIR128__(v8, v7));

  return v9;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  selfCopy = self;
  v14 = InCallControlButton.pointerInteraction(_:regionFor:defaultRegion:)(interactionCopy, v12, v13);

  return v14;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v10 = InCallControlButton.pointerInteraction(_:styleFor:)(interactionCopy, v9);

  return v10;
}

@end