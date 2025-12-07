@interface KMMapper_SAPerson
- (BOOL)_addLabeledFieldsForEmails:(id)emails error:(id *)error;
- (BOOL)_addLabeledFieldsForPhones:(id)phones error:(id *)error;
- (BOOL)_addLabeledFieldsForPostalAddresses:(id)addresses error:(id *)error;
- (BOOL)_addLabeledFieldsForRelatedNames:(id)names error:(id *)error;
- (KMMapper_SAPerson)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_SAPerson

- (BOOL)_addLabeledFieldsForRelatedNames:(id)names error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  namesCopy = names;
  v7 = [namesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(namesCopy);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        label = [v11 label];
        if ((_isDefaultLabel(label) & 1) == 0)
        {
          builder = self->_builder;
          name = [v11 name];
          v15 = [(KVItemBuilder *)builder addFieldWithType:63 label:label value:name error:error];

          if (!v15)
          {

            v16 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [namesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_12:

  return v16;
}

- (BOOL)_addLabeledFieldsForPostalAddresses:(id)addresses error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  addressesCopy = addresses;
  v7 = [addressesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(addressesCopy);
        }

        label = [*(*(&v15 + 1) + 8 * i) label];
        if ((_isDefaultLabel(label) & 1) == 0)
        {
          v12 = [(KVItemBuilder *)self->_builder addFieldWithType:59 label:label value:0 error:error];

          if (!v12)
          {

            v13 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [addressesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)_addLabeledFieldsForEmails:(id)emails error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  emailsCopy = emails;
  v7 = [emailsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(emailsCopy);
        }

        label = [*(*(&v15 + 1) + 8 * i) label];
        if ((_isDefaultLabel(label) & 1) == 0)
        {
          v12 = [(KVItemBuilder *)self->_builder addFieldWithType:58 label:label value:0 error:error];

          if (!v12)
          {

            v13 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [emailsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)_addLabeledFieldsForPhones:(id)phones error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  phonesCopy = phones;
  v7 = [phonesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(phonesCopy);
        }

        label = [*(*(&v15 + 1) + 8 * i) label];
        if ((_isDefaultLabel(label) & 1) == 0)
        {
          v12 = [(KVItemBuilder *)self->_builder addFieldWithType:57 label:label value:0 error:error];

          if (!v12)
          {

            v13 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [phonesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v85[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v9 = [fields objectForKey:self->_sharedUserIdKey];
  builder = self->_builder;
  internalGUID = [objectCopy internalGUID];
  v84 = 0;
  v12 = [(KVItemBuilder *)builder setItemType:2 itemId:internalGUID error:&v84];
  v13 = v84;
  if (v12)
  {
    v14 = self->_builder;
    [objectCopy prefix];
    v81 = v83[14] = v13;
    v15 = [KVItemBuilder addFieldWithType:v14 value:"addFieldWithType:value:error:" error:55];
    v16 = v13;

    if (v15)
    {
      v17 = self->_builder;
      [objectCopy firstName];
      v80 = v83[13] = v16;
      v18 = [KVItemBuilder addFieldWithType:v17 value:"addFieldWithType:value:error:" error:50];
      v19 = v16;

      v79 = v18;
      if (v18)
      {
        v20 = self->_builder;
        [objectCopy middleName];
        v78 = v83[12] = v19;
        v21 = [KVItemBuilder addFieldWithType:v20 value:"addFieldWithType:value:error:" error:51];
        v22 = v19;

        v77 = v21;
        if (v21)
        {
          v23 = self->_builder;
          [objectCopy lastName];
          v76 = v83[11] = v22;
          v24 = [KVItemBuilder addFieldWithType:v23 value:"addFieldWithType:value:error:" error:52];
          v25 = v22;

          v75 = v24;
          if (v24)
          {
            v26 = self->_builder;
            [objectCopy suffix];
            v74 = v83[10] = v25;
            v27 = [KVItemBuilder addFieldWithType:v26 value:"addFieldWithType:value:error:" error:56];
            v28 = v25;

            v73 = v27;
            if (v27)
            {
              v29 = self->_builder;
              [objectCopy nickName];
              v72 = v83[9] = v28;
              v30 = [KVItemBuilder addFieldWithType:v29 value:"addFieldWithType:value:error:" error:54];
              v31 = v28;

              v71 = v30;
              if (v30)
              {
                v32 = self->_builder;
                [objectCopy company];
                v70 = v83[8] = v31;
                v33 = [KVItemBuilder addFieldWithType:v32 value:"addFieldWithType:value:error:" error:64];
                v34 = v31;

                v69 = v33;
                if (v33)
                {
                  v35 = self->_builder;
                  [objectCopy firstNamePhonetic];
                  v68 = v83[7] = v34;
                  v36 = [KVItemBuilder addFieldWithType:v35 value:"addFieldWithType:value:error:" error:67];
                  v37 = v34;

                  v67 = v36;
                  if (v36)
                  {
                    v38 = self->_builder;
                    [objectCopy lastNamePhonetic];
                    v66 = v83[6] = v37;
                    v39 = [KVItemBuilder addFieldWithType:v38 value:"addFieldWithType:value:error:" error:69];
                    v40 = v37;

                    v65 = v39;
                    if (v39)
                    {
                      v41 = self->_builder;
                      [objectCopy companyPhonetic];
                      v64 = v83[5] = v40;
                      v42 = [KVItemBuilder addFieldWithType:v41 value:"addFieldWithType:value:error:" error:70];
                      v43 = v40;

                      v63 = v42;
                      if (v42)
                      {
                        [objectCopy phones];
                        v62 = v83[4] = v43;
                        v44 = [KMMapper_SAPerson _addLabeledFieldsForPhones:"_addLabeledFieldsForPhones:error:" error:?];
                        v45 = v43;

                        if (v44)
                        {
                          [objectCopy emails];
                          v61 = v83[3] = v45;
                          v46 = [KMMapper_SAPerson _addLabeledFieldsForEmails:"_addLabeledFieldsForEmails:error:" error:?];
                          v43 = v45;

                          if (v46)
                          {
                            [objectCopy addresses];
                            v60 = v83[2] = v43;
                            v47 = [KMMapper_SAPerson _addLabeledFieldsForPostalAddresses:"_addLabeledFieldsForPostalAddresses:error:" error:?];
                            v58 = v43;

                            errorCopy13 = error;
                            if (v47)
                            {
                              [objectCopy relatedNames];
                              v57 = v83[1] = v58;
                              v49 = [KMMapper_SAPerson _addLabeledFieldsForRelatedNames:"_addLabeledFieldsForRelatedNames:error:" error:?];
                              v43 = v58;

                              if (v49)
                              {
                                v50 = self->_builder;
                                v83[0] = v43;
                                v51 = [(KVItemBuilder *)v50 addFieldWithType:71 value:v9 error:v83];
                                v59 = v83[0];

                                v52 = v51 == 0;
                                v43 = v59;
                              }

                              else
                              {
                                v52 = 1;
                              }
                            }

                            else
                            {
                              v52 = 1;
                              v43 = v58;
                            }
                          }

                          else
                          {
                            errorCopy13 = error;
                            v52 = 1;
                          }
                        }

                        else
                        {
                          v43 = v45;
                          errorCopy13 = error;
                          v52 = 1;
                        }
                      }

                      else
                      {
                        errorCopy13 = error;
                        v52 = 1;
                      }

                      v40 = v43;
                    }

                    else
                    {
                      errorCopy13 = error;
                      v52 = 1;
                    }

                    v37 = v40;
                  }

                  else
                  {
                    errorCopy13 = error;
                    v52 = 1;
                  }

                  v34 = v37;
                }

                else
                {
                  errorCopy13 = error;
                  v52 = 1;
                }

                v31 = v34;
              }

              else
              {
                errorCopy13 = error;
                v52 = 1;
              }

              v28 = v31;
            }

            else
            {
              errorCopy13 = error;
              v52 = 1;
            }

            v25 = v28;
          }

          else
          {
            errorCopy13 = error;
            v52 = 1;
          }

          v22 = v25;
        }

        else
        {
          errorCopy13 = error;
          v52 = 1;
        }

        v19 = v22;
      }

      else
      {
        errorCopy13 = error;
        v52 = 1;
      }

      v16 = v19;
    }

    else
    {
      errorCopy13 = error;
      v52 = 1;
    }

    if (!v52)
    {
      v54 = self->_builder;
      v82 = v16;
      v55 = [(KVItemBuilder *)v54 buildItemWithError:&v82];
      v13 = v82;

      if (v55)
      {
        v85[0] = v55;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:1];
      }

      else
      {
        KMMapperSetBuilderError(errorCopy13, v13);
        v53 = 0;
      }

      goto LABEL_52;
    }

    v13 = v16;
    error = errorCopy13;
  }

  else
  {
  }

  KMMapperSetBuilderError(error, v13);
  v53 = 0;
LABEL_52:

  return v53;
}

- (KMMapper_SAPerson)init
{
  v8.receiver = self;
  v8.super_class = KMMapper_SAPerson;
  v2 = [(KMMapper_SAPerson *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = KVFieldTypeToNumber();
    sharedUserIdKey = v2->_sharedUserIdKey;
    v2->_sharedUserIdKey = v5;
  }

  return v2;
}

@end