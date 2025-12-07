@interface BMPeopleSuggesterSuggestLessFeedback
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPeopleSuggesterSuggestLessFeedback)initWithIdentifier:(id)identifier bundleId:(id)id derivedIdentifier:(id)derivedIdentifier conversationIdentifier:(id)conversationIdentifier handle:(id)handle contactIdentifier:(id)contactIdentifier itemIdentifier:(id)itemIdentifier groupIdentifier:(id)self0 deviceIdentifier:(id)self1 userIdentifier:(id)self2;
- (BMPeopleSuggesterSuggestLessFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPeopleSuggesterSuggestLessFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMPeopleSuggesterSuggestLessFeedback *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMPeopleSuggesterSuggestLessFeedback *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_37;
      }
    }

    bundleId = [(BMPeopleSuggesterSuggestLessFeedback *)self bundleId];
    bundleId2 = [v5 bundleId];
    v15 = bundleId2;
    if (bundleId == bundleId2)
    {
    }

    else
    {
      bundleId3 = [(BMPeopleSuggesterSuggestLessFeedback *)self bundleId];
      bundleId4 = [v5 bundleId];
      v18 = [bundleId3 isEqual:bundleId4];

      if (!v18)
      {
        goto LABEL_37;
      }
    }

    derivedIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self derivedIdentifier];
    derivedIdentifier2 = [v5 derivedIdentifier];
    v21 = derivedIdentifier2;
    if (derivedIdentifier == derivedIdentifier2)
    {
    }

    else
    {
      derivedIdentifier3 = [(BMPeopleSuggesterSuggestLessFeedback *)self derivedIdentifier];
      derivedIdentifier4 = [v5 derivedIdentifier];
      v24 = [derivedIdentifier3 isEqual:derivedIdentifier4];

      if (!v24)
      {
        goto LABEL_37;
      }
    }

    conversationIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self conversationIdentifier];
    conversationIdentifier2 = [v5 conversationIdentifier];
    v27 = conversationIdentifier2;
    if (conversationIdentifier == conversationIdentifier2)
    {
    }

    else
    {
      conversationIdentifier3 = [(BMPeopleSuggesterSuggestLessFeedback *)self conversationIdentifier];
      conversationIdentifier4 = [v5 conversationIdentifier];
      v30 = [conversationIdentifier3 isEqual:conversationIdentifier4];

      if (!v30)
      {
        goto LABEL_37;
      }
    }

    handle = [(BMPeopleSuggesterSuggestLessFeedback *)self handle];
    handle2 = [v5 handle];
    v33 = handle2;
    if (handle == handle2)
    {
    }

    else
    {
      handle3 = [(BMPeopleSuggesterSuggestLessFeedback *)self handle];
      handle4 = [v5 handle];
      v36 = [handle3 isEqual:handle4];

      if (!v36)
      {
        goto LABEL_37;
      }
    }

    contactIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self contactIdentifier];
    contactIdentifier2 = [v5 contactIdentifier];
    v39 = contactIdentifier2;
    if (contactIdentifier == contactIdentifier2)
    {
    }

    else
    {
      contactIdentifier3 = [(BMPeopleSuggesterSuggestLessFeedback *)self contactIdentifier];
      contactIdentifier4 = [v5 contactIdentifier];
      v42 = [contactIdentifier3 isEqual:contactIdentifier4];

      if (!v42)
      {
        goto LABEL_37;
      }
    }

    itemIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self itemIdentifier];
    itemIdentifier2 = [v5 itemIdentifier];
    v45 = itemIdentifier2;
    if (itemIdentifier == itemIdentifier2)
    {
    }

    else
    {
      itemIdentifier3 = [(BMPeopleSuggesterSuggestLessFeedback *)self itemIdentifier];
      itemIdentifier4 = [v5 itemIdentifier];
      v48 = [itemIdentifier3 isEqual:itemIdentifier4];

      if (!v48)
      {
        goto LABEL_37;
      }
    }

    groupIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self groupIdentifier];
    groupIdentifier2 = [v5 groupIdentifier];
    v51 = groupIdentifier2;
    if (groupIdentifier == groupIdentifier2)
    {
    }

    else
    {
      groupIdentifier3 = [(BMPeopleSuggesterSuggestLessFeedback *)self groupIdentifier];
      groupIdentifier4 = [v5 groupIdentifier];
      v54 = [groupIdentifier3 isEqual:groupIdentifier4];

      if (!v54)
      {
        goto LABEL_37;
      }
    }

    deviceIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self deviceIdentifier];
    deviceIdentifier2 = [v5 deviceIdentifier];
    v57 = deviceIdentifier2;
    if (deviceIdentifier == deviceIdentifier2)
    {
    }

    else
    {
      deviceIdentifier3 = [(BMPeopleSuggesterSuggestLessFeedback *)self deviceIdentifier];
      deviceIdentifier4 = [v5 deviceIdentifier];
      v60 = [deviceIdentifier3 isEqual:deviceIdentifier4];

      if (!v60)
      {
LABEL_37:
        v12 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    userIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self userIdentifier];
    userIdentifier2 = [v5 userIdentifier];
    if (userIdentifier == userIdentifier2)
    {
      v12 = 1;
    }

    else
    {
      userIdentifier3 = [(BMPeopleSuggesterSuggestLessFeedback *)self userIdentifier];
      userIdentifier4 = [v5 userIdentifier];
      v12 = [userIdentifier3 isEqual:userIdentifier4];
    }

    goto LABEL_38;
  }

  v12 = 0;
