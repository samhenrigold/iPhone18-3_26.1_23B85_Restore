@interface AlohaPairingVerifier
- (AlohaPairingVerifier)initWithController:(shared_ptr<SEUpdater:(const AlohaVerificationOptions *)controller :P73BaseSEController>)a3 options:;
- (BOOL)injectSEPKtoSSE:(id *)e;
- (BOOL)injectSEPKtoSSE_Debug:(id *)debug;
- (BOOL)injectSEPKtoSSE_FDR:(id *)r;
- (id)getSharingRequestWithSignature:(id *)signature withError:(id *)error;
- (id)performAlohaVerification;
- (id)performAuthKeySharingWithAppleSSE:(id)e sharingRequest:(id)request requestSignature:(id)signature resultSignature:(id *)resultSignature withError:(id *)error;
- (void)invalidate;
@end

@implementation AlohaPairingVerifier

- (AlohaPairingVerifier)initWithController:(shared_ptr<SEUpdater:(const AlohaVerificationOptions *)controller :P73BaseSEController>)a3 options:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v15.receiver = self;
  v15.super_class = AlohaPairingVerifier;
  v6 = [(AlohaPairingVerifier *)&v15 init:a3.__ptr_];
  if (v6)
  {
    v7 = [SETransceiveHelper alloc];
    v8 = *(ptr + 1);
    v13 = *ptr;
    v14 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = [(SETransceiveHelper *)v7 initWithSEController:&v13];
    transceiver = v6->_transceiver;
    v6->_transceiver = v9;

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    seid = v6->_seid;
    v6->_seid = 0;

    v6->_options = cntrl;
  }

  return v6;
}

- (void)invalidate
{
  _ObjCLog(2, "[AlohaPairingVerifier invalidate]", &cfstr_Alohapairingve_0.isa);
  transceiver = self->_transceiver;

  [(SETransceiveHelper *)transceiver invalidate];
}

- (id)performAlohaVerification
{
  transceiver = self->_transceiver;
  v27 = 0;
  v4 = [(SETransceiveHelper *)transceiver copySeid:&v27];
  v5 = v27;
  seid = self->_seid;
  self->_seid = v4;

  if (self->_seid)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = _ObjCLogNSError(v5, 14, "[AlohaPairingVerifier performAlohaVerification]", &cfstr_Copyseid.isa);
LABEL_18:
    v19 = v8;
    goto LABEL_22;
  }

  v26 = 0;
  v9 = [(AlohaPairingVerifier *)self injectSEPKtoSSE:&v26];
  v10 = v26;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v5 = v10;
    v8 = _ObjCLogNSError(v10, 14, "[AlohaPairingVerifier performAlohaVerification]", &cfstr_Injectsepktoss.isa);
    goto LABEL_18;
  }

  v24 = 0;
  v25 = 0;
  v12 = [(AlohaPairingVerifier *)self getSharingRequestWithSignature:&v25 withError:&v24];
  v13 = v25;
  v14 = v24;
  v5 = v14;
  if (!v14 && v12 && v13)
  {
    v15 = self->_seid;
    v23 = 0;
    v22 = 0;
    v16 = [(AlohaPairingVerifier *)self performAuthKeySharingWithAppleSSE:v15 sharingRequest:v12 requestSignature:v13 resultSignature:&v23 withError:&v22];
    v17 = v23;
    v18 = v22;
    v5 = v18;
    if (!v18 && v16 && v17)
    {
      objc_msgSend_getCXXApduWithCla_ins_p1_p2_payload_(APDUUtil);
      SERestoreInfo::Apdu::Apdu(&v21, 0x2037uLL);
    }

    v19 = _ObjCLogNSError(v18, 14, "[AlohaPairingVerifier performAlohaVerification]", &cfstr_Performauthkey.isa);
  }

  else
  {
    v19 = _ObjCLogNSError(v14, 14, "[AlohaPairingVerifier performAlohaVerification]", &cfstr_Getsharingrequ.isa);
  }

