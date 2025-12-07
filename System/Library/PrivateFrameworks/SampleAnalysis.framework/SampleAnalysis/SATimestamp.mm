@interface SATimestamp
+ (SATimestamp)timestampWithMachAbsTime:(unint64_t)time machAbsTimeSec:(double)sec machContTime:(unint64_t)contTime machContTimeSec:(double)timeSec wallTime:(double)wallTime;
+ (SATimestamp)timestampWithMachAbsTime:(unint64_t)time machContTime:(unint64_t)contTime wallTime:(double)wallTime machTimebase:(mach_timebase_info)timebase;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)now;
+ (id)timestampWithKTraceEvent:(uint64_t)event fromSession:;
+ (id)timestampWithMachAbsTime:(uint64_t)time fromKtraceSession:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (SATimestamp)initWithMachAbsTime:(unint64_t)time machAbsTimeSec:(double)sec machContTime:(unint64_t)contTime machContTimeSec:(double)timeSec wallTime:(double)wallTime;
- (double)deltaSecondsTo:(id)to timeDomainPriorityList:(id)list timeDomainUsed:(unint64_t *)used;
- (id)copyDate;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (int64_t)deltaMachTo:(id)to timeDomainPriorityList:(id)list timeDomainUsed:(unint64_t *)used;
- (uint64_t)applyMachTimebase:(uint64_t)result;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)guessMissingTimesBasedOnCurrentTime;
- (void)guessMissingTimesBasedOnTimestamp:(id)timestamp;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SATimestamp

+ (id)now
{
  mach_get_times();
  v3 = *MEMORY[0x1E695E468];
  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_9);
  }

  v4 = [self timestampWithMachAbsTime:0 machContTime:0 wallTime:qword_1EDD032B0 machTimebase:{0 - v3 + 0 / 1000000000.0, 0, 0, 0, 0}];

  return v4;
}

- (SATimestamp)initWithMachAbsTime:(unint64_t)time machAbsTimeSec:(double)sec machContTime:(unint64_t)contTime machContTimeSec:(double)timeSec wallTime:(double)wallTime
{
  v13.receiver = self;
  v13.super_class = SATimestamp;
  result = [(SATimestamp *)&v13 init];
  if (result)
  {
    result->_machAbsTime = time;
    result->_machAbsTimeSeconds = sec;
    result->_machContTime = contTime;
    result->_machContTimeSeconds = timeSec;
    result->_wallTime = wallTime;
  }

  return result;
}

+ (SATimestamp)timestampWithMachAbsTime:(unint64_t)time machAbsTimeSec:(double)sec machContTime:(unint64_t)contTime machContTimeSec:(double)timeSec wallTime:(double)wallTime
{
  v7 = [[self alloc] initWithMachAbsTime:time machAbsTimeSec:contTime machContTime:sec machContTimeSec:timeSec wallTime:wallTime];

  return v7;
}

+ (SATimestamp)timestampWithMachAbsTime:(unint64_t)time machContTime:(unint64_t)contTime wallTime:(double)wallTime machTimebase:(mach_timebase_info)timebase
{
  contTimeCopy = 0;
  v11 = 0.0;
  if (timebase.denom && timebase.numer)
  {
    if (timebase.numer == timebase.denom)
    {
      v11 = time / 1000000000.0;
      contTimeCopy = contTime;
    }

    else
    {
      v11 = __udivti3() / 1000000000.0;
      contTimeCopy = __udivti3();
    }
  }

  return [self timestampWithMachAbsTime:time machAbsTimeSec:contTime machContTime:v11 machContTimeSec:contTimeCopy / 1000000000.0 wallTime:wallTime];
}

+ (id)timestampWithKTraceEvent:(uint64_t)event fromSession:
{
  v4 = objc_opt_self();
  absolute_from_timestamp = ktrace_get_absolute_from_timestamp();
  continuous_from_timestamp = ktrace_get_continuous_from_timestamp();
  ns_from_timestamp = ktrace_get_ns_from_timestamp();
  v8 = ktrace_get_ns_from_timestamp();
  v9 = *(a2 + 7);
  if (v9)
  {
    v10 = a2[16] / 1000000.0 + v9 - *MEMORY[0x1E695E468];
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v11 = ktrace_convert_timestamp_to_walltime();
    v10 = 0.0;
    if (!v11)
    {
      v10 = 0 - *MEMORY[0x1E695E468] + 0 / 1000000000.0;
    }
  }

  v12 = [v4 timestampWithMachAbsTime:absolute_from_timestamp machAbsTimeSec:continuous_from_timestamp machContTime:ns_from_timestamp / 1000000000.0 machContTimeSec:v8 / 1000000000.0 wallTime:{v10, v14, v15}];

  return v12;
}

