@interface ISBiometricUpdateTouchIDSettingsOperation
- (ISBiometricUpdateTouchIDSettingsOperation)initWithAccountIdentifier:(id)identifier;
- (id)_newUpdateTouchIDSettingsOperation;
- (void)run;
@end

@implementation ISBiometricUpdateTouchIDSettingsOperation

- (ISBiometricUpdateTouchIDSettingsOperation)initWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = ISBiometricUpdateTouchIDSettingsOperation;
  v5 = [(ISOperation *)&v13 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    status = v5->_status;
    v5->_status = v6;

    v8 = objc_opt_new();
    attestationStringExtendedActions = v5->_attestationStringExtendedActions;
    v5->_attestationStringExtendedActions = v8;

    *(&v5->super._success + 1) = 1;
    *(&v5->super._success + 2) = 0;
    v5->_resultBlock = -1;
    if (_os_feature_enabled_impl())
    {
      v10 = [[AMSBiometricsTokenUpdateTaskShim alloc] initWithAccountIdentifier:v5->_status];
      certChainExtended = v5->_certChainExtended;
      v5->_certChainExtended = v10;
    }
  }

  return v5;
}

- (void)run
{
  v211 = *MEMORY[0x277D85DE8];
  certChainExtended = self->_certChainExtended;
  if (certChainExtended)
  {
    v200[0] = MEMORY[0x277D85DD0];
    v200[1] = 3221225472;
    v200[2] = __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke;
    v200[3] = &unk_27A6713B0;
    v200[4] = self;
    [(NSArray *)certChainExtended runUpdateWithCompletionBlock:v200];
    return;
  }

  v180 = SSGenerateLogCorrelationString();
  if (![ISBiometricStore tokenUpdateShouldStartWithLogKey:v180])
  {
    v12 = SSError();
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v14) = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v14) = v14 | 2;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      *v207 = 138543362;
      *&v207[4] = objc_opt_class();
      v16 = *&v207[4];
      v17 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Update operation already in-flight, canceling this instance", v207, 12);

      if (v17)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
        free(v17);
        v167 = v18;
        SSFileLog();
      }
    }

    else
    {
    }

    goto LABEL_242;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  LODWORD(v5) = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v5) = v5 | 2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    status = self->_status;
    *v207 = 138543618;
    *&v207[4] = v7;
    *&v207[12] = 2112;
    *&v207[14] = status;
    v9 = v7;
    v10 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: Fetching new biometric token for DSID: %@", v207, 22);

    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
      free(v10);
      v167 = v11;
      SSFileLog();
    }
  }

  else
  {
  }

  if ([(ISBiometricUpdateTouchIDSettingsOperation *)self regeneratePublicKey])
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v20) = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      LODWORD(v20) = v20 | 2;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      *v207 = 138543362;
      *&v207[4] = v22;
      v23 = v22;
      LODWORD(v168) = 12;
      v24 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%{public}@: Re-generating public/private key-pairs", v207, v168);

      if (!v24)
      {
        goto LABEL_37;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v24 encoding:4];
      free(v24);
      v167 = oSLogObject3;
      SSFileLog();
    }

LABEL_37:
    attestationStringExtendedActions = self->_attestationStringExtendedActions;
    v26 = self->_status;
    v199 = 0;
    v27 = [(NSString *)attestationStringExtendedActions deleteKeychainTokensForAccountIdentifier:v26 error:&v199];
    v28 = v199;
    if (v27)
    {
LABEL_50:

      goto LABEL_51;
    }

    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v30) = [mEMORY[0x277D69B38]4 shouldLog];
    if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
    {
      LODWORD(v30) = v30 | 2;
    }

    oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v30;
    }

    else
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v32 = objc_opt_class();
      v33 = self->_status;
      *v207 = 138543874;
      *&v207[4] = v32;
      *&v207[12] = 2112;
      *&v207[14] = v33;
      *&v207[22] = 2114;
      v208 = v28;
      v34 = v32;
      LODWORD(v168) = 32;
      v35 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%{public}@: Failed to delete public/private key-pairs for DSID: %@, error: %{public}@", v207, v168);

      if (!v35)
      {
LABEL_49:

        goto LABEL_50;
      }

      oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:4];
      free(v35);
      v167 = oSLogObject4;
      SSFileLog();
    }

    goto LABEL_49;
  }

