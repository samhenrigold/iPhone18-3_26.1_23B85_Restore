@interface CLRegulatoryConfig
- (BOOL)addConfigForIsoList:(id)list config:(id)config error:(id *)error;
- (BOOL)addConfigForRegionList:(id)list config:(id)config error:(id *)error;
- (BOOL)setExtendedBorderDetection:(BOOL)detection withExtendedDistance:(int)distance;
- (CLRegulatoryConfig)initWithQueue:(id)queue defaultConfig:(id)config;
- (void)fetchConfigForLocation:(id)location withReply:(id)reply;
- (void)fetchInfoForLocation:(id)location withReply:(id)reply;
@end

@implementation CLRegulatoryConfig

- (CLRegulatoryConfig)initWithQueue:(id)queue defaultConfig:(id)config
{
  v5.receiver = self;
  v5.super_class = CLRegulatoryConfig;
  if ([(CLRegulatoryConfig *)&v5 init])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addConfigForIsoList:(id)list config:(id)config error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  *error = 0;
  if (list)
  {
    v9 = objc_msgSend_count(list, a2, list, config);
    if (config)
    {
      if (v9)
      {
        ptr = self->_config.__ptr_;
        DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], config, 1uLL);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(list, v11, &v51, v55, 16);
        if (!v46)
        {
          return 1;
        }

        v45 = *v52;
        while (1)
        {
          v12 = 0;
          do
          {
            if (*v52 != v45)
            {
              objc_enumerationMutation(list);
            }

            v13 = *(*(&v51 + 1) + 8 * v12);
            if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v17 = objc_msgSend_UTF8String(v13, v14, v15, v16);
              sub_19B8759E8(__src, v17);
              if (SHIBYTE(v50) < 0)
              {
                if (__src[1])
                {
                  sub_19B874C9C(__p, __src[0], __src[1]);
LABEL_28:
                  if (qword_1ED519088 != -1)
                  {
                    dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
                  }

                  v22 = qword_1ED519090;
                  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
                  {
                    v23 = __p;
                    if (v48 < 0)
                    {
                      v23 = __p[0];
                    }

                    *buf = 136315138;
                    v59 = v23;
                    _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "#clreg,addConfigForIso,%s", buf, 0xCu);
                  }

                  v24 = sub_19B87DD40();
                  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1ED519088 != -1)
                    {
                      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
                    }

                    v25 = __p;
                    if (v48 < 0)
                    {
                      v25 = __p[0];
                    }

                    v56 = 136315138;
                    v57 = v25;
                    v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#clreg,addConfigForIso,%s", &v56, 12);
                    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::addConfigForIso(std::string, NSDictionary *)", "CoreLocation: %s\n", v26);
                    if (v26 != buf)
                    {
                      free(v26);
                    }
                  }

                  v27 = DeepCopy;
                  v28 = sub_19B90E7DC(__p);
                  v29 = v28;
                  v30 = *(ptr + 8);
                  if (!*&v30)
                  {
                    goto LABEL_72;
                  }

                  v31 = vcnt_s8(v30);
                  v31.i16[0] = vaddlv_u8(v31);
                  v32 = v31.u32[0];
                  if (v31.u32[0] > 1uLL)
                  {
                    v33 = v28;
                    if (v28 >= *&v30)
                    {
                      v33 = v28 % *&v30;
                    }
                  }

                  else
                  {
                    v33 = (*&v30 - 1) & v28;
                  }

                  v37 = *(*ptr + 8 * v33);
                  if (!v37 || (v38 = *v37) == 0)
                  {
LABEL_72:
                    operator new();
                  }

                  while (1)
                  {
                    v39 = v38[1];
                    if (v39 == v29)
                    {
                      if (sub_19B90EC2C(v38 + 2, __p))
                      {
                        v38[5] = v27;
                        if (SHIBYTE(v48) < 0)
                        {
                          operator delete(__p[0]);
                        }

                        goto LABEL_75;
                      }
                    }

                    else
                    {
                      if (v32 > 1)
                      {
                        if (v39 >= *&v30)
                        {
                          v39 %= *&v30;
                        }
                      }

                      else
                      {
                        v39 &= *&v30 - 1;
                      }

                      if (v39 != v33)
                      {
                        goto LABEL_72;
                      }
                    }

                    v38 = *v38;
                    if (!v38)
                    {
                      goto LABEL_72;
                    }
                  }
                }
              }

              else if (HIBYTE(v50))
              {
                *__p = *__src;
                v48 = v50;
                goto LABEL_28;
              }

              if (qword_1EAFE4738 != -1)
              {
                dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
              }

              v34 = qword_1EAFE4740;
              if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,addConfigForIsoList,emptyIso,ignoring", buf, 2u);
              }

              v35 = sub_19B87DD40();
              if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE4738 != -1)
                {
                  dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
                }

                LOWORD(v56) = 0;
                v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,#warning,addConfigForIsoList,emptyIso,ignoring", &v56, 2);
                sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::addConfigForIsoList(CLRegulatoryIsoList, NSDictionary *)", "CoreLocation: %s\n", v36);
                if (v36 != buf)
                {
                  free(v36);
                }
              }

