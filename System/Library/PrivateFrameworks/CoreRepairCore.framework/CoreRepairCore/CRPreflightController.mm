@interface CRPreflightController
- (BOOL)_diskImageSupportPreflight;
- (BOOL)challengeStrongComponents:(id)components responses:(id *)responses error:(id *)error;
- (BOOL)deltaComponents:(id *)components strongComponents:(id *)strongComponents error:(id *)error;
- (BOOL)issueRepairCert:(id *)cert keyBlob:(id *)blob error:(id *)error;
- (BOOL)queryRepairDelta:(id *)delta error:(id *)error;
- (BOOL)setComponentsState:(id)state withResponseDetails:(id)details;
- (BOOL)verify:(id)verify signature:(id)signature keyBlob:(id)blob;
- (CRPreflightController)init;
- (id)components:(id)components withState:(int64_t)state;
- (id)getPreflightEndpoint;
- (id)sendRequest:(id)request keyBlob:(id)blob error:(id *)error;
- (id)sign:(id)sign keyBlob:(id)blob;
- (void)preflight:(id)preflight withReply:(id)reply;
- (void)preflightPhase1:(id)phase1 withReply:(id)reply;
- (void)preflightPhase2:(id)phase2 withReply:(id)reply;
@end

@implementation CRPreflightController

- (CRPreflightController)init
{
  v7.receiver = self;
  v7.super_class = CRPreflightController;
  v2 = [(CRPreflightController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    getPreflightEndpoint = [(CRPreflightController *)v2 getPreflightEndpoint];
    preflightServiceName = v3->_preflightServiceName;
    v3->_preflightServiceName = getPreflightEndpoint;
  }

  return v3;
}

- (void)preflightPhase1:(id)phase1 withReply:(id)reply
{
  v86 = *MEMORY[0x1E69E9840];
  phase1Copy = phase1;
  replyCopy = reply;
  if (phase1Copy)
  {
    v8 = [phase1Copy objectForKeyedSubscript:@"miniPreflight"];

    if (v8)
    {
      self->_miniPreflight = [phase1Copy BOOLFromKey:@"miniPreflight" defaultValue:0 failed:0];
      v9 = handleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_miniPreflight)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        *buf = 138412290;
        v85 = v10;
        _os_log_impl(&dword_1CEDC5000, v9, OS_LOG_TYPE_DEFAULT, "Mini preflight: %@", buf, 0xCu);
      }
    }

    v11 = [phase1Copy objectForKeyedSubscript:@"socksHost"];

    if (v11)
    {
      v12 = [phase1Copy NSStringFromKey:@"socksHost" defaultValue:0 failed:0];
      socksHost = self->_socksHost;
      self->_socksHost = v12;

      v14 = handleForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_socksHost;
        *buf = 138412290;
        v85 = v15;
        _os_log_impl(&dword_1CEDC5000, v14, OS_LOG_TYPE_DEFAULT, "Socks host: %@", buf, 0xCu);
      }
    }

    v16 = [phase1Copy objectForKeyedSubscript:@"socksPort"];

    if (v16)
    {
      v17 = [phase1Copy NSNumberFromKey:@"socksPort" lowerBound:&unk_1F4BCDA28 upperBound:&unk_1F4BCDA40 defaultValue:0 failed:0];
      socksPort = self->_socksPort;
      self->_socksPort = v17;

      v19 = handleForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_socksPort;
        *buf = 138412290;
        v85 = v20;
        _os_log_impl(&dword_1CEDC5000, v19, OS_LOG_TYPE_DEFAULT, "Socks port: %@", buf, 0xCu);
      }
    }
  }

  if (os_variant_has_internal_content())
  {
    v21 = [[CRUserDefaults alloc] initWithSuiteName:@"com.apple.corerepaird.test"];
    v22 = [(CRUserDefaults *)v21 stringForKey:@"AxiomURL"];
    if (v22)
    {
      v23 = handleForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v85 = v22;
        _os_log_impl(&dword_1CEDC5000, v23, OS_LOG_TYPE_DEFAULT, "Overriding serverUrlString: %@", buf, 0xCu);
      }

      v24 = v22;
    }

    else
    {
      v24 = @"https://sklaxm.apple.com/axiom/SSR";
    }
  }

  else
  {
    v24 = @"https://sklaxm.apple.com/axiom/SSR";
  }

  v76 = 0;
  v77 = 0;
  v75 = 0;
  v25 = [(CRPreflightController *)self deltaComponents:&v77 strongComponents:&v76 error:&v75];
  v26 = v77;
  v27 = v76;
  v28 = v75;
  rawResponse3 = v28;
  v67 = v27;
  v68 = v24;
  if (!v25 || !v26 || v28)
  {
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase1:withReply:];
    }

    v54 = 0;
    v42 = 0;
    v33 = 0;
    v55 = 0;
    v69 = 0;
    v70 = 0;
    goto LABEL_65;
  }

  if ([v26 count])
  {
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v30 = [(CRPreflightController *)self issueRepairCert:&v74 keyBlob:&v73 error:&v72];
    v70 = v74;
    v31 = v73;
    v32 = v72;
    rawResponse3 = v32;
    v69 = v31;
    if (!v30 || v32)
    {
      phase = handleForCategory(0);
      if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
      {
        [CRPreflightController preflightPhase1:withReply:];
      }

      v54 = 0;
      v42 = 0;
      v33 = 0;
      goto LABEL_64;
    }

    v33 = +[CRPreflightRequest request];
    miniPreflight = [(CRPreflightController *)self miniPreflight];
    v35 = MEMORY[0x1E695DFF8];
    v36 = @"fullpreflight/phase1";
    if (miniPreflight)
    {
      v36 = @"minipreflight/phase1";
    }

    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v24, v36];
    v38 = [v35 URLWithString:v37];
    [v33 setServer:v38];

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [v33 setRequestID:uUIDString];

    v41 = [v70 objectAtIndexedSubscript:0];
    [v33 setBikCertificate:v41];

    [v33 setComponents:v27];
    [v33 setPhase:@"Phase1"];
    v71 = 0;
    v42 = [(CRPreflightController *)self sendRequest:v33 keyBlob:v31 error:&v71];
    v43 = v71;
    rawResponse3 = v43;
    if (!v42 || v43)
    {
      phase = handleForCategory(0);
      if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
      {
        [CRPreflightController preflightPhase1:v33 withReply:?];
      }

      goto LABEL_63;
    }

    if ([(CRPreflightController *)self isErrorResponse:v42])
    {
      v44 = handleForCategory(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [CRPreflightController preflightPhase1:v33 withReply:?];
      }

      errorCode = [v42 errorCode];
      v46 = [errorCode isEqual:@"10262"];

      if (v46)
      {
        v65 = MEMORY[0x1E696ABC0];
        v82 = *MEMORY[0x1E696A578];
        v47 = MEMORY[0x1E696AEC0];
        phase = [v33 phase];
        rawResponse = [v42 rawResponse];
        v50 = [v47 stringWithFormat:@"%@: Error response: %@", phase, rawResponse];
        v83 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v52 = v65;
        v53 = -92;
      }

      else
      {
        errorCode2 = [v42 errorCode];
        v59 = [errorCode2 isEqual:@"10261"];

        v66 = MEMORY[0x1E696ABC0];
        if (!v59)
        {
          v78 = *MEMORY[0x1E696A578];
          v61 = MEMORY[0x1E696AEC0];
          phase = [v33 phase];
          rawResponse2 = [v42 rawResponse];
          v63 = [v61 stringWithFormat:@"%@: Error response: %@", phase, rawResponse2];
          v79 = v63;
          v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
          rawResponse3 = [v66 errorWithDomain:@"com.apple.corerepair" code:-78 userInfo:v64];

          goto LABEL_63;
        }

        v80 = *MEMORY[0x1E696A578];
        v60 = MEMORY[0x1E696AEC0];
        phase = [v33 phase];
        rawResponse = [v42 rawResponse];
        v50 = [v60 stringWithFormat:@"%@: Error response: %@", phase, rawResponse];
        v81 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v52 = v66;
        v53 = -93;
      }

      rawResponse3 = [v52 errorWithDomain:@"com.apple.corerepair" code:v53 userInfo:v51];

LABEL_63:
      v54 = 0;
LABEL_64:
      v55 = 0;
LABEL_65:
      v56 = 0;
      goto LABEL_66;
    }

    v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v54 = v57;
    if (v31)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v57);
    }

    v55 = [(CRPreflightController *)self createPEMFromCerts:v70];
    if (v55)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v54);
    }

    rawResponse3 = [v42 rawResponse];

    if (!rawResponse3)
    {
      v56 = 1;
      goto LABEL_67;
    }

    phase = [v42 rawResponse];
    objc_msgSend_setObject_forKeyedSubscript_(v54);
  }

  else
  {
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, phase, OS_LOG_TYPE_DEFAULT, "No delta components", buf, 2u);
    }

    v54 = 0;
    v42 = 0;
    v33 = 0;
    v55 = 0;
    v69 = 0;
    v70 = 0;
  }

  rawResponse3 = 0;
  v56 = 1;