LABEL_51:
  if (!+[ISBiometricStore shouldUseX509])
  {
    v72 = self->_attestationStringExtendedActions;
    v73 = self->_status;
    v185 = 0;
    v178 = [(NSString *)v72 publicKeyDataForAccountIdentifier:v73 purpose:0 error:&v185];
    v74 = v185;
    v75 = self->_attestationStringExtendedActions;
    v76 = self->_status;
    v184 = 0;
    v172 = [(NSString *)v75 publicKeyDataForAccountIdentifier:v76 purpose:1 error:&v184];
    v77 = v184;
    v78 = v77;
    if (v74 && v77)
    {
      v174 = SSError();
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]5)
      {
        mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
      }

      LODWORD(v80) = [mEMORY[0x277D69B38]5 shouldLog];
      if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
      {
        LODWORD(v80) = v80 | 2;
      }

      oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
      {
        v80 = v80;
      }

      else
      {
        v80 &= 2u;
      }

      if (!v80)
      {
        goto LABEL_139;
      }

      v82 = objc_opt_class();
      v83 = self->_status;
      *v207 = 138543618;
      *&v207[4] = v82;
      *&v207[12] = 2112;
      *&v207[14] = v83;
      v84 = v82;
      LODWORD(v168) = 22;
      v85 = _os_log_send_and_compose_impl(v80, 0, 0, 0, &dword_275BC3000, oSLogObject5, 16, "%{public}@: Failed to lookup both purchase and extended action keys for DSID: %@", v207, v168);
    }

    else if (v74)
    {
      v174 = v74;
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]5)
      {
        mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
      }

      LODWORD(v94) = [mEMORY[0x277D69B38]5 shouldLog];
      if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
      {
        LODWORD(v94) = v94 | 2;
      }

      oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
      {
        v94 = v94;
      }

      else
      {
        v94 &= 2u;
      }

      if (!v94)
      {
        goto LABEL_139;
      }

      v95 = objc_opt_class();
      v96 = self->_status;
      *v207 = 138543618;
      *&v207[4] = v95;
      *&v207[12] = 2112;
      *&v207[14] = v96;
      v97 = v95;
      LODWORD(v168) = 22;
      v85 = _os_log_send_and_compose_impl(v94, 0, 0, 0, &dword_275BC3000, oSLogObject5, 16, "%{public}@: Failed to lookup purchase key for DSID: %@", v207, v168);
    }

    else
    {
      if (!v77)
      {
        v174 = 0;
        goto LABEL_141;
      }

      v174 = v77;
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]5)
      {
        mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
      }

      LODWORD(v105) = [mEMORY[0x277D69B38]5 shouldLog];
      if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
      {
        LODWORD(v105) = v105 | 2;
      }

      oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
      {
        v105 = v105;
      }

      else
      {
        v105 &= 2u;
      }

      if (!v105)
      {
        goto LABEL_139;
      }

      v106 = objc_opt_class();
      v107 = self->_status;
      *v207 = 138543618;
      *&v207[4] = v106;
      *&v207[12] = 2112;
      *&v207[14] = v107;
      v108 = v106;
      LODWORD(v168) = 22;
      v85 = _os_log_send_and_compose_impl(v105, 0, 0, 0, &dword_275BC3000, oSLogObject5, 16, "%{public}@: Failed to lookup extended action key for DSID: %@", v207, v168);
    }

    if (!v85)
    {
LABEL_140:

LABEL_141:
      if (!v178 || !v172)
      {
        v170 = v78;
        group = v74;
        v115 = v174;
        goto LABEL_199;
      }

      v109 = self->_attestationStringExtendedActions;
      v110 = self->_status;
      v183 = v74;
      v111 = [(NSString *)v109 createAttestationDataForAccountIdentifier:v110 purpose:0 error:&v183];
      group = v183;

      v112 = self->_attestationStringExtendedActions;
      v113 = self->_status;
      v182 = v78;
      v114 = [(NSString *)v112 createAttestationDataForAccountIdentifier:v113 purpose:1 error:&v182];
      v170 = v182;

      if (group && v170)
      {
        v115 = SSError();

        mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]6)
        {
          mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
        }

        LODWORD(v117) = [mEMORY[0x277D69B38]6 shouldLog];
        if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
        {
          LODWORD(v117) = v117 | 2;
        }

        oSLogObject6 = [mEMORY[0x277D69B38]6 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
        {
          v117 = v117;
        }

        else
        {
          v117 &= 2u;
        }

        if (!v117)
        {
          goto LABEL_193;
        }

        v119 = objc_opt_class();
        v120 = self->_status;
        *v207 = 138543618;
        *&v207[4] = v119;
        *&v207[12] = 2112;
        *&v207[14] = v120;
        v121 = v119;
        LODWORD(v168) = 22;
        v122 = _os_log_send_and_compose_impl(v117, 0, 0, 0, &dword_275BC3000, oSLogObject6, 16, "%{public}@: Failed to generate attestation for both purchase and extended action keys for DSID: %@", v207, v168);
      }

      else if (group)
      {
        v115 = group;

        mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]6)
        {
          mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
        }

        LODWORD(v123) = [mEMORY[0x277D69B38]6 shouldLog];
        if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
        {
          LODWORD(v123) = v123 | 2;
        }

        oSLogObject6 = [mEMORY[0x277D69B38]6 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
        {
          v123 = v123;
        }

        else
        {
          v123 &= 2u;
        }

        if (!v123)
        {
          goto LABEL_193;
        }

        v124 = objc_opt_class();
        v125 = self->_status;
        *v207 = 138543618;
        *&v207[4] = v124;
        *&v207[12] = 2112;
        *&v207[14] = v125;
        v126 = v124;
        LODWORD(v168) = 22;
        v122 = _os_log_send_and_compose_impl(v123, 0, 0, 0, &dword_275BC3000, oSLogObject6, 16, "%{public}@: Failed to generate attestation for purchase key for DSID: %@", v207, v168);
      }

      else
      {
        if (!v170)
        {
          v115 = v174;
          if (!v111)
          {
            goto LABEL_196;
          }

          goto LABEL_195;
        }

        v115 = v170;

        mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]6)
        {
          mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
        }

        LODWORD(v133) = [mEMORY[0x277D69B38]6 shouldLog];
        if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
        {
          LODWORD(v133) = v133 | 2;
        }

        oSLogObject6 = [mEMORY[0x277D69B38]6 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
        {
          v133 = v133;
        }

        else
        {
          v133 &= 2u;
        }

        if (!v133)
        {
          goto LABEL_193;
        }

        v134 = objc_opt_class();
        v135 = self->_status;
        *v207 = 138543618;
        *&v207[4] = v134;
        *&v207[12] = 2112;
        *&v207[14] = v135;
        v136 = v134;
        LODWORD(v168) = 22;
        v122 = _os_log_send_and_compose_impl(v133, 0, 0, 0, &dword_275BC3000, oSLogObject6, 16, "%{public}@: Failed to generate attestation for extended actions key for DSID: %@", v207, v168);
      }

      if (!v122)
      {
        goto LABEL_194;
      }

      oSLogObject6 = [MEMORY[0x277CCACA8] stringWithCString:v122 encoding:4];
      free(v122);
      v167 = oSLogObject6;
      SSFileLog();
