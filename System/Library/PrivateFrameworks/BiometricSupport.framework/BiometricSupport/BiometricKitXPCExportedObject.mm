@interface BiometricKitXPCExportedObject
- (BOOL)isClient:(unint64_t)client entitled:(int)entitled forMethod:(const char *)method;
- (BiometricKitXPCExportedObject)init;
- (id)client:(unint64_t)client;
- (id)clients;
- (id)entitlementsNeededForPermissionGroup:(int)group;
- (int64_t)clientThrottleRatio:(id)ratio;
- (unsigned)hashClientName:(id)name;
- (void)cancel:(unint64_t)cancel replyBlock:(id)block;
- (void)completeEnrollment:(unint64_t)enrollment replyBlock:(id)block;
- (void)connect:(id)connect client:(unint64_t)client replyBlock:(id)block;
- (void)dealloc;
- (void)detectPresenceWithOptions:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block;
- (void)diagnostics:(int)diagnostics options:(id)options client:(unint64_t)client replyBlock:(id)block;
- (void)disconnect:(unint64_t)disconnect replyBlock:(id)block;
- (void)dropUnlockToken:(unint64_t)token replyBlock:(id)block;
- (void)enableBackgroundFdet:(BOOL)fdet client:(unint64_t)client replyBlock:(id)block;
- (void)enableMatchAutoRetry:(BOOL)retry client:(unint64_t)client replyBlock:(id)block;
- (void)enroll:(int)enroll user:(unsigned int)user options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block;
- (void)enrollContinue:(unint64_t)continue replyBlock:(id)block;
- (void)fileRadarWithLogs:(id)logs description:(id)description client:(unint64_t)client replyBlock:(id)block;
- (void)forceBioLockoutForUser:(unsigned int)user options:(id)options client:(unint64_t)client replyBlock:(id)block;
- (void)getBioLockoutStateForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block;
- (void)getBiometryAvailabilityForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block;
- (void)getCalibrationDataInfo:(unint64_t)info replyBlock:(id)block;
- (void)getCountersignedStoreToken:(unint64_t)token replyBlock:(id)block;
- (void)getDeviceHardwareState:(unint64_t)state replyBlock:(id)block;
- (void)getDeviceState:(unint64_t)state replyBlock:(id)block;
- (void)getExpressModeStateForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block;
- (void)getFreeIdentityCount:(int)count user:(unsigned int)user client:(unint64_t)client replyBlock:(id)block;
- (void)getFreeIdentityCountForUser:(unsigned int)user accessoryGroup:(id)group client:(unint64_t)client replyBlock:(id)block;
- (void)getIdentitiesDatabaseHashForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block;
- (void)getIdentitiesDatabaseUUIDForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block;
- (void)getIdentityFromUUID:(id)d client:(unint64_t)client replyBlock:(id)block;
- (void)getLastMatchEvent:(unint64_t)event replyBlock:(id)block;
- (void)getLogs:(BOOL)logs client:(unint64_t)client replyBlock:(id)block;
- (void)getMaxIdentityCount:(int)count client:(unint64_t)client replyBlock:(id)block;
- (void)getNodeTopologyForIdentity:(id)identity client:(unint64_t)client replyBlock:(id)block;
- (void)getPeriocularMatchState:(unsigned int)state client:(unint64_t)client replyBlock:(id)block;
- (void)getPreferencesValueForKey:(id)key client:(unint64_t)client replyBlock:(id)block;
- (void)getProtectedConfigurationForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block;
- (void)getProvisioningState:(unint64_t)state replyBlock:(id)block;
- (void)getSensorCalibrationStatus:(unint64_t)status replyBlock:(id)block;
- (void)getSensorInfo:(unint64_t)info replyBlock:(id)block;
- (void)getSystemProtectedConfiguration:(unint64_t)configuration replyBlock:(id)block;
- (void)identities:(id)identities client:(unint64_t)client replyBlock:(id)block;
- (void)isAriadneSignpostsEnabled:(unint64_t)enabled replyBlock:(id)block;
- (void)isFingerOn:(unint64_t)on replyBlock:(id)block;
- (void)isPeriocularEnrollmentSupported:(unint64_t)supported replyBlock:(id)block;
- (void)isXARTAvailable:(unint64_t)available replyBlock:(id)block;
- (void)listAccessories:(unint64_t)accessories replyBlock:(id)block;
- (void)logEventOrCode:(unint64_t)code;
- (void)match:(id)match options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block;
- (void)notifyAppIsBackground:(BOOL)background client:(unint64_t)client;
- (void)notifyAppIsInactive:(BOOL)inactive client:(unint64_t)client;
- (void)pauseFaceDetectTimer:(BOOL)timer client:(unint64_t)client replyBlock:(id)block;
- (void)prewarmCamera:(unint64_t)camera client:(unint64_t)client replyBlock:(id)block;
- (void)pullAlignmentData:(unint64_t)data replyBlock:(id)block;
- (void)pullCalibrationData:(unint64_t)data replyBlock:(id)block;
- (void)pullCaptureBuffer:(unint64_t)buffer replyBlock:(id)block;
- (void)pullDebugImageData:(BOOL)data rotated:(BOOL)rotated client:(unint64_t)client replyBlock:(id)block;
- (void)pullMatchPolicyInfoData:(unint64_t)data replyBlock:(id)block;
- (void)queryIdentityMigrationFailureForUser:(unsigned int)user clear:(BOOL)clear client:(unint64_t)client replyBlock:(id)block;
- (void)registerDSID:(unint64_t)d options:(id)options client:(unint64_t)client replyBlock:(id)block;
- (void)registerDelegate:(BOOL)delegate client:(unint64_t)client replyBlock:(id)block;
- (void)registerStoreToken:(id)token client:(unint64_t)client replyBlock:(id)block;
- (void)removeAllIdentitiesForUser:(unsigned int)user options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block;
- (void)removeIdentity:(id)identity options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block;
- (void)removePeriocularTemplatesWithOptions:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block;
- (void)resetAppleConnectCounter:(unint64_t)counter replyBlock:(id)block;
- (void)setDebugImages:(BOOL)images client:(unint64_t)client replyBlock:(id)block;
- (void)setPreferencesValue:(id)value forKey:(id)key client:(unint64_t)client replyBlock:(id)block;
- (void)setProtectedConfiguration:(id)configuration user:(unsigned int)user options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block;
- (void)setSystemProtectedConfiguration:(id)configuration options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block;
- (void)setTemplate:(id)template forIdentity:(id)identity client:(unint64_t)client replyBlock:(id)block;
- (void)setUserDSID:(unint64_t)d options:(id)options client:(unint64_t)client replyBlock:(id)block;
- (void)startNewMatchAttempt:(unint64_t)attempt replyBlock:(id)block;
- (void)suspendEnrollment:(BOOL)enrollment client:(unint64_t)client replyBlock:(id)block;
- (void)terminate;
- (void)timestampEvent:(unint64_t)event absoluteTime:(unint64_t)time client:(unint64_t)client replyBlock:(id)block;
- (void)updateIdentity:(id)identity options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block;
@end

@implementation BiometricKitXPCExportedObject

- (id)clients
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_clients allValues];
  objc_sync_exit(selfCopy);

  return allValues;
}

- (id)entitlementsNeededForPermissionGroup:(int)group
{
  if (group > 7)
  {
    return @"(unknown)";
  }

  else
  {
    return off_2784FA358[group];
  }
}

- (unsigned)hashClientName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = [nameCopy cStringUsingEncoding:1];
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = v4 + 1;
      v7 = 7229;
      do
      {
        v7 = v5 - v7 + 32 * v7;
        v8 = *v6++;
        v5 = v8;
      }

      while (v8);
    }

    else
    {
      v7 = 7229;
    }
  }

  else
  {
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = nameCopy;
      _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_ERROR, "Invalid bundleId %@\n", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (int64_t)clientThrottleRatio:(id)ratio
{
  v33 = *MEMORY[0x277D85DE8];
  ratioCopy = ratio;
  if (clientThrottleRatio__once != -1)
  {
    [BiometricKitXPCExportedObject clientThrottleRatio:];
  }

  currentPlatform = [(BiometricKitXPCExportedObject *)self currentPlatform];
  if (ratioCopy)
  {
    v6 = [(BiometricKitXPCExportedObject *)self hashClientName:ratioCopy];
    v7 = clientThrottleRatio__graylisted;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      [v9 componentsSeparatedByString:{@", "}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v25 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v21 = v9;
        v13 = *v23;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v22 + 1) + 8 * i) componentsSeparatedByString:@"|"];
            if ([v15 count] == 2)
            {
              v16 = [v15 objectAtIndexedSubscript:0];
              v17 = [v15 objectAtIndexedSubscript:1];
              if ([currentPlatform isEqualToString:v16])
              {
                integerValue = [v17 integerValue];

                goto LABEL_19;
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v32 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

        integerValue = 0;
LABEL_19:
        v9 = v21;
      }

      else
      {
        integerValue = 0;
      }
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 0;
  }

  if (__osLog)
  {
    v19 = __osLog;
  }

  else
  {
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v27 = ratioCopy;
    v28 = 2112;
    v29 = currentPlatform;
    v30 = 1024;
    v31 = integerValue;
    _os_log_impl(&dword_223E00000, v19, OS_LOG_TYPE_INFO, "Client %@/%@ throttling value=%d\n", buf, 0x1Cu);
  }

  return integerValue;
}