LABEL_66:

LABEL_67:
  if (replyCopy)
  {
    replyCopy[2](replyCopy, v56, v54, rawResponse3);
  }
}

- (void)preflightPhase2:(id)phase2 withReply:(id)reply
{
  v131 = *MEMORY[0x1E69E9840];
  phase2Copy = phase2;
  replyCopy = reply;
  v117 = 0;
  if (!phase2Copy)
  {
    v12 = 0;
    v14 = 0;
LABEL_35:
    v103 = v14;
    v104 = v12;
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase2:withReply:];
    }

    v32 = 0;
    v105 = 0;
    v106 = 0;
    v33 = 0;
    v102 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v30 = @"https://sklaxm.apple.com/axiom/SSR";
    goto LABEL_54;
  }

  v8 = [phase2Copy objectForKeyedSubscript:@"miniPreflight"];

  if (v8)
  {
    self->_miniPreflight = [phase2Copy BOOLFromKey:@"miniPreflight" defaultValue:0 failed:&v117];
    v9 = handleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_miniPreflight)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      *buf = 138412290;
      v130 = v10;
      _os_log_impl(&dword_1CEDC5000, v9, OS_LOG_TYPE_DEFAULT, "Mini preflight: %@", buf, 0xCu);
    }
  }

  v11 = [phase2Copy objectForKeyedSubscript:@"keyBlob"];

  if (v11)
  {
    v12 = [phase2Copy NSDataFromKey:@"keyBlob" defaultValue:0 failed:&v117];
    v13 = handleForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v130 = v12;
      _os_log_impl(&dword_1CEDC5000, v13, OS_LOG_TYPE_DEFAULT, "keyBlob input: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = [phase2Copy objectForKeyedSubscript:@"responsePhase1"];

  if (v15)
  {
    v14 = [phase2Copy NSDictionaryFromKey:@"responsePhase1" defaultValue:0 failed:&v117];
    v16 = handleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v130 = v14;
      _os_log_impl(&dword_1CEDC5000, v16, OS_LOG_TYPE_DEFAULT, "responsePhase1 input: %@", buf, 0xCu);
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = [phase2Copy objectForKeyedSubscript:@"socksHost"];

  if (v17)
  {
    v18 = [phase2Copy NSStringFromKey:@"socksHost" defaultValue:0 failed:0];
    socksHost = self->_socksHost;
    self->_socksHost = v18;

    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_socksHost;
      *buf = 138412290;
      v130 = v21;
      _os_log_impl(&dword_1CEDC5000, v20, OS_LOG_TYPE_DEFAULT, "Socks host: %@", buf, 0xCu);
    }
  }

  v22 = [phase2Copy objectForKeyedSubscript:@"socksPort"];

  if (v22)
  {
    v23 = [phase2Copy NSNumberFromKey:@"socksPort" lowerBound:&unk_1F4BCDA28 upperBound:&unk_1F4BCDA40 defaultValue:0 failed:0];
    socksPort = self->_socksPort;
    self->_socksPort = v23;

    v25 = handleForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_socksPort;
      *buf = 138412290;
      v130 = v26;
      _os_log_impl(&dword_1CEDC5000, v25, OS_LOG_TYPE_DEFAULT, "Socks port: %@", buf, 0xCu);
    }
  }

  if (!v12 || !v14)
  {
    goto LABEL_35;
  }

  if (os_variant_has_internal_content())
  {
    v27 = [[CRUserDefaults alloc] initWithSuiteName:@"com.apple.corerepaird.test"];
    v28 = [(CRUserDefaults *)v27 stringForKey:@"AxiomURL"];
    if (v28)
    {
      v29 = handleForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v130 = v28;
        _os_log_impl(&dword_1CEDC5000, v29, OS_LOG_TYPE_DEFAULT, "Overriding serverUrlString: %@", buf, 0xCu);
      }

      v30 = v28;
    }

    else
    {
      v30 = @"https://sklaxm.apple.com/axiom/SSR";
    }
  }

  else
  {
    v30 = @"https://sklaxm.apple.com/axiom/SSR";
  }

  v115 = 0;
  v116 = 0;
  v114 = 0;
  v38 = [(CRPreflightController *)self deltaComponents:&v116 strongComponents:&v115 error:&v114];
  v39 = v116;
  v40 = v115;
  v41 = v114;
  v36 = v41;
  v103 = v14;
  v104 = v12;
  v105 = v39;
  v102 = v40;
  if (!v38 || !v39 || v41)
  {
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase1:withReply:];
    }

    v32 = 0;
    v106 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_52;
  }

  if (![v39 count])
  {
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, phase, OS_LOG_TYPE_DEFAULT, "No delta components", buf, 2u);
    }

    v32 = 0;
    v106 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 1;
    goto LABEL_54;
  }

  v34 = [[CRPreflightResponse alloc] initWithDictionary:v14];
  componentChallenges = [(CRPreflightResponse *)v34 componentChallenges];

  if (!componentChallenges)
  {
    v106 = 0;
    goto LABEL_61;
  }

  componentChallenges2 = [(CRPreflightResponse *)v34 componentChallenges];
  v112 = 0;
  v113 = 0;
  v44 = [(CRPreflightController *)self challengeStrongComponents:componentChallenges2 responses:&v113 error:&v112];
  v106 = v113;
  v36 = v112;

  if (!v44 || v36)
  {
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase2:withReply:];
    }

    v32 = 0;
    v33 = 0;
