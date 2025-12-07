@interface LBFProtoConverter
+ (id)createBitacoraBmltIdentifiers:(id)identifiers;
+ (id)createBitacoraExperimentIdentifiers:(id)identifiers;
+ (id)createLighthousePluginEventStatus:(id)status;
+ (id)createLighthousePluginProto:(id)proto;
+ (id)createLighthousePluginProtoData:(id)data;
+ (id)createMLRuntimeProto:(id)proto;
+ (id)createMLRuntimeProtoData:(id)data;
+ (id)createMLRuntimeScheduleStatus:(id)status;
+ (id)createMLRuntimeTaskEvent:(id)event;
+ (id)createTrialIdentifiers:(id)identifiers;
+ (id)createTrialdProto:(id)proto;
+ (id)createTrialdProtoData:(id)data;
+ (id)deserializeLighthousePluginProto:(id)proto;
+ (id)deserializeMLRuntimeProto:(id)proto;
+ (id)deserializeTrialdProto:(id)proto;
@end

@implementation LBFProtoConverter

+ (id)createBitacoraExperimentIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers);
  v7 = objc_msgSend_objectForKey_(identifiersCopy, v5, v6, @"trialTreatmentID");
  objc_msgSend_setTrialTreatmentID_(v4, v8, v9, v7);

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = objc_msgSend_objectForKey_(identifiersCopy, v11, v12, @"trialDeploymentID");
  v16 = objc_msgSend_initWithFormat_(v10, v14, v15, @"%@", v13);
  objc_msgSend_setTrialDeploymentID_(v4, v17, v18, v16);

  v21 = objc_msgSend_objectForKey_(identifiersCopy, v19, v20, @"trialExperimentID");

  objc_msgSend_setTrialExperimentID_(v4, v22, v23, v21);

  return v4;
}

+ (id)createBitacoraBmltIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers);
  v7 = objc_msgSend_objectForKey_(identifiersCopy, v5, v6, @"trialTaskID");
  objc_msgSend_setTrialTaskID_(v4, v8, v9, v7);

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = objc_msgSend_objectForKey_(identifiersCopy, v11, v12, @"trialDeploymentID");

  v16 = objc_msgSend_initWithFormat_(v10, v14, v15, @"%@", v13);
  objc_msgSend_setTrialDeploymentID_(v4, v17, v18, v16);

  return v4;
}

+ (id)createTrialIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
  v8 = objc_msgSend_objectForKey_(identifiersCopy, v5, v6, @"experimentIdentifiers");
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_msgSend_createBitacoraExperimentIdentifiers_(LBFProtoConverter, v10, v11, v8);
      if (v12)
      {
        v15 = v12;
        objc_msgSend_setExperimentIdentifiers_(v4, v13, v14, v12);

        goto LABEL_5;
      }

      if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
      {
        sub_255F0B5C0();
      }
    }

    else if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0B558();
    }

    v23 = 0;
    goto LABEL_21;
  }

LABEL_5:
  v16 = objc_msgSend_objectForKey_(identifiersCopy, v7, v9, @"bmltIdentifiers");
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = objc_msgSend_createBitacoraBmltIdentifiers_(LBFProtoConverter, v17, v18, v16);
      if (v19)
      {
        v22 = v19;
        objc_msgSend_setBmltIdentifiers_(v4, v20, v21, v19);

        goto LABEL_9;
      }

      if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
      {
        sub_255F0B5C0();
      }
    }

    else if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0B628();
    }

    v23 = 0;
    goto LABEL_20;
  }

LABEL_9:
  v23 = v4;
LABEL_20:

LABEL_21:

  return v23;
}

+ (id)createMLRuntimeTaskEvent:(id)event
{
  eventCopy = event;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
  v7 = objc_msgSend_valueForKey_(eventCopy, v5, v6, @"succeeded");
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_BOOLValue(v7, v8, v10, v9);
    objc_msgSend_setSucceeded_(v4, v13, v14, v12);
    v18 = objc_msgSend_valueForKey_(eventCopy, v15, v16, @"errorDomain");
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setErrorDomain_(v4, v20, v21, v18);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
          {
            sub_255F0B690();
          }

          v22 = 0;
          goto LABEL_15;
        }
      }
    }

    v23 = objc_msgSend_valueForKey_(eventCopy, v17, v19, @"errorCode");
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = objc_msgSend_intValue(v23, v24, v26, v25);
        objc_msgSend_setErrorCode_(v4, v28, v29, v27);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
          {
            sub_255F0B6F8();
          }

          v22 = 0;
          goto LABEL_14;
        }
      }
    }

    v22 = v4;
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
  {
    sub_255F0B760();
  }

  v22 = 0;
LABEL_16:

  return v22;
}

+ (id)createMLRuntimeScheduleStatus:(id)status
{
  statusCopy = status;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOScheduleStatus);
  v7 = objc_msgSend_valueForKey_(statusCopy, v5, v6, @"scheduled");
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_BOOLValue(v7, v8, v10, v9);
    objc_msgSend_setScheduled_(v4, v13, v14, v12);
    v15 = v4;
  }

  else
  {
    if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0B7C8();
    }

    v15 = 0;
  }

  return v15;
}