LABEL_39:

  return v12;
}

- (id)jsonDictionary
{
  v37[10] = *MEMORY[0x1E69E9840];
  identifier = [(BMPeopleSuggesterSuggestLessFeedback *)self identifier];
  bundleId = [(BMPeopleSuggesterSuggestLessFeedback *)self bundleId];
  derivedIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self derivedIdentifier];
  conversationIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self conversationIdentifier];
  handle = [(BMPeopleSuggesterSuggestLessFeedback *)self handle];
  contactIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self contactIdentifier];
  itemIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self itemIdentifier];
  groupIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self groupIdentifier];
  deviceIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self deviceIdentifier];
  userIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self userIdentifier];
  v36[0] = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v37[0] = null;
  v36[1] = @"bundleId";
  null2 = bundleId;
  if (!bundleId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v37[1] = null2;
  v36[2] = @"derivedIdentifier";
  null3 = derivedIdentifier;
  if (!derivedIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = identifier;
  v27 = null3;
  v37[2] = null3;
  v36[3] = @"conversationIdentifier";
  null4 = conversationIdentifier;
  if (!conversationIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = bundleId;
  v26 = null4;
  v37[3] = null4;
  v36[4] = @"handle";
  null5 = handle;
  if (!handle)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = derivedIdentifier;
  v25 = null5;
  v37[4] = null5;
  v36[5] = @"contactIdentifier";
  null6 = contactIdentifier;
  if (!contactIdentifier)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = conversationIdentifier;
  v37[5] = null6;
  v36[6] = @"itemIdentifier";
  null7 = itemIdentifier;
  if (!itemIdentifier)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = handle;
  v37[6] = null7;
  v36[7] = @"groupIdentifier";
  null8 = groupIdentifier;
  if (!groupIdentifier)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = contactIdentifier;
  v37[7] = null8;
  v36[8] = @"deviceIdentifier";
  null9 = deviceIdentifier;
  if (!deviceIdentifier)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v37[8] = null9;
  v36[9] = @"userIdentifier";
  null10 = userIdentifier;
  if (!userIdentifier)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v37[9] = null10;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:10];
  if (userIdentifier)
  {
    if (deviceIdentifier)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (deviceIdentifier)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  if (!groupIdentifier)
  {
  }

  if (!itemIdentifier)
  {
  }

  if (!v21)
  {
  }

  if (!v19)
  {
  }

  if (!v31)
  {
  }

  if (v32)
  {
    if (v33)
    {
      goto LABEL_35;
    }

LABEL_42:

    if (v34)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  if (!v33)
  {
    goto LABEL_42;
  }

LABEL_35:
  if (v34)
  {
    goto LABEL_36;
  }

LABEL_43:

LABEL_36:

  return v30;
}

- (BMPeopleSuggesterSuggestLessFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v119[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v9 = 0;
          v22 = 0;
          goto LABEL_59;
        }

        errorCopy = error;
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v116 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleId"];
        v117 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
        v31 = v27;
        v10 = v30;
        v32 = [v31 initWithDomain:v28 code:2 userInfo:v30];
        v9 = 0;
        v22 = 0;
        *errorCopy = v32;
        goto LABEL_58;
      }

      errorCopy3 = error;
      v97 = v8;
      v9 = v8;
    }

    else
    {
      v97 = v8;
      errorCopy3 = error;
      v9 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"derivedIdentifier"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy3)
        {
          v29 = 0;
          v22 = 0;
          v8 = v97;
          goto LABEL_58;
        }

        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = v9;
        v43 = *MEMORY[0x1E698F240];
        v114 = *MEMORY[0x1E696A578];
        v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"derivedIdentifier"];
        v115 = v44;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v45 = v41;
        v11 = v44;
        v46 = v43;
        v9 = v42;
        v29 = 0;
        v22 = 0;
        *errorCopy3 = [v45 initWithDomain:v46 code:2 userInfo:v38];
        v8 = v97;
LABEL_57:

LABEL_58:
        goto LABEL_59;
      }

      v96 = v10;
    }

    else
    {
      v96 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"conversationIdentifier"];
    v93 = v11;
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v11 = 0;
            v22 = 0;
            v29 = v96;
            v8 = v97;
            v38 = v93;
            goto LABEL_57;
          }

          v83 = v10;
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = v9;
          v49 = *MEMORY[0x1E698F240];
          v112 = *MEMORY[0x1E696A578];
          v38 = v11;
          v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationIdentifier"];
          v113 = v95;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
          v51 = v47;
          v10 = v83;
          v52 = v49;
          v9 = v48;
          v92 = v50;
          v11 = 0;
          v22 = 0;
          *errorCopy3 = [v51 initWithDomain:v52 code:2 userInfo:?];
          v29 = v96;
          v8 = v97;
          goto LABEL_56;
        }

        v11 = v11;
      }
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"handle"];
    v91 = v6;
    v92 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy3)
        {
          v95 = 0;
          v22 = 0;
          v29 = v96;
          v8 = v97;
          v38 = v93;
          goto LABEL_56;
        }

        v86 = v11;
        v53 = v10;
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = v9;
        v56 = *MEMORY[0x1E698F240];
        v110 = *MEMORY[0x1E696A578];
        v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"handle"];
        v111 = v88;
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
        v58 = v54;
        v10 = v53;
        v11 = v86;
        v59 = v56;
        v9 = v55;
        v90 = v57;
        v95 = 0;
        v22 = 0;
        *errorCopy3 = [v58 initWithDomain:v59 code:2 userInfo:?];
        v29 = v96;
        v8 = v97;
        v38 = v93;
