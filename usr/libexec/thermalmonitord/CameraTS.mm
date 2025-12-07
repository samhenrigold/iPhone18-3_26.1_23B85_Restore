@interface CameraTS
- (CameraTS)initWithFrontCameraSensorIdx:(int)idx rearCameraSensorIdx:(int)sensorIdx;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (void)dealloc;
- (void)enableFrontIRCameraNotifications:(int)notifications;
- (void)enableFrontRigelDieNotifications:(int)notifications;
- (void)enableFrontRomeoNTCNotifications:(int)notifications;
- (void)enableRearCameraJasperNotifications:(int)notifications;
- (void)enableRearCameraSuperWideNotifications:(int)notifications;
- (void)enableRearCameraTeleNotifications:(int)notifications;
- (void)handleStateChangeNotification:(int)notification temperatureSensorIndex:(int)index;
- (void)handleTemperatureChangeNotification:(int)notification temperatureSensorIndex:(int)index;
- (void)updateSensor:(int)sensor temperature:(unint64_t)temperature;
@end

@implementation CameraTS

- (CameraTS)initWithFrontCameraSensorIdx:(int)idx rearCameraSensorIdx:(int)sensorIdx
{
  v29.receiver = self;
  v29.super_class = CameraTS;
  v6 = [(CameraTS *)&v29 init];
  v7 = v6;
  if (v6)
  {
    v6->_torchState = -1;
    v6->_rearCameraSensorIdx = sensorIdx;
    v6->_frontCameraSensorIdx = idx;
    v6->_rearCameraTeleSensorIdx = -1;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7->_cameraQueue = dispatch_queue_create("com.apple.ThermalMonitor.cameraQueue", v8);
    if (byte_1000ABC38 == 1)
    {
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:8 atSMCIndex:@"zETM", 8];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:19 atSMCIndex:@"zETM", 19];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:20 atSMCIndex:@"zETM", 20];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:21 atSMCIndex:@"zETM", 21];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:23 atSMCIndex:@"zETM", 23];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:22 atSMCIndex:@"zETM", 22];
    }

    objc_initWeak(&location, v7);
    cameraQueue = v7->_cameraQueue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000B430;
    v26[3] = &unk_100085100;
    objc_copyWeak(&v27, &location);
    sub_1000333D4("com.apple.isp.backcamerapower", &v7->_rearCameraStateToken, cameraQueue, v26);
    v10 = v7->_cameraQueue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000B4A0;
    v24[3] = &unk_100085100;
    objc_copyWeak(&v25, &location);
    sub_1000333D4("com.apple.isp.backsensortemperature", &v7->_rearCameraTemperatureToken, v10, v24);
    v11 = v7->_cameraQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000B4EC;
    v22[3] = &unk_100085100;
    objc_copyWeak(&v23, &location);
    sub_1000333D4("com.apple.isp.frontcamerapower", &v7->_frontCameraStateToken, v11, v22);
    v12 = v7->_cameraQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000B55C;
    v20[3] = &unk_100085100;
    objc_copyWeak(&v21, &location);
    sub_1000333D4("com.apple.isp.frontsensortemperature", &v7->_frontCameraTemperatureToken, v12, v20);
    v13 = v7->_cameraQueue;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10000B5A8;
    v18 = &unk_100085100;
    objc_copyWeak(&v19, &location);
    sub_1000333D4("com.apple.isp.cameratorch", &v7->_torchStateToken, v13, &v15);
    [[TGraphSampler addtGraphDataSource:v15 sharedInstance:v16], "addtGraphDataSource:", v7];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)enableRearCameraTeleNotifications:(int)notifications
{
  [(CameraTS *)self setRearCameraTeleSensorIdx:*&notifications];
  objc_initWeak(&location, self);
  cameraQueue = self->_cameraQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B790;
  v8[3] = &unk_100085100;
  objc_copyWeak(&v9, &location);
  sub_1000333D4("com.apple.isp.backtelecamerapower", &self->_rearCameraTeleStateToken, cameraQueue, v8);
  v5 = self->_cameraQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B800;
  v6[3] = &unk_100085100;
  objc_copyWeak(&v7, &location);
  sub_1000333D4("com.apple.isp.backtelesensortemperature", &self->_rearCameraTeleTemperatureToken, v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)enableRearCameraSuperWideNotifications:(int)notifications
{
  [(CameraTS *)self setRearCameraSuperWideSensorIdx:*&notifications];
  objc_initWeak(&location, self);
  cameraQueue = self->_cameraQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B9A8;
  v8[3] = &unk_100085100;
  objc_copyWeak(&v9, &location);
  sub_1000333D4("com.apple.isp.backsuperwidecamerapower", &self->_rearCameraSuperWideStateToken, cameraQueue, v8);
  v5 = self->_cameraQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000BA18;
  v6[3] = &unk_100085100;
  objc_copyWeak(&v7, &location);
  sub_1000333D4("com.apple.isp.backsuperwidetemperature", &self->_rearCameraSuperWideTemperatureToken, v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)enableRearCameraJasperNotifications:(int)notifications
{
  [(CameraTS *)self setRearCameraJasperSensorIdx:*&notifications];
  objc_initWeak(&location, self);
  cameraQueue = self->_cameraQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000BBC0;
  v8[3] = &unk_100085100;
  objc_copyWeak(&v9, &location);
  sub_1000333D4("com.apple.isp.backtofsensorpower", &self->_rearCameraJasperStateToken, cameraQueue, v8);
  v5 = self->_cameraQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000BC30;
  v6[3] = &unk_100085100;
  objc_copyWeak(&v7, &location);
  sub_1000333D4("com.apple.isp.backtofsensortemperature", &self->_rearCameraJasperTemperatureToken, v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)enableFrontIRCameraNotifications:(int)notifications
{
  [(CameraTS *)self setFrontIRCameraSensorIdx:*&notifications];
  objc_initWeak(&location, self);
  cameraQueue = self->_cameraQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000BDD8;
  v8[3] = &unk_100085100;
  objc_copyWeak(&v9, &location);
  sub_1000333D4("com.apple.isp.frontirsensortemperature", &self->_frontIRCameraSensorTemperatureToken, cameraQueue, v8);
  v5 = self->_cameraQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000BE24;
  v6[3] = &unk_100085100;
  objc_copyWeak(&v7, &location);
  sub_1000333D4("com.apple.isp.frontirsensorpower", &self->_frontCameraStateToken, v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)enableFrontRomeoNTCNotifications:(int)notifications
{
  [(CameraTS *)self setFrontRomeoNTCSensorIdx:*&notifications];
  objc_initWeak(&location, self);
  cameraQueue = self->_cameraQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000BFCC;
  v8[3] = &unk_100085100;
  objc_copyWeak(&v9, &location);
  sub_1000333D4("com.apple.isp.frontirprojector.ntctempactive", &self->_frontRomeoNTCTemperatureActiveToken, cameraQueue, v8);
  v5 = self->_cameraQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C018;
  v6[3] = &unk_100085100;
  objc_copyWeak(&v7, &location);
  sub_1000333D4("com.apple.isp.frontirsensorpower", &self->_frontCameraStateToken, v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)enableFrontRigelDieNotifications:(int)notifications
{
  [(CameraTS *)self setFrontRigelDieSensorIdx:*&notifications];
  objc_initWeak(&location, self);
  cameraQueue = self->_cameraQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C1C0;
  v8[3] = &unk_100085100;
  objc_copyWeak(&v9, &location);
  sub_1000333D4("com.apple.isp.frontirprojector.dietempactive", &self->_frontRigelDieTemperatureActiveToken, cameraQueue, v8);
  v5 = self->_cameraQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C20C;
  v6[3] = &unk_100085100;
  objc_copyWeak(&v7, &location);
  sub_1000333D4("com.apple.isp.frontcamerapower", &self->_frontCameraStateToken, v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  notify_cancel(self->_rearCameraTeleStateToken);
  notify_cancel(self->_rearCameraTeleTemperatureToken);
  notify_cancel(self->_torchStateToken);
  notify_cancel(self->_frontCameraTemperatureToken);
  notify_cancel(self->_frontCameraStateToken);
  notify_cancel(self->_rearCameraTemperatureToken);
  notify_cancel(self->_rearCameraStateToken);
  v3.receiver = self;
  v3.super_class = CameraTS;
  [(CameraTS *)&v3 dealloc];
}

- (void)updateSensor:(int)sensor temperature:(unint64_t)temperature
{
  if (sensor < 0)
  {
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100050A64(sensor, v6);
    }
  }

  else
  {
    if (100 * temperature <= -12800)
    {
      v5 = 4294954496;
    }

    else
    {
      v5 = (100 * temperature);
    }

    sub_10000533C(*&sensor, v5);
  }
}

- (void)handleStateChangeNotification:(int)notification temperatureSensorIndex:(int)index
{
  v4 = *&index;
  state64 = 0;
  if (!notify_get_state(notification, &state64) && !state64)
  {
    [(CameraTS *)self updateSensor:v4 temperature:0];
  }
}

- (void)handleTemperatureChangeNotification:(int)notification temperatureSensorIndex:(int)index
{
  v4 = *&index;
  state64 = 0;
  if (!notify_get_state(notification, &state64))
  {
    [(CameraTS *)self updateSensor:v4 temperature:state64];
  }
}

- (__CFString)copyHeaderForIndex:(int)index
{
  if (index)
  {
    return 0;
  }

  else
  {
    return @"Torch state";
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  if (index)
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", [(CameraTS *)self torchState]);
  }
}

@end