LABEL_75:
              if (SHIBYTE(v50) < 0)
              {
                operator delete(__src[0]);
              }
            }

            else
            {
              if (qword_1EAFE4738 != -1)
              {
                dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
              }

              v18 = qword_1EAFE4740;
              if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,addConfigForIsoList,invalidArgs,ignoring", buf, 2u);
              }

              v19 = sub_19B87DD40();
              if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE4738 != -1)
                {
                  dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
                }

                LOWORD(__src[0]) = 0;
                v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,#warning,addConfigForIsoList,invalidArgs,ignoring", __src, 2);
                sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::addConfigForIsoList(CLRegulatoryIsoList, NSDictionary *)", "CoreLocation: %s\n", v21);
                if (v21 != buf)
                {
                  free(v21);
                }
              }
            }

            ++v12;
          }

          while (v12 != v46);
          v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(list, v20, &v51, v55, 16);
          if (!v46)
          {
            return 1;
          }
        }
      }
    }
  }

  v41 = objc_alloc(MEMORY[0x1E696ABC0]);
  v43 = objc_msgSend_initWithDomain_code_userInfo_(v41, v42, @"kCLErrorDomainPrivate", 7, 0);
  result = 0;
  *error = v43;
  return result;
}

- (BOOL)addConfigForRegionList:(id)list config:(id)config error:(id *)error
{
  v109 = *MEMORY[0x1E69E9840];
  *error = 0;
  if (list)
  {
    v9 = objc_msgSend_count(list, a2, list, config);
    if (config)
    {
      if (v9)
      {
        ptr = self->_config.__ptr_;
        DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], config, 1uLL);
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        obj = list;
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(list, v11, &v92, v96, 16);
        if (!v12)
        {
          return 1;
        }

        v13 = *v93;
        while (1)
        {
          v14 = 0;
          do
          {
            if (*v93 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v92 + 1) + 8 * v14);
            if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              objc_msgSend_radius(v15, v16, v17, v18);
              if (v19 > 0.0)
              {
                if (qword_1ED519088 != -1)
                {
                  dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
                }

                v20 = qword_1ED519090;
                if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
                {
                  objc_msgSend_center(v15, v21, v22, v23);
                  v25 = v24;
                  objc_msgSend_center(v15, v26, v27, v28);
                  v30 = v29;
                  objc_msgSend_radius(v15, v31, v32, v33);
                  *buf = 134218496;
                  v104 = v25;
                  v105 = 2048;
                  v106 = v30;
                  v107 = 2048;
                  v108 = v34;
                  _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "#clreg,addConfigForCircularRegion,%.6f,%.6f,%.2f", buf, 0x20u);
                }

                v35 = sub_19B87DD40();
                if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1ED519088 != -1)
                  {
                    dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
                  }

                  v42 = qword_1ED519090;
                  objc_msgSend_center(v15, v39, v40, v41);
                  v44 = v43;
                  objc_msgSend_center(v15, v45, v46, v47);
                  v49 = v48;
                  objc_msgSend_radius(v15, v50, v51, v52);
                  v97 = 134218496;
                  v98 = v44;
                  v99 = 2048;
                  v100 = v49;
                  v101 = 2048;
                  v102 = v53;
                  v54 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v42, 0, "#clreg,addConfigForCircularRegion,%.6f,%.6f,%.2f", &v97, 32);
                  sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::addConfigForCircularRegion(CLCircularRegion *, NSDictionary *)", "CoreLocation: %s\n", v54);
                  if (v54 != buf)
                  {
                    free(v54);
                  }
                }

                objc_msgSend_center(v15, v36, v37, v38);
                v56 = v55;
                objc_msgSend_center(v15, v57, v58, v59);
                v61 = v60;
                objc_msgSend_radius(v15, v62, v63, v64);
                v66 = v65;
                v67 = DeepCopy;
                v69 = *(ptr + 6);
                v70 = *(ptr + 7);
                if (v69 >= v70)
                {
                  v77 = *(ptr + 5);
                  v78 = v69 - v77;
                  v79 = (v69 - v77) >> 5;
                  v80 = v79 + 1;
                  if ((v79 + 1) >> 59)
                  {
                    sub_19B8B8A40();
                  }

                  v81 = v70 - v77;
                  if (v81 >> 4 > v80)
                  {
                    v80 = v81 >> 4;
                  }

                  if (v81 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v82 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v82 = v80;
                  }

                  if (v82)
                  {
                    if (!(v82 >> 59))
                    {
                      operator new();
                    }

                    sub_19B8B8AB0();
                  }

                  v83 = v79;
                  v84 = (32 * v79);
                  *v84 = v56;
                  v84[1] = v61;
                  v84[2] = v66;
                  v84[3] = v67;
                  v71 = 32 * v79 + 32;
                  v85 = &v84[-4 * v83];
                  memcpy(v85, v77, v78);
                  *(ptr + 5) = v85;
                  *(ptr + 6) = v71;
                  *(ptr + 7) = 0;
                  if (v77)
                  {
                    operator delete(v77);
                  }
                }

                else
                {
                  *v69 = v56;
                  *(v69 + 1) = v61;
                  *(v69 + 2) = v66;
                  v71 = (v69 + 32);
                  *(v69 + 3) = v67;
                }

                *(ptr + 6) = v71;
                goto LABEL_62;
              }

              if (qword_1EAFE4738 != -1)
              {
                dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
              }

              v75 = qword_1EAFE4740;
              if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,addConfigForCircularRegionList,invalidRadius,ignoring", buf, 2u);
              }

              v76 = sub_19B87DD40();
              if (*(v76 + 160) > 1 || *(v76 + 164) > 1 || *(v76 + 168) > 1 || *(v76 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE4738 != -1)
                {
                  dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
                }

                LOWORD(v97) = 0;
                v74 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,#warning,addConfigForCircularRegionList,invalidRadius,ignoring", &v97, 2);
                sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::addConfigForCircularRegionList(CLRegulatoryCircularRegionList, NSDictionary *)", "CoreLocation: %s\n", v74);
LABEL_37:
                if (v74 != buf)
                {
                  free(v74);
                }
              }
            }

            else
            {
              if (qword_1EAFE4738 != -1)
              {
                dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
              }

              v72 = qword_1EAFE4740;
              if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v72, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,addConfigForCircularRegionList,invalidArgs,ignoring", buf, 2u);
              }

              v73 = sub_19B87DD40();
              if (*(v73 + 160) > 1 || *(v73 + 164) > 1 || *(v73 + 168) > 1 || *(v73 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE4738 != -1)
                {
                  dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
                }

                LOWORD(v97) = 0;
                v74 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,#warning,addConfigForCircularRegionList,invalidArgs,ignoring", &v97, 2);
                sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::addConfigForCircularRegionList(CLRegulatoryCircularRegionList, NSDictionary *)", "CoreLocation: %s\n", v74);
                goto LABEL_37;
              }
            }

