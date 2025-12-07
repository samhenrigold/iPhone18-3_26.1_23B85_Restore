@interface CSSiriMobileBluetoothDeviceProxy
- (CSSiriMobileBluetoothDeviceProxy)initWithAddress:(id)address dataSource:(id)source queue:(id)queue;
- (CSSiriMobileBluetoothDeviceProxy)initWithDeviceUID:(id)d dataSource:(id)source queue:(id)queue;
- (NSString)description;
- (id)deviceInfo;
- (id)identifier;
- (void)_accessBTDeviceAndAccessoryManagerUsingBlock:(id)block;
- (void)_enumerateObserversUsingBlock:(id)block;
- (void)_fetchDeviceInfoWithCompletion:(id)completion;
- (void)_getDeviceInfo:(id)info;
- (void)_invalidate;
- (void)_reload:(BOOL)_reload;
- (void)_updateDeviceInfo:(id)info;
- (void)addObserver:(id)observer;
- (void)connect:(id)connect;
- (void)dealloc;
- (void)disconnect:(id)disconnect;
- (void)getConversationAwareness:(id)awareness;
- (void)getDeviceInfo:(id)info;
- (void)getHeadphoneInEarDetectionState:(id)state;
- (void)getHeadphoneListeningMode:(id)mode;
- (void)getPersonalVolume:(id)volume;
- (void)invalidate;
- (void)prewarm;
- (void)reload;
- (void)removeObserver:(id)observer;
- (void)setConversationAwareness:(BOOL)awareness completion:(id)completion;
- (void)setHeadphoneListeningMode:(int64_t)mode completion:(id)completion;
- (void)setPersonalVolume:(BOOL)volume completion:(id)completion;
- (void)updateDeviceInfo:(id)info;
@end

@implementation CSSiriMobileBluetoothDeviceProxy

- (void)_enumerateObserversUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    observers = self->_observers;
    if (observers)
    {
      setRepresentation = [(NSHashTable *)observers setRepresentation];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __66__CSSiriMobileBluetoothDeviceProxy__enumerateObserversUsingBlock___block_invoke;
      v7[3] = &unk_2784C5E20;
      v8 = blockCopy;
      [setRepresentation enumerateObjectsUsingBlock:v7];
    }
  }
}

- (void)_invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[CSSiriMobileBluetoothDeviceProxy _invalidate]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  objc_storeWeak(&self->_dataSource, 0);
  deviceInfo = self->_deviceInfo;
  self->_deviceInfo = 0;

  headphoneInEarDetectionState = self->_headphoneInEarDetectionState;
  self->_headphoneInEarDetectionState = 0;

  self->_headphoneListeningMode = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CSSiriMobileBluetoothDeviceProxy__invalidate__block_invoke;
  v7[3] = &unk_2784C5DF8;
  v7[4] = self;
  [(CSSiriMobileBluetoothDeviceProxy *)self _enumerateObserversUsingBlock:v7];
  observers = self->_observers;
  self->_observers = 0;
}

void __47__CSSiriMobileBluetoothDeviceProxy__invalidate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDeviceDidInvalidate:*(a1 + 32)];
  }
}

- (void)_accessBTDeviceAndAccessoryManagerUsingBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v5 = MEMORY[0x277CEF0A0];
    v6 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
      v20 = 2112;
      selfCopy4 = self;
      _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Getting BTDevice and BTAccessoryManager for %@...", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      deviceUID = self->_deviceUID;
      if (deviceUID)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke;
        v16[3] = &unk_2784C5DA8;
        v16[4] = self;
        v17 = blockCopy;
        [WeakRetained getBTDeviceWithDeviceUID:deviceUID completion:v16];
        v9 = v17;
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }

      address = self->_address;
      if (address)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke_2;
        v14[3] = &unk_2784C5DA8;
        v14[4] = self;
        v15 = blockCopy;
        [WeakRetained getBTDeviceWithAddress:address completion:v14];
        v9 = v15;
        goto LABEL_13;
      }

      v10 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
        v20 = 2112;
        selfCopy4 = self;
        v13 = "%s Device UID and address of %@ are nil.";
LABEL_19:
        _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
      }
    }

    else
    {
      v10 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
        v20 = 2112;
        selfCopy4 = self;
        v13 = "%s Data source of %@ is nil.";
        goto LABEL_19;
      }
    }

    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
      v20 = 2112;
      selfCopy4 = self;
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s Failed getting BTDevice and BTAccessoryManager for %@.", buf, 0x16u);
    }

    (*(blockCopy + 2))(blockCopy, 0, 0);
    goto LABEL_14;
  }

