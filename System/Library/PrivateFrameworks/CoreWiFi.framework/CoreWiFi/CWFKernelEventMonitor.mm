@interface CWFKernelEventMonitor
+ (id)descriptionForKernelEventCode:(unint64_t)code;
- (BOOL)isMonitoringEvents;
- (CWFKernelEventMonitor)init;
- (unint64_t)interfaceFlagsWithInterfaceName:(id)name;
- (void)dealloc;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation CWFKernelEventMonitor

- (BOOL)isMonitoringEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0BD4E9C;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)descriptionForKernelEventCode:(unint64_t)code
{
  if (code - 1 >= 0x1E)
  {
    code = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%lu)", code];
  }

  else
  {
    code = off_1E86E6798[code - 1];
  }

  return code;
}

- (CWFKernelEventMonitor)init
{
  v49 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = CWFKernelEventMonitor;
  v2 = [(CWFKernelEventMonitor *)&v38 init];
  if (!v2)
  {
    goto LABEL_28;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.corewifi.kevent-mutex", v3);
  v5 = *(v2 + 1);
  *(v2 + 1) = v4;

  if (!*(v2 + 1))
  {
    goto LABEL_28;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.corewifi.kevent-event", v6);
  v8 = *(v2 + 2);
  *(v2 + 2) = v7;

  if (!*(v2 + 2))
  {
    goto LABEL_28;
  }

  v9 = socket(32, 3, 1);
  v10 = v9;
  if (v9 < 0)
  {
    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = *__error();
      v24 = __error();
      v25 = strerror(*v24);
      v39 = 136447234;
      v40 = "[CWFKernelEventMonitor init]";
      v41 = 2082;
      v42 = "CWFKernelEventMonitor.m";
      v43 = 1024;
      v44 = 185;
      v45 = 1024;
      v46 = v23;
      v47 = 2082;
      v48 = v25;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 16, "[corewifi] %{public}s (%{public}s:%u) event socket() failed, %d (%{public}s)", &v39, 44);
    }

    if (v10 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v37 = 2;
  v36 = 0x100000001;
  if (ioctl(v9, 0x800C6502uLL, &v36))
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v27 = *__error();
      v28 = __error();
      v29 = strerror(*v28);
      v39 = 136447234;
      v40 = "[CWFKernelEventMonitor init]";
      v41 = 2082;
      v42 = "CWFKernelEventMonitor.m";
      v43 = 1024;
      v44 = 188;
      v45 = 1024;
      v46 = v27;
      v47 = 2082;
      v48 = v29;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 16, "[corewifi] %{public}s (%{public}s:%u) SIOCSKEVFILT failed, %d (%{public}s)", &v39, 44);
    }

    goto LABEL_26;
  }

  v11 = dispatch_source_create(MEMORY[0x1E69E96F8], v10, 0, *(v2 + 2));
  v12 = *(v2 + 3);
  *(v2 + 3) = v11;

  v13 = *(v2 + 3);
  if (!v13)
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v39 = 136446722;
      v40 = "[CWFKernelEventMonitor init]";
      v41 = 2082;
      v42 = "CWFKernelEventMonitor.m";
      v43 = 1024;
      v44 = 191;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 16, "[corewifi] %{public}s (%{public}s:%u) dispatch_source_create failed", &v39, 28);
    }

LABEL_26:

LABEL_27:
    close(v10);
LABEL_28:

    return 0;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0C26594;
  handler[3] = &unk_1E86E6750;
  v35 = v10;
  dispatch_source_set_cancel_handler(v13, handler);
  v14 = *(v2 + 3);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1E0BD476C;
  v31[3] = &unk_1E86E6778;
  v33 = v10;
  v15 = v2;
  v32 = v15;
  dispatch_source_set_event_handler(v14, v31);

  dispatch_activate(*(v2 + 3));
  return v15;
}

- (void)dealloc
{
  keventSource = self->_keventSource;
  if (keventSource)
  {
    dispatch_source_cancel(keventSource);
  }

  v4.receiver = self;
  v4.super_class = CWFKernelEventMonitor;
  [(CWFKernelEventMonitor *)&v4 dealloc];
}

- (void)startEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C26660;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)stopEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C2671C;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (unint64_t)interfaceFlagsWithInterfaceName:(id)name
{
  v11 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = nameCopy;
  v9 = 0u;
  v10 = 0u;
  if (nameCopy && [nameCopy length] && objc_msgSend(v4, "length") <= 0x10 && (v5 = socket(30, 2, 0), v5 != -1))
  {
    v6 = v5;
    if ([v4 getCString:&v9 maxLength:16 encoding:4])
    {
      ioctl(v6, 0xC0206911uLL, &v9);
    }

    close(v6);
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end