LABEL_52:
    v35 = 0;
LABEL_53:
    v37 = 0;
    goto LABEL_54;
  }

  v39 = v105;
LABEL_61:
  v45 = [(CRPreflightController *)self filteredPhase2Components:v39 response:v34];
  if (!v45)
  {
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase2:withReply:];
    }

    v32 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_53;
  }

  v33 = v45;
  v35 = +[CRPreflightRequest request];
  miniPreflight = [(CRPreflightController *)self miniPreflight];
  v47 = MEMORY[0x1E695DFF8];
  v48 = @"fullpreflight/phase2";
  if (miniPreflight)
  {
    v48 = @"minipreflight/phase2";
  }

  v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v30, v48];
  v50 = [v47 URLWithString:v49];
  [v35 setServer:v50];

  requestID = [(CRPreflightResponse *)v34 requestID];
  [v35 setRequestID:requestID];

  sessionID = [(CRPreflightResponse *)v34 sessionID];
  [v35 setSessionID:sessionID];

  [v35 setComponents:v33];
  [v35 setComponentResponses:v106];
  activationChallenges = [(CRPreflightResponse *)v34 activationChallenges];
  [v35 setActivationResponses:activationChallenges];

  signatureChallenge = [(CRPreflightResponse *)v34 signatureChallenge];
  [v35 setSignatureChallenge:signatureChallenge];

  [v35 setPhase:@"Phase2"];
  v111 = 0;
  v34 = [(CRPreflightController *)self sendRequest:v35 keyBlob:v12 error:&v111];
  v55 = v111;
  v36 = v55;
  if (!v34 || v55)
  {
    phase = handleForCategory(0);
    if (os_log_type_enabled(phase, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase1:v35 withReply:?];
    }

    goto LABEL_78;
  }

  if ([(CRPreflightController *)self isErrorResponse:v34])
  {
    v56 = handleForCategory(0);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController preflightPhase1:v35 withReply:?];
    }

    v97 = MEMORY[0x1E696ABC0];
    v127 = *MEMORY[0x1E696A578];
    v57 = MEMORY[0x1E696AEC0];
    phase = [v35 phase];
    rawResponse = [(CRPreflightResponse *)v34 rawResponse];
    v58 = [v57 stringWithFormat:@"%@: Error response: %@", phase, rawResponse];
    v128 = v58;
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
    v36 = [v97 errorWithDomain:@"com.apple.corerepair" code:-79 userInfo:v59];

    goto LABEL_78;
  }

  status = [(CRPreflightResponse *)v34 status];
  if ([status isEqual:@"200"])
  {
    details = [(CRPreflightResponse *)v34 details];

    if (details)
    {
      v98 = MEMORY[0x1E696ABC0];
      v125 = *MEMORY[0x1E696A578];
      v62 = MEMORY[0x1E696AEC0];
      phase = [(CRPreflightResponse *)v34 details];
      v63 = [v62 stringWithFormat:@"Success status, but with failure details: %@", phase];
      v126 = v63;
      v64 = MEMORY[0x1E695DF20];
      v65 = &v126;
      v66 = &v125;
LABEL_86:
      v70 = [v64 dictionaryWithObjects:v65 forKeys:v66 count:1];
      v36 = [v98 errorWithDomain:@"com.apple.corerepair" code:-79 userInfo:v70];

LABEL_78:
      v32 = 0;
      goto LABEL_53;
    }
  }

  else
  {
  }

  status2 = [(CRPreflightResponse *)v34 status];
  if ([status2 isEqual:@"207"])
  {
    details2 = [(CRPreflightResponse *)v34 details];

    if (!details2)
    {
      v98 = MEMORY[0x1E696ABC0];
      v123 = *MEMORY[0x1E696A578];
      v69 = MEMORY[0x1E696AEC0];
      phase = [(CRPreflightResponse *)v34 details];
      v63 = [v69 stringWithFormat:@"Partial success status, but without failure details: %@", phase];
      v124 = v63;
      v64 = MEMORY[0x1E695DF20];
      v65 = &v124;
      v66 = &v123;
      goto LABEL_86;
    }
  }

  else
  {
  }

  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_msgSend_setObject_forKeyedSubscript_(v32);
  status3 = [(CRPreflightResponse *)v34 status];

  if (status3)
  {
    status4 = [(CRPreflightResponse *)v34 status];
    objc_msgSend_setObject_forKeyedSubscript_(v32);
  }

  details3 = [(CRPreflightResponse *)v34 details];

  if (details3)
  {
    details4 = [(CRPreflightResponse *)v34 details];
    objc_msgSend_setObject_forKeyedSubscript_(v32);
  }

  status5 = [(CRPreflightResponse *)v34 status];
  if ([status5 isEqual:@"200"])
  {
  }

  else
  {
    status6 = [(CRPreflightResponse *)v34 status];
    v99 = [status6 isEqual:@"207"];

    if (!v99)
    {
      v101 = MEMORY[0x1E696ABC0];
      v118 = *MEMORY[0x1E696A578];
      v92 = MEMORY[0x1E696AEC0];
      phase = [(CRPreflightResponse *)v34 status];
      v95 = [v92 stringWithFormat:@"Server response: %@", phase];
      v119 = v95;
      v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
      v36 = [v101 errorWithDomain:@"com.apple.corerepair" code:-79 userInfo:v93];

      goto LABEL_53;
    }
  }

  v100 = v30;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v33 = v33;
  v77 = [v33 countByEnumeratingWithState:&v107 objects:v122 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v108;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v108 != v79)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v107 + 1) + 8 * i) setState:1];
      }

      v78 = [v33 countByEnumeratingWithState:&v107 objects:v122 count:16];
    }

    while (v78);
  }

  details5 = [(CRPreflightResponse *)v34 details];
  v82 = [(CRPreflightController *)self setComponentsState:v33 withResponseDetails:details5];

  if (v82)
  {
    v37 = 1;
    v83 = [(CRPreflightController *)self components:v33 withState:1];
    objc_msgSend_setObject_forKeyedSubscript_(v32);

    v84 = [(CRPreflightController *)self components:v33 withState:2];
    objc_msgSend_setObject_forKeyedSubscript_(v32);

    v85 = [(CRPreflightController *)self components:v33 withState:3];
    objc_msgSend_setObject_forKeyedSubscript_(v32);

    v86 = [(CRPreflightController *)self components:v33 withState:6];
    objc_msgSend_setObject_forKeyedSubscript_(v32);

    v87 = [(CRPreflightController *)self components:v33 withState:5];
    objc_msgSend_setObject_forKeyedSubscript_(v32);

    v88 = [(CRPreflightController *)self components:v33 withState:4];
    objc_msgSend_setObject_forKeyedSubscript_(v32);

    phase = [(CRPreflightController *)self components:v33 withState:7];
    objc_msgSend_setObject_forKeyedSubscript_(v32);
    v36 = 0;
  }

  else
  {
    v94 = MEMORY[0x1E696ABC0];
    v120 = *MEMORY[0x1E696A578];
    v89 = MEMORY[0x1E696AEC0];
    phase = [(CRPreflightResponse *)v34 details];
    v90 = [v89 stringWithFormat:@"Failed to set components status: %@", phase];
    v121 = v90;
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v36 = [v94 errorWithDomain:@"com.apple.corerepair" code:-79 userInfo:v91];

    v37 = 0;
  }

  v30 = v100;