LABEL_55:

LABEL_56:
        goto LABEL_57;
      }

      v95 = v13;
    }

    else
    {
      v95 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"contactIdentifier"];
    v90 = v14;
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v11;
        v16 = v7;
        v14 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v88 = 0;
            v22 = 0;
            v29 = v96;
            v8 = v97;
            v38 = v93;
            goto LABEL_55;
          }

          v87 = v11;
          v60 = v10;
          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = v9;
          v63 = *MEMORY[0x1E698F240];
          v108 = *MEMORY[0x1E696A578];
          v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactIdentifier"];
          v109 = v89;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
          v64 = v61;
          v10 = v60;
          v11 = v87;
          v65 = v63;
          v9 = v62;
          v88 = 0;
          v22 = 0;
          *errorCopy3 = [v64 initWithDomain:v65 code:2 userInfo:v39];
          v8 = v97;
          v38 = v93;
          goto LABEL_54;
        }

        v15 = v11;
        v16 = v7;
        v14 = v14;
      }
    }

    else
    {
      v15 = v11;
      v16 = v7;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
    v82 = v10;
    v88 = v14;
    v80 = v23;
    if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy3)
        {
          v89 = 0;
          v22 = 0;
          v8 = v97;
          v38 = v93;
          v39 = v80;
          v7 = v16;
          v11 = v15;
          v6 = v91;
          goto LABEL_54;
        }

        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = v9;
        v68 = *MEMORY[0x1E698F240];
        v106 = *MEMORY[0x1E696A578];
        v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemIdentifier"];
        v107 = v84;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        v69 = v68;
        v9 = v67;
        v89 = 0;
        v22 = 0;
        *errorCopy3 = [v66 initWithDomain:v69 code:2 userInfo:v25];
        v8 = v97;
        v7 = v16;
        v11 = v15;
        v6 = v91;
