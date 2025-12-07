@interface SETransceiveHelper
- (BOOL)crsSetSharingResult:(id)result signature:(id)signature error:(id *)error;
- (BOOL)getSEPK:(id *)k andSEID:(id *)d deleteExisting:(BOOL)existing error:(id *)error;
- (BOOL)setAuthRandom:(id)random mac:(id)mac error:(id *)error;
- (SETransceiveHelper)initWithSEController:(shared_ptr<SEUpdater::P73BaseSEController>)controller;
- (id).cxx_construct;
- (id)copyA9Parameters:(id *)parameters;
- (id)copyCasdCert:(id *)cert;
- (id)copySESignature:(id)signature hsmChallengeSE:(id)e ecid:(id)ecid outError:(id *)error;
- (id)copySeid:(id *)seid;
- (id)selectWithAID:(id)d;
- (id)transceiveAndRecordCapdu:(void *)capdu rapdu:(void *)rapdu;
- (int64_t)copyDeviceType:(id *)type;
- (shared_ptr<SEUpdater::P73BaseSEController>)fSeController;
- (void)dealloc;
- (void)invalidate;
- (void)recordApdu:(Apdu *)apdu toRecord:(id)record;
- (void)setFSeController:(shared_ptr<SEUpdater::P73BaseSEController>)controller;
@end

@implementation SETransceiveHelper

- (SETransceiveHelper)initWithSEController:(shared_ptr<SEUpdater::P73BaseSEController>)controller
{
  ptr = controller.__ptr_;
  v14.receiver = self;
  v14.super_class = SETransceiveHelper;
  v4 = [(SETransceiveHelper *)&v14 init:controller.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_fSeController.__cntrl_;
    v5->_fSeController.__ptr_ = v7;
    v5->_fSeController.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    array = [MEMORY[0x29EDB8DE8] array];
    capduRecord = v5->_capduRecord;
    v5->_capduRecord = array;

    array2 = [MEMORY[0x29EDB8DE8] array];
    rapduRecord = v5->_rapduRecord;
    v5->_rapduRecord = array2;
  }

  return v5;
}

- (void)dealloc
{
  _ObjCLog(2, "[SETransceiveHelper dealloc]", &cfstr_ReleasingTrans.isa);
  v3.receiver = self;
  v3.super_class = SETransceiveHelper;
  [(SETransceiveHelper *)&v3 dealloc];
}

- (void)invalidate
{
  _ObjCLog(2, "[SETransceiveHelper invalidate]", &cfstr_InvalidatingTr.isa);
  cntrl = self->_fSeController.__cntrl_;
  self->_fSeController.__ptr_ = 0;
  self->_fSeController.__cntrl_ = 0;
  if (cntrl)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id)selectWithAID:(id)d
{
  dCopy = d;
  v4 = [MEMORY[0x29EDB8DA0] dataWithHexString:dCopy];
  objc_msgSend_getCXXApduWithCla_ins_p1_p2_payload_(APDUUtil);

  SERestoreInfo::Apdu::Apdu(&v6, 0x2037uLL);
}

- (id)copySeid:(id *)seid
{
  v3 = [MEMORY[0x29EDB8DA0] dataWithHexString:@"DF21"];
  objc_msgSend_getCXXApduWithCla_ins_p1_p2_payload_(APDUUtil);

  SERestoreInfo::Apdu::Apdu(&v5, 0x2037uLL);
}

- (id)copyCasdCert:(id *)cert
{
  v4 = [(SETransceiveHelper *)self selectWithAID:@"A00000015153504341534400"];
  if (!v4)
  {
    SERestoreInfo::CApdu::CApdu(&v11);
  }

  v8 = v4;
  _ObjCLogWrapOutError(cert, v4, 0, "[SETransceiveHelper copyCasdCert:]", @"While selecting CASD\n", v5, v6, v7, v10);

  return 0;
}

- (int64_t)copyDeviceType:(id *)type
{
  v3 = [MEMORY[0x29EDB8DA0] dataWithHexString:@"DF31"];
  objc_msgSend_getCXXApduWithCla_ins_p1_p2_payload_(APDUUtil);

  SERestoreInfo::Apdu::Apdu(&v5, 0x2037uLL);
}

- (id)copyA9Parameters:(id *)parameters
{
  v10[12] = *MEMORY[0x29EDCA608];
  v4 = [(SETransceiveHelper *)self selectWithAID:@"A0000001515350414141504C"];
  v8 = v4;
  if (!v4)
  {
    objc_msgSend_getCXXApduWithCla_ins_p1_p2_payload_(APDUUtil);
    SERestoreInfo::Apdu::Apdu(v10, 0x2037uLL);
  }

  _ObjCLogWrapOutError(parameters, v4, 0, "[SETransceiveHelper copyA9Parameters:]", @"Error encountered when selecting Star SD %@\n", v5, v6, v7, v4);

  return 0;
}