+ (id)timestampWithMachAbsTime:(uint64_t)time fromKtraceSession:
{
  objc_opt_self();
  ns_from_timestamp = ktrace_get_ns_from_timestamp();
  continuous_from_absolute = ktrace_get_continuous_from_absolute();
  v6 = ktrace_get_ns_from_timestamp();
  v7 = ktrace_convert_absolute_to_walltime();
  v8 = 0.0;
  if (!v7)
  {
    v8 = 0 - *MEMORY[0x1E695E468] + 0 / 1000000000.0;
  }

  v9 = [SATimestamp timestampWithMachAbsTime:a2 machAbsTimeSec:continuous_from_absolute machContTime:ns_from_timestamp / 1000000000.0 machContTimeSec:v6 / 1000000000.0 wallTime:v8, 0, 0];

  return v9;
}

- (int64_t)compare:(id)compare
{
  v25 = *MEMORY[0x1E69E9840];
  if (self == compare)
  {
    return 0;
  }

  machAbsTime = self->_machAbsTime;
  if (machAbsTime && (v4 = *(compare + 1)) != 0 || (machAbsTime = self->_machContTime) != 0 && (v4 = *(compare + 3)) != 0)
  {
    v5 = machAbsTime > v4;
    if (machAbsTime >= v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }

    if (v5)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    machAbsTimeSeconds = self->_machAbsTimeSeconds;
    if ((machAbsTimeSeconds == 0.0 || (v9 = *(compare + 2), v9 == 0.0)) && ((machAbsTimeSeconds = self->_machContTimeSeconds, machAbsTimeSeconds == 0.0) || (v9 = *(compare + 4), v9 == 0.0)) && ((machAbsTimeSeconds = self->_wallTime, machAbsTimeSeconds == 0.0) || (v9 = *(compare + 5), v9 == 0.0)))
    {
      v11 = *__error();
      v12 = _sa_logt();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [(SATimestamp *)self debugDescription];
        uTF8String = [v13 UTF8String];
        v15 = [compare debugDescription];
        *buf = 136315394;
        v22 = uTF8String;
        v23 = 2080;
        uTF8String2 = [v15 UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "Incomparable timestamps: %s vs %s", buf, 0x16u);
      }

      *__error() = v11;
      v16 = [(SATimestamp *)self debugDescription];
      uTF8String3 = [v16 UTF8String];
      v18 = [compare debugDescription];
      _SASetCrashLogMessage(176, "Incomparable timestamps: %s vs %s", uTF8String3, [v18 UTF8String]);

      result = _os_crash();
      __break(1u);
    }

    else
    {
      if (machAbsTimeSeconds >= v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = -1;
      }

      if (machAbsTimeSeconds <= v9)
      {
        return v10;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (double)deltaSecondsTo:(id)to timeDomainPriorityList:(id)list timeDomainUsed:(unint64_t *)used
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  listCopy = list;
  v9 = [listCopy countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v34;
    *&v10 = 134217984;
    v32 = v10;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(listCopy);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        unsignedLongLongValue = [v14 unsignedLongLongValue];
        switch(unsignedLongLongValue)
        {
          case 16:
            [(SATimestamp *)self machContTimeSeconds];
            if (v20 != 0.0)
            {
              [to machContTimeSeconds];
              if (v21 != 0.0)
              {
                if (used)
                {
                  *used = 16;
                }

                [to machContTimeSeconds];
                v27 = v26;
                [(SATimestamp *)self machContTimeSeconds];
                goto LABEL_34;
              }
            }

            break;
          case 4:
            [(SATimestamp *)self machAbsTimeSeconds];
            if (v18 != 0.0)
            {
              [to machAbsTimeSeconds];
              if (v19 != 0.0)
              {
                if (used)
                {
                  *used = 4;
                }

                [to machAbsTimeSeconds];
                v27 = v29;
                [(SATimestamp *)self machAbsTimeSeconds];
                goto LABEL_34;
              }
            }

            break;
          case 1:
            [(SATimestamp *)self wallTime];
            if (v16 != 0.0)
            {
              [to wallTime];
              if (v17 != 0.0)
              {
                if (used)
                {
                  *used = 1;
                }

                [to wallTime];
                v27 = v30;
                [(SATimestamp *)self wallTime];
LABEL_34:
                v25 = v27 - v28;

                return v25;
              }
            }

            break;
          default:
            v22 = *__error();
            v23 = _sa_logt();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              unsignedLongLongValue2 = [v14 unsignedLongLongValue];
              *buf = v32;
              v38 = unsignedLongLongValue2;
              _os_log_fault_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_FAULT, "Invalid time domain 0x%llx", buf, 0xCu);
            }

            *__error() = v22;
            break;
        }
      }

      v11 = [listCopy countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0.0;
  if (used)
  {
    *used = 0;
  }

  return v25;
}

- (int64_t)deltaMachTo:(id)to timeDomainPriorityList:(id)list timeDomainUsed:(unint64_t *)used
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  listCopy = list;
  v9 = [listCopy countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v25;
    *&v10 = 134217984;
    v23 = v10;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(listCopy);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        unsignedLongLongValue = [v14 unsignedLongLongValue];
        if (unsignedLongLongValue == 2)
        {
          if (-[SATimestamp machAbsTime](self, "machAbsTime") && [to machAbsTime])
          {
            if (used)
            {
              *used = 2;
            }

            machAbsTime = [to machAbsTime];
            machAbsTime2 = [(SATimestamp *)self machAbsTime];
            goto LABEL_27;
          }
        }

        else if (unsignedLongLongValue == 8)
        {
          if (-[SATimestamp machContTime](self, "machContTime") && [to machContTime])
          {
            if (used)
            {
              *used = 8;
            }

            machAbsTime = [to machContTime];
            machAbsTime2 = [(SATimestamp *)self machContTime];
LABEL_27:
            v19 = machAbsTime - machAbsTime2;

            return v19;
          }
        }

        else
        {
          v16 = *__error();
          v17 = _sa_logt();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            unsignedLongLongValue2 = [v14 unsignedLongLongValue];
            *buf = v23;
            v29 = unsignedLongLongValue2;
            _os_log_fault_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_FAULT, "Invalid time domain 0x%llx", buf, 0xCu);
          }

          *__error() = v16;
        }
      }

      v11 = [listCopy countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
  if (used)
  {
    *used = 0;
  }

  return v19;
}