LABEL_62:
            ++v14;
          }

          while (v12 != v14);
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v92, v96, 16);
          if (!v12)
          {
            return 1;
          }
        }
      }
    }
  }

  v87 = objc_alloc(MEMORY[0x1E696ABC0]);
  v89 = objc_msgSend_initWithDomain_code_userInfo_(v87, v88, @"kCLErrorDomainPrivate", 7, 0);
  result = 0;
  *error = v89;
  return result;
}

- (void)fetchConfigForLocation:(id)location withReply:(id)reply
{
  v124 = *MEMORY[0x1E69E9840];
  ptr = self->_config.__ptr_;
  if (!location)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v51 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_DEFAULT, "#clreg,fetchConfigForLocation,#warning,location is nil", buf, 2u);
    }

    v52 = sub_19B87DD40();
    if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      *v115 = 0;
      v53 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#clreg,fetchConfigForLocation,#warning,location is nil", v115, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchConfigForLocation(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v53);
      if (v53 != buf)
      {
        free(v53);
      }
    }

    v49 = *(ptr + 8);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    v50 = sub_19B909F68;
    goto LABEL_41;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    objc_msgSend_coordinate(location, v8, v9, v10);
    v12 = v11;
    objc_msgSend_coordinate(location, v13, v14, v15);
    v17 = v16;
    objc_msgSend_horizontalAccuracy(location, v18, v19, v20);
    *buf = 134546177;
    *&buf[4] = v12;
    *&buf[12] = 2053;
    *&buf[14] = v17;
    *&buf[22] = 2053;
    v120 = v21;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#clreg,fetchConfigForLocation,%{sensitive}.6f,%{sensitive}.6f,%{sensitive}.2f", buf, 0x20u);
  }

  v22 = sub_19B87DD40();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v29 = qword_1ED519090;
    objc_msgSend_coordinate(location, v26, v27, v28);
    v31 = v30;
    objc_msgSend_coordinate(location, v32, v33, v34);
    v36 = v35;
    objc_msgSend_horizontalAccuracy(location, v37, v38, v39);
    *v115 = 134546177;
    *&v115[4] = v31;
    *&v115[12] = 2053;
    *&v115[14] = v36;
    *&v115[22] = 2053;
    v116 = v40;
    v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v29, 0, "#clreg,fetchConfigForLocation,%{sensitive}.6f,%{sensitive}.6f,%{sensitive}.2f", v115, 32);
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchConfigForLocation(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  objc_msgSend_horizontalAccuracy(location, v23, v24, v25);
  if (v45 < 0.0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v46 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_DEFAULT, "#clreg,fetchConfigForLocation,#warning,invalidAccuracy", buf, 2u);
    }

    v47 = sub_19B87DD40();
    if (*(v47 + 160) > 1 || *(v47 + 164) > 1 || *(v47 + 168) > 1 || *(v47 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      *v115 = 0;
      v48 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#clreg,fetchConfigForLocation,#warning,invalidAccuracy", v115, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchConfigForLocation(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v48);
      if (v48 != buf)
      {
        free(v48);
      }
    }

    v49 = *(ptr + 8);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    v50 = sub_19B909F7C;
LABEL_41:
    *&buf[16] = v50;
    v120 = &unk_1E753D9F0;
    *&v121 = reply;
    *(&v121 + 1) = ptr;
LABEL_42:
    v54 = buf;
LABEL_43:
    dispatch_async(v49, v54);
    return;
  }

  v56 = *(ptr + 5);
  v55 = *(ptr + 6);
  if (v56 != v55)
  {
    while (1)
    {
      objc_msgSend_coordinate(location, v42, v43, v44);
      v58 = v57;
      objc_msgSend_coordinate(location, v59, v60, v61);
      v63 = sub_19B87E164(v58, v62, *v56, v56[1]);
      v64 = v56[2];
      objc_msgSend_horizontalAccuracy(location, v65, v66, v67);
      if (v63 < v64 + v68)
      {
        break;
      }

      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      v69 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        v70 = *v56;
        v71 = *(v56 + 1);
        v72 = *(v56 + 2);
        *buf = 134546433;
        *&buf[4] = v70;
        *&buf[12] = 2053;
        *&buf[14] = v71;
        *&buf[22] = 2049;
        v120 = v72;
        LOWORD(v121) = 2053;
        *(&v121 + 2) = v63;
        _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_DEBUG, "#clreg,fetchRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,notFound", buf, 0x2Au);
      }

      v73 = sub_19B87DD40();
      if (*(v73 + 160) > 1 || *(v73 + 164) > 1 || *(v73 + 168) > 1 || *(v73 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
        }

        v74 = *v56;
        v75 = *(v56 + 1);
        v76 = *(v56 + 2);
        v107 = 134546433;
        v108 = v74;
        v109 = 2053;
        v110 = v75;
        v111 = 2049;
        v112 = v76;
        v113 = 2053;
        v114 = v63;
        v77 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#clreg,fetchRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,notFound", &v107, 42);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLRegulatoryConfigInternal::fetchRAEConfig(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v77);
        if (v77 != buf)
        {
          free(v77);
        }
      }

      v56 += 4;
      if (v56 == v55)
      {
        goto LABEL_59;
      }
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v95 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v96 = *v56;
      v97 = *(v56 + 1);
      v98 = *(v56 + 2);
      *buf = 134546433;
      *&buf[4] = v96;
      *&buf[12] = 2053;
      *&buf[14] = v97;
      *&buf[22] = 2049;
      v120 = v98;
      LOWORD(v121) = 2053;
      *(&v121 + 2) = v63;
      _os_log_impl(&dword_19B873000, v95, OS_LOG_TYPE_DEBUG, "#clreg,fetchRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,found", buf, 0x2Au);
    }

    v99 = sub_19B87DD40();
    if (*(v99 + 160) > 1 || *(v99 + 164) > 1 || *(v99 + 168) > 1 || *(v99 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      v100 = *v56;
      v101 = *(v56 + 1);
      v102 = *(v56 + 2);
      v107 = 134546433;
      v108 = v100;
      v109 = 2053;
      v110 = v101;
      v111 = 2049;
      v112 = v102;
      v113 = 2053;
      v114 = v63;
      v103 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#clreg,fetchRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,found", &v107, 42);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRegulatoryConfigInternal::fetchRAEConfig(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v103);
      if (v103 != buf)
      {
        free(v103);
      }
    }

    v49 = *(ptr + 8);
    *v115 = MEMORY[0x1E69E9820];
    *&v115[8] = 3221225472;
    *&v115[16] = sub_19B907F1C;
    v116 = &unk_1E753D9F0;
    replyCopy2 = reply;
    v118 = v56;
    v54 = v115;
    goto LABEL_43;
  }

