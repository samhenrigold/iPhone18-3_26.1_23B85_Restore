@interface _PXStoryConcreteCompanionTimelineSegment
- ($26774211E5BDBF3D92665BB0B9FD0ED0)segmentInfo;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)preferredDuration;
- (NSArray)assets;
- (PXStoryCompanionTimelineSegmentTransition)orderOutTransition;
- (_PXStoryConcreteCompanionTimelineSegment)initWithTimeline:(id)timeline segmentIndex:(int64_t)index;
@end

@implementation _PXStoryConcreteCompanionTimelineSegment

- ($26774211E5BDBF3D92665BB0B9FD0ED0)segmentInfo
{
  v3 = *&self->var3.var3.var1;
  *&retstr->var3.var2.var3 = *&self->var3.var3.var0.var1;
  *&retstr->var3.var3.var0.var1 = v3;
  retstr->var3.var3.var1 = self[1].var0;
  v4 = *&self->var3.var1.var1;
  *&retstr->var3.var0.var0 = *&self->var3.var0.var3;
  *&retstr->var3.var0.var3 = v4;
  v5 = *&self->var3.var2.var3;
  *&retstr->var3.var1.var1 = *&self->var3.var2.var0;
  *&retstr->var3.var2.var0 = v5;
  v6 = *&self->var2.var2.var1;
  *&retstr->var1.var3 = *&self->var2.var0;
  *&retstr->var2.var0 = v6;
  v7 = *&self->var3.var0.var0;
  *&retstr->var2.var2.var1 = *&self->var2.var3;
  *&retstr->var2.var3 = v7;
  v8 = *&self->var1.var3;
  *&retstr->var0 = *&self->var1.var1;
  *&retstr->var1.var1 = v8;
  return self;
}

- (PXStoryCompanionTimelineSegmentTransition)orderOutTransition
{
  v3 = [_PXStoryConcreteCompanionTimelineSegmentTransition alloc];
  objc_msgSend_segmentInfo(self);
  v9[0] = v6;
  v9[1] = v7;
  v10 = v8;
  v4 = [(_PXStoryConcreteCompanionTimelineSegmentTransition *)v3 initWithTransitionInfo:v9];

  return v4;
}

- (NSArray)assets
{
  [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  timeline = [(_PXStoryConcreteCompanionTimelineSegment *)self timeline];
  objc_msgSend_segmentInfo(self);
  if (timeline)
  {
    objc_msgSend_timeRangeForSegmentWithIdentifier_(timeline);
  }

  [timeline size];
  PXRectWithOriginAndSize();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)preferredDuration
{
  result = objc_msgSend_segmentInfo(self, a3);
  *retstr = v5;
  return result;
}

- (_PXStoryConcreteCompanionTimelineSegment)initWithTimeline:(id)timeline segmentIndex:(int64_t)index
{
  timelineCopy = timeline;
  v24.receiver = self;
  v24.super_class = _PXStoryConcreteCompanionTimelineSegment;
  v8 = [(_PXStoryConcreteCompanionTimelineSegment *)&v24 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_timeline, timeline);
    [timelineCopy identifierForSegmentAtIndex:index];
    if (timelineCopy)
    {
      objc_msgSend_infoForSegmentWithIdentifier_(timelineCopy);
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
    }

    *&v9->_segmentInfo.durationInfo.maximumDuration.epoch = v21;
    *&v9->_segmentInfo.durationInfo.preferredCue.time.timescale = v22;
    v9->_segmentInfo.durationInfo.preferredCue.rank = v23;
    *&v9->_segmentInfo.durationInfo.minimumDuration.value = v17;
    *&v9->_segmentInfo.durationInfo.minimumDuration.epoch = v18;
    *&v9->_segmentInfo.durationInfo.preferredDuration.timescale = v19;
    *&v9->_segmentInfo.durationInfo.maximumDuration.value = v20;
    *&v9->_segmentInfo.compositionInfo.mainDividerSplitRatio = v13;
    *&v9->_segmentInfo.transitionInfo.orderOutTransition = v14;
    *&v9->_segmentInfo.transitionInfo.duration.timescale = v15;
    *&v9->_segmentInfo.transitionInfo.fallbackFromTransitionKind = v16;
    *&v9->_segmentInfo.identifier = v11;
    *&v9->_segmentInfo.compositionInfo.clipFramesExtendToBounds = v12;
  }

  return v9;
}

@end