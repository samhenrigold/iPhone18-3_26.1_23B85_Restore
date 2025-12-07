@interface MKFCKHAPAccessory
+ (id)fetchWithLocalModel:(id)model context:(id)context;
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)hasServicePropertiesForInstanceID:(void *)d;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (id)fetchLocalModelWithContext:(id)context;
- (void)exportServiceDictionary:(void *)dictionary forLocalModel:(int)model servicesModified:(void *)modified withBlock:;
- (void)importServiceDictionary:(void *)dictionary forLocalModel:(void *)model withBlock:;
- (void)lazyMutableCopy:(void *)copy of:(void *)of;
@end

@implementation MKFCKHAPAccessory

+ (id)fetchWithLocalModel:(id)model context:(id)context
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MKFCKHAPAccessory;
  v4 = objc_msgSendSuper2(&v6, sel_fetchWithLocalModel_context_, model, context);

  return v4;
}

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v83 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  propertiesCopy = properties;
  contextCopy = context;
  v64.receiver = self;
  v64.super_class = MKFCKHAPAccessory;
  if (![(MKFCKAccessory *)&v64 exportFromLocalModel:modelCopy updatedProperties:propertiesCopy context:contextCopy])
  {
    goto LABEL_54;
  }

  initialServiceTypes = [(MKFCKHAPAccessory *)self initialServiceTypes];
  if (!initialServiceTypes)
  {
    initialServiceTypes2 = [modelCopy initialServiceTypes];

    if (!initialServiceTypes2)
    {
      goto LABEL_6;
    }

    initialServiceTypes = [modelCopy initialServiceTypes];
    [(MKFCKHAPAccessory *)self setInitialServiceTypes:initialServiceTypes];
  }

LABEL_6:
  v13 = modelCopy;
  if (self)
  {
    serviceProperties = [(MKFCKHAPAccessory *)self serviceProperties];
    v77 = 0;
    services = [v13 services];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = services;
    v16 = [services countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v16)
    {
      v58 = v13;
      selfCopy = self;
      v60 = contextCopy;
      v61 = propertiesCopy;
      v62 = modelCopy;
      v17 = *v74;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v74 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v73 + 1) + 8 * i);
          instanceID = [v19 instanceID];
          v21 = [serviceProperties objectForKeyedSubscript:instanceID];

          if (!v21)
          {
            v80[0] = @"t";
            v22 = objc_msgSend_serviceType(v19);
            v80[1] = @"p";
            v81[0] = v22;
            serviceProperties2 = [v19 serviceProperties];
            v24 = serviceProperties2;
            v25 = &unk_283E73718;
            if (serviceProperties2)
            {
              v25 = serviceProperties2;
            }

            v81[1] = v25;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
            v27 = [MKFCKHAPAccessory lazyMutableCopy:serviceProperties of:?];
            [v27 setObject:v26 forKeyedSubscript:instanceID];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
      }

      while (v16);
      v16 = v77;
      if (v77)
      {
        v28 = MEMORY[0x277CBEB58];
        allKeys = [serviceProperties allKeys];
        v30 = [v28 setWithArray:allKeys];

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v31 = obj;
        v32 = [v31 countByEnumeratingWithState:&v69 objects:v79 count:16];
        propertiesCopy = v61;
        if (v32)
        {
          v33 = v32;
          v34 = *v70;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v70 != v34)
              {
                objc_enumerationMutation(v31);
              }

              instanceID2 = [*(*(&v69 + 1) + 8 * j) instanceID];
              [v30 removeObject:instanceID2];
            }

            v33 = [v31 countByEnumeratingWithState:&v69 objects:v79 count:16];
          }

          while (v33);
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v37 = v30;
        v38 = [v37 countByEnumeratingWithState:&v65 objects:v78 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v66;
          do
          {
            for (k = 0; k != v39; ++k)
            {
              if (*v66 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v65 + 1) + 8 * k);
              null = [MEMORY[0x277CBEB68] null];
              [v16 setObject:null forKeyedSubscript:v42];
            }

            v39 = [v37 countByEnumeratingWithState:&v65 objects:v78 count:16];
          }

          while (v39);
        }

        self = selfCopy;
        serviceProperties3 = [(MKFCKHAPAccessory *)selfCopy serviceProperties];
        v45 = HMFEqualObjects();

        if ((v45 & 1) == 0)
        {
          v46 = objc_msgSend_copy(v16);
          [(MKFCKHAPAccessory *)selfCopy setServiceProperties:v46];
        }

        LODWORD(v16) = 1;
        modelCopy = v62;
        contextCopy = v60;
      }

      else
      {
        propertiesCopy = v61;
        modelCopy = v62;
        self = selfCopy;
      }

      v13 = v58;
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  [(MKFCKHAPAccessory *)self exportServiceDictionary:v13 forLocalModel:v16 servicesModified:&__block_literal_global_38_162514 withBlock:?];
  [(MKFCKHAPAccessory *)self exportServiceDictionary:v13 forLocalModel:v16 servicesModified:&__block_literal_global_41_162516 withBlock:?];
  [(MKFCKHAPAccessory *)self exportServiceDictionary:v13 forLocalModel:v16 servicesModified:&__block_literal_global_44_162518 withBlock:?];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_47;
  }

  if (![(MKFCKModel *)self shouldExportUpdatedPropertyInSet:propertiesCopy name:@"adaptiveTemperatureSleepScheduleRules_"])
  {
    if (self)
    {
      goto LABEL_46;
    }

LABEL_54:
    v56 = 0;
    goto LABEL_55;
  }

  if (!self)
  {
    goto LABEL_54;
  }

  adaptiveTemperatureSleepScheduleRules = [v13 adaptiveTemperatureSleepScheduleRules];
  adaptiveTemperatureSleepScheduleRules2 = [(MKFCKHAPAccessory *)self adaptiveTemperatureSleepScheduleRules];
  v49 = [MKFCKGuest _dictionaryRepresentationFromWeekDayScheduleRules:adaptiveTemperatureSleepScheduleRules cloudWeekDayScheduleRulesDictionary:adaptiveTemperatureSleepScheduleRules2];

  adaptiveTemperatureSleepScheduleRules3 = [(MKFCKHAPAccessory *)self adaptiveTemperatureSleepScheduleRules];
  LOBYTE(adaptiveTemperatureSleepScheduleRules) = HMFEqualObjects();

  if ((adaptiveTemperatureSleepScheduleRules & 1) == 0)
  {
    [(MKFCKHAPAccessory *)self setAdaptiveTemperatureSleepScheduleRules:v49];
  }