- (void)guessMissingTimesBasedOnTimestamp:(id)timestamp
{
  v106 = *MEMORY[0x1E69E9840];
  if (!self->_machAbsTime || self->_machAbsTimeSeconds == 0.0 || !self->_machContTime || self->_machContTimeSeconds == 0.0 || self->_wallTime == 0.0)
  {
    v95 = 0;
    v96 = &v95;
    v97 = 0x2810000000;
    v98 = "";
    v99 = 0;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v94 = 0;
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke;
    v90[3] = &unk_1E86F7220;
    v90[4] = timestamp;
    v90[5] = self;
    v90[6] = &v91;
    v90[7] = &v95;
    v4 = MEMORY[0x1E12EBE50](v90, a2);
    v4[2]();
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0;
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 0;
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke_4;
    v81[3] = &unk_1E86F7220;
    v81[4] = self;
    v81[5] = timestamp;
    v81[6] = &v82;
    v81[7] = &v86;
    v5 = MEMORY[0x1E12EBE50](v81);
    v5[2]();
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 0;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke_2;
    v72[3] = &unk_1E86F7220;
    v72[4] = self;
    v72[5] = timestamp;
    v72[6] = &v73;
    v72[7] = &v77;
    v6 = MEMORY[0x1E12EBE50](v72);
    v6[2]();
    v7 = 0;
    while (1)
    {
      if (v92[3] == 0.0)
      {
        v12 = 0;
        goto LABEL_87;
      }

      machAbsTimeSeconds = self->_machAbsTimeSeconds;
      if (!self->_machAbsTime)
      {
        if (machAbsTimeSeconds == 0.0)
        {
LABEL_32:
          v12 = 0;
          goto LABEL_54;
        }

        if (!v7)
        {
          v7 = [(SATimestamp *)self copy];
        }

        v13 = v96;
        if (*(v96 + 8))
        {
          v14 = self->_machAbsTimeSeconds;
          if (*(v96 + 9))
          {
            v15 = v96[4];
            if (HIDWORD(v15))
            {
              v16 = v15 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (v16)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v14 * 1000000000.0);
              if (HIDWORD(v15) != v15)
              {
                v17 = __udivti3();
              }
            }

            self->_machAbsTime = v17;
            v20 = v13[4];
            if (HIDWORD(v20))
            {
              v21 = v20 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (v21)
            {
              v17 = 0;
            }

            else if (v20 != HIDWORD(v20))
            {
              v17 = __udivti3();
            }

            v19 = 1000000000.0;
            goto LABEL_52;
          }
        }

        else
        {
          v14 = self->_machAbsTimeSeconds;
        }

        v19 = v92[3];
        v17 = (v14 * v19);
        self->_machAbsTime = v17;
LABEL_52:
        self->_machAbsTimeSeconds = v17 / v19;
        (v4[2])(v4);
        (v5[2])(v5);
        (v6[2])(v6);
        goto LABEL_53;
      }

      if (machAbsTimeSeconds != 0.0)
      {
        goto LABEL_32;
      }

      if (!v7)
      {
        v7 = [(SATimestamp *)self copy];
      }

      if (*(v96 + 8))
      {
        machAbsTime = self->_machAbsTime;
        if (*(v96 + 9))
        {
          v10 = v96[4];
          if (HIDWORD(v10))
          {
            v11 = v10 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            machAbsTime = 0;
          }

          else if (v10 != HIDWORD(v10))
          {
            machAbsTime = __udivti3();
          }

          v18 = machAbsTime / 1000000000.0;
          goto LABEL_40;
        }
      }

      else
      {
        machAbsTime = self->_machAbsTime;
      }

      v18 = machAbsTime / v92[3];
LABEL_40:
      self->_machAbsTimeSeconds = v18;
      (v4[2])(v4);
      (v5[2])(v5);
      (v6[2])(v6);
LABEL_53:
      v12 = 1;
LABEL_54:
      machContTimeSeconds = self->_machContTimeSeconds;
      if (!self->_machContTime)
      {
        if (machContTimeSeconds == 0.0)
        {
          goto LABEL_87;
        }

        if (!v7)
        {
          v7 = [(SATimestamp *)self copy];
        }

        v27 = v96;
        if (*(v96 + 8))
        {
          v28 = self->_machContTimeSeconds;
          if (*(v96 + 9))
          {
            v29 = 0;
            v30 = v96[4];
            if (HIDWORD(v30))
            {
              if (v30)
              {
                v29 = (v28 * 1000000000.0);
                if (HIDWORD(v30) != v30)
                {
                  v29 = __udivti3();
                }
              }
            }

            v31 = 0;
            self->_machContTime = v29;
            v32 = v27[4];
            if (HIDWORD(v32))
            {
              v33 = 1000000000.0;
              if (v32)
              {
                if (v32 != HIDWORD(v32))
                {
                  v29 = __udivti3();
                }

                v31 = v29;
                goto LABEL_79;
              }
            }

            else
            {
LABEL_79:
              v33 = 1000000000.0;
            }

LABEL_85:
            self->_machContTimeSeconds = v31 / v33;
            (v4[2])(v4);
            (v5[2])(v5);
            (v6[2])(v6);
            goto LABEL_86;
          }
        }

        else
        {
          v28 = self->_machContTimeSeconds;
        }

        v33 = v92[3];
        v31 = (v28 * v33);
        self->_machContTime = v31;
        goto LABEL_85;
      }

      if (machContTimeSeconds != 0.0)
      {
        goto LABEL_87;
      }

      if (!v7)
      {
        v7 = [(SATimestamp *)self copy];
      }

      if (*(v96 + 8))
      {
        machContTime = self->_machContTime;
        if (*(v96 + 9))
        {
          v24 = 0;
          v25 = v96[4];
          if (HIDWORD(v25))
          {
            if (v25)
            {
              v24 = self->_machContTime;
              if (v25 != HIDWORD(v25))
              {
                v24 = __udivti3();
              }
            }
          }

          v26 = v24 / 1000000000.0;
          goto LABEL_82;
        }
      }

      else
      {
        machContTime = self->_machContTime;
      }

      v26 = machContTime / v92[3];
LABEL_82:
      self->_machContTimeSeconds = v26;
      (v4[2])(v4);
      (v5[2])(v5);
      (v6[2])(v6);
LABEL_86:
      v12 = 1;
LABEL_87:
      if (*(v74 + 24) != 1)
      {
        goto LABEL_92;
      }

      if (!self->_machAbsTime)
      {
        v36 = *(timestamp + 1);
        if (v36)
        {
          v37 = v78[3] + v36;
          if (v37 > self->_machContTime)
          {
            v38 = *__error();
            v39 = _sa_logt();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v67 = v78[3];
              if (v7)
              {
                selfCopy = v7;
              }

              else
              {
                selfCopy = self;
              }

              v70 = [(SATimestamp *)selfCopy debugDescription];
              v56 = [timestamp debugDescription];
              *buf = 134218498;
              v101 = v67;
              v102 = 2114;
              v103 = *&v70;
              v104 = 2114;
              v105 = v56;
              v68 = v56;
              _os_log_debug_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_DEBUG, "guessing missing timestamps: underflowed mach abs time with delta %llu:\n%{public}@ based on\n%{public}@", buf, 0x20u);
            }

            *__error() = v38;
            goto LABEL_89;
          }

          if (!v7)
          {
            v7 = [(SATimestamp *)self copy];
            v37 = v78[3] + *(timestamp + 1);
          }

          self->_machAbsTime = v37;
          v50 = v92[3];
          if (v50 != 0.0)
          {
            if (*(v96 + 8) && *(v96 + 9))
            {
              v51 = 0;
              v52 = v96[4];
              if (!HIDWORD(v52))
              {
                goto LABEL_147;
              }

              v50 = 1000000000.0;
              if (v52)
              {
                if (v52 == HIDWORD(v52))
                {
                  v51 = v37;
                }

                else
                {
                  v51 = __udivti3();
                }

LABEL_147:
                v50 = 1000000000.0;
              }
            }

            else
            {
              v51 = v37;
            }

            self->_machAbsTimeSeconds = v51 / v50;
          }

          (v4[2])(v4);
          (v5[2])(v5);
          (v6[2])(v6);
          v12 = 1;
        }
      }

LABEL_89:
      if (self->_machContTime || (v40 = *(timestamp + 3)) == 0)
      {
        if ((v12 & 1) == 0)
        {
          v12 = 0;
          if (*(v83 + 24) != 1)
          {
            goto LABEL_127;
          }

LABEL_92:
          if (self->_machAbsTimeSeconds == 0.0)
          {
            v34 = *(timestamp + 2);
            if (v34 != 0.0)
            {
              v35 = v34 + v87[3];
              if (v35 <= 0.0)
              {
                v45 = *__error();
                v46 = _sa_logt();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  v65 = *(v87 + 3);
                  if (v7)
                  {
                    selfCopy2 = v7;
                  }

                  else
                  {
                    selfCopy2 = self;
                  }

                  v69 = [(SATimestamp *)selfCopy2 debugDescription];
                  v54 = [timestamp debugDescription];
                  *buf = 134218498;
                  v101 = v65;
                  v102 = 2114;
                  v103 = *&v69;
                  v104 = 2114;
                  v105 = v54;
                  v66 = v54;
                  _os_log_debug_impl(&dword_1E0E2F000, v46, OS_LOG_TYPE_DEBUG, "guessing missing timestamps: underflowed mach abs time seconds with delta %f:\n%{public}@ based on\n%{public}@", buf, 0x20u);
                }

                *__error() = v45;
              }

              else
              {
                if (!v7)
                {
                  v7 = [(SATimestamp *)self copy];
                  v35 = *(timestamp + 2) + v87[3];
                }

                self->_machAbsTimeSeconds = v35;
                (v4[2])(v4);
                (v5[2])(v5);
                (v6[2])(v6);
                v12 = 1;
              }
            }
          }

          if (self->_machContTimeSeconds == 0.0)
          {
            v47 = *(timestamp + 4);
            if (v47 != 0.0)
            {
              v48 = v47 + v87[3];
              if (v48 > 0.0)
              {
                if (!v7)
                {
                  v7 = [(SATimestamp *)self copy];
                  v48 = *(timestamp + 4) + v87[3];
                }

                self->_machContTimeSeconds = v48;
                (v4[2])(v4);
                (v5[2])(v5);
                (v6[2])(v6);
                v12 = 1;
              }
            }
          }

          if (self->_wallTime == 0.0 && (v49 = *(timestamp + 5), v49 != 0.0))
          {
            if (!v7)
            {
              v7 = [(SATimestamp *)self copy];
              v49 = *(timestamp + 5);
            }

            self->_wallTime = v49 + v87[3];
            (v4[2])(v4);
            (v5[2])(v5);
            (v6[2])(v6);
          }

          else
          {
LABEL_127:
            if ((v12 & 1) == 0)
            {
              if (self->_machAbsTime || self->_machAbsTimeSeconds == 0.0)
              {
                if (self->_machContTime || self->_machContTimeSeconds == 0.0)
                {

                  _Block_object_dispose(&v73, 8);
                  _Block_object_dispose(&v77, 8);

                  _Block_object_dispose(&v82, 8);
                  _Block_object_dispose(&v86, 8);

                  _Block_object_dispose(&v91, 8);
                  _Block_object_dispose(&v95, 8);

                  return;
                }
              }

              else
              {
                v57 = *__error();
                v58 = _sa_logt();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  v59 = self->_machAbsTime;
                  v60 = self->_machAbsTimeSeconds;
                  *buf = 134218240;
                  v101 = v59;
                  v102 = 2048;
                  v103 = v60;
                  _os_log_error_impl(&dword_1E0E2F000, v58, OS_LOG_TYPE_ERROR, "machAbs %llu and machAbsSec %f", buf, 0x16u);
                }

                *__error() = v57;
                _SASetCrashLogMessage(519, "machAbs %llu and machAbsSec %f", self->_machAbsTime, self->_machAbsTimeSeconds);
                _os_crash();
                __break(1u);
              }

              v61 = *__error();
              v62 = _sa_logt();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                v63 = self->_machContTime;
                v64 = self->_machContTimeSeconds;
                *buf = 134218240;
                v101 = v63;
                v102 = 2048;
                v103 = v64;
                _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "machCont %llu and machContSec %f", buf, 0x16u);
              }

              *__error() = v61;
              _SASetCrashLogMessage(520, "machCont %llu and machContSec %f", self->_machContTime, self->_machContTimeSeconds);
              _os_crash();
              __break(1u);
            }
          }
        }
      }

      else
      {
        if (!v7)
        {
          v7 = [(SATimestamp *)self copy];
          v40 = *(timestamp + 3);
        }

        v41 = v78[3] + v40;
        self->_machContTime = v41;
        v42 = v92[3];
        if (v42 != 0.0)
        {
          if (*(v96 + 8) && *(v96 + 9))
          {
            v43 = 0;
            v44 = v96[4];
            if (!HIDWORD(v44))
            {
              goto LABEL_113;
            }

            v42 = 1000000000.0;
            if (v44)
            {
              v43 = v41;
              v42 = 1000000000.0;
              if (v44 != HIDWORD(v44))
              {
                v43 = __udivti3();
LABEL_113:
                v42 = 1000000000.0;
              }
            }
          }

          else
          {
            v43 = v41;
          }

          self->_machContTimeSeconds = v43 / v42;
        }

        (v4[2])(v4);
        (v5[2])(v5);
        (v6[2])(v6);
      }
    }
  }
}

