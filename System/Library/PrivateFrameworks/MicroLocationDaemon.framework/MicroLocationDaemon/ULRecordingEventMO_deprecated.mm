@interface ULRecordingEventMO_deprecated
+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context;
- (void)convertToDO;
@end

@implementation ULRecordingEventMO_deprecated

+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [[ULRecordingEventMO_deprecated alloc] initWithContext:context];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o];
  uUIDString = [v6 UUIDString];
  [(ULRecordingEventMO_deprecated *)v5 setRecordingUUID:uUIDString];

  [(ULRecordingEventMO_deprecated *)v5 setRecordingTimestamp:*(o + 2)];
  if (*(o + 47) >= 0)
  {
    v8 = o + 24;
  }

  else
  {
    v8 = *(o + 3);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  [(ULRecordingEventMO_deprecated *)v5 setLoiType:v9];

  [(ULRecordingEventMO_deprecated *)v5 setReceivedTimestamp:*(o + 8)];
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o + 48];
  uUIDString2 = [v10 UUIDString];
  [(ULRecordingEventMO_deprecated *)v5 setLoiId:uUIDString2];

  if (*(o + 240) == 1)
  {
    v21 = *(o + 14);
  }

  else
  {
    v21 = 0uLL;
  }

  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v21];
  uUIDString3 = [v12 UUIDString];
  [(ULRecordingEventMO_deprecated *)v5 setTriggerUUID:uUIDString3];

  v14 = [(ULRecordingEventMO_deprecated *)v5 setEventType:*(o + 18)];
  v16 = *(o + 18);
  if (v16 == 13)
  {
    if ((*(o + 221) & 4) != 0)
    {
      v19 = *(o + 21);
      if (!v19)
      {
        v14 = CLMicroLocationProto::RecordingEvent::default_instance(v14);
        v19 = *(v14 + 11);
      }

      if ((*(v19 + 44) & 2) != 0)
      {
        v18 = *(o + 21);
        if (!v18)
        {
          v18 = *(CLMicroLocationProto::RecordingEvent::default_instance(v14) + 88);
        }

        goto LABEL_21;
      }
    }
  }

  else if (v16 == 1 && (*(o + 220) & 4) != 0)
  {
    v17 = *(o + 12);
    if (!v17)
    {
      v14 = CLMicroLocationProto::RecordingEvent::default_instance(v14);
      v17 = *(v14 + 2);
    }

    if ((*(v17 + 44) & 2) != 0)
    {
      v18 = *(o + 12);
      if (!v18)
      {
        v18 = *(CLMicroLocationProto::RecordingEvent::default_instance(v14) + 16);
      }

LABEL_21:
      [(ULRecordingEventMO_deprecated *)v5 setEventSubType:*(v18 + 12)];
    }
  }

  CLMicroLocationProto::RecordingEvent::ByteSize((o + 80), v15);
  operator new[]();
}

- (void)convertToDO
{
  v49 = *MEMORY[0x277D85DE8];
  recordingUUID = [self recordingUUID];
  v5 = recordingUUID;
  if (recordingUUID)
  {
    objc_msgSend_boostUUID(recordingUUID);
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  if (v48)
  {
    [self recordingTimestamp];
    v7 = v6;
    [self receivedTimestamp];
    v9 = v8;
    loiType = [self loiType];
    v11 = loiType;
    if (loiType)
    {
      objc_msgSend_stdString(loiType);
    }

    else
    {
      *v30 = 0u;
      v31 = 0u;
    }

    if (BYTE8(v31))
    {
      loiId = [self loiId];
      v14 = loiId;
      if (loiId)
      {
        objc_msgSend_boostUUID(loiId);
      }

      else
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
      }

      if ((v45 & 1) == 0)
      {
        v43 = 0;
        v44 = 0;
        v45 = 1;
      }

      eventType = [self eventType];
      triggerUUID = [self triggerUUID];
      v18 = triggerUUID;
      if (triggerUUID)
      {
        objc_msgSend_boostUUID(triggerUUID);
      }

      else
      {
        v41 = 0uLL;
        v42 = 0;
      }

      if (v42 == 1 && v41 == 0)
      {
        v42 = 0;
      }

      event = [self event];
      v20 = event;
      bytes = [event bytes];
      event2 = [self event];
      [event2 length];
      LOBYTE(bytes) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v29, bytes);

      if (bytes)
      {
        if (v48 != 1 || (BYTE8(v31) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v24 = v46;
        v25 = v47;
        if (SBYTE7(v31) < 0)
        {
          std::string::__init_copy_ctor_external(&v28, v30[0], v30[1]);
        }

        else
        {
          *&v28.__r_.__value_.__l.__data_ = *v30;
          v28.__r_.__value_.__r.__words[2] = v31;
        }

        v32 = v41;
        v33 = v42;
        if ((v45 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        ULRecordingEventDO::ULRecordingEventDO(buf, v24, v25, &v28, eventType, v29, &v32, v23, v7, v9, v43, v44);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        v27 = v37;
        *(a2 + 16) = v35;
        *a2 = *buf;
        *(a2 + 24) = __p;
        *(a2 + 40) = v27;
        __p = 0uLL;
        v37 = 0;
        *(a2 + 48) = v38[0];
        *(a2 + 60) = *(v38 + 12);
        CLMicroLocationProto::RecordingEvent::RecordingEvent((a2 + 80), v39);
        *(a2 + 224) = v39[9];
        *(a2 + 240) = v40;
        *(a2 + 248) = 1;
        CLMicroLocationProto::RecordingEvent::~RecordingEvent(v39);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          +[ULRecordingEventMO_deprecated createFromDO:inManagedObjectContext:];
        }

        v26 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_ERROR, "convertToDO: Failed to deserialize recordingEvent protobuf from byte stream", buf, 2u);
        }

        *a2 = 0;
        *(a2 + 248) = 0;
      }

      CLMicroLocationProto::RecordingEvent::~RecordingEvent(v29);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        +[ULRecordingEventMO_deprecated createFromDO:inManagedObjectContext:];
      }

      v15 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_ERROR, "convertToDO: recordingEvent's loiType has no value", buf, 2u);
      }

      *a2 = 0;
      *(a2 + 248) = 0;
    }

    if (BYTE8(v31) == 1 && SBYTE7(v31) < 0)
    {
      operator delete(v30[0]);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      +[ULRecordingEventMO_deprecated createFromDO:inManagedObjectContext:];
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "convertToDO: recordingEvent's recordingUUID has no value", buf, 2u);
    }

    *a2 = 0;
    *(a2 + 248) = 0;
  }
}

@end