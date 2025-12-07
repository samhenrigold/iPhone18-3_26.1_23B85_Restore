@interface WFContextualActionRunRequest
- (WFContextualActionRunRequest)initWithAction:(id)action actionContext:(id)context;
- (WFContextualActionRunRequest)initWithCoder:(id)coder;
- (id)queueIdentifier;
- (void)encodeWithCoder:(id)coder;
- (void)getInputWithCompletionHandler:(id)handler;
@end

@implementation WFContextualActionRunRequest

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFContextualActionRunRequest;
  coderCopy = coder;
  [(WFWorkflowRunRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFContextualActionRunRequest *)self actionContext:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"actionContext"];

  action = [(WFContextualActionRunRequest *)self action];
  [coderCopy encodeObject:action forKey:@"action"];
}

- (WFContextualActionRunRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"actionContext"];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  if (v6 && (v11.receiver = self, v11.super_class = WFContextualActionRunRequest, v8 = [(WFWorkflowRunRequest *)&v11 initWithCoder:coderCopy], (self = v8) != 0))
  {
    objc_storeStrong(&v8->_action, v7);
    objc_storeStrong(&self->_actionContext, v6);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)queueIdentifier
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  actionContext = [(WFContextualActionRunRequest *)self actionContext];
  files = [actionContext files];

  v6 = [files countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(files);
        }

        fileURL = [*(*(&v14 + 1) + 8 * i) fileURL];
        absoluteString = [fileURL absoluteString];
        [v3 addObject:absoluteString];
      }

      v7 = [files countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v3 copy];

  return v12;
}

- (void)getInputWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  input = [(WFContextualActionRunRequest *)self input];

  if (input)
  {
    input2 = [(WFContextualActionRunRequest *)self input];
    handlerCopy[2](handlerCopy, input2, 0);
  }

  else
  {
    action = [(WFContextualActionRunRequest *)self action];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__WFContextualActionRunRequest_getInputWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E7B00638;
    v8[4] = self;
    v9 = action;
    v10 = handlerCopy;
    input2 = action;
    [input2 getInputWithCompletionHandler:v8];
  }
}

