@interface HPSSpatialProfileUIPearlEnrollView
- (HPSSpatialProfileUIPearlEnrollView)initWithVideoCaptureSession:(id)session inSheet:(BOOL)sheet squareNeedsPositionLayout:(BOOL)layout;
- (id)crossHairs;
- (void)setCameraBlurAmount:(double)amount useShade:(BOOL)shade duration:(double)duration completion:(id)completion;
@end

@implementation HPSSpatialProfileUIPearlEnrollView

- (id)crossHairs
{
  enrollmentCustomCrossHairs = self->_enrollmentCustomCrossHairs;
  if (!enrollmentCustomCrossHairs)
  {
    v4 = [HPSSpatialProfileCrossHairs alloc];
    v5 = [(HPSSpatialProfileCrossHairs *)v4 initWithView:self view:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_enrollmentCustomCrossHairs;
    self->_enrollmentCustomCrossHairs = v5;

    enrollmentCustomCrossHairs = self->_enrollmentCustomCrossHairs;
  }

  return enrollmentCustomCrossHairs;
}

- (HPSSpatialProfileUIPearlEnrollView)initWithVideoCaptureSession:(id)session inSheet:(BOOL)sheet squareNeedsPositionLayout:(BOOL)layout
{
  v8.receiver = self;
  v8.super_class = HPSSpatialProfileUIPearlEnrollView;
  v5 = [(BKUIPearlEnrollView *)&v8 initWithVideoCaptureSession:session inSheet:sheet squareNeedsPositionLayout:layout];
  v6 = v5;
  if (v5)
  {
    [(HPSSpatialProfileUIPearlEnrollView *)v5 setPauseBlur:0];
  }

  return v6;
}

- (void)setCameraBlurAmount:(double)amount useShade:(BOOL)shade duration:(double)duration completion:(id)completion
{
  shadeCopy = shade;
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v11 = sharedBluetoothSettingsLogComponent(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    pauseBlur = [(HPSSpatialProfileUIPearlEnrollView *)self pauseBlur];
    v16 = 1024;
    forceBlur = [(HPSSpatialProfileUIPearlEnrollView *)self forceBlur];
    v18 = 2048;
    amountCopy = amount;
    v20 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Set Camera Blur Blurring paused %d, Blurring forced %d, Requested Blur %f duration = %f ", buf, 0x22u);
  }

  if (amount == 0.0 && [(HPSSpatialProfileUIPearlEnrollView *)self forceBlur])
  {
    LODWORD(shadeCopy) = 0;
    amount = 15.0;
  }

  else if (amount == 0.0)
  {
    goto LABEL_9;
  }

  pauseBlur2 = [(HPSSpatialProfileUIPearlEnrollView *)self pauseBlur];
  shadeCopy = shadeCopy & !pauseBlur2;
  if (pauseBlur2)
  {
    amount = 0.0;
  }

LABEL_9:
  v13.receiver = self;
  v13.super_class = HPSSpatialProfileUIPearlEnrollView;
  [(BKUIPearlEnrollView *)&v13 setCameraBlurAmount:shadeCopy useShade:completionCopy duration:amount completion:duration];
}

@end