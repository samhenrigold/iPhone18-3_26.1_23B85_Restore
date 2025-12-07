@interface CLFindMyAccessoryFirmwareUpdateManager
- (CLFindMyAccessoryFirmwareUpdateManager)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (void)abortFirmwareUpdateForDevice:(id)device;
- (void)fetchWhetherLocalFirmwareAssetIsInUseForProductGroup:(id)group andProductNumber:(id)number;
- (void)getPersonalizationInfoForDevice:(id)device;
- (void)handleInterruption;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)updateFirmwareForDevice:(id)device withAssetURL:(id)l;
- (void)useDefaultFirmwareAssetSourceForProductGroup:(id)group andProductNumber:(id)number;
- (void)useLocalFirmwareAssetFromURL:(id)l forProductGroup:(id)group forProductNumber:(id)number withSandboxExtension:(id)extension;
@end

@implementation CLFindMyAccessoryFirmwareUpdateManager

- (CLFindMyAccessoryFirmwareUpdateManager)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  v9.receiver = self;
  v9.super_class = CLFindMyAccessoryFirmwareUpdateManager;
  v6 = [(CLFindMyAccessoryFirmwareUpdateManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegate);
    if (queue)
    {
      v7->_delegateQueue = queue;
      dispatch_retain(queue);
    }

    else
    {
      v7->_delegateQueue = dispatch_queue_create("com.apple.FindMyAccessoryFirmwareUpdateManager.privateQueue", 0);
    }

    operator new();
  }

  return 0;
}

