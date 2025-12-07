@interface MTRCASESessionResumptionInfo
- (MTRCASESessionResumptionInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTRCASESessionResumptionInfo

- (MTRCASESessionResumptionInfo)initWithCoder:(id)coder
{
  v45 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = MTRCASESessionResumptionInfo;
  v5 = [(MTRCASESessionResumptionInfo *)&v41 init];
  if (!v5)
  {
LABEL_43:
    v26 = 0;
    goto LABEL_44;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nodeID"];
  p_nodeID = &v5->_nodeID;
  nodeID = v5->_nodeID;
  v5->_nodeID = v6;

  if (v5->_nodeID)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = sub_2393D9044(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *p_nodeID;
        *buf = 138412290;
        v44 = v30;
        _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "MTRCASESessionResumptionInfo got %@ for node ID, not NSNumber.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRCASESessionResumptionInfo got %@ for node ID, not NSNumber.", *p_nodeID);
      }

      goto LABEL_43;
    }

    v9 = *p_nodeID;
  }

  else
  {
    v9 = 0;
  }

  if (!sub_23920B288(v9))
  {
    v27 = sub_2393D9044(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *p_nodeID;
      *buf = 138412290;
      v44 = v28;
      _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "MTRCASESessionResumptionInfo node ID has invalid value: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "MTRCASESessionResumptionInfo node ID has invalid value: %@", *p_nodeID);
    }

    goto LABEL_43;
  }

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resumptionID"];
  p_resumptionID = &v5->_resumptionID;
  resumptionID = v5->_resumptionID;
  v5->_resumptionID = v10;

  if (v5->_resumptionID)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = sub_2393D9044(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = *p_resumptionID;
        *buf = 138412290;
        v44 = v32;
        _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "MTRCASESessionResumptionInfo got %@ for resumption ID, not NSData.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRCASESessionResumptionInfo got %@ for resumption ID, not NSData.", *p_resumptionID);
      }

      goto LABEL_43;
    }
  }

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedSecret"];
  p_sharedSecret = &v5->_sharedSecret;
  sharedSecret = v5->_sharedSecret;
  v5->_sharedSecret = v13;

  if (v5->_sharedSecret)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = sub_2393D9044(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = *p_sharedSecret;
        *buf = 138412290;
        v44 = v34;
        _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_ERROR, "MTRCASESessionResumptionInfo got %@ for shared secret, not NSData.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRCASESessionResumptionInfo got %@ for shared secret, not NSData.", *p_sharedSecret);
      }

      goto LABEL_43;
    }
  }

  [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"CATs"];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v16 = v38 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v17)
  {
    v18 = *v38;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        if (!sub_2392130E4(v20))
        {

LABEL_46:
          v36 = sub_2393D9044(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v44 = v20;
            _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_ERROR, "MTRCASESessionResumptionInfo CASE tag has invalid value: %@", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1, "MTRCASESessionResumptionInfo CASE tag has invalid value: %@", v20);
          }

          v26 = 0;
          goto LABEL_51;
        }

        unsignedLongLongValue = [v20 unsignedLongLongValue];
        if (unsignedLongLongValue)
        {
          v22 = HIDWORD(unsignedLongLongValue) == 0;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        if ((v23 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v24 = [MEMORY[0x277CBEB98] setWithArray:v16];
  caseAuthenticatedTags = v5->_caseAuthenticatedTags;
  v5->_caseAuthenticatedTags = v24;

  v26 = v5;
LABEL_51:

LABEL_44:
  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nodeID = [(MTRCASESessionResumptionInfo *)self nodeID];
  [coderCopy encodeObject:nodeID forKey:@"nodeID"];

  resumptionID = [(MTRCASESessionResumptionInfo *)self resumptionID];
  [coderCopy encodeObject:resumptionID forKey:@"resumptionID"];

  sharedSecret = [(MTRCASESessionResumptionInfo *)self sharedSecret];
  [coderCopy encodeObject:sharedSecret forKey:@"sharedSecret"];

  caseAuthenticatedTags = [(MTRCASESessionResumptionInfo *)self caseAuthenticatedTags];
  allObjects = [caseAuthenticatedTags allObjects];
  [coderCopy encodeObject:allObjects forKey:@"CATs"];
}

@end