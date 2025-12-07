@interface DESMetadataSchema
- (DESMetadataSchema)initWith:(id)with key:(id)key attachments:(id)attachments error:(id *)error;
@end

@implementation DESMetadataSchema

- (DESMetadataSchema)initWith:(id)with key:(id)key attachments:(id)attachments error:(id *)error
{
  v115[1] = *MEMORY[0x277D85DE8];
  withCopy = with;
  keyCopy = key;
  attachmentsCopy = attachments;
  v94.receiver = self;
  v94.super_class = DESMetadataSchema;
  v13 = [(DESMetadataSchema *)&v94 init];
  if (!v13)
  {
    goto LABEL_36;
  }

  v14 = [withCopy objectForKey:keyCopy];
  if (!v14)
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No schema for metadata key %@, skip encoding.", keyCopy];
    v20 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
    }

    if (!error)
    {
      goto LABEL_31;
    }

    v21 = MEMORY[0x277CCA9B8];
    errorCopy5 = error;
    v114 = *MEMORY[0x277CCA470];
    v115[0] = keyCopy;
    v23 = MEMORY[0x277CBEAC0];
    v24 = v115;
    v25 = &v114;
    goto LABEL_29;
  }

  v15 = 0x277CBE000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Schema for %@ is not a dictionary.", keyCopy];
    v26 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
    }

    if (!error)
    {
      goto LABEL_31;
    }

    v21 = MEMORY[0x277CCA9B8];
    errorCopy5 = error;
    v112 = *MEMORY[0x277CCA470];
    v113 = keyCopy;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v113;
    v25 = &v112;
    goto LABEL_29;
  }

  objc_storeStrong(&v13->_key, key);
  v16 = [v14 objectForKey:@"type"];
  v17 = [v16 isEqualToString:@"categorical"];

  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v27 = [v14 objectForKey:@"type"];
    v28 = [v27 isEqualToString:@"numeric"];

    if ((v28 & 1) == 0)
    {
      v39 = [v14 objectForKey:@"type"];
      v40 = [v39 isEqualToString:@"fedstats"];

      if (!error || (v40 & 1) != 0)
      {
        goto LABEL_32;
      }

      keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, type is neither categorical nor numeric for %@.", keyCopy];
      v21 = MEMORY[0x277CCA9B8];
      errorCopy5 = error;
      v110 = *MEMORY[0x277CCA470];
      v111 = keyCopy;
      v23 = MEMORY[0x277CBEAC0];
      v24 = &v111;
      v25 = &v110;
      goto LABEL_29;
    }

    v18 = 0;
  }

  v13->_outputType = v18;
  v29 = [v14 objectForKey:@"buckets"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [v14 objectForKey:@"buckets"];
    integerValue = [v30 integerValue];

    if (integerValue)
    {
      v32 = [v14 objectForKey:@"buckets"];
      v13->_buckets = [v32 integerValue];

      v33 = [v14 objectForKey:@"description"];
      desc = v13->_desc;
      v13->_desc = v33;

      if (v13->_outputType == 1)
      {
        v35 = [v14 objectForKey:@"dictionary"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          keyCopy = [v14 objectForKey:@"dictionary"];
LABEL_21:
          v37 = [[DESCategoricalMetadataEncoder alloc] initWithSingleSchema:keyCopy];
          if (v37)
          {
            encoder = v13->_encoder;
            v13->_encoder = v37;

LABEL_35:
LABEL_36:
            v42 = v13;
            goto LABEL_37;
          }

          keyCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create CategoricalMetadataEncoder for: %@", keyCopy];
          v57 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
          }

          if (error)
          {
            v86 = MEMORY[0x277CCA9B8];
            v97 = *MEMORY[0x277CCA470];
            v98 = keyCopy2;
            [*(v15 + 2752) dictionaryWithObjects:&v98 forKeys:&v97 count:1];
            v59 = v58 = error;
            *v58 = [v86 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2007 userInfo:v59];
          }

          goto LABEL_30;
        }

        v45 = [v14 objectForKey:@"dictionary_path"];
        objc_opt_class();
        v46 = objc_opt_isKindOfClass();

        if (v46)
        {
          keyCopy2 = [v14 objectForKey:@"dictionary_path"];
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          obj = attachmentsCopy;
          keyCopy = [obj countByEnumeratingWithState:&v90 objects:v107 count:16];
          if (!keyCopy)
          {
LABEL_66:

            goto LABEL_21;
          }

          errorCopy4 = error;
          v83 = attachmentsCopy;
          v85 = *v91;
LABEL_41:
          v47 = 0;
          while (1)
          {
            if (*v91 != v85)
            {
              objc_enumerationMutation(obj);
            }

            v48 = *(*(&v90 + 1) + 8 * v47);
            lastPathComponent = [v48 lastPathComponent];
            v50 = [lastPathComponent isEqualToString:keyCopy2];

            if (v50)
            {
              break;
            }

            if (keyCopy == ++v47)
            {
              keyCopy = [obj countByEnumeratingWithState:&v90 objects:v107 count:16];
              if (keyCopy)
              {
                goto LABEL_41;
              }

              error = errorCopy4;
              attachmentsCopy = v83;
              goto LABEL_65;
            }
          }

          v89 = 0;
          v60 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v48 options:1 error:&v89];
          keyCopy = v89;
          v87 = v60;
          if (!v60)
          {
            v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, unreadable dictionary_path %@ for %@, error: %@", keyCopy2, keyCopy, keyCopy];
            v66 = +[DESLogging coreChannel];
            attachmentsCopy = v83;
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
            }

            if (!errorCopy4)
            {
              goto LABEL_83;
            }

            v67 = MEMORY[0x277CCA9B8];
            v68 = *MEMORY[0x277CCA470];
            v105[0] = *MEMORY[0x277CCA7E8];
            v105[1] = v68;
            v106[0] = keyCopy;
            v106[1] = v87;
            v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:2];
            *errorCopy4 = [v67 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2007 userInfo:v69];
LABEL_82:

LABEL_83:
            goto LABEL_30;
          }

          v88 = keyCopy;
          v61 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v60 options:0 error:&v88];
          v62 = v88;

          objc_opt_class();
          attachmentsCopy = v83;
          v81 = v62;
          if (objc_opt_isKindOfClass())
          {
            v63 = [v61 objectForKey:@"dictionary"];
            objc_opt_class();
            v64 = objc_opt_isKindOfClass();

            v65 = v61;
            error = errorCopy4;
            if (v64)
            {
              keyCopy = [v65 objectForKey:@"dictionary"];

              obj = v62;
LABEL_65:
              v15 = 0x277CBE000;
              goto LABEL_66;
            }

            v80 = v65;
            v76 = v62;
            v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, unparsable dictionary read from dictionary_path %@ for %@, error: %@", keyCopy2, keyCopy, v62];
            v77 = +[DESLogging coreChannel];
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
            }

            if (!errorCopy4)
            {
              goto LABEL_81;
            }

            v72 = MEMORY[0x277CCA9B8];
            v101 = *MEMORY[0x277CCA470];
            v102 = v70;
            v79 = v70;
            v73 = MEMORY[0x277CBEAC0];
            v74 = &v102;
            v75 = &v101;
          }

          else
          {
            v80 = v61;
            v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, unparsable dictionary_path %@ for %@, error: %@", keyCopy2, keyCopy, v62];
            v71 = +[DESLogging coreChannel];
            error = errorCopy4;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
            }

            if (!errorCopy4)
            {
              v76 = v81;
              goto LABEL_81;
            }

            v72 = MEMORY[0x277CCA9B8];
            v103 = *MEMORY[0x277CCA470];
            v104 = v70;
            v79 = v70;
            v73 = MEMORY[0x277CBEAC0];
            v74 = &v104;
            v75 = &v103;
          }

          v78 = [v73 dictionaryWithObjects:v74 forKeys:v75 count:1];
          *error = [v72 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2007 userInfo:v78];

          v76 = v81;
          v70 = v79;
