@interface ARGeoTrackingTechniqueService
- (ARGeoTrackingTechniqueService)initWithConnection:(id)connection;
- (id)processData:(id)data;
- (id)processDeviceOrientationData:(id)data;
- (id)processLocationData:(id)data;
- (void)getLocationFromWorldPosition:(id)position reply:(id)reply;
- (void)posteriorVisualLocalizationCallIntervalWithReply:(id)reply;
- (void)setPosteriorVisualLocalizationCallInterval:(double)interval;
- (void)setSupportEnablementOptions:(unint64_t)options;
- (void)setVisualLocalizationCallInterval:(double)interval;
- (void)setVisualLocalizationCallIntervalTimeThreshold:(double)threshold;
- (void)setVisualLocalizationUpdatesRequested:(BOOL)requested;
- (void)supportEnablementOptionsWithReply:(id)reply;
- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context;
- (void)visualLocalizationCallIntervalTimeThresholdWithReply:(id)reply;
- (void)visualLocalizationCallIntervalWithReply:(id)reply;
- (void)visualLocalizationUpdatesRequestedWithReply:(id)reply;
@end

@implementation ARGeoTrackingTechniqueService

- (ARGeoTrackingTechniqueService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = ARRemoteGeoTrackingTechniqueServiceInterface();
  v6 = ARRemoteGeoTrackingTechniqueClientInterface();
  v13.receiver = self;
  v13.super_class = ARGeoTrackingTechniqueService;
  v7 = [(ARTechniqueService *)&v13 initWithConnection:connectionCopy exportedInterface:v5 remoteObjectInterface:v6];

  if (v7)
  {
    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    [(ARTechniqueService *)v7 setClientProxy:remoteObjectProxy];

    v9 = [objc_alloc(MEMORY[0x277D0EAC0]) initWithNSXPCConnection:connectionCopy];
    v10 = [objc_alloc(MEMORY[0x277CE52A8]) initWithAuditToken:v9];
    [(ARTechniqueService *)v7 setTechnique:v10];

    technique = [(ARTechniqueService *)v7 technique];
    [technique setDelegate:v7];
  }

  return v7;
}

- (id)processLocationData:(id)data
{
  v41 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  isActive = [(ARDaemonService *)self isActive];
  if ((isActive & 1) == 0)
  {
    v20 = _ARLogDaemon(isActive);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138543874;
      v32 = v22;
      v33 = 2048;
      selfCopy3 = self;
      v35 = 2112;
      v36 = dataCopy;
      _os_log_impl(&dword_23D391000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Service not active; skipping processing of location data: %@", buf, 0x20u);
    }

    v23 = dataCopy;
    goto LABEL_13;
  }

  if (self->_lastProcessedLocationData)
  {
    [dataCopy timestamp];
    v7 = v6;
    isActive = [(ARLocationData *)self->_lastProcessedLocationData timestamp];
    if (v7 <= v8)
    {
      v24 = _ARLogDaemon(isActive);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        isSecure = [dataCopy isSecure];
        [dataCopy timestamp];
        *buf = 138544386;
        v32 = v26;
        v33 = 2048;
        selfCopy3 = self;
        v35 = 2048;
        v36 = dataCopy;
        v37 = 1024;
        *v38 = isSecure;
        *&v38[4] = 2048;
        *&v38[6] = v28;
        _os_log_impl(&dword_23D391000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: processLocationData - Already processed locationData (%p), isSecure: %d, timestamp: %f", buf, 0x30u);
      }

      v23 = self->_lastProcessedLocationData;
LABEL_13:
      v19 = v23;
      goto LABEL_14;
    }
  }

  v9 = _ARLogDaemon(isActive);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    isSecure2 = [dataCopy isSecure];
    [dataCopy timestamp];
    *buf = 138544642;
    v32 = v11;
    v33 = 2048;
    selfCopy3 = self;
    v35 = 2048;
    v36 = dataCopy;
    v37 = 2112;
    *v38 = dataCopy;
    *&v38[8] = 1024;
    *&v38[10] = isSecure2;
    v39 = 2048;
    v40 = v13;
    _os_log_impl(&dword_23D391000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: processLocationData - Processing locationData (%p): %@, isSecure: %d, timestamp: %f", buf, 0x3Au);
  }

  dataSource = [(ARDaemonService *)self dataSource];
  v15 = [dataSource service:self peerServiceOfType:objc_opt_class()];

  v16 = [v15 updateFromLocationData:dataCopy];
  lastProcessedLocationData = self->_lastProcessedLocationData;
  self->_lastProcessedLocationData = v16;

  v18 = self->_lastProcessedLocationData;
  v30.receiver = self;
  v30.super_class = ARGeoTrackingTechniqueService;
  v19 = [(ARTechniqueService *)&v30 processData:v18];

LABEL_14:

  return v19;
}

