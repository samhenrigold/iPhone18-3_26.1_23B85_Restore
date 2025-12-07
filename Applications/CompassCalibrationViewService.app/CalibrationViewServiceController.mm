@interface CalibrationViewServiceController
+ (void)dismissCalibrationAlert;
- (CLLocationManager)locationManager;
- (CMMotionManager)motionManager;
- (CalibrationViewController)calibrationViewController;
- (CalibrationViewServiceController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)dealloc;
- (void)maximumTimeElapsed;
- (void)minimumTimeElapsed;
- (void)reset;
- (void)tryToDismissCalibration;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CalibrationViewServiceController

+ (void)dismissCalibrationAlert
{
  _remoteViewControllerProxy = [qword_100008848 _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];

  v3 = qword_100008848;
  qword_100008848 = 0;
}

- (CalibrationViewServiceController)init
{
  v4.receiver = self;
  v4.super_class = CalibrationViewServiceController;
  v2 = [(CalibrationViewServiceController *)&v4 init];
  if (v2)
  {
    [objc_opt_class() dismissCalibrationAlert];
    objc_storeStrong(&qword_100008848, v2);
  }

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CalibrationViewServiceController;
  [(CalibrationViewServiceController *)&v3 viewDidLoad];
  [(CalibrationViewServiceController *)self reset];
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = CalibrationViewServiceController;
  [(CalibrationViewServiceController *)&v13 viewWillAppear:appear];
  objc_initWeak(&location, self);
  motionManager = [(CalibrationViewServiceController *)self motionManager];
  v5 = +[NSOperationQueue mainQueue];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000011E0;
  v10 = &unk_100004158;
  objc_copyWeak(&v11, &location);
  [motionManager startDeviceMotionUpdatesUsingReferenceFrame:1 toQueue:v5 withHandler:&v7];

  v6 = [(CalibrationViewServiceController *)self locationManager:v7];
  [v6 startUpdatingHeading];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"finishedCalibrating" selector:0 userInfo:0 repeats:15.0];
  [(CalibrationViewServiceController *)self setMaximumTimer:v5];

  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"minimumTimeElapsed" selector:0 userInfo:0 repeats:5.0];
  [(CalibrationViewServiceController *)self setMinimumTimer:v6];

  self->_minTimeElapsed = 0;
  self->_maxTimeElapsed = 0;
  self->_calibrated = 0;
  self->_hasPresented = 1;
  view = [(CalibrationViewServiceController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  self->_finalOrientation = [windowScene interfaceOrientation];

  [(CalibrationViewServiceController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  [(CalibrationViewServiceController *)self addChildViewController:self->_calibrationViewController];
  view2 = [(CalibrationViewServiceController *)self view];
  view3 = [(CalibrationViewController *)self->_calibrationViewController view];
  [view2 addSubview:view3];

  view4 = [(CalibrationViewServiceController *)self view];
  layer = [view4 layer];
  v14 = +[CATransition animation];
  [layer addAnimation:v14 forKey:@"fade"];

  [(CalibrationViewController *)self->_calibrationViewController didMoveToParentViewController:self];
  v15.receiver = self;
  v15.super_class = CalibrationViewServiceController;
  [(CalibrationViewServiceController *)&v15 viewDidAppear:appearCopy];
}

- (void)reset
{
  calibrationViewController = [(CalibrationViewServiceController *)self calibrationViewController];
  [calibrationViewController reset];
}

- (CalibrationViewController)calibrationViewController
{
  calibrationViewController = self->_calibrationViewController;
  if (!calibrationViewController)
  {
    v4 = objc_alloc_init(CalibrationViewController);
    v5 = self->_calibrationViewController;
    self->_calibrationViewController = v4;

    calibrationViewController = self->_calibrationViewController;
  }

  return calibrationViewController;
}

- (CMMotionManager)motionManager
{
  motionManager = self->_motionManager;
  if (!motionManager)
  {
    v4 = objc_alloc_init(CMMotionManager);
    v5 = self->_motionManager;
    self->_motionManager = v4;

    [(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:0.0500000007];
    motionManager = self->_motionManager;
  }

  return motionManager;
}

- (CLLocationManager)locationManager
{
  locationManager = self->_locationManager;
  if (!locationManager)
  {
    v4 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/CompassCalibration.bundle" delegate:self onQueue:&_dispatch_main_q];
    v5 = self->_locationManager;
    self->_locationManager = v4;

    [(CLLocationManager *)self->_locationManager setDelegate:self];
    locationManager = self->_locationManager;
  }

  return locationManager;
}

- (void)minimumTimeElapsed
{
  minimumTimer = [(CalibrationViewServiceController *)self minimumTimer];
  [minimumTimer invalidate];

  [(CalibrationViewServiceController *)self setMinimumTimer:0];
  self->_minTimeElapsed = 1;

  [(CalibrationViewServiceController *)self tryToDismissCalibration];
}

- (void)maximumTimeElapsed
{
  maximumTimer = [(CalibrationViewServiceController *)self maximumTimer];
  [maximumTimer invalidate];

  [(CalibrationViewServiceController *)self setMaximumTimer:0];
  self->_maxTimeElapsed = 1;

  [(CalibrationViewServiceController *)self tryToDismissCalibration];
}

- (void)tryToDismissCalibration
{
  if (self->_minTimeElapsed && self->_calibrated || self->_maxTimeElapsed)
  {
    motionManager = [(CalibrationViewServiceController *)self motionManager];
    [motionManager stopDeviceMotionUpdates];

    locationManager = [(CalibrationViewServiceController *)self locationManager];
    [locationManager stopUpdatingHeading];

    [objc_opt_class() dismissCalibrationAlert];
    maximumTimer = [(CalibrationViewServiceController *)self maximumTimer];
    [maximumTimer invalidate];

    [(CalibrationViewServiceController *)self setMaximumTimer:0];
    minimumTimer = [(CalibrationViewServiceController *)self minimumTimer];
    [minimumTimer invalidate];

    [(CalibrationViewServiceController *)self setMinimumTimer:0];
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_maximumTimer invalidate];
  [(NSTimer *)self->_minimumTimer invalidate];
  [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
  [(CLLocationManager *)self->_locationManager stopUpdatingHeading];
  v3.receiver = self;
  v3.super_class = CalibrationViewServiceController;
  [(CalibrationViewServiceController *)&v3 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (!self->_hasPresented)
  {
    return 30;
  }

  v2 = self->_finalOrientation - 2;
  if (v2 > 2)
  {
    return 2;
  }

  else
  {
    return qword_100002300[v2];
  }
}

@end