- (void)handleInterruption
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
  }

  v3 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Connection to locationd interrupted!!", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
    }

    v13[0] = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4700, 16, "Connection to locationd interrupted!!", v13, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryFirmwareUpdateManager handleInterruption]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_alloc(MEMORY[0x1E696ABC0]);
  v14 = *MEMORY[0x1E696A578];
  v15 = @"Connection to locationd interrupted!";
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, &v15, &v14, 1);
  v10 = objc_msgSend_initWithDomain_code_userInfo_(v6, v9, @"kCLErrorDomainPrivate", 8, v8);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryFirmwareUpdateManager_didFailWithError_forDevice_(Weak, v12, self, v10, 0);
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  v196 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
  }

  v5 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CLConnectionMessage::name(*var0);
    if (*(v6 + 23) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *v6;
    }

    *buf = 136315138;
    v191 = v7;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "Got Reply: message: %s", buf, 0xCu);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
    }

    v9 = qword_1EAFE4700;
    v10 = CLConnectionMessage::name(*var0);
    if (*(v10 + 23) >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = *v10;
    }

    v184 = 136315138;
    v185 = v11;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v9, 0, "Got Reply: message: %s", &v184, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v20 = objc_msgSend_setWithObjects_(v13, v18, v14, v19, v15, v16, v17, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v20);
  v24 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v22, 0x1F0E747E0, v23);
  v27 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v25, 0x1F0E74840, v26);
  v28 = CLConnectionMessage::name(*var0);
  if (!std::string::compare(v28, "DurianManagement/DidFetchPersonalizationInformation"))
  {
    v44 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v29, 0x1F0E74960, v30);
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
    }

    v45 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
    {
      v49 = objc_msgSend_UUIDString(v24, v46, v47, v48);
      v53 = objc_msgSend_UTF8String(v49, v50, v51, v52);
      v54 = "Failed";
      *buf = 136315650;
      v191 = v53;
      if (!v27)
      {
        v54 = "Success";
      }

      v192 = 2080;
      v193 = v54;
      v194 = 2112;
      v195 = v44;
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEFAULT, "informing client -- did retreive personalization info for device: %s - %s with info: %@", buf, 0x20u);
    }

    v55 = sub_19B87DD40();
    if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
      }

      v59 = qword_1EAFE4700;
      v60 = objc_msgSend_UUIDString(v24, v56, v57, v58);
      v64 = objc_msgSend_UTF8String(v60, v61, v62, v63);
      v65 = "Failed";
      v184 = 136315650;
      v185 = v64;
      if (!v27)
      {
        v65 = "Success";
      }

      v186 = 2080;
      v187 = v65;
      v188 = 2112;
      v189 = v44;
      v66 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v59, 0, "informing client -- did retreive personalization info for device: %s - %s with info: %@", &v184, 32);
      sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v66);
      if (v66 != buf)
      {
        free(v66);
      }
    }

    Weak = objc_loadWeak(&self->_delegate);
    objc_msgSend_findMyAccessoryFirmwareUpdateManager_personalizationRequestForDevice_completedWithInfo_andError_(Weak, v68, self, v24, v44, v27);
  }

  else
  {
    v31 = CLConnectionMessage::name(*var0);
    if (!std::string::compare(v31, "DurianManagement/DidUpdateFirmware"))
    {
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
      }

      v69 = qword_1EAFE4700;
      if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
      {
        v73 = objc_msgSend_UUIDString(v24, v70, v71, v72);
        v77 = objc_msgSend_UTF8String(v73, v74, v75, v76);
        v78 = "Failed";
        if (!v27)
        {
          v78 = "Succeeded";
        }

        *buf = 136315394;
        v191 = v77;
        v192 = 2080;
        v193 = v78;
        _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_DEFAULT, "informing client -- firmware update for device: %s - %s", buf, 0x16u);
      }

      v79 = sub_19B87DD40();
      if (*(v79 + 160) > 1 || *(v79 + 164) > 1 || *(v79 + 168) > 1 || *(v79 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46C8 != -1)
        {
          dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
        }

        v83 = qword_1EAFE4700;
        v84 = objc_msgSend_UUIDString(v24, v80, v81, v82);
        v88 = objc_msgSend_UTF8String(v84, v85, v86, v87);
        v89 = "Failed";
        if (!v27)
        {
          v89 = "Succeeded";
        }

        v184 = 136315394;
        v185 = v88;
        v186 = 2080;
        v187 = v89;
        v90 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v83, 0, "informing client -- firmware update for device: %s - %s", &v184, 22);
        sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v90);
        if (v90 != buf)
        {
          free(v90);
        }
      }

      v91 = objc_loadWeak(&self->_delegate);
      objc_msgSend_findMyAccessoryFirmwareUpdateManager_firmwareUpdateRequestForDevice_completedWithError_(v91, v92, self, v24, v27);
    }

    else
    {
      v32 = CLConnectionMessage::name(*var0);
      if (!std::string::compare(v32, "DurianManagement/DidUseLocalAssetRequest"))
      {
        v93 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v33, 0x1F0E74F60, v34);
        v96 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v94, 0x1F0E74F80, v95);
        if (qword_1EAFE46C8 != -1)
        {
          dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
        }

        v97 = qword_1EAFE4700;
        if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
        {
          v101 = objc_msgSend_UTF8String(v93, v98, v99, v100);
          v105 = objc_msgSend_UTF8String(v96, v102, v103, v104);
          v106 = "Failed";
          *buf = 136315650;
          v191 = v101;
          v192 = 2080;
          if (!v27)
          {
            v106 = "Succeeded";
          }

          v193 = v105;
          v194 = 2080;
          v195 = v106;
          _os_log_impl(&dword_19B873000, v97, OS_LOG_TYPE_DEFAULT, "informing client -- use local asset request for product group: %s, product number: %s - %s", buf, 0x20u);
        }

        v107 = sub_19B87DD40();
        if (*(v107 + 160) > 1 || *(v107 + 164) > 1 || *(v107 + 168) > 1 || *(v107 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
          }

          v111 = qword_1EAFE4700;
          v112 = objc_msgSend_UTF8String(v93, v108, v109, v110);
          v116 = objc_msgSend_UTF8String(v96, v113, v114, v115);
          v117 = "Failed";
          v184 = 136315650;
          v185 = v112;
          v186 = 2080;
          if (!v27)
          {
            v117 = "Succeeded";
          }

          v187 = v116;
          v188 = 2080;
          v189 = v117;
          v118 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v111, 0, "informing client -- use local asset request for product group: %s, product number: %s - %s", &v184, 32);
          sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v118);
          if (v118 != buf)
          {
            free(v118);
          }
        }

        v119 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryFirmwareUpdateManager_useLocalAssetRequestForProductGroup_andProductNumber_completedWithError_(v119, v120, self, v93, v96, v27);
      }

      else
      {
        v35 = CLConnectionMessage::name(*var0);
        if (!std::string::compare(v35, "DurianManagement/DidUseDefaultAssetRequest"))
        {
          v121 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v36, 0x1F0E74F60, v37);
          v124 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v122, 0x1F0E74F80, v123);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
          }

          v125 = qword_1EAFE4700;
          if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
          {
            v129 = objc_msgSend_UTF8String(v121, v126, v127, v128);
            v133 = objc_msgSend_UTF8String(v124, v130, v131, v132);
            *buf = 136315650;
            if (v27)
            {
              v134 = "Failed";
            }

            else
            {
              v134 = "Succeeded";
            }

            v191 = v129;
            v192 = 2080;
            v193 = v133;
            v194 = 2080;
            v195 = v134;
            _os_log_impl(&dword_19B873000, v125, OS_LOG_TYPE_DEFAULT, "informing client -- use default asset request for product group: %s, product number: %s - %s", buf, 0x20u);
          }

          v135 = sub_19B87DD40();
          if (*(v135 + 160) > 1 || *(v135 + 164) > 1 || *(v135 + 168) > 1 || *(v135 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46C8 != -1)
            {
              dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
            }

            v139 = qword_1EAFE4700;
            v140 = objc_msgSend_UTF8String(v121, v136, v137, v138);
            v144 = objc_msgSend_UTF8String(v124, v141, v142, v143);
            v184 = 136315650;
            if (v27)
            {
              v145 = "Failed";
            }

            else
            {
              v145 = "Succeeded";
            }

            v185 = v140;
            v186 = 2080;
            v187 = v144;
            v188 = 2080;
            v189 = v145;
            v146 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v139, 0, "informing client -- use default asset request for product group: %s, product number: %s - %s", &v184, 32);
            sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v146);
            if (v146 != buf)
            {
              free(v146);
            }
          }

          v147 = objc_loadWeak(&self->_delegate);
          objc_msgSend_findMyAccessoryFirmwareUpdateManager_useDefaultAssetRequestForProductGroup_andProductNumber_completedWithError_(v147, v148, self, v121, v124, v27);
        }

        else
        {
          v38 = CLConnectionMessage::name(*var0);
          if (!std::string::compare(v38, "DurianManagement/DidFetchWhetherLocalFirmwareAssetIsInUse"))
          {
            v149 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v39, 0x1F0E74F60, v40);
            v152 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v150, 0x1F0E74F80, v151);
            v155 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v153, 0x1F0E74FC0, v154);
            v159 = objc_msgSend_BOOLValue(v155, v156, v157, v158);
            if (qword_1EAFE46C8 != -1)
            {
              dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
            }

            v160 = qword_1EAFE4700;
            if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
            {
              if (v159)
              {
                v164 = "IN USE";
              }

              else
              {
                v164 = "NOT IN USE";
              }

              v165 = objc_msgSend_UTF8String(v149, v161, v162, v163);
              v169 = objc_msgSend_UTF8String(v152, v166, v167, v168);
              *buf = 136315650;
              v191 = v164;
              v192 = 2080;
              v193 = v165;
              v194 = 2080;
              v195 = v169;
              _os_log_impl(&dword_19B873000, v160, OS_LOG_TYPE_DEFAULT, "informing client -- local firmware asset is %s for product group: %s, product number: %s", buf, 0x20u);
            }

            v170 = sub_19B87DD40();
            if (*(v170 + 160) > 1 || *(v170 + 164) > 1 || *(v170 + 168) > 1 || *(v170 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46C8 != -1)
              {
                dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
              }

              v174 = qword_1EAFE4700;
              if (v159)
              {
                v175 = "IN USE";
              }

              else
              {
                v175 = "NOT IN USE";
              }

              v176 = objc_msgSend_UTF8String(v149, v171, v172, v173);
              v180 = objc_msgSend_UTF8String(v152, v177, v178, v179);
              v184 = 136315650;
              v185 = v175;
              v186 = 2080;
              v187 = v176;
              v188 = 2080;
              v189 = v180;
              v181 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v174, 0, "informing client -- local firmware asset is %s for product group: %s, product number: %s", &v184, 32);
              sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v181);
              if (v181 != buf)
              {
                free(v181);
              }
            }

            v182 = objc_loadWeak(&self->_delegate);
            objc_msgSend_findMyAccessoryFirmwareUpdateManager_didFetchWhetherLocalFirmwareAssetIsInUseForProductGroup_andProductNumber_withResult_(v182, v183, self, v149, v152, v159);
          }

          else
          {
            if (qword_1EAFE46C8 != -1)
            {
              dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
            }

            v41 = qword_1EAFE4700;
            if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_ERROR, "CLFindMyAccessoryFirmwareUpdateManager - Unknown Message - ignoring", buf, 2u);
            }

            v42 = sub_19B87DD40();
            if ((*(v42 + 160) & 0x80000000) == 0 || (*(v42 + 164) & 0x80000000) == 0 || (*(v42 + 168) & 0x80000000) == 0 || *(v42 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46C8 != -1)
              {
                dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
              }

              LOWORD(v184) = 0;
              v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4700, 16, "CLFindMyAccessoryFirmwareUpdateManager - Unknown Message - ignoring", &v184, 2);
              sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v43);
              if (v43 != buf)
              {
                free(v43);
              }
            }
          }
        }
      }
    }
  }
}