LABEL_193:

LABEL_194:
      if (!v111)
      {
LABEL_196:
        if (v114)
        {
          v140 = v114;
          v141 = ISCopyEncodedBase64([v114 bytes], objc_msgSend(v114, "length"));
          attestationStringPurchase = self->_attestationStringPurchase;
          self->_attestationStringPurchase = v141;
        }

LABEL_199:
        if (!self->_accountIdentifier)
        {
          v12 = v115;
LABEL_240:

          goto LABEL_241;
        }

        _newUpdateTouchIDSettingsOperation = [(ISBiometricUpdateTouchIDSettingsOperation *)self _newUpdateTouchIDSettingsOperation];
        v143 = +[(ISDataProvider *)ISProtocolDataProvider];
        [_newUpdateTouchIDSettingsOperation setDataProvider:v143];

        v181 = v115;
        LODWORD(v143) = [(ISOperation *)self runSubOperation:_newUpdateTouchIDSettingsOperation returningError:&v181];
        v12 = v181;

        if (!v143)
        {
          mEMORY[0x277D69B38]7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
          if (!mEMORY[0x277D69B38]7)
          {
            mEMORY[0x277D69B38]7 = [MEMORY[0x277D69B38] sharedConfig];
          }

          LODWORD(v156) = [mEMORY[0x277D69B38]7 shouldLog];
          if ([mEMORY[0x277D69B38]7 shouldLogToDisk])
          {
            LODWORD(v156) = v156 | 2;
          }

          oSLogObject7 = [mEMORY[0x277D69B38]7 OSLogObject];
          if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
          {
            v156 = v156;
          }

          else
          {
            v156 &= 2u;
          }

          if (v156)
          {
            v157 = objc_opt_class();
            v158 = v157;
            localizedDescription = [v12 localizedDescription];
            *v207 = 138543618;
            *&v207[4] = v157;
            *&v207[12] = 2114;
            *&v207[14] = localizedDescription;
            LODWORD(v168) = 22;
            v160 = _os_log_send_and_compose_impl(v156, 0, 0, 0, &dword_275BC3000, oSLogObject7, 16, "%{public}@: Operation failed with error: %{public}@", v207, v168);

            if (!v160)
            {
LABEL_239:

              goto LABEL_240;
            }

            oSLogObject7 = [MEMORY[0x277CCACA8] stringWithCString:v160 encoding:4];
            free(v160);
            v167 = oSLogObject7;
            SSFileLog();
          }

LABEL_238:

          goto LABEL_239;
        }

        dataProvider = [_newUpdateTouchIDSettingsOperation dataProvider];
        mEMORY[0x277D69B38]7 = [dataProvider output];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v161 = SSError();

          oSLogObject7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
          if (!oSLogObject7)
          {
            oSLogObject7 = [MEMORY[0x277D69B38] sharedConfig];
          }

          LODWORD(v162) = [oSLogObject7 shouldLog];
          if ([oSLogObject7 shouldLogToDisk])
          {
            LODWORD(v162) = v162 | 2;
          }

          v147OSLogObject = [oSLogObject7 OSLogObject];
          if (os_log_type_enabled(v147OSLogObject, OS_LOG_TYPE_ERROR))
          {
            v162 = v162;
          }

          else
          {
            v162 &= 2u;
          }

          if (v162)
          {
            v163 = objc_opt_class();
            *v207 = 138543362;
            *&v207[4] = v163;
            v164 = v163;
            LODWORD(v168) = 12;
            v165 = _os_log_send_and_compose_impl(v162, 0, 0, 0, &dword_275BC3000, v147OSLogObject, 16, "%{public}@: Operation failed to parse response", v207, v168);

            if (!v165)
            {
              v12 = v161;
              goto LABEL_238;
            }

            v147OSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v165 encoding:4];
            free(v165);
            v167 = v147OSLogObject;
            SSFileLog();
          }

          v12 = v161;
          goto LABEL_237;
        }

        v146 = [mEMORY[0x277D69B38]7 objectForKey:@"status"];
        oSLogObject7 = v146;
        if (v146)
        {
          self->_resultBlock = [v146 integerValue];
        }

        v147OSLogObject = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v147OSLogObject)
        {
          v147OSLogObject = [MEMORY[0x277D69B38] sharedConfig];
        }

        LODWORD(v149) = [v147OSLogObject shouldLog];
        if ([v147OSLogObject shouldLogToDisk])
        {
          LODWORD(v149) = v149 | 2;
        }

        v148OSLogObject = [v147OSLogObject OSLogObject];
        if (os_log_type_enabled(v148OSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v149 = v149;
        }

        else
        {
          v149 &= 2u;
        }

        if (v149)
        {
          v151 = objc_opt_class();
          v152 = MEMORY[0x277CCABB0];
          resultBlock = self->_resultBlock;
          v169 = v151;
          v154 = [v152 numberWithInteger:resultBlock];
          *v207 = 138543618;
          *&v207[4] = v151;
          *&v207[12] = 2114;
          *&v207[14] = v154;
          LODWORD(v168) = 22;
          v155 = _os_log_send_and_compose_impl(v149, 0, 0, 0, &dword_275BC3000, v148OSLogObject, 0, "%{public}@: Operation completed with status: %{public}@", v207, v168);

          if (!v155)
          {
LABEL_237:

            goto LABEL_238;
          }

          v148OSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v155 encoding:4];
          free(v155);
          v167 = v148OSLogObject;
          SSFileLog();
        }

        goto LABEL_237;
      }