void __53__BiometricKitXPCExportedObject_clientThrottleRatio___block_invoke()
{
  v3[136] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_28374B7F0;
  v2[1] = &unk_28374B808;
  v3[0] = @"iOS|1,macOS|10,visionOS|1";
  v3[1] = @"iOS|1";
  v2[2] = &unk_28374B820;
  v2[3] = &unk_28374B838;
  v3[2] = @"iOS|1,macOS|1,visionOS|1";
  v3[3] = @"iOS|1,visionOS|1";
  v2[4] = &unk_28374B850;
  v2[5] = &unk_28374B868;
  v3[4] = @"macOS|1";
  v3[5] = @"visionOS|1";
  v2[6] = &unk_28374B880;
  v2[7] = &unk_28374B898;
  v3[6] = @"iOS|1";
  v3[7] = @"iOS|1";
  v2[8] = &unk_28374B8B0;
  v2[9] = &unk_28374B8C8;
  v3[8] = @"iOS|1";
  v3[9] = @"macOS|100";
  v2[10] = &unk_28374B8E0;
  v2[11] = &unk_28374B8F8;
  v3[10] = @"iOS|10,visionOS|1";
  v3[11] = @"iOS|1,macOS|1";
  v2[12] = &unk_28374B910;
  v2[13] = &unk_28374B928;
  v3[12] = @"macOS|100";
  v3[13] = @"iOS|1";
  v2[14] = &unk_28374B940;
  v2[15] = &unk_28374B958;
  v3[14] = @"iOS|1";
  v3[15] = @"iOS|1000,visionOS|100";
  v2[16] = &unk_28374B970;
  v2[17] = &unk_28374B988;
  v3[16] = @"iOS|1";
  v3[17] = @"iOS|1,visionOS|1";
  v2[18] = &unk_28374B9A0;
  v2[19] = &unk_28374B9B8;
  v3[18] = @"iOS|1,visionOS|1";
  v3[19] = @"iOS|1";
  v2[20] = &unk_28374B9D0;
  v2[21] = &unk_28374B9E8;
  v3[20] = @"iOS|10,macOS|1,visionOS|1";
  v3[21] = @"iOS|1,visionOS|1";
  v2[22] = &unk_28374BA00;
  v2[23] = &unk_28374BA18;
  v3[22] = @"iOS|1,visionOS|1";
  v3[23] = @"macOS|100";
  v2[24] = &unk_28374BA30;
  v2[25] = &unk_28374BA48;
  v3[24] = @"iOS|1";
  v3[25] = @"macOS|1";
  v2[26] = &unk_28374BA60;
  v2[27] = &unk_28374BA78;
  v3[26] = @"iOS|1";
  v3[27] = @"iOS|1";
  v2[28] = &unk_28374BA90;
  v2[29] = &unk_28374BAA8;
  v3[28] = @"iOS|1,visionOS|1";
  v3[29] = @"visionOS|1";
  v2[30] = &unk_28374BAC0;
  v2[31] = &unk_28374BAD8;
  v3[30] = @"macOS|1";
  v3[31] = @"iOS|1";
  v2[32] = &unk_28374BAF0;
  v2[33] = &unk_28374BB08;
  v3[32] = @"macOS|1";
  v3[33] = @"iOS|10";
  v2[34] = &unk_28374BB20;
  v2[35] = &unk_28374BB38;
  v3[34] = @"iOS|10,visionOS|1";
  v3[35] = @"iOS|1";
  v2[36] = &unk_28374BB50;
  v2[37] = &unk_28374BB68;
  v3[36] = @"iOS|1";
  v3[37] = @"iOS|10";
  v2[38] = &unk_28374BB80;
  v2[39] = &unk_28374BB98;
  v3[38] = @"iOS|1,macOS|1,visionOS|1";
  v3[39] = @"iOS|1";
  v2[40] = &unk_28374BBB0;
  v2[41] = &unk_28374BBC8;
  v3[40] = @"macOS|1";
  v3[41] = @"macOS|1";
  v2[42] = &unk_28374BBE0;
  v2[43] = &unk_28374BBF8;
  v3[42] = @"macOS|1";
  v3[43] = @"iOS|1,visionOS|1";
  v2[44] = &unk_28374BC10;
  v2[45] = &unk_28374BC28;
  v3[44] = @"iOS|1";
  v3[45] = @"iOS|1";
  v2[46] = &unk_28374BC40;
  v2[47] = &unk_28374BC58;
  v3[46] = @"visionOS|1";
  v3[47] = @"iOS|10,macOS|10,visionOS|1";
  v2[48] = &unk_28374BC70;
  v2[49] = &unk_28374BC88;
  v3[48] = @"macOS|1";
  v3[49] = @"iOS|1,visionOS|1";
  v2[50] = &unk_28374BCA0;
  v2[51] = &unk_28374BCB8;
  v3[50] = @"iOS|1";
  v3[51] = @"visionOS|1";
  v2[52] = &unk_28374BCD0;
  v2[53] = &unk_28374BCE8;
  v3[52] = @"iOS|1";
  v3[53] = @"iOS|1";
  v2[54] = &unk_28374BD00;
  v2[55] = &unk_28374BD18;
  v3[54] = @"iOS|1";
  v3[55] = @"iOS|1";
  v2[56] = &unk_28374BD30;
  v2[57] = &unk_28374BD48;
  v3[56] = @"iOS|100,visionOS|10";
  v3[57] = @"iOS|1000,visionOS|10000";
  v2[58] = &unk_28374BD60;
  v2[59] = &unk_28374BD78;
  v3[58] = @"visionOS|10";
  v3[59] = @"visionOS|1";
  v2[60] = &unk_28374BD90;
  v2[61] = &unk_28374BDA8;
  v3[60] = @"iOS|1,visionOS|1";
  v3[61] = @"macOS|1";
  v2[62] = &unk_28374BDC0;
  v2[63] = &unk_28374BDD8;
  v3[62] = @"iOS|1,visionOS|1";
  v3[63] = @"visionOS|1";
  v2[64] = &unk_28374BDF0;
  v3[64] = @"iOS|1";
  v2[65] = &unk_28374BE08;
  v3[65] = @"macOS|10";
  v2[66] = &unk_28374BE20;
  v3[66] = @"macOS|10";
  v2[67] = &unk_28374BE38;
  v3[67] = @"visionOS|1";
  v2[68] = &unk_28374BE50;
  v3[68] = @"macOS|1";
  v2[69] = &unk_28374BE68;
  v3[69] = @"iOS|1";
  v2[70] = &unk_28374BE80;
  v3[70] = @"visionOS|10";
  v2[71] = &unk_28374BE98;
  v3[71] = @"visionOS|10";
  v2[72] = &unk_28374BEB0;
  v3[72] = @"macOS|1";
  v2[73] = &unk_28374BEC8;
  v3[73] = @"iOS|1";
  v2[74] = &unk_28374BEE0;
  v3[74] = @"iOS|1";
  v2[75] = &unk_28374BEF8;
  v3[75] = @"iOS|10,visionOS|10";
  v2[76] = &unk_28374BF10;
  v3[76] = @"iOS|100,visionOS|100";
  v2[77] = &unk_28374BF28;
  v2[78] = &unk_28374BF40;
  v3[77] = @"visionOS|1";
  v3[78] = @"iOS|1000000,visionOS|10000";
  v2[79] = &unk_28374BF58;
  v3[79] = @"iOS|10,visionOS|1";
  v2[80] = &unk_28374BF70;
  v3[80] = @"iOS|10";
  v2[81] = &unk_28374BF88;
  v2[82] = &unk_28374BFA0;
  v3[81] = @"iOS|100,visionOS|10";
  v3[82] = @"iOS|100,macOS|10";
  v2[83] = &unk_28374BFB8;
  v3[83] = @"iOS|1,visionOS|1";
  v2[84] = &unk_28374BFD0;
  v3[84] = @"visionOS|1";
  v2[85] = &unk_28374BFE8;
  v3[85] = @"iOS|10,visionOS|1";
  v2[86] = &unk_28374C000;
  v3[86] = @"iOS|1";
  v2[87] = &unk_28374C018;
  v3[87] = @"iOS|1";
  v2[88] = &unk_28374C030;
  v3[88] = @"iOS|1";
  v2[89] = &unk_28374C048;
  v3[89] = @"iOS|1,visionOS|1";
  v2[90] = &unk_28374C060;
  v3[90] = @"iOS|1,visionOS|1";
  v2[91] = &unk_28374C078;
  v2[92] = &unk_28374C090;
  v3[91] = @"iOS|1,visionOS|1";
  v3[92] = @"iOS|1000000,macOS|1000,visionOS|10000";
  v2[93] = &unk_28374C0A8;
  v3[93] = @"iOS|1";
  v2[94] = &unk_28374C0C0;
  v3[94] = @"macOS|1";
  v2[95] = &unk_28374C0D8;
  v2[96] = &unk_28374C0F0;
  v3[95] = @"macOS|1";
  v3[96] = @"iOS|100,macOS|1,visionOS|10";
  v2[97] = &unk_28374C108;
  v3[97] = @"iOS|10,visionOS|1";
  v2[98] = &unk_28374C120;
  v3[98] = @"macOS|10";
  v2[99] = &unk_28374C138;
  v3[99] = @"macOS|10";
  v2[100] = &unk_28374C150;
  v2[101] = &unk_28374C168;
  v3[100] = @"iOS|10000,visionOS|1000";
  v3[101] = @"macOS|1000";
  v2[102] = &unk_28374C180;
  v3[102] = @"macOS|1";
  v2[103] = &unk_28374C198;
  v3[103] = @"iOS|10000,visionOS|1000";
  v2[104] = &unk_28374C1B0;
  v3[104] = @"iOS|1000,visionOS|10";
  v2[105] = &unk_28374C1C8;
  v3[105] = @"iOS|10,visionOS|1";
  v2[106] = &unk_28374C1E0;
  v3[106] = @"visionOS|1";
  v2[107] = &unk_28374C1F8;
  v3[107] = @"iOS|1";
  v2[108] = &unk_28374C210;
  v3[108] = @"iOS|1000,visionOS|1000";
  v2[109] = &unk_28374C228;
  v3[109] = @"iOS|1,visionOS|1";
  v2[110] = &unk_28374C240;
  v3[110] = @"visionOS|10";
  v2[111] = &unk_28374C258;
  v3[111] = @"iOS|10,visionOS|1";
  v2[112] = &unk_28374C270;
  v3[112] = @"macOS|1";
  v2[113] = &unk_28374C288;
  v3[113] = @"visionOS|100";
  v2[114] = &unk_28374C2A0;
  v3[114] = @"iOS|1,visionOS|1";
  v2[115] = &unk_28374C2B8;
  v3[115] = @"visionOS|1000";
  v2[116] = &unk_28374C2D0;
  v3[116] = @"iOS|10000,visionOS|10000";
  v2[117] = &unk_28374C2E8;
  v3[117] = @"iOS|1,visionOS|1";
  v2[118] = &unk_28374C300;
  v3[118] = @"iOS|1";
  v2[119] = &unk_28374C318;
  v3[119] = @"iOS|1000000";
  v2[120] = &unk_28374C330;
  v3[120] = @"iOS|1";
  v2[121] = &unk_28374C348;
  v3[121] = @"iOS|1";
  v2[122] = &unk_28374C360;
  v3[122] = @"iOS|1";
  v2[123] = &unk_28374C378;
  v3[123] = @"iOS|100,visionOS|1";
  v2[124] = &unk_28374C390;
  v3[124] = @"iOS|1";
  v2[125] = &unk_28374C3A8;
  v3[125] = @"iOS|100,visionOS|10";
  v2[126] = &unk_28374C3C0;
  v3[126] = @"macOS|10000";
  v2[127] = &unk_28374C3D8;
  v3[127] = @"iOS|10,visionOS|1";
  v2[128] = &unk_28374C3F0;
  v3[128] = @"iOS|1";
  v2[129] = &unk_28374C408;
  v3[129] = @"iOS|1,visionOS|1";
  v2[130] = &unk_28374C420;
  v3[130] = @"iOS|10";
  v2[131] = &unk_28374C438;
  v3[131] = @"visionOS|1";
  v2[132] = &unk_28374C450;
  v3[132] = @"iOS|1,visionOS|1";
  v2[133] = &unk_28374C468;
  v3[133] = @"iOS|1";
  v2[134] = &unk_28374C480;
  v3[134] = @"iOS|1,macOS|1,visionOS|1";
  v2[135] = &unk_28374C498;
  v3[135] = @"iOS|1,macOS|1,visionOS|1";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:136];
  v1 = clientThrottleRatio__graylisted;
  clientThrottleRatio__graylisted = v0;
}

- (BOOL)isClient:(unint64_t)client entitled:(int)entitled forMethod:(const char *)method
{
  v6 = *&entitled;
  v32 = *MEMORY[0x277D85DE8];
  if (entitled <= 3)
  {
    if (entitled > 1)
    {
      if (entitled == 2)
      {
        if (([(BiometricKitXPCExportedObject *)self clientEntitlement]& 4) != 0)
        {
          return 1;
        }
      }

      else if (([(BiometricKitXPCExportedObject *)self clientEntitlement]& 8) != 0)
      {
        return 1;
      }

      goto LABEL_26;
    }

    if (!entitled)
    {
      return 1;
    }

    if (entitled == 1)
    {
      if ([(BiometricKitXPCExportedObject *)self clientEntitlement])
      {
        return 1;
      }

      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (entitled <= 5)
  {
    if (entitled == 4)
    {
      if (([(BiometricKitXPCExportedObject *)self clientEntitlement]& 0x10) != 0)
      {
        return 1;
      }
    }

    else if (([(BiometricKitXPCExportedObject *)self clientEntitlement]& 0x20) != 0)
    {
      return 1;
    }

    goto LABEL_26;
  }

  if (entitled == 6)
  {
    if (([(BiometricKitXPCExportedObject *)self clientEntitlement]& 0x40) != 0)
    {
      return 1;
    }

    goto LABEL_26;
  }

  if (entitled != 7)
  {
LABEL_16:
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v25) = v6;
      _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_ERROR, "Unexpected value %d of permission group\n", buf, 8u);
    }
  }

LABEL_26:
  if (isInternalBuild())
  {
    v10 = [(BiometricKitXPCExportedObject *)self client:client];
    if ([(BiometricKitXPCExportedObject *)self clientEntitlement]!= 1)
    {
      name = [v10 name];
      processName = [v10 processName];
      uuid = [v10 uuid];
      currentPlatform = [(BiometricKitXPCExportedObject *)self currentPlatform];
      if (!processName)
      {
        processName = @"<uknown_process_name>";
      }

      if (__osLog)
      {
        v15 = __osLog;
      }

      else
      {
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        log = v15;
        connection = [(BiometricKitXPCExportedObject *)self connection];
        processIdentifier = [connection processIdentifier];
        [(BiometricKitXPCExportedObject *)self entitlementsNeededForPermissionGroup:v6];
        v18 = v23 = uuid;
        *buf = 138413058;
        v25 = name;
        v26 = 1024;
        v27 = processIdentifier;
        v28 = 2080;
        methodCopy = method;
        v30 = 2112;
        v31 = v18;
        _os_log_impl(&dword_223E00000, log, OS_LOG_TYPE_ERROR, "Client %@ with PID %d calls %s which needs entitlement '%@'.\n", buf, 0x26u);

        uuid = v23;
      }

      server = [(BiometricKitXPCExportedObject *)self server];
      reporter = [server reporter];
      [reporter reportMissingPermission:v6 forClientName:name processName:processName clientUUID:uuid platform:currentPlatform];
    }
  }

  return 1;
}

