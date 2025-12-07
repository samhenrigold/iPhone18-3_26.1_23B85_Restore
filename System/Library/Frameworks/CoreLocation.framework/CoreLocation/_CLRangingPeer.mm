@interface _CLRangingPeer
+ (id)hexStringMacAddressFromUInt:(unint64_t)int;
+ (unint64_t)uintMacAddressFromString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeer:(id)peer;
- (_CLRangingPeer)initWithCoder:(id)coder;
- (_CLRangingPeer)initWithMacAddressAsData:(id)data secureRangingKeyID:(id)d;
- (_CLRangingPeer)initWithMacAddressAsString:(id)string secureRangingKeyID:(id)d;
- (_CLRangingPeer)initWithMacAddressAsUInt:(unint64_t)int secureRangingKeyID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getMacAddressAsString;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLRangingPeer

- (_CLRangingPeer)initWithMacAddressAsUInt:(unint64_t)int secureRangingKeyID:(id)d
{
  if (HIWORD(int))
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, int, d);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLRangingPeer.m", 161, @"Invalid parameter not satisfying: %@", @"(macAddress & 0xFFFF000000000000) == 0");
  }

  v14.receiver = self;
  v14.super_class = _CLRangingPeer;
  v7 = [(_CLRangingPeer *)&v14 init];
  if (v7)
  {
    v8 = [_CLRangingPeerInternal alloc];
    v7->_internal = objc_msgSend_initWithMacAddressAsUInt_secureRangingKeyID_(v8, v9, int, d);
  }

  return v7;
}

- (_CLRangingPeer)initWithMacAddressAsString:(id)string secureRangingKeyID:(id)d
{
  if (!string)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, d);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLRangingPeer.m", 172, @"Invalid parameter not satisfying: %@", @"macAddress");
  }

  v7 = objc_msgSend_uintMacAddressFromString_(_CLRangingPeer, a2, string, d);
  if (v7 == -1)
  {
    return 0;
  }

  return objc_msgSend_initWithMacAddressAsUInt_secureRangingKeyID_(self, v8, v7, d);
}

- (_CLRangingPeer)initWithMacAddressAsData:(id)data secureRangingKeyID:(id)d
{
  if (!data)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, d);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CLRangingPeer.m", 183, @"Invalid parameter not satisfying: %@", @"macAddress");
  }

  *&v16.octet[4] = 0;
  *v16.octet = 0;
  objc_msgSend_getBytes_length_(data, a2, &v16, 6);
  v7 = ether_ntoa(&v16);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, v7, v9);
  return objc_msgSend_initWithMacAddressAsString_secureRangingKeyID_(self, v11, v10, d);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLRangingPeer;
  [(_CLRangingPeer *)&v3 dealloc];
}

- (id)getMacAddressAsString
{
  v4 = objc_msgSend_macAddress(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](_CLRangingPeer, sel_hexStringMacAddressFromUInt_, v4, v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  internal = self->_internal;
  v11 = internal[1];
  v12 = internal[2];

  return objc_msgSend_initWithMacAddressAsUInt_secureRangingKeyID_(v8, v9, v11, v12);
}

- (_CLRangingPeer)initWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CLRangingPeer.m", 231, @"Invalid parameter not satisfying: %@", @"[aDecoder allowsKeyedCoding]");
  }

  v10 = objc_msgSend_decodeInt64ForKey_(coder, v7, @"kCLCodingKeyRangingPeerMacAddress", v9);
  v11 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"kCLCodingKeyRangingPeerSecureRangingKeyID");

  return objc_msgSend_initWithMacAddressAsUInt_secureRangingKeyID_(self, v13, v10, v14);
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CLRangingPeer.m", 241, @"Invalid parameter not satisfying: %@", @"[aCoder allowsKeyedCoding]");
  }

  internal = self->_internal;
  objc_msgSend_encodeInt64_forKey_(coder, v7, internal[1], @"kCLCodingKeyRangingPeerMacAddress");
  v12 = internal[2];

  objc_msgSend_encodeObject_forKey_(coder, v11, v12, @"kCLCodingKeyRangingPeerSecureRangingKeyID");
}

