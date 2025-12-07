@interface HMDNameValidator
+ (id)allowedMiddleCharacters;
+ (id)allowedTerminalCharacters;
- (HMDNameValidator)initWithUUID:(id)d;
- (id)_addName:(id)name namespace:(id)namespace;
- (id)_addNamespace:(id)namespace;
- (id)_checkForConflict:(id)conflict namespace:(id)namespace;
- (id)_removeName:(id)name namespace:(id)namespace;
- (id)_removeNamespace:(id)namespace;
- (id)_replaceName:(id)name withNewName:(id)newName inNamespaces:(id)namespaces;
- (id)_validateName:(id)name;
- (id)addName:(id)name namespace:(id)namespace voiceShortcutCheck:(BOOL)check;
- (id)addNamespace:(id)namespace;
- (id)checkForConflict:(id)conflict namespace:(id)namespace;
- (id)despaceName:(id)name;
- (id)nameByTrimmingDisallowedCharactersFromName:(id)name;
- (id)removeName:(id)name namespace:(id)namespace;
- (id)removeNamespace:(id)namespace;
- (id)replaceName:(id)name withNewName:(id)newName inNamespaces:(id)namespaces voiceShortcutCheck:(BOOL)check;
- (id)validateName:(id)name;
@end

@implementation HMDNameValidator

- (id)replaceName:(id)name withNewName:(id)newName inNamespaces:(id)namespaces voiceShortcutCheck:(BOOL)check
{
  checkCopy = check;
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  newNameCopy = newName;
  namespacesCopy = namespaces;
  if (![namespacesCopy count])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v16;
      v25 = 2112;
      v26 = nameCopy;
      v27 = 2112;
      v28 = newNameCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Empty set of namespace UUIDs in operation to replace %@ with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    goto LABEL_11;
  }

  if (!nameCopy || !newNameCopy)
  {
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
LABEL_11:
    v13 = v17;
    goto LABEL_14;
  }

  os_unfair_lock_lock_with_options();
  if (checkCopy && (isNameValidWithVoiceShortcut(newNameCopy) & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2300];
    v21 = *MEMORY[0x277CCA7E8];
    v22 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:95 userInfo:v19];
  }

  else
  {
    v13 = [(HMDNameValidator *)self _replaceName:nameCopy withNewName:newNameCopy inNamespaces:namespacesCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_14:

  return v13;
}

- (id)removeName:(id)name namespace:(id)namespace
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  namespaceCopy = namespace;
  if (namespaceCopy)
  {
    if (nameCopy)
    {
      os_unfair_lock_lock_with_options();
      v8 = [(HMDNameValidator *)self _removeName:nameCopy namespace:namespaceCopy];
      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_9;
    }

    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = nameCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Namespace UUID is nil in operation to remove %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  v8 = v12;
LABEL_9:

  return v8;
}

- (id)addName:(id)name namespace:(id)namespace voiceShortcutCheck:(BOOL)check
{
  checkCopy = check;
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  namespaceCopy = namespace;
  if (!namespaceCopy)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = nameCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Namespace UUID is nil in operation to add %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    goto LABEL_10;
  }

  if (!nameCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
LABEL_10:
    v10 = v14;
    goto LABEL_13;
  }

  os_unfair_lock_lock_with_options();
  if (checkCopy && (isNameValidWithVoiceShortcut(nameCopy) & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2300];
    v18 = *MEMORY[0x277CCA7E8];
    v19 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:95 userInfo:v16];
  }

  else
  {
    v10 = [(HMDNameValidator *)self _addName:nameCopy namespace:namespaceCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_13:

  return v10;
}

- (id)checkForConflict:(id)conflict namespace:(id)namespace
{
  conflictCopy = conflict;
  namespaceCopy = namespace;
  os_unfair_lock_lock_with_options();
  v8 = [(HMDNameValidator *)self _checkForConflict:conflictCopy namespace:namespaceCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)validateName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDNameValidator *)self _validateName:nameCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)removeNamespace:(id)namespace
{
  v12 = *MEMORY[0x277D85DE8];
  namespaceCopy = namespace;
  if (namespaceCopy)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(HMDNameValidator *)self _removeNamespace:namespaceCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Namespace UUID is nil in operation to remove namespace", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  return v5;
}

- (id)addNamespace:(id)namespace
{
  v12 = *MEMORY[0x277D85DE8];
  namespaceCopy = namespace;
  if (namespaceCopy)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(HMDNameValidator *)self _addNamespace:namespaceCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Namespace UUID is nil in operation to add namespace", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  return v5;
}