int *__49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke(int *result, double a2, double a3, double a4, double a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(*(result + 6) + 8);
  v6 = *(v5 + 24);
  if (v6 == 0.0)
  {
    v7 = result;
    v8 = *(result + 4);
    v9 = *(v8 + 8);
    if (v9 && (v10 = *(v8 + 16), v10 != 0.0) || (v9 = *(v8 + 24)) != 0 && (v10 = *(v8 + 32), v10 != 0.0) || (v11 = *(result + 5), (v9 = *(v11 + 8)) != 0) && (v10 = *(v11 + 16), v10 != 0.0) || (v9 = *(v11 + 24)) != 0 && (v10 = *(v11 + 32), v10 != 0.0))
    {
      *(v5 + 24) = v9 / v10;
      v6 = *(*(*(result + 6) + 8) + 24);
    }

    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = &TRIGeneralErrorDomain_block_invoke_knownMachTimebases[v12];
      LODWORD(a5) = *v14;
      LODWORD(a4) = *(v14 + 1);
      v15 = *&a4 * 1000000000.0 / *&a5;
      a5 = vabdd_f64(v15, v6);
      a4 = a5 / v15;
      if (a4 < 0.0000001)
      {
        break;
      }

      v16 = v13;
      v13 = 0;
      v12 = 1;
      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    *(*(*(result + 7) + 8) + 32) = *v14;
LABEL_16:
    v17 = *(*(result + 7) + 8);
    if (!*(v17 + 32) || !*(v17 + 36))
    {
      v18 = *__error();
      v19 = _sa_logt();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v20 = *(*(*(v7 + 6) + 8) + 24) / 1000000000.0;
        v21 = 134217984;
        v22 = v20;
        _os_log_fault_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_FAULT, "Using unknown mach timebase %f", &v21, 0xCu);
      }

      result = __error();
      *result = v18;
    }
  }

  return result;
}