LABEL_22:

  return v19;
}

- (BOOL)injectSEPKtoSSE:(id *)e
{
  if (self->_options->var0)
  {
    return [(AlohaPairingVerifier *)self injectSEPKtoSSE_Debug:e];
  }

  else
  {
    return [(AlohaPairingVerifier *)self injectSEPKtoSSE_FDR:e];
  }
}

- (BOOL)injectSEPKtoSSE_Debug:(id *)debug
{
  v41 = *MEMORY[0x29EDCA608];
  transceiver = self->_transceiver;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v5 = [(SETransceiveHelper *)transceiver getSEPK:&v37 andSEID:&v36 deleteExisting:0 error:&v35];
  v6 = v37;
  v7 = v36;
  v8 = v35;
  v13 = v8;
  if (!v5 || v8 != 0 || v6 == 0 || v7 == 0)
  {
    _ObjCLogOutError(debug, 0, "[AlohaPairingVerifier injectSEPKtoSSE_Debug:]", @"Failed to getSEPK : %@", v9, v10, v11, v12, v8);
  }

  else
  {
    memset(v40, 0, sizeof(v40));
    inputStruct = 1397966179;
    v39 = 246;
    *&v40[2] = 258;
    SSEIOConnect = getSSEIOConnect();
    v18 = IOConnectCallStructMethod(SSEIOConnect, 0, &inputStruct, 0x62uLL, 0, 0);
    if (v18)
    {
      v23 = @"Unable to EnableTestSEContext %d";
    }

    else
    {
      v40[2] = 3;
      v24 = v7;
      bytes = [v7 bytes];
      v26 = *bytes;
      *&v40[19] = *(bytes + 16);
      *&v40[3] = v26;
      v27 = v6;
      bytes2 = [v6 bytes];
      *&v40[27] = *bytes2;
      v29 = *(bytes2 + 16);
      v30 = *(bytes2 + 32);
      v31 = *(bytes2 + 48);
      v40[91] = *(bytes2 + 64);
      *&v40[75] = v31;
      *&v40[59] = v30;
      *&v40[43] = v29;
      v32 = getSSEIOConnect();
      v18 = IOConnectCallStructMethod(v32, 0, &inputStruct, 0x62uLL, 0, 0);
      if (!v18)
      {
        _ObjCLog(2, "[AlohaPairingVerifier injectSEPKtoSSE_Debug:]", &cfstr_SuccessfullyDe.isa, v7);
        v33 = 1;
        goto LABEL_19;
      }

      v23 = @"Error code %d received when setting SE PK in SSE";
    }

    _ObjCLogOutError(debug, 0, "[AlohaPairingVerifier injectSEPKtoSSE_Debug:]", v23, v19, v20, v21, v22, v18);
  }

  v33 = 0;
LABEL_19:

  return v33;
}