LABEL_54:

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v37, v32, v36);
  }
}

- (void)preflight:(id)preflight withReply:(id)reply
{
  preflightCopy = preflight;
  replyCopy = reply;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  if (preflightCopy)
  {
    v8 = [preflightCopy mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__CRPreflightController_preflight_withReply___block_invoke;
  v15[3] = &unk_1E83B3F88;
  v15[4] = &v28;
  v15[5] = &v16;
  v15[6] = &v22;
  [(CRPreflightController *)self preflightPhase1:v8 withReply:v15];
  if (*(v29 + 24) == 1 && !v23[5])
  {
    v10 = [v17[5] objectForKeyedSubscript:@"keyBlob"];

    if (v10)
    {
      v11 = [v17[5] objectForKeyedSubscript:@"keyBlob"];
      objc_msgSend_setObject_forKeyedSubscript_(v9);
    }

    v12 = [v17[5] objectForKeyedSubscript:@"responsePhase1"];

    if (v12)
    {
      v13 = [v17[5] objectForKeyedSubscript:@"responsePhase1"];
      objc_msgSend_setObject_forKeyedSubscript_(v9);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__CRPreflightController_preflight_withReply___block_invoke_2;
    v14[3] = &unk_1E83B3F88;
    v14[4] = &v28;
    v14[5] = &v16;
    v14[6] = &v22;
    [(CRPreflightController *)self preflightPhase2:v9 withReply:v14];
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(v29 + 24), v17[5], v23[5]);
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

void __45__CRPreflightController_preflight_withReply___block_invoke(void *a1, char a2, void *a3, void *a4)
{
  v7 = a4;
  *(*(a1[4] + 8) + 24) = a2;
  v8 = [a3 mutableCopy];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
}

void __45__CRPreflightController_preflight_withReply___block_invoke_2(void *a1, char a2, void *a3, void *a4)
{
  v7 = a4;
  *(*(a1[4] + 8) + 24) = a2;
  v8 = [a3 mutableCopy];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
}

- (id)sign:(id)sign keyBlob:(id)blob
{
  signCopy = sign;
  blobCopy = blob;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_preflightServiceName options:0];
  connectionToService = self->_connectionToService;
  self->_connectionToService = v8;

  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
  [(NSXPCConnection *)self->_connectionToService setRemoteObjectInterface:v10];

  [(NSXPCConnection *)self->_connectionToService resume];
  v11 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__CRPreflightController_sign_keyBlob___block_invoke_157;
  v14[3] = &unk_1E83B3FD0;
  v14[4] = self;
  v14[5] = &v15;
  [v11 sign:signCopy keyBlob:blobCopy withReply:v14];

  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

void __38__CRPreflightController_sign_keyBlob___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__CRPreflightController_sign_keyBlob___block_invoke_cold_1();
  }
}

void __38__CRPreflightController_sign_keyBlob___block_invoke_157(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1CEDC5000, v4, OS_LOG_TYPE_DEFAULT, "result: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  [*(*(a1 + 32) + 16) invalidate];
}

- (BOOL)_diskImageSupportPreflight
{
  if (MGGetBoolAnswer())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.diskimagecorerepair.preflightControl" options:0];
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
    [v2 setRemoteObjectInterface:v3];

    [v2 resume];
    v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_163];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__CRPreflightController__diskImageSupportPreflight__block_invoke_164;
    v7[3] = &unk_1E83B3FF8;
    v7[4] = &v8;
    [v4 sign:0 keyBlob:0 withReply:v7];

    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __51__CRPreflightController__diskImageSupportPreflight__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1CEDC5000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v4, 0xCu);
  }
}

