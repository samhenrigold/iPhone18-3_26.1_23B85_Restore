@interface RPPipViewController
- (RPPipViewController)initWithOrientation:(int64_t)orientation position:(int64_t)position;
- (id)cameraWithPosition:(int64_t)position;
- (int64_t)_captureVideoOrientationForUIDeviceOrientation:(int64_t)orientation;
- (void)_deviceOrientationDidChange;
- (void)_updateViewGeometry;
- (void)configurePipSessionWithCameraPosition:(int64_t)position;
- (void)dealloc;
- (void)loadView;
- (void)setCameraPosition:(int64_t)position;
- (void)setUpPipSession;
- (void)startPipSession;
- (void)stopPipSession;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RPPipViewController

- (RPPipViewController)initWithOrientation:(int64_t)orientation position:(int64_t)position
{
  v15 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = RPPipViewController;
  v6 = [(RPPipViewController *)&v8 init];
  if (v6)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v10 = "[RPPipViewController initWithOrientation:position:]";
      v11 = 1024;
      v12 = 87;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    [(RPPipViewController *)v6 setInitialOrientation:orientation];
    [(RPPipViewController *)v6 setPreviousOrientation:orientation];
    v6->_cameraPosition = position;
  }

  return v6;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPPipViewController dealloc]";
    v6 = 1024;
    v7 = 98;
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  [(RPPipViewController *)self removeSystemPrefferedCameraObserver];
  v3.receiver = self;
  v3.super_class = RPPipViewController;
  [(RPPipViewController *)&v3 dealloc];
}

- (id)cameraWithPosition:(int64_t)position
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CE5AC8] devicesWithMediaType:*MEMORY[0x277CE5EA8]];
  if (v4)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v22 = "[RPPipViewController cameraWithPosition:]";
      v23 = 1024;
      v24 = 118;
      v25 = 1024;
      positionCopy = [v4 count];
      v5 = MEMORY[0x277D86220];
      v6 = " [INFO] %{public}s:%d looking for camera in %d capture devices";
      v7 = 24;
LABEL_8:
      _os_log_impl(&dword_23A863000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, v7);
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "[RPPipViewController cameraWithPosition:]";
    v23 = 1024;
    v24 = 120;
    v5 = MEMORY[0x277D86220];
    v6 = " [INFO] %{public}s:%d no capture devices found";
    v7 = 18;
    goto LABEL_8;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 position] == position)
        {
          if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v22 = "[RPPipViewController cameraWithPosition:]";
            v23 = 1024;
            v24 = 131;
            v25 = 1024;
            positionCopy = position;
            _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d camera found with position %d", buf, 0x18u);
          }

          v14 = v13;

          goto LABEL_25;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPPipViewController cameraWithPosition:];
  }

  v14 = 0;
LABEL_25:

  return v14;
}

- (void)configurePipSessionWithCameraPosition:(int64_t)position
{
  v15 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPPipViewController configurePipSessionWithCameraPosition:]";
    v13 = 1024;
    v14 = 141;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  [(AVCaptureSession *)self->_pipSession beginConfiguration];
  if (self->_videoInput)
  {
    [(AVCaptureSession *)self->_pipSession removeInput:?];
  }

  v5 = [(RPPipViewController *)self cameraWithPosition:position];
  v10 = 0;
  v6 = [objc_alloc(MEMORY[0x277CE5AD8]) initWithDevice:v5 error:&v10];
  v7 = v10;
  videoInput = self->_videoInput;
  self->_videoInput = v6;

  if (self->_videoInput)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    [(AVCaptureSession *)self->_pipSession addInput:?];
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPPipViewController configurePipSessionWithCameraPosition:v7];
  }

  [(AVCaptureSession *)self->_pipSession commitConfiguration];
}

- (void)setCameraPosition:(int64_t)position
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPPipViewController setCameraPosition:]";
    v7 = 1024;
    v8 = 167;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  if (self->_pipSession && self->_cameraPosition != position)
  {
    [(RPPipViewController *)self configurePipSessionWithCameraPosition:position];
  }

  self->_cameraPosition = position;
}

- (void)setUpPipSession
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)startPipSession
{
  v8 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPPipViewController startPipSession]";
    v6 = 1024;
    v7 = 217;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }

  pipSession = [(RPPipViewController *)self pipSession];
  [pipSession startRunning];
}

- (void)stopPipSession
{
  v8 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPPipViewController stopPipSession]";
    v6 = 1024;
    v7 = 223;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }

  [(RPPipViewController *)self removeSystemPrefferedCameraObserver];
  pipSession = [(RPPipViewController *)self pipSession];
  [pipSession stopRunning];
}