LABEL_15:
}

void __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 136315906;
    v14 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]_block_invoke";
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Got BTDevice %p and BTAccessoryManager %p for %@.", buf, 0x2Au);
  }

  v8 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke_125;
  block[3] = &unk_2784C5DD0;
  v10 = *(a1 + 40);
  v11 = a2;
  v12 = a3;
  dispatch_async(v8, block);
}

void __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 136315906;
    v14 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]_block_invoke_2";
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Got BTDevice %p and BTAccessoryManager %p for %@.", buf, 0x2Au);
  }

  v8 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke_126;
  block[3] = &unk_2784C5DD0;
  v10 = *(a1 + 40);
  v11 = a2;
  v12 = a3;
  dispatch_async(v8, block);
}

- (void)_fetchDeviceInfoWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v9 = "[CSSiriMobileBluetoothDeviceProxy _fetchDeviceInfoWithCompletion:]";
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s Fetching device info for %@...", buf, 0x16u);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__CSSiriMobileBluetoothDeviceProxy__fetchDeviceInfoWithCompletion___block_invoke;
    v6[3] = &unk_2784C5DA8;
    v6[4] = self;
    v7 = completionCopy;
    [(CSSiriMobileBluetoothDeviceProxy *)self _accessBTDeviceAndAccessoryManagerUsingBlock:v6];
  }
}