- (id)description
{
  internal = self->_internal;
  v5 = MEMORY[0x1E696AEC0];
  MacAddressAsString = objc_msgSend_getMacAddressAsString(self, a2, v2, v3);
  if (internal[2])
  {
    return objc_msgSend_stringWithFormat_(v5, v7, @"Peer:%@ hasKey:%s", v8, MacAddressAsString, "Yes");
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v5, v7, @"Peer:%@ hasKey:%s", v8, MacAddressAsString, "No");
  }
}

- (unint64_t)hash
{
  v5 = objc_msgSend_macAddress(self, a2, v2, v3);
  v9 = objc_msgSend_secureRangingKeyID(self, v6, v7, v8);
  return objc_msgSend_hash(v9, v10, v11, v12) ^ v5;
}

- (BOOL)isEqualToPeer:(id)peer
{
  if (self == peer)
  {
    return 1;
  }

  v6 = objc_msgSend_macAddress(self, a2, peer, v3);
  result = 0;
  if (v6 == objc_msgSend_macAddress(peer, v7, v8, v9))
  {
    if (objc_msgSend_secureRangingKeyID(peer, v10, v11, v12))
    {
      v16 = objc_msgSend_secureRangingKeyID(self, v13, v14, v15);
      v20 = objc_msgSend_secureRangingKeyID(peer, v17, v18, v19);
      if (objc_msgSend_isEqualToData_(v16, v21, v20, v22))
      {
        return 1;
      }
    }

    if (!objc_msgSend_secureRangingKeyID(peer, v13, v14, v15) && !objc_msgSend_secureRangingKeyID(self, v23, v24, v25))
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isEqualToPeer_, equal, v5);
}

+ (unint64_t)uintMacAddressFromString:(id)string
{
  v37 = *MEMORY[0x1E69E9840];
  if (!string)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CLRangingPeer.m", 291, @"Invalid parameter not satisfying: %@", @"macAddress");
  }

  v10 = objc_msgSend_length(string, a2, string, v3);
  if ((v10 - 18) <= 0xFFFFFFFFFFFFFFF8)
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CLRangingPeer.m", 300, @"Invalid parameter not satisfying: %@", @"(len >= 11) && (len <= 17)");
  }

  objc_msgSend_getCharacters_range_(string, v7, v36, 0, v10);
  if (v10 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v10 & 0x7FFFFFFF;
    v18 = v17 + 1;
    v19 = &v36[v17 - 1];
    while (1)
    {
      v20 = *v19--;
      v21 = v20 << 24;
      if (v20 << 24 == 973078528)
      {
        ++v14;
        if (v16 == 2)
        {
          v16 = 0;
          goto LABEL_16;
        }

        if (v16 != 1)
        {
          goto LABEL_20;
        }

        v16 = 0;
      }

      else
      {
        v35 = 0;
        v22 = MEMORY[0x1E696AE88];
        v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"%c", v12, (v21 >> 24));
        v26 = objc_msgSend_scannerWithString_(v22, v24, v23, v25);
        if (!objc_msgSend_scanHexInt_(v26, v27, &v35, v28) || v35 == -1)
        {
LABEL_20:
          v29 = 0;
          goto LABEL_21;
        }

        v13 += v35 << v15;
        ++v16;
      }

      v15 += 4;
LABEL_16:
      if (--v18 <= 1)
      {
        goto LABEL_19;
      }
    }
  }

  v13 = 0;
  v14 = 0;
LABEL_19:
  v29 = 1;
LABEL_21:
  if ((v29 & (v14 == 5)) != 0)
  {
    return v13;
  }

  else
  {
    return -1;
  }
}

+ (id)hexStringMacAddressFromUInt:(unint64_t)int
{
  v17 = *MEMORY[0x1E69E9840];
  if (HIWORD(int))
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, int, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CLRangingPeer.m", 341, @"Invalid parameter not satisfying: %@", @"(macAddress & 0xFFFF000000000000) == 0");
  }

  v5 = xmmword_19BA8C830;
  v6 = v16;
  v7 = 8;
  v8 = vdupq_n_s64(6uLL);
  v9 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v8, v5)).u8[0])
    {
      *(v6 - 1) = (int >> (v7 - 8));
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v5)).i32[1])
    {
      *v6 = (int >> v7);
    }

    v5 = vaddq_s64(v5, v9);
    v7 += 16;
    v6 += 2;
  }

  while (v7 != 56);
  return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%02X:%02X:%02X:%02X:%02X:%02X", v3, *v5.i64, v16[4], v16[3], v16[2], v16[1], v16[0], v15);
}

@end