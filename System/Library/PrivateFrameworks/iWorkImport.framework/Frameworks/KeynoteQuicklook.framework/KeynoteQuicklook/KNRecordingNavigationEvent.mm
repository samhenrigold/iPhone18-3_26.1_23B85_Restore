@interface KNRecordingNavigationEvent
- (BOOL)canPrecedeDiscontinuity;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIgnoredWhenSeeking;
- (KNRecordingNavigationEvent)initWithStartTime:(double)time targetSlideNode:(id)node targetEventIndex:(unint64_t)index animationPhase:(int64_t)phase;
- (KNSlideNode)targetSlideNode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNRecordingNavigationEvent

- (KNRecordingNavigationEvent)initWithStartTime:(double)time targetSlideNode:(id)node targetEventIndex:(unint64_t)index animationPhase:(int64_t)phase
{
  nodeCopy = node;
  v17.receiver = self;
  v17.super_class = KNRecordingNavigationEvent;
  v11 = [(KNRecordingEvent *)&v17 initWithStartTime:time];
  if (v11)
  {
    if (nodeCopy)
    {
      context = [nodeCopy context];
      objc_storeWeak(&v11->_targetSlideNodeContextReference, context);

      objectUUID = [nodeCopy objectUUID];
      v14 = [objectUUID copy];
      targetSlideNodeUUID = v11->_targetSlideNodeUUID;
      v11->_targetSlideNodeUUID = v14;
    }

    v11->_targetEventIndex = index;
    v11->_animationPhase = phase;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KNRecordingNavigationEvent allocWithZone:zone];
  [(KNRecordingEvent *)self startTime];
  v6 = v5;
  targetSlideNode = [(KNRecordingNavigationEvent *)self targetSlideNode];
  v8 = [(KNRecordingNavigationEvent *)v4 initWithStartTime:targetSlideNode targetSlideNode:[(KNRecordingNavigationEvent *)self targetEventIndex] targetEventIndex:[(KNRecordingNavigationEvent *)self animationPhase] animationPhase:v6];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(KNRecordingEvent *)self startTime];
  v7 = v6;
  targetSlideNode = [(KNRecordingNavigationEvent *)self targetSlideNode];
  v9 = [v3 stringWithFormat:@"<%@ %p time=%f targetSlideNode=%@ targetEventIndex=%tu animationPhase=%zd>", v5, self, v7, targetSlideNode, -[KNRecordingNavigationEvent targetEventIndex](self, "targetEventIndex"), -[KNRecordingNavigationEvent animationPhase](self, "animationPhase")];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = KNRecordingNavigationEvent;
  if ([(KNRecordingEvent *)&v12 isEqual:equalCopy])
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      targetSlideNode = [(KNRecordingNavigationEvent *)self targetSlideNode];
      targetSlideNode2 = [v5 targetSlideNode];
      if (targetSlideNode == targetSlideNode2 && (v8 = -[KNRecordingNavigationEvent targetEventIndex](self, "targetEventIndex"), v8 == [v5 targetEventIndex]))
      {
        animationPhase = [(KNRecordingNavigationEvent *)self animationPhase];
        v10 = animationPhase == [v5 animationPhase];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = KNRecordingNavigationEvent;
  v3 = [(KNRecordingEvent *)&v7 hash];
  v4 = [(NSUUID *)self->_targetSlideNodeUUID hash];
  v5 = v3 ^ [(KNRecordingNavigationEvent *)self targetEventIndex];
  return v4 ^ v5 ^ [(KNRecordingNavigationEvent *)self animationPhase];
}