void __67__CSSiriMobileBluetoothDeviceProxy__fetchDeviceInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CEF0A0];
  if (!a2)
  {
    v34 = 0;
    goto LABEL_41;
  }

  v7 = _CSSiriBTDeviceGetAddress(a2);
  v50 = 0;
  v51 = 0;
  DeviceId = BTDeviceGetDeviceId();
  v9 = DeviceId != 0;
  if (DeviceId)
  {
    v10 = DeviceId;
    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 1024;
      LODWORD(v53) = v10;
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s Failed getting vendor id and product id from BTDevice %p (result = %d).", buf, 0x1Cu);
    }
  }

  v49 = 0;
  IsAppleAudioDevice = BTDeviceIsAppleAudioDevice();
  if (IsAppleAudioDevice)
  {
    v13 = IsAppleAudioDevice;
    v14 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 1024;
      LODWORD(v53) = v13;
      _os_log_error_impl(&dword_222E4D000, v14, OS_LOG_TYPE_ERROR, "%s Failed getting vendor id and product id from BTDevice %p (result = %d).", buf, 0x1Cu);
    }

    v9 = 1;
  }

  v47 = 0;
  v48 = 0;
  if (a3)
  {
    FeatureCapability = BTAccessoryManagerGetFeatureCapability();
    if (FeatureCapability)
    {
      v16 = FeatureCapability;
      v17 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2048;
        v53 = a3;
        LOWORD(v54) = 1024;
        *(&v54 + 2) = v16;
        _os_log_error_impl(&dword_222E4D000, v17, OS_LOG_TYPE_ERROR, "%s Failed getting InEar capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
      }

      v9 = 1;
    }

    v18 = BTAccessoryManagerGetFeatureCapability();
    if (v18)
    {
      v19 = v18;
      v20 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2048;
        v53 = a3;
        LOWORD(v54) = 1024;
        *(&v54 + 2) = v19;
        _os_log_error_impl(&dword_222E4D000, v20, OS_LOG_TYPE_ERROR, "%s Failed getting DoAP capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
      }

      v9 = 1;
    }
  }

  v46 = 0;
  v21 = BTAccessoryManagerGetFeatureCapability();
  if (v21)
  {
    v22 = v21;
    v23 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      v53 = a3;
      LOWORD(v54) = 1024;
      *(&v54 + 2) = v22;
      _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, "%s Failed getting ANC capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v9 = 1;
  }

  v45 = 0;
  v24 = BTAccessoryManagerGetFeatureCapability();
  if (v24)
  {
    v25 = v24;
    v26 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      v53 = a3;
      LOWORD(v54) = 1024;
      *(&v54 + 2) = v25;
      _os_log_error_impl(&dword_222E4D000, v26, OS_LOG_TYPE_ERROR, "%s Failed getting Transparency capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v9 = 1;
  }

  v44 = 0;
  v27 = BTAccessoryManagerGetFeatureCapability();
  if (v27)
  {
    v28 = v27;
    v29 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      v53 = a3;
      LOWORD(v54) = 1024;
      *(&v54 + 2) = v28;
      _os_log_error_impl(&dword_222E4D000, v29, OS_LOG_TYPE_ERROR, "%s Failed getting Software Volume capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v9 = 1;
  }

  v43 = 0;
  AnnounceMessagesSupport = BTAccessoryManagerGetAnnounceMessagesSupport();
  if (AnnounceMessagesSupport)
  {
    v31 = AnnounceMessagesSupport;
    v32 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      v53 = a3;
      LOWORD(v54) = 1024;
      *(&v54 + 2) = v31;
      _os_log_error_impl(&dword_222E4D000, v32, OS_LOG_TYPE_ERROR, "%s Failed getting Announce Messages capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v42 = 0;
    AnnounceCallsSupport = BTAccessoryManagerGetAnnounceCallsSupport();
    if (!AnnounceCallsSupport)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v42 = 0;
  AnnounceCallsSupport = BTAccessoryManagerGetAnnounceCallsSupport();
  if (AnnounceCallsSupport)
  {
LABEL_37:
    v35 = AnnounceCallsSupport;
    v36 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      v53 = a3;
      LOWORD(v54) = 1024;
      *(&v54 + 2) = v35;
      _os_log_error_impl(&dword_222E4D000, v36, OS_LOG_TYPE_ERROR, "%s Failed getting Announce Calls capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    goto LABEL_39;
  }

  if (!v9)
  {
    v40 = MEMORY[0x277CEF1A8];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___CSSiriBTDeviceGetDeviceInfo_block_invoke;
    v53 = &unk_2784C5E48;
    v54 = v7;
    v55 = v51;
    v56 = HIDWORD(v50);
    v57 = v49;
    v58 = v48;
    v59 = v47;
    v60 = v43;
    v61 = v46;
    v62 = v45;
    v63 = v42;
    v34 = [v40 newWithBuilder:buf];

    goto LABEL_40;
  }

LABEL_39:
  v34 = 0;
LABEL_40:

LABEL_41:
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __67__CSSiriMobileBluetoothDeviceProxy__fetchDeviceInfoWithCompletion___block_invoke_2;
  v41[3] = &unk_2784C5D80;
  v41[4] = *(a1 + 32);
  v37 = [v34 mutatedCopyWithMutator:v41];

  v38 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    v39 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[CSSiriMobileBluetoothDeviceProxy _fetchDeviceInfoWithCompletion:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v37;
    *&buf[22] = 2112;
    v53 = v39;
    _os_log_impl(&dword_222E4D000, v38, OS_LOG_TYPE_INFO, "%s Fetched device info %@ for %@.", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_updateDeviceInfo:(id)info
{
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = MEMORY[0x277CEF0A0];
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[CSSiriMobileBluetoothDeviceProxy _updateDeviceInfo:]";
    v20 = 2112;
    v21 = infoCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s deviceInfo = %@", buf, 0x16u);
  }

  deviceInfo = self->_deviceInfo;
  if (deviceInfo != infoCopy && ([(AFBluetoothDeviceInfo *)deviceInfo isEqual:infoCopy]& 1) == 0)
  {
    v8 = self->_deviceInfo;
    v9 = [(AFBluetoothDeviceInfo *)infoCopy copy];
    v10 = self->_deviceInfo;
    self->_deviceInfo = v9;

    v11 = self->_deviceInfo;
    v12 = *v5;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v19 = "[CSSiriMobileBluetoothDeviceProxy _updateDeviceInfo:]";
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s deviceInfo changed from %@ to %@", buf, 0x20u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__CSSiriMobileBluetoothDeviceProxy__updateDeviceInfo___block_invoke;
    v15[3] = &unk_2784C5D58;
    v15[4] = self;
    v16 = v8;
    v17 = v11;
    v13 = v11;
    v14 = v8;
    [(CSSiriMobileBluetoothDeviceProxy *)self _enumerateObserversUsingBlock:v15];
  }
}

void __54__CSSiriMobileBluetoothDeviceProxy__updateDeviceInfo___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDevice:a1[4] deviceInfoDidChangeFrom:a1[5] to:a1[6]];
  }
}

- (void)_getDeviceInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    if (self->_deviceInfo)
    {
      infoCopy[2](infoCopy);
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __51__CSSiriMobileBluetoothDeviceProxy__getDeviceInfo___block_invoke;
      v6[3] = &unk_2784C5D30;
      v6[4] = self;
      v7 = infoCopy;
      [(CSSiriMobileBluetoothDeviceProxy *)self _fetchDeviceInfoWithCompletion:v6];
    }
  }
}

void __51__CSSiriMobileBluetoothDeviceProxy__getDeviceInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _updateDeviceInfo:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)_reload:(BOOL)_reload
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_deviceInfo)
  {
    v3 = !_reload;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v5 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v8 = "[CSSiriMobileBluetoothDeviceProxy _reload:]";
      v9 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s Reloading device info for %@...", buf, 0x16u);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__CSSiriMobileBluetoothDeviceProxy__reload___block_invoke;
    v6[3] = &unk_2784C6108;
    v6[4] = self;
    [(CSSiriMobileBluetoothDeviceProxy *)self _fetchDeviceInfoWithCompletion:v6];
  }
}

