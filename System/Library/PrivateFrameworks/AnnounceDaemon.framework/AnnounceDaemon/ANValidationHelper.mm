@interface ANValidationHelper
+ (id)_runValidationCheck:(id)check isRetry:(BOOL)retry;
+ (id)performBasicValidationForAnnouncement:(id)announcement type:(unint64_t)type;
+ (id)performPreflightChecksForSendingAnnouncementToHomeContext:(id)context;
+ (id)performPreflightChecksForSendingContent:(id)content toHome:(id)home rooms:(id)rooms zones:(id)zones;
@end

@implementation ANValidationHelper

+ (id)performBasicValidationForAnnouncement:(id)announcement type:(unint64_t)type
{
  announcementCopy = announcement;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ANValidationHelper_performBasicValidationForAnnouncement_type___block_invoke;
  v10[3] = &unk_278C87570;
  v11 = announcementCopy;
  typeCopy = type;
  v7 = announcementCopy;
  v8 = [self _runValidationCheck:v10 isRetry:0];

  return v8;
}

+ (id)performPreflightChecksForSendingContent:(id)content toHome:(id)home rooms:(id)rooms zones:(id)zones
{
  contentCopy = content;
  homeCopy = home;
  roomsCopy = rooms;
  zonesCopy = zones;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__ANValidationHelper_performPreflightChecksForSendingContent_toHome_rooms_zones___block_invoke;
  v20[3] = &unk_278C87598;
  v21 = contentCopy;
  v22 = homeCopy;
  v23 = roomsCopy;
  v24 = zonesCopy;
  v14 = zonesCopy;
  v15 = roomsCopy;
  v16 = homeCopy;
  v17 = contentCopy;
  v18 = [self _runValidationCheck:v20 isRetry:0];

  return v18;
}

+ (id)performPreflightChecksForSendingAnnouncementToHomeContext:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = ANLogHandleValidationHelper(contextCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = &stru_2851BDB18;
    v43 = 2114;
    v44 = contextCopy;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Performing preflight check for context: %{public}@", buf, 0x16u);
  }

  homeName = [contextCopy homeName];
  v7 = [homeName length];
  if (!v7 || (v7 = [contextCopy isEmpty], v7))
  {
    v8 = ANLogHandleValidationHelper(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Context doesn't contain home name", buf, 0xCu);
    }
  }

  v9 = +[ANHomeManager shared];
  v10 = [v9 homeNamesForContext:contextCopy];

  v12 = ANLogHandleValidationHelper(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = &stru_2851BDB18;
    v43 = 2114;
    v44 = v10;
    _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@Found Homes: %{public}@", buf, 0x16u);
  }

  if (![v10 count])
  {
    v24 = [MEMORY[0x277CCA9B8] an_errorWithCode:1002 component:*MEMORY[0x277CEA9B8] description:@"Invalid room/zone name"];
    goto LABEL_31;
  }

  roomNames = [contextCopy roomNames];
  zoneNames = [contextCopy zoneNames];
  v15 = [MEMORY[0x277CEAB68] destinationWithHomeName:homeName zoneNames:zoneNames roomNames:roomNames];
  v16 = ANLogHandleValidationHelper(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = &stru_2851BDB18;
    v43 = 2114;
    v44 = v15;
    _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "%@Destination from homeContext: %{public}@", buf, 0x16u);
  }

  home = [v15 home];
  if (home)
  {
    v18 = [roomNames count];
    rooms = [v15 rooms];
    v35 = zoneNames;
    selfCopy = self;
    if (v18 == [rooms count])
    {
      v20 = [zoneNames count];
      zones = [v15 zones];
      v22 = [zones count];

      if (v20 == v22)
      {
LABEL_23:
        rooms2 = [v15 rooms];
        if ([rooms2 count])
        {
          rooms3 = [v15 rooms];
        }

        else
        {
          rooms3 = MEMORY[0x277CBEBF8];
        }

        zones2 = [v15 zones];
        if ([zones2 count])
        {
          zones3 = [v15 zones];
        }

        else
        {
          zones3 = MEMORY[0x277CBEBF8];
        }

        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __80__ANValidationHelper_performPreflightChecksForSendingAnnouncementToHomeContext___block_invoke;
        v37[3] = &unk_278C875C0;
        v38 = v15;
        v39 = rooms3;
        v40 = zones3;
        v32 = zones3;
        v33 = rooms3;
        v24 = [selfCopy _runValidationCheck:v37 isRetry:0];

        zoneNames = v35;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v25 = ANLogHandleValidationHelper(v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      rooms4 = [v15 rooms];
      zones4 = [v15 zones];
      *buf = 138412802;
      v42 = &stru_2851BDB18;
      v43 = 2114;
      v44 = rooms4;
      v45 = 2114;
      v46 = zones4;
      _os_log_impl(&dword_23F525000, v25, OS_LOG_TYPE_ERROR, "%@Destination rooms: %{public}@ zones: %{public}@", buf, 0x20u);
    }

    goto LABEL_23;
  }

  v24 = [MEMORY[0x277CCA9B8] an_errorWithCode:1002 component:*MEMORY[0x277CEA9B8]];
LABEL_30:

LABEL_31:

  return v24;
}

id __80__ANValidationHelper_performPreflightChecksForSendingAnnouncementToHomeContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  v3 = [ANMessenger performPreflightChecksForSendingAnnouncementToHome:v2 rooms:*(a1 + 40) zones:*(a1 + 48)];

  return v3;
}

+ (id)_runValidationCheck:(id)check isRetry:(BOOL)retry
{
  retryCopy = retry;
  v25 = *MEMORY[0x277D85DE8];
  checkCopy = check;
  v7 = ANLogHandleValidationHelper(checkCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = &stru_2851BDB18;
    v23 = 1024;
    v24 = retryCopy;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Starting validation check (is retry = %d)", &v21, 0x12u);
  }

  v8 = checkCopy[2](checkCopy);
  v9 = v8;
  if (v8)
  {
    isHomeError = [v8 isHomeError];
    if (isHomeError)
    {
      v11 = !retryCopy;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v14 = ANLogHandleValidationHelper(isHomeError);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@Validation check failed with Home error - requesting HomeManager refresh", &v21, 0xCu);
      }

      v15 = +[ANHomeManager shared];
      refreshHomeSynchronous = [v15 refreshHomeSynchronous];

      if (refreshHomeSynchronous)
      {
        v18 = ANLogHandleValidationHelper(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = &stru_2851BDB18;
          _os_log_impl(&dword_23F525000, v18, OS_LOG_TYPE_DEFAULT, "%@Validation check failed - HomeManager refresh error", &v21, 0xCu);
        }

        v19 = refreshHomeSynchronous;
      }

      else
      {
        v19 = [self _runValidationCheck:checkCopy isRetry:1];
      }

      v12 = v19;
    }

    else
    {
      v12 = v9;
    }
  }

  else
  {
    v13 = ANLogHandleValidationHelper(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@Validation check success", &v21, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

@end