- (id)_replaceName:(id)name withNewName:(id)newName inNamespaces:(id)namespaces
{
  v91 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  newNameCopy = newName;
  namespacesCopy = namespaces;
  v62 = nameCopy;
  if ([nameCopy isEqual:newNameCopy])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v83 = v12;
      v84 = 2112;
      v85 = nameCopy;
      v86 = 2112;
      v87 = namespacesCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to replace %@ with same entry in namespaces %@ - skipping...", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v13 = 0;
  }

  else
  {
    v59 = newNameCopy;
    array = [MEMORY[0x277CBEB18] array];
    [MEMORY[0x277CBEB18] array];
    v58 = v57 = namespacesCopy;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v14 = namespacesCopy;
    v15 = [v14 countByEnumeratingWithState:&v75 objects:v90 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v76;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v76 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v75 + 1) + 8 * i);
          v20 = [(HMDNameValidator *)self _removeName:nameCopy namespace:v19];
          if (v20)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138544130;
              v83 = v23;
              v84 = 2112;
              v85 = nameCopy;
              v86 = 2112;
              v87 = v19;
              v88 = 2112;
              v89 = v20;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to remove existing name %@ from namespace %@ error %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v21);
          }

          else
          {
            [array addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v75 objects:v90 count:16];
      }

      while (v16);
    }

    newNameCopy = v59;
    if (v59)
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v24 = v14;
      v25 = [v24 countByEnumeratingWithState:&v71 objects:v81 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v72;
        v28 = v58;
        while (2)
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v72 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v71 + 1) + 8 * j);
            v31 = [(HMDNameValidator *)self _addName:v59 namespace:v30];
            if (v31)
            {
              v32 = v31;
              v33 = objc_autoreleasePoolPush();
              v34 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v35 = HMFGetLogIdentifier();
                *buf = 138544130;
                v83 = v35;
                v84 = 2112;
                v85 = v59;
                v86 = 2112;
                v87 = v30;
                v88 = 2112;
                v89 = v32;
                _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to add new name %@ from namespace %@  error %@", buf, 0x2Au);
              }

              v56 = v32;

              objc_autoreleasePoolPop(v33);
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              v36 = v58;
              v37 = [v36 countByEnumeratingWithState:&v67 objects:v80 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v68;
                do
                {
                  for (k = 0; k != v38; ++k)
                  {
                    if (*v68 != v39)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v41 = *(*(&v67 + 1) + 8 * k);
                    v42 = [(HMDNameValidator *)self _removeName:newNameCopy namespace:v41, v56];
                    if (v42)
                    {
                      v43 = objc_autoreleasePoolPush();
                      v44 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                      {
                        v45 = HMFGetLogIdentifier();
                        *buf = 138544130;
                        v83 = v45;
                        v84 = 2112;
                        v85 = v59;
                        v86 = 2112;
                        v87 = v41;
                        v88 = 2112;
                        v89 = v42;
                        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove new name %@ to namespace %@ error %@", buf, 0x2Au);

                        newNameCopy = v59;
                      }

                      objc_autoreleasePoolPop(v43);
                    }
                  }

                  v38 = [v36 countByEnumeratingWithState:&v67 objects:v80 count:16];
                }

                while (v38);
              }

              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v24 = array;
              v46 = [v24 countByEnumeratingWithState:&v63 objects:v79 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v64;
                do
                {
                  for (m = 0; m != v47; ++m)
                  {
                    if (*v64 != v48)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v50 = *(*(&v63 + 1) + 8 * m);
                    v51 = [(HMDNameValidator *)self _addName:v62 namespace:v50, v56];
                    if (v51)
                    {
                      v52 = objc_autoreleasePoolPush();
                      v53 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                      {
                        v54 = HMFGetLogIdentifier();
                        *buf = 138544130;
                        v83 = v54;
                        v84 = 2112;
                        v85 = v62;
                        v86 = 2112;
                        v87 = v50;
                        v88 = 2112;
                        v89 = v51;
                        _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Failed to add existing name %@ to namespace %@ error %@", buf, 0x2Au);
                      }

                      objc_autoreleasePoolPop(v52);
                    }
                  }

                  v47 = [v24 countByEnumeratingWithState:&v63 objects:v79 count:16];
                }

                while (v47);
                newNameCopy = v59;
              }

              v28 = v58;
              v13 = v56;
              goto LABEL_55;
            }

            [v58 addObject:v30];
          }

          v26 = [v24 countByEnumeratingWithState:&v71 objects:v81 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }

        v13 = 0;
      }

      else
      {
        v13 = 0;
        v28 = v58;
      }

