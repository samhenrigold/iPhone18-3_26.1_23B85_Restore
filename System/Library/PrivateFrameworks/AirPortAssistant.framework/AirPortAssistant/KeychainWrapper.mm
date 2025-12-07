@interface KeychainWrapper
+ (id)keychainPasswordForMACAddress:(id)address;
+ (id)keychainWrapperWithMACAddress:(id)address;
+ (void)removeKeychainPasswordForMACAddress:(id)address;
- (KeychainWrapper)initWithAccountName:(id)name serviceName:(id)serviceName;
- (id)genericPassword;
- (id)genericPasswordQuery;
- (id)getGenericPassword;
- (id)getPasswordFromQuery:(id)query;
- (int)addGenericPassword:(id)password withLabel:(id)label andDescription:(id)description;
- (void)dealloc;
- (void)removeGenericPassword;
@end

@implementation KeychainWrapper

+ (id)keychainWrapperWithMACAddress:(id)address
{
  if (!address)
  {
    return 0;
  }

  v4 = [KeychainWrapper alloc];
  v7 = sub_23EB6D320(address, 0, v5, v6);
  v8 = sub_23EB6CD3C(@"keychainBaseStationType", @"AirPortSettings");
  v10 = objc_msgSend_initWithAccountName_serviceName_(v4, v9, v7, v8);

  return v10;
}

- (KeychainWrapper)initWithAccountName:(id)name serviceName:(id)serviceName
{
  v16.receiver = self;
  v16.super_class = KeychainWrapper;
  v6 = [(KeychainWrapper *)&v16 init];
  v9 = v6;
  if (v6)
  {
    objc_msgSend_setAccountName_(v6, v7, name, v8);
    objc_msgSend_setServiceName_(v9, v10, serviceName, v11);
    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    objc_msgSend_setLock_(v9, v13, v12, v14);
  }

  return v9;
}

- (void)dealloc
{
  objc_msgSend_setAccountName_(self, a2, 0, v2);
  objc_msgSend_setServiceName_(self, v4, 0, v5);
  objc_msgSend_setLock_(self, v6, 0, v7);
  v8.receiver = self;
  v8.super_class = KeychainWrapper;
  [(KeychainWrapper *)&v8 dealloc];
}

+ (id)keychainPasswordForMACAddress:(id)address
{
  if (!objc_msgSend_length(address, a2, address, v3))
  {
    return 0;
  }

  v7 = objc_msgSend_keychainWrapperWithMACAddress_(KeychainWrapper, v5, address, v6);
  if (!v7)
  {
    return 0;
  }

  return MEMORY[0x2821F9670](v7, sel_genericPassword, v8, v9);
}

+ (void)removeKeychainPasswordForMACAddress:(id)address
{
  if (objc_msgSend_length(address, a2, address, v3))
  {
    v7 = objc_msgSend_keychainWrapperWithMACAddress_(KeychainWrapper, v5, address, v6);
    if (v7)
    {

      objc_msgSend_removeGenericPassword(v7, v8, v9, v10);
    }
  }
}

- (id)genericPasswordQuery
{
  result = objc_msgSend_accountName(self, a2, v2, v3);
  if (result)
  {
    v9 = MEMORY[0x277CBEAC0];
    v10 = *MEMORY[0x277CDC238];
    v11 = *MEMORY[0x277CDC228];
    v12 = objc_msgSend_accountName(self, v6, v7, v8);
    return objc_msgSend_dictionaryWithObjectsAndKeys_(v9, v13, v10, v14, v11, v12, *MEMORY[0x277CDBF20], 0, @"sync", 0);
  }

  return result;
}

- (id)getPasswordFromQuery:(id)query
{
  result = 0;
  if (!query)
  {
    return 0;
  }

  v24 = 0;
  v3 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v24, "{%##O%kO=%O}", query, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
  v4 = v24;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v24 == 0;
  }

  if (v5)
  {
    goto LABEL_17;
  }

  if (dword_27E383290 <= 800)
  {
    if (dword_27E383290 != -1 || (v6 = sub_23EB74AC8(&dword_27E383290, 0x320u), v4 = v24, v6))
    {
      sub_23EB75374(&dword_27E383290, "[KeychainWrapper getPasswordFromQuery:]", 800, "SecItemCopyMatching tempDict: %@\n", v4);
      v4 = v24;
    }
  }

  v10 = SecItemCopyMatching(v4, &result);
  if (v24)
  {
    CFRelease(v24);
    v24 = 0;
  }

  if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
  {
    sub_23EB75374(&dword_27E383290, "[KeychainWrapper getPasswordFromQuery:]", 800, "SecItemCopyMatching err: %#m\n", v10);
  }

  if (v10 == -25300)
  {
LABEL_17:
    v11 = 0;
  }

  else
  {
    v11 = 0;
    if (objc_msgSend_length(result, v7, v8, v9) && !v10)
    {
      v13 = objc_alloc(MEMORY[0x277CCACA8]);
      v17 = objc_msgSend_bytes(result, v14, v15, v16);
      v21 = objc_msgSend_length(result, v18, v19, v20);
      v11 = objc_msgSend_initWithBytes_length_encoding_(v13, v22, v17, v21, 4);
    }
  }

  if (result)
  {
    CFRelease(result);
  }

  return v11;
}

