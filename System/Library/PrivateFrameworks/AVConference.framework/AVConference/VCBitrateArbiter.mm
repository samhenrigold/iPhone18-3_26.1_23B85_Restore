@interface VCBitrateArbiter
+ (void)updateMaxAllowedBitratePerConnection:(unsigned int *)connection connectionType:(int)type negotiatedSettings:(id)settings;
- (VCBitrateArbiter)initWithDeviceRole:(int)role callLogFile:(void *)file;
- (id)maxAllowedBitrateRuleForConnection:(int)connection;
- (int)storeBagBitrateForKey:(id)key;
- (unsigned)maxAllowedAudioOnlyBitrateForConnection:(int)connection;
- (unsigned)maxAllowedBitrateForConnectionType:(int)type;
- (unsigned)maxAllowedBitrateForConnectionType:(int)type arbiterMode:(unsigned __int8)mode;
- (unsigned)maxAllowedBitrateForVCConnection:(id)connection forLocalInterface:(BOOL)interface arbiterMode:(unsigned __int8)mode encodeRule:(id)rule;
- (unsigned)maxAllowedBitrateForVCConnection:(id)connection forLocalInterface:(BOOL)interface encodeRule:(id)rule;
- (unsigned)maxAllowedImmersiveVideoBitrateForConnectionType:(int)type;
- (unsigned)maxAllowedScreenShareBitrateForConnection:(int)connection;
- (unsigned)maxAllowedScreenShareCellularBitrate;
- (void)addRuleForBitrate:(unsigned int)bitrate connectionType:(int)type limitingRule:(id)rule;
- (void)createSupportedBitrateRuleSets;
- (void)dealloc;
- (void)readCarrierBundleValues;
- (void)readHardwareValues;
- (void)readStoreBagValues:(void *)values;
- (void)updateMaxAllowedBitrate:(unsigned int *)bitrate key:(__CFString *)key type:(id)type isAudio:(BOOL)audio carrierBundleBitrates:(__CFDictionary *)bitrates;
- (void)updateNegotiatedSettings:(id)settings;
@end

@implementation VCBitrateArbiter

- (VCBitrateArbiter)initWithDeviceRole:(int)role callLogFile:(void *)file
{
  v22 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCBitrateArbiter;
  v5 = [(VCBitrateArbiter *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(VCBitrateArbiter *)v5 readHardwareValues];
    [(VCBitrateArbiter *)v6 readStoreBagValues:file];
    [(VCBitrateArbiter *)v6 readCarrierBundleValues];
    [(VCBitrateArbiter *)v6 createSupportedBitrateRuleSets];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = [-[NSMutableArray description](v6->supportedBitrateRules "description")];
        *buf = 136315906;
        v15 = v7;
        v16 = 2080;
        v17 = "[VCBitrateArbiter initWithDeviceRole:callLogFile:]";
        v18 = 1024;
        v19 = 190;
        v20 = 2080;
        v21 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCBitrateArbiter: Bitrate rules %s", buf, 0x26u);
      }
    }

    maxAllowedCellularBitrate = [(VCBitrateArbiter *)v6 maxAllowedCellularBitrate];
    maxAllowedBitrateWifi = v6->_maxAllowedBitrateWifi;
    if (maxAllowedCellularBitrate > maxAllowedBitrateWifi)
    {
      maxAllowedBitrateWifi = [(VCBitrateArbiter *)v6 maxAllowedCellularBitrate];
    }

    v6->_maxAllowedBitrate = maxAllowedBitrateWifi;
    v6->_maxAllowedAudioOnlyBitrateWifi = 299;
    v6->_maxAllowedScreenShareBitrateWifi = 4100;
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCBitrateArbiter;
  [(VCBitrateArbiter *)&v3 dealloc];
}

- (void)createSupportedBitrateRuleSets
{
  self->supportedBitrateRules = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [VCVideoRule alloc];
  LODWORD(v4) = 15.0;
  v5 = [(VCVideoRule *)v3 initWithFrameWidth:480 frameHeight:368 frameRate:123 payload:v4];
  [(VCBitrateArbiter *)self addRuleForBitrate:self->_maxAllowedBitrate2G connectionType:0 limitingRule:v5];

  v6 = [VCVideoRule alloc];
  LODWORD(v7) = 30.0;
  v8 = [(VCVideoRule *)v6 initWithFrameWidth:640 frameHeight:480 frameRate:123 payload:v7];
  [(VCBitrateArbiter *)self addRuleForBitrate:self->_maxAllowedBitrate3G connectionType:1 limitingRule:v8];

  LODWORD(v8) = self->_maxAllowedBitrateLTE;
  v9 = [VCVideoRule alloc];
  LODWORD(v10) = 30.0;
  if (v8 < 0x258)
  {
    v11 = 640;
    v12 = 480;
  }

  else
  {
    v11 = 1024;
    v12 = 768;
  }

  v13 = [(VCVideoRule *)v9 initWithFrameWidth:v11 frameHeight:v12 frameRate:123 payload:v10];
  [(VCBitrateArbiter *)self addRuleForBitrate:self->_maxAllowedBitrateLTE connectionType:2 limitingRule:v13];

  v14 = [VCVideoRule alloc];
  LODWORD(v15) = 1114636288;
  v16 = [(VCVideoRule *)v14 initWithFrameWidth:1664 frameHeight:1248 frameRate:123 payload:v15];
  [(VCBitrateArbiter *)self addRuleForBitrate:self->_maxAllowedBitrateHighRat connectionType:6 limitingRule:v16];

  v17 = [VCVideoRule alloc];
  LODWORD(v18) = 1114636288;
  v19 = [(VCVideoRule *)v17 initWithFrameWidth:1664 frameHeight:1248 frameRate:123 payload:v18];
  [(VCBitrateArbiter *)self addRuleForBitrate:self->_maxAllowedBitrateWifi connectionType:3 limitingRule:v19];

  supportedBitrateRules = self->supportedBitrateRules;

  [(NSMutableArray *)supportedBitrateRules sortUsingSelector:sel_compare_];
}