- (KNSlideNode)targetSlideNode
{
  if (self->_targetSlideNodeUUID)
  {
    objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_targetSlideNodeContextReference);
    v4 = [WeakRetained objectWithUUID:self->_targetSlideNodeUUID];
    v5 = TSUCheckedDynamicCast();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isIgnoredWhenSeeking
{
  if ([(KNRecordingNavigationEvent *)self animationPhase]== 1)
  {
    return 1;
  }

  targetSlideNode = [(KNRecordingNavigationEvent *)self targetSlideNode];
  v3 = targetSlideNode == 0;

  return v3;
}

- (BOOL)canPrecedeDiscontinuity
{
  if ([(KNRecordingNavigationEvent *)self animationPhase]== 1)
  {
    return 0;
  }

  targetSlideNode = [(KNRecordingNavigationEvent *)self targetSlideNode];
  v3 = targetSlideNode != 0;

  return v3;
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track
{
  unarchiverCopy = unarchiver;
  trackCopy = track;
  v25.receiver = self;
  v25.super_class = KNRecordingNavigationEvent;
  [(KNRecordingEvent *)&v25 loadFromMessage:message unarchiver:unarchiverCopy parentEventTrack:trackCopy];
  if (*(message + 3))
  {
    v10 = *(message + 3);
  }

  else
  {
    v10 = &qword_2812EB9D8;
  }

  v11 = *(v10 + 4);
  if ((v11 & 2) != 0)
  {
    v14 = [unarchiverCopy readWeakObjectUUIDReferenceMessage:v10[4]];
    v15 = [v14 copy];
    targetSlideNodeUUID = self->_targetSlideNodeUUID;
    self->_targetSlideNodeUUID = v15;
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }

    v12 = v10[3];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_275DC6928;
    v22[3] = &unk_27A698C00;
    v23 = trackCopy;
    selfCopy = self;
    v13 = unarchiverCopy;
    [v13 readWeakReferenceMessage:v12 class:objc_opt_class() protocol:0 completion:v22];

    v14 = v23;
  }

LABEL_9:
  v17 = *(v10 + 11);
  self->_targetEventIndex = *(v10 + 10);
  v18 = v17 == 1;
  if (v17 == 2)
  {
    v18 = 2;
  }

  self->_animationPhase = v18;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_275DC69CC;
  v20[3] = &unk_27A698BD8;
  v20[4] = self;
  v19 = trackCopy;
  v21 = v19;
  [unarchiverCopy addFinalizeHandler:v20];
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v20.receiver = self;
  v20.super_class = KNRecordingNavigationEvent;
  [(KNRecordingEvent *)&v20 saveToMessage:message archiver:archiverCopy];
  *(message + 4) |= 1u;
  v7 = *(message + 3);
  if (!v7)
  {
    v8 = *(message + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_275E20E60(v8);
    *(message + 3) = v7;
  }

  targetSlideNodeUUID = self->_targetSlideNodeUUID;
  if (targetSlideNodeUUID)
  {
    *(v7 + 16) |= 2u;
    v10 = *(v7 + 32);
    if (!v10)
    {
      v11 = *(v7 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C8F000](v11);
      *(v7 + 32) = v10;
    }

    [archiverCopy setWeakReferenceToObjectUUID:targetSlideNodeUUID message:v10];
    objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_targetSlideNodeContextReference);
    v13 = [WeakRetained objectWithUUIDIfAvailableAndLoaded:self->_targetSlideNodeUUID];
    v14 = TSUCheckedDynamicCast();

    if (v14)
    {
      *(v7 + 16) |= 1u;
      v15 = *(v7 + 24);
      if (!v15)
      {
        v16 = *(v7 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C8F050](v16);
        *(v7 + 24) = v15;
      }

      [archiverCopy setWeakReference:v14 message:v15];
    }
  }

  targetEventIndex = [(KNRecordingNavigationEvent *)self targetEventIndex];
  *(v7 + 16) |= 4u;
  *(v7 + 40) = targetEventIndex;
  animationPhase = [(KNRecordingNavigationEvent *)self animationPhase];
  v19 = animationPhase == 1;
  if (animationPhase == 2)
  {
    v19 = 2;
  }

  *(v7 + 16) |= 8u;
  *(v7 + 44) = v19;
}

@end