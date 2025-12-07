@interface VCRateControllerManager
+ (id)sharedInstance;
- (VCRateControllerManager)init;
- (id)getRateControllerSharingGroupWithConnection:(id)connection usePolicy:(unsigned int)policy;
- (id)prepareCallIDKeyFromConnection:(id)connection;
- (id)prepareEndPointKeyFromConnection:(id)connection;
- (void)cleanupRateControllerSharingGroupWithConnection:(id)connection usePolicy:(unsigned int)policy;
- (void)dealloc;
- (void)init;
@end

@implementation VCRateControllerManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[VCRateControllerManager sharedInstance];
  }

  return sharedInstance_rateControllerManager;
}

VCRateControllerManager *__41__VCRateControllerManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCRateControllerManager);
  sharedInstance_rateControllerManager = result;
  return result;
}

- (VCRateControllerManager)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCRateControllerManager;
  v2 = [(VCObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VCRateSharingGroup);
    v2->_defaultSharingGroup = v3;
    if (v3)
    {
      pthread_mutex_init(&v2->_sharingGroupMutex, 0);
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v2->_sharingGroupDict = v4;
      if (v4)
      {
        return v2;
      }

      [(VCRateControllerManager *)v2 init];
    }

    else
    {
      [(VCRateControllerManager *)v2 init];
    }

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  pthread_mutex_destroy(&self->_sharingGroupMutex);
  v3.receiver = self;
  v3.super_class = VCRateControllerManager;
  [(VCObject *)&v3 dealloc];
}

- (id)prepareEndPointKeyFromConnection:(id)connection
{
  v9 = *MEMORY[0x1E69E9840];
  if (!connection)
  {
    return 0;
  }

  if (![connection connectionResult])
  {
    [VCRateControllerManager prepareEndPointKeyFromConnection:];
    return v7;
  }

  memset(v8, 0, sizeof(v8));
  IPToString();
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  if (!v3)
  {
    [VCRateControllerManager prepareEndPointKeyFromConnection:];
    return v7;
  }

  v4 = v3;
  IPToString();
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  if (!v5)
  {
    [VCRateControllerManager prepareEndPointKeyFromConnection:];
    return v7;
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v4, v5];
  if (!result)
  {
    [VCRateControllerManager prepareEndPointKeyFromConnection:];
    return v7;
  }

  return result;
}

- (id)prepareCallIDKeyFromConnection:(id)connection
{
  if (!connection)
  {
    [VCRateControllerManager prepareCallIDKeyFromConnection:];
    return v5;
  }

  connectionResult = [connection connectionResult];
  if (!connectionResult)
  {
    [VCRateControllerManager prepareCallIDKeyFromConnection:];
    return v5;
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", *connectionResult];
  if (!result)
  {
    [VCRateControllerManager prepareCallIDKeyFromConnection:];
    return v5;
  }

  return result;
}

- (void)cleanupRateControllerSharingGroupWithConnection:(id)connection usePolicy:(unsigned int)policy
{
  if (!connection)
  {
    return;
  }

  if (policy == 2)
  {
    v7 = objc_opt_class();
    if (OUTLINED_FUNCTION_41(v7))
    {
      v6 = [OUTLINED_FUNCTION_18_0() prepareCallIDKeyFromConnection:?];
      if (v6)
      {
        goto LABEL_11;
      }

      if (objc_opt_class() != self)
      {
        if (OUTLINED_FUNCTION_28_0())
        {
          [OUTLINED_FUNCTION_18_0() performSelector:?];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_40())
          {
            goto LABEL_46;
          }
        }

        return;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        return;
      }
    }

    else
    {
      if (objc_opt_class() != self)
      {
        if (OUTLINED_FUNCTION_28_0())
        {
          [OUTLINED_FUNCTION_18_0() performSelector:?];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_40())
          {
            goto LABEL_46;
          }
        }

        return;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        return;
      }
    }

LABEL_34:
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_47:
    _os_log_error_impl(v9, v10, v11, v12, v13, v14);
    return;
  }

  if (policy != 1)
  {
    return;
  }

  v5 = objc_opt_class();
  if ((OUTLINED_FUNCTION_41(v5) & 1) == 0)
  {
    if (objc_opt_class() != self)
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        [OUTLINED_FUNCTION_18_0() performSelector:?];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_40())
        {
          goto LABEL_46;
        }
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    goto LABEL_34;
  }

  v6 = [OUTLINED_FUNCTION_18_0() prepareEndPointKeyFromConnection:?];
  if (v6)
  {
LABEL_11:
    v8 = v6;
    pthread_mutex_lock(&self->_sharingGroupMutex);
    [(NSMutableDictionary *)self->_sharingGroupDict setObject:0 forKeyedSubscript:v8];

    pthread_mutex_unlock(&self->_sharingGroupMutex);
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    goto LABEL_34;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    [OUTLINED_FUNCTION_18_0() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
LABEL_46:
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_47;
    }
  }
}