- (BiometricKitXPCExportedObject)init
{
  v6.receiver = self;
  v6.super_class = BiometricKitXPCExportedObject;
  v2 = [(BiometricKitXPCExportedObject *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    clients = v2->_clients;
    v2->_clients = dictionary;
  }

  return v2;
}

- (void)dealloc
{
  connection = self->_connection;
  self->_server = 0;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = BiometricKitXPCExportedObject;
  [(BiometricKitXPCExportedObject *)&v4 dealloc];
}

- (id)client:(unint64_t)client
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  clients = selfCopy->_clients;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:client];
  v7 = [(NSMutableDictionary *)clients objectForKey:v6];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)terminate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject terminate]"];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_clients allValues];
  v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [(BiometricKitXPCServer *)selfCopy->_server cancelWithClient:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)selfCopy->_clients removeAllObjects];
  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(v3);
}

- (void)connect:(id)connect client:(unint64_t)client replyBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject connect:client:replyBlock:]"];
  if (![(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject connect:client:replyBlock:]"])
  {
    [BiometricKitXPCExportedObject connect:client:replyBlock:];
    v30 = *buf;
    goto LABEL_23;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  clients = selfCopy->_clients;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:client];
  v15 = [(NSMutableDictionary *)clients objectForKey:v14];

  if (v15)
  {
    clientInfo = [(BiometricKitXPCExportedClientObject *)v15 clientInfo];
    v17 = [clientInfo isEqualToDictionary:connectCopy];

    if ((v17 & 1) == 0)
    {
      [BiometricKitXPCExportedObject connect:v15 client:buf replyBlock:&v33];
LABEL_26:
      v15 = *buf;
      v30 = v33;
      goto LABEL_22;
    }
  }

  else
  {
    v15 = [[BiometricKitXPCExportedClientObject alloc] initWithClientID:client clientInfo:connectCopy exportedObject:selfCopy];
    if (!v15)
    {
      [BiometricKitXPCExportedObject connect:client:replyBlock:];
      goto LABEL_26;
    }

    v18 = selfCopy->_clients;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:client];
    [(NSMutableDictionary *)v18 setObject:v15 forKey:v19];
  }

  if (([(BiometricKitXPCExportedObject *)selfCopy clientEntitlement]& 1) != 0 && isInternalBuild())
  {
    name = [(BiometricKitXPCExportedClientObject *)v15 name];
    processName = [(BiometricKitXPCExportedClientObject *)v15 processName];
    uuid = [(BiometricKitXPCExportedClientObject *)v15 uuid];
    currentPlatform = [(BiometricKitXPCExportedObject *)selfCopy currentPlatform];
    v23 = @"<unknown_process_name>";
    if (processName)
    {
      v23 = processName;
    }

    v31 = v23;
    v24 = __osLog;
    if (!__osLog)
    {
      v24 = MEMORY[0x277D86220];
    }

    v25 = v24;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      connection = [(BiometricKitXPCExportedObject *)selfCopy connection];
      *buf = 138412802;
      *&buf[4] = name;
      v35 = 2112;
      v36 = uuid;
      v37 = 1024;
      processIdentifier = [connection processIdentifier];
      _os_log_impl(&dword_223E00000, v25, OS_LOG_TYPE_ERROR, "Client %@[uuid=%@] with PID %d does have legacy entitlement com.apple.private.bmk.allow, please set one of fine grained entitlements com.apple.private.biometrickit.allow-*\n", buf, 0x1Cu);
    }

    v27 = [(BiometricKitXPCExportedObject *)selfCopy clientThrottleRatio:name];
    if (v27)
    {
      if (arc4random_uniform(v27))
      {
LABEL_21:

        v30 = 266;
        goto LABEL_22;
      }

      server = [(BiometricKitXPCExportedObject *)selfCopy server];
      reporter = [server reporter];
      [reporter reportGraylistedClient:name withProcessName:v31 clientUUID:uuid platform:currentPlatform];
    }

    else
    {
      server = [(BiometricKitXPCExportedObject *)selfCopy server];
      reporter = [server reporter];
      [reporter reportLegacyClient:name withProcessName:v31 clientUUID:uuid platform:currentPlatform];
    }

    goto LABEL_21;
  }

  v30 = 0;
LABEL_22:

  objc_sync_exit(selfCopy);
LABEL_23:

  objc_autoreleasePoolPop(v10);
  blockCopy[2](blockCopy, v30);
}

- (void)disconnect:(unint64_t)disconnect replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject disconnect:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:disconnect entitled:1 forMethod:"[BiometricKitXPCExportedObject disconnect:replyBlock:]"])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = [(BiometricKitXPCExportedObject *)selfCopy client:disconnect];
    v11 = v18[5];
    v18[5] = v10;

    if (v18[5])
    {
      clients = selfCopy->_clients;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:disconnect];
      [(NSMutableDictionary *)clients removeObjectForKey:v13];

      objc_sync_exit(selfCopy);
      cmdDispatchQueue = [(BiometricKitXPCServer *)selfCopy->_server cmdDispatchQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__BiometricKitXPCExportedObject_disconnect_replyBlock___block_invoke;
      block[3] = &unk_2784FA220;
      block[4] = selfCopy;
      block[5] = &v17;
      dispatch_async(cmdDispatchQueue, block);

      v15 = 0;
    }

    else
    {
      [BiometricKitXPCExportedObject disconnect:selfCopy replyBlock:?];
      v15 = 22;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject disconnect:replyBlock:];
    v15 = v23;
  }

  _Block_object_dispose(&v17, 8);
  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v15);
}

void __55__BiometricKitXPCExportedObject_disconnect_replyBlock___block_invoke(uint64_t a1)
{
  v5 = os_transaction_create();
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 24) cancelWithClient:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
}

- (void)registerDelegate:(BOOL)delegate client:(unint64_t)client replyBlock:(id)block
{
  delegateCopy = delegate;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject registerDelegate:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject registerDelegate:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      v12 = v11;
      [v11 setDelegateRegistered:delegateCopy];
      v13 = os_transaction_create();
      v14 = objc_autoreleasePoolPush();
      [(BiometricKitXPCServer *)self->_server registerDelegate:delegateCopy withClient:v12];

      objc_autoreleasePoolPop(v14);
      v15 = 0;
    }

    else
    {
      [BiometricKitXPCExportedObject registerDelegate:client:replyBlock:];
      v15 = v17;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject registerDelegate:client:replyBlock:];
    v15 = v16;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v15);
}

- (void)notifyAppIsBackground:(BOOL)background client:(unint64_t)client
{
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject notifyAppIsBackground:client:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject notifyAppIsBackground:client:]"])
  {
    [(BiometricKitXPCExportedObject *)self notifyAppIsBackground:client client:background];
  }

  else
  {
    [BiometricKitXPCExportedObject notifyAppIsBackground:client:];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)notifyAppIsInactive:(BOOL)inactive client:(unint64_t)client
{
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject notifyAppIsInactive:client:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject notifyAppIsInactive:client:]"])
  {
    [(BiometricKitXPCExportedObject *)&self->super.isa notifyAppIsInactive:client client:inactive];
  }

  else
  {
    [BiometricKitXPCExportedObject notifyAppIsInactive:client:];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)enroll:(int)enroll user:(unsigned int)user options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block
{
  asyncCopy = async;
  optionsCopy = options;
  blockCopy = block;
  v16 = objc_autoreleasePoolPush();
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v17 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject enroll:user:options:async:client:replyBlock:]"];
  if (![(BiometricKitXPCExportedObject *)self isClient:client entitled:2 forMethod:"[BiometricKitXPCExportedObject enroll:user:options:async:client:replyBlock:]"])
  {
    [BiometricKitXPCExportedObject enroll:user:options:async:client:replyBlock:];
LABEL_10:
    blockCopy[2](blockCopy, v35);
    goto LABEL_7;
  }

  v18 = [(BiometricKitXPCExportedObject *)self client:client];
  v19 = v30[5];
  v30[5] = v18;

  if (!v30[5])
  {
    [BiometricKitXPCExportedObject enroll:user:options:async:client:replyBlock:];
    goto LABEL_10;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BiometricKitXPCExportedObject_enroll_user_options_async_client_replyBlock___block_invoke;
  block[3] = &unk_2784FA248;
  block[4] = self;
  enrollCopy = enroll;
  userCopy = user;
  v23 = optionsCopy;
  v26 = &v29;
  v24 = v17;
  v25 = blockCopy;
  v20 = dispatch_block_create(0, block);
  [(BiometricKitXPCServer *)self->_server cmdDispatchQueue];
  if (asyncCopy)
    v21 = {;
    dispatch_async(v21, v20);
  }

  else
    v21 = {;
    dispatch_sync(v21, v20);
  }

LABEL_7:
  _Block_object_dispose(&v29, 8);

  objc_autoreleasePoolPop(v16);
}

uint64_t __77__BiometricKitXPCExportedObject_enroll_user_options_async_client_replyBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __77__BiometricKitXPCExportedObject_enroll_user_options_async_client_replyBlock___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 24) enroll:*(a1 + 72) forUser:*(a1 + 76) withOptions:*(a1 + 40) withClient:*(*(*(a1 + 64) + 8) + 40)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  [*(a1 + 48) cancel];
  return (*(*(a1 + 56) + 16))();
}

- (void)match:(id)match options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block
{
  asyncCopy = async;
  matchCopy = match;
  optionsCopy = options;
  blockCopy = block;
  v15 = objc_autoreleasePoolPush();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v16 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject match:options:async:client:replyBlock:]"];
  if (![(BiometricKitXPCExportedObject *)self isClient:client entitled:4 forMethod:"[BiometricKitXPCExportedObject match:options:async:client:replyBlock:]"])
  {
    [BiometricKitXPCExportedObject match:options:async:client:replyBlock:];
LABEL_10:
    blockCopy[2](blockCopy, v33);
    goto LABEL_7;
  }

  v17 = [(BiometricKitXPCExportedObject *)self client:client];
  v18 = v28[5];
  v28[5] = v17;

  if (!v28[5])
  {
    [BiometricKitXPCExportedObject match:options:async:client:replyBlock:];
    goto LABEL_10;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BiometricKitXPCExportedObject_match_options_async_client_replyBlock___block_invoke;
  block[3] = &unk_2784FA270;
  block[4] = self;
  v22 = matchCopy;
  v23 = optionsCopy;
  v26 = &v27;
  v24 = v16;
  v25 = blockCopy;
  v19 = dispatch_block_create(0, block);
  [(BiometricKitXPCServer *)self->_server cmdDispatchQueue];
  if (asyncCopy)
    v20 = {;
    dispatch_async(v20, v19);
  }

  else
    v20 = {;
    dispatch_sync(v20, v19);
  }

LABEL_7:
  _Block_object_dispose(&v27, 8);

  objc_autoreleasePoolPop(v15);
}

uint64_t __71__BiometricKitXPCExportedObject_match_options_async_client_replyBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __71__BiometricKitXPCExportedObject_match_options_async_client_replyBlock___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 24) match:*(a1 + 40) withOptions:*(a1 + 48) withClient:*(*(*(a1 + 72) + 8) + 40)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  [*(a1 + 56) cancel];
  return (*(*(a1 + 64) + 16))();
}