LABEL_81:

          keyCopy = v76;
          v69 = v80;
          goto LABEL_82;
        }

        keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, neither dictionary nor dictionary_path has the correct format for: %@", keyCopy];
        v56 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        if (!error)
        {
          goto LABEL_31;
        }

        v52 = MEMORY[0x277CCA9B8];
        v99 = *MEMORY[0x277CCA470];
        v100 = keyCopy;
        v53 = MEMORY[0x277CBEAC0];
        v54 = &v100;
        v55 = &v99;
      }

      else
      {
        v43 = objc_alloc_init(DESNumericMetadataEncoder);
        if (v43)
        {
          keyCopy = v13->_encoder;
          v13->_encoder = v43;
          goto LABEL_35;
        }

        keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create NumericMetadataEncoder for: %@", keyCopy];
        v51 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        if (!error)
        {
          goto LABEL_31;
        }

        v52 = MEMORY[0x277CCA9B8];
        v95 = *MEMORY[0x277CCA470];
        v96 = keyCopy;
        v53 = MEMORY[0x277CBEAC0];
        v54 = &v96;
        v55 = &v95;
      }

      keyCopy2 = [v53 dictionaryWithObjects:v54 forKeys:v55 count:1];
      *error = [v52 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2007 userInfo:keyCopy2];
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }
  }

  else
  {
  }

  if (error)
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, buckets %ld is <= 0 for %@.", v13->_buckets, keyCopy];
    v21 = MEMORY[0x277CCA9B8];
    errorCopy5 = error;
    v108 = *MEMORY[0x277CCA470];
    v109 = keyCopy;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v109;
    v25 = &v108;
LABEL_29:
    keyCopy2 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
    *errorCopy5 = [v21 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2007 userInfo:keyCopy2];
    goto LABEL_30;
  }

LABEL_32:

  v42 = 0;
LABEL_37:

  return v42;
}

@end