void __51__CRPreflightController__diskImageSupportPreflight__block_invoke_164(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = handleForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"com.apple.diskimagecorerepair.preflightControl";
    _os_log_impl(&dword_1CEDC5000, v2, OS_LOG_TYPE_DEFAULT, "Got reply from %@", &v3, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (id)getPreflightEndpoint
{
  if ([(CRPreflightController *)self _diskImageSupportPreflight])
  {
    return @"com.apple.diskimagecorerepair.preflightControl";
  }

  else
  {
    return @"com.apple.corerepair.preflightControl";
  }
}

- (BOOL)verify:(id)verify signature:(id)signature keyBlob:(id)blob
{
  verifyCopy = verify;
  signatureCopy = signature;
  blobCopy = blob;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_preflightServiceName options:0];
  connectionToService = self->_connectionToService;
  self->_connectionToService = v11;

  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
  [(NSXPCConnection *)self->_connectionToService setRemoteObjectInterface:v13];

  [(NSXPCConnection *)self->_connectionToService resume];
  v14 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_166];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__CRPreflightController_verify_signature_keyBlob___block_invoke_167;
  v16[3] = &unk_1E83B4020;
  v16[4] = self;
  v16[5] = &v17;
  [v14 verify:verifyCopy signature:signatureCopy keyBlob:blobCopy withReply:v16];

  LOBYTE(self) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return self;
}

void __50__CRPreflightController_verify_signature_keyBlob___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__CRPreflightController_verify_signature_keyBlob___block_invoke_cold_1();
  }
}

uint64_t __50__CRPreflightController_verify_signature_keyBlob___block_invoke_167(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_1CEDC5000, v4, OS_LOG_TYPE_DEFAULT, "success: %d", v6, 8u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  return [*(*(a1 + 32) + 16) invalidate];
}

- (id)components:(id)components withState:(int64_t)state
{
  v33 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  v6 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = componentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    v26 = *v29;
    do
    {
      v11 = 0;
      v27 = v9;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        if ([v12 state] == state)
        {
          v13 = objc_alloc(MEMORY[0x1E695DEF0]);
          identifier = [v12 identifier];
          v15 = [v13 initWithBase64EncodedString:identifier options:0];

          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v15 encoding:4];
          v17 = MEMORY[0x1E696AEC0];
          type = [v12 type];
          v19 = type;
          if (v16)
          {
            v20 = [v17 stringWithFormat:@"%@-%@", type, v16];
          }

          else
          {
            [v12 identifier];
            v21 = v7;
            stateCopy = state;
            v24 = v23 = v6;
            v20 = [v17 stringWithFormat:@"%@-%@", v19, v24];

            v6 = v23;
            state = stateCopy;
            v7 = v21;
            v10 = v26;
          }

          [v6 addObject:v20];
          v9 = v27;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  return v6;
}

- (BOOL)setComponentsState:(id)state withResponseDetails:(id)details
{
  v57 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  detailsCopy = details;
  if (!detailsCopy)
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, v7, OS_LOG_TYPE_DEFAULT, "no details in response", buf, 2u);
    }

    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController setComponentsState:withResponseDetails:];
    }

    v31 = 0;
    goto LABEL_59;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = detailsCopy;
  v40 = [v7 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (!v40)
  {
LABEL_50:
    v31 = 1;
    goto LABEL_59;
  }

  v35 = detailsCopy;
  v9 = *v50;
  *&v8 = 138412290;
  v34 = v8;
  v37 = v7;
  v38 = stateCopy;
  v36 = *v50;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v50 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v49 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v32 = handleForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [CRPreflightController setComponentsState:withResponseDetails:];
        }

