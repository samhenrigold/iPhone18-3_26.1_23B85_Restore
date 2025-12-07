@interface IMAudioController_iOS
- (IMAudioController_iOS)initWithContentsOfURLs:(id)ls;
- (void)applicationWillResignActive;
- (void)audioSessionInterruption:(id)interruption;
- (void)dealloc;
@end

@implementation IMAudioController_iOS

- (IMAudioController_iOS)initWithContentsOfURLs:(id)ls
{
  v14.receiver = self;
  v14.super_class = IMAudioController_iOS;
  v6 = [(IMAudioController *)&v14 initWithContentsOfURLs:ls];
  if (v6)
  {
    v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v3, v4, v7, v5);
    objc_msgSend_addObserver_selector_name_object_(v8, v9, v6, v10, sel_audioSessionInterruption_, *MEMORY[0x277CB8068], 0);
    objc_msgSend_addObserver_selector_name_object_(v8, v11, v6, v12, sel_applicationWillResignActive, *MEMORY[0x277D76768], 0);
  }

  return v6;
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v4, v3);
  objc_msgSend_removeObserver_(v6, v7, self, v9, v8);

  v10.receiver = self;
  v10.super_class = IMAudioController_iOS;
  [(IMAudioController *)&v10 dealloc];
}

- (void)audioSessionInterruption:(id)interruption
{
  objc_msgSend_setInterrupted_(self, a2, 1, v4, v3);
  v10 = objc_msgSend_audioPlayer(self, v6, v7, v9, v8);
  objc_msgSend_stop(v10, v11, v12, v14, v13);

  objc_msgSend_setInterrupted_(self, v15, 0, v17, v16);
}

- (void)applicationWillResignActive
{
  v9 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  objc_msgSend_stop(v9, v5, v6, v8, v7);
}

@end