@interface NTKUnity2025ChimesObserver
+ (NTKUnity2025ChimesObserver)sharedInstance;
- (NTKUnity2025ChimesObserver)init;
- (void)dealloc;
- (void)faceCollection:(id)collection didSelectFace:(id)face atIndex:(unint64_t)index;
@end

@implementation NTKUnity2025ChimesObserver

+ (NTKUnity2025ChimesObserver)sharedInstance
{
  if (qword_281459BB0 != -1)
  {
    sub_23C09FAB4();
  }

  v3 = qword_281459BB8;

  return v3;
}

- (NTKUnity2025ChimesObserver)init
{
  v11.receiver = self;
  v11.super_class = NTKUnity2025ChimesObserver;
  v2 = [(NTKUnity2025ChimesObserver *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D2C0A0]);
    v5 = objc_msgSend_initWithCollectionIdentifier_deviceUUID_(v3, v4, *MEMORY[0x277D2BEA0], 0);
    libraryFaceCollection = v2->_libraryFaceCollection;
    v2->_libraryFaceCollection = v5;

    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_23C099000, v7, OS_LOG_TYPE_DEFAULT, "Unity2025: Add chimes observer", v10, 2u);
    }

    objc_msgSend_addObserver_(v2->_libraryFaceCollection, v8, v2);
  }

  return v2;
}

- (void)dealloc
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C099000, v3, OS_LOG_TYPE_DEFAULT, "Unity2025: Remove chimes observer", buf, 2u);
  }

  objc_msgSend_removeObserver_(self->_libraryFaceCollection, v4, self);
  v5.receiver = self;
  v5.super_class = NTKUnity2025ChimesObserver;
  [(NTKUnity2025ChimesObserver *)&v5 dealloc];
}

- (void)faceCollection:(id)collection didSelectFace:(id)face atIndex:(unint64_t)index
{
  v29 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_23C099000, v6, OS_LOG_TYPE_DEFAULT, "Unity2025: Face collection changed selected face", &v27, 2u);
  }

  v9 = objc_msgSend_bundleIdentifier(faceCopy, v7, v8);

  v12 = objc_msgSend_identifier(NTKUnity2025FaceBundle, v10, v11);
  isEqual = objc_msgSend_isEqual_(v9, v13, v12);

  v17 = objc_msgSend_sharedInstance(MEMORY[0x277CE6FA8], v15, v16);
  LODWORD(v12) = objc_msgSend_voiceOverTapticChimesUnity25Active(v17, v18, v19);

  if (isEqual != v12)
  {
    v20 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v21, isEqual);
      v27 = 138412290;
      v28 = v22;
      _os_log_impl(&dword_23C099000, v20, OS_LOG_TYPE_DEFAULT, "Unity2025: Set Unity chimes active preference to %@", &v27, 0xCu);
    }

    v25 = objc_msgSend_sharedInstance(MEMORY[0x277CE6FA8], v23, v24);
    objc_msgSend_setVoiceOverTapticChimesUnity25Active_(v25, v26, isEqual);
  }
}

@end