- (id)getRateControllerSharingGroupWithConnection:(id)connection usePolicy:(unsigned int)policy
{
  v6 = *&policy;
  v91 = *MEMORY[0x1E69E9840];
  connectionCopy2 = 184;
  pthread_mutex_lock(&self->_sharingGroupMutex);
  v10 = self->_defaultSharingGroup;
  if (connection && v6)
  {
    if (v6 != 2)
    {
      if (v6 != 1)
      {
        goto LABEL_57;
      }

      v11 = objc_opt_class();
      if (OUTLINED_FUNCTION_41(v11))
      {
        v12 = [(VCRateControllerManager *)self prepareEndPointKeyFromConnection:connection];
        if (v12)
        {
          v13 = OUTLINED_FUNCTION_39_5(v12);
          v14 = objc_opt_class();
          if (v13)
          {
            v74 = 1;
            OUTLINED_FUNCTION_13_4();
            if (v15 != self)
            {
              if (OUTLINED_FUNCTION_25_2())
              {
                OUTLINED_FUNCTION_34_2();
              }

              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_36;
              }

              VRTraceErrorLogLevelToCSTR();
              if (!OUTLINED_FUNCTION_36_2())
              {
                goto LABEL_36;
              }

              goto LABEL_34;
            }

            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_36;
            }

            VRTraceErrorLogLevelToCSTR();
            if (!OUTLINED_FUNCTION_30_1())
            {
              goto LABEL_36;
            }

            goto LABEL_28;
          }

          if (v14 == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              VRTraceErrorLogLevelToCSTR();
              if (OUTLINED_FUNCTION_30_1())
              {
                OUTLINED_FUNCTION_3_12();
                OUTLINED_FUNCTION_5_13();
                OUTLINED_FUNCTION_6_17();
                OUTLINED_FUNCTION_21_2();
LABEL_46:
                _os_log_impl(v27, v28, v29, v30, v31, v32);
              }
            }
          }

          else
          {
            if (OUTLINED_FUNCTION_25_2())
            {
              OUTLINED_FUNCTION_34_2();
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              VRTraceErrorLogLevelToCSTR();
              if (OUTLINED_FUNCTION_36_2())
              {
                OUTLINED_FUNCTION_7_8();
                OUTLINED_FUNCTION_5_13();
                OUTLINED_FUNCTION_4_11();
                OUTLINED_FUNCTION_20_1();
                v32 = 58;
                goto LABEL_46;
              }
            }
          }

          v39 = [[VCRateSharingGroup alloc] initWithIdentifier:v4 useMediaQueue:1];
          if (!v39)
          {
            if (objc_opt_class() != self)
            {
              if (objc_opt_respondsToSelector())
              {
                OUTLINED_FUNCTION_34_2();
              }

              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                goto LABEL_122;
              }

              VRTraceErrorLogLevelToCSTR();
              if (!OUTLINED_FUNCTION_31_3())
              {
                goto LABEL_122;
              }

              goto LABEL_123;
            }

            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_122;
            }

            VRTraceErrorLogLevelToCSTR();
            if (!OUTLINED_FUNCTION_31())
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_6_14();
            OUTLINED_FUNCTION_5_13();
            v78 = 135;
            goto LABEL_116;
          }

          goto LABEL_56;
        }

        v55 = v6;
        OUTLINED_FUNCTION_13_4();
        if (objc_opt_class() != self)
        {
          if (OUTLINED_FUNCTION_19_5())
          {
            OUTLINED_FUNCTION_37_3();
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_109;
          }

          VRTraceErrorLogLevelToCSTR();
          if (!OUTLINED_FUNCTION_40_2())
          {
            goto LABEL_109;
          }

          goto LABEL_108;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_109;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31_3())
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_5_13();
        v78 = 131;