LABEL_46:
  if (![(MKFCKHomeObject *)self _exportSiblingRelationshipsFromLocalModel:v13 localRelationship:@"localPresenceRooms_" context:contextCopy])
  {
    goto LABEL_54;
  }

LABEL_47:
  accessoryCategory = [v13 accessoryCategory];
  if (accessoryCategory)
  {
    category = [(MKFCKHAPAccessory *)self category];
    v53 = HMFEqualObjects();

    if ((v53 & 1) == 0)
    {
      category2 = [(MKFCKHAPAccessory *)self category];

      v55 = v16 ^ 1;
      if (!category2)
      {
        v55 = 0;
      }

      if ((v55 & 1) == 0)
      {
        [(MKFCKHAPAccessory *)self setCategory:accessoryCategory];
      }
    }
  }

  v56 = 1;
LABEL_55:

  return v56;
}

- (void)exportServiceDictionary:(void *)dictionary forLocalModel:(int)model servicesModified:(void *)modified withBlock:
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dictionaryCopy = dictionary;
  modifiedCopy = modified;
  if (self)
  {
    v34 = v9;
    v11 = [self valueForKey:v9];
    v12 = v11;
    v45 = 0;
    if (model)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      allKeys = [v11 allKeys];
      v14 = [allKeys countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v42;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v42 != v16)
            {
              objc_enumerationMutation(allKeys);
            }

            v18 = *(*(&v41 + 1) + 8 * i);
            if (![(MKFCKHAPAccessory *)self hasServicePropertiesForInstanceID:v18])
            {
              v19 = [MKFCKHAPAccessory lazyMutableCopy:v12 of:?];
              [v19 removeObjectForKey:v18];
            }
          }

          v15 = [allKeys countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v15);
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [dictionaryCopy services];
    v20 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v37 + 1) + 8 * j);
          instanceID = [v24 instanceID];
          if ([(MKFCKHAPAccessory *)self hasServicePropertiesForInstanceID:instanceID])
          {
            v26 = modifiedCopy[2](modifiedCopy, v24);
            [v12 objectForKeyedSubscript:instanceID];
            v28 = v27 = v12;
            v29 = HMFEqualObjects();

            v12 = v27;
            if ((v29 & 1) == 0)
            {
              v30 = [MKFCKHAPAccessory lazyMutableCopy:v27 of:?];
              [v30 setObject:v26 forKeyedSubscript:instanceID];
            }
          }
        }

        v21 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v21);
    }

    v31 = v45;
    v9 = v34;
    if (v45)
    {
      v32 = objc_msgSend_copy(v45);
      [self setValue:v32 forKey:v34];
    }

    dictionaryCopy = v33;
  }
}

