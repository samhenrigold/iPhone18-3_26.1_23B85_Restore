@interface HTProcessLaunchExitRecord
+ (id)getProcessExitsAndLaunchesDuringHang:(unint64_t)hang endTime:(unint64_t)time;
+ (void)fetchProcessRecords;
- (HTProcessLaunchExitRecord)initWithCoder:(id)coder;
- (HTProcessLaunchExitRecord)initWithInfo:(id)info pid:(int)pid spawnTimestamp:(unint64_t)timestamp exitTimestamp:(unint64_t)exitTimestamp exitReasonCode:(unint64_t)code exitReasonNamespace:(unsigned __int8)namespace jetsam_priority:(unsigned __int16)jetsam_priority;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HTProcessLaunchExitRecord

- (HTProcessLaunchExitRecord)initWithInfo:(id)info pid:(int)pid spawnTimestamp:(unint64_t)timestamp exitTimestamp:(unint64_t)exitTimestamp exitReasonCode:(unint64_t)code exitReasonNamespace:(unsigned __int8)namespace jetsam_priority:(unsigned __int16)jetsam_priority
{
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = HTProcessLaunchExitRecord;
  v17 = [(HTProcessLaunchExitRecord *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_processName, info);
    v18->_pid = pid;
    v18->_spawnTimestamp = timestamp;
    v18->_exitTimestamp = exitTimestamp;
    v18->_exitReasonCode = code;
    v18->_exitReasonNamespace = namespace;
    v18->_jetsam_priority = jetsam_priority;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  processName = self->_processName;
  coderCopy = coder;
  [coderCopy encodeObject:processName forKey:@"processName"];
  [coderCopy encodeInt64:self->_pid forKey:@"pid"];
  [coderCopy encodeInt64:self->_spawnTimestamp forKey:@"spawnTimestamp"];
  [coderCopy encodeInt64:self->_exitTimestamp forKey:@"exitTimestamp"];
  [coderCopy encodeInt64:self->_exitReasonCode forKey:@"exitReasonCode"];
  [coderCopy encodeInt:self->_exitReasonNamespace forKey:@"exitReasonNamespace"];
  [coderCopy encodeInt:self->_jetsam_priority forKey:@"jetsamPriority"];
}

- (HTProcessLaunchExitRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
  v6 = [coderCopy decodeInt64ForKey:@"pid"];
  v7 = [coderCopy decodeInt64ForKey:@"spawnTimestamp"];
  v8 = [coderCopy decodeInt64ForKey:@"exitTimestamp"];
  v9 = [coderCopy decodeInt64ForKey:@"exitReasonCode"];
  v10 = [coderCopy decodeIntForKey:@"exitReasonNamespace"];
  v11 = [coderCopy decodeIntForKey:@"jetsamPriority"];

  LOWORD(v14) = v11;
  v12 = [(HTProcessLaunchExitRecord *)self initWithInfo:v5 pid:v6 spawnTimestamp:v7 exitTimestamp:v8 exitReasonCode:v9 exitReasonNamespace:v10 jetsam_priority:v14];

  return v12;
}

+ (void)fetchProcessRecords
{
  if (qword_100090450 != -1)
  {
    sub_100040520();
  }

  v2 = _launch_service_stats_copy_impl();
  v3 = v2;
  if (v2)
  {
    v4 = sub_100001684(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = strerror(v3);
      sub_100040534(v5, buf, v3, v4);
    }
  }

  else
  {
    v6 = sub_100001684(v2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "launch_service_stats_copy() returned %u records", buf, 8u);
    }

    v4 = objc_alloc_init(NSMutableArray);
    [qword_100090458 addObjectsFromArray:v4];
    v7 = os_transaction_create();
    [qword_100090458 setTransaction:v7];

    v8 = +[HTPrefs sharedPrefs];
    v9 = dispatch_time(0, 1000000 * [v8 runloopHangTimeoutDurationMSec] + 30000000000);

    timer = [qword_100090458 timer];
    dispatch_source_set_timer(timer, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3E8uLL);
  }
}

