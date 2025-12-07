@interface PortalView
- (BOOL)allowsBackdropGroups;
- (BOOL)hidesSourceView;
- (BOOL)matchesAlpha;
- (BOOL)matchesPosition;
- (BOOL)matchesTransform;
- (UIView)sourceView;
- (unint64_t)sourceLayerRenderId;
- (unsigned)sourceContextId;
- (void)setAllowsBackdropGroups:(BOOL)groups;
- (void)setHidesSourceView:(BOOL)view;
- (void)setMatchesAlpha:(BOOL)alpha;
- (void)setMatchesPosition:(BOOL)position;
- (void)setMatchesTransform:(BOOL)transform;
- (void)setSourceContextId:(unsigned int)id;
- (void)setSourceLayerRenderId:(unint64_t)id;
- (void)setSourceView:(id)view;
@end

@implementation PortalView

- (void)setSourceView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_sourceView, viewCopy);
  layer = [viewCopy layer];

  portalLayer = [(PortalView *)self portalLayer];
  [portalLayer setSourceLayer:layer];
}

- (BOOL)hidesSourceView
{
  portalLayer = [(PortalView *)self portalLayer];
  hidesSourceLayer = [portalLayer hidesSourceLayer];

  return hidesSourceLayer;
}

- (void)setHidesSourceView:(BOOL)view
{
  viewCopy = view;
  portalLayer = [(PortalView *)self portalLayer];
  [portalLayer setHidesSourceLayer:viewCopy];
}

- (BOOL)matchesAlpha
{
  portalLayer = [(PortalView *)self portalLayer];
  matchesOpacity = [portalLayer matchesOpacity];

  return matchesOpacity;
}

- (void)setMatchesAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  portalLayer = [(PortalView *)self portalLayer];
  [portalLayer setMatchesOpacity:alphaCopy];
}

- (BOOL)matchesTransform
{
  portalLayer = [(PortalView *)self portalLayer];
  matchesTransform = [portalLayer matchesTransform];

  return matchesTransform;
}

- (void)setMatchesTransform:(BOOL)transform
{
  transformCopy = transform;
  portalLayer = [(PortalView *)self portalLayer];
  [portalLayer setMatchesTransform:transformCopy];
}

- (BOOL)matchesPosition
{
  portalLayer = [(PortalView *)self portalLayer];
  matchesPosition = [portalLayer matchesPosition];

  return matchesPosition;
}

- (void)setMatchesPosition:(BOOL)position
{
  positionCopy = position;
  portalLayer = [(PortalView *)self portalLayer];
  [portalLayer setMatchesPosition:positionCopy];
}

- (BOOL)allowsBackdropGroups
{
  portalLayer = [(PortalView *)self portalLayer];
  allowsBackdropGroups = [portalLayer allowsBackdropGroups];

  return allowsBackdropGroups;
}

- (void)setAllowsBackdropGroups:(BOOL)groups
{
  groupsCopy = groups;
  portalLayer = [(PortalView *)self portalLayer];
  [portalLayer setAllowsBackdropGroups:groupsCopy];
}

- (void)setSourceContextId:(unsigned int)id
{
  v3 = *&id;
  portalLayer = [(PortalView *)self portalLayer];
  [portalLayer setSourceContextId:v3];
}

- (unsigned)sourceContextId
{
  portalLayer = [(PortalView *)self portalLayer];
  sourceContextId = [portalLayer sourceContextId];

  return sourceContextId;
}

- (void)setSourceLayerRenderId:(unint64_t)id
{
  portalLayer = [(PortalView *)self portalLayer];
  [portalLayer setSourceLayerRenderId:id];
}

- (unint64_t)sourceLayerRenderId
{
  portalLayer = [(PortalView *)self portalLayer];
  sourceLayerRenderId = [portalLayer sourceLayerRenderId];

  return sourceLayerRenderId;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end