- (void)addRuleForBitrate:(unsigned int)bitrate connectionType:(int)type limitingRule:(id)rule
{
  v6 = [[VCBitrateRule alloc] initWithBitrate:*&bitrate connectionType:*&type limitingRule:rule];
  [(NSMutableArray *)self->supportedBitrateRules addObject:v6];
}

- (void)readHardwareValues
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  selfCopy = self;
  v4 = 2080;
  v5 = "[VCBitrateArbiter readHardwareValues]";
  v6 = 1024;
  v7 = 295;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCVideoRuleCollectionsCamera bitrateConfiguration returned NULL", &v2, 0x1Cu);
}

- (int)storeBagBitrateForKey:(id)key
{
  v4 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (!v4)
  {
    v4 = [objc_msgSend(MEMORY[0x1E69A53F0] "sharedInstance")];
  }

  intValue = [v4 intValue];

  return intValue;
}

- (void)readStoreBagValues:(void *)values
{
  v203 = *MEMORY[0x1E69E9840];
  v5 = +[GKSConnectivitySettings getAllSettings];
  if (v5)
  {
    v6 = [objc_msgSend(v5 "description")];
  }

  else
  {
    v6 = "<nil>";
  }

  VRLogfilePrintWithTimestamp(values, "Current bag settings: %s\n", v6);
  v7 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-bitrate-max-2g"];
  if (rangeCheck(v7))
  {
    maxAllowedBitrate2G = self->_maxAllowedBitrate2G;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (maxAllowedBitrate2G)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_opt_class();
          *buf = 136316162;
          v192 = v10;
          v193 = 2080;
          v194 = "[VCBitrateArbiter readStoreBagValues:]";
          v195 = 1024;
          v196 = 331;
          v197 = 2080;
          Name = class_getName(v12);
          v199 = 1024;
          v200 = v7;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 2G bitrate with storebag value of %d", buf, 0x2Cu);
        }
      }

      v13 = objc_opt_class();
      v14 = class_getName(v13);
      VRLogfilePrintWithTimestamp(values, "%s: overriding 2G bitrate with storebag value of %d\n", v14, v7);
      self->_maxAllowedBitrate2G = v7;
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          *buf = 136316162;
          v192 = v15;
          v193 = 2080;
          v194 = "[VCBitrateArbiter readStoreBagValues:]";
          v195 = 1024;
          v196 = 334;
          v197 = 2080;
          Name = class_getName(v17);
          v199 = 1024;
          v200 = v7;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 2G, ignored storebag value of %d", buf, 0x2Cu);
        }
      }

      v18 = objc_opt_class();
      v19 = class_getName(v18);
      VRLogfilePrintWithTimestamp(values, "%s: hardware does not support 2G, ignored storebag value of %d\n", v19, v7);
    }
  }

  v20 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ss-bitrate-max-2g"];
  if (v20)
  {
    v21 = v20;
    if (rangeCheck(v20))
    {
      v22 = self->_maxAllowedBitrate2G;
      v23 = VRTraceGetErrorLogLevelForModule();
      if (v22)
      {
        if (v23 >= 7)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v26 = objc_opt_class();
            v27 = class_getName(v26);
            *buf = 136316162;
            v192 = v24;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 346;
            v197 = 2080;
            Name = v27;
            v199 = 1024;
            v200 = v21;
            _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding ScreenShare 2G bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v28 = objc_opt_class();
        v29 = class_getName(v28);
        VRLogfilePrintWithTimestamp(values, "%s: overriding ScreenShare 2G bitrate with storebag value of %d\n", v29, v21);
        self->_maxAllowedScreenShareBitrate2G = v21;
      }

      else
      {
        if (v23 >= 7)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v32 = objc_opt_class();
            v33 = class_getName(v32);
            *buf = 136316162;
            v192 = v30;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 349;
            v197 = 2080;
            Name = v33;
            v199 = 1024;
            v200 = v21;
            _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 2G, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v34 = objc_opt_class();
        v35 = class_getName(v34);
        VRLogfilePrintWithTimestamp(values, "%s: hardware does not support 2G, ignored storebag value of %d\n", v35, v21);
      }
    }
  }

  else
  {
    self->_maxAllowedScreenShareBitrate2G = 510;
  }

  v36 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ac-bitrate-max-2g"];
  if (v36)
  {
    v37 = v36;
    if (IsValidAudioBitrateRange(v36))
    {
      v38 = self->_maxAllowedBitrate2G;
      v39 = VRTraceGetErrorLogLevelForModule();
      if (v38)
      {
        if (v39 >= 7)
        {
          v40 = VRTraceErrorLogLevelToCSTR();
          v41 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v42 = objc_opt_class();
            v43 = class_getName(v42);
            *buf = 136316162;
            v192 = v40;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 362;
            v197 = 2080;
            Name = v43;
            v199 = 1024;
            v200 = v37;
            _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 2G AppleCalling bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v44 = objc_opt_class();
        v45 = class_getName(v44);
        VRLogfilePrintWithTimestamp(values, "%s: overriding 2G AppleCalling bitrate with storebag value of %d\n", v45, v37);
        self->_maxAllowedAudioOnlyBitrate2G = v37;
      }

      else
      {
        if (v39 >= 7)
        {
          v46 = VRTraceErrorLogLevelToCSTR();
          v47 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v48 = objc_opt_class();
            v49 = class_getName(v48);
            *buf = 136316162;
            v192 = v46;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 365;
            v197 = 2080;
            Name = v49;
            v199 = 1024;
            v200 = v37;
            _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 2G, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v50 = objc_opt_class();
        v51 = class_getName(v50);
        VRLogfilePrintWithTimestamp(values, "%s: hardware does not support 2G, ignored storebag value of %d\n", v51, v37);
      }
    }
  }

  else
  {
    self->_maxAllowedAudioOnlyBitrate2G = 21;
  }

  v52 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-bitrate-max-3g"];
  if (rangeCheck(v52))
  {
    maxAllowedBitrate3G = self->_maxAllowedBitrate3G;
    v54 = VRTraceGetErrorLogLevelForModule();
    if (maxAllowedBitrate3G)
    {
      if (v54 >= 7)
      {
        v55 = VRTraceErrorLogLevelToCSTR();
        v56 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v57 = objc_opt_class();
          v58 = class_getName(v57);
          *buf = 136316162;
          v192 = v55;
          v193 = 2080;
          v194 = "[VCBitrateArbiter readStoreBagValues:]";
          v195 = 1024;
          v196 = 374;
          v197 = 2080;
          Name = v58;
          v199 = 1024;
          v200 = v52;
          _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 3G bitrate with storebag value of %d", buf, 0x2Cu);
        }
      }

      v59 = objc_opt_class();
      v60 = class_getName(v59);
      VRLogfilePrintWithTimestamp(values, "%s: overriding 3G bitrate with storebag value of %d\n", v60, v52);
      self->_maxAllowedBitrate3G = v52;
    }

    else
    {
      if (v54 >= 7)
      {
        v61 = VRTraceErrorLogLevelToCSTR();
        v62 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v63 = objc_opt_class();
          v64 = class_getName(v63);
          *buf = 136316162;
          v192 = v61;
          v193 = 2080;
          v194 = "[VCBitrateArbiter readStoreBagValues:]";
          v195 = 1024;
          v196 = 377;
          v197 = 2080;
          Name = v64;
          v199 = 1024;
          v200 = v52;
          _os_log_impl(&dword_1DB56E000, v62, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 3G, ignored storebag value of %d", buf, 0x2Cu);
        }
      }

      v65 = objc_opt_class();
      v66 = class_getName(v65);
      VRLogfilePrintWithTimestamp(values, "%s: hardware does not support 3G, ignored storebag value of %d\n", v66, v52);
    }
  }

  v67 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ss-bitrate-max-3g"];
  if (v67)
  {
    v68 = v67;
    if (rangeCheck(v67))
    {
      v69 = self->_maxAllowedBitrate3G;
      v70 = VRTraceGetErrorLogLevelForModule();
      if (v69)
      {
        if (v70 >= 7)
        {
          v71 = VRTraceErrorLogLevelToCSTR();
          v72 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v73 = objc_opt_class();
            v74 = class_getName(v73);
            *buf = 136316162;
            v192 = v71;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 389;
            v197 = 2080;
            Name = v74;
            v199 = 1024;
            v200 = v68;
            _os_log_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 3G ScreenShare bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v75 = objc_opt_class();
        v76 = class_getName(v75);
        VRLogfilePrintWithTimestamp(values, "%s: overriding 3G ScreenShare bitrate with storebag value of %d\n", v76, v68);
        self->_maxAllowedScreenShareBitrate3G = v68;
      }

      else
      {
        if (v70 >= 7)
        {
          v77 = VRTraceErrorLogLevelToCSTR();
          v78 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v79 = objc_opt_class();
            v80 = class_getName(v79);
            *buf = 136316162;
            v192 = v77;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 392;
            v197 = 2080;
            Name = v80;
            v199 = 1024;
            v200 = v68;
            _os_log_impl(&dword_1DB56E000, v78, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 3G, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v81 = objc_opt_class();
        v82 = class_getName(v81);
        VRLogfilePrintWithTimestamp(values, "%s: hardware does not support 3G, ignored storebag value of %d\n", v82, v68);
      }
    }
  }

  else
  {
    self->_maxAllowedScreenShareBitrate3G = 510;
  }

  v83 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ac-bitrate-max-3g"];
  if (v83)
  {
    v84 = v83;
    if (IsValidAudioBitrateRange(v83))
    {
      v85 = self->_maxAllowedBitrate3G;
      v86 = VRTraceGetErrorLogLevelForModule();
      if (v85)
      {
        if (v86 >= 7)
        {
          v87 = VRTraceErrorLogLevelToCSTR();
          v88 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v89 = objc_opt_class();
            v90 = class_getName(v89);
            *buf = 136316162;
            v192 = v87;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 405;
            v197 = 2080;
            Name = v90;
            v199 = 1024;
            v200 = v84;
            _os_log_impl(&dword_1DB56E000, v88, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 3G AppleCalling bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v91 = objc_opt_class();
        v92 = class_getName(v91);
        VRLogfilePrintWithTimestamp(values, "%s: overriding 3G AppleCalling bitrate with storebag value of %d\n", v92, v84);
        self->_maxAllowedAudioOnlyBitrate3G = v84;
      }

      else
      {
        if (v86 >= 7)
        {
          v93 = VRTraceErrorLogLevelToCSTR();
          v94 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v95 = objc_opt_class();
            v96 = class_getName(v95);
            *buf = 136316162;
            v192 = v93;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 408;
            v197 = 2080;
            Name = v96;
            v199 = 1024;
            v200 = v84;
            _os_log_impl(&dword_1DB56E000, v94, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 3G, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v97 = objc_opt_class();
        v98 = class_getName(v97);
        VRLogfilePrintWithTimestamp(values, "%s: hardware does not support 3G, ignored storebag value of %d\n", v98, v84);
      }
    }
  }

  else
  {
    self->_maxAllowedAudioOnlyBitrate3G = 40;
  }

  v99 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-bitrate-max-lte-v2"];
  if (rangeCheck(v99))
  {
    if (self->_maxAllowedBitrateLTE)
    {
      if ((VRTraceIsInternalOSInstalled() & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v100 = VRTraceErrorLogLevelToCSTR();
          v101 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v102 = objc_opt_class();
            v103 = class_getName(v102);
            *buf = 136316162;
            v192 = v100;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 418;
            v197 = 2080;
            Name = v103;
            v199 = 1024;
            v200 = v99;
            _os_log_impl(&dword_1DB56E000, v101, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding LTE bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v104 = objc_opt_class();
        v105 = class_getName(v104);
        VRLogfilePrintWithTimestamp(values, "%s: overriding LTE bitrate with storebag value of %d\n", v105, v99);
        self->_maxAllowedBitrateLTE = v99;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v106 = VRTraceErrorLogLevelToCSTR();
        v107 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v108 = objc_opt_class();
          v109 = class_getName(v108);
          *buf = 136316162;
          v192 = v106;
          v193 = 2080;
          v194 = "[VCBitrateArbiter readStoreBagValues:]";
          v195 = 1024;
          v196 = 422;
          v197 = 2080;
          Name = v109;
          v199 = 1024;
          v200 = v99;
          _os_log_impl(&dword_1DB56E000, v107, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support LTE, ignored storebag value of %d", buf, 0x2Cu);
        }
      }

      v110 = objc_opt_class();
      v111 = class_getName(v110);
      VRLogfilePrintWithTimestamp(values, "%s: hardware does not support LTE, ignored storebag value of %d\n", v111, v99);
    }
  }

  v112 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-bitrate-max-5g"];
  if (rangeCheck(v112))
  {
    maxAllowedBitrateHighRat = self->_maxAllowedBitrateHighRat;
    v114 = VRTraceGetErrorLogLevelForModule();
    if (maxAllowedBitrateHighRat)
    {
      if (v114 >= 7)
      {
        v115 = VRTraceErrorLogLevelToCSTR();
        v116 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v117 = objc_opt_class();
          v118 = class_getName(v117);
          *buf = 136316162;
          v192 = v115;
          v193 = 2080;
          v194 = "[VCBitrateArbiter readStoreBagValues:]";
          v195 = 1024;
          v196 = 431;
          v197 = 2080;
          Name = v118;
          v199 = 1024;
          v200 = v112;
          _os_log_impl(&dword_1DB56E000, v116, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 5G bitrate with storebag value of %d", buf, 0x2Cu);
        }
      }

      v119 = objc_opt_class();
      v120 = class_getName(v119);
      VRLogfilePrintWithTimestamp(values, "%s: overriding 5G bitrate with storebag value of %d\n", v120, v112);
      self->_maxAllowedBitrateHighRat = v112;
    }

    else
    {
      if (v114 >= 7)
      {
        v121 = VRTraceErrorLogLevelToCSTR();
        v122 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v123 = objc_opt_class();
          v124 = class_getName(v123);
          *buf = 136316162;
          v192 = v121;
          v193 = 2080;
          v194 = "[VCBitrateArbiter readStoreBagValues:]";
          v195 = 1024;
          v196 = 434;
          v197 = 2080;
          Name = v124;
          v199 = 1024;
          v200 = v112;
          _os_log_impl(&dword_1DB56E000, v122, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 5G, ignored storebag value of %d", buf, 0x2Cu);
        }
      }

      v125 = objc_opt_class();
      v126 = class_getName(v125);
      VRLogfilePrintWithTimestamp(values, "%s: hardware does not support 5G, ignored storebag value of %d\n", v126, v112);
    }
  }

  v127 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-bitrate-max-wifi"];
  if (rangeCheck(v127))
  {
    maxAllowedBitrateWifi = self->_maxAllowedBitrateWifi;
    v129 = VRTraceGetErrorLogLevelForModule();
    if (maxAllowedBitrateWifi)
    {
      if (v129 >= 7)
      {
        v130 = VRTraceErrorLogLevelToCSTR();
        v131 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v132 = objc_opt_class();
          v133 = class_getName(v132);
          *buf = 136316162;
          v192 = v130;
          v193 = 2080;
          v194 = "[VCBitrateArbiter readStoreBagValues:]";
          v195 = 1024;
          v196 = 443;
          v197 = 2080;
          Name = v133;
          v199 = 1024;
          v200 = v127;
          _os_log_impl(&dword_1DB56E000, v131, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding Wi-Fi bitrate with storebag value of %d", buf, 0x2Cu);
        }
      }

      v134 = objc_opt_class();
      v135 = class_getName(v134);
      VRLogfilePrintWithTimestamp(values, "%s: overriding Wi-Fi bitrate with storebag value of %d\n", v135, v127);
      self->_maxAllowedBitrateWifi = v127;
    }

    else
    {
      if (v129 >= 7)
      {
        v136 = VRTraceErrorLogLevelToCSTR();
        v137 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v138 = objc_opt_class();
          v139 = class_getName(v138);
          *buf = 136316162;
          v192 = v136;
          v193 = 2080;
          v194 = "[VCBitrateArbiter readStoreBagValues:]";
          v195 = 1024;
          v196 = 446;
          v197 = 2080;
          Name = v139;
          v199 = 1024;
          v200 = v127;
          _os_log_impl(&dword_1DB56E000, v137, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support Wi-Fi, ignored storebag value of %d", buf, 0x2Cu);
        }
      }

      v140 = objc_opt_class();
      v141 = class_getName(v140);
      VRLogfilePrintWithTimestamp(values, "%s: hardware does not support Wi-Fi, ignored storebag value of %d\n", v141, v127);
    }
  }

  v142 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ss-bitrate-max-lte"];
  if (v142)
  {
    v143 = v142;
    if (rangeCheck(v142))
    {
      maxAllowedBitrateLTE = self->_maxAllowedBitrateLTE;
      v145 = VRTraceGetErrorLogLevelForModule();
      if (maxAllowedBitrateLTE)
      {
        if (v145 >= 7)
        {
          v146 = VRTraceErrorLogLevelToCSTR();
          v147 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v148 = objc_opt_class();
            v149 = class_getName(v148);
            *buf = 136316162;
            v192 = v146;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 458;
            v197 = 2080;
            Name = v149;
            v199 = 1024;
            v200 = v143;
            _os_log_impl(&dword_1DB56E000, v147, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding LTE ScreenShare bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v150 = objc_opt_class();
        v151 = class_getName(v150);
        VRLogfilePrintWithTimestamp(values, "%s: overriding LTE ScreenShare bitrate with storebag value of %d\n", v151, v143);
        self->_maxAllowedScreenShareBitrateLTE = v143;
      }

      else
      {
        if (v145 >= 7)
        {
          v152 = VRTraceErrorLogLevelToCSTR();
          v153 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v154 = objc_opt_class();
            v155 = class_getName(v154);
            *buf = 136316162;
            v192 = v152;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 461;
            v197 = 2080;
            Name = v155;
            v199 = 1024;
            v200 = v143;
            _os_log_impl(&dword_1DB56E000, v153, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support LTE, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v156 = objc_opt_class();
        v157 = class_getName(v156);
        VRLogfilePrintWithTimestamp(values, "%s: hardware does not support LTE, ignored storebag value of %d\n", v157, v143);
      }
    }
  }

  else
  {
    self->_maxAllowedScreenShareBitrateLTE = 510;
  }

  v158 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ac-bitrate-max-lte"];
  if (v158)
  {
    v159 = v158;
    if (IsValidAudioBitrateRange(v158))
    {
      v160 = self->_maxAllowedBitrateLTE;
      v161 = VRTraceGetErrorLogLevelForModule();
      if (v160)
      {
        if (v161 >= 7)
        {
          v162 = VRTraceErrorLogLevelToCSTR();
          v163 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v164 = objc_opt_class();
            v165 = class_getName(v164);
            *buf = 136316162;
            v192 = v162;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 474;
            v197 = 2080;
            Name = v165;
            v199 = 1024;
            v200 = v159;
            _os_log_impl(&dword_1DB56E000, v163, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding LTE AppleCalling bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v166 = objc_opt_class();
        v167 = class_getName(v166);
        VRLogfilePrintWithTimestamp(values, "%s: overriding LTE AppleCalling bitrate with storebag value of %d\n", v167, v159);
        self->_maxAllowedAudioOnlyBitrateLTE = v159;
      }

      else
      {
        if (v161 >= 7)
        {
          v168 = VRTraceErrorLogLevelToCSTR();
          v169 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v170 = objc_opt_class();
            v171 = class_getName(v170);
            *buf = 136316162;
            v192 = v168;
            v193 = 2080;
            v194 = "[VCBitrateArbiter readStoreBagValues:]";
            v195 = 1024;
            v196 = 477;
            v197 = 2080;
            Name = v171;
            v199 = 1024;
            v200 = v159;
            _os_log_impl(&dword_1DB56E000, v169, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support LTE, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v172 = objc_opt_class();
        v173 = class_getName(v172);
        VRLogfilePrintWithTimestamp(values, "%s: hardware does not support LTE, ignored storebag value of %d\n", v173, v159);
      }
    }
  }

  else
  {
    self->_maxAllowedAudioOnlyBitrateLTE = 40;
  }

  v174 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-tcp-relay-bitrate-max"];
  self->_maxAllowedBitrateTCPRelay = v174;
  if (v174)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v175 = VRTraceErrorLogLevelToCSTR();
      v176 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v177 = objc_opt_class();
        v178 = class_getName(v177);
        maxAllowedBitrateTCPRelay = self->_maxAllowedBitrateTCPRelay;
        *buf = 136316162;
        v192 = v175;
        v193 = 2080;
        v194 = "[VCBitrateArbiter readStoreBagValues:]";
        v195 = 1024;
        v196 = 484;
        v197 = 2080;
        Name = v178;
        v199 = 1024;
        v200 = maxAllowedBitrateTCPRelay;
        _os_log_impl(&dword_1DB56E000, v176, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding TCP Relay bitrate with storebag value of %d", buf, 0x2Cu);
      }
    }

    v180 = objc_opt_class();
    v181 = class_getName(v180);
    VRLogfilePrintWithTimestamp(values, "%s: overriding TCP Relay bitrate with storebag value of %d\n", v181, self->_maxAllowedBitrateTCPRelay);
  }

  v182 = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-raise-u-one-bandwidth-limit-when-constrained" exceptionKey:@"vc-raise-u-one-bandwidth-limit-when-constrained-exceptions" userDefaultKey:@"raiseU1BandwidthLimitWhenConstrained" featureFlagDomain:"AVConference" featureFlagName:"RaiseU1BandwidthLimitWhenContrained"];
  if (v182)
  {
    v183 = 600;
  }

  else
  {
    v183 = 228;
  }

  self->_maxAllowedBitrateConstrained = v183;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v184 = VRTraceErrorLogLevelToCSTR();
    v185 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v186 = objc_opt_class();
      v187 = class_getName(v186);
      maxAllowedBitrateConstrained = self->_maxAllowedBitrateConstrained;
      *buf = 136316418;
      v192 = v184;
      v193 = 2080;
      v194 = "[VCBitrateArbiter readStoreBagValues:]";
      v195 = 1024;
      v196 = 489;
      v197 = 2080;
      Name = v187;
      v199 = 1024;
      v200 = maxAllowedBitrateConstrained;
      v201 = 1024;
      v202 = v182;
      _os_log_impl(&dword_1DB56E000, v185, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: max bitrate for constrained wifi set to %d, enabled setting=%d", buf, 0x32u);
    }
  }

  v189 = objc_opt_class();
  v190 = class_getName(v189);
  VRLogfilePrintWithTimestamp(values, "%s: max bitrate for constrained wifi set to %d, enabled setting=%d\n", v190, self->_maxAllowedBitrateConstrained, v182);
}

- (void)updateMaxAllowedBitrate:(unsigned int *)bitrate key:(__CFString *)key type:(id)type isAudio:(BOOL)audio carrierBundleBitrates:(__CFDictionary *)bitrates
{
  audioCopy = audio;
  v28 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(bitrates, key);
  if (Value)
  {
    valuePtr = -1431655766;
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if (audioCopy)
    {
      if (!IsValidAudioBitrateRange(valuePtr))
      {
        return;
      }
    }

    else if (!rangeCheck(valuePtr))
    {
      return;
    }

    v11 = *bitrate;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v11)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v19 = v13;
          v20 = 2080;
          v21 = "[VCBitrateArbiter updateMaxAllowedBitrate:key:type:isAudio:carrierBundleBitrates:]";
          v22 = 1024;
          v23 = 505;
          v24 = 2112;
          typeCopy2 = type;
          v26 = 1024;
          v27 = valuePtr;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCBitrateArbiter: overriding %@ bitrate with carrier bundle value of %d", buf, 0x2Cu);
        }
      }

      *bitrate = valuePtr;
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v19 = v15;
        v20 = 2080;
        v21 = "[VCBitrateArbiter updateMaxAllowedBitrate:key:type:isAudio:carrierBundleBitrates:]";
        v22 = 1024;
        v23 = 508;
        v24 = 2112;
        typeCopy2 = type;
        v26 = 1024;
        v27 = valuePtr;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCBitrateArbiter: hardware does not support %@, ignored carrier bundle value of %d", buf, 0x2Cu);
      }
    }
  }
}

- (void)readCarrierBundleValues
{
  v15 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (VCCarrierBundle_QueryCarrierBundleValueForKey(@"FaceTimeOverCellular", &cf))
  {
    v3 = cf == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v10 = v4;
        v11 = 2080;
        v12 = "[VCBitrateArbiter readCarrierBundleValues]";
        v13 = 1024;
        v14 = 544;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCBitrateArbiter: no carrier bundle values found", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      v7 = cf;
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedBitrate2G key:@"MaxBitrate2G" type:@"2G" isAudio:0 carrierBundleBitrates:cf];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedAudioOnlyBitrate2G key:@"MaxAudioOnlyBitrate2G" type:@"2G" isAudio:1 carrierBundleBitrates:v7];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedBitrate3G key:@"MaxBitrate3G" type:@"3G" isAudio:0 carrierBundleBitrates:v7];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedAudioOnlyBitrate3G key:@"MaxAudioOnlyBitrate3G" type:@"3G" isAudio:1 carrierBundleBitrates:v7];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedBitrateLTE key:@"MaxBitrateLTE" type:@"LTE" isAudio:0 carrierBundleBitrates:v7];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedAudioOnlyBitrateLTE key:@"MaxAudioOnlyBitrateLTE" type:@"LTE" isAudio:1 carrierBundleBitrates:v7];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedBitrateHighRat key:@"MaxBitrate5G" type:@"5G" isAudio:0 carrierBundleBitrates:v7];
    }

    CFRelease(cf);
  }
}

- (unsigned)maxAllowedScreenShareCellularBitrate
{
  maxAllowedScreenShareBitrate2G = self->_maxAllowedScreenShareBitrate2G;
  if (maxAllowedScreenShareBitrate2G <= self->_maxAllowedScreenShareBitrate3G)
  {
    maxAllowedScreenShareBitrate2G = self->_maxAllowedScreenShareBitrate3G;
  }

  if (maxAllowedScreenShareBitrate2G <= self->_maxAllowedScreenShareBitrateLTE)
  {
    return self->_maxAllowedScreenShareBitrateLTE;
  }

  else
  {
    return maxAllowedScreenShareBitrate2G;
  }
}

- (unsigned)maxAllowedBitrateForConnectionType:(int)type
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCBitrateArbiter maxAllowedBitrateForConnectionType:]";
      v12 = 1024;
      v13 = 563;
      v14 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCBitrateArbiter: received connectionType %d", &v8, 0x22u);
    }
  }

  if (type > 3)
  {
    if ((type - 4) < 2)
    {
      return 40000000;
    }

    if (type == 6)
    {
      return self->_maxAllowedBitrateHighRat;
    }

    if (type == 7)
    {
      return 60000000;
    }

    return 100;
  }

  if (type <= 1)
  {
    if (!type)
    {
      return self->_maxAllowedBitrate2G;
    }

    if (type == 1)
    {
      return self->_maxAllowedBitrate3G;
    }

    return 100;
  }

  if (type == 2)
  {
    return self->_maxAllowedBitrateLTE;
  }

  else
  {
    return self->_maxAllowedBitrateWifi;
  }
}