LABEL_195:
      v137 = v111;
      v138 = ISCopyEncodedBase64([v111 bytes], objc_msgSend(v111, "length"));
      accountIdentifier = self->_accountIdentifier;
      self->_accountIdentifier = v138;

      goto LABEL_196;
    }

    oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v85 encoding:4];
    free(v85);
    v167 = oSLogObject5;
    SSFileLog();
LABEL_139:

    goto LABEL_140;
  }

  v36 = dispatch_group_create();
  *v207 = 0;
  *&v207[8] = v207;
  *&v207[16] = 0x3032000000;
  v208 = __Block_byref_object_copy__12;
  v209 = __Block_byref_object_dispose__12;
  v210 = 0;
  v37 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_22;
  block[3] = &unk_27A6709E0;
  block[4] = self;
  block[5] = v207;
  group = v36;
  dispatch_group_async(v36, v37, block);

  v192 = 0;
  v193 = &v192;
  v194 = 0x3032000000;
  v195 = __Block_byref_object_copy__12;
  v196 = __Block_byref_object_dispose__12;
  v197 = 0;
  v191[0] = MEMORY[0x277D85DD0];
  v191[1] = 3221225472;
  v191[2] = __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_25;
  v191[3] = &unk_27A6709E0;
  v191[4] = self;
  v191[5] = &v192;
  dispatch_group_async(v36, v37, v191);

  v38 = dispatch_time(0, 60000000000);
  if (dispatch_group_wait(v36, v38))
  {
    mEMORY[0x277D69B38]8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]8)
    {
      mEMORY[0x277D69B38]8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v40) = [mEMORY[0x277D69B38]8 shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38]8 shouldLogToDisk];
    oSLogObject8 = [mEMORY[0x277D69B38]8 OSLogObject];
    v43 = oSLogObject8;
    if (shouldLogToDisk)
    {
      LODWORD(v40) = v40 | 2;
    }

    if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_ERROR))
    {
      v40 = v40;
    }

    else
    {
      v40 &= 2u;
    }

    if (v40)
    {
      v44 = objc_opt_class();
      v201 = 138543362;
      v202 = v44;
      v45 = v44;
      LODWORD(v168) = 12;
      v46 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_275BC3000, v43, 16, "%{public}@: X509 attestation failed for timeout", &v201, v168);

      if (!v46)
      {
LABEL_64:

        goto LABEL_65;
      }

      v43 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:4];
      free(v46);
      v167 = v43;
      SSFileLog();
    }

    goto LABEL_64;
  }

