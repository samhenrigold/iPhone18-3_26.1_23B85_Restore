@interface XRCapabilityRequirements
+ (id)requirementsFromContext:(id)context;
+ (id)requirementsFromPlist:(id)plist error:(id *)error;
- (BOOL)checkRequirementsAgainstRegistery:(id)registery error:(id *)error;
- (XRCapabilityRequirements)init;
- (id)plistRepresentation;
@end

@implementation XRCapabilityRequirements

+ (id)requirementsFromContext:(id)context
{
  contextCopy = context;
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_24809CCD0;
  v10[3] = &unk_278EFC148;
  v5 = v4;
  v11 = v5;
  objc_msgSend_enumerateRequiredCapabilities_(contextCopy, v6, v10, v7, v8);

  return v5;
}

+ (id)requirementsFromPlist:(id)plist error:(id *)error
{
  v48[3] = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  v44 = 100;
  v7 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v6, plistCopy, 0, &v44, error);
  v8 = v7;
  v9 = v44;
  if (!v7 || v44 != 100)
  {
    if (!v7)
    {
LABEL_19:
      v19 = 0;
      goto LABEL_23;
    }

LABEL_13:
    if (v9 == 100)
    {
      v20 = @"The root of the requirements file plist must be a dictionary.";
    }

    else
    {
      v20 = @"Requirements file must be an XML plist.";
    }

    v21 = v20;
    v22 = *MEMORY[0x277CCA470];
    v45[0] = *MEMORY[0x277CCA450];
    v45[1] = v22;
    v46[0] = @"Bad Requirements Plist";
    v46[1] = v21;
    v45[2] = v45[0];
    v46[2] = @"The bundle may be corrupt or empty.  Check that the requirements file is not corrupt.";
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v46, v45, 3);
    if (error)
    {
      *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v24, @"Supported Capability Problem", 1, v25);
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = v44;
    goto LABEL_13;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_24809D178;
  v33[3] = &unk_278EFC198;
  v33[4] = &v40;
  v33[5] = v38;
  v33[6] = &v34;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v10, v33, v11, v12);
  if (*(v41 + 24) == 1)
  {
    if (*(v35 + 24))
    {
      v13 = @"Requirements file plist must contain string keys and number values";
    }

    else
    {
      v13 = @"The details of a capability must be encoded in a required capabilities plist as integers or strings";
    }

    v14 = v13;
    v15 = *MEMORY[0x277CCA470];
    v47[0] = *MEMORY[0x277CCA450];
    v47[1] = v15;
    v48[0] = @"Bad Requirements Plist";
    v48[1] = v14;
    v47[2] = v47[0];
    v48[2] = @"The bundle may be corrupt or empty.  Check that the requirements file is not corrupt.";
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v48, v47, 3);
    if (error)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v17, @"Supported Capability Problem", 1, v18);
      *error = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v26 = objc_opt_new();
    v14 = v8;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_24809D394;
    v31[3] = &unk_278EFC1C0;
    v19 = v26;
    v32 = v19;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v14, v27, v31, v28, v29);
    v18 = v32;
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v40, 8);
LABEL_23:

  return v19;
}

- (XRCapabilityRequirements)init
{
  v8.receiver = self;
  v8.super_class = XRCapabilityRequirements;
  v2 = [(XRCapabilityRequirements *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    capabilities = v2->_capabilities;
    v2->_capabilities = v3;

    v5 = objc_opt_new();
    unimplementedResponses = v2->_unimplementedResponses;
    v2->_unimplementedResponses = v5;
  }

  return v2;
}

- (id)plistRepresentation
{
  v4 = objc_opt_new();
  capabilities = self->_capabilities;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_24809D68C;
  v18[3] = &unk_278EFC1E8;
  v18[4] = self;
  v6 = v4;
  v19 = v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(capabilities, v7, v18, v8, v9);
  v17 = 0;
  v11 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x277CCAC58], v10, v6, 100, 0, &v17);
  v15 = v17;
  if (!v11)
  {
    sub_2480B3D84(a2, self, v12, v13, v14);
  }

  return v11;
}

- (BOOL)checkRequirementsAgainstRegistery:(id)registery error:(id *)error
{
  v83[5] = *MEMORY[0x277D85DE8];
  registeryCopy = registery;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 1;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  capabilities = self->_capabilities;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_24809DC4C;
  v60[3] = &unk_278EFC210;
  v12 = registeryCopy;
  v61 = v12;
  v67 = &v78;
  v68 = &v74;
  v13 = v7;
  v62 = v13;
  v14 = v9;
  v63 = v14;
  v15 = v10;
  v69 = &v70;
  v64 = v15;
  selfCopy = self;
  v16 = v8;
  v66 = v16;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(capabilities, v17, v60, v18, v19);
  if (v79[3])
  {
    v24 = 1;
    goto LABEL_15;
  }

  if (v75[6] < 1)
  {
    if (v71[6] < 1)
    {
      abort();
    }

    if (!objc_msgSend_count(v16, v20, v21, v22, v23))
    {
      v48 = 0;
      v37 = @"Forward compatibility checks have failed.";
      v47 = @"This document appears to have been saved with a new version of this application.";
      goto LABEL_12;
    }

    v38 = objc_opt_new();
    v43 = objc_msgSend_count(v16, v39, v40, v41, v42);
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = sub_24809DE98;
    v56 = &unk_278EFC238;
    v32 = v38;
    v57[0] = v32;
    v57[1] = v43;
    objc_msgSend_enumerateObjectsUsingBlock_(v16, v44, &v53, v45, v46);
    v36 = v57;
    v37 = @"Forward compatibility checks have failed.";
  }

  else
  {
    if (!objc_msgSend_count(v13, v20, v21, v22, v23))
    {
      v48 = 0;
      v37 = @"Backward compatibility checks have failed.";
      v47 = @"An older version of this application may be able to open this document or connect to this device.";
      goto LABEL_12;
    }

    v26 = objc_opt_new();
    v31 = objc_msgSend_count(v13, v27, v28, v29, v30);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_24809DE1C;
    v58[3] = &unk_278EFC238;
    v32 = v26;
    v59[0] = v32;
    v59[1] = v31;
    objc_msgSend_enumerateObjectsUsingBlock_(v13, v33, v58, v34, v35);
    v36 = v59;
    v37 = @"Backward compatibility checks have failed.";
  }

  v47 = v32;

  v48 = v47;
LABEL_12:
  v49 = *MEMORY[0x277CCA450];
  v82[0] = *MEMORY[0x277CCA470];
  v82[1] = v49;
  v83[0] = v37;
  v83[1] = @"Missing features";
  v82[2] = *MEMORY[0x277CCA498];
  v82[3] = @"XRCapabilityRangesKey";
  v83[2] = v47;
  v83[3] = v14;
  v82[4] = @"XRRequiredVersionsKey";
  v83[4] = v15;
  v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v83, v82, 5, v53, v54, v55, v56);
  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v50, @"Supported Capability Problem", 0, v51);
  }

  v24 = *(v79 + 24);
LABEL_15:

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);

  return v24 & 1;
}

@end