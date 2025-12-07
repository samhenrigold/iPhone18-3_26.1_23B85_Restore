@interface WFObservableObjectResult
+ (id)getResultWithDescriptor:(id)descriptor valueType:(Class)type glyphSize:(CGSize)size error:(id *)error;
+ (void)getResultWithDescriptor:(id)descriptor valueType:(Class)type glyphSize:(CGSize)size completionHandler:(id)handler;
- (WFObservableObjectResult)initWithValueType:(Class)type glyphSize:(CGSize)size initialValue:(id)value descriptor:(id)descriptor;
- (id)description;
- (void)handleChangeNotification:(id)notification;
@end

@implementation WFObservableObjectResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromClass([(WFObservableResult *)self valueType]);
  value = [(WFObservableObjectResult *)self value];
  descriptor = [(WFObservableObjectResult *)self descriptor];
  v9 = [v3 stringWithFormat:@"<%@: %p, valueType: %@, value: %@, descriptor: %@>", v5, self, v6, value, descriptor];

  return v9;
}

- (void)handleChangeNotification:(id)notification
{
  notificationCopy = notification;
  updatedDescriptors = [notificationCopy updatedDescriptors];
  descriptor = [(WFObservableObjectResult *)self descriptor];
  if ([updatedDescriptors containsObject:descriptor])
  {

LABEL_4:
    serialQueue = [(WFObservableResult *)self serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__WFObservableObjectResult_handleChangeNotification___block_invoke;
    block[3] = &unk_1E7B02158;
    block[4] = self;
    dispatch_sync(serialQueue, block);

    goto LABEL_5;
  }

  deletedDescriptors = [notificationCopy deletedDescriptors];
  descriptor2 = [(WFObservableObjectResult *)self descriptor];
  v9 = [deletedDescriptors containsObject:descriptor2];

  if (v9)
  {
    goto LABEL_4;
  }

LABEL_5:
}

void __53__WFObservableObjectResult_handleChangeNotification___block_invoke(uint64_t a1)
{
  v2 = +[VCVoiceShortcutClient standardClient];
  v3 = [*(a1 + 32) descriptor];
  v4 = [*(a1 + 32) valueType];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__WFObservableObjectResult_handleChangeNotification___block_invoke_2;
  v5[3] = &unk_1E7B01920;
  v5[4] = *(a1 + 32);
  [v2 getValueForDescriptor:v3 resultClass:v4 completion:v5];
}

void __53__WFObservableObjectResult_handleChangeNotification___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5)
    {
      v14[0] = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    [*(a1 + 32) glyphSize];
    v9 = v8;
    v11 = v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__WFObservableObjectResult_handleChangeNotification___block_invoke_3;
    v12[3] = &unk_1E7B02180;
    v12[4] = *(a1 + 32);
    v13 = v5;
    [WFObservableResult drawGlyphsIntoWorkflowsIfNecessary:v7 glyphSize:v12 completion:v9, v11];
    if (v5)
    {
    }
  }
}

void __53__WFObservableObjectResult_handleChangeNotification___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) serialQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__WFObservableObjectResult_handleChangeNotification___block_invoke_4;
  v4[3] = &unk_1E7B02180;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __53__WFObservableObjectResult_handleChangeNotification___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 allObjects];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [*(a1 + 32) observerNotificationQueue];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __53__WFObservableObjectResult_handleChangeNotification___block_invoke_5;
        v11[3] = &unk_1E7B02180;
        v10 = *(a1 + 32);
        v11[4] = v8;
        v11[5] = v10;
        dispatch_async(v9, v11);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (WFObservableObjectResult)initWithValueType:(Class)type glyphSize:(CGSize)size initialValue:(id)value descriptor:(id)descriptor
{
  height = size.height;
  width = size.width;
  valueCopy = value;
  descriptorCopy = descriptor;
  v18.receiver = self;
  v18.super_class = WFObservableObjectResult;
  height = [(WFObservableResult *)&v18 initWithValueType:type glyphSize:width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_value, value);
    objc_storeStrong(&v15->_descriptor, descriptor);
    v16 = v15;
  }

  return v15;
}

+ (id)getResultWithDescriptor:(id)descriptor valueType:(Class)type glyphSize:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  v20[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v12 = +[VCVoiceShortcutClient standardClient];
  v19 = 0;
  v13 = [v12 getValueForDescriptor:descriptorCopy resultClass:type error:&v19];
  v14 = v19;

  if (v13)
  {
    v20[0] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [self drawGlyphsIntoWorkflowsIfNecessary:v15 glyphSize:{width, height}];

    height = [[WFObservableObjectResult alloc] initWithValueType:type glyphSize:v13 initialValue:descriptorCopy descriptor:width, height];
  }

  else if (error)
  {
    v17 = v14;
    height = 0;
    *error = v14;
  }

  else
  {
    height = 0;
  }

  return height;
}

+ (void)getResultWithDescriptor:(id)descriptor valueType:(Class)type glyphSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v13 = +[VCVoiceShortcutClient standardClient];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__WFObservableObjectResult_getResultWithDescriptor_valueType_glyphSize_completionHandler___block_invoke;
  v16[3] = &unk_1E7B018F8;
  v18 = handlerCopy;
  selfCopy = self;
  v20 = width;
  v21 = height;
  typeCopy = type;
  v17 = descriptorCopy;
  v14 = descriptorCopy;
  v15 = handlerCopy;
  [v13 getValueForDescriptor:v14 resultClass:type completion:v16];
}

void __90__WFObservableObjectResult_getResultWithDescriptor_valueType_glyphSize_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 48);
    v13[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90__WFObservableObjectResult_getResultWithDescriptor_valueType_glyphSize_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7B018D0;
    v11 = *(a1 + 72);
    v12 = *(a1 + 56);
    v8 = v4;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v5 drawGlyphsIntoWorkflowsIfNecessary:v6 glyphSize:v7 completion:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __90__WFObservableObjectResult_getResultWithDescriptor_valueType_glyphSize_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [[WFObservableObjectResult alloc] initWithValueType:*(a1 + 56) glyphSize:*(a1 + 32) initialValue:*(a1 + 40) descriptor:*(a1 + 64), *(a1 + 72)];
  (*(*(a1 + 48) + 16))();
}

@end