LABEL_57:
        v31 = 0;
        goto LABEL_58;
      }

      v12 = v11;
      v13 = [v12 objectForKeyedSubscript:@"Type"];
      v14 = [v12 objectForKeyedSubscript:@"Identifier"];
      v15 = [v12 objectForKeyedSubscript:@"status"];
      if (v13)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      v17 = v16 || v15 == 0;
      v18 = !v17;
      v43 = v18;
      v41 = v10;
      v42 = v15;
      if (v17)
      {
        v21 = handleForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = v34;
          v55 = v12;
          _os_log_error_impl(&dword_1CEDC5000, v21, OS_LOG_TYPE_ERROR, "details item in response malformed: %@", buf, 0xCu);
        }
      }

      else
      {
        v19 = v15;
        v39 = v12;
        if ([v15 isEqual:@"10230"])
        {
          v20 = 2;
        }

        else if ([v19 isEqual:@"10260"])
        {
          v20 = 3;
        }

        else if ([v19 isEqual:@"10261"])
        {
          v20 = 4;
        }

        else if ([v19 isEqual:@"10262"])
        {
          v20 = 5;
        }

        else
        {
          v22 = [v19 isEqual:@"20100"];
          v20 = 6;
          if (v22)
          {
            v20 = 7;
          }
        }

        v44 = v20;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v21 = stateCopy;
        v23 = [v21 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v46;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v46 != v25)
              {
                objc_enumerationMutation(v21);
              }

              v27 = *(*(&v45 + 1) + 8 * i);
              type = [v27 type];
              if ([type isEqual:v13])
              {
                identifier = [v27 identifier];
                v30 = [identifier isEqual:v14];

                if (v30)
                {
                  [v27 setState:v44];
                }
              }

              else
              {
              }
            }

            v24 = [v21 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v24);
          v7 = v37;
          stateCopy = v38;
          v9 = v36;
        }

        v12 = v39;
      }

      if (!v43)
      {
        goto LABEL_57;
      }

      v10 = v41 + 1;
    }

    while (v41 + 1 != v40);
    v31 = 1;
    v40 = [v7 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v40)
    {
      continue;
    }

    break;
  }

LABEL_58:
  detailsCopy = v35;
LABEL_59:

  return v31;
}

- (BOOL)deltaComponents:(id *)components strongComponents:(id *)strongComponents error:(id *)error
{
  v64 = *MEMORY[0x1E69E9840];
  v41 = objc_opt_new();
  v40 = objc_opt_new();
  v52 = 0;
  v53 = 0;
  v9 = [(CRPreflightController *)self queryRepairDelta:&v53 error:&v52];
  v10 = v53;
  v11 = v52;
  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  if (!v13)
  {
    v33 = handleForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [CRPreflightController deltaComponents:strongComponents:error:];
    }

    v32 = v12;
    if (!error)
    {
      goto LABEL_41;
    }

LABEL_40:
    *error = v32;
    goto LABEL_41;
  }

  componentsCopy = components;
  strongComponentsCopy = strongComponents;
  v37 = v11;
  v38 = v13;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = v10;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v49;
    do
    {
      v17 = 0;
      v42 = v15;
      do
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v48 + 1) + 8 * v17);
        v19 = [v18 objectForKeyedSubscript:@"key"];
        v20 = [v18 objectForKeyedSubscript:@"identifier"];
        v21 = [v18 objectForKeyedSubscript:@"asid"];
        v22 = handleForCategory(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v56 = "[CRPreflightController deltaComponents:strongComponents:error:]";
          v57 = 2112;
          v58 = v19;
          v59 = 2112;
          v60 = v20;
          v61 = 2112;
          v62 = v21;
          _os_log_debug_impl(&dword_1CEDC5000, v22, OS_LOG_TYPE_DEBUG, "%s: key: %@ identifier: %@ asid: %@", buf, 0x2Au);
        }

        if (v19)
        {
          v23 = v20 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          v24 = v16;
          v25 = [[CRPreflightRequestComponent alloc] initWithComponentType:v19 identifier:v20 asid:v21];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v26 = [&unk_1F4BCD240 countByEnumeratingWithState:&v44 objects:v54 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v45;
            while (2)
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v45 != v28)
                {
                  objc_enumerationMutation(&unk_1F4BCD240);
                }

                if ([*(*(&v44 + 1) + 8 * i) isEqual:v19])
                {
                  [v40 addObject:v25];
                  goto LABEL_26;
                }
              }

              v27 = [&unk_1F4BCD240 countByEnumeratingWithState:&v44 objects:v54 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

LABEL_26:
          [v41 addObject:v25];

          v16 = v24;
          v15 = v42;
        }

        ++v17;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v48 objects:v63 count:16];
    }

    while (v15);
  }

  v30 = handleForCategory(0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [CRPreflightController deltaComponents:strongComponents:error:];
  }

  v31 = handleForCategory(0);
  v10 = v39;
  v13 = v38;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [CRPreflightController deltaComponents:strongComponents:error:];
  }

  v12 = v37;
  if (componentsCopy)
  {
    *componentsCopy = v41;
  }

  v32 = v40;
  error = strongComponentsCopy;
  if (strongComponentsCopy)
  {
    goto LABEL_40;
  }

LABEL_41:

  return v13;
}

- (BOOL)queryRepairDelta:(id *)delta error:(id *)error
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_preflightServiceName options:0];
  connectionToService = self->_connectionToService;
  self->_connectionToService = v7;

  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
  [(NSXPCConnection *)self->_connectionToService setRemoteObjectInterface:v9];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
  remoteObjectInterface = [(NSXPCConnection *)self->_connectionToService remoteObjectInterface];
  [remoteObjectInterface setClasses:v15 forSelector:sel_queryRepairDeltaWithReply_ argumentIndex:1 ofReply:1];

  [(NSXPCConnection *)self->_connectionToService resume];
  v17 = self->_connectionToService;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__CRPreflightController_queryRepairDelta_error___block_invoke;
  v22[3] = &unk_1E83B4048;
  v22[4] = &v27;
  v18 = [(NSXPCConnection *)v17 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __48__CRPreflightController_queryRepairDelta_error___block_invoke_203;
  v21[3] = &unk_1E83B4070;
  v21[6] = &v33;
  v21[7] = &v27;
  v21[4] = self;
  v21[5] = &v23;
  [v18 queryRepairDeltaWithReply:v21];

  if (delta)
  {
    *delta = v34[5];
  }

  if (error)
  {
    *error = v28[5];
  }

  v19 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v19;
}

