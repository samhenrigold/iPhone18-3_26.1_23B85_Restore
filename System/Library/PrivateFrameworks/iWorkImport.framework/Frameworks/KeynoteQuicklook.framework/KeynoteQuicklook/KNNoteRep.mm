@interface KNNoteRep
- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)tap;
- (KNNoteRep)initWithLayout:(id)layout canvas:(id)canvas;
- (TSDContainerInfo)containerInfo;
- (double)columnHeight;
- (id)childReps;
- (void)dealloc;
- (void)storage:(id)storage didChangeRange:(_NSRange)range delta:(int64_t)delta broadcastKind:(unint64_t)kind;
- (void)updateChildrenFromLayout;
- (void)willBeginEditingContainedInfo:(id)info;
- (void)willEndEditingContainedInfo:(id)info;
@end

@implementation KNNoteRep

- (KNNoteRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v10.receiver = self;
  v10.super_class = KNNoteRep;
  v4 = [(TSDRep *)&v10 initWithLayout:layout canvas:canvas];
  v5 = v4;
  if (v4)
  {
    layout = [(TSDRep *)v4 layout];
    info = [layout info];
    containedStorage = [info containedStorage];

    if (containedStorage)
    {
      [containedStorage addObserver:v5];
    }
  }

  return v5;
}

- (void)dealloc
{
  [(TSWPRep *)self->_containedRep setParentRep:0];
  v3.receiver = self;
  v3.super_class = KNNoteRep;
  [(TSDRep *)&v3 dealloc];
}

- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)tap
{
  tapCopy = tap;
  containedRep = [(KNNoteRep *)self containedRep];
  LOBYTE(self) = containedRep == tapCopy;

  return self;
}

- (void)updateChildrenFromLayout
{
  layout = [(TSDRep *)self layout];
  containedLayout = [layout containedLayout];

  layout2 = [(TSWPRep *)self->_containedRep layout];

  if (layout2 != containedLayout)
  {
    [(TSWPRep *)self->_containedRep setParentRep:0];
    containedRep = self->_containedRep;
    self->_containedRep = 0;
  }

  v6 = self->_containedRep;
  if (!v6)
  {
    v7 = objc_alloc([containedLayout repClassOverride]);
    canvas = [(TSDRep *)self canvas];
    v9 = [v7 initWithLayout:containedLayout canvas:canvas];
    v10 = self->_containedRep;
    self->_containedRep = v9;

    [(TSWPRep *)self->_containedRep setParentRep:self];
    v6 = self->_containedRep;
  }

  [(TSWPRep *)v6 updateChildrenFromLayout];
}

- (id)childReps
{
  containedRep = [(KNNoteRep *)self containedRep];
  if (containedRep)
  {
    v3 = [MEMORY[0x277CBEA60] arrayWithObject:containedRep];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (double)columnHeight
{
  containedRep = [(KNNoteRep *)self containedRep];
  columns = [containedRep columns];
  v4 = [columns objectAtIndex:0];

  [v4 contentBlockBottom];
  *&v5 = v5;
  v6 = *&v5;

  return v6;
}

- (TSDContainerInfo)containerInfo
{
  info = [(TSDRep *)self info];
  v3 = TSUProtocolCast();

  return v3;
}

- (void)willBeginEditingContainedInfo:(id)info
{
  layout = [(TSDRep *)self layout];
  [layout createContainedLayoutForEditing];

  [(KNNoteRep *)self updateChildrenFromLayout];
}

- (void)willEndEditingContainedInfo:(id)info
{
  layout = [(TSDRep *)self layout];
  [layout createContainedLayoutForEditing];

  [(KNNoteRep *)self updateChildrenFromLayout];
}

- (void)storage:(id)storage didChangeRange:(_NSRange)range delta:(int64_t)delta broadcastKind:(unint64_t)kind
{
  v6 = [(TSDRep *)self layout:storage];
  [v6 createContainedLayoutForEditing];
}

@end