LABEL_59:
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
  }

  v78 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_DEBUG, "#clreg,fetchRAEConfig,no RAEs matched", buf, 2u);
  }

  v79 = sub_19B87DD40();
  if (*(v79 + 160) > 1 || *(v79 + 164) > 1 || *(v79 + 168) > 1 || *(v79 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    LOWORD(v107) = 0;
    v83 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#clreg,fetchRAEConfig,no RAEs matched", &v107, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRegulatoryConfigInternal::fetchRAEConfig(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v83);
    if (v83 != buf)
    {
      free(v83);
    }
  }

  v84 = sub_19B90810C(location, v80, v81, v82);
  if (!v84)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v104 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v104, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,fetchIsoOrDefaultConfig,geoLocationAllocFailed", buf, 2u);
    }

    v105 = sub_19B87DD40();
    if (*(v105 + 160) > 1 || *(v105 + 164) > 1 || *(v105 + 168) > 1 || *(v105 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      *v115 = 0;
      v106 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,#warning,fetchIsoOrDefaultConfig,geoLocationAllocFailed", v115, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchIsoOrDefaultConfig(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v106);
      if (v106 != buf)
      {
        free(v106);
      }
    }

    v49 = *(ptr + 8);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_19B90973C;
    v120 = &unk_1E753D9F0;
    *&v121 = reply;
    *(&v121 + 1) = ptr;
    goto LABEL_42;
  }

  v88 = v84;
  objc_msgSend_horizontalAccuracy(v84, v85, v86, v87);
  *v115 = MEMORY[0x1E69E9820];
  *&v115[8] = 3221225472;
  *&v115[16] = sub_19B909750;
  v116 = &unk_1E753DA40;
  replyCopy2 = reply;
  v118 = ptr;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_19B909988;
  v120 = &unk_1E753DA90;
  *(&v121 + 1) = reply;
  v122 = ptr;
  *&v121 = v88;
  v123 = v92;
  v93 = *(ptr + 20);
  if (v93 <= v92)
  {
    v94 = v115;
  }

  else
  {
    objc_msgSend_setHorizontalAccuracy_(v88, v89, v90, v91, v93);
    v94 = buf;
  }

  sub_19B9088CC(ptr, v88, v94);
}