- (void)detectPresenceWithOptions:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block
{
  asyncCopy = async;
  optionsCopy = options;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v13 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject detectPresenceWithOptions:async:client:replyBlock:]"];
  if (![(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject detectPresenceWithOptions:async:client:replyBlock:]"])
  {
    [BiometricKitXPCExportedObject detectPresenceWithOptions:async:client:replyBlock:];
LABEL_10:
    blockCopy[2](blockCopy, v33);
    goto LABEL_7;
  }

  v14 = [(BiometricKitXPCExportedObject *)self client:client];
  v15 = v28[5];
  v28[5] = v14;

  if (!v28[5])
  {
    [BiometricKitXPCExportedObject detectPresenceWithOptions:async:client:replyBlock:];
    goto LABEL_10;
  }

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __83__BiometricKitXPCExportedObject_detectPresenceWithOptions_async_client_replyBlock___block_invoke;
  v21 = &unk_2784FA298;
  selfCopy = self;
  v23 = optionsCopy;
  v26 = &v27;
  v24 = v13;
  v25 = blockCopy;
  v16 = dispatch_block_create(0, &v18);
  [(BiometricKitXPCServer *)self->_server cmdDispatchQueue:v18];
  if (asyncCopy)
    v17 = {;
    dispatch_async(v17, v16);
  }

  else
    v17 = {;
    dispatch_sync(v17, v16);
  }

LABEL_7:
  _Block_object_dispose(&v27, 8);

  objc_autoreleasePoolPop(v12);
}

uint64_t __83__BiometricKitXPCExportedObject_detectPresenceWithOptions_async_client_replyBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __83__BiometricKitXPCExportedObject_detectPresenceWithOptions_async_client_replyBlock___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 24) detectPresenceWithOptions:*(a1 + 40) withClient:*(*(*(a1 + 64) + 8) + 40)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  [*(a1 + 48) cancel];
  return (*(*(a1 + 56) + 16))();
}

- (void)cancel:(unint64_t)cancel replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject cancel:replyBlock:]"];
  if (![(BiometricKitXPCExportedObject *)self isClient:cancel entitled:1 forMethod:"[BiometricKitXPCExportedObject cancel:replyBlock:]"])
  {
    [BiometricKitXPCExportedObject cancel:replyBlock:];
LABEL_7:
    blockCopy[2](blockCopy, v22);
    goto LABEL_4;
  }

  v9 = [(BiometricKitXPCExportedObject *)self client:cancel];
  v10 = v17[5];
  v17[5] = v9;

  if (!v17[5])
  {
    [BiometricKitXPCExportedObject cancel:replyBlock:];
    goto LABEL_7;
  }

  cmdDispatchQueue = [(BiometricKitXPCServer *)self->_server cmdDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__BiometricKitXPCExportedObject_cancel_replyBlock___block_invoke;
  block[3] = &unk_2784FA2C0;
  block[4] = self;
  v15 = &v16;
  v13 = v8;
  v14 = blockCopy;
  dispatch_async(cmdDispatchQueue, block);

LABEL_4:
  _Block_object_dispose(&v16, 8);

  objc_autoreleasePoolPop(v7);
}

uint64_t __51__BiometricKitXPCExportedObject_cancel_replyBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __51__BiometricKitXPCExportedObject_cancel_replyBlock___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 24) cancelWithClient:*(*(*(a1 + 56) + 8) + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) cancel];
  return (*(*(a1 + 48) + 16))();
}

- (void)updateIdentity:(id)identity options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block
{
  asyncCopy = async;
  identityCopy = identity;
  optionsCopy = options;
  blockCopy = block;
  v15 = objc_autoreleasePoolPush();
  v16 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject updateIdentity:options:async:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:3 forMethod:"[BiometricKitXPCExportedObject updateIdentity:options:async:client:replyBlock:]"])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v30[5])
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __80__BiometricKitXPCExportedObject_updateIdentity_options_async_client_replyBlock___block_invoke;
      v22 = &unk_2784FA270;
      selfCopy = self;
      v24 = identityCopy;
      v25 = optionsCopy;
      v28 = &v29;
      v26 = v16;
      v27 = blockCopy;
      v17 = dispatch_block_create(0, &v19);
      [(BiometricKitXPCServer *)self->_server cmdDispatchQueue:v19];
      if (asyncCopy)
        v18 = {;
        dispatch_async(v18, v17);
      }

      else
        v18 = {;
        dispatch_sync(v18, v17);
      }
    }

    else
    {
      [BiometricKitXPCExportedObject updateIdentity:options:async:client:replyBlock:];
      (*(blockCopy + 2))(blockCopy, 22);
    }

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    [BiometricKitXPCExportedObject updateIdentity:options:async:client:replyBlock:];
  }

  objc_autoreleasePoolPop(v15);
}

uint64_t __80__BiometricKitXPCExportedObject_updateIdentity_options_async_client_replyBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __80__BiometricKitXPCExportedObject_updateIdentity_options_async_client_replyBlock___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 24) updateIdentity:*(a1 + 40) withOptions:*(a1 + 48) withClient:*(*(*(a1 + 72) + 8) + 40)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  [*(a1 + 56) cancel];
  return (*(*(a1 + 64) + 16))();
}

- (void)removeIdentity:(id)identity options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block
{
  asyncCopy = async;
  identityCopy = identity;
  optionsCopy = options;
  blockCopy = block;
  v15 = objc_autoreleasePoolPush();
  v16 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject removeIdentity:options:async:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:3 forMethod:"[BiometricKitXPCExportedObject removeIdentity:options:async:client:replyBlock:]"])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v30[5])
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __80__BiometricKitXPCExportedObject_removeIdentity_options_async_client_replyBlock___block_invoke;
      v22 = &unk_2784FA270;
      selfCopy = self;
      v24 = identityCopy;
      v25 = optionsCopy;
      v28 = &v29;
      v26 = v16;
      v27 = blockCopy;
      v17 = dispatch_block_create(0, &v19);
      [(BiometricKitXPCServer *)self->_server cmdDispatchQueue:v19];
      if (asyncCopy)
        v18 = {;
        dispatch_async(v18, v17);
      }

      else
        v18 = {;
        dispatch_sync(v18, v17);
      }
    }

    else
    {
      [BiometricKitXPCExportedObject removeIdentity:options:async:client:replyBlock:];
      (*(blockCopy + 2))(blockCopy, 22);
    }

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    [BiometricKitXPCExportedObject removeIdentity:options:async:client:replyBlock:];
  }

  objc_autoreleasePoolPop(v15);
}

uint64_t __80__BiometricKitXPCExportedObject_removeIdentity_options_async_client_replyBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __80__BiometricKitXPCExportedObject_removeIdentity_options_async_client_replyBlock___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 24) removeIdentity:*(a1 + 40) withOptions:*(a1 + 48) withClient:*(*(*(a1 + 72) + 8) + 40)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  [*(a1 + 56) cancel];
  return (*(*(a1 + 64) + 16))();
}

- (void)removeAllIdentitiesForUser:(unsigned int)user options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block
{
  asyncCopy = async;
  optionsCopy = options;
  blockCopy = block;
  v14 = objc_autoreleasePoolPush();
  v15 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject removeAllIdentitiesForUser:options:async:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:3 forMethod:"[BiometricKitXPCExportedObject removeAllIdentitiesForUser:options:async:client:replyBlock:]"])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v29[5])
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __92__BiometricKitXPCExportedObject_removeAllIdentitiesForUser_options_async_client_replyBlock___block_invoke;
      v21 = &unk_2784FA2E8;
      selfCopy = self;
      userCopy = user;
      v23 = optionsCopy;
      v26 = &v28;
      v24 = v15;
      v25 = blockCopy;
      v16 = dispatch_block_create(0, &v18);
      [(BiometricKitXPCServer *)self->_server cmdDispatchQueue:v18];
      if (asyncCopy)
        v17 = {;
        dispatch_async(v17, v16);
      }

      else
        v17 = {;
        dispatch_sync(v17, v16);
      }
    }

    else
    {
      [BiometricKitXPCExportedObject removeAllIdentitiesForUser:options:async:client:replyBlock:];
      (*(blockCopy + 2))(blockCopy, 22);
    }

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    [BiometricKitXPCExportedObject removeAllIdentitiesForUser:options:async:client:replyBlock:];
  }

  objc_autoreleasePoolPop(v14);
}

uint64_t __92__BiometricKitXPCExportedObject_removeAllIdentitiesForUser_options_async_client_replyBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __92__BiometricKitXPCExportedObject_removeAllIdentitiesForUser_options_async_client_replyBlock___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 24) removeAllIdentitiesForUser:*(a1 + 72) withOptions:*(a1 + 40) withClient:*(*(*(a1 + 64) + 8) + 40)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  [*(a1 + 48) cancel];
  return (*(*(a1 + 56) + 16))();
}

- (void)getIdentityFromUUID:(id)d client:(unint64_t)client replyBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getIdentityFromUUID:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getIdentityFromUUID:client:replyBlock:]"])
  {
    v12 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v12)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getIdentityFromUUID:client:replyBlock:];
      }

      v13 = [(BiometricKitXPCServer *)self->_server getIdentityFromUUID:dCopy withClient:v12];
    }

    else
    {
      [BiometricKitXPCExportedObject getIdentityFromUUID:client:replyBlock:];
      v13 = v14;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getIdentityFromUUID:client:replyBlock:];
    v13 = v14;
  }

  objc_autoreleasePoolPop(v10);
  blockCopy[2](blockCopy, v13);
}

- (void)identities:(id)identities client:(unint64_t)client replyBlock:(id)block
{
  identitiesCopy = identities;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject identities:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject identities:client:replyBlock:]"])
  {
    v12 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v12)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject identities:client:replyBlock:];
      }

      v13 = [(BiometricKitXPCServer *)self->_server identities:identitiesCopy withClient:v12];
    }

    else
    {
      [BiometricKitXPCExportedObject identities:client:replyBlock:];
      v13 = v14;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject identities:client:replyBlock:];
    v13 = v14;
  }

  objc_autoreleasePoolPop(v10);
  blockCopy[2](blockCopy, v13);
}

- (void)getMaxIdentityCount:(int)count client:(unint64_t)client replyBlock:(id)block
{
  v6 = *&count;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getMaxIdentityCount:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getMaxIdentityCount:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getMaxIdentityCount:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server getMaxIdentityCount:v6 withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject getMaxIdentityCount:client:replyBlock:];
      v12 = v13;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getMaxIdentityCount:client:replyBlock:];
    v12 = v13;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12);
}

- (void)getFreeIdentityCount:(int)count user:(unsigned int)user client:(unint64_t)client replyBlock:(id)block
{
  v7 = *&user;
  v8 = *&count;
  blockCopy = block;
  v11 = objc_autoreleasePoolPush();
  v12 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getFreeIdentityCount:user:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getFreeIdentityCount:user:client:replyBlock:]"])
  {
    v13 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v13)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getFreeIdentityCount:user:client:replyBlock:];
      }

      v14 = [(BiometricKitXPCServer *)self->_server getFreeIdentityCount:v8 forUser:v7 withClient:v13];
    }

    else
    {
      [BiometricKitXPCExportedObject getFreeIdentityCount:user:client:replyBlock:];
      v14 = v15;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getFreeIdentityCount:user:client:replyBlock:];
    v14 = v15;
  }

  objc_autoreleasePoolPop(v11);
  blockCopy[2](blockCopy, v14);
}

- (void)registerDSID:(unint64_t)d options:(id)options client:(unint64_t)client replyBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  v13 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject registerDSID:options:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:7 forMethod:"[BiometricKitXPCExportedObject registerDSID:options:client:replyBlock:]"])
  {
    v14 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v14)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject registerDSID:options:client:replyBlock:];
      }

      v15 = [(BiometricKitXPCServer *)self->_server registerDSID:d withOptions:optionsCopy withClient:v14];
    }

    else
    {
      [BiometricKitXPCExportedObject registerDSID:options:client:replyBlock:];
      v15 = v17;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject registerDSID:options:client:replyBlock:];
    v15 = v16;
  }

  objc_autoreleasePoolPop(v12);
  blockCopy[2](blockCopy, v15);
}

