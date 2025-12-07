@interface AWDPairedSyncSyncReport
+ (void)submitWithActivityName:(id)name syncDuration:(double)duration timeoutCount:(unsigned int)count syncErrorCode:(unsigned int)code syncType:(unint64_t)type recordCount:(unsigned int)recordCount syncByteCount:(unsigned int)byteCount defaultByteCount:(unsigned int)self0 urgentByteCount:(unsigned int)self1 sawADropout:(BOOL)self2;
- (id)initWithActivityName:(id)name syncDuration:(double)duration timeoutCount:(unsigned int)count syncErrorCode:(unsigned int)code syncType:(unint64_t)type recordCount:(unsigned int)recordCount syncByteCount:(unsigned int)byteCount defaultByteCount:(unsigned int)self0 urgentByteCount:(unsigned int)self1 sawADropout:(BOOL)self2;
@end

@implementation AWDPairedSyncSyncReport

+ (void)submitWithActivityName:(id)name syncDuration:(double)duration timeoutCount:(unsigned int)count syncErrorCode:(unsigned int)code syncType:(unint64_t)type recordCount:(unsigned int)recordCount syncByteCount:(unsigned int)byteCount defaultByteCount:(unsigned int)self0 urgentByteCount:(unsigned int)self1 sawADropout:(BOOL)self2
{
  v12 = *&byteCount;
  v13 = *&recordCount;
  v15 = *&code;
  v16 = *&count;
  nameCopy = name;
  LOBYTE(v19) = dropout;
  v20 = [[AWDPairedSyncSyncReport alloc] initWithActivityName:nameCopy syncDuration:v16 timeoutCount:v15 syncErrorCode:type syncType:v13 recordCount:v12 syncByteCount:duration defaultByteCount:__PAIR64__(urgentByteCount urgentByteCount:defaultByteCount) sawADropout:v19];

  [v20 submitMetric];
}

- (id)initWithActivityName:(id)name syncDuration:(double)duration timeoutCount:(unsigned int)count syncErrorCode:(unsigned int)code syncType:(unint64_t)type recordCount:(unsigned int)recordCount syncByteCount:(unsigned int)byteCount defaultByteCount:(unsigned int)self0 urgentByteCount:(unsigned int)self1 sawADropout:(BOOL)self2
{
  v12 = *&byteCount;
  v13 = *&recordCount;
  v15 = *&code;
  v16 = *&count;
  nameCopy = name;
  v28.receiver = self;
  v28.super_class = AWDPairedSyncSyncReport;
  v20 = [(AWDPairedSyncSyncReport *)&v28 init];
  if (v20)
  {
    v21 = +[PSYRegistrySingleton registry];
    getActiveDevice = [v21 getActiveDevice];

    [(AWDPairedSyncSyncReport *)v20 setIsAutomated:sub_100002A60(v23, v24)];
    systemBuildVersion = [getActiveDevice systemBuildVersion];
    [(AWDPairedSyncSyncReport *)v20 setGizmoBuild:systemBuildVersion];

    v26 = [getActiveDevice valueForProperty:PDRDevicePropertyKeyHWModelString];
    [(AWDPairedSyncSyncReport *)v20 setGizmoHardware:v26];

    [(AWDPairedSyncSyncReport *)v20 setActivityName:nameCopy];
    [(AWDPairedSyncSyncReport *)v20 setSyncDuration:(duration * 1000000000.0)];
    [(AWDPairedSyncSyncReport *)v20 setTimeoutCount:v16];
    [(AWDPairedSyncSyncReport *)v20 setSyncErrorCode:v15];
    [(AWDPairedSyncSyncReport *)v20 setSyncType:type];
    [(AWDPairedSyncSyncReport *)v20 setRecordCount:v13];
    [(AWDPairedSyncSyncReport *)v20 setSyncByteCount:v12];
    [(AWDPairedSyncSyncReport *)v20 setDefaultByteCount:defaultByteCount];
    [(AWDPairedSyncSyncReport *)v20 setUrgentByteCount:urgentByteCount];
    [(AWDPairedSyncSyncReport *)v20 setSawADropout:dropout];
  }

  return v20;
}

@end