- (id)copySESignature:(id)signature hsmChallengeSE:(id)e ecid:(id)ecid outError:(id *)error
{
  v30 = *MEMORY[0x29EDCA608];
  signatureCopy = signature;
  eCopy = e;
  ecidCopy = ecid;
  v16 = [(SETransceiveHelper *)self selectWithAID:@"A00000015153504341534400"];
  if (v16)
  {
    _ObjCLogWrapOutError(error, v16, 0, "[SETransceiveHelper copySESignature:hsmChallengeSE:ecid:outError:]", @"Failed to select CASD\n", v13, v14, v15, v26);
  }

  else
  {
    v17 = objc_opt_new();
    [v17 appendData:signatureCopy];
    [v17 appendData:eCopy];
    v28 = 0;
    [ecidCopy getValue:&v28];
    [v17 appendU64LE:v28];
    memset(v29, 0, sizeof(v29));
    v18 = v17;
    [v17 bytes];
    [v17 length];
    v19 = AMSupportDigestSha256();
    if (!v19)
    {
      v24 = [MEMORY[0x29EDB8DA0] dataWithBytes:v29 length:32];
      objc_msgSend_getCXXApduWithCla_ins_p1_p2_payload_(APDUUtil);

      SERestoreInfo::Apdu::Apdu(&v27, 0x2037uLL);
    }

    _ObjCLogOutError(error, 0, "[SETransceiveHelper copySESignature:hsmChallengeSE:ecid:outError:]", @"Unable to get AM Digest with error code %d\n", v20, v21, v22, v23, v19);
    v16 = 0;
  }

  return 0;
}

- (BOOL)crsSetSharingResult:(id)result signature:(id)signature error:(id *)error
{
  [objc_msgSend(result "mutableCopy")];
  objc_msgSend_getCXXApduWithCla_ins_p1_p2_payload_(APDUUtil);
  SERestoreInfo::Apdu::Apdu(&v6, 0x2037uLL);
}

- (id)transceiveAndRecordCapdu:(void *)capdu rapdu:(void *)rapdu
{
  v8 = *(capdu + 1);
  v7 = *(capdu + 2);
  v12[0] = &unk_2A2026DD8;
  v12[1] = v8;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(SETransceiveHelper *)self recordApdu:v12 toRecord:self->_capduRecord];
  v12[0] = &unk_2A2026DD8;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v9 = [MEMORY[0x29EDB8DA0] dataWithBytes:**(capdu + 1) length:*(*(capdu + 1) + 8) - **(capdu + 1)];
  asHexString = [v9 asHexString];
  _ObjCLog(3, "[SETransceiveHelper transceiveAndRecordCapdu:rapdu:]", &cfstr_Se.isa, asHexString);

  SEUpdater::P73BaseSEController::transceive(self->_fSeController.__ptr_, capdu, rapdu, 0, 3, 1uLL);
}

- (void)recordApdu:(Apdu *)apdu toRecord:(id)record
{
  recordCopy = record;
  var0 = apdu->var1.var0;
  if (var0)
  {
    [MEMORY[0x29EDB8DA0] dataWithBytes:*var0 length:var0[1] - *var0];
  }

  else
  {
    [@"No APDU" dataUsingEncoding:4];
  }
  v6 = ;
  [recordCopy addObject:v6];
}

- (BOOL)getSEPK:(id *)k andSEID:(id *)d deleteExisting:(BOOL)existing error:(id *)error
{
  if (k && d)
  {
    SERestoreInfo::Apdu::Apdu(&v10, 0x2037uLL);
  }

  _ObjCLogOutError(error, 14, "[SETransceiveHelper getSEPK:andSEID:deleteExisting:error:]", @"Missing mandatory outparam", existing, error, v6, v7, v9);
  return 0;
}

- (BOOL)setAuthRandom:(id)random mac:(id)mac error:(id *)error
{
  randomCopy = random;
  macCopy = mac;
  SERestoreInfo::Apdu::Apdu(&v9, 0x2037uLL);
}

- (shared_ptr<SEUpdater::P73BaseSEController>)fSeController
{
  cntrl = self->_fSeController.__cntrl_;
  *v2 = self->_fSeController.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setFSeController:(shared_ptr<SEUpdater::P73BaseSEController>)controller
{
  v4 = *controller.__ptr_;
  v3 = *(controller.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_fSeController.__cntrl_;
  self->_fSeController.__ptr_ = v4;
  self->_fSeController.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end