- (void)registerStoreToken:(id)token client:(unint64_t)client replyBlock:(id)block
{
  tokenCopy = token;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject registerStoreToken:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:7 forMethod:"[BiometricKitXPCExportedObject registerStoreToken:client:replyBlock:]"])
  {
    v12 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v12)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject registerStoreToken:client:replyBlock:];
      }

      v13 = [(BiometricKitXPCServer *)self->_server registerStoreToken:tokenCopy withClient:v12];
    }

    else
    {
      [BiometricKitXPCExportedObject registerStoreToken:client:replyBlock:];
      v13 = v15;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject registerStoreToken:client:replyBlock:];
    v13 = v14;
  }

  objc_autoreleasePoolPop(v10);
  blockCopy[2](blockCopy, v13);
}

- (void)getCountersignedStoreToken:(unint64_t)token replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getCountersignedStoreToken:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:token entitled:7 forMethod:"[BiometricKitXPCExportedObject getCountersignedStoreToken:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:token];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getCountersignedStoreToken:replyBlock:];
      }

      server = self->_server;
      v13 = 0;
      v11 = [(BiometricKitXPCServer *)server getCountersignedStoreToken:&v13 withClient:v9];
      v12 = v13;
    }

    else
    {
      [BiometricKitXPCExportedObject getCountersignedStoreToken:replyBlock:];
      v12 = v14;
      v11 = v15;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getCountersignedStoreToken:replyBlock:];
    v12 = v14;
    v11 = v15;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v11, v12);
}

- (void)diagnostics:(int)diagnostics options:(id)options client:(unint64_t)client replyBlock:(id)block
{
  v8 = *&diagnostics;
  optionsCopy = options;
  blockCopy = block;
  v19 = 0;
  v12 = objc_autoreleasePoolPush();
  v13 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject diagnostics:options:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject diagnostics:options:client:replyBlock:]"])
  {
    v14 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v14)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject diagnostics:options:client:replyBlock:];
      }

      server = self->_server;
      v18 = 0;
      v16 = [(BiometricKitXPCServer *)server diagnostics:v8 withOptions:optionsCopy passed:&v19 withDetails:&v18 withClient:v14];
      v17 = v18;
    }

    else
    {
      [BiometricKitXPCExportedObject diagnostics:options:client:replyBlock:];
      v17 = v20;
      v16 = v21;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject diagnostics:options:client:replyBlock:];
    v17 = v20;
    v16 = v21;
  }

  objc_autoreleasePoolPop(v12);
  blockCopy[2](blockCopy, v16, v19, v17);
}

- (void)timestampEvent:(unint64_t)event absoluteTime:(unint64_t)time client:(unint64_t)client replyBlock:(id)block
{
  blockCopy = block;
  v11 = objc_autoreleasePoolPush();
  v12 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject timestampEvent:absoluteTime:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject timestampEvent:absoluteTime:client:replyBlock:]"])
  {
    v13 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v13)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject timestampEvent:absoluteTime:client:replyBlock:];
      }

      [(BiometricKitXPCServer *)self->_server timestampEvent:event absoluteTime:time];
      v14 = 0;
    }

    else
    {
      [BiometricKitXPCExportedObject timestampEvent:absoluteTime:client:replyBlock:];
      v14 = v16;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject timestampEvent:absoluteTime:client:replyBlock:];
    v14 = v15;
  }

  objc_autoreleasePoolPop(v11);
  blockCopy[2](blockCopy, v14);
}

- (void)setUserDSID:(unint64_t)d options:(id)options client:(unint64_t)client replyBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  v13 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject setUserDSID:options:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:7 forMethod:"[BiometricKitXPCExportedObject setUserDSID:options:client:replyBlock:]"])
  {
    v14 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v14)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject setUserDSID:options:client:replyBlock:];
      }

      v15 = [(BiometricKitXPCServer *)self->_server setUserDSID:d withOptions:optionsCopy withClient:v14];
    }

    else
    {
      [BiometricKitXPCExportedObject setUserDSID:options:client:replyBlock:];
      v15 = v17;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject setUserDSID:options:client:replyBlock:];
    v15 = v16;
  }

  objc_autoreleasePoolPop(v12);
  blockCopy[2](blockCopy, v15);
}

- (void)resetAppleConnectCounter:(unint64_t)counter replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject resetAppleConnectCounter:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:counter entitled:7 forMethod:"[BiometricKitXPCExportedObject resetAppleConnectCounter:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:counter];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject resetAppleConnectCounter:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server resetAppleConnectCounterWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject resetAppleConnectCounter:replyBlock:];
      v10 = v12;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject resetAppleConnectCounter:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)getIdentitiesDatabaseUUIDForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block
{
  v6 = *&user;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getIdentitiesDatabaseUUIDForUser:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getIdentitiesDatabaseUUIDForUser:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getIdentitiesDatabaseUUIDForUser:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server getIdentitiesDatabaseUUIDForUser:v6 withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject getIdentitiesDatabaseUUIDForUser:client:replyBlock:];
      v12 = v13;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getIdentitiesDatabaseUUIDForUser:client:replyBlock:];
    v12 = v13;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12);
}

- (void)getIdentitiesDatabaseHashForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block
{
  v6 = *&user;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getIdentitiesDatabaseHashForUser:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getIdentitiesDatabaseHashForUser:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getIdentitiesDatabaseHashForUser:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server getIdentitiesDatabaseHashForUser:v6 withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject getIdentitiesDatabaseHashForUser:client:replyBlock:];
      v12 = v13;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getIdentitiesDatabaseHashForUser:client:replyBlock:];
    v12 = v13;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12);
}

- (void)dropUnlockToken:(unint64_t)token replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject dropUnlockToken:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:token entitled:1 forMethod:"[BiometricKitXPCExportedObject dropUnlockToken:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:token];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject dropUnlockToken:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server dropUnlockTokenWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject dropUnlockToken:replyBlock:];
      v10 = v12;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject dropUnlockToken:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)forceBioLockoutForUser:(unsigned int)user options:(id)options client:(unint64_t)client replyBlock:(id)block
{
  v8 = *&user;
  optionsCopy = options;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  v13 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject forceBioLockoutForUser:options:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject forceBioLockoutForUser:options:client:replyBlock:]"])
  {
    v14 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v14)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject forceBioLockoutForUser:options:client:replyBlock:];
      }

      v15 = [(BiometricKitXPCServer *)self->_server forceBioLockoutForUser:v8 withOptions:optionsCopy withClient:v14];
    }

    else
    {
      [BiometricKitXPCExportedObject forceBioLockoutForUser:options:client:replyBlock:];
      v15 = v17;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject forceBioLockoutForUser:options:client:replyBlock:];
    v15 = v16;
  }

  objc_autoreleasePoolPop(v12);
  blockCopy[2](blockCopy, v15);
}

- (void)enrollContinue:(unint64_t)continue replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject enrollContinue:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:continue entitled:2 forMethod:"[BiometricKitXPCExportedObject enrollContinue:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:continue];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject enrollContinue:replyBlock:];
      }

      enrollContinue = [(BiometricKitXPCServer *)self->_server enrollContinue];
    }

    else
    {
      [BiometricKitXPCExportedObject enrollContinue:replyBlock:];
      enrollContinue = v12;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject enrollContinue:replyBlock:];
    enrollContinue = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, enrollContinue);
}

- (void)pullAlignmentData:(unint64_t)data replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject pullAlignmentData:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:data entitled:2 forMethod:"[BiometricKitXPCExportedObject pullAlignmentData:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:data];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject pullAlignmentData:replyBlock:];
      }

      pullAlignmentData = [(BiometricKitXPCServer *)self->_server pullAlignmentData];
    }

    else
    {
      [BiometricKitXPCExportedObject pullAlignmentData:replyBlock:];
      pullAlignmentData = v11;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject pullAlignmentData:replyBlock:];
    pullAlignmentData = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, pullAlignmentData);
}

- (void)pullMatchPolicyInfoData:(unint64_t)data replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject pullMatchPolicyInfoData:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:data entitled:7 forMethod:"[BiometricKitXPCExportedObject pullMatchPolicyInfoData:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:data];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject pullMatchPolicyInfoData:replyBlock:];
      }

      pullMatchPolicyInfoData = [(BiometricKitXPCServer *)self->_server pullMatchPolicyInfoData];
    }

    else
    {
      [BiometricKitXPCExportedObject pullMatchPolicyInfoData:replyBlock:];
      pullMatchPolicyInfoData = v11;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject pullMatchPolicyInfoData:replyBlock:];
    pullMatchPolicyInfoData = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, pullMatchPolicyInfoData);
}

- (void)getNodeTopologyForIdentity:(id)identity client:(unint64_t)client replyBlock:(id)block
{
  identityCopy = identity;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getNodeTopologyForIdentity:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:6 forMethod:"[BiometricKitXPCExportedObject getNodeTopologyForIdentity:client:replyBlock:]"])
  {
    v12 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v12)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getNodeTopologyForIdentity:client:replyBlock:];
      }

      v13 = [(BiometricKitXPCServer *)self->_server getNodeTopologyForIdentity:identityCopy withClient:v12];
    }

    else
    {
      [BiometricKitXPCExportedObject getNodeTopologyForIdentity:client:replyBlock:];
      v13 = v14;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getNodeTopologyForIdentity:client:replyBlock:];
    v13 = v14;
  }

  objc_autoreleasePoolPop(v10);
  blockCopy[2](blockCopy, v13);
}

- (void)getProtectedConfigurationForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block
{
  v6 = *&user;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getProtectedConfigurationForUser:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getProtectedConfigurationForUser:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getProtectedConfigurationForUser:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server getProtectedConfigurationForUser:v6 withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject getProtectedConfigurationForUser:client:replyBlock:];
      v12 = v13;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getProtectedConfigurationForUser:client:replyBlock:];
    v12 = v13;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12);
}

- (void)getSystemProtectedConfiguration:(unint64_t)configuration replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getSystemProtectedConfiguration:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:configuration entitled:1 forMethod:"[BiometricKitXPCExportedObject getSystemProtectedConfiguration:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:configuration];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getSystemProtectedConfiguration:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server getSystemProtectedConfigurationWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject getSystemProtectedConfiguration:replyBlock:];
      v10 = v11;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getSystemProtectedConfiguration:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)setProtectedConfiguration:(id)configuration user:(unsigned int)user options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block
{
  asyncCopy = async;
  configurationCopy = configuration;
  optionsCopy = options;
  blockCopy = block;
  v17 = objc_autoreleasePoolPush();
  v18 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject setProtectedConfiguration:user:options:async:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:5 forMethod:"[BiometricKitXPCExportedObject setProtectedConfiguration:user:options:async:client:replyBlock:]"])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v29[5])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__BiometricKitXPCExportedObject_setProtectedConfiguration_user_options_async_client_replyBlock___block_invoke;
      block[3] = &unk_2784FA310;
      block[4] = self;
      v22 = configurationCopy;
      userCopy = user;
      v23 = optionsCopy;
      v26 = &v28;
      v24 = v18;
      v25 = blockCopy;
      v19 = dispatch_block_create(0, block);
      [(BiometricKitXPCServer *)self->_server cmdDispatchQueue];
      if (asyncCopy)
        v20 = {;
        dispatch_async(v20, v19);
      }

      else
        v20 = {;
        dispatch_sync(v20, v19);
      }
    }

    else
    {
      [BiometricKitXPCExportedObject setProtectedConfiguration:user:options:async:client:replyBlock:];
      (*(blockCopy + 2))(blockCopy, 22);
    }

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    [BiometricKitXPCExportedObject setProtectedConfiguration:user:options:async:client:replyBlock:];
  }

  objc_autoreleasePoolPop(v17);
}

uint64_t __96__BiometricKitXPCExportedObject_setProtectedConfiguration_user_options_async_client_replyBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __96__BiometricKitXPCExportedObject_setProtectedConfiguration_user_options_async_client_replyBlock___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 24) setProtectedConfiguration:*(a1 + 40) forUser:*(a1 + 80) withOptions:*(a1 + 48) withClient:*(*(*(a1 + 72) + 8) + 40)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  [*(a1 + 56) cancel];
  return (*(*(a1 + 64) + 16))();
}

