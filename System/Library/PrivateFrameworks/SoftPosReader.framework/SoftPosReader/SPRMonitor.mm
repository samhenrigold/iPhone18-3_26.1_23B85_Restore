@interface SPRMonitor
- (BOOL)signalWithEvent:(id)event error:(id *)error;
- (BOOL)signalWithEvent:(unsigned __int16)event component:(unsigned __int8)component origin:(unsigned __int8)origin details:(id)details error:(id *)error;
- (BOOL)signalWithEvent:(unsigned __int16)event data:(id)data error:(id *)error;
@end

@implementation SPRMonitor

- (BOOL)signalWithEvent:(id)event error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, error, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)signalWithEvent:(unsigned __int16)event data:(id)data error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, data, error);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)signalWithEvent:(unsigned __int16)event component:(unsigned __int8)component origin:(unsigned __int8)origin details:(id)details error:(id *)error
{
  originCopy = origin;
  componentCopy = component;
  eventCopy = event;
  detailsCopy = details;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_26A946034;
  v31 = sub_26A946044;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_26A94604C;
  v22[3] = &unk_279CA5428;
  v22[4] = &v27;
  v16 = objc_msgSend_syncProxyWithErrorHandler_(self, v13, v22, v14, v15);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_26A94605C;
  v21[3] = &unk_279CA5670;
  v21[4] = &v23;
  v21[5] = &v27;
  objc_msgSend_signalWithEvent_component_origin_details_reply_(v16, v17, eventCopy, componentCopy, originCopy, detailsCopy, v21);

  if (error)
  {
    v18 = v28[5];
    if (v18)
    {
      *error = v18;
    }
  }

  v19 = *(v24 + 24);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v19;
}

@end