void __44__CSSiriMobileBluetoothDeviceProxy__reload___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _updateDeviceInfo:v3];
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[CSSiriMobileBluetoothDeviceProxy _reload:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s Reloaded device info %@ for %@.", &v6, 0x20u);
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CSSiriMobileBluetoothDeviceProxy_invalidate__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setPersonalVolume:(BOOL)volume completion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[CSSiriMobileBluetoothDeviceProxy setPersonalVolume:completion:]";
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Method not supported", &v7, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    v6 = [objc_alloc(MEMORY[0x277CEF1A0]) initWithValue:0 status:3];
    completionCopy[2](completionCopy, v6);
  }

LABEL_4:
}

- (void)setConversationAwareness:(BOOL)awareness completion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[CSSiriMobileBluetoothDeviceProxy setConversationAwareness:completion:]";
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Method not supported", &v7, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    v6 = [objc_alloc(MEMORY[0x277CEF1A0]) initWithValue:0 status:3];
    completionCopy[2](completionCopy, v6);
  }

LABEL_4:
}

- (void)getPersonalVolume:(id)volume
{
  v8 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[CSSiriMobileBluetoothDeviceProxy getPersonalVolume:]";
    _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Method not supported", &v6, 0xCu);
    if (!volumeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (volumeCopy)
  {
LABEL_3:
    v5 = [objc_alloc(MEMORY[0x277CEF1A0]) initWithValue:0 status:3];
    volumeCopy[2](volumeCopy, v5);
  }

LABEL_4:
}

- (void)getConversationAwareness:(id)awareness
{
  v8 = *MEMORY[0x277D85DE8];
  awarenessCopy = awareness;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[CSSiriMobileBluetoothDeviceProxy getConversationAwareness:]";
    _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Method not supported", &v6, 0xCu);
    if (!awarenessCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (awarenessCopy)
  {
LABEL_3:
    v5 = [objc_alloc(MEMORY[0x277CEF1A0]) initWithValue:0 status:3];
    awarenessCopy[2](awarenessCopy, v5);
  }

LABEL_4:
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__CSSiriMobileBluetoothDeviceProxy_removeObserver___block_invoke;
    v7[3] = &unk_2784C6FA8;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__CSSiriMobileBluetoothDeviceProxy_addObserver___block_invoke;
    v7[3] = &unk_2784C6FA8;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __48__CSSiriMobileBluetoothDeviceProxy_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)disconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CSSiriMobileBluetoothDeviceProxy_disconnect___block_invoke;
  v7[3] = &unk_2784C6E98;
  v7[4] = self;
  v8 = disconnectCopy;
  v6 = disconnectCopy;
  dispatch_async(queue, v7);
}

void __47__CSSiriMobileBluetoothDeviceProxy_disconnect___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__CSSiriMobileBluetoothDeviceProxy_disconnect___block_invoke_2;
  v2[3] = &unk_2784C5D08;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _accessBTDeviceAndAccessoryManagerUsingBlock:v2];
}

uint64_t __47__CSSiriMobileBluetoothDeviceProxy_disconnect___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = BTDeviceDisconnect();
  v4 = _CSSiriBTResultGetError(v3);
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4 != 0);
  }

  return MEMORY[0x2821F9730]();
}

