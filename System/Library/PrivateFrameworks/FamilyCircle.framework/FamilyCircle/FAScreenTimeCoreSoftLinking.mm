@interface FAScreenTimeCoreSoftLinking
- (BOOL)isScreenTimePasscodeSet;
- (id)agePresetKeyAllowAppRemoval;
- (id)agePresetKeyAllowBookstoreErotica;
- (id)agePresetKeyAllowExplicitContent;
- (id)agePresetKeyAllowExternalIntelligenceIntegrations;
- (id)agePresetKeyAllowWritingTools;
- (id)agePresetKeyForceAssistantProfanityFilter;
- (id)agePresetKeyPresetOnlyImageGeneration;
- (id)agePresetKeyRatingApps;
- (id)agePresetKeyRatingMovies;
- (id)agePresetKeyRatingTVShows;
- (id)agePresetKeySTCustomRestrictionWebFilterState;
- (void)saveExpressIntroductionSettingsDefaultsWithIsContentRestrictionsEnabled:(BOOL)enabled contentRestrictionsByKey:(id)key isCommunicationSafetyEnabled:(BOOL)safetyEnabled isScreenDistanceEnabled:(BOOL)distanceEnabled isStrictPolicy:(BOOL)policy completionHandler:(id)handler;
@end

@implementation FAScreenTimeCoreSoftLinking

- (BOOL)isScreenTimePasscodeSet
{
  v2 = objc_alloc_init(sub_100004D24(self, a2));
  isRestrictionsPasscodeSet = [v2 isRestrictionsPasscodeSet];

  return isRestrictionsPasscodeSet;
}

- (void)saveExpressIntroductionSettingsDefaultsWithIsContentRestrictionsEnabled:(BOOL)enabled contentRestrictionsByKey:(id)key isCommunicationSafetyEnabled:(BOOL)safetyEnabled isScreenDistanceEnabled:(BOOL)distanceEnabled isStrictPolicy:(BOOL)policy completionHandler:(id)handler
{
  policyCopy = policy;
  distanceEnabledCopy = distanceEnabled;
  safetyEnabledCopy = safetyEnabled;
  enabledCopy = enabled;
  keyCopy = key;
  handlerCopy = handler;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v15 = qword_1000B98C0;
  v26 = qword_1000B98C0;
  if (!qword_1000B98C0)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100005CD8;
    v22[3] = &unk_1000A5EF8;
    v22[4] = &v23;
    sub_100005CD8(v22);
    v15 = v24[3];
  }

  v16 = v15;
  _Block_object_dispose(&v23, 8);
  v17 = objc_alloc_init(v15);
  [v17 setContentRestrictionsIsEnabled:enabledCopy];
  [v17 setContentRestrictionsValueByKey:keyCopy];
  [v17 setContentRestrictionsHasStrictPolicy:policyCopy];
  [v17 setCommunicationSafetyIsEnabled:safetyEnabledCopy];
  [v17 setCommunicationSafetyHasStrictPolicy:policyCopy];
  [v17 setScreenDistanceIsEnabled:distanceEnabledCopy];
  v18 = [v17 setScreenDistanceHasStrictPolicy:policyCopy];
  v20 = objc_alloc_init(sub_100004D24(v18, v19));
  if (objc_opt_respondsToSelector())
  {
    [v20 saveExpressIntroductionSettingsDefaults:v17 completionHandler:handlerCopy];
  }

  else
  {
    v21 = [NSError fa_familyErrorWithCode:-1019];
    handlerCopy[2](handlerCopy, v21);
  }
}

- (id)agePresetKeySTCustomRestrictionWebFilterState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98C8;
  v10 = qword_1000B98C8;
  if (!qword_1000B98C8)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeySTCustomRestrictionWebFilterState");
    qword_1000B98C8 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyAllowExplicitContent
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98D0;
  v10 = qword_1000B98D0;
  if (!qword_1000B98D0)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyAllowExplicitContent");
    qword_1000B98D0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyPresetOnlyImageGeneration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98D8;
  v10 = qword_1000B98D8;
  if (!qword_1000B98D8)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyPresetOnlyImageGeneration");
    qword_1000B98D8 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyRatingMovies
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98E0;
  v10 = qword_1000B98E0;
  if (!qword_1000B98E0)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyRatingMovies");
    qword_1000B98E0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyRatingTVShows
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98E8;
  v10 = qword_1000B98E8;
  if (!qword_1000B98E8)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyRatingTVShows");
    qword_1000B98E8 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyAllowBookstoreErotica
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98F0;
  v10 = qword_1000B98F0;
  if (!qword_1000B98F0)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyAllowBookstoreErotica");
    qword_1000B98F0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyAllowExternalIntelligenceIntegrations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98F8;
  v10 = qword_1000B98F8;
  if (!qword_1000B98F8)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyAllowExternalIntelligenceIntegrations");
    qword_1000B98F8 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyForceAssistantProfanityFilter
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B9900;
  v10 = qword_1000B9900;
  if (!qword_1000B9900)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyForceAssistantProfanityFilter");
    qword_1000B9900 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyAllowWritingTools
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B9908;
  v10 = qword_1000B9908;
  if (!qword_1000B9908)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyAllowWritingTools");
    qword_1000B9908 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyAllowAppRemoval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B9910;
  v10 = qword_1000B9910;
  if (!qword_1000B9910)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyAllowAppRemoval");
    qword_1000B9910 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyRatingApps
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B9918;
  v10 = qword_1000B9918;
  if (!qword_1000B9918)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyRatingApps");
    qword_1000B9918 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

@end