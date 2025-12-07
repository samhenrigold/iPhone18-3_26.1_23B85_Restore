@interface IMAudioSessionController
+ (id)queue;
+ (id)sharedInstance;
- (void)configureAudioSessionWithOptions:(unint64_t)options;
- (void)setActive:(BOOL)active options:(unint64_t)options completion:(id)completion;
@end

@implementation IMAudioSessionController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254803EBC;
  block[3] = &unk_279789240;
  block[4] = self;
  if (qword_27F611850 != -1)
  {
    dispatch_once(&qword_27F611850, block);
  }

  v2 = qword_27F611848;

  return v2;
}

+ (id)queue
{
  if (qword_27F611860 != -1)
  {
    sub_254805998();
  }

  v3 = qword_27F611858;

  return v3;
}

- (void)setActive:(BOOL)active options:(unint64_t)options completion:(id)completion
{
  activeCopy = active;
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v13 = objc_msgSend_audio(IMSharedUILogs, v9, v10, v12, v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = MEMORY[0x259C1AB40](completionCopy);
    *buf = 67109632;
    v27 = activeCopy;
    v28 = 1024;
    v29 = options & 1;
    v30 = 2048;
    v31 = v14;
    _os_log_impl(&dword_2547F8000, v13, OS_LOG_TYPE_INFO, "setActive:%d shouldUseSpeaker:%d completion:%p", buf, 0x18u);
  }

  v19 = objc_msgSend_queue(IMAudioSessionController, v15, v16, v18, v17);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2548041D8;
  v21[3] = &unk_279789268;
  v24 = activeCopy;
  v25 = options & 1;
  v21[4] = self;
  v22 = completionCopy;
  optionsCopy = options;
  v20 = completionCopy;
  dispatch_async(v19, v21);
}

- (void)configureAudioSessionWithOptions:(unint64_t)options
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, options, v4, v3);
  v17 = @"IMAudioSessionControllerSessionNotificationOptionsKey";
  v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, options, v10, v9);
  v18[0] = v11;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v18, v13, &v17, 1);
  objc_msgSend_postNotificationName_object_userInfo_(v7, v15, @"IMAudioSessionControllerSessionOptionsWillChangeNotification", v16, self, v14);
}

@end