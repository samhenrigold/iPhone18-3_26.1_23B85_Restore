@interface FBSScene(PosterUIFoundation)
- (PUIPosterSnapshotCaptureController)pui_captureController;
- (id)pui_forwardKeyboardFocusToClientScene:()PosterUIFoundation;
- (uint64_t)pui_sceneIsReadyToSnapshot:()PosterUIFoundation;
@end

@implementation FBSScene(PosterUIFoundation)

- (PUIPosterSnapshotCaptureController)pui_captureController
{
  BSDispatchQueueAssertMain();
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = [[PUIPosterSnapshotCaptureController alloc] initWithFBSScene:self];
    objc_setAssociatedObject(self, a2, v4, 0x301);
  }

  return v4;
}

- (id)pui_forwardKeyboardFocusToClientScene:()PosterUIFoundation
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    clientHandle = PUILogCommon(isMainThread);
    if (os_log_type_enabled(clientHandle, OS_LOG_TYPE_ERROR))
    {
      [FBSScene(PosterUIFoundation) pui_forwardKeyboardFocusToClientScene:self];
    }

    goto LABEL_7;
  }

  if (PFCurrentDeviceClass() == 2)
  {
    clientHandle = PUILogCommon(2);
    if (os_log_type_enabled(clientHandle, OS_LOG_TYPE_ERROR))
    {
      [FBSScene(PosterUIFoundation) pui_forwardKeyboardFocusToClientScene:self];
    }

LABEL_7:
    v7 = 0;
    goto LABEL_18;
  }

  clientHandle = [v4 clientHandle];
  identityToken = [v4 identityToken];
  stringRepresentation = [identityToken stringRepresentation];

  identityToken2 = [self identityToken];
  stringRepresentation2 = [identityToken2 stringRepresentation];

  if (clientHandle && stringRepresentation && stringRepresentation2)
  {
    v13 = [MEMORY[0x1E698E3A0] tokenForString:stringRepresentation2];
    v14 = objc_opt_new();
    keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    [v14 setEnvironment:keyboardFocusEnvironment];

    v16 = v14;
    v32 = v13;
    [v14 setToken:v13];
    v17 = objc_opt_new();
    processHandle = [clientHandle processHandle];
    v19 = [processHandle pid];

    [v17 setPid:v19];
    v20 = [MEMORY[0x1E698E3A0] tokenForString:stringRepresentation];
    [v17 setToken:v20];

    v22 = PUILogCommon(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544386;
      v34 = v24;
      v35 = 2050;
      selfCopy = self;
      v37 = 2114;
      v38 = stringRepresentation2;
      v39 = 2114;
      v40 = stringRepresentation;
      v41 = 1026;
      v42 = v19;
      _os_log_impl(&dword_1A8C85000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@-%{public}p: host scene %{public}@ deferring keyboard events to client %{public}@ with PID: %{public}d", buf, 0x30u);
    }

    mEMORY[0x1E698E3B0] = [MEMORY[0x1E698E3B0] sharedInstance];
    v26 = MEMORY[0x1E696AEC0];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v26 stringWithFormat:@"%@-%p deferring to hosted scene", v28, self];
    v7 = [mEMORY[0x1E698E3B0] deferEventsMatchingPredicate:v16 toTarget:v17 withReason:v29];

    v30 = v32;
  }

  else
  {
    v30 = PUILogCommon(v12);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [FBSScene(PosterUIFoundation) pui_forwardKeyboardFocusToClientScene:self];
    }

    v7 = 0;
  }

LABEL_18:

  return v7;
}

- (uint64_t)pui_sceneIsReadyToSnapshot:()PosterUIFoundation
{
  BSDispatchQueueAssertMain();
  clientSettings = [self clientSettings];
  layers = [clientSettings layers];

  if ([layers count] >= 2)
  {
    clientSettings2 = [self clientSettings];
    pui_inExtendedRenderSession = [clientSettings2 pui_inExtendedRenderSession];

    if (!pui_inExtendedRenderSession)
    {
      v10 = 1;
      goto LABEL_8;
    }

    v7 = @"is in extended render session";
  }

  else
  {
    v7 = @"no content";
  }

  v10 = 0;
  if (a3)
  {
    *a3 = v7;
  }

LABEL_8:

  return v10;
}

- (void)pui_forwardKeyboardFocusToClientScene:()PosterUIFoundation .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)pui_forwardKeyboardFocusToClientScene:()PosterUIFoundation .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

- (void)pui_forwardKeyboardFocusToClientScene:()PosterUIFoundation .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end