double __49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke_4(void *a1)
{
  v1 = *(a1[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = a1[4];
    if (v2[4] != 0.0 && *(a1[5] + 32) != 0.0)
    {
      v3 = 32;
LABEL_11:
      *(v1 + 24) = 1;
      result = *(a1[4] + v3) - *(a1[5] + v3);
      *(*(a1[7] + 8) + 24) = result;
      return result;
    }

    if (v2[5] != 0.0 && *(a1[5] + 40) != 0.0)
    {
      v3 = 40;
      goto LABEL_11;
    }

    result = v2[2];
    if (result != 0.0)
    {
      result = *(a1[5] + 16);
      if (result != 0.0)
      {
        v3 = 16;
        goto LABEL_11;
      }
    }
  }

  return result;
}

void *__49__SATimestamp_guessMissingTimesBasedOnTimestamp___block_invoke_2(void *result)
{
  v1 = *(result[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result[4];
    if (*(v2 + 8) && *(result[5] + 8))
    {
      v3 = 8;
LABEL_8:
      *(v1 + 24) = 1;
      *(*(result[7] + 8) + 24) = *(result[4] + v3) - *(result[5] + v3);
      return result;
    }

    if (*(v2 + 24) && *(result[5] + 24))
    {
      v3 = 24;
      goto LABEL_8;
    }
  }

  return result;
}

- (void)guessMissingTimesBasedOnCurrentTime
{
  v3 = +[SATimestamp timestamp];
  [(SATimestamp *)self guessMissingTimesBasedOnTimestamp:v3];
}

- (NSString)debugDescription
{
  v2.i64[0] = *&self->_wallTime;
  v4 = _CopyStringForTime(3, v2);
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ machabs:%llu (%fs) machcont:%llu (%fs)", v4, self->_machAbsTime, *&self->_machAbsTimeSeconds, self->_machContTime, *&self->_machContTimeSeconds];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  machAbsTime = self->_machAbsTime;
  machAbsTimeSeconds = self->_machAbsTimeSeconds;
  machContTime = self->_machContTime;
  machContTimeSeconds = self->_machContTimeSeconds;
  wallTime = self->_wallTime;

  return [v4 initWithMachAbsTime:machAbsTime machAbsTimeSec:machContTime machContTime:machAbsTimeSeconds machContTimeSec:machContTimeSeconds wallTime:wallTime];
}

- (id)copyDate
{
  if (self->_wallTime == 0.0)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x1E695DF00]);
  wallTime = self->_wallTime;

  return [v4 initWithTimeIntervalSinceReferenceDate:wallTime];
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  if (self->_wallTime != 0.0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    SAJSONWriteDictionaryFirstEntry(stream, @"wallTimeCF", v5);

    if (!self->_machAbsTime)
    {
LABEL_7:
      if (!self->_machContTime)
      {
        return;
      }

      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      SAJSONWriteDictionaryEntry(stream, @"machContTime", v7);
      goto LABEL_9;
    }

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryEntry(stream, @"machAbsTime", v6);
LABEL_6:

    goto LABEL_7;
  }

  if (self->_machAbsTime)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryFirstEntry(stream, @"machAbsTime", v6);
    goto LABEL_6;
  }

  if (!self->_machContTime)
  {
    return;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  SAJSONWriteDictionaryFirstEntry(stream, @"machContTime", v7);
LABEL_9:
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SATimestamp *)self sizeInBytesForSerializedVersion:buffer]!= length)
  {
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SATimestamp *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v12 UTF8String];
      v24 = 2048;
      sizeInBytesForSerializedVersion = [(SATimestamp *)self sizeInBytesForSerializedVersion];
      v26 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v10;
    v13 = [(SATimestamp *)self debugDescription];
    _SASetCrashLogMessage(776, "%s: size %lu != buffer length %lu", [v13 UTF8String], -[SATimestamp sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  *&buffer->var0 = 257;
  machAbsTime = self->_machAbsTime;
  if (!machAbsTime && self->_machAbsTimeSeconds != 0.0)
  {
LABEL_10:
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = self->_machAbsTime;
      machAbsTimeSeconds = self->_machAbsTimeSeconds;
      *buf = 134218240;
      uTF8String = v16;
      v24 = 2048;
      sizeInBytesForSerializedVersion = *&machAbsTimeSeconds;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "machAbs %llu and machAbsSec %f", buf, 0x16u);
    }

    *__error() = v14;
    _SASetCrashLogMessage(782, "machAbs %llu and machAbsSec %f", self->_machAbsTime, self->_machAbsTimeSeconds);
    _os_crash();
    __break(1u);
LABEL_13:
    v18 = *__error();
    v19 = _sa_logt();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      machContTime = self->_machContTime;
      machContTimeSeconds = self->_machContTimeSeconds;
      *buf = 134218240;
      uTF8String = machContTime;
      v24 = 2048;
      sizeInBytesForSerializedVersion = *&machContTimeSeconds;
      _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "machCont %llu and machContSec %f", buf, 0x16u);
    }

    *__error() = v18;
    _SASetCrashLogMessage(783, "machCont %llu and machContSec %f", self->_machContTime, self->_machContTimeSeconds);
    _os_crash();
    __break(1u);
  }

  if (!self->_machContTime && self->_machContTimeSeconds != 0.0)
  {
    goto LABEL_13;
  }

  *(&buffer->var1 + 1) = machAbsTime;
  *(&buffer->var2 + 2) = self->_machContTime;
  *(&buffer->var3 + 2) = *&self->_wallTime;
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v13 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_7;
  }

  if (length <= 0x19)
  {
    v6 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v11 = 2048;
      v12 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATimestamp struct %lu", buf, 0x16u);
    }

    *__error() = v6;
    _SASetCrashLogMessage(801, "bufferLength %lu < serialized SATimestamp struct %lu", length, 26);
    _os_crash();
    __break(1u);
