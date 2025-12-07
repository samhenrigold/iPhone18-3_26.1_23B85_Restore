@interface PCCWrappedKey
- (PCCWrappedKey)initWithKey:(id)key permittedRemoteMeasurement:(id)measurement attestation:(id)attestation;
- (void)dealloc;
@end

@implementation PCCWrappedKey

- (PCCWrappedKey)initWithKey:(id)key permittedRemoteMeasurement:(id)measurement attestation:(id)attestation
{
  v154 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  measurementCopy = measurement;
  attestationCopy = attestation;
  v145.receiver = self;
  v145.super_class = PCCWrappedKey;
  v13 = [(PCCWrappedKey *)&v145 init];
  if (!v13)
  {
    goto LABEL_29;
  }

  if (attestationCopy)
  {
    v14 = MEMORY[0x277CBEB28];
    v15 = objc_msgSend_applicationEnclaveQuote(attestationCopy, v11, v12);
    v16 = v15;
    v19 = objc_msgSend_bytes(v16, v17, v18);
    v22 = objc_msgSend_applicationEnclaveQuote(attestationCopy, v20, v21);
    v25 = objc_msgSend_length(v22, v23, v24);
    v27 = objc_msgSend_dataWithBytes_length_(v14, v26, v19, v25);

    v28 = v27;
    v144[0] = objc_msgSend_mutableBytes(v28, v29, v30);
    v144[1] = objc_msgSend_length(v27, v31, v32);
    v33 = MEMORY[0x277CBEB28];
    v36 = objc_msgSend_quotingEnclaveQuote(attestationCopy, v34, v35);
    v37 = v36;
    v40 = objc_msgSend_bytes(v37, v38, v39);
    v43 = objc_msgSend_quotingEnclaveQuote(attestationCopy, v41, v42);
    v46 = objc_msgSend_length(v43, v44, v45);
    v48 = objc_msgSend_dataWithBytes_length_(v33, v47, v40, v46);

    v49 = v48;
    v50 = v48;
    v144[2] = objc_msgSend_mutableBytes(v50, v51, v52);
    v144[3] = objc_msgSend_length(v48, v53, v54);
    v55 = MEMORY[0x277CBEB28];
    v58 = objc_msgSend_certificate(attestationCopy, v56, v57);
    v59 = v58;
    v61 = objc_msgSend_cStringUsingEncoding_(v59, v60, 4);
    v64 = objc_msgSend_certificate(attestationCopy, v62, v63);
    v66 = objc_msgSend_lengthOfBytesUsingEncoding_(v64, v65, 4);
    v68 = objc_msgSend_dataWithBytes_length_(v55, v67, v61, v66);

    v69 = v68;
    v144[4] = objc_msgSend_mutableBytes(v69, v70, v71);
    v144[5] = objc_msgSend_length(v68, v72, v73);
    v76 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v74, v75);
    v78 = objc_msgSend_stringArrayForKey_(v76, v77, @"PCCPinnedVerificationHashes");
    v138 = objc_msgSend_BOOLForKey_(v76, v79, @"PCCPinnedVerificationDisabled");
    if (objc_msgSend_count(v78, v80, v81))
    {
      v84 = objc_msgSend_count(v78, v82, v83);
      v139 = malloc_type_calloc(0x20uLL, v84, 0xCA056294uLL);
      if (!v139)
      {

        goto LABEL_27;
      }

      v128 = v84;
      v129 = v76;
      v134 = v68;
      v135 = v27;
      v130 = v49;
      v131 = attestationCopy;
      v136 = v13;
      v137 = keyCopy;
      v132 = measurementCopy;
      v133 = v78;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v85 = v78;
      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v140, v153, 16);
      if (v87)
      {
        v88 = v87;
        v89 = 0;
        v90 = *v141;
        do
        {
          v91 = 0;
          v92 = &v139[32 * v89];
          v89 += v88;
          do
          {
            if (*v141 != v90)
            {
              objc_enumerationMutation(v85);
            }

            v93 = *(*(&v140 + 1) + 8 * v91);
            v94 = objc_alloc(MEMORY[0x277CBEA90]);
            v96 = objc_msgSend_initWithBase64EncodedString_options_(v94, v95, v93, 1);
            v99 = objc_msgSend_length(v96, v97, v98);
            if (v99 >= 0x20)
            {
              v100 = 32;
            }

            else
            {
              v100 = v99;
            }

            v101 = v96;
            v104 = objc_msgSend_bytes(v101, v102, v103);
            memcpy(v92, v104, v100);

            ++v91;
            v92 += 32;
          }

          while (v88 != v91);
          v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v105, &v140, v153, 16);
        }

        while (v88);
      }

      attestationCopy = v131;
      measurementCopy = v132;
      v76 = v129;
      v49 = v130;
      v106 = v139;
      v107 = v128;
    }

    else
    {
      v134 = v68;
      v135 = v27;
      v136 = v13;
      v137 = keyCopy;
      v133 = v78;
      v107 = 243;
      v106 = &unk_27D71ABC8;
    }

    v108 = measurementCopy;
    v113 = objc_msgSend_bytes(v108, v109, v110);
    v114 = 0;
    memset(v150, 0, sizeof(v150));
    v151 = v106;
    v152 = v107;
    BYTE2(v152) = v138;
    do
    {
      if (v114 >= objc_msgSend_length(measurementCopy, v111, v112, v128, v129, v130, v131, v132))
      {
        break;
      }

      *(v150 + v114) = *(v113 + v114);
      ++v114;
    }

    while (v114 != 32);
    v149 = 0;
    memset(v148, 0, sizeof(v148));
    sub_22540F558(v144, v150, v148);
    v116 = v115;
    if (v106 != &unk_27D71ABC8)
    {
      free(v106);
    }

    v13 = v136;
    keyCopy = v137;
    if (v116 || (v147 = 0, memset(v146, 0, sizeof(v146)), *&v119 = sub_22540EFEC(v148, v146).n128_u64[0], v120))
    {

      goto LABEL_27;
    }

    v122 = objc_msgSend_secret(v137, v117, v118, v119);
    v136->_wrappedInvocationKey = sub_22540EF3C(v146, v122);
    v125 = objc_msgSend_routingToken(attestationCopy, v123, v124);
    routingToken = v136->_routingToken;
    v136->_routingToken = v125;

    sub_22540F224(v146);
LABEL_29:
    v121 = v13;
    goto LABEL_30;
  }

LABEL_27:
  v121 = 0;
LABEL_30:

  return v121;
}

- (void)dealloc
{
  objc_msgSend_clear(self, a2, v2);
  free(self->_wrappedInvocationKey);
  v4.receiver = self;
  v4.super_class = PCCWrappedKey;
  [(PCCWrappedKey *)&v4 dealloc];
}

@end