- (void)setSystemProtectedConfiguration:(id)configuration options:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block
{
  asyncCopy = async;
  configurationCopy = configuration;
  optionsCopy = options;
  blockCopy = block;
  v15 = objc_autoreleasePoolPush();
  v16 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject setSystemProtectedConfiguration:options:async:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:5 forMethod:"[BiometricKitXPCExportedObject setSystemProtectedConfiguration:options:async:client:replyBlock:]"])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v30[5])
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __97__BiometricKitXPCExportedObject_setSystemProtectedConfiguration_options_async_client_replyBlock___block_invoke;
      v22 = &unk_2784FA270;
      selfCopy = self;
      v24 = configurationCopy;
      v25 = optionsCopy;
      v28 = &v29;
      v26 = v16;
      v27 = blockCopy;
      v17 = dispatch_block_create(0, &v19);
      [(BiometricKitXPCServer *)self->_server cmdDispatchQueue:v19];
      if (asyncCopy)
        v18 = {;
        dispatch_async(v18, v17);
      }

      else
        v18 = {;
        dispatch_sync(v18, v17);
      }
    }

    else
    {
      [BiometricKitXPCExportedObject setSystemProtectedConfiguration:options:async:client:replyBlock:];
      (*(blockCopy + 2))(blockCopy, 22);
    }

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    [BiometricKitXPCExportedObject setSystemProtectedConfiguration:options:async:client:replyBlock:];
  }

  objc_autoreleasePoolPop(v15);
}

uint64_t __97__BiometricKitXPCExportedObject_setSystemProtectedConfiguration_options_async_client_replyBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __97__BiometricKitXPCExportedObject_setSystemProtectedConfiguration_options_async_client_replyBlock___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 24) setSystemProtectedConfiguration:*(a1 + 40) withOptions:*(a1 + 48) withClient:*(*(*(a1 + 72) + 8) + 40)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  [*(a1 + 56) cancel];
  return (*(*(a1 + 64) + 16))();
}

- (void)getProvisioningState:(unint64_t)state replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getProvisioningState:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:state entitled:6 forMethod:"[BiometricKitXPCExportedObject getProvisioningState:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:state];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getProvisioningState:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server getProvisioningStateWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject getProvisioningState:replyBlock:];
      v10 = v11;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getProvisioningState:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)getBioLockoutStateForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block
{
  v6 = *&user;
  blockCopy = block;
  v15 = -1;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getBioLockoutStateForUser:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getBioLockoutStateForUser:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      v12 = [(BiometricKitXPCServer *)self->_server getBioLockoutState:&v15 forUser:v6 withClient:v11];
      v13 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__BiometricKitXPCExportedObject_getBioLockoutStateForUser_client_replyBlock___block_invoke;
      block[3] = &unk_2784FA338;
      block[4] = self;
      dispatch_async(v13, block);
    }

    else
    {
      [BiometricKitXPCExportedObject getBioLockoutStateForUser:client:replyBlock:];
      v12 = v16;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getBioLockoutStateForUser:client:replyBlock:];
    v12 = v16;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12, v15);
}

void __77__BiometricKitXPCExportedObject_getBioLockoutStateForUser_client_replyBlock___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __77__BiometricKitXPCExportedObject_getBioLockoutStateForUser_client_replyBlock___block_invoke_cold_1();
  }
}

- (void)getExpressModeStateForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block
{
  v6 = *&user;
  blockCopy = block;
  v13 = -1;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getExpressModeStateForUser:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getExpressModeStateForUser:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getExpressModeStateForUser:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server getExpressModeState:&v13 forUser:v6 withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject getExpressModeStateForUser:client:replyBlock:];
      v12 = v14;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getExpressModeStateForUser:client:replyBlock:];
    v12 = v14;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12, v13);
}

- (void)getSensorCalibrationStatus:(unint64_t)status replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getSensorCalibrationStatus:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:status entitled:6 forMethod:"[BiometricKitXPCExportedObject getSensorCalibrationStatus:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:status];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getSensorCalibrationStatus:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server getSensorCalibrationStatusWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject getSensorCalibrationStatus:replyBlock:];
      v10 = v11;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getSensorCalibrationStatus:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)getCalibrationDataInfo:(unint64_t)info replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getCalibrationDataInfo:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:info entitled:6 forMethod:"[BiometricKitXPCExportedObject getCalibrationDataInfo:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:info];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getCalibrationDataInfo:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server getCalibrationDataInfoWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject getCalibrationDataInfo:replyBlock:];
      v10 = v11;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getCalibrationDataInfo:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)getSensorInfo:(unint64_t)info replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getSensorInfo:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:info entitled:6 forMethod:"[BiometricKitXPCExportedObject getSensorInfo:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:info];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getSensorInfo:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server getSensorInfoWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject getSensorInfo:replyBlock:];
      v10 = v11;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getSensorInfo:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)setDebugImages:(BOOL)images client:(unint64_t)client replyBlock:(id)block
{
  imagesCopy = images;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject setDebugImages:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:6 forMethod:"[BiometricKitXPCExportedObject setDebugImages:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject setDebugImages:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server setDebugImages:imagesCopy withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject setDebugImages:client:replyBlock:];
      v12 = v14;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject setDebugImages:client:replyBlock:];
    v12 = v13;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12);
}

- (void)pullCalibrationData:(unint64_t)data replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject pullCalibrationData:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:data entitled:6 forMethod:"[BiometricKitXPCExportedObject pullCalibrationData:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:data];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject pullCalibrationData:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server pullCalibrationDataWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject pullCalibrationData:replyBlock:];
      v10 = v11;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject pullCalibrationData:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)pullCaptureBuffer:(unint64_t)buffer replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject pullCaptureBuffer:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:buffer entitled:7 forMethod:"[BiometricKitXPCExportedObject pullCaptureBuffer:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:buffer];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject pullCaptureBuffer:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server pullCaptureBufferWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject pullCaptureBuffer:replyBlock:];
      v10 = v11;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject pullCaptureBuffer:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)pullDebugImageData:(BOOL)data rotated:(BOOL)rotated client:(unint64_t)client replyBlock:(id)block
{
  rotatedCopy = rotated;
  dataCopy = data;
  blockCopy = block;
  v15 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject pullDebugImageData:rotated:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:6 forMethod:"[BiometricKitXPCExportedObject pullDebugImageData:rotated:client:replyBlock:]"])
  {
    v13 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v13)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject pullDebugImageData:rotated:client:replyBlock:];
      }

      v14 = [(BiometricKitXPCServer *)self->_server pullDebugImageData:dataCopy rotated:rotatedCopy hasWidth:&v15 + 4 hasHeight:&v15 withClient:v13];
    }

    else
    {
      [BiometricKitXPCExportedObject pullDebugImageData:rotated:client:replyBlock:];
      v14 = v16;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject pullDebugImageData:rotated:client:replyBlock:];
    v14 = v16;
  }

  objc_autoreleasePoolPop(v11);
  (*(blockCopy + 2))(blockCopy, v14, HIDWORD(v15), v15);
}

- (void)getLogs:(BOOL)logs client:(unint64_t)client replyBlock:(id)block
{
  logsCopy = logs;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getLogs:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:6 forMethod:"[BiometricKitXPCExportedObject getLogs:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getLogs:client:replyBlock:];
      }

      server = self->_server;
      v15 = 0;
      v13 = [(BiometricKitXPCServer *)server getLogs:logsCopy withDetails:&v15];
      v14 = v15;
    }

    else
    {
      [BiometricKitXPCExportedObject getLogs:client:replyBlock:];
      v13 = v16;
      v14 = v17;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getLogs:client:replyBlock:];
    v13 = v16;
    v14 = v17;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v13, v14);
}

- (void)fileRadarWithLogs:(id)logs description:(id)description client:(unint64_t)client replyBlock:(id)block
{
  logsCopy = logs;
  descriptionCopy = description;
  blockCopy = block;
  v13 = objc_autoreleasePoolPush();
  v14 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject fileRadarWithLogs:description:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:6 forMethod:"[BiometricKitXPCExportedObject fileRadarWithLogs:description:client:replyBlock:]"])
  {
    v15 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v15)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject fileRadarWithLogs:description:client:replyBlock:];
      }

      v16 = [(BiometricKitXPCServer *)self->_server fileRadarWithLogs:logsCopy withDescription:descriptionCopy];
    }

    else
    {
      [BiometricKitXPCExportedObject fileRadarWithLogs:description:client:replyBlock:];
      v16 = v18;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject fileRadarWithLogs:description:client:replyBlock:];
    v16 = v17;
  }

  objc_autoreleasePoolPop(v13);
  blockCopy[2](blockCopy, v16);
}

- (void)isFingerOn:(unint64_t)on replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject isFingerOn:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:on entitled:1 forMethod:"[BiometricKitXPCExportedObject isFingerOn:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:on];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject isFingerOn:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server isFingerOnWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject isFingerOn:replyBlock:];
      v10 = v12;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject isFingerOn:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)enableBackgroundFdet:(BOOL)fdet client:(unint64_t)client replyBlock:(id)block
{
  fdetCopy = fdet;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject enableBackgroundFdet:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject enableBackgroundFdet:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      v12 = [(BiometricKitXPCServer *)self->_server enableBackgroundFdet:fdetCopy withClient:v11];
      v13 = dispatch_get_global_queue(0, 0);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __72__BiometricKitXPCExportedObject_enableBackgroundFdet_client_replyBlock___block_invoke;
      v14[3] = &unk_2784FA338;
      v14[4] = self;
      dispatch_async(v13, v14);
    }

    else
    {
      [BiometricKitXPCExportedObject enableBackgroundFdet:client:replyBlock:];
      v12 = v15;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject enableBackgroundFdet:client:replyBlock:];
    v12 = v15;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12);
}

void __72__BiometricKitXPCExportedObject_enableBackgroundFdet_client_replyBlock___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __72__BiometricKitXPCExportedObject_enableBackgroundFdet_client_replyBlock___block_invoke_cold_1();
  }
}

- (void)isAriadneSignpostsEnabled:(unint64_t)enabled replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject isAriadneSignpostsEnabled:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:enabled entitled:1 forMethod:"[BiometricKitXPCExportedObject isAriadneSignpostsEnabled:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:enabled];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject isAriadneSignpostsEnabled:replyBlock:];
      }

      ariadneSignposts = [(BiometricKitXPCServer *)self->_server ariadneSignposts];
    }

    else
    {
      [BiometricKitXPCExportedObject isAriadneSignpostsEnabled:replyBlock:];
      ariadneSignposts = v12;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject isAriadneSignpostsEnabled:replyBlock:];
    ariadneSignposts = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, ariadneSignposts);
}

- (void)isXARTAvailable:(unint64_t)available replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject isXARTAvailable:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:available entitled:1 forMethod:"[BiometricKitXPCExportedObject isXARTAvailable:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:available];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject isXARTAvailable:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server isXARTAvailableWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject isXARTAvailable:replyBlock:];
      v10 = v12;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject isXARTAvailable:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)getDeviceState:(unint64_t)state replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getDeviceState:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:state entitled:1 forMethod:"[BiometricKitXPCExportedObject getDeviceState:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:state];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getDeviceState:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server getDeviceStateWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject getDeviceState:replyBlock:];
      v10 = v11;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getDeviceState:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)startNewMatchAttempt:(unint64_t)attempt replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject startNewMatchAttempt:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:attempt entitled:4 forMethod:"[BiometricKitXPCExportedObject startNewMatchAttempt:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:attempt];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject startNewMatchAttempt:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server startNewMatchAttemptWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject startNewMatchAttempt:replyBlock:];
      v10 = v12;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject startNewMatchAttempt:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)getBiometryAvailabilityForUser:(unsigned int)user client:(unint64_t)client replyBlock:(id)block
{
  v6 = *&user;
  blockCopy = block;
  v13 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getBiometryAvailabilityForUser:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getBiometryAvailabilityForUser:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getBiometryAvailabilityForUser:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server getBiometryAvailability:&v13 forUser:v6 withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject getBiometryAvailabilityForUser:client:replyBlock:];
      v12 = v14;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getBiometryAvailabilityForUser:client:replyBlock:];
    v12 = v14;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12, v13);
}