+ (id)createMLRuntimeProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEvent);
  v7 = objc_msgSend_objectForKey_(protoCopy, v5, v6, @"trialIdentifiers");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_msgSend_createTrialIdentifiers_(LBFProtoConverter, v8, v9, v7);
    if (!v11)
    {
      if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
      {
        sub_255F0BA38();
      }

      v54 = 0;
      goto LABEL_38;
    }

    objc_msgSend_setTrialIdentifiers_(v4, v10, v12, v11);
    v15 = objc_msgSend_objectForKey_(protoCopy, v13, v14, @"timestamp");
    objc_msgSend_doubleValue(v15, v16, v18, v17);
    objc_msgSend_setTimestamp_(v4, v19, v21, v20);

    v25 = objc_msgSend_objectForKey_(protoCopy, v22, v23, @"activityScheduled");
    if (v25)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0B898();
        }

        v54 = 0;
        goto LABEL_37;
      }

      v29 = objc_msgSend_createMLRuntimeScheduleStatus_(LBFProtoConverter, v27, v28, v25);
      objc_msgSend_setActivityScheduleStatus_(v4, v30, v31, v29);
    }

    v33 = objc_msgSend_objectForKey_(protoCopy, v24, v26, @"taskScheduled");
    if (v33)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0B900();
        }

        v54 = 0;
        goto LABEL_36;
      }

      v37 = objc_msgSend_createMLRuntimeTaskEvent_(LBFProtoConverter, v35, v36, v33);
      objc_msgSend_setTaskScheduled_(v4, v38, v39, v37);
    }

    v41 = objc_msgSend_objectForKey_(protoCopy, v32, v34, @"taskFetched");
    if (v41)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0B968();
        }

        v54 = 0;
        goto LABEL_35;
      }

      v45 = objc_msgSend_createMLRuntimeTaskEvent_(LBFProtoConverter, v43, v44, v41);
      objc_msgSend_setTaskFetched_(v4, v46, v47, v45);
    }

    v48 = objc_msgSend_objectForKey_(protoCopy, v40, v42, @"taskCompleted");
    if (v48)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0B9D0();
        }

        v54 = 0;
        goto LABEL_34;
      }

      v51 = objc_msgSend_createMLRuntimeTaskEvent_(LBFProtoConverter, v49, v50, v48);
      objc_msgSend_setTaskCompleted_(v4, v52, v53, v51);
    }

    v54 = v4;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
LABEL_38:

    goto LABEL_39;
  }

  if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
  {
    sub_255F0B830();
  }

  v54 = 0;
LABEL_39:

  return v54;
}

+ (id)createMLRuntimeProtoData:(id)data
{
  v5 = objc_msgSend_createMLRuntimeProto_(LBFProtoConverter, a2, v3, data);
  v9 = v5;
  if (data)
  {
    v10 = objc_msgSend_data(v5, v6, v8, v7);
  }

  else
  {
    v11 = LBFLogContextProtoConverter;
    if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0BAA0(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)deserializeMLRuntimeProto:(id)proto
{
  protoCopy = proto;
  v4 = [LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEvent alloc];
  v7 = objc_msgSend_initWithData_(v4, v5, v6, protoCopy);

  return v7;
}

+ (id)createLighthousePluginEventStatus:(id)status
{
  statusCopy = status;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
  v7 = objc_msgSend_valueForKey_(statusCopy, v5, v6, @"succeeded");
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_BOOLValue(v7, v8, v10, v9);
    objc_msgSend_setSucceeded_(v4, v13, v14, v12);
    v18 = objc_msgSend_valueForKey_(statusCopy, v15, v16, @"errorDomain");
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setErrorDomain_(v4, v20, v21, v18);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
          {
            sub_255F0BB10();
          }

          v22 = 0;
          goto LABEL_15;
        }
      }
    }

    v23 = objc_msgSend_valueForKey_(statusCopy, v17, v19, @"errorCode");
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = objc_msgSend_intValue(v23, v24, v26, v25);
        objc_msgSend_setErrorCode_(v4, v28, v29, v27);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
          {
            sub_255F0BB78();
          }

          v22 = 0;
          goto LABEL_14;
        }
      }
    }

    v22 = v4;
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
  {
    sub_255F0B760();
  }

  v22 = 0;
LABEL_16:

  return v22;
}

