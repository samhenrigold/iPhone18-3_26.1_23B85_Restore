@interface ULTapToRadar
+ (int64_t)_classificationFromULTapToRadarClassification:(int64_t)classification;
+ (int64_t)_reproducibilityFromULTapToRadarReproducibility:(int64_t)reproducibility;
+ (void)createRadarWithComponentName:(id)name componentVersion:(id)version componentID:(id)d classification:(int64_t)classification reproducibility:(int64_t)reproducibility title:(id)title description:(id)description extensionIDs:(id)self0 processName:(id)self1 displayReason:(id)self2 isUserInitiated:(BOOL)self3 completionHandler:(id)self4;
@end

@implementation ULTapToRadar

+ (void)createRadarWithComponentName:(id)name componentVersion:(id)version componentID:(id)d classification:(int64_t)classification reproducibility:(int64_t)reproducibility title:(id)title description:(id)description extensionIDs:(id)self0 processName:(id)self1 displayReason:(id)self2 isUserInitiated:(BOOL)self3 completionHandler:(id)self4
{
  nameCopy = name;
  versionCopy = version;
  dCopy = d;
  titleCopy = title;
  descriptionCopy = description;
  dsCopy = ds;
  processNameCopy = processName;
  reasonCopy = reason;
  handlerCopy = handler;
  v24 = +[ULPlatform isInternalInstall];
  if (v24 && getTapToRadarServiceClass(v24) && getRadarDraftClass() && getRadarComponentClass())
  {
    v25 = objc_alloc(getRadarComponentClass());
    v26 = dCopy;
    integerValue = [dCopy integerValue];
    v28 = versionCopy;
    v29 = [v25 initWithName:nameCopy version:versionCopy identifier:integerValue];
    getRadarDraftClass();
    v30 = objc_opt_new();
    [v30 setComponent:v29];
    [v30 setClassification:{objc_msgSend(self, "_classificationFromULTapToRadarClassification:", classification)}];
    [v30 setReproducibility:{objc_msgSend(self, "_reproducibilityFromULTapToRadarReproducibility:", reproducibility)}];
    [v30 setTitle:titleCopy];
    [v30 setProblemDescription:descriptionCopy];
    [v30 setDiagnosticExtensionIDs:dsCopy];
    v31 = [v30 setIsUserInitiated:initiated];
    shared = [getTapToRadarServiceClass(v31) shared];
    [shared createDraft:v30 forProcessNamed:processNameCopy withDisplayReason:reasonCopy completionHandler:handlerCopy];
  }

  else
  {
    v26 = dCopy;
    v28 = versionCopy;
    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TTR not supported" code:-1 userInfo:{0, classification, self}];
    handlerCopy[2](handlerCopy, v29);
  }
}

+ (int64_t)_classificationFromULTapToRadarClassification:(int64_t)classification
{
  if ((classification - 1) >= 0xA)
  {
    return 0;
  }

  else
  {
    return classification;
  }
}

+ (int64_t)_reproducibilityFromULTapToRadarReproducibility:(int64_t)reproducibility
{
  if ((reproducibility - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return reproducibility;
  }
}

@end