- (unsigned)maxAllowedBitrateForVCConnection:(id)connection forLocalInterface:(BOOL)interface encodeRule:(id)rule
{
  interfaceCopy = interface;
  v38 = *MEMORY[0x1E69E9840];
  if (interface)
  {
    localConnectionType = [connection localConnectionType];
  }

  else
  {
    localConnectionType = [connection remoteConnectionType];
  }

  v10 = localConnectionType;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (interfaceCopy)
    {
      IsLocalExpensive = VCConnection_IsLocalExpensive(connection);
      IsLocalConstrained = VCConnection_IsLocalConstrained(connection);
    }

    else
    {
      IsLocalExpensive = VCConnection_IsRemoteExpensive(connection);
      IsLocalConstrained = VCConnection_IsRemoteConstrained(connection);
    }

    v13 = IsLocalConstrained;
  }

  else
  {
    v13 = 0;
    IsLocalExpensive = 1;
  }

  maxAllowedBitrate3G = 100;
  if (v10 <= 3)
  {
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          maxAllowedBitrate3G = self->_maxAllowedBitrate3G;
        }
      }

      else
      {
        maxAllowedBitrate3G = self->_maxAllowedBitrate2G;
      }

      goto LABEL_35;
    }

    if (v10 != 2)
    {
      if (v13)
      {
        maxAllowedBitrate3G = self->_maxAllowedBitrateConstrained;
      }

      else
      {
        maxAllowedBitrate3G = self->_maxAllowedBitrateWifi;
      }

      goto LABEL_35;
    }

    goto LABEL_23;
  }

  if (v10 <= 5)
  {
    maxAllowedBitrate3G = 40000000;
    goto LABEL_35;
  }

  if (v10 == 6)
  {
LABEL_23:
    if ((IsLocalExpensive & 1) != 0 || (maxAllowedBitrate3G = self->_maxAllowedBitrateHighRat) == 0)
    {
      maxAllowedBitrate3G = self->_maxAllowedBitrateLTE;
    }

    if (v13)
    {
      if (self->_maxAllowedBitrateConstrained >= maxAllowedBitrate3G)
      {
        maxAllowedBitrateConstrained = maxAllowedBitrate3G;
      }

      else
      {
        maxAllowedBitrateConstrained = self->_maxAllowedBitrateConstrained;
      }

      if (maxAllowedBitrate3G)
      {
        maxAllowedBitrate3G = maxAllowedBitrateConstrained;
      }

      else
      {
        maxAllowedBitrate3G = self->_maxAllowedBitrateConstrained;
      }
    }

    goto LABEL_35;
  }

  if (v10 == 7)
  {
    maxAllowedBitrate3G = 60000000;
  }