- (void)getPersonalizationInfoForDevice:(id)device
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryFirmwareUpdateManager.mm", 142, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = device;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)updateFirmwareForDevice:(id)device withAssetURL:(id)l
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (!l)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, device, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CLFindMyAccessoryFirmwareUpdateManager.mm", 154, @"Invalid parameter not satisfying: %@", @"assetURL");
  }

  v10[0] = 0x1F0E747E0;
  v10[1] = 0x1F0E74980;
  v11[0] = device;
  v11[1] = l;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v11, v10, 2);
  sub_19B890E08();
}

- (void)abortFirmwareUpdateForDevice:(id)device
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryFirmwareUpdateManager.mm", 165, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = device;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)useLocalFirmwareAssetFromURL:(id)l forProductGroup:(id)group forProductNumber:(id)number withSandboxExtension:(id)extension
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (l)
  {
    if (group)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, group);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLFindMyAccessoryFirmwareUpdateManager.mm", 179, @"Invalid parameter not satisfying: %@", @"firmwareUpdateAssetURL");
    if (group)
    {
LABEL_3:
      if (number)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, l, group);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CLFindMyAccessoryFirmwareUpdateManager.mm", 180, @"Invalid parameter not satisfying: %@", @"productGroup");
  if (number)
  {
LABEL_4:
    if (extension)
    {
      goto LABEL_5;
    }

LABEL_9:
    v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, l, group);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CLFindMyAccessoryFirmwareUpdateManager.mm", 182, @"Invalid parameter not satisfying: %@", @"extension");