LABEL_65:
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = *(*&v207[8] + 40);
  v189[0] = MEMORY[0x277D85DD0];
  v189[1] = 3221225472;
  v189[2] = __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_27;
  v189[3] = &unk_27A6713D8;
  v49 = v47;
  v190 = v49;
  [v48 enumerateObjectsUsingBlock:v189];
  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = v193[5];
  v187[0] = MEMORY[0x277D85DD0];
  v187[1] = 3221225472;
  v187[2] = __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_2;
  v187[3] = &unk_27A6713D8;
  v52 = v50;
  v188 = v52;
  [v51 enumerateObjectsUsingBlock:v187];
  v53 = [v49 copy];
  biometricStore = self->_biometricStore;
  self->_biometricStore = v53;

  v55 = [v52 copy];
  certChainPrimary = self->_certChainPrimary;
  self->_certChainPrimary = v55;

  if ([*(*&v207[8] + 40) count] && objc_msgSend(v193[5], "count"))
  {
    _newUpdateTouchIDSettingsOperation2 = [(ISBiometricUpdateTouchIDSettingsOperation *)self _newUpdateTouchIDSettingsOperation];
    v58 = +[(ISDataProvider *)ISProtocolDataProvider];
    [_newUpdateTouchIDSettingsOperation2 setDataProvider:v58];

    v186 = 0;
    LODWORD(v58) = [(ISOperation *)self runSubOperation:_newUpdateTouchIDSettingsOperation2 returningError:&v186];
    v12 = v186;
    if (v58)
    {
      dataProvider2 = [_newUpdateTouchIDSettingsOperation2 dataProvider];
      output = [dataProvider2 output];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v177 = SSError();

        mEMORY[0x277D69B38]9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]9)
        {
          mEMORY[0x277D69B38]9 = [MEMORY[0x277D69B38] sharedConfig];
        }

        LODWORD(v127) = [mEMORY[0x277D69B38]9 shouldLog];
        shouldLogToDisk2 = [mEMORY[0x277D69B38]9 shouldLogToDisk];
        oSLogObject9 = [mEMORY[0x277D69B38]9 OSLogObject];
        v71 = oSLogObject9;
        if (shouldLogToDisk2)
        {
          LODWORD(v127) = v127 | 2;
        }

        if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
        {
          v127 = v127;
        }

        else
        {
          v127 &= 2u;
        }

        if (v127)
        {
          v130 = objc_opt_class();
          v201 = 138543362;
          v202 = v130;
          v131 = v130;
          LODWORD(v168) = 12;
          v132 = _os_log_send_and_compose_impl(v127, 0, 0, 0, &dword_275BC3000, v71, 16, "%{public}@: Operation failed to parse response", &v201, v168);

          if (!v132)
          {
LABEL_177:
            v12 = v177;
            goto LABEL_178;
          }

          v71 = [MEMORY[0x277CCACA8] stringWithCString:v132 encoding:4];
          free(v132);
          v167 = v71;
          SSFileLog();
        }