- (id)getGenericPassword
{
  result = objc_msgSend_genericPasswordQuery(self, a2, v2, v3);
  if (result)
  {

    return MEMORY[0x2821F9670](self, sel_getPasswordFromQuery_, result, v6);
  }

  return result;
}

- (id)genericPassword
{
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);
  GenericPassword = objc_msgSend_getGenericPassword(self, v9, v10, v11);
  v16 = objc_msgSend_lock(self, v13, v14, v15);
  objc_msgSend_unlock(v16, v17, v18, v19);
  return GenericPassword;
}

- (int)addGenericPassword:(id)password withLabel:(id)label andDescription:(id)description
{
  cf = 0;
  v12 = objc_msgSend_genericPasswordQuery(self, a2, password, label);
  if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
  {
    v13 = objc_msgSend_serviceName(self, v9, v10, v11);
    v17 = objc_msgSend_accountName(self, v14, v15, v16);
    sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "query: %@ self.serviceName: %@ self.accountName: %@\n", v12, v13, v17);
  }

  v18 = objc_msgSend_serviceName(self, v9, v10, v11);
  if (objc_msgSend_length(v18, v19, v20, v21))
  {
    v25 = objc_msgSend_accountName(self, v22, v23, v24);
    LODWORD(v31) = 0;
    if (objc_msgSend_length(v25, v26, v27, v28) && v12)
    {
      query = 0;
      v32 = objc_msgSend_dataUsingEncoding_(password, v29, 4, v30);
      if (v32)
      {
        v36 = v32;
        if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
        {
          v37 = objc_msgSend_length(v36, v33, v34, v35);
          sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "data (length): %ld\n", v37);
        }

        v38 = objc_msgSend_lock(self, v33, v34, v35);
        objc_msgSend_lock(v38, v39, v40, v41);
        v42 = *MEMORY[0x277CBECE8];
        v43 = sub_23EB6F348(*MEMORY[0x277CBECE8], &query, "{%##O%kO=%O%kO=%O}", v12, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28], *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
        if (v43)
        {
          goto LABEL_14;
        }

        v52 = query;
        if (query)
        {
          if (dword_27E383290 <= 800)
          {
            if (dword_27E383290 != -1 || (v53 = sub_23EB74AC8(&dword_27E383290, 0x320u), v52 = query, v53))
            {
              sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "SecItemCopyMatching tempDict: %@\n", v52);
              v52 = query;
            }
          }

          v31 = SecItemCopyMatching(v52, &cf);
          if (query)
          {
            CFRelease(query);
            query = 0;
          }

          if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
          {
            sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "SecItemCopyMatching err: %#m\n", v31);
          }

          if (v31 == -25300)
          {
            LODWORD(v31) = 0;
          }

          if (cf)
          {
            v57 = *MEMORY[0x277CDC5E8];
            v58 = objc_msgSend_objectForKey_(cf, v54, *MEMORY[0x277CDC5E8], v56);
            isEqual = objc_msgSend_isEqual_(v58, v59, v36, v60);
            v64 = *MEMORY[0x277CDC080];
            if (isEqual)
            {
              v65 = objc_msgSend_objectForKey_(cf, v62, *MEMORY[0x277CDC080], v63);
              if (objc_msgSend_isEqual_(v65, v66, label, v67))
              {
                goto LABEL_15;
              }
            }

            v43 = sub_23EB6F348(v42, &query, "{%kO=%O%kO=%O}", v57, v36, v64, label);
            if (v43)
            {
              goto LABEL_14;
            }

            v44 = query;
            if (query)
            {
              v31 = SecItemUpdate(v12, query);
              if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
              {
                sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "SecItemUpdate err: %#m\n", v31);
              }

LABEL_49:
              if (query)
              {
                CFRelease(query);
                query = 0;
              }

              goto LABEL_15;
            }
          }

          else
          {
            v68 = *MEMORY[0x277CDC120];
            v69 = objc_msgSend_serviceName(self, v54, v55, v56);
            v43 = sub_23EB6F348(v42, &query, "{%##O%kO=%O%kO=%O%kO=%O%kO=%O}", v12, v68, v69, *MEMORY[0x277CDC5E8], v36, *MEMORY[0x277CDC080], label, *MEMORY[0x277CDBFA0], description);
            if (v43)
            {
LABEL_14:
              LODWORD(v31) = v43;
LABEL_15:
              v47 = objc_msgSend_lock(self, v44, v45, v46);
              objc_msgSend_unlock(v47, v48, v49, v50);
              goto LABEL_18;
            }

            if (query)
            {
              v31 = SecItemAdd(query, 0);
              if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
              {
                sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "SecItemAdd err: %#m\n", v31);
              }

              goto LABEL_49;
            }
          }
        }

        LODWORD(v31) = -6728;
        goto LABEL_15;
      }

      LODWORD(v31) = -6705;
    }
  }

  else
  {
    LODWORD(v31) = 0;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v31;
}

- (void)removeGenericPassword
{
  v5 = objc_msgSend_genericPasswordQuery(self, a2, v2, v3);
  if (v5)
  {
    v9 = v5;
    v10 = objc_msgSend_lock(self, v6, v7, v8);
    objc_msgSend_lock(v10, v11, v12, v13);
    SecItemDelete(v9);
    v17 = objc_msgSend_lock(self, v14, v15, v16);

    objc_msgSend_unlock(v17, v18, v19, v20);
  }
}

@end