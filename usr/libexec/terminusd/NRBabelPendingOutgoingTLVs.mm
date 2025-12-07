@interface NRBabelPendingOutgoingTLVs
- (NRBabelPendingOutgoingTLVs)initWithInterval:(unsigned __int16)interval;
@end

@implementation NRBabelPendingOutgoingTLVs

- (NRBabelPendingOutgoingTLVs)initWithInterval:(unsigned __int16)interval
{
  intervalCopy = interval;
  v18.receiver = self;
  v18.super_class = NRBabelPendingOutgoingTLVs;
  v4 = [(NRBabelPendingOutgoingTLVs *)&v18 init];
  if (!v4)
  {
    v10 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = sub_1000CB9A8();
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRBabelPendingOutgoingTLVs initWithInterval:]"", 1298);
    }

    v13 = _os_log_pack_size();
    v14 = &v17 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = __error();
    v16 = _os_log_pack_fill(v14, v13, *v15, &_mh_execute_header, "%{public}s [super init] failed");
    *v16 = 136446210;
    *(v16 + 4) = "[NRBabelPendingOutgoingTLVs initWithInterval:]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
  }

  v5 = v4;
  +[NSDate timeIntervalSinceReferenceDate];
  v5->_minTime = v6 + ((429496730 * (9 * intervalCopy)) >> 32) * 0.01;
  v5->_maxTime = v6 + intervalCopy * 0.01;
  v7 = objc_alloc_init(NSMutableArray);
  tlvs = v5->_tlvs;
  v5->_tlvs = v7;

  return v5;
}

@end