@interface _CLRangingPeerInternal
- (_CLRangingPeerInternal)initWithMacAddressAsUInt:(unint64_t)int secureRangingKeyID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation _CLRangingPeerInternal

- (_CLRangingPeerInternal)initWithMacAddressAsUInt:(unint64_t)int secureRangingKeyID:(id)d
{
  v13.receiver = self;
  v13.super_class = _CLRangingPeerInternal;
  v6 = [(_CLRangingPeerInternal *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_macAddress = int;
    secureRangingKeyID = v6->_secureRangingKeyID;
    if (secureRangingKeyID != d)
    {

      v7->_secureRangingKeyID = objc_msgSend_copy(d, v9, v10, v11);
    }
  }

  return v7;
}

- (void)dealloc
{
  self->_secureRangingKeyID = 0;
  v3.receiver = self;
  v3.super_class = _CLRangingPeerInternal;
  [(_CLRangingPeerInternal *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  macAddress = self->_macAddress;
  secureRangingKeyID = self->_secureRangingKeyID;

  return objc_msgSend_initWithMacAddressAsUInt_secureRangingKeyID_(v8, v9, macAddress, secureRangingKeyID);
}

@end