LABEL_5:
    v20[0] = 0x1F0E74F40;
    v20[1] = 0x1F0E74F60;
    v21[0] = l;
    v21[1] = group;
    v20[2] = 0x1F0E74F80;
    v20[3] = 0x1F0E74FA0;
    v21[2] = number;
    v21[3] = extension;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v21, v20, 4);
    sub_19B890E08();
  }

LABEL_8:
  v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, l, group);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CLFindMyAccessoryFirmwareUpdateManager.mm", 181, @"Invalid parameter not satisfying: %@", @"productNumber");
  if (extension)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

- (void)useDefaultFirmwareAssetSourceForProductGroup:(id)group andProductNumber:(id)number
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (group)
  {
    if (number)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, number);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CLFindMyAccessoryFirmwareUpdateManager.mm", 203, @"Invalid parameter not satisfying: %@", @"productGroup");
    if (number)
    {
      goto LABEL_3;
    }
  }

  v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, group, number);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CLFindMyAccessoryFirmwareUpdateManager.mm", 204, @"Invalid parameter not satisfying: %@", @"productNumber");
LABEL_3:
  v12[0] = 0x1F0E74F60;
  v12[1] = 0x1F0E74F80;
  v13[0] = group;
  v13[1] = number;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, v12, 2);
  sub_19B890E08();
}

- (void)fetchWhetherLocalFirmwareAssetIsInUseForProductGroup:(id)group andProductNumber:(id)number
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (group)
  {
    if (number)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, number);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CLFindMyAccessoryFirmwareUpdateManager.mm", 221, @"Invalid parameter not satisfying: %@", @"productGroup");
    if (number)
    {
      goto LABEL_3;
    }
  }

  v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, group, number);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CLFindMyAccessoryFirmwareUpdateManager.mm", 222, @"Invalid parameter not satisfying: %@", @"productNumber");
LABEL_3:
  v12[0] = 0x1F0E74F60;
  v12[1] = 0x1F0E74F80;
  v13[0] = group;
  v13[1] = number;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, v12, 2);
  sub_19B890E08();
}

@end