LABEL_35:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (interfaceCopy)
      {
        v18 = "Local";
      }

      else
      {
        v18 = "Remote";
      }

      v20 = 136317186;
      v21 = v16;
      v22 = 2080;
      v23 = "[VCBitrateArbiter maxAllowedBitrateForVCConnection:forLocalInterface:encodeRule:]";
      v24 = 1024;
      v25 = 665;
      v26 = 1024;
      v27 = maxAllowedBitrate3G;
      v28 = 2080;
      v29 = v18;
      v30 = 1024;
      v31 = v10;
      v32 = 1024;
      v33 = v13;
      v34 = 1024;
      v35 = IsLocalExpensive;
      v36 = 1024;
      isVideoFullHD = [rule isVideoFullHD];
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Bitrate = %d. received connection for %s, connectionType = %d, constraint %d, expensive %d, videoFullHD %d", &v20, 0x44u);
    }
  }

  return maxAllowedBitrate3G;
}

- (unsigned)maxAllowedScreenShareBitrateForConnection:(int)connection
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCBitrateArbiter maxAllowedScreenShareBitrateForConnection:]";
      v12 = 1024;
      v13 = 671;
      v14 = 1024;
      connectionCopy = connection;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received connection type %d", &v8, 0x22u);
    }
  }

  if (connection <= 6 && ((0x4Fu >> connection) & 1) != 0)
  {
    return *(&self->super.isa + qword_1DBD50E40[connection]);
  }

  else
  {
    return 510;
  }
}