LABEL_176:

        goto LABEL_177;
      }

      mEMORY[0x277D69B38]9 = output;
      v173 = [mEMORY[0x277D69B38]9 objectForKey:@"status"];
      if (v173)
      {
        self->_resultBlock = [v173 integerValue];
      }

      mEMORY[0x277D69B38]10 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]10)
      {
        mEMORY[0x277D69B38]10 = [MEMORY[0x277D69B38] sharedConfig];
      }

      LODWORD(v63) = [mEMORY[0x277D69B38]10 shouldLog];
      shouldLogToDisk3 = [mEMORY[0x277D69B38]10 shouldLogToDisk];
      v176 = mEMORY[0x277D69B38]10;
      oSLogObject10 = [mEMORY[0x277D69B38]10 OSLogObject];
      v66 = oSLogObject10;
      if (shouldLogToDisk3)
      {
        LODWORD(v63) = v63 | 2;
      }

      if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v63;
      }

      else
      {
        v63 &= 2u;
      }

      if (v63)
      {
        v67 = objc_opt_class();
        v68 = [MEMORY[0x277CCABB0] numberWithInteger:self->_resultBlock];
        v201 = 138543618;
        v171 = v67;
        v202 = v67;
        v203 = 2114;
        v204 = v68;
        LODWORD(v168) = 22;
        v69 = v68;
        v70 = _os_log_send_and_compose_impl(v63, 0, 0, 0, &dword_275BC3000, v66, 0, "%{public}@: Operation completed with status: %{public}@", &v201, v168);

        if (!v70)
        {
LABEL_82:

          v177 = v12;
          v71 = v173;
          goto LABEL_176;
        }

        v66 = [MEMORY[0x277CCACA8] stringWithCString:v70 encoding:4];
        free(v70);
        v167 = v66;
        SSFileLog();
      }

      goto LABEL_82;
    }

    output = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!output)
    {
      output = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [output shouldLog];
    shouldLogToDisk4 = [output shouldLogToDisk];
    oSLogObject11 = [output OSLogObject];
    mEMORY[0x277D69B38]9 = oSLogObject11;
    if (shouldLogToDisk4)
    {
      shouldLog |= 2u;
    }

    if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_ERROR))
    {
      v101 = shouldLog;
    }

    else
    {
      v101 = shouldLog & 2;
    }

    if (!v101)
    {
      goto LABEL_178;
    }

    v102 = objc_opt_class();
    localizedDescription2 = [v12 localizedDescription];
    v201 = 138543618;
    v202 = v102;
    v203 = 2114;
    v204 = localizedDescription2;
    LODWORD(v168) = 22;
    v104 = _os_log_send_and_compose_impl(v101, 0, 0, 0, &dword_275BC3000, mEMORY[0x277D69B38]9, 16, "%{public}@: Operation failed with error: %{public}@", &v201, v168);

    if (v104)
    {
      mEMORY[0x277D69B38]9 = [MEMORY[0x277CCACA8] stringWithCString:v104 encoding:4];
      free(v104);
      v167 = mEMORY[0x277D69B38]9;
      SSFileLog();
LABEL_178:
    }

LABEL_179:

    goto LABEL_180;
  }

  _newUpdateTouchIDSettingsOperation2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!_newUpdateTouchIDSettingsOperation2)
  {
    _newUpdateTouchIDSettingsOperation2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [_newUpdateTouchIDSettingsOperation2 shouldLog];
  shouldLogToDisk5 = [_newUpdateTouchIDSettingsOperation2 shouldLogToDisk];
  oSLogObject12 = [_newUpdateTouchIDSettingsOperation2 OSLogObject];
  output = oSLogObject12;
  if (shouldLogToDisk5)
  {
    shouldLog2 |= 2u;
  }

  if (os_log_type_enabled(oSLogObject12, OS_LOG_TYPE_ERROR))
  {
    v89 = shouldLog2;
  }

  else
  {
    v89 = shouldLog2 & 2;
  }

  if (!v89)
  {
LABEL_106:
    v12 = 0;
    goto LABEL_179;
  }

  v90 = objc_opt_class();
  v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*&v207[8] + 40), "count")}];
  v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v193[5], "count")}];
  v201 = 138543874;
  v202 = v90;
  v203 = 2114;
  v204 = v91;
  v205 = 2114;
  v206 = v92;
  LODWORD(v168) = 32;
  v93 = _os_log_send_and_compose_impl(v89, 0, 0, 0, &dword_275BC3000, output, 16, "%{public}@: Skipping server attestation for missing certs, primary: %{public}@, extended: %{public}@", &v201, v168);

  if (v93)
  {
    output = [MEMORY[0x277CCACA8] stringWithCString:v93 encoding:4];
    free(v93);
    v167 = output;
    SSFileLog();
    goto LABEL_106;
  }

  v12 = 0;
LABEL_180:

  _Block_object_dispose(&v192, 8);
  _Block_object_dispose(v207, 8);

LABEL_241:
  [ISBiometricStore tokenUpdateDidFinishWithLogKey:v180];
LABEL_242:
  [(ISOperation *)self setError:v12, v167];
  [(ISOperation *)self setSuccess:v12 == 0];
  resultBlock = [(ISBiometricUpdateTouchIDSettingsOperation *)self resultBlock];
  if (resultBlock)
  {
    (resultBlock)[2](resultBlock, [(ISBiometricUpdateTouchIDSettingsOperation *)self status], v12);
  }
}

