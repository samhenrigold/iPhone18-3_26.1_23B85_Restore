@interface _CLRangingPeerDistance
- (_CLRangingPeerDistance)initWithCoder:(id)coder;
- (_CLRangingPeerDistance)initWithPeer:(id)peer date:(id)date distanceMeters:(id)meters accuracyMeters:(id)accuracyMeters initiator:(BOOL)initiator shouldUnlock:(BOOL)unlock;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLRangingPeerDistance

- (_CLRangingPeerDistance)initWithPeer:(id)peer date:(id)date distanceMeters:(id)meters accuracyMeters:(id)accuracyMeters initiator:(BOOL)initiator shouldUnlock:(BOOL)unlock
{
  unlockCopy = unlock;
  initiatorCopy = initiator;
  if (peer)
  {
    if (date)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, date);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CLRangingPeer.m", 377, @"Invalid parameter not satisfying: %@", @"peer");
    if (date)
    {
LABEL_3:
      if (meters)
      {
        goto LABEL_4;
      }

LABEL_10:
      v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, peer, date);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CLRangingPeer.m", 379, @"Invalid parameter not satisfying: %@", @"distance");
      if (accuracyMeters)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, peer, date);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CLRangingPeer.m", 378, @"Invalid parameter not satisfying: %@", @"date");
  if (!meters)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (accuracyMeters)
  {
    goto LABEL_5;
  }

LABEL_11:
  v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, peer, date);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CLRangingPeer.m", 380, @"Invalid parameter not satisfying: %@", @"accuracy");
LABEL_5:
  v28.receiver = self;
  v28.super_class = _CLRangingPeerDistance;
  v16 = [(_CLRangingPeerDistance *)&v28 init];
  if (v16)
  {
    v17 = [_CLRangingPeerDistanceInternal alloc];
    v16->_internal = objc_msgSend_initWithPeer_date_distanceMeters_accuracyMeters_initiator_shouldUnlock_(v17, v18, peer, date, meters, accuracyMeters, initiatorCopy, unlockCopy);
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLRangingPeerDistance;
  [(_CLRangingPeerDistance *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  internal = self->_internal;
  v11 = internal[1];
  v12 = internal[2];
  v13 = internal[3];
  v14 = internal[4];
  v15 = *(internal + 40);
  v16 = *(internal + 41);

  return objc_msgSend_initWithPeer_date_distanceMeters_accuracyMeters_initiator_shouldUnlock_(v8, v9, v11, v12, v13, v14, v15, v16);
}

- (_CLRangingPeerDistance)initWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CLRangingPeer.m", 455, @"Invalid parameter not satisfying: %@", @"[aDecoder allowsKeyedCoding]");
  }

  v10 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kCLCodingKeyRangingPeerDistancePeer");
  v13 = objc_opt_class();
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"kCLCodingKeyRangingPeerDistanceTimestamp");
  v16 = objc_opt_class();
  v18 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v17, v16, @"kCLCodingKeyRangingPeerDistanceDistance");
  v19 = objc_opt_class();
  v21 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v20, v19, @"kCLCodingKeyRangingPeerDistanceAccuracy");
  v24 = objc_msgSend_decodeBoolForKey_(coder, v22, @"kCLCodingKeyRangingPeerDistanceInitiator", v23);
  v28 = objc_msgSend_decodeBoolForKey_(coder, v25, @"kCLCodingKeyRangingPeerDistanceUnlock", v26);

  return objc_msgSend_initWithPeer_date_distanceMeters_accuracyMeters_initiator_shouldUnlock_(self, v27, v12, v15, v18, v21, v24, v28);
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CLRangingPeer.m", 469, @"Invalid parameter not satisfying: %@", @"[aCoder allowsKeyedCoding]");
  }

  internal = self->_internal;
  objc_msgSend_encodeObject_forKey_(coder, v7, internal[1], @"kCLCodingKeyRangingPeerDistancePeer");
  objc_msgSend_encodeObject_forKey_(coder, v11, internal[2], @"kCLCodingKeyRangingPeerDistanceTimestamp");
  objc_msgSend_encodeObject_forKey_(coder, v12, internal[3], @"kCLCodingKeyRangingPeerDistanceDistance");
  objc_msgSend_encodeObject_forKey_(coder, v13, internal[4], @"kCLCodingKeyRangingPeerDistanceAccuracy");
  objc_msgSend_encodeBool_forKey_(coder, v14, *(internal + 40), @"kCLCodingKeyRangingPeerDistanceInitiator");
  v16 = *(internal + 41);

  objc_msgSend_encodeBool_forKey_(coder, v15, v16, @"kCLCodingKeyRangingPeerDistanceUnlock");
}

- (id)description
{
  internal = self->_internal;
  v5 = MEMORY[0x1E696AEC0];
  MacAddressAsString = objc_msgSend_getMacAddressAsString(internal[1], a2, v2, v3);
  v7 = internal[2];
  objc_msgSend_floatValue(internal[3], v8, v9, v10);
  v12 = v11;
  objc_msgSend_floatValue(internal[4], v13, v14, v15);
  v20 = v19;
  if (*(internal + 41))
  {
    v21 = "Yes";
  }

  else
  {
    v21 = "No";
  }

  if (objc_msgSend_secureRangingKeyID(internal[1], v16, v17, v18))
  {
    v24 = "Yes";
  }

  else
  {
    v24 = "No";
  }

  if (*(internal + 40))
  {
    return objc_msgSend_stringWithFormat_(v5, v22, @"Peer: %@ time:%@ distance[m]:%.02f accuracy[m]:%.02f unlock:%s secure:%s initiator:%s", v23, MacAddressAsString, v7, *&v12, *&v20, v21, v24, "Yes");
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v5, v22, @"Peer: %@ time:%@ distance[m]:%.02f accuracy[m]:%.02f unlock:%s secure:%s initiator:%s", v23, MacAddressAsString, v7, *&v12, *&v20, v21, v24, "No");
  }
}

@end