- (void)fetchInfoForLocation:(id)location withReply:(id)reply
{
  v114 = *MEMORY[0x1E69E9840];
  ptr = self->_config.__ptr_;
  if (!location)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v49 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEFAULT, "#clreg,fetchInfoForLocation,#warning,location is nil", buf, 2u);
    }

    v50 = sub_19B87DD40();
    if (*(v50 + 160) <= 1 && *(v50 + 164) <= 1 && *(v50 + 168) <= 1 && !*(v50 + 152))
    {
      goto LABEL_39;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    *v106 = 0;
    v48 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#clreg,fetchInfoForLocation,#warning,location is nil", v106, 2);
    goto LABEL_37;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    objc_msgSend_coordinate(location, v8, v9, v10);
    v12 = v11;
    objc_msgSend_coordinate(location, v13, v14, v15);
    v17 = v16;
    objc_msgSend_horizontalAccuracy(location, v18, v19, v20);
    *buf = 134546177;
    *&buf[4] = v12;
    *&buf[12] = 2053;
    *&buf[14] = v17;
    *&buf[22] = 2053;
    v110 = v21;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#clreg,fetchInfoForLocation,%{sensitive}.6f,%{sensitive}.6f,%{sensitive}.2f", buf, 0x20u);
  }

  v22 = sub_19B87DD40();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v29 = qword_1ED519090;
    objc_msgSend_coordinate(location, v26, v27, v28);
    v31 = v30;
    objc_msgSend_coordinate(location, v32, v33, v34);
    v36 = v35;
    objc_msgSend_horizontalAccuracy(location, v37, v38, v39);
    *v106 = 134546177;
    *&v106[4] = v31;
    *&v106[12] = 2053;
    *&v106[14] = v36;
    *&v106[22] = 2053;
    v107 = v40;
    v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v29, 0, "#clreg,fetchInfoForLocation,%{sensitive}.6f,%{sensitive}.6f,%{sensitive}.2f", v106, 32);
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchInfoForLocation(CLLocation *, CLRegulatoryInfoCallback)", "CoreLocation: %s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  objc_msgSend_horizontalAccuracy(location, v23, v24, v25);
  if (v45 < 0.0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v46 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_DEFAULT, "#clreg,fetchInfoForLocation,#warning,invalidAccuracy", buf, 2u);
    }

    v47 = sub_19B87DD40();
    if (*(v47 + 160) <= 1 && *(v47 + 164) <= 1 && *(v47 + 168) <= 1 && !*(v47 + 152))
    {
      goto LABEL_39;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    *v106 = 0;
    v48 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#clreg,fetchInfoForLocation,#warning,invalidAccuracy", v106, 2);
LABEL_37:
    v51 = v48;
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchInfoForLocation(CLLocation *, CLRegulatoryInfoCallback)", "CoreLocation: %s\n", v48);
    if (v51 != buf)
    {
      free(v51);
    }

LABEL_39:
    v52 = *(ptr + 8);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_19B909F90;
    v110 = &unk_1E753D9F0;
    *&v111 = reply;
    *(&v111 + 1) = ptr;
LABEL_40:
    dispatch_async(v52, buf);
    return;
  }

  v54 = *(ptr + 5);
  v53 = *(ptr + 6);
  if (v54 != v53)
  {
    while (1)
    {
      objc_msgSend_coordinate(location, v42, v43, v44);
      v56 = v55;
      objc_msgSend_coordinate(location, v57, v58, v59);
      v61 = sub_19B87E164(v56, v60, *v54, *(v54 + 8));
      v62 = *(v54 + 16);
      objc_msgSend_horizontalAccuracy(location, v63, v64, v65);
      if (v61 < v62 + v66)
      {
        break;
      }

      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      v67 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        v68 = *v54;
        v69 = *(v54 + 8);
        v70 = *(v54 + 16);
        *buf = 134546433;
        *&buf[4] = v68;
        *&buf[12] = 2053;
        *&buf[14] = v69;
        *&buf[22] = 2049;
        v110 = v70;
        LOWORD(v111) = 2053;
        *(&v111 + 2) = v61;
        _os_log_impl(&dword_19B873000, v67, OS_LOG_TYPE_DEBUG, "#clreg,findRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,notFound", buf, 0x2Au);
      }

      v71 = sub_19B87DD40();
      if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
        }

        v72 = *v54;
        v73 = *(v54 + 8);
        v74 = *(v54 + 16);
        *v106 = 134546433;
        *&v106[4] = v72;
        *&v106[12] = 2053;
        *&v106[14] = v73;
        *&v106[22] = 2049;
        v107 = v74;
        LOWORD(v108) = 2053;
        *(&v108 + 2) = v61;
        v75 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#clreg,findRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,notFound", v106, 42);
        sub_19B885924("Generic", 1, 0, 2, "const CLRegulatoryConfigInternal::CircularZoneConfig *CLRegulatoryConfigInternal::findRAEConfig(CLLocation *)", "CoreLocation: %s\n", v75);
        if (v75 != buf)
        {
          free(v75);
        }
      }

      v54 += 32;
      if (v54 == v53)
      {
        goto LABEL_56;
      }
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v93 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v94 = *v54;
      v95 = *(v54 + 8);
      v96 = *(v54 + 16);
      *buf = 134546433;
      *&buf[4] = v94;
      *&buf[12] = 2053;
      *&buf[14] = v95;
      *&buf[22] = 2049;
      v110 = v96;
      LOWORD(v111) = 2053;
      *(&v111 + 2) = v61;
      _os_log_impl(&dword_19B873000, v93, OS_LOG_TYPE_DEBUG, "#clreg,findRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,found", buf, 0x2Au);
    }

    v97 = sub_19B87DD40();
    if (*(v97 + 160) > 1 || *(v97 + 164) > 1 || *(v97 + 168) > 1 || *(v97 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      v98 = *v54;
      v99 = *(v54 + 8);
      v100 = *(v54 + 16);
      *v106 = 134546433;
      *&v106[4] = v98;
      *&v106[12] = 2053;
      *&v106[14] = v99;
      *&v106[22] = 2049;
      v107 = v100;
      LOWORD(v108) = 2053;
      *(&v108 + 2) = v61;
      v101 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#clreg,findRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,found", v106, 42);
      sub_19B885924("Generic", 1, 0, 2, "const CLRegulatoryConfigInternal::CircularZoneConfig *CLRegulatoryConfigInternal::findRAEConfig(CLLocation *)", "CoreLocation: %s\n", v101);
      if (v101 != buf)
      {
        free(v101);
      }
    }

    v102 = *(v54 + 24);
    v52 = *(ptr + 8);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_19B909FB0;
    v110 = &unk_1E753D688;
    *&v111 = v102;
    *(&v111 + 1) = reply;
    goto LABEL_40;
  }

