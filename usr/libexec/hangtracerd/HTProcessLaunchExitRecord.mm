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
  if (qword_100067890 != -1)
  {
    sub_100030000();
  }

  v2 = _launch_service_stats_copy_impl();
  v3 = v2;
  if (v2)
  {
    v4 = sub_100003824(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = strerror(v3);
      sub_100030014(v5, buf, v3, v4);
    }
  }

  else
  {
    v6 = sub_100003824(v2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "launch_service_stats_copy() returned %u records", buf, 8u);
    }

    v4 = objc_alloc_init(NSMutableArray);
    [qword_100067898 addObjectsFromArray:v4];
    v7 = os_transaction_create();
    [qword_100067898 setTransaction:v7];

    v8 = +[HTPrefs sharedPrefs];
    v9 = dispatch_time(0, 1000000 * [v8 runloopHangTimeoutDurationMSec] + 30000000000);

    timer = [qword_100067898 timer];
    dispatch_source_set_timer(timer, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3E8uLL);
  }
}

+ (id)getProcessExitsAndLaunchesDuringHang:(unint64_t)hang endTime:(unint64_t)time
{
  v46 = objc_alloc_init(NSMutableArray);
  v44 = objc_alloc_init(NSMutableArray);
  v45 = objc_alloc_init(NSMutableArray);
  v5 = sub_100003824(v45);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v62 = sub_1000024F8(hang);
    v63 = 2048;
    v64 = sub_1000024F8(time);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "getProcessExitsAndLaunchesDuringHang: called with windown [%.0f - %.0f]ms", buf, 0x16u);
  }

  +[HTProcessLaunchExitRecord fetchProcessRecords];
  v48 = +[NSDate now];
  v47 = mach_absolute_time();
  p_vtable = &OBJC_METACLASS___HUDDurationLayer.vtable;
  if ([qword_100067898 count])
  {
    v7 = 0;
    v8 = 1;
    v9 = &OBJC_METACLASS___HUDDurationLayer.vtable;
    v10 = &archive_entry_copy_stat_ptr;
    do
    {
      v11 = [p_vtable[275] objectAtIndex:v7];
      if ([v11 exitTimestamp] >= hang)
      {
        v12 = 0;
      }

      else
      {
        v12 = hang - [v11 exitTimestamp];
      }

      sharedPrefs = [v9 + 32 sharedPrefs];
      v14 = sub_100029534([sharedPrefs runloopHangTimeoutDurationMSec] + 30000);

      if (v14 >= v12)
      {
        v75[0] = @"processName";
        processName = [v11 processName];
        v76[0] = processName;
        v75[1] = @"processID";
        v56 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 pid]);
        v76[1] = v56;
        v75[2] = @"spawnTimestamp";
        dateFormatter = [p_vtable[275] dateFormatter];
        v54 = sub_10001AF68([v11 spawnTimestamp], v48, v47);
        v55 = dateFormatter;
        v53 = [dateFormatter stringFromDate:?];
        v76[2] = v53;
        v75[3] = @"exitTimestamp";
        dateFormatter2 = [p_vtable[275] dateFormatter];
        v51 = sub_10001AF68([v11 exitTimestamp], v48, v47);
        v52 = dateFormatter2;
        v50 = [dateFormatter2 stringFromDate:?];
        v76[3] = v50;
        v75[4] = @"relativeSpawnTimeToHangStart";
        spawnTimestamp = [v11 spawnTimestamp];
        v27 = v10[270];
        spawnTimestamp2 = [v11 spawnTimestamp];
        if (spawnTimestamp <= hang)
        {
          [v27 stringWithFormat:@"-%.3lfs", sub_1000294E0(hang - spawnTimestamp2)];
        }

        else
        {
          [v27 stringWithFormat:@"%.3lfs", sub_1000294E0(spawnTimestamp2 - hang)];
        }
        v29 = ;
        v76[4] = v29;
        v75[5] = @"relativeExitTimeToHangStart";
        exitTimestamp = [v11 exitTimestamp];
        v31 = v10[270];
        exitTimestamp2 = [v11 exitTimestamp];
        if (exitTimestamp <= hang)
        {
          [v31 stringWithFormat:@"-%.3lfs", sub_1000294E0(hang - exitTimestamp2)];
        }

        else
        {
          [v31 stringWithFormat:@"%.3lfs", sub_1000294E0(exitTimestamp2 - hang)];
        }
        v33 = ;
        hangCopy = hang;
        v76[5] = v33;
        v75[6] = @"processUptime";
        v35 = [v10[270] stringWithFormat:@"%.3lfs", sub_1000294E0(objc_msgSend(v11, "exitTimestamp") - objc_msgSend(v11, "spawnTimestamp"))];
        v76[6] = v35;
        v75[7] = @"exitReasonCode";
        v36 = sub_1000291B0([v11 exitReasonNamespace], objc_msgSend(v11, "exitReasonCode"));
        v76[7] = v36;
        v75[8] = @"exitReasonNamespace";
        v37 = sub_100027C44([v11 exitReasonNamespace]);
        v76[8] = v37;
        v75[9] = @"jetsamPriority";
        v38 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v11 jetsam_priority]);
        v76[9] = v38;
        v16 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:10];

        hang = hangCopy;
        if ([v11 exitTimestamp] < hangCopy || (v39 = objc_msgSend(v11, "exitTimestamp"), v40 = v44, v39 >= time))
        {
          if ([v11 exitTimestamp] >= time)
          {
            v40 = v45;
          }

          else
          {
            v40 = v46;
          }
        }

        [v40 addObject:v16];
        p_vtable = &OBJC_METACLASS___HUDDurationLayer.vtable;
        v9 = (&OBJC_METACLASS___HUDDurationLayer + 24);
        v10 = &archive_entry_copy_stat_ptr;
      }

      else
      {
        v16 = sub_100003824(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sharedPrefs2 = [v9 + 32 sharedPrefs];
          v17 = sub_100029534([sharedPrefs2 runloopHangTimeoutDurationMSec] + 30000);
          processName2 = [v11 processName];
          v19 = [v11 pid];
          hangCopy2 = hang;
          exitTimestamp3 = [v11 exitTimestamp];
          exitReasonCode = [v11 exitReasonCode];
          exitReasonNamespace = [v11 exitReasonNamespace];
          *buf = 134219522;
          v62 = *&v12;
          v63 = 2048;
          v64 = *&v17;
          v10 = &archive_entry_copy_stat_ptr;
          v65 = 2112;
          v66 = processName2;
          v67 = 1024;
          v68 = v19;
          p_vtable = (&OBJC_METACLASS___HUDDurationLayer + 24);
          v69 = 2048;
          v70 = exitTimestamp3;
          hang = hangCopy2;
          v71 = 2048;
          v72 = exitReasonCode;
          v73 = 1024;
          v74 = exitReasonNamespace;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "excluding process exit record, timediff (%llu) > %llu, processName %@, pid %d, exitTimestamp %llu, exitReasonCode %llu, exitReasonNamespace %u", buf, 0x40u);

          v9 = (&OBJC_METACLASS___HUDDurationLayer + 24);
        }
      }

      v7 = v8;
    }

    while ([p_vtable[275] count] > v8++);
  }

  v59[0] = @"exitedDuringHang";
  v59[1] = @"exitedBeforeHang";
  v60[0] = v44;
  v60[1] = v46;
  v59[2] = @"exitedAfterHang";
  v60[2] = v45;
  v42 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:3];

  return v42;
}

@end