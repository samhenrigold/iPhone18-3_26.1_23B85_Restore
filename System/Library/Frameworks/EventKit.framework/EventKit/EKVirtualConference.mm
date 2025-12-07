@interface EKVirtualConference
+ (void)virtualConferenceForRoomType:(id)type completion:(id)completion queue:(id)queue;
- (BOOL)isEqual:(id)equal;
- (EKVirtualConference)initWithTitle:(id)title joinMethods:(id)methods conferenceDetails:(id)details;
- (NSURL)firstPhoneNumber;
- (NSURL)urlWithAllowedScheme;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EKVirtualConference

- (EKVirtualConference)initWithTitle:(id)title joinMethods:(id)methods conferenceDetails:(id)details
{
  titleCopy = title;
  methodsCopy = methods;
  detailsCopy = details;
  v19.receiver = self;
  v19.super_class = EKVirtualConference;
  v11 = [(EKVirtualConference *)&v19 init];
  if (v11)
  {
    v12 = [methodsCopy copy];
    joinMethods = v11->_joinMethods;
    v11->_joinMethods = v12;

    v14 = [detailsCopy copy];
    conferenceDetails = v11->_conferenceDetails;
    v11->_conferenceDetails = v14;

    v16 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v16;
  }

  return v11;
}

+ (void)virtualConferenceForRoomType:(id)type completion:(id)completion queue:(id)queue
{
  v64 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  completionCopy = completion;
  queueCopy = queue;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke;
  aBlock[3] = &unk_1E77FFF98;
  v50 = v51;
  v9 = completionCopy;
  v49 = v9;
  v10 = _Block_copy(aBlock);
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__21;
  v46 = __Block_byref_object_dispose__21;
  v47 = 0;
  v11 = MEMORY[0x1E696ABD0];
  extensionBundleIdentifier = [typeCopy extensionBundleIdentifier];
  v13 = (v43 + 5);
  obj = v43[5];
  v14 = [v11 extensionWithIdentifier:extensionBundleIdentifier error:&obj];
  objc_storeStrong(v13, obj);

  if (v43[5] || !v14)
  {
    v25 = EKLogHandle;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      title = [typeCopy title];
      identifier = [typeCopy identifier];
      extensionBundleIdentifier2 = [typeCopy extensionBundleIdentifier];
      v30 = v43[5];
      *buf = 138413058;
      v57 = title;
      v58 = 2112;
      v59 = identifier;
      v60 = 2112;
      v61 = extensionBundleIdentifier2;
      v62 = 2112;
      v63 = v30;
      _os_log_error_impl(&dword_1A805E000, v25, OS_LOG_TYPE_ERROR, "Could not load extension for room type title: %@ identifier: %@ extensionIdentifier: %@, error = %@", buf, 0x2Au);
    }

    v10[2](v10, 0, v43[5]);
  }

  else
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_17;
    v37[3] = &unk_1E77FFFC0;
    v15 = typeCopy;
    v38 = v15;
    v16 = queueCopy;
    v39 = v16;
    v17 = v10;
    v40 = v17;
    [v14 setRequestCompletionBlock:v37];
    v18 = objc_alloc_init(MEMORY[0x1E696ABE0]);
    v55[0] = @"_EKVirutalConferenceRequestTypeJoinMethodsForRoomType";
    v54[0] = @"_EKVirtualConferenceRequestTypeKey";
    v54[1] = @"_EKVirtualConferenceRequestRoomTypeIdentifier";
    identifier2 = [v15 identifier];
    v55[1] = identifier2;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
    [v18 setUserInfo:v20];

    v53 = v18;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    v22 = (v43 + 5);
    v36 = v43[5];
    v23 = [v14 beginExtensionRequestWithOptions:1 inputItems:v21 error:&v36];
    objc_storeStrong(v22, v36);

    if (v43[5])
    {
      v24 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        v31 = v43[5];
        *buf = 138412802;
        v57 = v14;
        v58 = 2112;
        v59 = v23;
        v60 = 2112;
        v61 = v31;
        _os_log_error_impl(&dword_1A805E000, v24, OS_LOG_TYPE_ERROR, "Failed to get virtual conference join methods, extension = %@ request = %@ error = %@", buf, 0x20u);
      }

      v17[2](v17, 0, v43[5]);
    }

    else
    {
      v26 = dispatch_time(0, 20000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_30;
      block[3] = &unk_1E77FFFE8;
      v35 = &v42;
      v34 = v17;
      dispatch_after(v26, v16, block);
    }
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(v51, 8);
}