void __48__CRPreflightController_queryRepairDelta_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__CRPreflightController_queryRepairDelta_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __48__CRPreflightController_queryRepairDelta_error___block_invoke_203(void *a1, int a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = handleForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109120;
    LODWORD(v18) = a2;
    _os_log_impl(&dword_1CEDC5000, v9, OS_LOG_TYPE_DEFAULT, "queryRepairDelta success: %d", &v17, 8u);
  }

  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&dword_1CEDC5000, v10, OS_LOG_TYPE_DEFAULT, "queryRepairDelta results: %@", &v17, 0xCu);
  }

  *(*(a1[5] + 8) + 24) = a2;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
  v13 = v7;

  v14 = *(a1[7] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v8;
  v16 = v8;

  [*(a1[4] + 16) invalidate];
}

- (BOOL)issueRepairCert:(id *)cert keyBlob:(id *)blob error:(id *)error
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v9 = objc_opt_new();
  if ([(CRPreflightController *)self miniPreflight])
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9);
  }

  socksHost = [(CRPreflightController *)self socksHost];
  if (socksHost)
  {
    socksPort = [(CRPreflightController *)self socksPort];

    if (socksPort)
    {
      socksHost2 = [(CRPreflightController *)self socksHost];
      objc_msgSend_setObject_forKeyedSubscript_(v9);

      socksPort2 = [(CRPreflightController *)self socksPort];
      objc_msgSend_setObject_forKeyedSubscript_(v9);
    }
  }

  v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_preflightServiceName options:0];
  connectionToService = self->_connectionToService;
  self->_connectionToService = v14;

  v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
  [(NSXPCConnection *)self->_connectionToService setRemoteObjectInterface:v16];

  [(NSXPCConnection *)self->_connectionToService resume];
  v17 = self->_connectionToService;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__CRPreflightController_issueRepairCert_keyBlob_error___block_invoke;
  v22[3] = &unk_1E83B4048;
  v22[4] = &v27;
  v18 = [(NSXPCConnection *)v17 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55__CRPreflightController_issueRepairCert_keyBlob_error___block_invoke_205;
  v21[3] = &unk_1E83B4098;
  v21[6] = &v33;
  v21[7] = &v39;
  v21[8] = &v27;
  v21[4] = self;
  v21[5] = &v23;
  [v18 issueRepairCert:v9 withReply:v21];

  if (cert)
  {
    *cert = v40[5];
  }

  if (blob)
  {
    *blob = v34[5];
  }

  if (error)
  {
    *error = v28[5];
  }

  v19 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v19;
}

void __55__CRPreflightController_issueRepairCert_keyBlob_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__CRPreflightController_queryRepairDelta_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __55__CRPreflightController_issueRepairCert_keyBlob_error___block_invoke_205(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = handleForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v9;
    _os_log_impl(&dword_1CEDC5000, v12, OS_LOG_TYPE_DEFAULT, "issueRepairCert key: %@", &v23, 0xCu);
  }

  v13 = handleForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v10;
    _os_log_impl(&dword_1CEDC5000, v13, OS_LOG_TYPE_DEFAULT, "issueRepairCert certs: %@", &v23, 0xCu);
  }

  *(*(a1[5] + 8) + 24) = a2;
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v9;
  v16 = v9;

  v17 = *(a1[7] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v10;
  v19 = v10;

  v20 = *(a1[8] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v11;
  v22 = v11;

  [*(a1[4] + 16) invalidate];
}

- (BOOL)challengeStrongComponents:(id)components responses:(id *)responses error:(id *)error
{
  componentsCopy = components;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__1;
  v42 = __Block_byref_object_dispose__1;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v9 = objc_opt_new();
  objc_msgSend_setObject_forKeyedSubscript_(v9);
  socksHost = [(CRPreflightController *)self socksHost];
  if (socksHost)
  {
    socksPort = [(CRPreflightController *)self socksPort];

    if (socksPort)
    {
      socksHost2 = [(CRPreflightController *)self socksHost];
      objc_msgSend_setObject_forKeyedSubscript_(v9);

      socksPort2 = [(CRPreflightController *)self socksPort];
      objc_msgSend_setObject_forKeyedSubscript_(v9);
    }
  }

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
  v19 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_preflightServiceName options:0];
  v20 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BCFA48];
  [v19 setRemoteObjectInterface:v20];

  remoteObjectInterface = [v19 remoteObjectInterface];
  [remoteObjectInterface setClasses:v18 forSelector:sel_challengeStrongComponents_withReply_ argumentIndex:0 ofReply:0];

  remoteObjectInterface2 = [v19 remoteObjectInterface];
  [remoteObjectInterface2 setClasses:v18 forSelector:sel_challengeStrongComponents_withReply_ argumentIndex:1 ofReply:1];

  [v19 resume];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__CRPreflightController_challengeStrongComponents_responses_error___block_invoke;
  v27[3] = &unk_1E83B4048;
  v27[4] = &v38;
  v23 = [v19 synchronousRemoteObjectProxyWithErrorHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67__CRPreflightController_challengeStrongComponents_responses_error___block_invoke_211;
  v26[3] = &unk_1E83B4070;
  v26[6] = &v38;
  v26[7] = &v28;
  v26[4] = self;
  v26[5] = &v34;
  [v23 challengeStrongComponents:v9 withReply:v26];

  if (error)
  {
    *error = v39[5];
  }

  if (responses)
  {
    *responses = v29[5];
  }

  v24 = *(v35 + 24);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  return v24;
}

void __67__CRPreflightController_challengeStrongComponents_responses_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__CRPreflightController_queryRepairDelta_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __67__CRPreflightController_challengeStrongComponents_responses_error___block_invoke_211(void *a1, char a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  objc_storeStrong((*(a1[7] + 8) + 40), a3);
  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(a1[7] + 8) + 40);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_1CEDC5000, v10, OS_LOG_TYPE_DEFAULT, "Challenge components response: %@", &v12, 0xCu);
  }

  [*(a1[4] + 16) invalidate];
}