LABEL_56:
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
  }

  v76 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_DEBUG, "#clreg,findRAEConfig,no RAEs matched", buf, 2u);
  }

  v77 = sub_19B87DD40();
  if (*(v77 + 160) > 1 || *(v77 + 164) > 1 || *(v77 + 168) > 1 || *(v77 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    *v106 = 0;
    v81 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#clreg,findRAEConfig,no RAEs matched", v106, 2);
    sub_19B885924("Generic", 1, 0, 2, "const CLRegulatoryConfigInternal::CircularZoneConfig *CLRegulatoryConfigInternal::findRAEConfig(CLLocation *)", "CoreLocation: %s\n", v81);
    if (v81 != buf)
    {
      free(v81);
    }
  }

  v82 = sub_19B90810C(location, v78, v79, v80);
  if (!v82)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v103 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v103, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,fetchIsoOrDefaultConfig,geoLocationAllocFailed", buf, 2u);
    }

    v104 = sub_19B87DD40();
    if (*(v104 + 160) > 1 || *(v104 + 164) > 1 || *(v104 + 168) > 1 || *(v104 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      *v106 = 0;
      v105 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4740, 0, "#clreg,#warning,fetchIsoOrDefaultConfig,geoLocationAllocFailed", v106, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoOrDefaultInfo(CLLocation *, CLRegulatoryInfoCallback)", "CoreLocation: %s\n", v105);
      if (v105 != buf)
      {
        free(v105);
      }
    }

    goto LABEL_39;
  }

  v86 = v82;
  objc_msgSend_horizontalAccuracy(v82, v83, v84, v85);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_19B90B658;
  v110 = &unk_1E753DB30;
  *(&v111 + 1) = reply;
  v112 = ptr;
  *&v111 = v86;
  v113 = v90;
  v91 = *(ptr + 20);
  if (v91 <= v90)
  {
    *v106 = MEMORY[0x1E69E9820];
    *&v106[8] = 3221225472;
    *&v106[16] = sub_19B90B87C;
    v107 = &unk_1E753DB58;
    *&v108 = reply;
    *(&v108 + 1) = ptr;
    v92 = v106;
  }

  else
  {
    objc_msgSend_setHorizontalAccuracy_(v86, v87, v88, v89, v91);
    v92 = buf;
  }

  sub_19B90A7CC(ptr, v86, v92);
}

- (BOOL)setExtendedBorderDetection:(BOOL)detection withExtendedDistance:(int)distance
{
  if (!detection)
  {
    distance = 0;
  }

  *(self->_config.__ptr_ + 20) = distance;
  return 1;
}

@end