+ (id)createLighthousePluginProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent);
  v7 = objc_msgSend_objectForKey_(protoCopy, v5, v6, @"trialIdentifiers");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_msgSend_createTrialIdentifiers_(LBFProtoConverter, v8, v9, v7);
    if (!v11)
    {
      v46 = 0;
LABEL_29:

      goto LABEL_30;
    }

    objc_msgSend_setTrialIdentifiers_(v4, v10, v12, v11);
    v15 = objc_msgSend_objectForKey_(protoCopy, v13, v14, @"timestamp");
    objc_msgSend_doubleValue(v15, v16, v18, v17);
    objc_msgSend_setTimestamp_(v4, v19, v21, v20);

    v25 = objc_msgSend_objectForKey_(protoCopy, v22, v23, @"performTaskStatus");
    if (v25)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0BC48();
        }

        v46 = 0;
        goto LABEL_28;
      }

      v29 = objc_msgSend_createLighthousePluginEventStatus_(LBFProtoConverter, v27, v28, v25);
      objc_msgSend_setPerformTaskStatus_(v4, v30, v31, v29);
    }

    v33 = objc_msgSend_objectForKey_(protoCopy, v24, v26, @"performTrialTaskStatus");
    if (v33)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0BCB0();
        }

        v46 = 0;
        goto LABEL_27;
      }

      v37 = objc_msgSend_createLighthousePluginEventStatus_(LBFProtoConverter, v35, v36, v33);
      objc_msgSend_setPerformTrialTaskStatus_(v4, v38, v39, v37);
    }

    v40 = objc_msgSend_objectForKey_(protoCopy, v32, v34, @"stop");
    if (v40)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0BD18();
        }

        v46 = 0;
        goto LABEL_26;
      }

      v43 = objc_msgSend_createLighthousePluginEventStatus_(LBFProtoConverter, v41, v42, v40);
      objc_msgSend_setStop_(v4, v44, v45, v43);
    }

    v46 = v4;
LABEL_26:

LABEL_27:
LABEL_28:

    goto LABEL_29;
  }

  if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
  {
    sub_255F0BBE0();
  }

  v46 = 0;
LABEL_30:

  return v46;
}

+ (id)createLighthousePluginProtoData:(id)data
{
  v5 = objc_msgSend_createLighthousePluginProto_(LBFProtoConverter, a2, v3, data);
  v9 = v5;
  if (data)
  {
    v10 = objc_msgSend_data(v5, v6, v8, v7);
  }

  else
  {
    v11 = LBFLogContextProtoConverter;
    if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0BAA0(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)deserializeLighthousePluginProto:(id)proto
{
  protoCopy = proto;
  v4 = [LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent alloc];
  v7 = objc_msgSend_initWithData_(v4, v5, v6, protoCopy);

  return v7;
}

+ (id)createTrialdProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent);
  v7 = objc_msgSend_objectForKey_(protoCopy, v5, v6, @"trialIdentifiers");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_msgSend_createTrialIdentifiers_(LBFProtoConverter, v8, v9, v7);
    if (!v11)
    {
      v36 = 0;
LABEL_31:

      goto LABEL_32;
    }

    objc_msgSend_setTrialIdentifiers_(v4, v10, v12, v11);
    v15 = objc_msgSend_objectForKey_(protoCopy, v13, v14, @"timestamp");
    objc_msgSend_doubleValue(v15, v16, v18, v17);
    objc_msgSend_setTimestamp_(v4, v19, v21, v20);

    v24 = objc_msgSend_objectForKey_(protoCopy, v22, v23, @"eventType");
    if (v24)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0BD80();
        }

        v36 = 0;
        goto LABEL_30;
      }

      if (objc_msgSend_isEqualToString_(v24, v25, v26, @"allocation"))
      {
        objc_msgSend_setEventType_(v4, v27, v28, 1);
      }

      if (objc_msgSend_isEqualToString_(v24, v27, v28, @"activation"))
      {
        objc_msgSend_setEventType_(v4, v29, v30, 2);
      }

      if (objc_msgSend_isEqualToString_(v24, v29, v30, @"deactivation"))
      {
        objc_msgSend_setEventType_(v4, v31, v33, 3);
      }

      if ((objc_msgSend_hasEventType(v4, v31, v33, v32) & 1) == 0)
      {
        objc_msgSend_setEventType_(v4, v34, v35, 0);
      }
    }

    else if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0BDE8();
    }

    v37 = objc_msgSend_objectForKey_(protoCopy, v34, v35, @"eventSucceeded");
    if (v37)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0BE50();
        }

        v36 = 0;
        goto LABEL_29;
      }

      v41 = objc_msgSend_BOOLValue(v37, v38, v40, v39);
      objc_msgSend_setEventSucceeded_(v4, v42, v43, v41);
    }

    v36 = v4;
LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
  {
    sub_255F0BBE0();
  }

  v36 = 0;
LABEL_32:

  return v36;
}

+ (id)createTrialdProtoData:(id)data
{
  v5 = objc_msgSend_createTrialdProto_(LBFProtoConverter, a2, v3, data);
  v9 = v5;
  if (data)
  {
    v10 = objc_msgSend_data(v5, v6, v8, v7);
  }

  else
  {
    v11 = LBFLogContextProtoConverter;
    if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0BAA0(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)deserializeTrialdProto:(id)proto
{
  protoCopy = proto;
  v4 = [LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent alloc];
  v7 = objc_msgSend_initWithData_(v4, v5, v6, protoCopy);

  return v7;
}

@end