- (unsigned)maxAllowedImmersiveVideoBitrateForConnectionType:(int)type
{
  v19 = *MEMORY[0x1E69E9840];
  if (type == 7)
  {
    v4 = 100000000;
  }

  else
  {
    v4 = 20000000;
  }

  if (type == 3)
  {
    v5 = 75000000;
  }

  else
  {
    v5 = v4;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCBitrateArbiter maxAllowedImmersiveVideoBitrateForConnectionType:]";
      v13 = 1024;
      v14 = 706;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Immersive Video maxBitrate=%u for connectionType %d", &v9, 0x28u);
    }
  }

  return v5;
}

- (unsigned)maxAllowedAudioOnlyBitrateForConnection:(int)connection
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:]";
      v12 = 1024;
      v13 = 711;
      v14 = 1024;
      connectionCopy = connection;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received connection type %d", &v8, 0x22u);
    }
  }

  if (connection <= 6 && ((0x4Fu >> connection) & 1) != 0)
  {
    return *(&self->super.isa + qword_1DBD50E78[connection]);
  }

  else
  {
    return 40;
  }
}

- (id)maxAllowedBitrateRuleForConnection:(int)connection
{
  v27 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = v5;
      v21 = 2080;
      v22 = "[VCBitrateArbiter maxAllowedBitrateRuleForConnection:]";
      v23 = 1024;
      v24 = 735;
      v25 = 1024;
      connectionCopy = connection;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received connection type %d", buf, 0x22u);
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  supportedBitrateRules = self->supportedBitrateRules;
  v8 = [(NSMutableArray *)supportedBitrateRules countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v16;
LABEL_6:
  v11 = 0;
  while (1)
  {
    if (*v16 != v10)
    {
      objc_enumerationMutation(supportedBitrateRules);
    }

    v12 = *(*(&v15 + 1) + 8 * v11);
    if ([v12 connectionType] == connection)
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = [(NSMutableArray *)supportedBitrateRules countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v9)
      {
        goto LABEL_6;
      }

      return 0;
    }
  }
}