- (void)completeEnrollment:(unint64_t)enrollment replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject completeEnrollment:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:enrollment entitled:2 forMethod:"[BiometricKitXPCExportedObject completeEnrollment:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:enrollment];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject completeEnrollment:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server completeEnrollmentWithClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject completeEnrollment:replyBlock:];
      v10 = v12;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject completeEnrollment:replyBlock:];
    v10 = v11;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10);
}

- (void)suspendEnrollment:(BOOL)enrollment client:(unint64_t)client replyBlock:(id)block
{
  enrollmentCopy = enrollment;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject suspendEnrollment:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:2 forMethod:"[BiometricKitXPCExportedObject suspendEnrollment:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject suspendEnrollment:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server suspendEnrollment:enrollmentCopy withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject suspendEnrollment:client:replyBlock:];
      v12 = v14;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject suspendEnrollment:client:replyBlock:];
    v12 = v13;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12);
}

- (void)setTemplate:(id)template forIdentity:(id)identity client:(unint64_t)client replyBlock:(id)block
{
  templateCopy = template;
  identityCopy = identity;
  blockCopy = block;
  v13 = objc_autoreleasePoolPush();
  v14 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject setTemplate:forIdentity:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:6 forMethod:"[BiometricKitXPCExportedObject setTemplate:forIdentity:client:replyBlock:]"])
  {
    v15 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v15)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject setTemplate:forIdentity:client:replyBlock:];
      }

      v16 = [(BiometricKitXPCServer *)self->_server setTemplate:templateCopy forIdentity:identityCopy withClient:v15];
    }

    else
    {
      [BiometricKitXPCExportedObject setTemplate:forIdentity:client:replyBlock:];
      v16 = v18;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject setTemplate:forIdentity:client:replyBlock:];
    v16 = v17;
  }

  objc_autoreleasePoolPop(v13);
  blockCopy[2](blockCopy, v16);
}

- (void)isPeriocularEnrollmentSupported:(unint64_t)supported replyBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject isPeriocularEnrollmentSupported:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:supported entitled:1 forMethod:"[BiometricKitXPCExportedObject isPeriocularEnrollmentSupported:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:supported];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject isPeriocularEnrollmentSupported:replyBlock:];
      }

      v10 = [(BiometricKitXPCServer *)self->_server isPeriocularEnrollmentSupported:&v11 withClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject isPeriocularEnrollmentSupported:replyBlock:];
      v10 = v13;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject isPeriocularEnrollmentSupported:replyBlock:];
    v10 = v12;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10, v11);
}

- (void)getPeriocularMatchState:(unsigned int)state client:(unint64_t)client replyBlock:(id)block
{
  v6 = *&state;
  blockCopy = block;
  v13 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getPeriocularMatchState:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getPeriocularMatchState:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getPeriocularMatchState:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server getPeriocularMatchStateForUser:v6 state:&v13 withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject getPeriocularMatchState:client:replyBlock:];
      v12 = v14;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getPeriocularMatchState:client:replyBlock:];
    v12 = v14;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12, v13);
}

- (void)removePeriocularTemplatesWithOptions:(id)options async:(BOOL)async client:(unint64_t)client replyBlock:(id)block
{
  asyncCopy = async;
  optionsCopy = options;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  v13 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject removePeriocularTemplatesWithOptions:async:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:3 forMethod:"[BiometricKitXPCExportedObject removePeriocularTemplatesWithOptions:async:client:replyBlock:]"])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v22[5])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __94__BiometricKitXPCExportedObject_removePeriocularTemplatesWithOptions_async_client_replyBlock___block_invoke;
      block[3] = &unk_2784FA298;
      block[4] = self;
      v17 = optionsCopy;
      v20 = &v21;
      v18 = v13;
      v19 = blockCopy;
      v14 = dispatch_block_create(0, block);
      [(BiometricKitXPCServer *)self->_server cmdDispatchQueue];
      if (asyncCopy)
        v15 = {;
        dispatch_async(v15, v14);
      }

      else
        v15 = {;
        dispatch_sync(v15, v14);
      }
    }

    else
    {
      [BiometricKitXPCExportedObject removePeriocularTemplatesWithOptions:async:client:replyBlock:];
      (*(blockCopy + 2))(blockCopy, 22);
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    [BiometricKitXPCExportedObject removePeriocularTemplatesWithOptions:async:client:replyBlock:];
  }

  objc_autoreleasePoolPop(v12);
}

uint64_t __94__BiometricKitXPCExportedObject_removePeriocularTemplatesWithOptions_async_client_replyBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 24) loadCatacombAfterFirstUnlock])
  {
    __94__BiometricKitXPCExportedObject_removePeriocularTemplatesWithOptions_async_client_replyBlock___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 24) removePeriocularTemplatesWithOptions:*(a1 + 40) withClient:*(*(*(a1 + 64) + 8) + 40)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  [*(a1 + 48) cancel];
  return (*(*(a1 + 56) + 16))();
}

- (void)queryIdentityMigrationFailureForUser:(unsigned int)user clear:(BOOL)clear client:(unint64_t)client replyBlock:(id)block
{
  clearCopy = clear;
  v8 = *&user;
  blockCopy = block;
  v15 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject queryIdentityMigrationFailureForUser:clear:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:7 forMethod:"[BiometricKitXPCExportedObject queryIdentityMigrationFailureForUser:clear:client:replyBlock:]"])
  {
    v13 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v13)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject queryIdentityMigrationFailureForUser:clear:client:replyBlock:];
      }

      v14 = [(BiometricKitXPCServer *)self->_server queryIdentityMigrationFailureForUser:v8 failed:&v15 clear:clearCopy withClient:v13];
    }

    else
    {
      [BiometricKitXPCExportedObject queryIdentityMigrationFailureForUser:clear:client:replyBlock:];
      v14 = v17;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject queryIdentityMigrationFailureForUser:clear:client:replyBlock:];
    v14 = v16;
  }

  objc_autoreleasePoolPop(v11);
  blockCopy[2](blockCopy, v14, v15);
}

- (void)logEventOrCode:(unint64_t)code
{
  v4 = objc_autoreleasePoolPush();
  v5 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject logEventOrCode:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:-1 entitled:1 forMethod:"[BiometricKitXPCExportedObject logEventOrCode:]"])
  {
    _BKLogEventOrCode();
  }

  else
  {
    [BiometricKitXPCExportedObject logEventOrCode:];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)enableMatchAutoRetry:(BOOL)retry client:(unint64_t)client replyBlock:(id)block
{
  retryCopy = retry;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject enableMatchAutoRetry:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:4 forMethod:"[BiometricKitXPCExportedObject enableMatchAutoRetry:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject enableMatchAutoRetry:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server enableMatchAutoRetry:retryCopy withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject enableMatchAutoRetry:client:replyBlock:];
      v12 = v14;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject enableMatchAutoRetry:client:replyBlock:];
    v12 = v13;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12);
}

- (void)pauseFaceDetectTimer:(BOOL)timer client:(unint64_t)client replyBlock:(id)block
{
  timerCopy = timer;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject pauseFaceDetectTimer:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:4 forMethod:"[BiometricKitXPCExportedObject pauseFaceDetectTimer:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject pauseFaceDetectTimer:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server pauseFaceDetectTimer:timerCopy withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject pauseFaceDetectTimer:client:replyBlock:];
      v12 = v14;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject pauseFaceDetectTimer:client:replyBlock:];
    v12 = v13;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12);
}

- (void)getLastMatchEvent:(unint64_t)event replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getLastMatchEvent:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:event entitled:1 forMethod:"[BiometricKitXPCExportedObject getLastMatchEvent:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:event];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getLastMatchEvent:replyBlock:];
      }

      server = self->_server;
      v13 = 0;
      v11 = [(BiometricKitXPCServer *)server getLastMatchEvent:&v13 withClient:v9];
      v12 = v13;
    }

    else
    {
      [BiometricKitXPCExportedObject getLastMatchEvent:replyBlock:];
      v12 = v14;
      v11 = v15;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getLastMatchEvent:replyBlock:];
    v12 = v14;
    v11 = v15;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v11, v12);
}

- (void)getDeviceHardwareState:(unint64_t)state replyBlock:(id)block
{
  blockCopy = block;
  v11[0] = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getDeviceHardwareState:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:state entitled:1 forMethod:"[BiometricKitXPCExportedObject getDeviceHardwareState:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:state];
    if (v9)
    {
      v10 = [(BiometricKitXPCServer *)self->_server getDeviceHardwareState:v11 withClient:v9];
    }

    else
    {
      [BiometricKitXPCExportedObject getDeviceHardwareState:replyBlock:];
      v10 = v11[2];
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getDeviceHardwareState:replyBlock:];
    v10 = v11[1];
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v10, v11[0]);
}

- (void)listAccessories:(unint64_t)accessories replyBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject listAccessories:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:accessories entitled:1 forMethod:"[BiometricKitXPCExportedObject listAccessories:replyBlock:]"])
  {
    v9 = [(BiometricKitXPCExportedObject *)self client:accessories];
    if (v9)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject listAccessories:replyBlock:];
      }

      server = self->_server;
      v13 = 0;
      v11 = [(BiometricKitXPCServer *)server listAccessories:&v13 client:v9];
      v12 = v13;
    }

    else
    {
      [BiometricKitXPCExportedObject listAccessories:replyBlock:];
      v12 = v14;
      v11 = v15;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject listAccessories:replyBlock:];
    v12 = v14;
    v11 = v15;
  }

  objc_autoreleasePoolPop(v7);
  blockCopy[2](blockCopy, v11, v12);
}

- (void)getFreeIdentityCountForUser:(unsigned int)user accessoryGroup:(id)group client:(unint64_t)client replyBlock:(id)block
{
  v8 = *&user;
  groupCopy = group;
  blockCopy = block;
  v16 = 0;
  v12 = objc_autoreleasePoolPush();
  v13 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getFreeIdentityCountForUser:accessoryGroup:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getFreeIdentityCountForUser:accessoryGroup:client:replyBlock:]"])
  {
    v14 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v14)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject getFreeIdentityCountForUser:accessoryGroup:client:replyBlock:];
      }

      v15 = [(BiometricKitXPCServer *)self->_server getFreeIdentityCount:&v16 forUser:v8 accessoryGroup:groupCopy client:v14];
    }

    else
    {
      [BiometricKitXPCExportedObject getFreeIdentityCountForUser:accessoryGroup:client:replyBlock:];
      v15 = v17;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getFreeIdentityCountForUser:accessoryGroup:client:replyBlock:];
    v15 = v17;
  }

  objc_autoreleasePoolPop(v12);
  blockCopy[2](blockCopy, v15, v16);
}

- (void)getPreferencesValueForKey:(id)key client:(unint64_t)client replyBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject getPreferencesValueForKey:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject getPreferencesValueForKey:client:replyBlock:]"])
  {
    v12 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v12)
    {
      v13 = v12;
      server = self->_server;
      v18 = 0;
      v15 = [(BiometricKitXPCServer *)server getPreferencesValue:&v18 forKey:keyCopy withClient:v13];
      v16 = v18;
      v17 = v16;
      if (v15)
      {

        v17 = 0;
      }

      objc_autoreleasePoolPop(v10);
      blockCopy[2](blockCopy, v15, v17);
    }

    else
    {
      [BiometricKitXPCExportedObject getPreferencesValueForKey:client:replyBlock:];
    }
  }

  else
  {
    [BiometricKitXPCExportedObject getPreferencesValueForKey:client:replyBlock:];
  }
}

- (void)setPreferencesValue:(id)value forKey:(id)key client:(unint64_t)client replyBlock:(id)block
{
  valueCopy = value;
  keyCopy = key;
  blockCopy = block;
  v13 = objc_autoreleasePoolPush();
  v14 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject setPreferencesValue:forKey:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:5 forMethod:"[BiometricKitXPCExportedObject setPreferencesValue:forKey:client:replyBlock:]"])
  {
    v15 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v15)
    {
      v16 = v15;
      if (![(BiometricKitXPCServer *)self->_server setPreferencesValue:valueCopy forKey:keyCopy withClient:v15])
      {
        [BiometricKitXPCExportedObject setPreferencesValue:forKey:client:replyBlock:];
      }

      objc_autoreleasePoolPop(v13);
      blockCopy[2](blockCopy, 0);
    }

    else
    {
      [BiometricKitXPCExportedObject setPreferencesValue:forKey:client:replyBlock:];
    }
  }

  else
  {
    [BiometricKitXPCExportedObject setPreferencesValue:forKey:client:replyBlock:];
  }
}