- (void)connect:(id)connect
{
  connectCopy = connect;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CSSiriMobileBluetoothDeviceProxy_connect___block_invoke;
  v7[3] = &unk_2784C6E98;
  v7[4] = self;
  v8 = connectCopy;
  v6 = connectCopy;
  dispatch_async(queue, v7);
}

void __44__CSSiriMobileBluetoothDeviceProxy_connect___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__CSSiriMobileBluetoothDeviceProxy_connect___block_invoke_2;
  v2[3] = &unk_2784C5D08;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _accessBTDeviceAndAccessoryManagerUsingBlock:v2];
}

uint64_t __44__CSSiriMobileBluetoothDeviceProxy_connect___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = BTDeviceConnect();
  v4 = _CSSiriBTResultGetError(v3);
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4 != 0);
  }

  return MEMORY[0x2821F9730]();
}

- (void)setHeadphoneListeningMode:(int64_t)mode completion:(id)completion
{
  v8 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[CSSiriMobileBluetoothDeviceProxy setHeadphoneListeningMode:completion:]";
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Method not supported", &v6, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    completionCopy[2](completionCopy, 0);
  }

LABEL_4:
}

- (void)getHeadphoneListeningMode:(id)mode
{
  v7 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[CSSiriMobileBluetoothDeviceProxy getHeadphoneListeningMode:]";
    _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Method not supported", &v5, 0xCu);
    if (!modeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (modeCopy)
  {
LABEL_3:
    modeCopy[2](modeCopy, 1);
  }

LABEL_4:
}

- (void)getHeadphoneInEarDetectionState:(id)state
{
  v7 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[CSSiriMobileBluetoothDeviceProxy getHeadphoneInEarDetectionState:]";
    _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Method not supported", &v5, 0xCu);
    if (!stateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (stateCopy)
  {
LABEL_3:
    stateCopy[2](stateCopy, 0);
  }

LABEL_4:
}

- (void)getDeviceInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__CSSiriMobileBluetoothDeviceProxy_getDeviceInfo___block_invoke;
    v7[3] = &unk_2784C6E98;
    v7[4] = self;
    v8 = infoCopy;
    dispatch_async(queue, v7);
  }
}

- (id)deviceInfo
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23232;
  v19 = __Block_byref_object_dispose__23233;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__23232;
  v13 = __Block_byref_object_dispose__23233;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CSSiriMobileBluetoothDeviceProxy_deviceInfo__block_invoke;
  block[3] = &unk_2784C5CE0;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(queue, block);
  v3 = v10[5];
  if (v3 && (v4 = dispatch_time(0, 4000000000), dispatch_semaphore_wait(v3, v4)))
  {
    v5 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[CSSiriMobileBluetoothDeviceProxy deviceInfo]";
      _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Slow path timed out after 4 seconds.", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v16[5];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __46__CSSiriMobileBluetoothDeviceProxy_deviceInfo__block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 32);
  if (v2)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v2);
  }

  else
  {
    v3 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[CSSiriMobileBluetoothDeviceProxy deviceInfo]_block_invoke";
      _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s Using slow path...", buf, 0xCu);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v5 = dispatch_semaphore_create(0);
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[4];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__CSSiriMobileBluetoothDeviceProxy_deviceInfo__block_invoke_117;
    v9[3] = &unk_2784C5CB8;
    v11 = Current;
    v10 = *(a1 + 5);
    [v8 _getDeviceInfo:v9];
  }
}

void __46__CSSiriMobileBluetoothDeviceProxy_deviceInfo__block_invoke_117(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    v10 = 136315394;
    v11 = "[CSSiriMobileBluetoothDeviceProxy deviceInfo]_block_invoke";
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s Slow path took %f seconds.", &v10, 0x16u);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

- (id)identifier
{
  uUIDString = [(NSUUID *)self->_deviceUID UUIDString];
  address = uUIDString;
  if (!uUIDString)
  {
    address = self->_address;
  }

  v5 = address;

  return address;
}

- (void)prewarm
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CSSiriMobileBluetoothDeviceProxy_prewarm__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)reload
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CSSiriMobileBluetoothDeviceProxy_reload__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateDeviceInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__CSSiriMobileBluetoothDeviceProxy_updateDeviceInfo___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

