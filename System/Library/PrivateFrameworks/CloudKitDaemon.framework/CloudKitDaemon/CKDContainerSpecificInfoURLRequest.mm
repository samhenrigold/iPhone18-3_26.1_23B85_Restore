@interface CKDContainerSpecificInfoURLRequest
- (CKDContainerSpecificInfoURLRequest)initWithOperation:(id)operation containerIdentifier:(id)identifier;
- (id)url;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)requestDidParseJSONObject:(id)object;
@end

@implementation CKDContainerSpecificInfoURLRequest

- (CKDContainerSpecificInfoURLRequest)initWithOperation:(id)operation containerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CKDContainerSpecificInfoURLRequest;
  v8 = [(CKDURLRequest *)&v11 initWithOperation:operation];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_containerIdentifier, identifier);
  }

  return v9;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v9.receiver = self;
  v9.super_class = CKDContainerSpecificInfoURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v9 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v7 = objc_msgSend_containerIdentifier(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v8, v7, @"containerIdentifier");
}

- (id)url
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  v7 = objc_msgSend_setupBaseURL(v4, v5, v6);

  v9 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x277CCACE0], v8, v7, 1);
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v13 = objc_msgSend_path(v9, v11, v12);
  if (v13)
  {
    v16 = v13;
    v17 = objc_msgSend_path(v9, v14, v15);
    v20 = objc_msgSend_length(v17, v18, v19);

    if (v20)
    {
      v22 = objc_msgSend_path(v9, v14, v21);
      objc_msgSend_appendString_(v10, v23, v22);
    }
  }

  objc_msgSend_appendString_(v10, v14, @"/setup/ck/v1/ckAppInit");
  objc_msgSend_setPath_(v9, v24, v10);
  v38 = @"container";
  v27 = objc_msgSend_containerIdentifier(self, v25, v26);
  v39[0] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v39, &v38, 1);

  v32 = objc_msgSend_CKPercentEscapedQueryString(v29, v30, v31);
  objc_msgSend_setPercentEncodedQuery_(v9, v33, v32);

  v36 = objc_msgSend_URL(v9, v34, v35);

  return v36;
}

