@interface CAFMedia
+ (void)load;
- (NSArray)mediaSourceServices;
- (void)registerObserver:(id)observer;
- (void)tuneToFrequency:(unsigned int)frequency inSourceWithIdentifier:(id)identifier completion:(id)completion;
- (void)tuneToMediaItem:(id)item inSource:(id)source completion:(id)completion;
- (void)tuneToMediaItemIdentifier:(id)identifier inSourceWithIdentifier:(id)withIdentifier completion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFMedia

- (void)tuneToMediaItem:(id)item inSource:(id)source completion:(id)completion
{
  itemCopy = item;
  sourceCopy = source;
  completionCopy = completion;
  v11 = CAFGeneralLogging(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAFMedia(Utilties) tuneToMediaItem:inSource:completion:];
  }

  identifier = [itemCopy identifier];
  identifier2 = [sourceCopy identifier];
  [(CAFMedia *)self tuneToMediaItemIdentifier:identifier inSourceWithIdentifier:identifier2 completion:completionCopy];
}

- (void)tuneToFrequency:(unsigned int)frequency inSourceWithIdentifier:(id)identifier completion:(id)completion
{
  v6 = *&frequency;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = CAFGeneralLogging(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CAFMedia(Utilties) tuneToFrequency:v6 inSourceWithIdentifier:identifierCopy completion:v10];
  }

  v11 = [(CAFAccessory *)self car];
  v12 = [v11 mediaSourceWithIdentifier:identifierCopy];

  if (!v12)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__CAFMedia_Utilties__tuneToFrequency_inSourceWithIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v44 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
    nowPlaying = v44;
    goto LABEL_15;
  }

  v13 = [(CAFAccessory *)self car];
  nowPlayingInformation = [v13 nowPlayingInformation];
  nowPlaying = [nowPlayingInformation nowPlaying];

  if (!nowPlaying)
  {
    v22 = CAFGeneralLogging(v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(CAFMedia(Utilties) *)v22 tuneToFrequency:v23 inSourceWithIdentifier:v24 completion:v25, v26, v27, v28, v29];
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __72__CAFMedia_Utilties__tuneToFrequency_inSourceWithIdentifier_completion___block_invoke_21;
    v41[3] = &unk_27890D5E8;
    v42 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v41);
    v30 = v42;
    goto LABEL_14;
  }

  currentFrequencyRange = [v12 currentFrequencyRange];
  v18 = [currentFrequencyRange valueRoundedToNearestStepValue:v6];

  currentFrequencyRange2 = [v12 currentFrequencyRange];
  v20 = [currentFrequencyRange2 valueIsInRange:v18];

  if ((v20 & 1) == 0)
  {
    v31 = CAFGeneralLogging(v21);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [(CAFMedia(Utilties) *)v31 tuneToFrequency:v32 inSourceWithIdentifier:v33 completion:v34, v35, v36, v37, v38];
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __72__CAFMedia_Utilties__tuneToFrequency_inSourceWithIdentifier_completion___block_invoke_22;
    v39[3] = &unk_27890D5E8;
    v40 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v39);
    v30 = v40;
LABEL_14:

    goto LABEL_15;
  }

  [nowPlaying tuneToFrequency:v18 sourceIdentifier:identifierCopy completion:completionCopy];
LABEL_15:
}

void __72__CAFMedia_Utilties__tuneToFrequency_inSourceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:CAFErrorDomain code:-1 userInfo:0];
    (*(v1 + 16))(v1, v2);
  }
}

void __72__CAFMedia_Utilties__tuneToFrequency_inSourceWithIdentifier_completion___block_invoke_21(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:CAFErrorDomain code:-1 userInfo:0];
    (*(v1 + 16))(v1, v2);
  }
}

void __72__CAFMedia_Utilties__tuneToFrequency_inSourceWithIdentifier_completion___block_invoke_22(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:CAFErrorDomain code:-1 userInfo:0];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)tuneToMediaItemIdentifier:(id)identifier inSourceWithIdentifier:(id)withIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  completionCopy = completion;
  v11 = CAFGeneralLogging(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAFMedia(Utilties) tuneToMediaItemIdentifier:inSourceWithIdentifier:completion:];
  }

  v12 = [(CAFAccessory *)self car];
  nowPlayingInformation = [v12 nowPlayingInformation];
  nowPlaying = [nowPlayingInformation nowPlaying];

  if (nowPlaying)
  {
    [nowPlaying tuneToIdentifier:identifierCopy sourceIdentifier:withIdentifierCopy completion:completionCopy];
  }

  else
  {
    v16 = CAFGeneralLogging(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CAFMedia(Utilties) *)v16 tuneToFrequency:v17 inSourceWithIdentifier:v18 completion:v19, v20, v21, v22, v23];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__CAFMedia_Utilties__tuneToMediaItemIdentifier_inSourceWithIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v25 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __82__CAFMedia_Utilties__tuneToMediaItemIdentifier_inSourceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:CAFErrorDomain code:-1 userInfo:0];
    (*(v1 + 16))(v1, v2);
  }
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMedia;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABD38])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFMedia;
  [(CAFAccessory *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABD38])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFMedia;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (NSArray)mediaSourceServices
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000014000006"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000014000006"];
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end