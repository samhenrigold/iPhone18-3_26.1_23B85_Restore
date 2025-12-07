@interface BKHIDTouchSensitiveButtonEventProcessor
- (BKHIDTouchSensitiveButtonEventProcessor)initWithContext:(id)context;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
@end

@implementation BKHIDTouchSensitiveButtonEventProcessor

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  v10 = *event;
  if (IOHIDEventGetType() == 42)
  {
    os_unfair_lock_lock(&self->_lock);
    v72 = senderCopy;
    v74 = senderCopy;
    v71 = dispatcherCopy;
    v73 = dispatcherCopy;
    if (self)
    {
      os_unfair_lock_assert_owner(&self->_lock);
      senderID = [v74 senderID];
      IntegerValue = IOHIDEventGetIntegerValue();
      v68 = IOHIDEventGetIntegerValue();
      memset(buf, 0, sizeof(buf));
      v84 = 0u;
      v85 = 0u;
      v11 = IOHIDEventGetChildren();
      v12 = [v11 countByEnumeratingWithState:buf objects:&v75 count:16];
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        v15 = **&buf[16];
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (**&buf[16] != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*&buf[8] + 8 * i);
            Type = IOHIDEventGetType();
            if (Type == 1)
            {
              if (IOHIDEventGetIntegerValue() == 65280 && IOHIDEventGetIntegerValue() == 34)
              {
                v13 = v17;
              }
            }

            else if (Type == 41)
            {
              v14 = v17;
            }

            if (v13 && v14)
            {

              goto LABEL_22;
            }
          }

          v12 = [v11 countByEnumeratingWithState:buf objects:&v75 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

        if (!v14)
        {
          goto LABEL_36;
        }

LABEL_22:
        v20 = IOHIDEventGetIntegerValue();
        v21 = IOHIDEventGetIntegerValue();
        v22 = [_BKTouchSensitiveButtonKey alloc];
        if (v22)
        {
          v75.receiver = v22;
          v75.super_class = _BKTouchSensitiveButtonKey;
          v23 = [(BKHIDTouchSensitiveButtonEventProcessor *)&v75 init];
          v24 = v23;
          if (v23)
          {
            *&v23->_lock._os_unfair_lock_opaque = senderID;
            LOWORD(v23->_buttonScanningController) = IntegerValue;
            WORD1(v23->_buttonScanningController) = v68;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = [(NSMutableDictionary *)self->_lock_eventRecords objectForKey:v24];
        v26 = v24;
        v75.receiver = v26;
        v27 = v25;
        v75.super_class = v27;
        v76 = v20;
        v77 = v21;
        v78 = v10;
        v79 = v14;
        v80 = v13;
        v81 = v74;
        v82 = v73;
        v28 = 2 * (v21 == 0);
        v29 = sub_100008528();
        if (os_log_type_enabled(v29, v28))
        {
          TimeStamp = IOHIDEventGetTimeStamp();
          v32 = sub_100027568(v10, v31);
          *buf = 134218242;
          *&buf[4] = TimeStamp;
          *&buf[12] = 2114;
          *&buf[14] = v32;
          _os_log_impl(&_mh_execute_header, v29, v28, "in %llX %{public}@", buf, 0x16u);
        }

        if (v76)
        {
          if (v75.super_class)
          {
            v33 = *(v75.super_class + 2);
          }

          else
          {
            v33 = 0;
          }

          SenderID = IOHIDEventGetSenderID();
          v35 = SenderID;
          if (SenderID)
          {
            if (v33 && SenderID != v33)
            {
              v36 = sub_100008528();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&buf[4] = v35;
                *&buf[12] = 2048;
                *&buf[14] = v33;
                v37 = "TouchSensitiveButton: dropping event for sender %llX -- existing event for sender %llX is in progress";
                v38 = v36;
                v39 = 22;
LABEL_73:
                _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
              }

LABEL_41:

LABEL_42:
              sub_100035C24(&v75);

              goto LABEL_43;
            }

            if (!v77)
            {
              if (!v75.super_class)
              {
                v36 = sub_100008528();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  receiver = v75.receiver;
                  v67 = sub_100026D80(v76);
                  *buf = 138543618;
                  *&buf[4] = receiver;
                  *&buf[12] = 2114;
                  *&buf[14] = v67;
                  _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "[TouchSensitiveButton %{public}@]: did not see an enter transition to stage %{public}@, ignoring change event", buf, 0x16u);
                }

                goto LABEL_41;
              }

              sub_100035FC0(self, v10, &v75);
              sub_100035C70(&v75, v61);
              v50 = v77;
              super_class = v75.super_class;
              if (v75.super_class)
              {
                super_class = *(v75.super_class + 5);
              }

              goto LABEL_56;
            }

            if (v77 != 2)
            {
              if (v77 != 1)
              {
                goto LABEL_42;
              }

              v43 = v75.receiver;
              v44 = v75.super_class;
              if (!v44)
              {
                v44 = objc_alloc_init(_BKTouchSensitiveButtonEventRecord);
                objc_storeStrong(&v75.super_class, v44);
                lock_eventRecords = self->_lock_eventRecords;
                if (!lock_eventRecords)
                {
                  v46 = objc_alloc_init(NSMutableDictionary);
                  v47 = self->_lock_eventRecords;
                  self->_lock_eventRecords = v46;

                  lock_eventRecords = self->_lock_eventRecords;
                }

                [(NSMutableDictionary *)lock_eventRecords setObject:v44 forKey:v43];
                v48 = IOHIDEventGetSenderID();
                if (v44)
                {
                  v44->_senderID = v48;
                }
              }

              sub_100035FC0(self, v10, &v75);
              sub_100035C70(&v75, v49);
              v50 = v77;
              super_class = v75.super_class;
              if (v75.super_class)
              {
                super_class = *(v75.super_class + 5);
              }

LABEL_56:
              v36 = super_class;
              sub_100035D34(self, v10, 0, v50, v36, v82);
              goto LABEL_41;
            }

            v52 = v75.super_class;
            v36 = v52;
            if (v52)
            {
              v53 = v76;
              v54 = v52[3];
              v55 = [v54 containsIndex:v53];

              if (v55)
              {
                sub_100035C70(&v75, v56);
                v57 = v77;
                v58 = v36[5].isa;
                sub_100035D34(self, v10, 0, v57, v58, v82);

                v59 = v36[3].isa;
                v60 = [(objc_class *)v59 count]== 0;

                if (v60)
                {
                  [(NSMutableDictionary *)self->_lock_eventRecords removeObjectForKey:v75.receiver];
                }

                goto LABEL_41;
              }

              v62 = sub_100008528();
              if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_70;
              }

              *buf = 138543618;
              *&buf[4] = v75.receiver;
              *&buf[12] = 1024;
              *&buf[14] = v53;
              v63 = "[TouchSensitiveButton %{public}@]: did not see an enter transition to stage %d, ignoring exit event";
              v64 = v62;
              v65 = 18;
            }

            else
            {
              v62 = sub_100008528();
              if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
LABEL_70:

                goto LABEL_41;
              }

              *buf = 138543362;
              *&buf[4] = v75.receiver;
              v63 = "[TouchSensitiveButton %{public}@]: did not see an enter transition for this button, ignoring exit event";
              v64 = v62;
              v65 = 12;
            }

            _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, v63, buf, v65);
            goto LABEL_70;
          }

          v36 = sub_100008528();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          *buf = 0;
          v37 = "TouchSensitiveButton: dropping event because event senderID is zero. Populate your event fields correctly, people.";
        }

        else
        {
          v36 = sub_100008528();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          *buf = 0;
          v37 = "TouchSensitiveButton: got event for idle stage, bailing";
        }

        v38 = v36;
        v39 = 2;
        goto LABEL_73;
      }

LABEL_36:
      v26 = sub_100008528();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v41 = sub_100027568(v10, v40);
        LODWORD(v75.receiver) = 138543362;
        *(&v75.receiver + 4) = v41;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "missing force stage event -- dropping event: %{public}@", &v75, 0xCu);
      }

LABEL_43:
    }

    os_unfair_lock_unlock(&self->_lock);
    v19 = 1;
    dispatcherCopy = v71;
    senderCopy = v72;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BKHIDTouchSensitiveButtonEventProcessor)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = BKHIDTouchSensitiveButtonEventProcessor;
  v5 = [(BKHIDTouchSensitiveButtonEventProcessor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [[BKHIDTouchSensitiveButtonScanningController alloc] initWithContext:contextCopy];
    buttonScanningController = v6->_buttonScanningController;
    v6->_buttonScanningController = v7;
  }

  return v6;
}

@end