- (id)sendRequest:(id)request keyBlob:(id)blob error:(id *)error
{
  v97[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  blobCopy = blob;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__1;
  v80 = __Block_byref_object_dispose__1;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__1;
  v70 = __Block_byref_object_dispose__1;
  v71 = 0;
  v53 = objc_opt_new();
  if (!requestCopy)
  {
    v22 = MEMORY[0x1E696ABC0];
    v96 = *MEMORY[0x1E696A578];
    v97[0] = @"No request";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v96 count:1];
    v16 = [v22 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
LABEL_13:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v51 = 0;
    v52 = 0;
    payload = 0;
    server = 0;
    goto LABEL_14;
  }

  server = [requestCopy server];
  if (!server)
  {
    v23 = MEMORY[0x1E696ABC0];
    v94 = *MEMORY[0x1E696A578];
    v95 = @"No server URL";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    v16 = [v23 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
    goto LABEL_13;
  }

  payload = [requestCopy payload];
  if (!payload)
  {
    v27 = MEMORY[0x1E696ABC0];
    v92 = *MEMORY[0x1E696A578];
    v93 = @"No request payload";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
    v16 = [v27 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v51 = 0;
    v52 = 0;
    payload = 0;
    goto LABEL_14;
  }

  if (blobCopy)
  {
    signatureChallenge = [requestCopy signatureChallenge];
    v11 = signatureChallenge == 0;

    if (v11)
    {
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v12 = handleForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEDC5000, v12, OS_LOG_TYPE_DEFAULT, "Signing server nonce ...", buf, 2u);
      }

      signatureChallenge2 = [requestCopy signatureChallenge];
      v51 = [(CRPreflightController *)self sign:signatureChallenge2 keyBlob:blobCopy];

      if (!v51)
      {
        v46 = MEMORY[0x1E696ABC0];
        v90 = *MEMORY[0x1E696A578];
        v91 = @"Failed to sign server nonce";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v16 = [v46 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v51 = 0;
        v52 = 0;
        goto LABEL_14;
      }

      v52 = [v51 base64EncodedStringWithOptions:0];
      if (!v52)
      {
        v14 = MEMORY[0x1E696ABC0];
        v88 = *MEMORY[0x1E696A578];
        v89 = @"Failed to encode server nonce signature";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v16 = [v14 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v52 = 0;
LABEL_14:
        v24 = v67[5];
        v67[5] = v16;
LABEL_15:

LABEL_16:
        v25 = 0;
        goto LABEL_17;
      }
    }

    v28 = handleForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, v28, OS_LOG_TYPE_DEFAULT, "Signing request ...", buf, 2u);
    }

    v29 = [(CRPreflightController *)self sign:payload keyBlob:blobCopy];
    v21 = v29;
    if (!v29)
    {
      v47 = MEMORY[0x1E696ABC0];
      v86 = *MEMORY[0x1E696A578];
      v87 = @"Failed to sign request";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      v16 = [v47 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_14;
    }

    v17 = [v29 base64EncodedStringWithOptions:0];
    if (!v17)
    {
      v48 = MEMORY[0x1E696ABC0];
      v84 = *MEMORY[0x1E696A578];
      v85 = @"Failed to encode request signature";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      v16 = [v48 errorWithDomain:@"com.apple.corerepair" code:-80 userInfo:v15];
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v17 = 0;
    v21 = 0;
  }

  socksHost = [(CRPreflightController *)self socksHost];
  if (socksHost)
  {
    socksPort = [(CRPreflightController *)self socksPort];
    v32 = socksPort == 0;

    if (!v32)
    {
      socksHost2 = [(CRPreflightController *)self socksHost];
      objc_msgSend_setObject_forKeyedSubscript_(v53);

      socksPort2 = [(CRPreflightController *)self socksPort];
      objc_msgSend_setObject_forKeyedSubscript_(v53);
    }
  }

  phase = [requestCopy phase];

  if (phase)
  {
    phase2 = [requestCopy phase];
    objc_msgSend_setObject_forKeyedSubscript_(v53);
  }

  v18 = [MEMORY[0x1E696AD68] requestWithURL:server cachePolicy:0 timeoutInterval:120.0];
  [v18 setHTTPMethod:@"POST"];
  [v27 setValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v6, "length")];
  [v27 setValue:v28 forHTTPHeaderField:@"Content-Length"];

  [v27 setHTTPBody:v6];
  v29 = handleForCategory(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    socksHost = [v6 length];
    *buf = 67109120;
    LODWORD(v70) = socksHost;
    _os_log_impl(&dword_1CEDC5000, v29, OS_LOG_TYPE_DEFAULT, "content length is:%d", buf, 8u);
  }

  socksPort = [MEMORY[0x1E696AF78] sessionWithConfiguration:signatureChallenge delegate:self delegateQueue:0];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __71__CRCAttestationManager_sendChallengeRequestWith_serverResponse_error___block_invoke;
  v40[3] = &unk_1E83B4270;
  v40[4] = &v51;
  v40[5] = &v45;
  v40[6] = &v41;
  v40[7] = &v57;
  v32 = [socksPort dataTaskWithRequest:v27 completionHandler:v40];
  socksHost2 = v64[5];
  v64[5] = v32;

  socksPort2 = v58[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CRCAttestationManager_sendChallengeRequestWith_serverResponse_error___block_invoke_225;
  block[3] = &unk_1E83B4298;
  block[4] = &v57;
  block[5] = &v63;
  dispatch_group_async(socksPort2, payload, block);
  dispatch_group_wait(v58[5], 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v52[5];
  }

  if (blob)
  {
    *blob = v46[5];
  }

  phase = *(v42 + 24);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
  return phase & 1;
}

@end