- (id)processDeviceOrientationData:(id)data
{
  v39 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  isActive = [(ARDaemonService *)self isActive];
  if ((isActive & 1) == 0)
  {
    v19 = _ARLogDaemon(isActive);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543874;
      v30 = v21;
      v31 = 2048;
      selfCopy3 = self;
      v33 = 2112;
      v34 = dataCopy;
      _os_log_impl(&dword_23D391000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Service not active; skipping processing of device orientation data: %@", buf, 0x20u);
    }

    v22 = dataCopy;
    goto LABEL_13;
  }

  if (self->_lastProcessedDeviceOrientationData)
  {
    [dataCopy timestamp];
    v7 = v6;
    isActive = [(ARDeviceOrientationData *)self->_lastProcessedDeviceOrientationData timestamp];
    if (v7 <= v8)
    {
      v23 = _ARLogDaemon(isActive);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        [dataCopy timestamp];
        *buf = 138544130;
        v30 = v25;
        v31 = 2048;
        selfCopy3 = self;
        v33 = 2048;
        v34 = dataCopy;
        v35 = 2048;
        v36 = v26;
        _os_log_impl(&dword_23D391000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: processDeviceOrientationData - Already processed data (%p), timestamp: %f", buf, 0x2Au);
      }

      v22 = self->_lastProcessedDeviceOrientationData;
LABEL_13:
      v18 = v22;
      goto LABEL_14;
    }
  }

  v9 = _ARLogDaemon(isActive);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [dataCopy timestamp];
    *buf = 138544386;
    v30 = v11;
    v31 = 2048;
    selfCopy3 = self;
    v33 = 2048;
    v34 = dataCopy;
    v35 = 2112;
    v36 = dataCopy;
    v37 = 2048;
    v38 = v12;
    _os_log_impl(&dword_23D391000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: processDeviceOrientationData - Processing data (%p): %@, timestamp: %f", buf, 0x34u);
  }

  dataSource = [(ARDaemonService *)self dataSource];
  v14 = [dataSource service:self peerServiceOfType:objc_opt_class()];

  v15 = [v14 updateFromDeviceOrientationData:dataCopy];
  lastProcessedDeviceOrientationData = self->_lastProcessedDeviceOrientationData;
  self->_lastProcessedDeviceOrientationData = v15;

  v17 = self->_lastProcessedDeviceOrientationData;
  v28.receiver = self;
  v28.super_class = ARGeoTrackingTechniqueService;
  v18 = [(ARTechniqueService *)&v28 processData:v17];

LABEL_14:

  return v18;
}

- (void)getLocationFromWorldPosition:(id)position reply:(id)reply
{
  replyCopy = reply;
  ARVector3FromNSData();
  v15 = v6;
  technique = [(ARTechniqueService *)self technique];
  v9 = technique;
  if (technique)
  {
    objc_msgSend_getLocationFromWorldPosition_error_(technique, v15);
    v10 = 0;
    v16 = v17;
    v8 = vextq_s8(v16, v16, 8uLL);
    v14 = v8.i64[0];
    v8.i64[0] = v18;
  }

  else
  {
    v10 = 0;
    v16.i64[0] = 0;
    v14 = 0;
    v8.i64[0] = 0;
  }

  v13 = v8;

  *&v11 = v16.i64[0];
  *(&v11 + 1) = v14;
  v19[0] = v11;
  v19[1] = v13;
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:32];
  replyCopy[2](replyCopy, v12, v10);
}

- (void)setVisualLocalizationCallInterval:(double)interval
{
  technique = [(ARTechniqueService *)self technique];
  [technique setVisualLocalizationCallInterval:interval];
}

- (void)visualLocalizationCallIntervalWithReply:(id)reply
{
  replyCopy = reply;
  technique = [(ARTechniqueService *)self technique];
  [technique visualLocalizationCallInterval];
  (*(reply + 2))(replyCopy, 0);
}

- (void)setPosteriorVisualLocalizationCallInterval:(double)interval
{
  technique = [(ARTechniqueService *)self technique];
  [technique setPosteriorVisualLocalizationCallInterval:interval];
}

- (void)posteriorVisualLocalizationCallIntervalWithReply:(id)reply
{
  replyCopy = reply;
  technique = [(ARTechniqueService *)self technique];
  [technique posteriorVisualLocalizationCallInterval];
  (*(reply + 2))(replyCopy, 0);
}