LABEL_93:
        OUTLINED_FUNCTION_16_0();
        _os_log_error_impl(v56, v57, v58, v59, v60, v61);
LABEL_109:
        connectionCopy2 = connection;
        connection = v6;
        LODWORD(v6) = v55;
        goto LABEL_57;
      }

      v55 = v6;
      OUTLINED_FUNCTION_13_4();
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_109;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31_3())
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_5_13();
        v78 = 129;
        goto LABEL_93;
      }

      if (OUTLINED_FUNCTION_19_5())
      {
        OUTLINED_FUNCTION_37_3();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_109;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40_2())
      {
        goto LABEL_109;
      }

      goto LABEL_108;
    }

    v16 = objc_opt_class();
    if ((OUTLINED_FUNCTION_41(v16) & 1) == 0)
    {
      v55 = v6;
      OUTLINED_FUNCTION_13_4();
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_109;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31_3())
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_5_13();
        v78 = 144;
        goto LABEL_93;
      }

      if (OUTLINED_FUNCTION_19_5())
      {
        OUTLINED_FUNCTION_37_3();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_109;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40_2())
      {
        goto LABEL_109;
      }

LABEL_108:
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_6_17();
      OUTLINED_FUNCTION_16_8();
      OUTLINED_FUNCTION_7_3();
      _os_log_error_impl(v62, v63, v64, v65, v66, v67);
      goto LABEL_109;
    }

    v17 = [(VCRateControllerManager *)self prepareCallIDKeyFromConnection:connection];
    if (!v17)
    {
      v55 = v6;
      OUTLINED_FUNCTION_13_4();
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_109;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31_3())
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_5_13();
        v78 = 146;
        goto LABEL_93;
      }

      if (OUTLINED_FUNCTION_19_5())
      {
        OUTLINED_FUNCTION_37_3();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_109;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40_2())
      {
        goto LABEL_109;
      }

      goto LABEL_108;
    }

    v18 = OUTLINED_FUNCTION_39_5(v17);
    v19 = objc_opt_class();
    if (v18)
    {
      v74 = 2;
      OUTLINED_FUNCTION_13_4();
      if (v20 != self)
      {
        if (OUTLINED_FUNCTION_25_2())
        {
          OUTLINED_FUNCTION_34_2();
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_36;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_36_2())
        {
          goto LABEL_36;
        }

LABEL_34:
        OUTLINED_FUNCTION_7_8();
        OUTLINED_FUNCTION_5_13();
        OUTLINED_FUNCTION_4_11();
        OUTLINED_FUNCTION_20_1();
        v26 = 58;
        goto LABEL_35;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_36;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_30_1())
      {
        goto LABEL_36;
      }

LABEL_28:
      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_6_17();
      OUTLINED_FUNCTION_21_2();
LABEL_35:
      _os_log_impl(v21, v22, v23, v24, v25, v26);
LABEL_36:
      v10 = [*(&self->super.super.isa + v5) objectForKeyedSubscript:v4];
      connectionCopy2 = connection;
      connection = v6;
      LODWORD(v6) = v74;
      goto LABEL_57;
    }

    if (v19 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_30_1())
        {
          OUTLINED_FUNCTION_3_12();
          OUTLINED_FUNCTION_5_13();
          OUTLINED_FUNCTION_6_17();
          OUTLINED_FUNCTION_21_2();
LABEL_54:
          _os_log_impl(v33, v34, v35, v36, v37, v38);
        }
      }
    }

    else
    {
      if (OUTLINED_FUNCTION_25_2())
      {
        OUTLINED_FUNCTION_34_2();
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_36_2())
        {
          OUTLINED_FUNCTION_7_8();
          OUTLINED_FUNCTION_5_13();
          OUTLINED_FUNCTION_4_11();
          OUTLINED_FUNCTION_20_1();
          v38 = 58;
          goto LABEL_54;
        }
      }
    }

    v39 = [[VCRateSharingGroup alloc] initWithIdentifier:v4 useMediaQueue:0];
    if (!v39)
    {
      if (objc_opt_class() != self)
      {
        if (objc_opt_respondsToSelector())
        {
          OUTLINED_FUNCTION_34_2();
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_122;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31_3())
        {
          goto LABEL_122;
        }

LABEL_123:
        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_5_13();
        OUTLINED_FUNCTION_10_7();
        OUTLINED_FUNCTION_16_8();
        OUTLINED_FUNCTION_7_3();
        goto LABEL_124;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_122;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_6_14();
      OUTLINED_FUNCTION_5_13();
      v78 = 150;
LABEL_116:
      OUTLINED_FUNCTION_16_0();
LABEL_124:
      _os_log_error_impl(v68, v69, v70, v71, v72, v73);
LABEL_122:
      v10 = 0;
      goto LABEL_57;
    }

LABEL_56:
    v10 = v39;
    [*(&self->super.super.isa + v5) setObject:v39 forKeyedSubscript:v4];
  }