- (void)loadView
{
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPPipViewController loadView]";
    v9 = 1024;
    v10 = 230;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  v3 = [RPPipView alloc];
  v4 = [(RPPipView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(RPPipViewController *)self setView:v4];

  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(RPPipViewController *)self view];
  [view setBackgroundColor:clearColor];

  [(RPPipViewController *)self _updateViewGeometry];
  [(RPPipViewController *)self setUpPipSession];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v13 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPPipViewController viewWillAppear:]";
    v11 = 1024;
    v12 = 262;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v8.receiver = self;
  v8.super_class = RPPipViewController;
  [(RPPipViewController *)&v8 viewWillAppear:appearCopy];
  [(RPPipViewController *)self startPipSession];
  _pipView = [(RPPipViewController *)self _pipView];
  previewLayer = [_pipView previewLayer];
  connection = [previewLayer connection];
  [connection setVideoOrientation:{-[RPPipViewController _captureVideoOrientationForUIDeviceOrientation:](self, "_captureVideoOrientationForUIDeviceOrientation:", self->_initialOrientation)}];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v15 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPPipViewController viewDidAppear:]";
    v13 = 1024;
    v14 = 271;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v10.receiver = self;
  v10.super_class = RPPipViewController;
  [(RPPipViewController *)&v10 viewDidAppear:appearCopy];
  view = [(RPPipViewController *)self view];
  window = [view window];
  isInterfaceAutorotationDisabled = [window isInterfaceAutorotationDisabled];

  if ((isInterfaceAutorotationDisabled & 1) == 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__deviceOrientationDidChange name:*MEMORY[0x277D76878] object:0];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    [currentDevice beginGeneratingDeviceOrientationNotifications];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v15 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPPipViewController viewDidDisappear:]";
    v13 = 1024;
    v14 = 281;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v10.receiver = self;
  v10.super_class = RPPipViewController;
  [(RPPipViewController *)&v10 viewDidDisappear:disappearCopy];
  view = [(RPPipViewController *)self view];
  window = [view window];
  isInterfaceAutorotationDisabled = [window isInterfaceAutorotationDisabled];

  if ((isInterfaceAutorotationDisabled & 1) == 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    [currentDevice endGeneratingDeviceOrientationNotifications];
  }

  [(RPPipViewController *)self stopPipSession];
}

- (void)_updateViewGeometry
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice orientation])
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    initialOrientation = [currentDevice2 orientation];
  }

  else
  {
    initialOrientation = self->_initialOrientation;
  }

  v15 = initialOrientation - 5;
  v16 = initialOrientation - 1;
  if (v9 >= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v9;
  }

  if (v9 >= v11)
  {
    v18 = v9;
  }

  else
  {
    v18 = v11;
  }

  if (v16 > 1)
  {
    v18 = v11;
    v17 = v9;
  }

  if (v9 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = v9;
  }

  if (v9 <= v11)
  {
    v20 = v9;
  }

  else
  {
    v20 = v11;
  }

  if (v15 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  if (v15 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v22 = v19;
  }

  else
  {
    v22 = v17;
  }

  v44 = v22 * 0.2;
  v23 = v21 * (v22 * 0.2 / v22);
  view = [(RPPipViewController *)self view];
  [view frame];
  if (v25 == 0.0)
  {
    view2 = [(RPPipViewController *)self view];
    [view2 frame];
    v28 = v27;

    v29 = v28 == 0.0;
    v23 = v21 * (v22 * 0.2 / v22);
    if (v29)
    {
      view3 = [(RPPipViewController *)self view];
      [view3 setFrame:{v5 + v22 * 0.03, v7 + v21 * 0.03, v44, v21 * (v22 * 0.2 / v22)}];
      goto LABEL_40;
    }
  }

  else
  {
  }

  if (([(RPPipViewController *)self previousOrientation]- 3) > 1 || v16 >= 2)
  {
    previousOrientation = [(RPPipViewController *)self previousOrientation];
    if (v15 < 0xFFFFFFFFFFFFFFFELL || (previousOrientation - 3) < 0xFFFFFFFFFFFFFFFELL)
    {
      if ([(RPPipViewController *)self previousOrientation]!= 5 && [(RPPipViewController *)self previousOrientation]!= 6)
      {
        goto LABEL_41;
      }

      [(RPPipViewController *)self previousOrientationWidth];
      v33 = v32;
      [(RPPipViewController *)self previousOrientationHeight];
      if (v15 < 0xFFFFFFFFFFFFFFFELL || v33 >= v34)
      {
        [(RPPipViewController *)self previousOrientationWidth];
        v36 = v35;
        [(RPPipViewController *)self previousOrientationHeight];
        if (v36 <= v37 || v16 > 1)
        {
          goto LABEL_41;
        }
      }
    }
  }

  view3 = [(RPPipViewController *)self view];
  [view3 frame];
  v39 = v38;
  view4 = [(RPPipViewController *)self view];
  [view4 frame];
  v42 = v41;
  view5 = [(RPPipViewController *)self view];
  [view5 setFrame:{v39, v42, v44, v23}];

LABEL_40:
LABEL_41:
  [(RPPipViewController *)self setPreviousOrientation:initialOrientation];
  [(RPPipViewController *)self setPreviousOrientationWidth:v9];

  [(RPPipViewController *)self setPreviousOrientationHeight:v11];
}

- (void)_deviceOrientationDidChange
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RPPipViewController__deviceOrientationDidChange__block_invoke;
  v7[3] = &unk_278B61B70;
  v7[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.3];
  _pipView = [(RPPipViewController *)self _pipView];
  previewLayer = [_pipView previewLayer];
  connection = [previewLayer connection];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [connection setVideoOrientation:{-[RPPipViewController _captureVideoOrientationForUIDeviceOrientation:](self, "_captureVideoOrientationForUIDeviceOrientation:", objc_msgSend(currentDevice, "orientation"))}];
}

- (int64_t)_captureVideoOrientationForUIDeviceOrientation:(int64_t)orientation
{
  if ((orientation - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return orientation;
  }
}

- (void)cameraWithPosition:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)configurePipSessionWithCameraPosition:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

@end