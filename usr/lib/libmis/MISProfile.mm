@interface MISProfile
- (MISProfile)init;
- (int)fixUp;
- (void)dealloc;
@end

@implementation MISProfile

- (int)fixUp
{
  v41 = *MEMORY[0x1E69E9840];
  if (!self->_fixedup)
  {
    if ((self->flavor | 2) == 2)
    {
      v4 = MISProfileGetValue(self, @"Entitlements");
      entitlements = self->entitlements;
      self->entitlements = v4;

      v6 = MISProfileGetValue(self, @"DeveloperCertificates");
      v7 = MEMORY[0x1E695DF70];
      v10 = objc_msgSend_count(v6, v8, v9);
      v12 = objc_msgSend_arrayWithCapacity_(v7, v11, v10);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = v6;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v36, v40, 16);
      if (v15)
      {
        v16 = v15;
        v17 = *v37;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = sub_1B9D98EE4(*(*(&v36 + 1) + 8 * i));
            objc_msgSend_addObject_(v12, v20, v19);
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v21, &v36, v40, 16);
        }

        while (v16);
      }

      objc_storeStrong(&self->certs, v12);
      v35 = 0;
      v22 = CESerializeCFDictionary();
      v23 = MEMORY[0x1E69E50B8];
      if (v22 != *MEMORY[0x1E69E50B8])
      {
        v24 = sub_1B9D98960();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *v34 = 0;
LABEL_29:
          _os_log_error_impl(&dword_1B9D96000, v24, OS_LOG_TYPE_ERROR, "Invalid entitlements in a provisioning profile", v34, 2u);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      derEntitlementsStorage = self->derEntitlementsStorage;
      self->derEntitlementsStorage = v35;

      if (sub_1B9DC8A48(self->derEntitlementsStorage, &self->ceCtx) != *v23)
      {
        v24 = sub_1B9D98960();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *v34 = 0;
          goto LABEL_29;
        }

LABEL_19:
        v2 = -402620413;

LABEL_23:
        return v2;
      }

LABEL_27:
      v2 = 0;
      self->_fixedup = 1;
      return v2;
    }

    v25 = MISProfileGetValue(self, @"DeveloperCertificates");
    certs = self->certs;
    self->certs = v25;

    v13 = MISProfileGetValue(self, @"Entitlements");
    v27 = sub_1B9DC8A48(v13, &self->ceCtx);
    v28 = MEMORY[0x1E69E50B8];
    if (v27 == *MEMORY[0x1E69E50B8])
    {
      v35 = 0;
      if (CEQueryContextToCFDictionary() == *v28)
      {
        v33 = self->entitlements;
        self->entitlements = v35;

        goto LABEL_27;
      }

      v29 = sub_1B9D98960();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *v34 = 0;
        v30 = v34;
        goto LABEL_31;
      }
    }

    else
    {
      v29 = sub_1B9D98960();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v35) = 0;
        v30 = &v35;
LABEL_31:
        _os_log_error_impl(&dword_1B9D96000, v29, OS_LOG_TYPE_ERROR, "Invalid entitlements in a provisioning profile", v30, 2u);
      }
    }

    v2 = -402620413;

    goto LABEL_23;
  }

  return 0;
}

- (void)dealloc
{
  ceCtx = self->ceCtx;
  p_ceCtx = &self->ceCtx;
  if (ceCtx)
  {
    sub_1B9DC8B44(p_ceCtx);
  }

  v5.receiver = self;
  v5.super_class = MISProfile;
  [(MISProfile *)&v5 dealloc];
}

- (MISProfile)init
{
  v11.receiver = self;
  v11.super_class = MISProfile;
  v2 = [(MISProfile *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_fixedup = 0;
    signature = v2->signature;
    v2->signature = 0;

    derEntitlementsStorage = v3->derEntitlementsStorage;
    v3->ceCtx = 0;
    v3->derEntitlementsStorage = 0;

    objc_msgSend_setPayload_(v3, v6, 0);
    objc_msgSend_setEntitlements_(v3, v7, 0);
    objc_msgSend_setCerts_(v3, v8, 0);
    v9 = v3;
  }

  return v3;
}

@end