- (BOOL)hasServicePropertiesForInstanceID:(void *)d
{
  v3 = a2;
  serviceProperties = [d serviceProperties];
  v5 = [serviceProperties objectForKeyedSubscript:v3];

  v6 = v5;
  v7 = v6;
  if (*MEMORY[0x277CBEEE8] == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8 != 0;
}

- (void)lazyMutableCopy:(void *)copy of:(void *)of
{
  ofCopy = of;
  v4 = ofCopy;
  v5 = *copy;
  if (!*copy)
  {
    v6 = [ofCopy mutableCopy];
    v7 = v6;
    if (v6)
    {
      dictionary = v6;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v9 = *copy;
    *copy = dictionary;

    v5 = *copy;
  }

  v10 = v5;

  return v5;
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v72 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v51.receiver = self;
  v51.super_class = MKFCKHAPAccessory;
  contextCopy = context;
  v50 = modelCopy;
  if ([(MKFCKAccessory *)&v51 importIntoLocalModel:modelCopy updatedProperties:properties context:?])
  {
    pairingUsername = [modelCopy pairingUsername];
    v10 = pairingUsername == 0;

    if (v10)
    {
      identifier = [(MKFCKHAPAccessory *)self identifier];
      [v50 setPairingUsername:identifier];
    }

    initialServiceTypes = [(MKFCKHAPAccessory *)self initialServiceTypes];
    initialServiceTypes2 = [v50 initialServiceTypes];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      [v50 setInitialServiceTypes:initialServiceTypes];
    }

    v15 = v50;
    v46 = contextCopy;
    if (self)
    {
      serviceProperties = [(MKFCKHAPAccessory *)self serviceProperties];
      v16 = [v15 mutableSetValueForKey:@"services_"];
      v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(serviceProperties, "count")}];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v66 objects:v71 count:16];
      if (v19)
      {
        v20 = *v67;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v67 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v66 + 1) + 8 * i);
            instanceID = [v22 instanceID];
            [v17 setObject:v22 forKeyedSubscript:instanceID];
          }

          v19 = [v18 countByEnumeratingWithState:&v66 objects:v71 count:16];
        }

        while (v19);
      }

      v47 = initialServiceTypes;
      v62 = 0;
      v63 = &v62;
      v64 = 0x2020000000;
      v65 = 0;
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __76__MKFCKHAPAccessory_importServicePropertiesIntoLocalModel_context_modified___block_invoke;
      v56[3] = &unk_27867C310;
      v24 = v17;
      v57 = v24;
      v25 = v46;
      v58 = v25;
      v26 = v15;
      v59 = v26;
      v27 = v18;
      v60 = v27;
      v61 = &v62;
      [serviceProperties enumerateKeysAndObjectsUsingBlock:v56];
      v28 = *(v63 + 24);
      if (v28 == 1)
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        allValues = [v24 allValues];
        v30 = [allValues countByEnumeratingWithState:&v52 objects:v70 count:16];
        if (v30)
        {
          v31 = *v53;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v53 != v31)
              {
                objc_enumerationMutation(allValues);
              }

              v33 = *(*(&v52 + 1) + 8 * j);
              [v27 removeObject:v33];
              [v25 deleteObject:v33];
            }

            v30 = [allValues countByEnumeratingWithState:&v52 objects:v70 count:16];
          }

          while (v30);
        }

        initialServiceTypes = v47;
        LOBYTE(v28) = *(v63 + 24);
      }

      _Block_object_dispose(&v62, 8);
      [(MKFCKHAPAccessory *)self importServiceDictionary:v26 forLocalModel:&__block_literal_global_162555 withBlock:?];
      [(MKFCKHAPAccessory *)self importServiceDictionary:v26 forLocalModel:&__block_literal_global_12_162556 withBlock:?];
      [(MKFCKHAPAccessory *)self importServiceDictionary:v26 forLocalModel:&__block_literal_global_18_162557 withBlock:?];
      if (v28)
      {
        accessoryCategory = [v26 accessoryCategory];
        category = [(MKFCKHAPAccessory *)self category];
        v36 = HMFEqualObjects();

        if ((v36 & 1) == 0)
        {
          category2 = [(MKFCKHAPAccessory *)self category];
          [v26 setAccessoryCategory:category2];
        }
      }

      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        goto LABEL_29;
      }

      v38 = v25;
      v39 = v26;
      entity = [v39 entity];
      relationshipsByName = [entity relationshipsByName];
      v42 = [relationshipsByName objectForKeyedSubscript:@"adaptiveTemperatureSleepScheduleRules_"];
      v43 = [MKFCKGuest _importWeekDayScheduleRulesIntoLocalModel:v39 fromCloudModel:self localRelationship:v42 cloudAttributeName:@"adaptiveTemperatureSleepScheduleRules" parentRelationshipName:@"hapAccessory" context:v38];

      if (v43 && [(MKFCKHomeObject *)self _importSiblingRelationshipsIntoLocalModel:v39 localRelationship:@"localPresenceRooms_" context:v38])
      {
        goto LABEL_29;
      }
    }

    else
    {

      [(MKFCKHAPAccessory *)0 importServiceDictionary:v15 forLocalModel:&__block_literal_global_162555 withBlock:?];
      [(MKFCKHAPAccessory *)0 importServiceDictionary:v15 forLocalModel:&__block_literal_global_12_162556 withBlock:?];
      [(MKFCKHAPAccessory *)0 importServiceDictionary:v15 forLocalModel:&__block_literal_global_18_162557 withBlock:?];
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
LABEL_29:
        v44 = 1;
LABEL_33:

        goto LABEL_34;
      }
    }

    v44 = 0;
    goto LABEL_33;
  }

  v44 = 0;
