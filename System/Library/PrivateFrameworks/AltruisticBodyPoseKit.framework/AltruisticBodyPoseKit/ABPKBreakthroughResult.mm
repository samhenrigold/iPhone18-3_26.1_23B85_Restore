@interface ABPKBreakthroughResult
- (ABPKBreakthroughResult)init;
- (int)overlayResultOnImage:(__CVBuffer *)image withResult:(__CVBuffer *)result withColor:;
- (void)set2dSkeleton:(id)skeleton isPoseValid:(BOOL)valid trackingId:(unsigned int)id isFaceVisible:(BOOL)visible isRaisingHand:(BOOL)hand isWavingHand:(BOOL)wavingHand;
@end

@implementation ABPKBreakthroughResult

- (ABPKBreakthroughResult)init
{
  v6.receiver = self;
  v6.super_class = ABPKBreakthroughResult;
  v2 = [(ABPKBreakthroughResult *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ABPK2dSkeleton);
    skeleton2D = v2->_skeleton2D;
    v2->_skeleton2D = v3;

    *&v2->_trackingId = 0;
  }

  return v2;
}

- (void)set2dSkeleton:(id)skeleton isPoseValid:(BOOL)valid trackingId:(unsigned int)id isFaceVisible:(BOOL)visible isRaisingHand:(BOOL)hand isWavingHand:(BOOL)wavingHand
{
  objc_storeStrong(&self->_skeleton2D, skeleton);
  self->_isPoseValid = valid;
  self->_trackingId = id;
  self->_isFaceVisible = visible;
  self->_isRaisingHand = hand;
  self->_isWavingHand = wavingHand;
}

- (int)overlayResultOnImage:(__CVBuffer *)image withResult:(__CVBuffer *)result withColor:
{
  v14 = v4;
  v8 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_DEBUG, " Overlaying breakthrough results on image ", buf, 2u);
  }

  if (!result)
  {
    v10 = __ABPKLogSharedInstance(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_ERROR, " Overlay image not initialized ", v16, 2u);
    }
  }

  skeleton2D = self->_skeleton2D;
  if (skeleton2D)
  {
    [(ABPK2dSkeleton *)skeleton2D printData];
    return [(ABPK2dSkeleton *)self->_skeleton2D overlaySkeletonOnImage:image withResult:result withColor:v14];
  }

  else
  {
    v13 = __ABPKLogSharedInstance(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_ERROR, " _skeleton2D is nil ", v15, 2u);
    }

    return -6661;
  }
}

@end