void __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [*(a1 + 32) setError:?];
  [*(a1 + 32) setSuccess:a2];
  v5 = [*(a1 + 32) resultBlock];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v7);
  }
}

void __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_22(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v35 = 138543362;
    v36 = objc_opt_class();
    v6 = v36;
    v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_275BC3000, v5, 0, "%{public}@: Attempting attestation using X509 certs for primary key", &v35, 12);

    if (!v7)
    {
      goto LABEL_13;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
    free(v7);
    v32 = v5;
    SSFileLog();
  }

LABEL_13:
  v8 = *(a1 + 32);
  v9 = *(v8 + 376);
  v10 = *(v8 + 352);
  v34 = 0;
  v11 = [v9 x509CertChainDataForAccountIdentifier:v10 purpose:0 regenerateCerts:1 error:&v34];
  v12 = v34;
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;

  if (!v12)
  {
    goto LABEL_27;
  }

  v15 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v15)
  {
    v15 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v16 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    LODWORD(v17) = v16 | 2;
  }

  else
  {
    LODWORD(v17) = v16;
  }

  v18 = [v15 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v17 = v17;
  }

  else
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_25;
  }

  v19 = objc_opt_class();
  v35 = 138543618;
  v36 = v19;
  v37 = 2114;
  v38 = v12;
  v20 = v19;
  LODWORD(v33) = 22;
  v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_275BC3000, v18, 16, "%{public}@: Failed primary attestation using X509 certs with error: %{public}@", &v35, v33);

  if (v21)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:4];
    free(v21);
    v32 = v18;
    SSFileLog();
LABEL_25:
  }

LABEL_27:
  v22 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v22)
  {
    v22 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v23 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    LODWORD(v24) = v23 | 2;
  }

  else
  {
    LODWORD(v24) = v23;
  }

  v25 = [v22 OSLogObject];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v24;
  }

  else
  {
    v24 &= 2u;
  }

  if (!v24)
  {
    goto LABEL_38;
  }

  v26 = objc_opt_class();
  v27 = MEMORY[0x277CCABB0];
  v28 = *(*(*(a1 + 40) + 8) + 40);
  v29 = v26;
  v30 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
  v35 = 138543618;
  v36 = v26;
  v37 = 2114;
  v38 = v30;
  LODWORD(v33) = 22;
  v31 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, v25, 0, "%{public}@: Found %{public}@ certs for primary key", &v35, v33);

  if (v31)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:4];
    free(v31);
    SSFileLog();
LABEL_38:
  }
}

void __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_25(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v35 = 138543362;
    v36 = objc_opt_class();
    v6 = v36;
    v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_275BC3000, v5, 0, "%{public}@: Attempting attestation using X509 certs for extended key", &v35, 12);

    if (!v7)
    {
      goto LABEL_13;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
    free(v7);
    v32 = v5;
    SSFileLog();
  }

LABEL_13:
  v8 = *(a1 + 32);
  v9 = *(v8 + 376);
  v10 = *(v8 + 352);
  v34 = 0;
  v11 = [v9 x509CertChainDataForAccountIdentifier:v10 purpose:1 regenerateCerts:1 error:&v34];
  v12 = v34;
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;

  if (!v12)
  {
    goto LABEL_27;
  }

  v15 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v15)
  {
    v15 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v16 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    LODWORD(v17) = v16 | 2;
  }

  else
  {
    LODWORD(v17) = v16;
  }

  v18 = [v15 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v17 = v17;
  }

  else
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_25;
  }

  v19 = objc_opt_class();
  v35 = 138543618;
  v36 = v19;
  v37 = 2114;
  v38 = v12;
  v20 = v19;
  LODWORD(v33) = 22;
  v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_275BC3000, v18, 16, "%{public}@: Failed extended attestation using X509 certs with error: %{public}@", &v35, v33);

  if (v21)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:4];
    free(v21);
    v32 = v18;
    SSFileLog();
LABEL_25:
  }

LABEL_27:
  v22 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v22)
  {
    v22 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v23 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    LODWORD(v24) = v23 | 2;
  }

  else
  {
    LODWORD(v24) = v23;
  }

  v25 = [v22 OSLogObject];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v24;
  }

  else
  {
    v24 &= 2u;
  }

  if (!v24)
  {
    goto LABEL_38;
  }

  v26 = objc_opt_class();
  v27 = MEMORY[0x277CCABB0];
  v28 = *(*(*(a1 + 40) + 8) + 40);
  v29 = v26;
  v30 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
  v35 = 138543618;
  v36 = v26;
  v37 = 2114;
  v38 = v30;
  LODWORD(v33) = 22;
  v31 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, v25, 0, "%{public}@: Found %{public}@ certs for extended key", &v35, v33);

  if (v31)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:4];
    free(v31);
    SSFileLog();