LABEL_55:
    }

    else
    {
      v13 = 0;
      v28 = v58;
    }

    namespacesCopy = v57;
  }

  return v13;
}

- (id)_removeName:(id)name namespace:(id)namespace
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  namespaceCopy = namespace;
  namespaceList = [(HMDNameValidator *)self namespaceList];
  v9 = [namespaceList objectForKeyedSubscript:namespaceCopy];

  if (v9)
  {
    v10 = [(HMDNameValidator *)self despaceName:nameCopy];
    if ([v9 containsObject:v10])
    {
      [v9 removeObject:v10];
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v14;
      v18 = 2112;
      v19 = namespaceCopy;
      v20 = 2112;
      v21 = nameCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to look up namespace %@ to remove name %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  }

  return v11;
}

- (id)_addName:(id)name namespace:(id)namespace
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  namespaceCopy = namespace;
  v8 = [(HMDNameValidator *)self _validateName:nameCopy];
  if (!v8)
  {
    v9 = [(HMDNameValidator *)self despaceName:nameCopy];
    namespaceList = [(HMDNameValidator *)self namespaceList];
    v11 = [namespaceList objectForKeyedSubscript:namespaceCopy];

    if (v11)
    {
      if (![v11 containsObject:v9])
      {
        [v11 addObject:v9];
        v8 = 0;
        goto LABEL_10;
      }

      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCFD28];
      v14 = 31;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543874;
        v20 = v17;
        v21 = 2112;
        v22 = namespaceCopy;
        v23 = 2112;
        v24 = nameCopy;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to look up namespace %@ to remove name %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCFD28];
      v14 = 2;
    }

    v8 = [v12 errorWithDomain:v13 code:v14 userInfo:0];
LABEL_10:
  }

  return v8;
}

- (id)_checkForConflict:(id)conflict namespace:(id)namespace
{
  v21 = *MEMORY[0x277D85DE8];
  conflictCopy = conflict;
  namespaceCopy = namespace;
  v8 = [(HMDNameValidator *)self despaceName:conflictCopy];
  namespaceList = [(HMDNameValidator *)self namespaceList];
  v10 = [namespaceList objectForKeyedSubscript:namespaceCopy];

  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = namespaceCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to look up namespace %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 2;
    goto LABEL_7;
  }

  if ([v10 containsObject:v8])
  {
    v11 = 31;
LABEL_7:
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v11];
    goto LABEL_9;
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (id)nameByTrimmingDisallowedCharactersFromName:(id)name
{
  nameCopy = name;
  v4 = objc_autoreleasePoolPush();
  allowedMiddleCharacters = [objc_opt_class() allowedMiddleCharacters];
  invertedSet = [allowedMiddleCharacters invertedSet];

  v7 = [nameCopy componentsSeparatedByCharactersInSet:invertedSet];
  v8 = [v7 componentsJoinedByString:&stru_283CF9D50];

  objc_autoreleasePoolPop(v4);

  return v8;
}

- (id)_validateName:(id)name
{
  v49 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = [nameCopy length];
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    allowedInitialCharacters = [objc_opt_class() allowedInitialCharacters];
    v8 = [nameCopy rangeOfCharacterFromSet:allowedInitialCharacters options:129];

    if (v8)
    {
      v9 = [nameCopy substringWithRange:{0, 1}];
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v9 dataUsingEncoding:4];
        hmf_hexadecimalRepresentation = [v14 hmf_hexadecimalRepresentation];
        v41 = 138544130;
        v42 = v13;
        v43 = 2112;
        v44 = v9;
        v45 = 2112;
        v46 = hmf_hexadecimalRepresentation;
        v47 = 2112;
        v48 = nameCopy;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Name is invalid: starts with disallowed character '%@' (0x%@): '%@'", &v41, 0x2Au);
      }

      v16 = 36;