+ (id)getProcessExitsAndLaunchesDuringHang:(unint64_t)hang endTime:(unint64_t)time
{
  v58 = objc_alloc_init(NSMutableArray);
  v56 = objc_alloc_init(NSMutableArray);
  v57 = objc_alloc_init(NSMutableArray);
  v5 = sub_100001684(v57);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v74 = sub_10000B548(hang, v6);
    v75 = 2048;
    v76 = sub_10000B548(time, v7);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "getProcessExitsAndLaunchesDuringHang: called with windown [%.0f - %.0f]ms", buf, 0x16u);
  }

  +[HTProcessLaunchExitRecord fetchProcessRecords];
  v60 = +[NSDate now];
  v59 = mach_absolute_time();
  v8 = &stru_100090000;
  if ([qword_100090458 count])
  {
    v9 = 0;
    v10 = 1;
    v11 = &selRef_setValue_forKey_;
    v12 = &MGGetBoolAnswer_ptr;
    do
    {
      v13 = [*&v8[17].__opaque[16] objectAtIndex:v9];
      if ([v13 exitTimestamp] >= hang)
      {
        v14 = 0;
      }

      else
      {
        v14 = hang - [v13 exitTimestamp];
      }

      sharedPrefs = [v11 + 396 sharedPrefs];
      runloopHangTimeoutDurationMSec = [sharedPrefs runloopHangTimeoutDurationMSec];
      v18 = sub_10000B5E4(runloopHangTimeoutDurationMSec + 30000, v17);

      if (v18 >= v14)
      {
        v87[0] = @"processName";
        processName = [v13 processName];
        v88[0] = processName;
        v87[1] = @"processID";
        v68 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 pid]);
        v88[1] = v68;
        v87[2] = @"spawnTimestamp";
        dateFormatter = [*&v8[17].__opaque[16] dateFormatter];
        v66 = sub_10000B420([v13 spawnTimestamp], v60, v59);
        v67 = dateFormatter;
        v65 = [dateFormatter stringFromDate:?];
        v88[2] = v65;
        v87[3] = @"exitTimestamp";
        dateFormatter2 = [*&v8[17].__opaque[16] dateFormatter];
        v63 = sub_10000B420([v13 exitTimestamp], v60, v59);
        v64 = dateFormatter2;
        v62 = [dateFormatter2 stringFromDate:?];
        v88[3] = v62;
        v87[4] = @"relativeSpawnTimeToHangStart";
        spawnTimestamp = [v13 spawnTimestamp];
        v33 = v12[267];
        spawnTimestamp2 = [v13 spawnTimestamp];
        if (spawnTimestamp <= hang)
        {
          [v33 stringWithFormat:@"-%.3lfs", sub_10000B590(hang - spawnTimestamp2, v35)];
        }

        else
        {
          [v33 stringWithFormat:@"%.3lfs", sub_10000B590(spawnTimestamp2 - hang, v35)];
        }
        v36 = ;
        v88[4] = v36;
        v87[5] = @"relativeExitTimeToHangStart";
        exitTimestamp = [v13 exitTimestamp];
        v38 = v12[267];
        exitTimestamp2 = [v13 exitTimestamp];
        if (exitTimestamp <= hang)
        {
          [v38 stringWithFormat:@"-%.3lfs", sub_10000B590(hang - exitTimestamp2, v40)];
        }

        else
        {
          [v38 stringWithFormat:@"%.3lfs", sub_10000B590(exitTimestamp2 - hang, v40)];
        }
        v41 = ;
        hangCopy = hang;
        v88[5] = v41;
        v87[6] = @"processUptime";
        v43 = v12[267];
        exitTimestamp3 = [v13 exitTimestamp];
        spawnTimestamp3 = [v13 spawnTimestamp];
        v47 = [v43 stringWithFormat:@"%.3lfs", sub_10000B590(exitTimestamp3 - spawnTimestamp3, v46)];
        v88[6] = v47;
        v87[7] = @"exitReasonCode";
        v48 = sub_10001A3C0([v13 exitReasonNamespace], objc_msgSend(v13, "exitReasonCode"));
        v88[7] = v48;
        v87[8] = @"exitReasonNamespace";
        v49 = sub_100019534([v13 exitReasonNamespace]);
        v88[8] = v49;
        v87[9] = @"jetsamPriority";
        v50 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v13 jetsam_priority]);
        v88[9] = v50;
        v20 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:10];

        hang = hangCopy;
        if ([v13 exitTimestamp] < hangCopy || (v51 = objc_msgSend(v13, "exitTimestamp"), v52 = v56, v51 >= time))
        {
          if ([v13 exitTimestamp] >= time)
          {
            v52 = v57;
          }

          else
          {
            v52 = v58;
          }
        }

        [v52 addObject:v20];
        v8 = &stru_100090000;
        v11 = &selRef_setValue_forKey_;
        v12 = &MGGetBoolAnswer_ptr;
      }

      else
      {
        v20 = sub_100001684(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sharedPrefs2 = [v11 + 396 sharedPrefs];
          runloopHangTimeoutDurationMSec2 = [sharedPrefs2 runloopHangTimeoutDurationMSec];
          v23 = sub_10000B5E4(runloopHangTimeoutDurationMSec2 + 30000, v22);
          processName2 = [v13 processName];
          v25 = [v13 pid];
          hangCopy2 = hang;
          exitTimestamp4 = [v13 exitTimestamp];
          exitReasonCode = [v13 exitReasonCode];
          exitReasonNamespace = [v13 exitReasonNamespace];
          *buf = 134219522;
          v74 = *&v14;
          v75 = 2048;
          v76 = *&v23;
          v12 = &MGGetBoolAnswer_ptr;
          v77 = 2112;
          v78 = processName2;
          v79 = 1024;
          v80 = v25;
          v8 = &stru_100090000;
          v81 = 2048;
          v82 = exitTimestamp4;
          hang = hangCopy2;
          v83 = 2048;
          v84 = exitReasonCode;
          v85 = 1024;
          v86 = exitReasonNamespace;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "excluding process exit record, timediff (%llu) > %llu, processName %@, pid %d, exitTimestamp %llu, exitReasonCode %llu, exitReasonNamespace %u", buf, 0x40u);

          v11 = &selRef_setValue_forKey_;
        }
      }

      v9 = v10;
    }

    while ([*&v8[17].__opaque[16] count] > v10++);
  }

  v71[0] = @"exitedDuringHang";
  v71[1] = @"exitedBeforeHang";
  v72[0] = v56;
  v72[1] = v58;
  v71[2] = @"exitedAfterHang";
  v72[2] = v57;
  v54 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:3];

  return v54;
}

@end