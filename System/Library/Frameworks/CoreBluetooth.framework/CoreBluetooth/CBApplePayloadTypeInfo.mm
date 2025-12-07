@interface CBApplePayloadTypeInfo
- (BOOL)isEqual:(id)equal;
- (CBApplePayloadTypeInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBApplePayloadTypeInfo

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  xdict = objectCopy;
  if (self->_applePayloadType)
  {
    xpc_dictionary_set_uint64(objectCopy, "apTY", self->_applePayloadType);
    objectCopy = xdict;
  }

  if (self->_rssiThreshold)
  {
    xpc_dictionary_set_int64(xdict, "blRS", self->_rssiThreshold);
    objectCopy = xdict;
  }

  if (self->_maxAge)
  {
    xpc_dictionary_set_uint64(xdict, "mxAg", self->_maxAge);
    objectCopy = xdict;
  }
}

- (id)description
{
  applePayloadType = self->_applePayloadType;
  rssiThreshold = self->_rssiThreshold;
  maxAge = self->_maxAge;
  v10 = 0;
  NSAppendPrintF_safe(&v10, "type %d rssiThreshold %d maxAge %d", applePayloadType, rssiThreshold, maxAge);
  v4 = v10;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"?";
  }

  v7 = v6;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_7;
  }

  if (equalCopy == self)
  {

    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  v6 = v5;
  applePayloadType = [(CBApplePayloadTypeInfo *)self applePayloadType];
  if (applePayloadType == [(CBApplePayloadTypeInfo *)v6 applePayloadType]&& (v8 = [(CBApplePayloadTypeInfo *)self rssiThreshold], v8 == [(CBApplePayloadTypeInfo *)v6 rssiThreshold]))
  {
    maxAge = [(CBApplePayloadTypeInfo *)self maxAge];
    v10 = maxAge == [(CBApplePayloadTypeInfo *)v6 maxAge];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  applePayloadType = [(CBApplePayloadTypeInfo *)self applePayloadType];
  v4 = [(CBApplePayloadTypeInfo *)self rssiThreshold]^ applePayloadType;
  return v4 ^ [(CBApplePayloadTypeInfo *)self maxAge];
}

- (CBApplePayloadTypeInfo)initWithXPCObject:(id)object error:(id *)error
{
  OUTLINED_FUNCTION_19(self, a2, object);
  v7 = OUTLINED_FUNCTION_18();
  if (!v7)
  {
    if (v5)
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3_4();
      *v5 = CBErrorF(-6756, "%@ init failed", v49, v50, v51, v52, v53, v54, v56);
    }

    goto LABEL_18;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v55 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v56);
      OUTLINED_FUNCTION_16(v55);
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v14 = OUTLINED_FUNCTION_0();
  v19 = OUTLINED_FUNCTION_3_1(v14, v15, v16, v17, v18);
  if (v19 == 6)
  {
    OUTLINED_FUNCTION_5_4(v19, v20, v21, v22, v23, v24, v25, v26, v56, 0);
  }

  else if (v19 == 5)
  {
    goto LABEL_18;
  }

  v27 = OUTLINED_FUNCTION_1_3(v19, "blRS", v21);
  if (v27 == 6)
  {
    OUTLINED_FUNCTION_11(v27, v28, v29, v30, v31, v32, v33, v34, v56, 0);
  }

  else if (v27 == 5)
  {
    goto LABEL_18;
  }

  v35 = OUTLINED_FUNCTION_0();
  v40 = OUTLINED_FUNCTION_3_1(v35, v36, v37, v38, v39);
  if (v40 != 6)
  {
    if (v40 != 5)
    {
      goto LABEL_12;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_10_1(v40, v41, v42, v43, v44, v45, v46, v47, v56, 0);
LABEL_12:
  v6 = v7;
LABEL_13:

  return v6;
}

@end