LABEL_15:

      objc_autoreleasePoolPop(v10);
      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v16];

      objc_autoreleasePoolPop(v6);
      goto LABEL_21;
    }

    allowedTerminalCharacters = [objc_opt_class() allowedTerminalCharacters];
    v22 = [nameCopy rangeOfCharacterFromSet:allowedTerminalCharacters options:133];

    if (v22 != [nameCopy length] - 1)
    {
      v9 = [nameCopy substringWithRange:{objc_msgSend(nameCopy, "length") - 1, 1}];
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v9 dataUsingEncoding:4];
        hmf_hexadecimalRepresentation2 = [v30 hmf_hexadecimalRepresentation];
        v41 = 138544130;
        v42 = v29;
        v43 = 2112;
        v44 = v9;
        v45 = 2112;
        v46 = hmf_hexadecimalRepresentation2;
        v47 = 2112;
        v48 = nameCopy;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Name is invalid: ends with allowed character '%@' (0x%@): '%@'", &v41, 0x2Au);
      }

      v16 = 60;
      goto LABEL_15;
    }

    allowedMiddleCharacters = [objc_opt_class() allowedMiddleCharacters];
    invertedSet = [allowedMiddleCharacters invertedSet];

    v25 = [nameCopy rangeOfCharacterFromSet:invertedSet options:129];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0;
    }

    else
    {
      v33 = [nameCopy substringWithRange:{v25, v26}];
      v34 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        v38 = [v33 dataUsingEncoding:4];
        hmf_hexadecimalRepresentation3 = [v38 hmf_hexadecimalRepresentation];
        v41 = 138544130;
        v42 = v37;
        v43 = 2112;
        v44 = v33;
        v45 = 2112;
        v46 = hmf_hexadecimalRepresentation3;
        v47 = 2112;
        v48 = nameCopy;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Name is invalid: contains disallowed character '%@' (0x%@): '%@'", &v41, 0x2Au);
      }

      objc_autoreleasePoolPop(v34);
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:35];
    }

    objc_autoreleasePoolPop(v6);
    v20 = v27;
  }

  else
  {
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v41 = 138543618;
      v42 = v19;
      v43 = 2112;
      v44 = nameCopy;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Name %@ is empty", &v41, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  v32 = v20;
LABEL_21:

  return v32;
}

- (id)despaceName:(id)name
{
  v4 = MEMORY[0x277CCA900];
  nameCopy = name;
  whitespaceCharacterSet = [v4 whitespaceCharacterSet];
  v7 = MEMORY[0x277CBEB18];
  v8 = [nameCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v9 = [v7 arrayWithArray:v8];

  nonZeroLengthPredicate = [(HMDNameValidator *)self nonZeroLengthPredicate];
  v11 = [v9 filteredArrayUsingPredicate:nonZeroLengthPredicate];

  v12 = [v11 componentsJoinedByString:&stru_283CF9D50];
  lowercaseString = [v12 lowercaseString];

  return lowercaseString;
}

- (id)_removeNamespace:(id)namespace
{
  namespaceCopy = namespace;
  namespaceList = [(HMDNameValidator *)self namespaceList];
  v6 = [namespaceList objectForKeyedSubscript:namespaceCopy];

  if (v6)
  {
    namespaceList2 = [(HMDNameValidator *)self namespaceList];
    [namespaceList2 removeObjectForKey:namespaceCopy];

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  }

  return v8;
}

- (id)_addNamespace:(id)namespace
{
  namespaceCopy = namespace;
  namespaceList = [(HMDNameValidator *)self namespaceList];
  v6 = [namespaceList objectForKeyedSubscript:namespaceCopy];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:1 userInfo:0];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] set];
    namespaceList2 = [(HMDNameValidator *)self namespaceList];
    [namespaceList2 setObject:v8 forKey:namespaceCopy];

    v7 = 0;
  }

  return v7;
}

- (HMDNameValidator)initWithUUID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = HMDNameValidator;
  v6 = [(HMDNameValidator *)&v13 init];
  if (v6)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    namespaceList = v6->_namespaceList;
    v6->_namespaceList = dictionary;

    objc_storeStrong(&v6->_homeManagerUUID, d);
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"length != 0"];
    nonZeroLengthPredicate = v6->_nonZeroLengthPredicate;
    v6->_nonZeroLengthPredicate = v9;

    v11 = [(HMDNameValidator *)v6 _addNamespace:v6->_homeManagerUUID];
  }

  return v6;
}

+ (id)allowedMiddleCharacters
{
  allowedTerminalCharacters = [self allowedTerminalCharacters];
  v3 = [allowedTerminalCharacters mutableCopy];

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v3 formUnionWithCharacterSet:whitespaceCharacterSet];

  controlCharacterSet = [MEMORY[0x277CCA900] controlCharacterSet];
  [v3 formUnionWithCharacterSet:controlCharacterSet];

  punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v3 formUnionWithCharacterSet:punctuationCharacterSet];

  return v3;
}

+ (id)allowedTerminalCharacters
{
  allowedInitialCharacters = [self allowedInitialCharacters];
  v3 = [allowedInitialCharacters mutableCopy];

  [v3 addCharactersInString:@"."];

  return v3;
}

@end