- (CSSiriMobileBluetoothDeviceProxy)initWithDeviceUID:(id)d dataSource:(id)source queue:(id)queue
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  sourceCopy = source;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = CSSiriMobileBluetoothDeviceProxy;
  v11 = [(CSSiriMobileBluetoothDeviceProxy *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    deviceUID = v11->_deviceUID;
    v11->_deviceUID = v12;

    v14 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[CSSiriMobileBluetoothDeviceProxy initWithDeviceUID:dataSource:queue:]";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    objc_storeWeak(&v11->_dataSource, sourceCopy);
    objc_storeStrong(&v11->_queue, queue);
    queue = v11->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__CSSiriMobileBluetoothDeviceProxy_initWithDeviceUID_dataSource_queue___block_invoke;
    block[3] = &unk_2784C6FD0;
    v18 = v11;
    dispatch_async(queue, block);
  }

  return v11;
}

void __71__CSSiriMobileBluetoothDeviceProxy_initWithDeviceUID_dataSource_queue___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v8 = "[CSSiriMobileBluetoothDeviceProxy initWithDeviceUID:dataSource:queue:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_INFO, "%s Loading device info for %@...", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__CSSiriMobileBluetoothDeviceProxy_initWithDeviceUID_dataSource_queue___block_invoke_116;
  v5[3] = &unk_2784C6108;
  v6 = v4;
  [v6 _fetchDeviceInfoWithCompletion:v5];
}

void __71__CSSiriMobileBluetoothDeviceProxy_initWithDeviceUID_dataSource_queue___block_invoke_116(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _updateDeviceInfo:v3];
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[CSSiriMobileBluetoothDeviceProxy initWithDeviceUID:dataSource:queue:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s Loaded device info %@ for %@.", &v6, 0x20u);
  }
}

- (CSSiriMobileBluetoothDeviceProxy)initWithAddress:(id)address dataSource:(id)source queue:(id)queue
{
  v24 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  sourceCopy = source;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = CSSiriMobileBluetoothDeviceProxy;
  v11 = [(CSSiriMobileBluetoothDeviceProxy *)&v19 init];
  if (v11)
  {
    v12 = [addressCopy copy];
    address = v11->_address;
    v11->_address = v12;

    v14 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[CSSiriMobileBluetoothDeviceProxy initWithAddress:dataSource:queue:]";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    objc_storeWeak(&v11->_dataSource, sourceCopy);
    objc_storeStrong(&v11->_queue, queue);
    queue = v11->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CSSiriMobileBluetoothDeviceProxy_initWithAddress_dataSource_queue___block_invoke;
    block[3] = &unk_2784C6FD0;
    v18 = v11;
    dispatch_async(queue, block);
  }

  return v11;
}

void __69__CSSiriMobileBluetoothDeviceProxy_initWithAddress_dataSource_queue___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v8 = "[CSSiriMobileBluetoothDeviceProxy initWithAddress:dataSource:queue:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_INFO, "%s Loading device info for %@...", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__CSSiriMobileBluetoothDeviceProxy_initWithAddress_dataSource_queue___block_invoke_115;
  v5[3] = &unk_2784C6108;
  v6 = v4;
  [v6 _fetchDeviceInfoWithCompletion:v5];
}

void __69__CSSiriMobileBluetoothDeviceProxy_initWithAddress_dataSource_queue___block_invoke_115(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _updateDeviceInfo:v3];
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[CSSiriMobileBluetoothDeviceProxy initWithAddress:dataSource:queue:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s Loaded device info %@ for %@.", &v6, 0x20u);
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[CSSiriMobileBluetoothDeviceProxy dealloc]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = CSSiriMobileBluetoothDeviceProxy;
  [(CSSiriMobileBluetoothDeviceProxy *)&v4 dealloc];
}

- (NSString)description
{
  if (self->_deviceUID)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v11.receiver = self;
    v11.super_class = CSSiriMobileBluetoothDeviceProxy;
    v4 = [(CSSiriMobileBluetoothDeviceProxy *)&v11 description];
    v5 = [v3 initWithFormat:@"%@ {deviceUID = %@}", v4, self->_deviceUID];
LABEL_5:
    v7 = v5;

    goto LABEL_6;
  }

  if (self->_address)
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v10.receiver = self;
    v10.super_class = CSSiriMobileBluetoothDeviceProxy;
    v4 = [(CSSiriMobileBluetoothDeviceProxy *)&v10 description];
    v5 = [v6 initWithFormat:@"%@ {address = %@}", v4, self->_address];
    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = CSSiriMobileBluetoothDeviceProxy;
  v7 = [(CSSiriMobileBluetoothDeviceProxy *)&v9 description];
LABEL_6:

  return v7;
}

@end