- (void)requestDidParseJSONObject:(id)object
{
  v184 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (!objc_msgSend_count(objectCopy, v5, v6))
  {
    v85 = MEMORY[0x277CBC560];
    v86 = *MEMORY[0x277CBC120];
    v87 = objc_msgSend_containerIdentifier(self, v7, v8);
    v89 = objc_msgSend_errorWithDomain_code_format_(v85, v88, v86, 1014, @"Couldn't get container configuration from the server for container %@", v87);
    objc_msgSend_finishWithError_(self, v90, v89);

    goto LABEL_71;
  }

  v9 = objc_opt_new();
  objc_msgSend_setContainerServerInfo_(self, v10, v9);

  v12 = objc_msgSend_CKFirstUrlForKeys_(objectCopy, v11, &unk_2838C8F58);
  v15 = objc_msgSend_containerServerInfo(self, v13, v14);
  objc_msgSend_setPublicCloudDBURL_(v15, v16, v12);

  v19 = objc_msgSend_containerServerInfo(self, v17, v18);
  v22 = objc_msgSend_publicCloudDBURL(v19, v20, v21);

  v24 = MEMORY[0x277CBC880];
  v25 = MEMORY[0x277CBC860];
  if (!v22)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v150 = v26;
      v153 = objc_msgSend_requestUUID(self, v151, v152);
      *buf = 138543362;
      v181 = v153;
      _os_log_error_impl(&dword_22506F000, v150, OS_LOG_TYPE_ERROR, "req: %{public}@, Couldn't create publicCloudDBURL url", buf, 0xCu);
    }
  }

  v27 = objc_msgSend_CKFirstUrlForKeys_(objectCopy, v23, &unk_2838C8F70);
  v30 = objc_msgSend_containerServerInfo(self, v28, v29);
  objc_msgSend_setPublicShareServiceURL_(v30, v31, v27);

  v34 = objc_msgSend_containerServerInfo(self, v32, v33);
  v37 = objc_msgSend_publicShareServiceURL(v34, v35, v36);

  if (!v37)
  {
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v39 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v154 = v39;
      v157 = objc_msgSend_requestUUID(self, v155, v156);
      *buf = 138543362;
      v181 = v157;
      _os_log_error_impl(&dword_22506F000, v154, OS_LOG_TYPE_ERROR, "req: %{public}@, Couldn't create publicShareServiceURL url", buf, 0xCu);
    }
  }

  v40 = objc_msgSend_CKFirstUrlForKeys_(objectCopy, v38, &unk_2838C8F88);
  v43 = objc_msgSend_containerServerInfo(self, v41, v42);
  objc_msgSend_setPublicDeviceServiceURL_(v43, v44, v40);

  v47 = objc_msgSend_containerServerInfo(self, v45, v46);
  v50 = objc_msgSend_publicDeviceServiceURL(v47, v48, v49);

  if (!v50)
  {
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v52 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v158 = v52;
      v161 = objc_msgSend_requestUUID(self, v159, v160);
      *buf = 138543362;
      v181 = v161;
      _os_log_error_impl(&dword_22506F000, v158, OS_LOG_TYPE_ERROR, "req: %{public}@, Couldn't create publicDeviceServiceURL url", buf, 0xCu);
    }
  }

  v53 = objc_msgSend_CKFirstUrlForKeys_(objectCopy, v51, &unk_2838C8FA0);
  v56 = objc_msgSend_containerServerInfo(self, v54, v55);
  objc_msgSend_setPublicCodeServiceURL_(v56, v57, v53);

  v60 = objc_msgSend_containerServerInfo(self, v58, v59);
  v63 = objc_msgSend_publicCodeServiceURL(v60, v61, v62);

  if (!v63)
  {
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v65 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v162 = v65;
      v165 = objc_msgSend_requestUUID(self, v163, v164);
      *buf = 138543362;
      v181 = v165;
      _os_log_error_impl(&dword_22506F000, v162, OS_LOG_TYPE_ERROR, "req: %{public}@, Couldn't create publicCodeServiceURL url", buf, 0xCu);
    }
  }

  v66 = objc_msgSend_CKFirstUrlForKeys_(objectCopy, v64, &unk_2838C8FB8);
  v69 = objc_msgSend_containerServerInfo(self, v67, v68);
  objc_msgSend_setPublicMetricsServiceURL_(v69, v70, v66);

  v73 = objc_msgSend_containerServerInfo(self, v71, v72);
  v76 = objc_msgSend_publicMetricsServiceURL(v73, v74, v75);

  if (!v76)
  {
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v78 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v166 = v78;
      v169 = objc_msgSend_requestUUID(self, v167, v168);
      *buf = 138543362;
      v181 = v169;
      _os_log_error_impl(&dword_22506F000, v166, OS_LOG_TYPE_ERROR, "req: %{public}@, Couldn't create publicMetricsServiceURL url", buf, 0xCu);
    }
  }

  v79 = objc_msgSend_objectForKeyedSubscript_(objectCopy, v77, @"cloudKitUserId");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v91 = objc_msgSend_requireUserIDs(self, v80, v81);
    v92 = MEMORY[0x277CBC878];
    v93 = *MEMORY[0x277CBC878];
    if (v91)
    {
      if (*v24 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v93);
      }

      v94 = *v25;
      if (!os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      v97 = v94;
      v100 = objc_msgSend_requestUUID(self, v98, v99);
      *buf = 138543618;
      v181 = v100;
      v182 = 2114;
      v183 = v79;
      _os_log_error_impl(&dword_22506F000, v97, OS_LOG_TYPE_ERROR, "req: %{public}@, Couldn't parse a container scoped user id from %{public}@", buf, 0x16u);
    }

    else
    {
      if (*v24 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v93);
      }

      v101 = *v25;
      if (!os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_38;
      }

      v97 = v101;
      v100 = objc_msgSend_requestUUID(self, v170, v171);
      *buf = 138543618;
      v181 = v100;
      v182 = 2114;
      v183 = v79;
      _os_log_debug_impl(&dword_22506F000, v97, OS_LOG_TYPE_DEBUG, "req: %{public}@, Couldn't parse a container scoped user id from %{public}@", buf, 0x16u);
    }

