@interface CLEmergencyLocationUsabilityCriteria
- (CLEmergencyLocationUsabilityCriteria)init;
- (void)printUsabilityCriteria:(id)criteria;
@end

@implementation CLEmergencyLocationUsabilityCriteria

- (CLEmergencyLocationUsabilityCriteria)init
{
  v3.receiver = self;
  v3.super_class = CLEmergencyLocationUsabilityCriteria;
  result = [(CLEmergencyLocationUsabilityCriteria *)&v3 init];
  if (result)
  {
    *&result->_vuncCheckRequiredForUsability = 256;
    *&result->_maxUsableAge = xmmword_19BA8D710;
    result->_maxUsableVunc = 30.0;
    result->_minUsableIntegrity = 50;
  }

  return result;
}

- (void)printUsabilityCriteria:(id)criteria
{
  v87 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_vuncCheckRequiredForUsability(self, v6, v7, v8);
    v13 = objc_msgSend_altitudeStitchingEnabled(self, v10, v11, v12);
    objc_msgSend_maxUsableAge(self, v14, v15, v16);
    v18 = v17;
    objc_msgSend_maxUsableHunc(self, v19, v20, v21);
    v23 = v22;
    objc_msgSend_maxUsableVunc(self, v24, v25, v26);
    *buf = 138544898;
    criteriaCopy = criteria;
    v75 = 1026;
    v76 = v9;
    v77 = 1026;
    v78 = v13;
    v79 = 2050;
    v80 = v18;
    v81 = 2050;
    v82 = v23;
    v83 = 2050;
    v84 = v30;
    v85 = 1026;
    v86 = objc_msgSend_minUsableIntegrity(self, v27, v28, v29);
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@,vuncCheckRequiredForUsability,%{public}d,altitudeStitchingEnabled,%{public}d,maxUsableAge,%{public}f,maxUsableHunc,%{public}f,maxUsableVunc,%{public}f,minUsableIntegrity,%{public}d", buf, 0x3Cu);
  }

  v31 = sub_19B87DD40();
  if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v35 = qword_1ED519090;
    v36 = objc_msgSend_vuncCheckRequiredForUsability(self, v32, v33, v34);
    v40 = objc_msgSend_altitudeStitchingEnabled(self, v37, v38, v39);
    objc_msgSend_maxUsableAge(self, v41, v42, v43);
    v45 = v44;
    objc_msgSend_maxUsableHunc(self, v46, v47, v48);
    v50 = v49;
    objc_msgSend_maxUsableVunc(self, v51, v52, v53);
    v59 = 138544898;
    criteriaCopy2 = criteria;
    v61 = 1026;
    v62 = v36;
    v63 = 1026;
    v64 = v40;
    v65 = 2050;
    v66 = v45;
    v67 = 2050;
    v68 = v50;
    v69 = 2050;
    v70 = v57;
    v71 = 1026;
    v72 = objc_msgSend_minUsableIntegrity(self, v54, v55, v56);
    v58 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v35, 0, "%{public}@,vuncCheckRequiredForUsability,%{public}d,altitudeStitchingEnabled,%{public}d,maxUsableAge,%{public}f,maxUsableHunc,%{public}f,maxUsableVunc,%{public}f,minUsableIntegrity,%{public}d", &v59, 60);
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationUsabilityCriteria printUsabilityCriteria:]", "CoreLocation: %s\n", v58);
    if (v58 != buf)
    {
      free(v58);
    }
  }
}

@end