- (void)prewarmCamera:(unint64_t)camera client:(unint64_t)client replyBlock:(id)block
{
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [WatchdogTimer watchdogWithName:"[BiometricKitXPCExportedObject prewarmCamera:client:replyBlock:]"];
  if ([(BiometricKitXPCExportedObject *)self isClient:client entitled:1 forMethod:"[BiometricKitXPCExportedObject prewarmCamera:client:replyBlock:]"])
  {
    v11 = [(BiometricKitXPCExportedObject *)self client:client];
    if (v11)
    {
      if ([(BiometricKitXPCServer *)self->_server loadCatacombAfterFirstUnlock])
      {
        [BiometricKitXPCExportedObject prewarmCamera:client:replyBlock:];
      }

      v12 = [(BiometricKitXPCServer *)self->_server prewarmCamera:camera withClient:v11];
    }

    else
    {
      [BiometricKitXPCExportedObject prewarmCamera:client:replyBlock:];
      v12 = v14;
    }
  }

  else
  {
    [BiometricKitXPCExportedObject prewarmCamera:client:replyBlock:];
    v12 = v13;
  }

  objc_autoreleasePoolPop(v9);
  blockCopy[2](blockCopy, v12);
}

- (void)connect:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)connect:(uint64_t)a1 client:(void *)a2 replyBlock:(_DWORD *)a3 .cold.2(uint64_t a1, void *a2, _DWORD *a3)
{
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v6, v7, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v8, v9, v10, v11);
  }

  *a3 = 258;
  *a2 = a1;
}

- (void)connect:client:replyBlock:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(260);
}

- (void)disconnect:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)disconnect:(void *)a1 replyBlock:.cold.2(void *a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  objc_sync_exit(a1);
}

- (void)registerDelegate:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)registerDelegate:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)notifyAppIsBackground:client:.cold.1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)notifyAppIsBackground:(char)a3 client:.cold.2(void *a1, uint64_t a2, char a3)
{
  v4 = [a1 client:a2];
  if (v4)
  {
    v5 = v4;
    [v4 setClientAppIsBackground:a3 & 1];
    v4 = v5;
  }
}

- (void)notifyAppIsInactive:client:.cold.1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)notifyAppIsInactive:(char)a3 client:.cold.2(id *a1, uint64_t a2, char a3)
{
  v5 = [a1 client:a2];
  if (v5)
  {
    v6 = v5;
    [v5 setClientAppIsInactive:a3 & 1];
    [a1[3] notifyAppIsInactive:a3 & 1 withClient:v6];
    v5 = v6;
  }
}

- (void)enroll:user:options:async:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)enroll:user:options:async:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

void __77__BiometricKitXPCExportedObject_enroll_user_options_async_client_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)match:options:async:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)match:options:async:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

void __71__BiometricKitXPCExportedObject_match_options_async_client_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)detectPresenceWithOptions:async:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)detectPresenceWithOptions:async:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

void __83__BiometricKitXPCExportedObject_detectPresenceWithOptions_async_client_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)cancel:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)cancel:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

void __51__BiometricKitXPCExportedObject_cancel_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (uint64_t)updateIdentity:options:async:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_20();
  return v7(v6);
}

- (void)updateIdentity:options:async:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void __80__BiometricKitXPCExportedObject_updateIdentity_options_async_client_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (uint64_t)removeIdentity:options:async:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_20();
  return v7(v6);
}

- (void)removeIdentity:options:async:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void __80__BiometricKitXPCExportedObject_removeIdentity_options_async_client_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (uint64_t)removeAllIdentitiesForUser:options:async:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_20();
  return v7(v6);
}

- (void)removeAllIdentitiesForUser:options:async:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void __92__BiometricKitXPCExportedObject_removeAllIdentitiesForUser_options_async_client_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getIdentityFromUUID:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getIdentityFromUUID:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getIdentityFromUUID:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)identities:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)identities:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)identities:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getMaxIdentityCount:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12_0();
}

- (void)getMaxIdentityCount:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getMaxIdentityCount:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getFreeIdentityCount:user:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12_0();
}

- (void)getFreeIdentityCount:user:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getFreeIdentityCount:user:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)registerDSID:options:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)registerDSID:options:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)registerDSID:options:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)registerStoreToken:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)registerStoreToken:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)registerStoreToken:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)getCountersignedStoreToken:replyBlock:.cold.1()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(257);
}

- (void)getCountersignedStoreToken:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getCountersignedStoreToken:replyBlock:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(22);
}

- (void)diagnostics:options:client:replyBlock:.cold.1()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(257);
}

- (void)diagnostics:options:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)diagnostics:options:client:replyBlock:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(22);
}

- (void)timestampEvent:absoluteTime:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)timestampEvent:absoluteTime:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)timestampEvent:absoluteTime:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)setUserDSID:options:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)setUserDSID:options:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)setUserDSID:options:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)resetAppleConnectCounter:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)resetAppleConnectCounter:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)resetAppleConnectCounter:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)getIdentitiesDatabaseUUIDForUser:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getIdentitiesDatabaseUUIDForUser:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getIdentitiesDatabaseUUIDForUser:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getIdentitiesDatabaseHashForUser:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getIdentitiesDatabaseHashForUser:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getIdentitiesDatabaseHashForUser:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)dropUnlockToken:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)dropUnlockToken:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)dropUnlockToken:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)forceBioLockoutForUser:options:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)forceBioLockoutForUser:options:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)forceBioLockoutForUser:options:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)enrollContinue:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)enrollContinue:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enrollContinue:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)pullAlignmentData:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)pullAlignmentData:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pullAlignmentData:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)pullMatchPolicyInfoData:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)pullMatchPolicyInfoData:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pullMatchPolicyInfoData:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getNodeTopologyForIdentity:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getNodeTopologyForIdentity:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getNodeTopologyForIdentity:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getProtectedConfigurationForUser:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getProtectedConfigurationForUser:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getProtectedConfigurationForUser:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getSystemProtectedConfiguration:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getSystemProtectedConfiguration:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getSystemProtectedConfiguration:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (uint64_t)setProtectedConfiguration:user:options:async:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_20();
  return v7(v6);
}

- (void)setProtectedConfiguration:user:options:async:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void __96__BiometricKitXPCExportedObject_setProtectedConfiguration_user_options_async_client_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (uint64_t)setSystemProtectedConfiguration:options:async:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_20();
  return v7(v6);
}

- (void)setSystemProtectedConfiguration:options:async:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void __97__BiometricKitXPCExportedObject_setSystemProtectedConfiguration_options_async_client_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getProvisioningState:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getProvisioningState:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getProvisioningState:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12_0();
}

- (void)getBioLockoutStateForUser:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)getBioLockoutStateForUser:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

void __77__BiometricKitXPCExportedObject_getBioLockoutStateForUser_client_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getExpressModeStateForUser:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)getExpressModeStateForUser:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getExpressModeStateForUser:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)getSensorCalibrationStatus:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12_0();
}

- (void)getSensorCalibrationStatus:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getSensorCalibrationStatus:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12_0();
}

- (void)getCalibrationDataInfo:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getCalibrationDataInfo:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getCalibrationDataInfo:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getSensorInfo:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getSensorInfo:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getSensorInfo:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)setDebugImages:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)setDebugImages:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)setDebugImages:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)pullCalibrationData:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)pullCalibrationData:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pullCalibrationData:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)pullCaptureBuffer:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)pullCaptureBuffer:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pullCaptureBuffer:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)pullDebugImageData:rotated:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)pullDebugImageData:rotated:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pullDebugImageData:rotated:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_13();
}

- (void)getLogs:client:replyBlock:.cold.1()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *v1 = 0;
  *v0 = 0;
}

- (void)getLogs:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getLogs:client:replyBlock:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *v1 = 0;
  *v0 = 0;
}

- (void)fileRadarWithLogs:description:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19();
}

- (void)fileRadarWithLogs:description:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)fileRadarWithLogs:description:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19();
}

- (void)isFingerOn:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19();
}

- (void)isFingerOn:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)isFingerOn:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19();
}

- (void)enableBackgroundFdet:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)enableBackgroundFdet:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

void __72__BiometricKitXPCExportedObject_enableBackgroundFdet_client_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)isAriadneSignpostsEnabled:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19();
}

- (void)isAriadneSignpostsEnabled:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)isAriadneSignpostsEnabled:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19();
}

- (void)isXARTAvailable:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19();
}

- (void)isXARTAvailable:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)isXARTAvailable:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19();
}

- (void)getDeviceState:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12_0();
}

- (void)getDeviceState:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getDeviceState:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12_0();
}

- (void)startNewMatchAttempt:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)startNewMatchAttempt:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)startNewMatchAttempt:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)getBiometryAvailabilityForUser:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)getBiometryAvailabilityForUser:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getBiometryAvailabilityForUser:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)completeEnrollment:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)completeEnrollment:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)completeEnrollment:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)suspendEnrollment:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)suspendEnrollment:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)suspendEnrollment:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)setTemplate:forIdentity:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)setTemplate:forIdentity:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)setTemplate:forIdentity:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)isPeriocularEnrollmentSupported:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)isPeriocularEnrollmentSupported:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)isPeriocularEnrollmentSupported:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)getPeriocularMatchState:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)getPeriocularMatchState:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getPeriocularMatchState:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (uint64_t)removePeriocularTemplatesWithOptions:async:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_20();
  return v7(v6);
}

- (void)removePeriocularTemplatesWithOptions:async:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void __94__BiometricKitXPCExportedObject_removePeriocularTemplatesWithOptions_async_client_replyBlock___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)queryIdentityMigrationFailureForUser:clear:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)queryIdentityMigrationFailureForUser:clear:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)queryIdentityMigrationFailureForUser:clear:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)logEventOrCode:.cold.1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enableMatchAutoRetry:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)enableMatchAutoRetry:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enableMatchAutoRetry:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)pauseFaceDetectTimer:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)pauseFaceDetectTimer:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pauseFaceDetectTimer:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)getLastMatchEvent:replyBlock:.cold.1()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(257);
}

- (void)getLastMatchEvent:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getLastMatchEvent:replyBlock:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(22);
}

- (void)getDeviceHardwareState:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)getDeviceHardwareState:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)listAccessories:replyBlock:.cold.1()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(257);
}

- (void)listAccessories:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)listAccessories:replyBlock:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(22);
}

- (void)getFreeIdentityCountForUser:accessoryGroup:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)getFreeIdentityCountForUser:accessoryGroup:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getFreeIdentityCountForUser:accessoryGroup:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)getPreferencesValueForKey:client:replyBlock:.cold.1()
{
  OUTLINED_FUNCTION_18();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  v8 = OUTLINED_FUNCTION_17();
  v9(v8, 3758097122, 0);

  objc_autoreleasePoolPop(v0);
}

- (void)getPreferencesValueForKey:client:replyBlock:.cold.2()
{
  OUTLINED_FUNCTION_18();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  v8 = OUTLINED_FUNCTION_17();
  v9(v8, 22, 0);

  objc_autoreleasePoolPop(v0);
}

- (void)setPreferencesValue:forKey:client:replyBlock:.cold.1()
{
  OUTLINED_FUNCTION_18();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  v8 = OUTLINED_FUNCTION_17();
  v9(v8, 3758097122);

  objc_autoreleasePoolPop(v0);
}

- (void)setPreferencesValue:forKey:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)setPreferencesValue:forKey:client:replyBlock:.cold.3()
{
  OUTLINED_FUNCTION_18();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  v8 = OUTLINED_FUNCTION_17();
  v9(v8, 22);

  objc_autoreleasePoolPop(v0);
}

- (void)prewarmCamera:client:replyBlock:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)prewarmCamera:client:replyBlock:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)prewarmCamera:client:replyBlock:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

@end