uint64_t __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v41 = a1;
  v63 = *MEMORY[0x1E69E9840];
  v42 = a2;
  v4 = a3;
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (!v5)
  {
    v46 = 0;
    v47 = 0;
    goto LABEL_35;
  }

  v6 = v5;
  v46 = 0;
  v47 = 0;
  v7 = *v53;
  do
  {
    v8 = 0;
    v44 = v6;
    do
    {
      if (*v53 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v52 + 1) + 8 * v8);
      v10 = [v9 userInfo];
      v11 = [v10 objectForKey:@"_EKVirtualConferenceTypeIdentifierKey"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = v13;
      if (v13 && [v13 isEqualToString:@"_EKVirtualConferenceInfoTypeIdentifierKey"])
      {
        v15 = [v9 userInfo];
        v16 = [v15 objectForKey:@"_EKVirtualConferenceInfoTitleKey"];

        v17 = [v9 userInfo];
        v18 = [v17 objectForKey:@"_EKVirtualConferenceInfoDetailsKey"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v16;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v18;
        }

        else
        {
          v21 = 0;
        }

        v22 = v47;
        v46 = v20;
        v47 = v21;
      }

      else
      {
        if (![v14 isEqualToString:@"_EKVirtualConferenceJoinMethodTypeIdentifierKey"])
        {
          goto LABEL_31;
        }

        v23 = v7;
        v24 = [v9 userInfo];
        v16 = [v24 objectForKey:@"_EKVirtualConferenceJoinMethodTitleKey"];

        v25 = [v9 userInfo];
        v18 = [v25 objectForKey:@"_EKVirtualConferenceJoinMethodURLKey"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v16;
        }

        else
        {
          v26 = 0;
        }

        v22 = v26;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v18;
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;
        if (v28)
        {
          v29 = [[EKVirtualConferenceJoinMethod alloc] initWithTitle:v22 url:v28];
          [v43 addObject:v29];
        }

        else
        {
          v30 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v57 = v9;
            v58 = 2112;
            v59 = v22;
            v60 = 2112;
            v61 = 0;
            _os_log_error_impl(&dword_1A805E000, v30, OS_LOG_TYPE_ERROR, "Skipping extension join method %@ because it has insufficient information. Title = %@ URL = %@", buf, 0x20u);
          }
        }

        v7 = v23;
        v6 = v44;
      }

LABEL_31:
      ++v8;
    }

    while (v6 != v8);
    v6 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  }

  while (v6);
LABEL_35:

  if ([v43 count])
  {
    v32 = v46;
    v31 = v47;
    v33 = [[EKVirtualConference alloc] initWithTitle:v46 joinMethods:v43 conferenceDetails:v47];
    v34 = 0;
    v35 = v41;
  }

  else
  {
    v34 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKVirtualConferenceError" code:0 userInfo:0];
    v36 = EKLogHandle;
    v35 = v41;
    v32 = v46;
    v31 = v47;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_17_cold_1(v41, v36);
    }

    v33 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_24;
  block[3] = &unk_1E77FEA98;
  v37 = *(v35 + 40);
  v38 = *(v35 + 48);
  v50 = v34;
  v51 = v38;
  v49 = v33;
  v39 = v34;
  v40 = v33;
  dispatch_async(v37, block);
}

uint64_t __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_30(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKVirtualConferenceError" code:1 userInfo:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

- (NSURL)firstPhoneNumber
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  joinMethods = [(EKVirtualConference *)self joinMethods];
  v3 = [joinMethods countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(joinMethods);
      }

      v7 = [*(*(&v9 + 1) + 8 * v6) URL];
      if ([v7 cal_hasSchemeTel])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [joinMethods countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  return v7;
}

- (NSURL)urlWithAllowedScheme
{
  joinMethods = [(EKVirtualConference *)self joinMethods];
  firstObject = [joinMethods firstObject];
  v4 = [firstObject URL];

  if (v4 && [MEMORY[0x1E6992F48] conferenceURLHasAllowedScheme:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      joinMethods = [(EKVirtualConference *)v5 joinMethods];
      joinMethods2 = [(EKVirtualConference *)self joinMethods];
      v8 = CalEqualObjects();

      conferenceDetails = [(EKVirtualConference *)v5 conferenceDetails];
      conferenceDetails2 = [(EKVirtualConference *)self conferenceDetails];
      v11 = CalEqualStrings();

      title = [(EKVirtualConference *)v5 title];
      title2 = [(EKVirtualConference *)self title];
      v14 = CalEqualStrings();

      source = [(EKVirtualConference *)v5 source];
      source2 = [(EKVirtualConference *)self source];
      v17 = 0;
      if (v8 && v11)
      {
        if (source == source2)
        {
          v17 = v14;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  joinMethods = self->_joinMethods;
  conferenceDetails = self->_conferenceDetails;
  title = self->_title;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_source];
  v7 = [v2 stringWithFormat:@"EKVirtualConference title: %@, conferenceDetails: %@, joinMethods: %@, source: %@", title, conferenceDetails, joinMethods, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [EKVirtualConference alloc];
  title = [(EKVirtualConference *)self title];
  joinMethods = [(EKVirtualConference *)self joinMethods];
  conferenceDetails = [(EKVirtualConference *)self conferenceDetails];
  v8 = [(EKVirtualConference *)v4 initWithTitle:title joinMethods:joinMethods conferenceDetails:conferenceDetails];

  [(EKVirtualConference *)v8 setSource:self->_source];
  return v8;
}

void __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_17_cold_1(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 extensionBundleIdentifier];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Extension %@ did not provide any join methods.", v5, 0xCu);
}

@end