- (void)setVisualLocalizationCallIntervalTimeThreshold:(double)threshold
{
  technique = [(ARTechniqueService *)self technique];
  [technique setVisualLocalizationCallIntervalTimeThreshold:threshold];
}

- (void)visualLocalizationCallIntervalTimeThresholdWithReply:(id)reply
{
  replyCopy = reply;
  technique = [(ARTechniqueService *)self technique];
  [technique visualLocalizationCallIntervalTimeThreshold];
  (*(reply + 2))(replyCopy, 0);
}

- (void)setVisualLocalizationUpdatesRequested:(BOOL)requested
{
  requestedCopy = requested;
  technique = [(ARTechniqueService *)self technique];
  [technique setVisualLocalizationUpdatesRequested:requestedCopy];
}

- (void)visualLocalizationUpdatesRequestedWithReply:(id)reply
{
  replyCopy = reply;
  technique = [(ARTechniqueService *)self technique];
  (*(reply + 2))(replyCopy, [technique visualLocalizationUpdatesRequested], 0);
}

- (void)setSupportEnablementOptions:(unint64_t)options
{
  technique = [(ARTechniqueService *)self technique];
  [technique setSupportEnablementOptions:options];
}

- (void)supportEnablementOptionsWithReply:(id)reply
{
  replyCopy = reply;
  technique = [(ARTechniqueService *)self technique];
  (*(reply + 2))(replyCopy, [technique supportEnablementOptions], 0);
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ARGeoTrackingTechniqueService *)self processLocationData:dataCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ARGeoTrackingTechniqueService *)self processDeviceOrientationData:dataCopy];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = ARGeoTrackingTechniqueService;
      v5 = [(ARTechniqueService *)&v8 processData:dataCopy];
    }
  }

  v6 = v5;

  return v6;
}

- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  v67 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  dataSource = [(ARDaemonService *)self dataSource];
  v11 = [dataSource service:self peerServiceOfType:objc_opt_class()];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v12 = dataCopy;
  v13 = [v12 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v51;
    v16 = 0x277CE5000uLL;
    v46 = v12;
    v47 = *v51;
    do
    {
      v17 = 0;
      v48 = v14;
      do
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v50 + 1) + 8 * v17);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
          localizationResult = [v19 localizationResult];

          if (localizationResult)
          {
            v22 = _ARLogDaemon(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              [v19 heading];
              *buf = 138543875;
              v55 = v24;
              v56 = 2048;
              selfCopy3 = self;
              v58 = 2049;
              v59 = v25;
              _os_log_impl(&dword_23D391000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: vlHeading,%{private}f", buf, 0x20u);
            }

            v27 = _ARLogDaemon(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v28 = objc_opt_class();
              v29 = NSStringFromClass(v28);
              [v19 location];
              v31 = v30 = v11;
              [v31 coordinate];
              v33 = v32;
              [v19 location];
              v35 = v34 = v16;
              [v35 coordinate];
              v37 = v36;
              location = [v19 location];
              [location altitude];
              *buf = 138544387;
              v55 = v29;
              v56 = 2048;
              selfCopy3 = self;
              v58 = 2049;
              v59 = v33;
              v60 = 2049;
              v61 = v37;
              v62 = 2049;
              v63 = v39;
              _os_log_impl(&dword_23D391000, v27, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: vlLocation,%{private}lf,%{private}lf,%{private}lf", buf, 0x34u);

              v14 = v48;
              v16 = v34;

              v11 = v30;
              v12 = v46;
              v15 = v47;
            }

            v41 = _ARLogDaemon(v40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              *buf = 138544642;
              v55 = v43;
              v56 = 2048;
              selfCopy3 = self;
              v58 = 2048;
              v59 = v11;
              v60 = 2112;
              v61 = v11;
              v62 = 2112;
              v63 = v19;
              v64 = 2048;
              timestampCopy = timestamp;
              _os_log_impl(&dword_23D391000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: technique:didOutputResultData: - Calling updateFromVisualLocalizationResult on locationSensorService (%p): %@, with visResult: %@, timestamp: %f", buf, 0x3Eu);

              v14 = v48;
            }

            [v11 updateFromVisualLocalizationResult:v19];
          }
        }

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v14);
  }

  technique = [(ARTechniqueService *)self technique];
  v49.receiver = self;
  v49.super_class = ARGeoTrackingTechniqueService;
  [(ARTechniqueService *)&v49 technique:technique didOutputResultData:v12 timestamp:contextCopy context:timestamp];
}

@end