LABEL_34:

  return v44;
}

- (void)importServiceDictionary:(void *)dictionary forLocalModel:(void *)model withBlock:
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  modelCopy = model;
  if (self)
  {
    v17 = [self valueForKey:a2];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    services = [dictionaryCopy services];
    v10 = [services countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(services);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          instanceID = [v14 instanceID];
          if ([(MKFCKHAPAccessory *)self hasServicePropertiesForInstanceID:instanceID])
          {
            v16 = [v17 objectForKeyedSubscript:instanceID];
            modelCopy[2](modelCopy, v14, v16);
          }
        }

        v11 = [services countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

void __76__MKFCKHAPAccessory_importServicePropertiesIntoLocalModel_context_modified___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = v5;
  if (*MEMORY[0x277CBEEE8] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v14];
    if (v9)
    {
      v10 = v9;
      [*(a1 + 32) removeObjectForKey:v14];
    }

    else
    {
      v10 = [[_MKFService alloc] initWithContext:*(a1 + 40)];
      v11 = [_MKFService modelIDForKeyAttribute:v14 parent:*(a1 + 48)];
      [(_MKFService *)v10 setModelID:v11];

      [(_MKFService *)v10 setInstanceID:v14];
      v12 = [v8 objectForKeyedSubscript:@"t"];
      [(_MKFService *)v10 setServiceType:v12];

      v13 = [v8 objectForKeyedSubscript:@"p"];
      [(_MKFService *)v10 setServiceProperties:v13];

      [*(a1 + 56) addObject:v10];
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }
}

- (id)fetchLocalModelWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = MKFCKHAPAccessory;
  v3 = [(MKFCKModel *)&v5 fetchLocalModelWithContext:context];

  return v3;
}

@end