- (unsigned)maxAllowedBitrateForVCConnection:(id)connection forLocalInterface:(BOOL)interface arbiterMode:(unsigned __int8)mode encodeRule:(id)rule
{
  modeCopy = mode;
  interfaceCopy = interface;
  v28 = *MEMORY[0x1E69E9840];
  if (interface)
  {
    localConnectionType = [connection localConnectionType];
  }

  else
  {
    localConnectionType = [connection remoteConnectionType];
  }

  if (modeCopy > 3)
  {
    if (modeCopy <= 6)
    {
      if ((modeCopy - 4) >= 2)
      {
        if (modeCopy == 6)
        {
          return 20000000;
        }

        goto LABEL_27;
      }

LABEL_12:

      return [(VCBitrateArbiter *)self maxAllowedBitrateForVCConnection:connection forLocalInterface:interfaceCopy encodeRule:rule];
    }

    if (modeCopy != 7)
    {
      if (modeCopy == 8)
      {

        return [(VCBitrateArbiter *)self maxAllowedImmersiveVideoBitrateForConnectionType:localConnectionType];
      }

      goto LABEL_27;
    }

LABEL_24:

    return [(VCBitrateArbiter *)self maxAllowedAudioOnlyBitrateForConnection:localConnectionType];
  }

  if (modeCopy > 1)
  {
    if (modeCopy != 2)
    {

      return [(VCBitrateArbiter *)self maxAllowedScreenShareBitrateForConnection:localConnectionType];
    }

    goto LABEL_24;
  }

  if (!modeCopy)
  {
    goto LABEL_24;
  }

  if (modeCopy == 1)
  {
    goto LABEL_12;
  }

LABEL_27:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      [VCBitrateArbiter maxAllowedBitrateForVCConnection:forLocalInterface:arbiterMode:encodeRule:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCBitrateArbiter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v16 = 136316418;
      v17 = v14;
      v18 = 2080;
      v19 = "[VCBitrateArbiter maxAllowedBitrateForVCConnection:forLocalInterface:arbiterMode:encodeRule:]";
      v20 = 1024;
      v21 = 771;
      v22 = 2112;
      v23 = v13;
      v24 = 2048;
      selfCopy = self;
      v26 = 1024;
      v27 = modeCopy;
      _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected arbiterMode=%hhu", &v16, 0x36u);
    }
  }

  return 0;
}