LABEL_38:
    if (objc_msgSend_requireUserIDs(self, v95, v96))
    {
      v103 = objc_msgSend_iCloudAuthToken(self, v84, v102);
      v106 = objc_msgSend_length(v103, v104, v105);

      if (!v106)
      {
        if (*v24 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v92);
        }

        v107 = *v25;
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
        {
          v172 = v107;
          v175 = objc_msgSend_requestUUID(self, v173, v174);
          *buf = 138543362;
          v181 = v175;
          _os_log_debug_impl(&dword_22506F000, v172, OS_LOG_TYPE_DEBUG, "req: %{public}@, Container scoped user ID was needed but not returned because we didn't have an iCloud auth token. Handling this as an auth failure.", buf, 0xCu);
        }

        objc_msgSend_setNeedsAuthRetry_(self, v108, 1);
      }
    }

    goto LABEL_45;
  }

  v82 = objc_msgSend_containerServerInfo(self, v80, v81);
  objc_msgSend_setContainerScopedUserID_(v82, v83, v79);

LABEL_45:
  v109 = objc_msgSend_objectForKeyedSubscript_(objectCopy, v84, @"orgInfo");
  v111 = objc_msgSend_objectForKeyedSubscript_(v109, v110, @"cloudKitOrgUserId");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v114 = objc_msgSend_containerServerInfo(self, v112, v113);
    objc_msgSend_setOrgAdminUserID_(v114, v115, v111);
  }

  else
  {
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v118 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
    {
      v146 = v118;
      v149 = objc_msgSend_requestUUID(self, v147, v148);
      *buf = 138543618;
      v181 = v149;
      v182 = 2114;
      v183 = v111;
      _os_log_debug_impl(&dword_22506F000, v146, OS_LOG_TYPE_DEBUG, "req: %{public}@, Couldn't parse an org admin user id from %{public}@", buf, 0x16u);
    }

    if (objc_msgSend_requireUserIDs(self, v119, v120))
    {
      v121 = objc_msgSend_iCloudAuthToken(self, v116, v117);
      v124 = objc_msgSend_length(v121, v122, v123);

      if (!v124)
      {
        if (*v24 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v125 = *v25;
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
        {
          v176 = v125;
          v179 = objc_msgSend_requestUUID(self, v177, v178);
          *buf = 138543362;
          v181 = v179;
          _os_log_debug_impl(&dword_22506F000, v176, OS_LOG_TYPE_DEBUG, "req: %{public}@, Org Admin user ID was needed but not returned because we didn't have an iCloud auth token. Handling this as an auth failure.", buf, 0xCu);
        }

        objc_msgSend_setNeedsAuthRetry_(self, v126, 1);
      }
    }
  }

  v127 = objc_msgSend_operation(self, v116, v117);
  v130 = objc_msgSend_deviceContext(v127, v128, v129);
  objc_msgSend_BOOLOptionForKey_(v130, v131, *MEMORY[0x277CBC118]);
  v132 = CKBoolFromCKTernaryWithDefault();

  if ((v132 & 1) == 0)
  {
    v134 = objc_msgSend_objectForKeyedSubscript_(objectCopy, v133, @"environment");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v137 = objc_msgSend_lowercaseString(v134, v135, v136);

      if ((objc_msgSend_isEqualToString_(v137, v138, @"production") & 1) != 0 || !objc_msgSend_hasPrefix_(v137, v135, @"icloud"))
      {
        v143 = 0;
      }

      else
      {
        v139 = objc_msgSend_substringWithRange_(v137, v135, 6, 1);
        v142 = objc_msgSend_integerValue(v139, v140, v141);
        if ((v142 - 1) >= 3)
        {
          v143 = 0;
        }

        else
        {
          v143 = v142;
        }
      }

      v134 = v137;
    }

    else
    {
      v143 = 0;
    }

    v144 = objc_msgSend_containerServerInfo(self, v135, v136);
    objc_msgSend_setEnvironment_(v144, v145, v143);
  }

LABEL_71:
}

@end