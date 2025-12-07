@interface MTRDeviceAttestationDeviceInfo
- (MTRDeviceAttestationDeviceInfo)initWithAttestationChallenge:(id)challenge attestationNonce:(id)nonce elementsTLV:(id)v elementsSignature:(id)signature dacCertificate:(id)certificate dacPAICertificate:(id)iCertificate certificationDeclaration:(id)declaration basicInformationVendorID:(id)self0 basicInformationProductID:(id)self1;
@end

@implementation MTRDeviceAttestationDeviceInfo

- (MTRDeviceAttestationDeviceInfo)initWithAttestationChallenge:(id)challenge attestationNonce:(id)nonce elementsTLV:(id)v elementsSignature:(id)signature dacCertificate:(id)certificate dacPAICertificate:(id)iCertificate certificationDeclaration:(id)declaration basicInformationVendorID:(id)self0 basicInformationProductID:(id)self1
{
  challengeCopy = challenge;
  nonceCopy = nonce;
  vCopy = v;
  signatureCopy = signature;
  certificateCopy = certificate;
  iCertificateCopy = iCertificate;
  declarationCopy = declaration;
  dCopy = d;
  iDCopy = iD;
  v58.receiver = self;
  v58.super_class = MTRDeviceAttestationDeviceInfo;
  v24 = [(MTRDeviceAttestationDeviceInfo *)&v58 init];
  if (v24)
  {
    v25 = [challengeCopy copy];
    attestationChallenge = v24->_attestationChallenge;
    v24->_attestationChallenge = v25;

    v27 = [nonceCopy copy];
    attestationNonce = v24->_attestationNonce;
    v24->_attestationNonce = v27;

    v29 = [vCopy copy];
    elementsTLV = v24->_elementsTLV;
    v24->_elementsTLV = v29;

    v31 = [signatureCopy copy];
    elementsSignature = v24->_elementsSignature;
    v24->_elementsSignature = v31;

    v33 = [certificateCopy copy];
    dacCertificate = v24->_dacCertificate;
    v24->_dacCertificate = v33;

    v35 = [iCertificateCopy copy];
    dacPAICertificate = v24->_dacPAICertificate;
    v24->_dacPAICertificate = v35;

    v37 = [declarationCopy copy];
    certificationDeclaration = v24->_certificationDeclaration;
    v24->_certificationDeclaration = v37;

    v39 = [dCopy copy];
    basicInformationVendorID = v24->_basicInformationVendorID;
    v24->_basicInformationVendorID = v39;

    v41 = [iDCopy copy];
    basicInformationProductID = v24->_basicInformationProductID;
    v24->_basicInformationProductID = v41;

    v54[0] = 0;
    v56 = 0;
    v43 = v24->_dacCertificate;
    sub_238DB6950(&v59, [(NSData *)v43 bytes], [(NSData *)v43 length]);

    v53 = v59;
    if (!sub_2393FB970(&v53, v54))
    {
      LOBYTE(v59) = v54[0];
      if (v54[0] == 1)
      {
        WORD1(v59) = v55;
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*sub_238EAB248(&v59, v44)}];
      }

      else
      {
        v45 = 0;
      }

      vendorID = v24->_vendorID;
      v24->_vendorID = v45;

      LOBYTE(v59) = v56;
      if (v56 == 1)
      {
        WORD1(v59) = v57;
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*sub_238EAB248(&v59, v47)}];
      }

      else
      {
        v48 = 0;
      }

      productID = v24->_productID;
      v24->_productID = v48;
    }
  }

  return v24;
}

@end