LABEL_53:

        v10 = v82;
        v38 = v93;
        v39 = v80;
LABEL_54:

        v29 = v96;
        goto LABEL_55;
      }

      v89 = v24;
    }

    else
    {
      v89 = 0;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"groupIdentifier"];
    v7 = v16;
    v81 = v9;
    if (v25)
    {
      objc_opt_class();
      v11 = v15;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v6 = v91;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v84 = 0;
            v22 = 0;
            v8 = v97;
            goto LABEL_53;
          }

          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v71 = *MEMORY[0x1E698F240];
          v104 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"groupIdentifier"];
          v105 = v35;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
          v72 = [v70 initWithDomain:v71 code:2 userInfo:v33];
          v84 = 0;
          v22 = 0;
          *errorCopy3 = v72;
          goto LABEL_95;
        }

        v84 = v25;
LABEL_44:
        v33 = [dictionaryCopy objectForKeyedSubscript:@"deviceIdentifier"];
        v79 = v7;
        v85 = v11;
        if (!v33 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          selfCopy3 = self;
          v35 = 0;
          goto LABEL_47;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          selfCopy3 = self;
          v35 = v33;
LABEL_47:
          v36 = [dictionaryCopy objectForKeyedSubscript:@"userIdentifier"];
          if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (errorCopy3)
              {
                v99 = objc_alloc(MEMORY[0x1E696ABC0]);
                v78 = *MEMORY[0x1E698F240];
                v100 = *MEMORY[0x1E696A578];
                v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userIdentifier"];
                v101 = v75;
                v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
                *errorCopy3 = [v99 initWithDomain:v78 code:2 userInfo:v76];
              }

              v37 = 0;
              v22 = 0;
              goto LABEL_51;
            }

            v37 = v36;
          }

          else
          {
            v37 = 0;
          }

          v22 = [(BMPeopleSuggesterSuggestLessFeedback *)selfCopy3 initWithIdentifier:v79 bundleId:v81 derivedIdentifier:v96 conversationIdentifier:v85 handle:v95 contactIdentifier:v14 itemIdentifier:v89 groupIdentifier:v84 deviceIdentifier:v35 userIdentifier:v37];
          selfCopy3 = v22;
LABEL_51:
          v8 = v97;
          self = selfCopy3;

          v7 = v79;
          v11 = v85;
LABEL_52:

          v9 = v81;
          goto LABEL_53;
        }

        if (errorCopy3)
        {
          selfCopy3 = self;
          v77 = objc_alloc(MEMORY[0x1E696ABC0]);
          v73 = *MEMORY[0x1E698F240];
          v102 = *MEMORY[0x1E696A578];
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceIdentifier"];
          v103 = v37;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v74 = [v77 initWithDomain:v73 code:2 userInfo:v36];
          v35 = 0;
          v22 = 0;
          *errorCopy3 = v74;
          goto LABEL_51;
        }

        v35 = 0;
        v22 = 0;
LABEL_95:
        v8 = v97;
        goto LABEL_52;
      }

      v84 = 0;
    }

    else
    {
      v84 = 0;
      v11 = v15;
    }

    v6 = v91;
    goto LABEL_44;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v7 = 0;
    v22 = 0;
    goto LABEL_60;
  }

  errorCopy4 = error;
  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v118 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
  v119[0] = v20;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:&v118 count:1];
  v21 = v19;
  v9 = v20;
  v7 = 0;
  v22 = 0;
  *errorCopy4 = [v18 initWithDomain:v21 code:2 userInfo:v8];
LABEL_59:

LABEL_60:
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPeopleSuggesterSuggestLessFeedback *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_derivedIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_conversationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_handle)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_userIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMPeopleSuggesterSuggestLessFeedback;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = (v14 >> 3) - 1;
      if (v15 >= 0xA)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E9D150[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMPeopleSuggesterSuggestLessFeedback *)self identifier];
  bundleId = [(BMPeopleSuggesterSuggestLessFeedback *)self bundleId];
  derivedIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self derivedIdentifier];
  conversationIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self conversationIdentifier];
  handle = [(BMPeopleSuggesterSuggestLessFeedback *)self handle];
  contactIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self contactIdentifier];
  itemIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self itemIdentifier];
  groupIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self groupIdentifier];
  deviceIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self deviceIdentifier];
  userIdentifier = [(BMPeopleSuggesterSuggestLessFeedback *)self userIdentifier];
  v12 = [v15 initWithFormat:@"BMPeopleSuggesterSuggestLessFeedback with identifier: %@, bundleId: %@, derivedIdentifier: %@, conversationIdentifier: %@, handle: %@, contactIdentifier: %@, itemIdentifier: %@, groupIdentifier: %@, deviceIdentifier: %@, userIdentifier: %@", identifier, bundleId, derivedIdentifier, conversationIdentifier, handle, contactIdentifier, itemIdentifier, groupIdentifier, deviceIdentifier, userIdentifier];

  return v12;
}

- (BMPeopleSuggesterSuggestLessFeedback)initWithIdentifier:(id)identifier bundleId:(id)id derivedIdentifier:(id)derivedIdentifier conversationIdentifier:(id)conversationIdentifier handle:(id)handle contactIdentifier:(id)contactIdentifier itemIdentifier:(id)itemIdentifier groupIdentifier:(id)self0 deviceIdentifier:(id)self1 userIdentifier:(id)self2
{
  identifierCopy = identifier;
  idCopy = id;
  derivedIdentifierCopy = derivedIdentifier;
  conversationIdentifierCopy = conversationIdentifier;
  conversationIdentifierCopy2 = conversationIdentifier;
  handleCopy = handle;
  handleCopy2 = handle;
  contactIdentifierCopy = contactIdentifier;
  itemIdentifierCopy = itemIdentifier;
  groupIdentifierCopy = groupIdentifier;
  deviceIdentifierCopy = deviceIdentifier;
  userIdentifierCopy = userIdentifier;
  v33.receiver = self;
  v33.super_class = BMPeopleSuggesterSuggestLessFeedback;
  v22 = [(BMEventBase *)&v33 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_identifier, identifier);
    objc_storeStrong(&v22->_bundleId, id);
    objc_storeStrong(&v22->_derivedIdentifier, derivedIdentifier);
    objc_storeStrong(&v22->_conversationIdentifier, conversationIdentifierCopy);
    objc_storeStrong(&v22->_handle, handleCopy);
    objc_storeStrong(&v22->_contactIdentifier, contactIdentifier);
    objc_storeStrong(&v22->_itemIdentifier, itemIdentifier);
    objc_storeStrong(&v22->_groupIdentifier, groupIdentifier);
    objc_storeStrong(&v22->_deviceIdentifier, deviceIdentifier);
    objc_storeStrong(&v22->_userIdentifier, userIdentifier);
  }

  return v22;
}

+ (id)protoFields
{
  v14[10] = *MEMORY[0x1E69E9840];
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v14[0] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleId" number:2 type:13 subMessageClass:0];
  v14[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"derivedIdentifier" number:3 type:13 subMessageClass:0];
  v14[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationIdentifier" number:4 type:13 subMessageClass:0];
  v14[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handle" number:5 type:13 subMessageClass:0];
  v14[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactIdentifier" number:6 type:13 subMessageClass:0];
  v14[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemIdentifier" number:7 type:13 subMessageClass:0];
  v14[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"groupIdentifier" number:8 type:13 subMessageClass:0];
  v14[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceIdentifier" number:9 type:13 subMessageClass:0];
  v14[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userIdentifier" number:10 type:13 subMessageClass:0];
  v14[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:10];

  return v11;
}

+ (id)columns
{
  v14[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"derivedIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"handle" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactIdentifier" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemIdentifier" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"groupIdentifier" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceIdentifier" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userIdentifier" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v14[9] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:10];

  return v13;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMPeopleSuggesterSuggestLessFeedback alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end