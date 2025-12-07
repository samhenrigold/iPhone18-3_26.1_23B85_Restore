@interface CLMiLoConnection
- (CLMiLoConnection)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (id)createCustomLocationOfInterestAtCurrentLocation;
- (id)labelObservationWithRequestIdentifier:(id)identifier withPlaceIdentifier:(id)placeIdentifier;
- (id)labelObservationsWithStartDate:(id)date endDate:(id)endDate placeIdentifier:(id)identifier;
- (id)purgeAllMiLoData;
- (id)removeCustomLocationOfInterestWithIdentifier:(id)identifier;
- (id)removeLabels:(id)labels;
- (id)requestExportDatabase;
- (id)requestMiLoPrediction;
- (id)requestModelLearning;
- (id)requestObservation:(id)observation;
- (id)startUpdatingMicroLocationWithConfiguration:(id)configuration;
- (id)stopUpdatingMicroLocation;
- (void)connectServiceWithIdentifier:(id)identifier;
- (void)createServiceWithServiceType:(unint64_t)type locationTypes:(id)types;
- (void)dealloc;
- (void)deleteServiceWithIdentifier:(id)identifier;
- (void)disconnectServiceWithIdentifier:(id)identifier;
- (void)queryMiLoConnectionStatus;
- (void)queryMyServices;
@end

@implementation CLMiLoConnection

- (CLMiLoConnection)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  v13.receiver = self;
  v13.super_class = CLMiLoConnection;
  v6 = [(CLMiLoConnection *)&v13 init];
  if (v6)
  {
    v7 = [CLMiLoConnectionInternal alloc];
    v9 = objc_msgSend_initWithInfo_delegate_delegateQueue_(v7, v8, v6, delegate, queue);
    v6->_internal = v9;
    v10 = *(v9 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19BA0A574;
    block[3] = &unk_1E753CC90;
    block[4] = v6;
    dispatch_sync(v10, block);
  }

  return v6;
}

- (void)dealloc
{
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0A670;
  block[3] = &unk_1E753CC90;
  block[4] = internal;
  dispatch_sync(internalQueue, block);

  v5.receiver = self;
  v5.super_class = CLMiLoConnection;
  [(CLMiLoConnection *)&v5 dealloc];
}

- (void)createServiceWithServiceType:(unint64_t)type locationTypes:(id)types
{
  if (!types)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, type, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CLMiLoConnection.mm", 1317, @"Invalid parameter not satisfying: %@", @"locationTypes");
  }

  if (type - 5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, type, types);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLMiLoConnection.mm", 1318, @"Invalid parameter not satisfying: %@", @"serviceType > CLMiLoServiceTypeNone && serviceType < CLMiLoServiceTypeMax");
  }

  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0A7B0;
  block[3] = &unk_1E753EB08;
  block[5] = types;
  block[6] = type;
  block[4] = internal;
  dispatch_async(internalQueue, block);
}

- (void)deleteServiceWithIdentifier:(id)identifier
{
  if (!identifier)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLMiLoConnection.mm", 1327, @"Invalid parameter not satisfying: %@", @"serviceIdentifier");
  }

  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0A890;
  block[3] = &unk_1E753CF38;
  block[4] = internal;
  block[5] = identifier;
  dispatch_async(internalQueue, block);
}

- (void)queryMyServices
{
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0A910;
  block[3] = &unk_1E753CC90;
  block[4] = internal;
  dispatch_async(internalQueue, block);
}

- (void)queryMiLoConnectionStatus
{
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0A98C;
  block[3] = &unk_1E753CC90;
  block[4] = internal;
  dispatch_async(internalQueue, block);
}

- (void)connectServiceWithIdentifier:(id)identifier
{
  if (!identifier)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLMiLoConnection.mm", 1352, @"Invalid parameter not satisfying: %@", @"serviceIdentifier");
  }

  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0AA64;
  block[3] = &unk_1E753CF38;
  block[4] = internal;
  block[5] = identifier;
  dispatch_async(internalQueue, block);
}

- (void)disconnectServiceWithIdentifier:(id)identifier
{
  if (!identifier)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLMiLoConnection.mm", 1361, @"Invalid parameter not satisfying: %@", @"serviceIdentifier");
  }

  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0AB40;
  block[3] = &unk_1E753CF38;
  block[4] = internal;
  block[5] = identifier;
  dispatch_async(internalQueue, block);
}

