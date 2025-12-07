@interface PKPeerPaymentDeviceRegistrationData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeerPaymentDeviceRegistrationData:(id)data;
- (PKPeerPaymentDeviceRegistrationData)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentDeviceRegistrationData

- (PKPeerPaymentDeviceRegistrationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKPeerPaymentDeviceRegistrationData;
  v5 = [(PKPeerPaymentDeviceRegistrationData *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationHeader"];
    authorizationHeader = v5->_authorizationHeader;
    v5->_authorizationHeader = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedAuthToken"];
    signedAuthToken = v5->_signedAuthToken;
    v5->_signedAuthToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enrollmentData"];
    enrollmentData = v5->_enrollmentData;
    v5->_enrollmentData = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedEnrollmentDataSignature"];
    signedEnrollmentDataSignature = v5->_signedEnrollmentDataSignature;
    v5->_signedEnrollmentDataSignature = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"devSigned"];
    v5->_devSigned = [v14 BOOLValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionSerialNumber"];
    companionSerialNumber = v5->_companionSerialNumber;
    v5->_companionSerialNumber = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  authorizationHeader = self->_authorizationHeader;
  coderCopy = coder;
  [coderCopy encodeObject:authorizationHeader forKey:@"authorizationHeader"];
  [coderCopy encodeObject:self->_signedAuthToken forKey:@"signedAuthToken"];
  [coderCopy encodeObject:self->_enrollmentData forKey:@"enrollmentData"];
  [coderCopy encodeObject:self->_signedEnrollmentDataSignature forKey:@"signedEnrollmentDataSignature"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_devSigned];
  [coderCopy encodeObject:v5 forKey:@"devSigned"];

  [coderCopy encodeObject:self->_companionSerialNumber forKey:@"companionSerialNumber"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"authorizationHeader: '%@'; ", self->_authorizationHeader];
  [v6 appendFormat:@"signedAuthToken: '%@'; ", self->_signedAuthToken];
  [v6 appendFormat:@"enrollmentData: '%@'; ", self->_enrollmentData];
  [v6 appendFormat:@"signedEnrollmentDataSignature : '%@'; ", self->_signedEnrollmentDataSignature];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_devSigned];
  [v6 appendFormat:@"devSigned: '%@'; ", v7];

  [v6 appendFormat:@"companionSerialNumber: '%@'; ", self->_companionSerialNumber];
  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_authorizationHeader)
  {
    [array addObject:?];
  }

  if (self->_signedAuthToken)
  {
    [v4 addObject:?];
  }

  if (self->_enrollmentData)
  {
    [v4 addObject:?];
  }

  if (self->_signedEnrollmentDataSignature)
  {
    [v4 addObject:?];
  }

  if (self->_companionSerialNumber)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_devSigned - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentDeviceRegistrationData *)self isEqualToPeerPaymentDeviceRegistrationData:v5];
  }

  return v6;
}

- (BOOL)isEqualToPeerPaymentDeviceRegistrationData:(id)data
{
  dataCopy = data;
  signedAuthToken = self->_signedAuthToken;
  v6 = dataCopy[3];
  if (signedAuthToken)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (signedAuthToken != v6)
    {
      goto LABEL_30;
    }
  }

  else if (([(NSString *)signedAuthToken isEqual:?]& 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = dataCopy[2];
  v9 = self->_authorizationHeader;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (!v9 || !v10)
    {

      goto LABEL_30;
    }

    isEqualToString = objc_msgSend_isEqualToString_(v9);

    if (!isEqualToString)
    {
      goto LABEL_30;
    }
  }

  enrollmentData = self->_enrollmentData;
  v14 = dataCopy[4];
  if (enrollmentData && v14)
  {
    if (([(NSDictionary *)enrollmentData isEqual:?]& 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (enrollmentData != v14)
  {
    goto LABEL_30;
  }

  signedEnrollmentDataSignature = self->_signedEnrollmentDataSignature;
  v16 = dataCopy[5];
  if (!signedEnrollmentDataSignature || !v16)
  {
    if (signedEnrollmentDataSignature == v16)
    {
      goto LABEL_26;
    }

LABEL_30:
    v19 = 0;
    goto LABEL_31;
  }

  if (([(NSData *)signedEnrollmentDataSignature isEqual:?]& 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  if (self->_devSigned != *(dataCopy + 8))
  {
    goto LABEL_30;
  }

  companionSerialNumber = self->_companionSerialNumber;
  v18 = dataCopy[6];
  if (companionSerialNumber && v18)
  {
    v19 = [(NSString *)companionSerialNumber isEqual:?];
  }

  else
  {
    v19 = companionSerialNumber == v18;
  }

LABEL_31:

  return v19;
}

@end