LABEL_57:
  pthread_mutex_unlock((self + connectionCopy2));
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v41 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v75 = 136316674;
        v76 = v41;
        v77 = 2080;
        OUTLINED_FUNCTION_27_4();
        v79 = 2048;
        v80 = v10;
        v81 = 2048;
        selfCopy = v43;
        v83 = 2048;
        connectionCopy3 = connection;
        v85 = v44;
        LODWORD(v86) = v6;
        v45 = &dword_1DB56E000;
        v46 = " [%s] %s:%d Returning sharingGroup=%p defaultSharingGroup=%p connection=%p policy=%d";
        v47 = &v75;
        v48 = v42;
        v49 = OS_LOG_TYPE_DEFAULT;
        v50 = 64;
LABEL_67:
        _os_log_impl(v45, v48, v49, v46, v47, v50);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v40 = OUTLINED_FUNCTION_37_3();
    }

    else
    {
      v40 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v51 = VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_36_2())
      {
        v75 = 136317186;
        v76 = v51;
        v77 = 2080;
        OUTLINED_FUNCTION_27_4();
        v79 = 2112;
        v80 = v40;
        v81 = 2048;
        selfCopy = self;
        v83 = 2048;
        connectionCopy3 = v10;
        v85 = 2048;
        v86 = v52;
        v87 = 2048;
        connectionCopy4 = connection;
        v89 = v53;
        v90 = v6;
        OUTLINED_FUNCTION_20_1();
        v50 = 84;
        goto LABEL_67;
      }
    }
  }

  return v10;
}

- (void)init
{
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    [OUTLINED_FUNCTION_18_0() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }
}

- (void)prepareEndPointKeyFromConnection:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareEndPointKeyFromConnection:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareEndPointKeyFromConnection:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareEndPointKeyFromConnection:.cold.4()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareCallIDKeyFromConnection:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareCallIDKeyFromConnection:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareCallIDKeyFromConnection:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

@end