- (unsigned)maxAllowedBitrateForConnectionType:(int)type arbiterMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v22 = *MEMORY[0x1E69E9840];
  if (mode > 3)
  {
    if (mode > 6)
    {
      if (mode == 7)
      {
        return 6000000;
      }

      if (mode == 8)
      {

        return [(VCBitrateArbiter *)self maxAllowedImmersiveVideoBitrateForConnectionType:*&type];
      }

      goto LABEL_25;
    }

    if ((mode - 4) >= 2)
    {
      if (mode == 6)
      {
        return 20000000;
      }

      goto LABEL_25;
    }

LABEL_9:

    return [(VCBitrateArbiter *)self maxAllowedBitrateForConnectionType:*&type];
  }

  if (mode > 1)
  {
    if (mode != 2)
    {

      return [(VCBitrateArbiter *)self maxAllowedScreenShareBitrateForConnection:*&type];
    }

LABEL_21:

    return [(VCBitrateArbiter *)self maxAllowedAudioOnlyBitrateForConnection:*&type];
  }

  if (!mode)
  {
    goto LABEL_21;
  }

  if (mode == 1)
  {
    goto LABEL_9;
  }

LABEL_25:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      [VCBitrateArbiter maxAllowedBitrateForConnectionType:arbiterMode:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCBitrateArbiter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v10 = 136316418;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCBitrateArbiter maxAllowedBitrateForConnectionType:arbiterMode:]";
      v14 = 1024;
      v15 = 795;
      v16 = 2112;
      v17 = v7;
      v18 = 2048;
      selfCopy = self;
      v20 = 1024;
      v21 = modeCopy;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected arbiterMode=%hhu", &v10, 0x36u);
    }
  }

  return 0;
}