LABEL_38:
  }
}

void __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_27(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = a2;
  v6 = [v5 bytes];
  v7 = [v5 length];

  v8 = ISCopyEncodedBase64(v6, v7);
  [*(a1 + 32) addObject:v8];
}

void __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_2(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = a2;
  v6 = [v5 bytes];
  v7 = [v5 length];

  v8 = ISCopyEncodedBase64(v6, v7);
  [*(a1 + 32) addObject:v8];
}

- (id)_newUpdateTouchIDSettingsOperation
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ISStoreURLOperation);
  v4 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v4 setITunesStoreRequest:1];
  [v4 setURLBagKey:@"update-touch-id-settings"];
  [v4 setHTTPMethod:@"POST"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!+[ISBiometricStore shouldUseX509])
  {
    [v5 setObject:self->_accountIdentifier forKey:@"touchIdAttestation"];
    [v5 setObject:self->_attestationStringPurchase forKey:@"extendedAttestation"];
    goto LABEL_34;
  }

  certChainPrimary = [(ISBiometricUpdateTouchIDSettingsOperation *)self certChainPrimary];
  if ([certChainPrimary count])
  {
    [v5 setObject:certChainPrimary forKey:@"primaryX509Chain"];
    goto LABEL_18;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = certChainPrimary;
  v13 = objc_opt_class();
  v50 = v3;
  v14 = MEMORY[0x277CCABB0];
  v47 = v13;
  v15 = [v14 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
  v53 = 138543618;
  v54 = v13;
  certChainPrimary = v12;
  v55 = 2112;
  v56 = v15;
  v16 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Failed to find primary cert chain, item count: %@", &v53, 22);

  v3 = v50;
  if (v16)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
    free(v16);
    v45 = oSLogObject;
    SSFileLog();
LABEL_16:
  }

LABEL_18:
  certChainExtended = [(ISBiometricUpdateTouchIDSettingsOperation *)self certChainExtended];
  if (![certChainExtended count])
  {
    v51 = certChainPrimary;
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v20 = shouldLog2 | 2;
    }

    else
    {
      v20 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (v22)
    {
      v23 = v3;
      v24 = objc_opt_class();
      v25 = v5;
      v26 = MEMORY[0x277CCABB0];
      v48 = v24;
      v27 = [v26 numberWithUnsignedInteger:{objc_msgSend(certChainExtended, "count")}];
      v53 = 138543618;
      v54 = v24;
      v3 = v23;
      v55 = 2112;
      v56 = v27;
      LODWORD(v46) = 22;
      v28 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%{public}@: Failed to find extended cert chain, item count: %@", &v53, v46);

      v5 = v25;
      if (!v28)
      {
LABEL_32:

        certChainPrimary = v51;
        goto LABEL_33;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:4];
      free(v28);
      v45 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_32;
  }

  [v5 setObject:certChainExtended forKey:@"extendedX509Chain"];
LABEL_33:

LABEL_34:
  v52 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:100 options:0 error:{0, v45}];
  [v4 setHTTPBody:?];
  [(ISURLOperation *)v3 setRequestProperties:v4];
  if ([(ISBiometricUpdateTouchIDSettingsOperation *)self shouldSuppressAuthPrompts])
  {
    v29 = 1000;
  }

  else
  {
    v29 = 0;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    v32 = shouldLog3 | 2;
  }

  else
  {
    v32 = shouldLog3;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v32;
  }

  else
  {
    v34 = v32 & 2;
  }

  if (!v34)
  {
    goto LABEL_48;
  }

  v35 = v5;
  v36 = v4;
  selfCopy = self;
  v38 = v3;
  v39 = objc_opt_class();
  v40 = MEMORY[0x277CCABB0];
  v49 = v39;
  v41 = [v40 numberWithInteger:v29];
  v53 = 138543618;
  v54 = v39;
  v3 = v38;
  self = selfCopy;
  v4 = v36;
  v5 = v35;
  v55 = 2114;
  v56 = v41;
  LODWORD(v46) = 22;
  v42 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%{public}@: Authentication prompt style: %{public}@", &v53, v46);

  if (v42)
  {
    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v42 encoding:4];
    free(v42);
    SSFileLog();
LABEL_48:
  }

  v43 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccountIdentifier:self->_status];
  [v43 setCanCreateNewAccount:0];
  [v43 setCanSetActiveAccount:0];
  [v43 setPromptStyle:v29];
  [(ISURLOperation *)v3 setAuthenticationContext:v43];

  return v3;
}

@end