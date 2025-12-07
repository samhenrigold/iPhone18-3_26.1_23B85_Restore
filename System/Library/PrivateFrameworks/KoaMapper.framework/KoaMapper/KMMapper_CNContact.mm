@interface KMMapper_CNContact
- (BOOL)_addLabeledFieldsOfType:(int64_t)type labeledValues:(id)values labelOnly:(BOOL)only excludeDefault:(BOOL)default error:(id *)error;
- (KMMapper_CNContact)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_CNContact

- (BOOL)_addLabeledFieldsOfType:(int64_t)type labeledValues:(id)values labelOnly:(BOOL)only excludeDefault:(BOOL)default error:(id *)error
{
  defaultCopy = default;
  onlyCopy = only;
  v41 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v13 = valuesCopy;
  if (!valuesCopy || ![valuesCopy count])
  {
    LOBYTE(v29) = 1;
    goto LABEL_34;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v13;
  v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v35)
  {
    LOBYTE(v29) = 1;
    goto LABEL_33;
  }

  v31 = v13;
  typeCopy = type;
  v34 = *v37;
  while (2)
  {
    for (i = 0; i != v35; ++i)
    {
      if (*v37 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v36 + 1) + 8 * i);
      value = [v15 value];

      if (value)
      {
        label = [v15 label];
        v18 = label;
        if (defaultCopy)
        {
          v19 = defaultCopy;
          v20 = onlyCopy;
          errorCopy = error;
          v22 = label;
          v23 = [v22 length];
          v24 = [@"_$!<" length];
          if (v23 < [@">!$_" length] + v24 || (objc_msgSend(v22, "hasPrefix:", @"_$!<") & 1) == 0)
          {

            error = errorCopy;
            onlyCopy = v20;
            defaultCopy = v19;
            type = typeCopy;
            if (onlyCopy)
            {
              goto LABEL_14;
            }

            goto LABEL_16;
          }

          v25 = [v22 hasSuffix:@">!$_"];

          error = errorCopy;
          onlyCopy = v20;
          defaultCopy = v19;
          type = typeCopy;
          if (v25)
          {
LABEL_25:

            continue;
          }
        }

        if (onlyCopy)
        {
LABEL_14:
          v26 = 0;
          goto LABEL_24;
        }

LABEL_16:
        value2 = [v15 value];
        if (value2)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            name = value2;
LABEL_21:
            v26 = name;
LABEL_23:

LABEL_24:
            v29 = [(KVItemBuilder *)self->_builder addFieldWithType:type label:v18 value:v26 error:error];

            if (!v29)
            {

              goto LABEL_31;
            }

            goto LABEL_25;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            name = [value2 name];
            goto LABEL_21;
          }
        }

        v26 = 0;
        goto LABEL_23;
      }
    }

    v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v35)
    {
      continue;
    }

    break;
  }

  LOBYTE(v29) = 1;
LABEL_31:
  v13 = v31;
LABEL_33:

LABEL_34:
  return v29;
}

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v114[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v9 = [fields objectForKey:self->_alternativeItemIdKey];
  v10 = v9;
  if (v9)
  {
    identifier = v9;
  }

  else
  {
    identifier = [objectCopy identifier];
  }

  v12 = identifier;
  builder = self->_builder;
  v113 = 0;
  v14 = [(KVItemBuilder *)builder setItemType:2 itemId:v12 error:&v113];
  v15 = v113;
  if (!v14)
  {
LABEL_61:
    v19 = v15;
    goto LABEL_62;
  }

  v16 = self->_builder;
  namePrefix = [objectCopy namePrefix];
  v112 = v15;
  v18 = [(KVItemBuilder *)v16 addFieldWithType:55 value:namePrefix error:&v112];
  v19 = v112;

  if (v18)
  {
    errorCopy = error;
    v20 = self->_builder;
    [objectCopy givenName];
    v107 = v111[19] = v19;
    v21 = [KVItemBuilder addFieldWithType:v20 value:"addFieldWithType:value:error:" error:50];
    v15 = v19;

    v106 = v21;
    v108 = v18;
    if (v21)
    {
      v22 = self->_builder;
      [objectCopy middleName];
      v105 = v111[18] = v15;
      v23 = [KVItemBuilder addFieldWithType:v22 value:"addFieldWithType:value:error:" error:51];
      v24 = v15;

      v104 = v23;
      if (v23)
      {
        v25 = self->_builder;
        [objectCopy familyName];
        v103 = v111[17] = v24;
        v26 = [KVItemBuilder addFieldWithType:v25 value:"addFieldWithType:value:error:" error:52];
        v27 = v24;

        v102 = v26;
        if (v26)
        {
          v28 = self->_builder;
          [objectCopy previousFamilyName];
          v101 = v111[16] = v27;
          v29 = [KVItemBuilder addFieldWithType:v28 value:"addFieldWithType:value:error:" error:53];
          v30 = v27;

          v100 = v29;
          if (v29)
          {
            v31 = self->_builder;
            [objectCopy nameSuffix];
            v99 = v111[15] = v30;
            v32 = [KVItemBuilder addFieldWithType:v31 value:"addFieldWithType:value:error:" error:56];
            v33 = v30;

            v98 = v32;
            if (v32)
            {
              v34 = self->_builder;
              [objectCopy nickname];
              v97 = v111[14] = v33;
              v35 = [KVItemBuilder addFieldWithType:v34 value:"addFieldWithType:value:error:" error:54];
              v36 = v33;

              v96 = v35;
              if (v35)
              {
                v37 = self->_builder;
                [objectCopy organizationName];
                v95 = v111[13] = v36;
                v38 = [KVItemBuilder addFieldWithType:v37 value:"addFieldWithType:value:error:" error:64];
                v39 = v36;

                v94 = v38;
                if (v38)
                {
                  v40 = self->_builder;
                  [objectCopy departmentName];
                  v93 = v111[12] = v39;
                  v41 = [KVItemBuilder addFieldWithType:v40 value:"addFieldWithType:value:error:" error:65];
                  v42 = v39;

                  v92 = v41;
                  if (v41)
                  {
                    v43 = self->_builder;
                    [objectCopy jobTitle];
                    v91 = v111[11] = v42;
                    v44 = [KVItemBuilder addFieldWithType:v43 value:"addFieldWithType:value:error:" error:66];
                    v45 = v42;

                    v90 = v44;
                    if (v44)
                    {
                      v46 = self->_builder;
                      [objectCopy phoneticGivenName];
                      v89 = v111[10] = v45;
                      v47 = [KVItemBuilder addFieldWithType:v46 value:"addFieldWithType:value:error:" error:67];
                      v48 = v45;

                      v88 = v47;
                      if (v47)
                      {
                        v49 = self->_builder;
                        [objectCopy phoneticMiddleName];
                        v87 = v111[9] = v48;
                        v50 = [KVItemBuilder addFieldWithType:v49 value:"addFieldWithType:value:error:" error:68];
                        v51 = v48;

                        v86 = v50;
                        if (v50)
                        {
                          v52 = self->_builder;
                          [objectCopy phoneticFamilyName];
                          v85 = v111[8] = v51;
                          v53 = [KVItemBuilder addFieldWithType:v52 value:"addFieldWithType:value:error:" error:69];
                          v54 = v51;

                          v84 = v53;
                          if (v53)
                          {
                            v55 = self->_builder;
                            [objectCopy phoneticOrganizationName];
                            v83 = v111[7] = v54;
                            v56 = [KVItemBuilder addFieldWithType:v55 value:"addFieldWithType:value:error:" error:70];
                            v57 = v54;

                            v82 = v56;
                            if (v56)
                            {
                              [objectCopy phoneNumbers];
                              v111[6] = v57;
                              v81 = v58 = 1;
                              v59 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:57 labelOnly:? excludeDefault:? error:?];
                              v60 = v57;

                              if (v59)
                              {
                                [objectCopy emailAddresses];
                                v80 = v111[5] = v60;
                                v61 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:58 labelOnly:? excludeDefault:? error:?];
                                v57 = v60;

                                error = errorCopy;
                                if (v61)
                                {
                                  [objectCopy postalAddresses];
                                  v79 = v111[4] = v57;
                                  v62 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:59 labelOnly:? excludeDefault:? error:?];
                                  v77 = v57;

                                  if (v62)
                                  {
                                    [objectCopy urlAddresses];
                                    v76 = v111[3] = v77;
                                    v63 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:60 labelOnly:? excludeDefault:? error:?];
                                    v57 = v77;

                                    if (v63)
                                    {
                                      [objectCopy socialProfiles];
                                      v78 = v111[2] = v57;
                                      v64 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:61 labelOnly:? excludeDefault:? error:?];
                                      v65 = v57;

                                      if (v64)
                                      {
                                        [objectCopy instantMessageAddresses];
                                        v75 = v111[1] = v65;
                                        v66 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:62 labelOnly:? excludeDefault:? error:?];
                                        v67 = v65;

                                        if (v66)
                                        {
                                          contactRelations = [objectCopy contactRelations];
                                          v111[0] = v67;
                                          v69 = [(KMMapper_CNContact *)self _addLabeledFieldsOfType:63 labeledValues:contactRelations labelOnly:0 excludeDefault:0 error:v111];
                                          v74 = v111[0];

                                          v58 = !v69;
                                          v67 = v74;
                                        }

                                        v65 = v67;
                                      }

                                      v57 = v65;
                                    }

                                    error = errorCopy;
                                  }

                                  else
                                  {
                                    v57 = v77;
                                  }
                                }
                              }

                              else
                              {
                                v57 = v60;
                                error = errorCopy;
                              }
                            }

                            else
                            {
                              v58 = 1;
                              error = errorCopy;
                            }

                            v54 = v57;
                          }

                          else
                          {
                            v58 = 1;
                            error = errorCopy;
                          }

                          v51 = v54;
                        }

                        else
                        {
                          v58 = 1;
                          error = errorCopy;
                        }

                        v48 = v51;
                      }

                      else
                      {
                        v58 = 1;
                        error = errorCopy;
                      }

                      v45 = v48;
                    }

                    else
                    {
                      v58 = 1;
                      error = errorCopy;
                    }

                    v42 = v45;
                  }

                  else
                  {
                    v58 = 1;
                    error = errorCopy;
                  }

                  v39 = v42;
                }

                else
                {
                  v58 = 1;
                  error = errorCopy;
                }

                v36 = v39;
              }

              else
              {
                v58 = 1;
                error = errorCopy;
              }

              v33 = v36;
            }

            else
            {
              v58 = 1;
              error = errorCopy;
            }

            v30 = v33;
          }

          else
          {
            v58 = 1;
            error = errorCopy;
          }

          v27 = v30;
        }

        else
        {
          v58 = 1;
          error = errorCopy;
        }

        v24 = v27;
      }

      else
      {
        v58 = 1;
        error = errorCopy;
      }

      v15 = v24;
    }

    else
    {
      v58 = 1;
      error = errorCopy;
    }

    if (!v58)
    {
      v72 = self->_builder;
      v110 = v15;
      v73 = [(KVItemBuilder *)v72 buildItemWithError:&v110];
      v19 = v110;

      if (v73)
      {
        v114[0] = v73;
        v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:1];
      }

      else
      {
        KMMapperSetBuilderError(error, v19);
        v70 = 0;
      }

      goto LABEL_63;
    }

    goto LABEL_61;
  }

LABEL_62:
  KMMapperSetBuilderError(error, v19);
  v70 = 0;
LABEL_63:

  return v70;
}

- (KMMapper_CNContact)init
{
  v8.receiver = self;
  v8.super_class = KMMapper_CNContact;
  v2 = [(KMMapper_CNContact *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = KVAdditionalFieldTypeToNumber();
    alternativeItemIdKey = v2->_alternativeItemIdKey;
    v2->_alternativeItemIdKey = v5;
  }

  return v2;
}

@end