- (BOOL)injectSEPKtoSSE_FDR:(id *)r
{
  v37[3] = *MEMORY[0x29EDCA608];
  v35 = 0;
  v36[0] = @"VerifyData";
  v5 = [MEMORY[0x29EDBA070] numberWithBool:0];
  v37[0] = v5;
  v36[1] = @"StripImg4";
  v6 = [MEMORY[0x29EDBA070] numberWithBool:0];
  v37[1] = v6;
  v36[2] = @"GetCombined";
  v7 = [MEMORY[0x29EDBA070] numberWithBool:1];
  v37[2] = v7;
  v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
  v9 = [v8 mutableCopy];

  transceiver = self->_transceiver;
  v34 = 0;
  v11 = [(SETransceiveHelper *)transceiver copySeid:&v34];
  v12 = v34;
  v16 = v12;
  if (v11 && !v12)
  {
    _ObjCLog(2, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", &cfstr_PassingFdropti.isa, v9);
    asHexString = [v11 asHexString];
    uppercaseString = [asHexString uppercaseString];

    v32 = 0;
    v33 = &v35;
    v19 = AMFDRSealingMapCopyLocalData();
    ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(&v32);
    if (!v19 || v35)
    {
      _ObjCLog(0, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", &cfstr_ErrorFromAmfdr.isa, v35, v32, v33);
      _ObjCLogWrapOutError(r, v35, 0, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", @"AMFDRSealingMapCopyLocalData", v26, v27, v28, v31);
    }

    else
    {
      v20 = SSESetSEPubKey(self->_seid, v19);
      if (!v20)
      {
        _ObjCLog(2, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", &cfstr_SuccessfullyFd.isa, self->_seid, v32, v33);
        v25 = 1;
        goto LABEL_10;
      }

      _ObjCLogOutError(r, 0, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", @"SSESetSEPubKey returned %d\n", v21, v22, v23, v24, v20);
    }

    v25 = 0;
LABEL_10:

    goto LABEL_11;
  }

  _ObjCLogWrapOutError(r, v12, 0, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", @"Failed to copy SEID", v13, v14, v15, v30);
  v25 = 0;
LABEL_11:

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v35);
  return v25;
}

- (id)getSharingRequestWithSignature:(id *)signature withError:(id *)error
{
  transceiver = self->_transceiver;
  v22 = 0;
  v7 = [(SETransceiveHelper *)transceiver crsGetSharingRequestWithError:&v22];
  v8 = v22;
  v12 = v8;
  if (v7)
  {
    v13 = v8 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    _ObjCLogWrapOutError(error, v8, 0, "[AlohaPairingVerifier getSharingRequestWithSignature:withError:]", @"Failed to get sharing request\n", v9, v10, v11, v21);
LABEL_8:
    v19 = 0;
    goto LABEL_10;
  }

  if ([v7 length] <= 0x40)
  {
    v14 = [v7 length];
    _ObjCLogOutError(error, 0, "[AlohaPairingVerifier getSharingRequestWithSignature:withError:]", @"Unexpected length for sharing request %u\n", v15, v16, v17, v18, v14);
    goto LABEL_8;
  }

  *signature = [v7 subdataWithRange:{65, objc_msgSend(v7, "length") - 65}];
  v19 = [v7 subdataWithRange:{0, 65}];
LABEL_10:

  return v19;
}

- (id)performAuthKeySharingWithAppleSSE:(id)e sharingRequest:(id)request requestSignature:(id)signature resultSignature:(id *)resultSignature withError:(id *)error
{
  eCopy = e;
  requestCopy = request;
  signatureCopy = signature;
  v23 = 0;
  v24 = 0;
  v14 = SSEPerformAuthKeySharing(eCopy, requestCopy, signatureCopy, &v24, &v23);
  v15 = v24;
  v16 = v23;
  *resultSignature = v16;
  if (!v14 && v15 && v16)
  {
    v17 = v15;
  }

  else
  {
    _ObjCLog(0, "[AlohaPairingVerifier performAuthKeySharingWithAppleSSE:sharingRequest:requestSignature:resultSignature:withError:]", &cfstr_PerformedShari.isa, eCopy);
    _ObjCLog(0, "[AlohaPairingVerifier performAuthKeySharingWithAppleSSE:sharingRequest:requestSignature:resultSignature:withError:]", &cfstr_Request.isa, requestCopy);
    _ObjCLog(0, "[AlohaPairingVerifier performAuthKeySharingWithAppleSSE:sharingRequest:requestSignature:resultSignature:withError:]", &cfstr_Requestsig.isa, signatureCopy);
    _ObjCLogOutError(error, 0, "[AlohaPairingVerifier performAuthKeySharingWithAppleSSE:sharingRequest:requestSignature:resultSignature:withError:]", @"Bad status received when sharing auth key %d or nil for sharing result %d or nil for sharing result signature %d\n", v18, v19, v20, v21, v14);
    v17 = 0;
  }

  return v17;
}

@end