void __62__WFContextualActionRunRequest_getInputWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v41 = v5;
  if (v5)
  {
    [*(a1 + 32) setInput:v5];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v40 = v6;
    if (v6)
    {
      v8 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        *buf = 136315650;
        *&buf[4] = "[WFContextualActionRunRequest getInputWithCompletionHandler:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v9;
        *&buf[22] = 2112;
        v59 = v40;
        _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_ERROR, "%s %@ tried to self-populate its input, but it failed: %@", buf, 0x20u);
      }
    }

    v10 = [*(a1 + 32) actionContext];
    v11 = [v10 files];

    v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v12)
    {
      v13 = *v49;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v49 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v48 + 1) + 8 * i);
          v16 = [v15 type];

          if (v16)
          {
            v17 = [v15 type];
            v16 = [WFFileType typeWithUTType:v17];
          }

          v52 = 0;
          v53 = &v52;
          v54 = 0x2050000000;
          v18 = getWFFileRepresentationClass_softClass;
          v55 = getWFFileRepresentationClass_softClass;
          if (!getWFFileRepresentationClass_softClass)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getWFFileRepresentationClass_block_invoke;
            v59 = &unk_1E7B02C60;
            v60 = &v52;
            __getWFFileRepresentationClass_block_invoke(buf);
            v18 = v53[3];
          }

          v19 = v18;
          _Block_object_dispose(&v52, 8);
          v20 = [v15 fileURL];
          v21 = [v18 fileWithURL:v20 options:29 ofType:v16];

          if (!v21)
          {
            v36 = getWFVoiceShortcutClientLogObject();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
            {
              v37 = [v15 fileURL];
              *buf = 136315650;
              *&buf[4] = "[WFContextualActionRunRequest getInputWithCompletionHandler:]_block_invoke";
              *&buf[12] = 2112;
              *&buf[14] = v15;
              *&buf[22] = 2112;
              v59 = v37;
              _os_log_impl(&dword_1B1DE3000, v36, OS_LOG_TYPE_FAULT, "%s Couldn't represent contextual action file: %@ (%@)", buf, 0x20u);
            }

            v38 = *(a1 + 48);
            v39 = [*(a1 + 32) unableToDecodeInputError];
            (*(v38 + 16))(v38, 0, v39);

            v35 = obj;
            goto LABEL_37;
          }

          [v43 addObject:v21];
        }

        v12 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v52 = 0;
    v53 = &v52;
    v54 = 0x2050000000;
    v22 = getWFContentCollectionClass_softClass;
    v55 = getWFContentCollectionClass_softClass;
    if (!getWFContentCollectionClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getWFContentCollectionClass_block_invoke;
      v59 = &unk_1E7B02C60;
      v60 = &v52;
      __getWFContentCollectionClass_block_invoke(buf);
      v22 = v53[3];
    }

    v23 = v22;
    _Block_object_dispose(&v52, 8);
    v24 = objc_alloc_init(v22);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = v43;
    v26 = [v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v26)
    {
      v27 = *v45;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v44 + 1) + 8 * j);
          v52 = 0;
          v53 = &v52;
          v54 = 0x2050000000;
          v30 = getWFContentLocationClass_softClass;
          v55 = getWFContentLocationClass_softClass;
          if (!getWFContentLocationClass_softClass)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getWFContentLocationClass_block_invoke;
            v59 = &unk_1E7B02C60;
            v60 = &v52;
            __getWFContentLocationClass_block_invoke(buf);
            v30 = v53[3];
          }

          v31 = v30;
          _Block_object_dispose(&v52, 8);
          v32 = [v30 contentLocationForFile:v29];
          if (v32)
          {
            [v24 addFile:v29 origin:v32 disclosureLevel:1];
          }

          else
          {
            [v24 addFile:v29];
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v26);
    }

    v33 = *(a1 + 32);
    v34 = *(v33 + 152);
    *(v33 + 152) = v24;
    v35 = v24;

    (*(*(a1 + 48) + 16))();
LABEL_37:

    v7 = v40;
  }
}

- (WFContextualActionRunRequest)initWithAction:(id)action actionContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionRunRequest.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"actionContext"}];
  }

  if ([actionCopy showsUserInterfaceWhenRunning])
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  if ([contextCopy surface] == 5 || objc_msgSend(contextCopy, "surface") == 16 || objc_msgSend(contextCopy, "surface") == 18)
  {
    v10 = 1;
  }

  v19.receiver = self;
  v19.super_class = WFContextualActionRunRequest;
  v11 = [(WFWorkflowRunRequest *)&v19 initWithInput:0 presentationMode:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_action, action);
    objc_storeStrong(&v12->_actionContext, context);
    surface = [contextCopy surface];
    if (surface > 0x12)
    {
      v14 = 0;
    }

    else
    {
      v14 = *off_1E7B00670[surface];
    }

    v15 = [contextCopy surface] == 5 || objc_msgSend(contextCopy, "surface") == 6 || objc_msgSend(contextCopy, "surface") == 16 || objc_msgSend(contextCopy, "surface") == 10 || objc_msgSend(contextCopy, "surface") == 11 || objc_msgSend(contextCopy, "surface") == 15 || objc_msgSend(contextCopy, "surface") == 12 || objc_msgSend(contextCopy, "surface") == 13 || objc_msgSend(contextCopy, "surface") == 18;
    [(WFWorkflowRunRequest *)v12 setRunSource:v14];
    [(WFWorkflowRunRequest *)v12 setAllowsDialogNotifications:v15];
    [(WFWorkflowRunRequest *)v12 setOutputBehavior:2];
    v16 = v12;
  }

  return v12;
}

@end