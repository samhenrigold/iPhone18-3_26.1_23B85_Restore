@interface ENUIPublicHealthAgencyModel
+ (NSArray)allRegions;
+ (NSString)dummyRegionCountryCode;
+ (id)defaultModelWithBundleId:(id)id isAuthorized:(BOOL)authorized;
+ (id)regionForRegionCode:(id)code;
+ (void)refreshRegionsWithCompletion:(id)completion;
+ (void)setActiveRegion:(id)region;
+ (void)setTurndownEntity:(id)entity;
- (BOOL)isAppInstalled;
- (BOOL)isAppInstalledAndRegionYetToBeOnboarded;
- (BOOL)isRegionUsingApp;
- (BOOL)isSymptomOnsetNeeded;
- (BOOL)isTravelStatusNeeded;
- (BOOL)isVaccinationQuestionNeeded;
- (BOOL)regionIsPlaceholder;
- (NSString)installedAppName;
- (UIImage)installedAppIcon;
- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)init;
- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)initWithRegion:(id)region name:(id)name appBundleId:(id)id introductoryText:(id)text header:(id)header legalese:(id)legalese consentStatus:(id)status consentVersion:(id)self0 diagnosisKeysPreAuthorization:(id)self1 isAssociatedDomainAllowed:(BOOL)self2 isPreauthorizationDomainAllowed:(BOOL)self3 isAuthorized:(BOOL)self4 regionVersion:(int64_t)self5 regionWebsiteURL:(id)self6 regionFAQWebsiteURL:(id)self7 featureFlags:(unsigned int)self8 wantsAnalytics:(BOOL)self9 analyticsConsentStatus:(int64_t)consentStatus analyticsConsentText:(id)consentText verificationIntroductoryText:(id)introductoryText selfReportIntroductoryText:(id)reportIntroductoryText verificationCodeHelpURL:(id)uRL verificationSymptomOnsetText:(id)onsetText verificationTravelStatusText:(id)statusText vaccinationQuestionText:(id)questionText webReportURL:(id)reportURL;
- (int64_t)analyticsConsentStatus;
- (void)setAnalyticsConsentStatus:(int64_t)status;
@end

@implementation ENUIPublicHealthAgencyModel

- (int64_t)analyticsConsentStatus
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAnalyticsConsentStatus:(int64_t)status
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
  swift_beginAccess();
  *(self + v5) = status;
}

- (BOOL)isSymptomOnsetNeeded
{
  v2 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText) & 0xFFFFFFFFFFFFLL;
  }

  return v3 != 0;
}

- (BOOL)isTravelStatusNeeded
{
  v2 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText) & 0xFFFFFFFFFFFFLL;
  }

  return v3 != 0;
}

- (BOOL)isVaccinationQuestionNeeded
{
  selfCopy = self;
  v3 = ENUIPublicHealthAgencyModel.isVaccinationQuestionNeeded.getter();

  return v3;
}

- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)initWithRegion:(id)region name:(id)name appBundleId:(id)id introductoryText:(id)text header:(id)header legalese:(id)legalese consentStatus:(id)status consentVersion:(id)self0 diagnosisKeysPreAuthorization:(id)self1 isAssociatedDomainAllowed:(BOOL)self2 isPreauthorizationDomainAllowed:(BOOL)self3 isAuthorized:(BOOL)self4 regionVersion:(int64_t)self5 regionWebsiteURL:(id)self6 regionFAQWebsiteURL:(id)self7 featureFlags:(unsigned int)self8 wantsAnalytics:(BOOL)self9 analyticsConsentStatus:(int64_t)consentStatus analyticsConsentText:(id)consentText verificationIntroductoryText:(id)introductoryText selfReportIntroductoryText:(id)reportIntroductoryText verificationCodeHelpURL:(id)uRL verificationSymptomOnsetText:(id)onsetText verificationTravelStatusText:(id)statusText vaccinationQuestionText:(id)questionText webReportURL:(id)reportURL
{
  legaleseCopy = legalese;
  headerCopy = header;
  regionCopy = region;
  selfCopy = self;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v139 = &v107 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v140 = &v107 - v36;
  MEMORY[0x28223BE20](v35);
  v138 = &v107 - v37;
  v38 = sub_251703164();
  v130 = v39;
  v131 = v38;
  if (id)
  {
    v40 = sub_251703164();
    v127 = v41;
    v128 = v40;
  }

  else
  {
    v127 = 0;
    v128 = 0;
  }

  statusTextCopy = statusText;
  questionTextCopy = questionText;
  introductoryTextCopy = introductoryText;
  regionVersionCopy = reportIntroductoryText;
  v42 = sub_251703164();
  v125 = v43;
  v126 = v42;
  onsetTextCopy = onsetText;
  if (version)
  {
    v44 = sub_251703164();
    v123 = v45;
    v124 = v44;
  }

  else
  {
    v123 = 0;
    v124 = 0;
  }

  v129 = v32;
  statusCopy = status;
  authorizationCopy = authorization;
  reportURLCopy = reportURL;
  if (l)
  {
    v46 = v138;
    sub_251702D84();
    v47 = sub_251702DA4();
    v48 = *(*(v47 - 8) + 56);
    v49 = regionCopy;
    v50 = headerCopy;
    v51 = legaleseCopy;
    statusCopy2 = status;
    authorizationCopy2 = authorization;
    rLCopy = rL;
    consentTextCopy = consentText;
    v56 = introductoryTextCopy;
    v57 = regionVersionCopy;
    uRLCopy = uRL;
    v59 = onsetTextCopy;
    v60 = onsetTextCopy;
    v61 = statusTextCopy;
    v62 = questionTextCopy;
    reportURLCopy2 = reportURL;
    v48(v46, 0, 1, v47);
    v64 = v140;
    if (rL)
    {
LABEL_9:
      sub_251702D84();

      v65 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v66 = sub_251702DA4();
    (*(*(v66 - 8) + 56))(v138, 1, 1, v66);
    v67 = regionCopy;
    v68 = headerCopy;
    v69 = legaleseCopy;
    statusCopy3 = status;
    authorizationCopy3 = authorization;
    rLCopy2 = rL;
    consentTextCopy2 = consentText;
    v74 = introductoryTextCopy;
    v75 = regionVersionCopy;
    uRLCopy2 = uRL;
    v59 = onsetTextCopy;
    v77 = onsetTextCopy;
    v78 = statusTextCopy;
    v79 = questionTextCopy;
    reportURLCopy3 = reportURL;
    v64 = v140;
    if (rL)
    {
      goto LABEL_9;
    }
  }

  v65 = 1;
LABEL_12:
  v81 = sub_251702DA4();
  v82 = *(v81 - 8);
  v83 = *(v82 + 56);
  v133 = v82 + 56;
  v83(v64, v65, 1, v81);
  if (consentText)
  {
    v118 = sub_251703164();
    v117 = v84;
  }

  else
  {
    v118 = 0;
    v117 = 0;
  }

  v85 = v139;
  v86 = introductoryTextCopy;
  v116 = sub_251703164();
  v115 = v87;

  v88 = regionVersionCopy;
  introductoryTextCopy = sub_251703164();
  v114 = v89;

  if (uRL)
  {
    sub_251702D84();

    v90 = 0;
  }

  else
  {
    v90 = 1;
  }

  consentStatusCopy = consentStatus;
  analyticsCopy = analytics;
  flagsCopy = flags;
  regionVersionCopy = regionVersion;
  authorizedCopy = authorized;
  domainAllowedCopy = domainAllowed;
  allowedCopy = allowed;
  v91 = 1;
  v92 = v83;
  v83(v85, v90, 1, v81);
  v93 = sub_251703164();
  v95 = v94;

  v96 = statusTextCopy;
  v97 = sub_251703164();
  v99 = v98;

  v100 = questionTextCopy;
  v101 = sub_251703164();
  v103 = v102;

  if (reportURLCopy)
  {
    v104 = reportURLCopy;
    v105 = v129;
    sub_251702D84();

    v91 = 0;
  }

  else
  {
    v105 = v129;
  }

  v92(v105, v91, 1, v81);
  return ENUIPublicHealthAgencyModel.init(region:name:appBundleId:introductoryText:header:legalese:consentStatus:consentVersion:diagnosisKeysPreAuthorization:isAssociatedDomainAllowed:isPreauthorizationDomainAllowed:isAuthorized:regionVersion:regionWebsiteURL:regionFAQWebsiteURL:featureFlags:wantsAnalytics:analyticsConsentStatus:analyticsConsentText:verificationIntroductoryText:selfReportIntroductoryText:verificationCodeHelpURL:verificationSymptomOnsetText:verificationTravelStatusText:vaccinationQuestionText:webReportURL:)(regionCopy, v131, v130, v128, v127, v126, v125, headerCopy, legaleseCopy, statusCopy, v124, v123, authorizationCopy, allowedCopy, domainAllowedCopy, authorizedCopy, regionVersionCopy, v138, v140, flagsCopy, analyticsCopy, consentStatusCopy, v118, v117, v116, v115, introductoryTextCopy, v114, v139, v93, v95, v97, v99, v101, v103, v105);
}

- (BOOL)isAppInstalled
{
  selfCopy = self;
  v3 = ENUIPublicHealthAgencyModel.isAppInstalled.getter();

  return v3 & 1;
}

- (BOOL)isRegionUsingApp
{
  selfCopy = self;
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    if (*(selfCopy + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion) <= 1)
    {

      LOBYTE(v3) = 1;
    }

    else
    {
      v3 = *(selfCopy + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
      if (v3)
      {
        v4 = *(selfCopy + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
        if (qword_28151EB60 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v5 = static ENManagerAdapter.defaultAdapter;
        _s28HealthExposureNotificationUI16ENManagerAdapterC17tccContainsRecord19forBundleIdentifierSbSS_tF_0(v4, v3);
        LOBYTE(v3) = v6;
      }

      else
      {
      }
    }
  }

  else
  {

    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (BOOL)isAppInstalledAndRegionYetToBeOnboarded
{
  selfCopy = self;
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    v3 = *(selfCopy + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized);

    v4 = v3 ^ 1;
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

- (NSString)installedAppName
{
  selfCopy = self;
  ENUIPublicHealthAgencyModel.installedAppName.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_251703134();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIImage)installedAppIcon
{
  selfCopy = self;
  ENUIPublicHealthAgencyModel.installedAppIcon.getter();
  v4 = v3;

  return v4;
}

- (BOOL)regionIsPlaceholder
{
  v2 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  selfCopy = self;
  regionCode = [v2 regionCode];
  v5 = sub_251703164();
  v7 = v6;

  if (v5 == 11565 && v7 == 0xE200000000000000)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_251703624();
  }

  return v9 & 1;
}

+ (void)setActiveRegion:(id)region
{
  swift_beginAccess();
  v4 = static ENUIPublicHealthAgencyModel.activeRegion;
  static ENUIPublicHealthAgencyModel.activeRegion = region;
  regionCopy = region;
}

+ (void)setTurndownEntity:(id)entity
{
  swift_beginAccess();
  v4 = static ENUIPublicHealthAgencyModel.turndownEntity;
  static ENUIPublicHealthAgencyModel.turndownEntity = entity;
  entityCopy = entity;
}

+ (NSString)dummyRegionCountryCode
{
  v2 = sub_251703134();

  return v2;
}

+ (NSArray)allRegions
{
  _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0();
  type metadata accessor for ENUIPublicHealthAgencyModel(0);
  v2 = sub_2517031F4();

  return v2;
}

+ (id)regionForRegionCode:(id)code
{
  v3 = sub_251703164();
  v5 = _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC9regionFor0H4CodeACSgSS_tFZ_0(v3, v4);

  return v5;
}

- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)refreshRegionsWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjCClassMetadata();
  static ENUIPublicHealthAgencyModel.refreshRegions(completion:)(sub_2516963FC, v4);
}

+ (id)defaultModelWithBundleId:(id)id isAuthorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  v5 = sub_251703164();
  v7 = sub_251695CDC(v5, v6, authorizedCopy);

  return v7;
}

@end