LABEL_7:
    v8 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATimestamp version" userInfo:0];
    objc_exception_throw(v8);
  }

  [SATimestamp timestampWithMachAbsTime:*(buffer + 2) machAbsTimeSec:*(buffer + 10) machContTime:0.0 machContTimeSec:0.0 wallTime:*(buffer + 18)];
  return objc_claimAutoreleasedReturnValue();
}

- (uint64_t)applyMachTimebase:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    v5 = *(result + 16);
    if (v4)
    {
      if (v5 == 0.0)
      {
        result = 0;
        if (HIDWORD(a2))
        {
          if (a2)
          {
            result = v4;
            if (a2 != HIDWORD(a2))
            {
              result = __udivti3();
            }
          }
        }

        *(v3 + 16) = result / 1000000000.0;
      }
    }

    else if (v5 != 0.0)
    {
      result = 0;
      if (HIDWORD(a2))
      {
        if (a2)
        {
          result = (v5 * 1000000000.0);
          if (HIDWORD(a2) != a2)
          {
            result = __udivti3();
          }
        }
      }

      *(v3 + 8) = result;
    }

    v6 = *(v3 + 32);
    if (*(v3 + 24))
    {
      if (v6 == 0.0)
      {
        result = 0;
        if (HIDWORD(a2) && a2)
        {
          result = *(v3 + 24);
          if (a2 != HIDWORD(a2))
          {
            result = __udivti3();
          }
        }

        *(v3 + 32) = result / 1000000000.0;
      }
    }

    else if (v6 != 0.0)
    {
      result = 0;
      if (HIDWORD(a2))
      {
        if (a2)
        {
          result = (v6 * 1000000000.0);
          if (HIDWORD(a2) != a2)
          {
            result = __udivti3();
          }
        }
      }

      *(v3 + 24) = result;
    }
  }

  return result;
}

@end