- (id)requestMiLoPrediction
{
  v5 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2, v3);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19BA0ABE0;
  v9[3] = &unk_1E753CF38;
  v9[4] = internal;
  v9[5] = v5;
  dispatch_async(internalQueue, v9);
  return v5;
}

- (id)requestObservation:(id)observation
{
  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, observation, v3);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0AC90;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = v6;
  block[6] = observation;
  dispatch_async(internalQueue, block);
  return v6;
}

- (id)labelObservationWithRequestIdentifier:(id)identifier withPlaceIdentifier:(id)placeIdentifier
{
  if (!identifier)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, placeIdentifier);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLMiLoConnection.mm", 1391, @"Invalid parameter not satisfying: %@", @"observationIdentifier");
    if (placeIdentifier)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, identifier, placeIdentifier);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CLMiLoConnection.mm", 1392, @"Invalid parameter not satisfying: %@", @"placeLabel");
    goto LABEL_3;
  }

  if (!placeIdentifier)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, identifier, placeIdentifier);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0ADCC;
  block[3] = &unk_1E753EB30;
  block[4] = internal;
  block[5] = v8;
  block[6] = placeIdentifier;
  block[7] = identifier;
  dispatch_async(internalQueue, block);
  return v8;
}

- (id)labelObservationsWithStartDate:(id)date endDate:(id)endDate placeIdentifier:(id)identifier
{
  if (date)
  {
    if (endDate)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, date, endDate);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CLMiLoConnection.mm", 1412, @"Invalid parameter not satisfying: %@", @"endDate");
    if (identifier)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, date, endDate);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CLMiLoConnection.mm", 1413, @"Invalid parameter not satisfying: %@", @"placeLabel");
    goto LABEL_4;
  }

  v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, endDate);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CLMiLoConnection.mm", 1411, @"Invalid parameter not satisfying: %@", @"startDate");
  if (!endDate)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!identifier)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, date, endDate);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0AF5C;
  block[3] = &unk_1E753EB58;
  block[4] = internal;
  block[5] = date;
  block[6] = endDate;
  block[7] = identifier;
  block[8] = v10;
  dispatch_async(internalQueue, block);
  return v10;
}

- (id)removeLabels:(id)labels
{
  if (!labels)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLMiLoConnection.mm", 1430, @"Invalid parameter not satisfying: %@", @"labels");
  }

  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, labels, v3);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0B05C;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = labels;
  block[6] = v6;
  dispatch_async(internalQueue, block);
  return v6;
}

- (id)removeCustomLocationOfInterestWithIdentifier:(id)identifier
{
  if (!identifier)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLMiLoConnection.mm", 1441, @"Invalid parameter not satisfying: %@", @"identifier");
  }

  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, identifier, v3);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0B154;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = identifier;
  block[6] = v6;
  dispatch_async(internalQueue, block);
  return v6;
}

- (id)startUpdatingMicroLocationWithConfiguration:(id)configuration
{
  if (!configuration)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLMiLoConnection.mm", 1452, @"Invalid parameter not satisfying: %@", @"configuration");
  }

  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, configuration, v3);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0B24C;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = configuration;
  block[6] = v6;
  dispatch_async(internalQueue, block);
  return v6;
}

- (id)stopUpdatingMicroLocation
{
  v5 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2, v3);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19BA0B2F0;
  v9[3] = &unk_1E753CF38;
  v9[4] = internal;
  v9[5] = v5;
  dispatch_async(internalQueue, v9);
  return v5;
}

- (id)requestModelLearning
{
  v5 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2, v3);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19BA0B390;
  v9[3] = &unk_1E753CF38;
  v9[4] = internal;
  v9[5] = v5;
  dispatch_async(internalQueue, v9);
  return v5;
}

- (id)purgeAllMiLoData
{
  v5 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2, v3);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19BA0B430;
  v9[3] = &unk_1E753CF38;
  v9[4] = internal;
  v9[5] = v5;
  dispatch_async(internalQueue, v9);
  return v5;
}

- (id)requestExportDatabase
{
  v5 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2, v3);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19BA0B4D0;
  v9[3] = &unk_1E753CF38;
  v9[4] = internal;
  v9[5] = v5;
  dispatch_async(internalQueue, v9);
  return v5;
}

- (id)createCustomLocationOfInterestAtCurrentLocation
{
  v5 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2, v3);
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19BA0B570;
  v9[3] = &unk_1E753CF38;
  v9[4] = internal;
  v9[5] = v5;
  dispatch_async(internalQueue, v9);
  return v5;
}

@end