+ (void)updateMaxAllowedBitratePerConnection:(unsigned int *)connection connectionType:(int)type negotiatedSettings:(id)settings
{
  v6 = [settings maxBandwidthWithArbiterMode:1 connectionType:*&type];
  if (v6)
  {
    *connection = v6;
  }
}

- (void)updateNegotiatedSettings:(id)settings
{
  v28 = *MEMORY[0x1E69E9840];
  [VCBitrateArbiter updateMaxAllowedBitratePerConnection:&self->_maxAllowedBitrate2G connectionType:0 negotiatedSettings:settings];
  [VCBitrateArbiter updateMaxAllowedBitratePerConnection:&self->_maxAllowedBitrate3G connectionType:1 negotiatedSettings:settings];
  [VCBitrateArbiter updateMaxAllowedBitratePerConnection:&self->_maxAllowedBitrateLTE connectionType:2 negotiatedSettings:settings];
  [VCBitrateArbiter updateMaxAllowedBitratePerConnection:&self->_maxAllowedBitrateHighRat connectionType:6 negotiatedSettings:settings];
  [VCBitrateArbiter updateMaxAllowedBitratePerConnection:&self->_maxAllowedBitrateWifi connectionType:3 negotiatedSettings:settings];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      maxAllowedBitrate2G = self->_maxAllowedBitrate2G;
      maxAllowedBitrate3G = self->_maxAllowedBitrate3G;
      maxAllowedBitrateLTE = self->_maxAllowedBitrateLTE;
      maxAllowedBitrateHighRat = self->_maxAllowedBitrateHighRat;
      maxAllowedBitrateWifi = self->_maxAllowedBitrateWifi;
      v12 = 136316930;
      v13 = v5;
      v14 = 2080;
      v15 = "[VCBitrateArbiter updateNegotiatedSettings:]";
      v16 = 1024;
      v17 = 815;
      v18 = 1024;
      v19 = maxAllowedBitrate2G;
      v20 = 1024;
      v21 = maxAllowedBitrate3G;
      v22 = 1024;
      v23 = maxAllowedBitrateLTE;
      v24 = 1024;
      v25 = maxAllowedBitrateHighRat;
      v26 = 1024;
      v27 = maxAllowedBitrateWifi;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _maxAllowedBitrate2G = %d,  _maxAllowedBitrate3G = %d, _maxAllowedBitrateLTE = %d, _maxAllowedBitrateHighRat = %d, _maxAllowedBitrateWifi = %d", &v12, 0x3Au);
    }
  }
}

- (void)maxAllowedBitrateForVCConnection:forLocalInterface:arbiterMode:encodeRule:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected arbiterMode=%hhu", v2, v3, v4, v5);
}

- (void)maxAllowedBitrateForConnectionType:arbiterMode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected arbiterMode=%hhu", v2, v3, v4, v5);
}

@end