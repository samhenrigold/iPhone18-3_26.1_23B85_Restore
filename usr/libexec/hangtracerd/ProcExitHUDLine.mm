@interface ProcExitHUDLine
- (ProcExitHUDLine)initWithProcExitRecord:(id)record theme:(id)theme lineDelegate:(id)delegate;
- (void)nilifyCALayers;
- (void)setFontSize:(double)size;
- (void)update:(id)update options:(unint64_t)options;
@end

@implementation ProcExitHUDLine

- (ProcExitHUDLine)initWithProcExitRecord:(id)record theme:(id)theme lineDelegate:(id)delegate
{
  recordCopy = record;
  themeCopy = theme;
  delegateCopy = delegate;
  v37.receiver = self;
  v37.super_class = ProcExitHUDLine;
  v11 = [(HUDLine *)&v37 init];
  v13 = v11;
  if (v11)
  {
    [(HUDLine *)v11 setSpacing:sub_100029D98(v11, v12)];
    currentProcessExitTextColor = [themeCopy currentProcessExitTextColor];
    v15 = +[CATextLayer layer];
    exitedProcNameLayer = v13->_exitedProcNameLayer;
    v13->_exitedProcNameLayer = v15;

    [(CATextLayer *)v13->_exitedProcNameLayer setTruncationMode:kCATruncationEnd];
    if (qword_100067A20 != -1)
    {
      sub_100032284();
    }

    v17 = [(CATextLayer *)v13->_exitedProcNameLayer setFont:qword_100067A28];
    sub_100029930(v17, v18);
    [(CATextLayer *)v13->_exitedProcNameLayer setFontSize:?];
    [(HUDLine *)v13 contentScaleForTexts];
    [(CATextLayer *)v13->_exitedProcNameLayer setContentsScale:?];
    processName = [recordCopy processName];
    [(CATextLayer *)v13->_exitedProcNameLayer setString:processName];

    [(CATextLayer *)v13->_exitedProcNameLayer setForegroundColor:currentProcessExitTextColor];
    [(HUDLine *)v13 setVibrancyFilter:v13->_exitedProcNameLayer];
    context = objc_autoreleasePoolPush();
    v20 = +[CATextLayer layer];
    v36 = currentProcessExitTextColor;
    if (qword_100067A40 != -1)
    {
      sub_1000322AC();
    }

    v21 = [v20 setFont:qword_100067A48];
    sub_100029930(v21, v22);
    [v20 setFontSize:?];
    [(HUDLine *)v13 contentScaleForTexts];
    [v20 setContentsScale:?];
    [v20 setAlignmentMode:kCAAlignmentRight];
    v23 = objc_alloc_init(NSString);
    v24 = [NSSet setWithObject:&off_10005CBE8];
    v25 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [recordCopy exitReasonNamespace]);
    v26 = [v24 containsObject:v25];

    if ((v26 & 1) == 0)
    {
      v27 = sub_100027CB4([recordCopy exitReasonNamespace]);

      v23 = v27;
    }

    [v20 setString:v23];
    [v20 setForegroundColor:{objc_msgSend(themeCopy, "processExitReasonNamespaceTextColor")}];
    v28 = +[CATextLayer layer];
    if (qword_100067A30 != -1)
    {
      sub_1000322D4();
    }

    v29 = [v28 setFont:qword_100067A38];
    sub_100029930(v29, v30);
    [v28 setFontSize:?];
    [(HUDLine *)v13 contentScaleForTexts];
    [v28 setContentsScale:?];
    [v28 setAlignmentMode:kCAAlignmentRight];
    v31 = sub_100029304([recordCopy exitReasonNamespace], objc_msgSend(recordCopy, "exitReasonCode"));
    [v28 setString:v31];

    [v28 setForegroundColor:v36];
    v32 = [[ExitReasonLayer alloc] initWithNamespaceLayer:v20 codeLayer:v28];
    exitReasonLayer = v13->_exitReasonLayer;
    v13->_exitReasonLayer = v32;

    [(HUDLine *)v13 setVibrancyFilter:v13->_exitReasonLayer];
    objc_autoreleasePoolPop(context);
    [(ProcExitHUDLine *)v13 addSublayer:v13->_exitReasonLayer];
    [(ProcExitHUDLine *)v13 addSublayer:v13->_exitedProcNameLayer];
    [(HUDLine *)v13 setKeyLayer:v13->_exitedProcNameLayer];
    [(HUDLine *)v13 setValueLayer:v13->_exitReasonLayer];
    [(HUDLine *)v13 setLineDelegate:delegateCopy];
  }

  return v13;
}

- (void)nilifyCALayers
{
  exitedProcNameLayer = self->_exitedProcNameLayer;
  if (exitedProcNameLayer)
  {
    self->_exitedProcNameLayer = 0;
  }

  exitReasonLayer = self->_exitReasonLayer;
  if (exitReasonLayer)
  {
    [(ExitReasonLayer *)exitReasonLayer nilifyCALayers];
    v5 = self->_exitReasonLayer;
    self->_exitReasonLayer = 0;
  }
}

- (void)setFontSize:(double)size
{
  [(CATextLayer *)self->_exitedProcNameLayer setFontSize:?];
  exitReasonNamespaceTextLayer = [(ExitReasonLayer *)self->_exitReasonLayer exitReasonNamespaceTextLayer];
  [exitReasonNamespaceTextLayer setFontSize:size];

  exitReasonCodeTextLayer = [(ExitReasonLayer *)self->_exitReasonLayer exitReasonCodeTextLayer];
  [exitReasonCodeTextLayer setFontSize:size];
}

- (void)update:(id)update options:(unint64_t)options
{
  optionsCopy = options;
  updateCopy = update;
  updatesComplete = [(HUDLine *)self updatesComplete];
  if ((optionsCopy & 1) == 0 && (updatesComplete & 1) == 0)
  {
    v8 = sub_100003824(updatesComplete);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000322FC(updateCopy);
    }

    [(HUDLine *)self setUpdatesComplete:1];
  }
}

@end