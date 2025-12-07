uint64_t _KBLogger(uint64_t a1, uint64_t a2)
{
  if (qword_10420 != -1)
  {
    sub_6138();
  }

  return qword_10428;
}

BOOL TIKeyboardMigratorIsCurrentDevice12InchPad()
{
  v0 = MGGetSInt32Answer();
  v1 = MGGetSInt32Answer();
  MGGetFloat32Answer();
  v3 = v2;
  if (v0 >= v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v0;
  }

  return v3 * 834.0 < v4;
}

void TIKeyboardMigratorTest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  qword_10430 = a1;
  qword_10438 = [NSNumber numberWithBool:a2];
  qword_10440 = a3;
  sub_35B4();
  qword_10430 = 0;
  qword_10438 = 0;
  qword_10440 = 0;
}

NSMutableDictionary *sub_3288()
{
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  v0 = [NSMutableDictionary dictionaryWithCapacity:3];
  v1 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v1)
  {
    v2 = v1;
    v3 = CFPreferencesCopyKeyList(v1, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(__CFArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = CFPreferencesCopyAppValue(v8, v2);
          if (v9)
          {
            v10 = v9;
            [(NSMutableDictionary *)v0 setObject:v9 forKeyedSubscript:v8];
            CFRelease(v10);
          }
        }

        v5 = [(__CFArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    CFRelease(v2);
  }

  v11 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v11)
  {
    v12 = v11;
    v13 = CFPreferencesCopyAppValue(@"AppleKeyboards", v11);
    if (v13)
    {
      v14 = v13;
      [(NSMutableDictionary *)v0 setObject:v13 forKeyedSubscript:@"AppleKeyboards"];
      CFRelease(v14);
    }

    CFRelease(v12);
  }

  return v0;
}

void sub_345C(uint64_t a1)
{
  [NSString stringWithFormat:@"com.apple.Preferences.%@", a1];
  v2 = CPCopySharedResourcesPreferencesDomainForDomain();
  v3 = CFPreferencesCopyAppValue(@"FuzzyPinyin", v2);
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v6)
    {
      v7 = v6;
      if (CFPreferencesCopyAppValue(@"FuzzyPinyin", v6))
      {
        v8 = [NSMutableDictionary dictionaryWithDictionary:?];
        [(NSMutableDictionary *)v8 setValue:v4 forKey:a1];
      }

      else
      {
        v8 = [NSMutableDictionary dictionaryWithObject:v4 forKey:a1];
      }

      CFPreferencesSetAppValue(@"FuzzyPinyin", v8, v7);
      CFPreferencesAppSynchronize(v7);
      CFPreferencesSetAppValue(@"FuzzyPinyin", 0, v2);
      CFPreferencesAppSynchronize(v2);
      CFRelease(v7);
    }

LABEL_16:
    CFRelease(v2);
    if (!v4)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v2)
  {
    goto LABEL_16;
  }

  if (!v3)
  {
    return;
  }

LABEL_8:

  CFRelease(v4);
}

void sub_35B4()
{
  v0 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v0)
  {
    v1 = v0;
    v2 = CFPreferencesCopyAppValue(@"AppleLanguages", v0);
    if (v2)
    {
      v3 = v2;
      v4 = [v2 firstObject];
      CFRelease(v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = MGGetSInt32Answer();
    v6 = MGGetSInt32Answer();
    IsCurrentDevice12InchPad = TIKeyboardMigratorIsCurrentDevice12InchPad();
    v8 = sub_5D84();
    v218 = 0;
    v9 = v8 <= 0xB || v8 == 0x7FFFFFFFFFFFFFFFLL;
    if (v9 && v6 == 3)
    {
      v218 = [v4 isEqualToString:@"ja"];
    }

    v10 = sub_5D84();
    v12 = v10 == 0x7FFFFFFFFFFFFFFFLL || v10 < 0xD;
    v13 = sub_5D84();
    v14 = sub_5D84();
    v16 = v14 == 0x7FFFFFFFFFFFFFFFLL || v14 < 0x10;
    v17 = sub_5D84();
    v19 = v17 == 0x7FFFFFFFFFFFFFFFLL || v17 < 0x11;
    v230 = v19;
    v20 = sub_5D84();
    v22 = v20 == 0x7FFFFFFFFFFFFFFFLL || v20 < 0x13;
    v228 = v22;
    v226 = (v13 == 0x7FFFFFFFFFFFFFFFLL || v13 <= 0xE) && v6 == 3 && !IsCurrentDevice12InchPad;
    applicationID = v1;
    obj = CFPreferencesCopyAppValue(@"AppleKeyboards", v1);
    if (!obj)
    {
      if (v218)
      {
        v27 = +[NSMutableArray array];
        v251 = 0u;
        v252 = 0u;
        v253 = 0u;
        v254 = 0u;
        v28 = [+[TIInputModeController sharedInputModeController](TIInputModeController "sharedInputModeController")];
        v29 = [v28 countByEnumeratingWithState:&v251 objects:v307 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = 0;
          v32 = *v252;
          do
          {
            for (i = 0; i != v30; i = i + 1)
            {
              if (*v252 != v32)
              {
                objc_enumerationMutation(v28);
              }

              v34 = *(*(&v251 + 1) + 8 * i);
              v35 = [(__CFString *)v34 isEqualToString:@"ja_JP-Kana"];
              v31 |= v35;
              if (v35)
              {
                v36 = @"ja_JP-Kana@sw=Kana";
              }

              else
              {
                v36 = v34;
              }

              [v27 addObject:v36];
            }

            v30 = [v28 countByEnumeratingWithState:&v251 objects:v307 count:16];
          }

          while (v30);
          if (v31)
          {
            CFPreferencesSetAppValue(@"AppleKeyboards", v27, applicationID);
            CFPreferencesSetAppValue(@"AppleKeyboardsExpanded", &__kCFBooleanTrue, applicationID);
            CFPreferencesAppSynchronize(applicationID);
          }
        }
      }

LABEL_410:
      CFRelease(applicationID);
      return;
    }

    v23 = +[NSMutableArray array];
    v24 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v24)
    {
      v25 = v24;
      v26 = CFPreferencesCopyAppValue(@"SuchengCangjie", v24);
      if (v26)
      {
        v215 = [objc_msgSend(v26 objectForKey:{@"zh_Hant-Cangjie", "BOOLValue"}];
        CFPreferencesSetAppValue(@"SuchengCangjie", 0, v25);
      }

      else
      {
        v215 = 0;
      }

      CFRelease(v25);
    }

    else
    {
      v215 = 0;
    }

    v37 = &KeyboardMigrator__metaData;
    v38 = qword_10430;
    if (!qword_10430)
    {
      v38 = +[NSLocale currentLocale];
    }

    v39 = [(NSString *)[(NSLocale *)v38 countryCode] isEqualToString:@"JP"];
    if (v5 == 1)
    {
      v40 = v16 & v39;
    }

    else
    {
      v40 = 0;
    }

    v41 = qword_10430;
    if (!qword_10430)
    {
      v41 = +[NSLocale currentLocale];
    }

    if (![(NSString *)[(NSLocale *)v41 countryCode] isEqualToString:@"HK"])
    {
      v42 = qword_10430;
      if (!qword_10430)
      {
        v42 = +[NSLocale currentLocale];
      }

      v230 &= [(NSString *)[(NSLocale *)v42 countryCode] isEqualToString:@"MO"];
    }

    v272 = 0u;
    v273 = 0u;
    v270 = 0u;
    v271 = 0u;
    v221 = v23;
    v232 = [obj countByEnumeratingWithState:&v270 objects:v311 count:16];
    if (v232)
    {
      v213 = v39;
      v224 = 0;
      v222 = *v271;
      v216 = v12;
      v217 = v6;
      while (1)
      {
        v43 = 0;
        do
        {
          if (*v271 != v222)
          {
            objc_enumerationMutation(obj);
          }

          v236 = v43;
          v44 = [*(*(&v270 + 1) + 8 * v43) stringByReplacingOccurrencesOfString:@"ja_JP-50On" withString:@"ja_JP-Kana"];
          if ([v44 hasPrefix:@"ko_KO"])
          {
            v44 = [v44 stringByReplacingOccurrencesOfString:@"ko_KO" withString:@"ko_KR"];
          }

          if (v228)
          {
            v44 = [v44 stringByReplacingOccurrencesOfString:@"vi_VN" withString:@"vi_VN-Telex"];
          }

          if (v6 != 3)
          {
            v47 = [v44 stringByReplacingOccurrencesOfString:@"Japanese3x3Flick" withString:@"Kana-Flick"];
            v48 = @"Kana";
LABEL_87:
            v46 = [objc_msgSend(v47 stringByReplacingOccurrencesOfString:@"Japanese3x3" withString:{v48), "stringByReplacingOccurrencesOfString:withString:", @"Japanese-50On", v48}];
            goto LABEL_88;
          }

          if (!v218)
          {
            v47 = [v44 stringByReplacingOccurrencesOfString:@"Japanese3x3Flick" withString:@"Kana-RTL-Flick"];
            v48 = @"Kana-RTL";
            goto LABEL_87;
          }

          v45 = [objc_msgSend(objc_msgSend(v44 stringByReplacingOccurrencesOfString:@"Japanese3x3Flick" withString:{@"Kana-Flick", "stringByReplacingOccurrencesOfString:withString:", @"Japanese3x3", @"Kana", "stringByReplacingOccurrencesOfString:withString:", @"Japanese-50On", @"Kana"}];
          if ([(__CFString *)v45 isEqualToString:@"ja_JP-Kana"])
          {
            v46 = @"ja_JP-Kana@sw=Kana";
          }

          else
          {
            v46 = v45;
          }

LABEL_88:
          if ([(__CFString *)v46 hasPrefix:@"zh_Han"])
          {
            if (((-[__CFString hasPrefix:](v46, "hasPrefix:", @"zh_Hans-Pinyin") & 1) != 0 || -[__CFString hasPrefix:](v46, "hasPrefix:", @"zh_Hant-Pinyin")) && [sub_590C(v46) hasPrefix:@"AZERTY"])
            {
              if ([(__CFString *)v46 hasPrefix:@"zh_Hans-Pinyin"])
              {
                v49 = @"AZERTY-Pinyin-Simplified";
              }

              else
              {
                v49 = @"AZERTY-Pinyin-Traditional";
              }

              v46 = sub_5A48(v46, v49);
            }

            v268 = 0u;
            v269 = 0u;
            v266 = 0u;
            v267 = 0u;
            v243 = [&off_DC60 countByEnumeratingWithState:&v266 objects:v310 count:16];
            if (v243)
            {
              v240 = *v267;
              do
              {
                v50 = 0;
                do
                {
                  if (*v267 != v240)
                  {
                    objc_enumerationMutation(&off_DC60);
                  }

                  v247 = v50;
                  v51 = *(*(&v266 + 1) + 8 * v50);
                  v262 = 0u;
                  v263 = 0u;
                  v264 = 0u;
                  v265 = 0u;
                  v52 = [&off_DD38 countByEnumeratingWithState:&v262 objects:v309 count:16];
                  if (v52)
                  {
                    v53 = v52;
                    v54 = *v263;
                    do
                    {
                      for (j = 0; j != v53; j = j + 1)
                      {
                        if (*v263 != v54)
                        {
                          objc_enumerationMutation(&off_DD38);
                        }

                        v56 = *(*(&v262 + 1) + 8 * j);
                        v57 = [NSString stringWithFormat:@"zh_%@-%@", v56, v51];
                        v58 = sub_590C(v46);
                        if (-[__CFString hasPrefix:](v46, "hasPrefix:", v57) && [v58 isEqualToString:v51])
                        {
                          v46 = sub_5A48(v46, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%@", v51, [&off_DD38 objectForKey:v56]));
                        }
                      }

                      v53 = [&off_DD38 countByEnumeratingWithState:&v262 objects:v309 count:16];
                    }

                    while (v53);
                  }

                  v50 = v247 + 1;
                }

                while ((v247 + 1) != v243);
                v243 = [&off_DC60 countByEnumeratingWithState:&v266 objects:v310 count:16];
              }

              while (v243);
            }

            if ([(__CFString *)v46 hasPrefix:@"zh_Hant-Cangjie"])
            {
              v59 = [(__CFString *)v46 stringByReplacingOccurrencesOfString:@"sw=Pinyin" withString:@"sw=Cangjie-QWERTY"];
              v46 = v59;
              v23 = v221;
              v12 = v216;
              v6 = v217;
              if (v215)
              {
                v46 = [-[__CFString stringByReplacingOccurrencesOfString:withString:](v59 stringByReplacingOccurrencesOfString:@"sw=Cangjie" withString:{@"sw=Sucheng", "stringByReplacingOccurrencesOfString:withString:", @"zh_Hant-Cangjie", @"zh_Hant-Sucheng"}];
              }

              if ([(__CFString *)v46 rangeOfString:@"sw=Sucheng"]!= 0x7FFFFFFFFFFFFFFFLL)
              {
                v46 = [(__CFString *)v46 stringByReplacingOccurrencesOfString:@"zh_Hant-Cangjie" withString:@"zh_Hant-Sucheng"];
              }
            }

            else
            {
              v23 = v221;
              v12 = v216;
              v6 = v217;
            }
          }

          if ([(__CFString *)v46 hasPrefix:@"Cherokee"])
          {
            v46 = [(__CFString *)v46 stringByReplacingOccurrencesOfString:@"US" withString:@"Cherokee-Nation"];
          }

          if (v12 && (([(__CFString *)v46 isEqualToString:@"hi"]& 1) != 0 || [(__CFString *)v46 hasPrefix:@"hi@"]))
          {
            [v23 addObject:@"hi-Translit"];
          }

          if (v230)
          {
            if ([(__CFString *)v46 hasPrefix:@"zh_Hant"])
            {
              v260 = 0u;
              v261 = 0u;
              v258 = 0u;
              v259 = 0u;
              v60 = [&off_DC78 countByEnumeratingWithState:&v258 objects:v308 count:16];
              if (v60)
              {
                v61 = v60;
                v62 = *v259;
                do
                {
                  for (k = 0; k != v61; k = k + 1)
                  {
                    if (*v259 != v62)
                    {
                      objc_enumerationMutation(&off_DC78);
                    }

                    if ([(__CFString *)v46 hasPrefix:*(*(&v258 + 1) + 8 * k)])
                    {
                      v46 = [(__CFString *)v46 stringByReplacingOccurrencesOfString:@"zh_Hant-" withString:@"yue_Hant-"];
                    }
                  }

                  v61 = [&off_DC78 countByEnumeratingWithState:&v258 objects:v308 count:16];
                }

                while (v61);
              }
            }
          }

          [v23 addObject:v46];
          if (v226)
          {
            v224 |= [(__CFString *)v46 hasPrefix:@"ja_JP-Romaji"];
            v64 = v224 ^ 1;
          }

          else
          {
            v64 = 1;
          }

          v43 = v236 + 1;
        }

        while (v236 + 1 != v232);
        v232 = [obj countByEnumeratingWithState:&v270 objects:v311 count:16];
        if (!v232)
        {
          v37 = &KeyboardMigrator__metaData;
          if (v64)
          {
            break;
          }

          v334 = 0;
          v335 = &v334;
          v336 = 0x3052000000;
          v337 = sub_5B0C;
          v338 = sub_5B1C;
          v339 = 0;
          v256[0] = _NSConcreteStackBlock;
          v256[1] = 3221225472;
          v256[2] = sub_5B28;
          v256[3] = &unk_C2B8;
          v257 = v213;
          v256[4] = &v334;
          v70 = [v23 indexesOfObjectsPassingTest:v256];
          if ([v70 count])
          {
            [v23 removeObjectsAtIndexes:v70];
            v71 = [v70 firstIndex];
          }

          else
          {
            v71 = [v23 count];
          }

          v72 = v71;
          v65 = applicationID;
          if (v335[5])
          {
            v73 = [NSString stringWithFormat:@"en_JP@hw=%@;sw=QWERTY-JIS", v335[5]];
          }

          else
          {
            v73 = @"en_JP@sw=QWERTY-JIS";
          }

          [v23 insertObject:v73 atIndex:v72];
LABEL_160:
          _Block_object_dispose(&v334, 8);
          goto LABEL_161;
        }
      }
    }

    v65 = applicationID;
    if (v40)
    {
      v334 = 0;
      v335 = &v334;
      v336 = 0x3052000000;
      v337 = sub_5B0C;
      v338 = sub_5B1C;
      v339 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&v331 = 0x3052000000;
      *(&v331 + 1) = sub_5B0C;
      *&v332 = sub_5B1C;
      *(&v332 + 1) = 0;
      v255[0] = _NSConcreteStackBlock;
      v255[1] = 3221225472;
      v255[2] = sub_5D10;
      v255[3] = &unk_C2E0;
      v255[4] = &v334;
      v255[5] = buf;
      v66 = [v23 indexesOfObjectsPassingTest:v255];
      if ([v66 count])
      {
        [v23 removeObjectsAtIndexes:v66];
        v67 = [v66 firstIndex];
        v68 = +[NSMutableArray array];
        if ([v335[5] length])
        {
          [v68 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"hw=%@", v335[5])}];
        }

        if ([*(*&buf[8] + 40) length])
        {
          [v68 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"sw=%@", *(*&buf[8] + 40))}];
        }

        if ([v68 count])
        {
          v69 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"en_JP@%@", [v68 componentsJoinedByString:@";"]);
        }

        else
        {
          v69 = @"en_JP";
        }

        [v23 insertObject:v69 atIndex:v67];
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_160;
    }

LABEL_161:
    if (!_os_feature_enabled_impl())
    {
LABEL_347:
      if (_os_feature_enabled_impl())
      {
        base_props = v37[14].base_props;
        if (!base_props)
        {
          base_props = +[NSLocale currentLocale];
        }

        v246 = base_props;
        v250 = [(NSLocale *)base_props regionCode];
        if ([(NSString *)v250 length])
        {
          if (([&off_DC90 containsObject:v250] & 1) == 0)
          {
            v188 = CPCopySharedResourcesPreferencesDomainForDomain();
            if (!v188 || (v189 = CFPreferencesCopyAppValue(@"ArabicTransliterationMigrationVersion", v188)) == 0 || (v190 = v189, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v190 unsignedIntegerValue])
            {
              v191 = CPCopySharedResourcesPreferencesDomainForDomain();
              if (v191)
              {
                v192 = v191;
                CFPreferencesSetAppValue(@"ArabicTransliterationMigrationVersion", [NSNumber numberWithUnsignedInteger:1], v191);
                CFPreferencesAppSynchronize(v192);
              }

              v333 = 0u;
              v332 = 0u;
              v331 = 0u;
              *buf = 0u;
              v193 = [v23 countByEnumeratingWithState:buf objects:&v334 count:16];
              if (v193)
              {
                v194 = v193;
                v195 = 0;
                v196 = 0;
                v197 = 0;
                v198 = *v331;
                while (1)
                {
                  for (m = 0; m != v194; ++m)
                  {
                    if (*v331 != v198)
                    {
                      objc_enumerationMutation(v23);
                    }

                    if ([TIInputModeGetLanguage() isEqualToString:@"ar"])
                    {
                      if ([TIInputModeGetNormalizedIdentifier() isEqualToString:@"ar-Translit"])
                      {
                        goto LABEL_408;
                      }

                      v197 = 1;
                    }

                    else
                    {
                      LanguageWithRegion = TIInputModeGetLanguageWithRegion();
                      SWLayout = TIInputModeGetSWLayout();
                      if (SWLayout)
                      {
                        v202 = SWLayout;
                        if (v196)
                        {
                          v196 = 1;
                          if (v195)
                          {
                            goto LABEL_376;
                          }
                        }

                        else
                        {
                          v196 = [SWLayout containsString:@"AZERTY"];
                          if (v195)
                          {
                            goto LABEL_376;
                          }
                        }

                        v195 = [v202 containsString:@"QWERTY"];
                      }

                      else
                      {
                        if ([LanguageWithRegion hasPrefix:@"en_"] & 1) != 0 || (objc_msgSend(LanguageWithRegion, "isEqualToString:", @"fr_CA"))
                        {
LABEL_376:
                          v195 = 1;
                          continue;
                        }

                        if (([LanguageWithRegion isEqualToString:@"fr_BE"] & 1) != 0 || objc_msgSend(LanguageWithRegion, "isEqualToString:", @"fr_FR"))
                        {
                          v196 = 1;
                        }
                      }
                    }
                  }

                  v194 = [v23 countByEnumeratingWithState:buf objects:&v334 count:16];
                  if (!v194)
                  {
                    if (v197)
                    {
                      if (v196)
                      {
                        v203 = @"ar-Translit@sw=AZERTY-Arabic";
                      }

                      else
                      {
                        v203 = @"ar-Translit";
                      }

                      if ((v196 & 1 & v195) == 1)
                      {
                        v203 = @"ar-Translit@sw=AZERTY-Arabic";
                        v204 = v23;
                        if (!-[NSString isEqualToString:](-[NSLocale languageCode](v246, "languageCode"), "isEqualToString:", @"fr") && ![&off_DCA8 containsObject:v250])
                        {
                          v203 = @"ar-Translit";
                        }
                      }

                      else
                      {
                        v204 = v23;
                      }

                      if ([objc_msgSend(v204 "lastObject")])
                      {
                        [v204 insertObject:v203 atIndex:{objc_msgSend(v204, "count") - 1}];
                      }

                      else
                      {
                        [v204 addObject:v203];
                      }
                    }

                    break;
                  }
                }
              }
            }
          }
        }

LABEL_408:
        v65 = applicationID;
      }

      CFPreferencesSetAppValue(@"AppleKeyboards", v23, v65);
      CFPreferencesAppSynchronize(v65);
      CFRelease(obj);
      [+[TIPreferencesController sharedPreferencesController](TIPreferencesController "sharedPreferencesController")];
      goto LABEL_410;
    }

    v74 = CFPreferencesCopyAppValue(@"MultilingualSetsMigrationVersion", @"com.apple.migration");
    if (v74)
    {
      v75 = v74;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v75 unsignedIntegerValue])
        {
LABEL_340:
          if ([v23 count])
          {
            v185 = 0;
            while (1)
            {
              [v23 objectAtIndexedSubscript:v185];
              if ([TIInputModeGetNormalizedIdentifier() isEqualToString:@"ko_KR"])
              {
                ComponentsFromIdentifier = TIInputModeGetComponentsFromIdentifier();
                if ([objc_msgSend(ComponentsFromIdentifier objectForKeyedSubscript:{@"sw", "isEqualToString:", @"Korean-With-QWERTY"}])
                {
                  if (![objc_msgSend(ComponentsFromIdentifier objectForKeyedSubscript:{@"ml", "length"}])
                  {
                    break;
                  }
                }
              }

              if (++v185 >= [v23 count])
              {
                goto LABEL_346;
              }
            }

            if (v185 != 0x7FFFFFFFFFFFFFFFLL)
            {
              *buf = 0u;
              v331 = 0u;
              v332 = 0u;
              v333 = 0u;
              v205 = [v23 countByEnumeratingWithState:buf objects:&v334 count:16];
              if (v205)
              {
                v206 = v205;
                v207 = *v331;
                v208 = 1;
                do
                {
                  for (n = 0; n != v206; ++n)
                  {
                    if (*v331 != v207)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v210 = [TIInputModeGetComponentsFromIdentifier() objectForKeyedSubscript:@"ml"];
                    if ([v210 length])
                    {
                      v211 = [v210 integerValue];
                      if (v208 <= v211 + 1)
                      {
                        v208 = v211 + 1;
                      }
                    }
                  }

                  v206 = [v23 countByEnumeratingWithState:buf objects:&v334 count:16];
                }

                while (v206);
              }

              else
              {
                v208 = 1;
              }

              v212 = [NSString stringWithFormat:@"%u", v208];
              v334 = sub_5E34([v23 objectAtIndexedSubscript:v185], v212);
              v335 = sub_5E34(@"en_US", v212);
              [v23 replaceObjectsInRange:v185 withObjectsFromArray:{1, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v334, 2)}];
            }
          }

LABEL_346:
          v65 = applicationID;
          v37 = &KeyboardMigrator__metaData;
          goto LABEL_347;
        }
      }
    }

    v306 = 0u;
    v305 = 0u;
    v304 = 0u;
    v303 = 0u;
    v76 = [v23 countByEnumeratingWithState:&v303 objects:&v334 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v304;
      do
      {
        for (ii = 0; ii != v77; ++ii)
        {
          if (*v304 != v78)
          {
            objc_enumerationMutation(v23);
          }

          if ([objc_msgSend(TIInputModeGetComponentsFromIdentifier() objectForKeyedSubscript:{@"ml", "length"}])
          {
            goto LABEL_340;
          }
        }

        v77 = [v23 countByEnumeratingWithState:&v303 objects:&v334 count:16];
      }

      while (v77);
    }

    CFPreferencesSetAppValue(@"MultilingualSetsMigrationVersion", &off_DDB0, @"com.apple.migration");
    CFPreferencesAppSynchronize(@"com.apple.migration");
    if (qword_10420 != -1)
    {
      sub_614C();
    }

    v80 = qword_10428;
    if (os_log_type_enabled(qword_10428, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v23;
      _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "Beginning migration to multilingual sets with previous input modes %@", buf, 0xCu);
    }

    v241 = +[NSMutableArray array];
    v81 = +[NSMutableDictionary dictionary];
    v244 = +[NSMutableDictionary dictionary];
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    v302 = 0u;
    v82 = [+[TIInputModeController sharedInputModeController](TIInputModeController "sharedInputModeController")];
    v83 = [v82 countByEnumeratingWithState:&v299 objects:buf count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v300;
      v86 = TIInputModePropertiesSupportsMultilingual;
      v87 = TIInputModePropertiesMultilingualOnly;
      v248 = TIInputModePropertiesSupportedMultiscriptInputModes;
      v237 = TIInputModePropertiesRequiredMultilingualInputModes;
      v233 = TIInputModePropertiesPairedMultilingualInputMode;
      do
      {
        for (jj = 0; jj != v84; jj = jj + 1)
        {
          if (*v300 != v85)
          {
            objc_enumerationMutation(v82);
          }

          v89 = *(*(&v299 + 1) + 8 * jj);
          if ([objc_msgSend(TIGetInputModeProperties() objectForKeyedSubscript:{v86), "BOOLValue"}])
          {
            v90 = [objc_msgSend(TIGetInputModeProperties() objectForKeyedSubscript:{v87), "BOOLValue"}];
            v91 = TIGetInputModeProperties();
            if (v90)
            {
              v92 = [v91 objectForKeyedSubscript:v237];
              v93 = [TIGetInputModeProperties() objectForKeyedSubscript:v233];
              if ([v92 count])
              {
                v328[0] = @"required";
                v328[1] = @"paired";
                v94 = &stru_CEE0;
                if (v93)
                {
                  v94 = v93;
                }

                v329[0] = v92;
                v329[1] = v94;
                [v81 setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v329, v328, 2), v89}];
              }

              if ([(__CFString *)v93 length])
              {
                [v244 setObject:v89 forKeyedSubscript:v93];
              }
            }

            else if (![v91 objectForKeyedSubscript:v248])
            {
              [v241 addObject:v89];
            }
          }
        }

        v84 = [v82 countByEnumeratingWithState:&v299 objects:buf count:16];
      }

      while (v84);
    }

    v95 = +[NSMutableArray array];
    v238 = +[NSMutableDictionary dictionary];
    v295 = 0u;
    v296 = 0u;
    v297 = 0u;
    v298 = 0u;
    v96 = [v221 countByEnumeratingWithState:&v295 objects:v327 count:16];
    if (v96)
    {
      v97 = v96;
      v98 = *v296;
      do
      {
        for (kk = 0; kk != v97; kk = kk + 1)
        {
          if (*v296 != v98)
          {
            objc_enumerationMutation(v221);
          }

          v100 = *(*(&v295 + 1) + 8 * kk);
          NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
          v102 = v95;
          if (([v241 containsObject:NormalizedIdentifier] & 1) == 0)
          {
            if (![v81 objectForKey:NormalizedIdentifier])
            {
              if (![v244 objectForKey:NormalizedIdentifier])
              {
                continue;
              }

              NormalizedIdentifier = [v244 objectForKeyedSubscript:NormalizedIdentifier];
            }

            v103 = [v238 objectForKeyedSubscript:NormalizedIdentifier];
            if (v103)
            {
              v102 = v103;
            }

            else
            {
              v102 = +[NSMutableArray array];
              [v238 setObject:v102 forKeyedSubscript:NormalizedIdentifier];
            }
          }

          [v102 addObject:v100];
        }

        v97 = [v221 countByEnumeratingWithState:&v295 objects:v327 count:16];
      }

      while (v97);
    }

    v249 = v81;
    v104 = +[NSMutableDictionary dictionary];
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    v294 = 0u;
    v105 = [v95 countByEnumeratingWithState:&v291 objects:v326 count:16];
    if (v105)
    {
      v106 = v105;
      v107 = *v292;
      do
      {
        for (mm = 0; mm != v106; mm = mm + 1)
        {
          if (*v292 != v107)
          {
            objc_enumerationMutation(v95);
          }

          v109 = *(*(&v291 + 1) + 8 * mm);
          v110 = TIInputModeGetNormalizedIdentifier();
          if (qword_10440)
          {
            v111 = [qword_10440 objectForKeyedSubscript:TIInputModeGetNormalizedIdentifier()];
          }

          else
          {
            v111 = UIKeyboardSimulatedImplicitInputModeDetectionForPrimaryInputMode();
          }

          v112 = v111;
          if ([v111 count])
          {
            v290[0] = _NSConcreteStackBlock;
            v290[1] = 3221225472;
            v290[2] = sub_5DD8;
            v290[3] = &unk_C308;
            v290[4] = v110;
            v290[5] = v241;
            v113 = [v112 indexesOfObjectsPassingTest:v290];
            if ([v113 count])
            {
              [v104 setObject:objc_msgSend(v112 forKeyedSubscript:{"objectsAtIndexes:", v113), v109}];
            }
          }
        }

        v106 = [v95 countByEnumeratingWithState:&v291 objects:v326 count:16];
      }

      while (v106);
    }

    v242 = [v221 mutableCopy];
    if ([v104 count])
    {
      v324 = 0u;
      v323 = 0u;
      v322 = 0u;
      v321 = 0u;
      v114 = [v104 countByEnumeratingWithState:&v321 objects:v325 count:16];
      if (v114)
      {
        v115 = v114;
        v116 = *v322;
        v117 = 1;
        do
        {
          for (nn = 0; nn != v115; nn = nn + 1)
          {
            if (*v322 != v116)
            {
              objc_enumerationMutation(v104);
            }

            v119 = *(*(&v321 + 1) + 8 * nn);
            v120 = [objc_msgSend(v104 objectForKeyedSubscript:{v119), "firstObject"}];
            if ([v120 length])
            {
              v121 = [NSString stringWithFormat:@"%u", v117];
              v122 = sub_5E34(v119, v121);
              v123 = sub_5E34(v120, v121);
              v124 = [v242 indexOfObject:v119];
              if (v124 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v125 = v124;
                [v242 replaceObjectAtIndex:v124 withObject:v122];
                [v242 insertObject:v123 atIndex:v125 + 1];
              }

              v117 = (v117 + 1);
            }
          }

          v115 = [v104 countByEnumeratingWithState:&v321 objects:v325 count:16];
        }

        while (v115);
      }

      goto LABEL_316;
    }

    v126 = v238;
    if (![v238 count] && objc_msgSend(v95, "count") == &dword_0 + 2)
    {
      v127 = [v95 objectAtIndexedSubscript:0];
      v128 = [v95 objectAtIndexedSubscript:1];
      Language = TIInputModeGetLanguage();
      if (([Language isEqualToString:TIInputModeGetLanguage()] & 1) == 0)
      {
        v130 = sub_590C(v127);
        v131 = sub_590C(v128);
        if (v130)
        {
          v132 = v131;
          if (v131)
          {
            v245 = v127;
            v324 = 0u;
            v323 = 0u;
            v322 = 0u;
            v321 = 0u;
            v133 = [v95 countByEnumeratingWithState:&v321 objects:v325 count:16];
            v234 = v132;
            v239 = v130;
            if (v133)
            {
              v134 = v133;
              v135 = *v322;
              v136 = 0x7FFFFFFFFFFFFFFFLL;
              do
              {
                for (i1 = 0; i1 != v134; i1 = i1 + 1)
                {
                  if (*v322 != v135)
                  {
                    objc_enumerationMutation(v95);
                  }

                  v138 = *(*(&v321 + 1) + 8 * i1);
                  v139 = sub_5E34(v138, @"1");
                  v140 = [v242 indexOfObject:v138];
                  if (v140 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v141 = v140;
                    [v242 replaceObjectAtIndex:v140 withObject:v139];
                    v136 = v141 + 1;
                  }
                }

                v134 = [v95 countByEnumeratingWithState:&v321 objects:v325 count:16];
              }

              while (v134);
            }

            else
            {
              v136 = 0x7FFFFFFFFFFFFFFFLL;
            }

            Variant = TIInputModeGetVariant();
            v170 = TIInputModeGetVariant();
            if (![v239 isEqualToString:v234] || (v170 ? (v171 = v170) : (v171 = &stru_CEE0), Variant ? (v172 = Variant) : (v172 = &stru_CEE0), (-[__CFString isEqualToString:](v172, "isEqualToString:", v171) & 1) == 0))
            {
              if (v136 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v173 = sub_5E34(v128, @"2");
                v174 = sub_5E34(v245, @"2");
                [v242 insertObject:v173 atIndex:v136];
                [v242 insertObject:v174 atIndex:v136 + 1];
              }
            }
          }
        }
      }

      goto LABEL_316;
    }

    if (![v238 count] || objc_msgSend(v95, "count") != &dword_0 + 1)
    {
LABEL_316:
      v23 = v242;
      v175 = v221;
      if ([v242 count])
      {
        v176 = 0;
        while (1)
        {
          v177 = [v242 objectAtIndexedSubscript:v176];
          if ([TIInputModeGetNormalizedIdentifier() isEqualToString:@"hi_Latn"])
          {
            if (([v177 containsString:@"ml="] & 1) == 0)
            {
              break;
            }
          }

          if (++v176 >= [v242 count])
          {
            goto LABEL_336;
          }
        }

        if (![v242 count])
        {
          goto LABEL_329;
        }

        v178 = 0;
        while (1)
        {
          v179 = [objc_msgSend(v249 objectForKeyedSubscript:{@"hi_Latn", "objectForKeyedSubscript:", @"required"}];
          [v242 objectAtIndexedSubscript:v178];
          if ([v179 containsObject:TIInputModeGetNormalizedIdentifier()])
          {
            if (![objc_msgSend(v242 objectAtIndexedSubscript:{v178), "containsString:", @"ml="}])
            {
              break;
            }
          }

          if (++v178 >= [v242 count])
          {
            goto LABEL_329;
          }
        }

        if (v178 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v316 = sub_5E34([v242 objectAtIndexedSubscript:v178], @"1");
          v317 = sub_5E34(@"hi_Latn", @"1");
          v318 = sub_5E34(@"hi-Translit", @"1");
          [v242 replaceObjectsInRange:v178 withObjectsFromArray:{1, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v316, 3)}];
          [v242 removeObject:v177];
        }

        else
        {
LABEL_329:
          v180 = sub_590C(v177);
          if (v180)
          {
            v181 = v180;
          }

          else
          {
            v181 = @"QWERTY";
          }

          v182 = sub_5BD4(v177);
          v183 = @"Automatic";
          if (v182)
          {
            v183 = v182;
          }

          v316 = sub_5E34([NSString stringWithFormat:@"en_IN@sw=%@;hw=%@", v181, v183], @"1");
          v317 = sub_5E34(@"hi_Latn", @"1");
          v318 = sub_5E34(@"hi-Translit", @"1");
          [v242 replaceObjectsInRange:v176 withObjectsFromArray:{1, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v316, 3)}];
        }

        v175 = v221;
      }

LABEL_336:
      if (qword_10420 != -1)
      {
        sub_614C();
      }

      v184 = qword_10428;
      if (os_log_type_enabled(qword_10428, OS_LOG_TYPE_DEFAULT))
      {
        *v312 = 138412546;
        v313 = v175;
        v314 = 2112;
        v315 = v242;
        _os_log_impl(&dword_0, v184, OS_LOG_TYPE_DEFAULT, "Completed migration to multilingual sets with previous input modes %@ and new input modes %@", v312, 0x16u);
      }

      goto LABEL_340;
    }

    v225 = +[NSMutableSet set];
    v223 = +[NSMutableArray array];
    v219 = +[NSMutableArray array];
    v286 = 0u;
    v287 = 0u;
    v288 = 0u;
    v289 = 0u;
    v142 = v249;
    v229 = [v238 countByEnumeratingWithState:&v286 objects:v325 count:16];
    if (v229)
    {
      v227 = *v287;
      do
      {
        v143 = 0;
        do
        {
          if (*v287 != v227)
          {
            objc_enumerationMutation(v126);
          }

          v231 = *(*(&v286 + 1) + 8 * v143);
          v235 = v143;
          v144 = [v126 objectForKeyedSubscript:?];
          v282 = 0u;
          v283 = 0u;
          v284 = 0u;
          v285 = 0u;
          v145 = [v144 countByEnumeratingWithState:&v282 objects:&v321 count:16];
          if (v145)
          {
            v146 = v145;
            v147 = *v283;
            while (2)
            {
              for (i2 = 0; i2 != v146; ++i2)
              {
                if (*v283 != v147)
                {
                  objc_enumerationMutation(v144);
                }

                v149 = TIInputModeGetNormalizedIdentifier();
                v150 = [v142 objectForKeyedSubscript:v149];
                if (v150 || (v150 = [v142 objectForKeyedSubscript:{objc_msgSend(v244, "objectForKeyedSubscript:", v149)}]) != 0)
                {
                  v151 = [v150 objectForKeyedSubscript:@"required"];
                  v278 = 0u;
                  v279 = 0u;
                  v280 = 0u;
                  v281 = 0u;
                  v152 = [v95 countByEnumeratingWithState:&v278 objects:v320 count:16];
                  if (v152)
                  {
                    v153 = v152;
                    v154 = *v279;
LABEL_266:
                    v155 = 0;
                    while (1)
                    {
                      if (*v279 != v154)
                      {
                        objc_enumerationMutation(v95);
                      }

                      v156 = *(*(&v278 + 1) + 8 * v155);
                      if ([v151 containsObject:TIInputModeGetNormalizedIdentifier()])
                      {
                        break;
                      }

                      if (v153 == ++v155)
                      {
                        v153 = [v95 countByEnumeratingWithState:&v278 objects:v320 count:16];
                        if (v153)
                        {
                          goto LABEL_266;
                        }

                        goto LABEL_274;
                      }
                    }

                    if (!v156)
                    {
                      goto LABEL_274;
                    }

                    [v225 addObject:v156];
                    v157 = v231;
                    goto LABEL_278;
                  }
                }

LABEL_274:
                v142 = v249;
              }

              v146 = [v144 countByEnumeratingWithState:&v282 objects:&v321 count:16];
              if (v146)
              {
                continue;
              }

              break;
            }
          }

          v157 = v231;
          [v223 addObject:v231];
LABEL_278:
          v126 = v238;
          if (([v157 isEqualToString:@"hi_Latn"] & 1) == 0 && (objc_msgSend(v157, "isEqualToString:", @"hi-Translit") & 1) == 0)
          {
            [v219 addObject:v157];
          }

          v143 = v235 + 1;
          v142 = v249;
        }

        while ((v235 + 1) != v229);
        v229 = [v238 countByEnumeratingWithState:&v286 objects:v325 count:16];
      }

      while (v229);
    }

    [v126 removeObjectsForKeys:v223];
    if (qword_10438)
    {
      if ([qword_10438 BOOLValue])
      {
LABEL_286:
        if ([v225 count] == &dword_0 + 1 && objc_msgSend(v126, "count") && objc_msgSend(v126, "count") <= 2)
        {
          v158 = [v225 anyObject];
          v159 = [NSMutableArray arrayWithObject:v158];
          v160 = [NSMutableArray arrayWithObject:sub_5E34(v158, @"1")];
          v274 = 0u;
          v275 = 0u;
          v276 = 0u;
          v277 = 0u;
          v161 = [v126 countByEnumeratingWithState:&v274 objects:v319 count:16];
          if (v161)
          {
            v162 = v161;
            v163 = *v275;
            do
            {
              for (i3 = 0; i3 != v162; i3 = i3 + 1)
              {
                if (*v275 != v163)
                {
                  objc_enumerationMutation(v238);
                }

                v165 = *(*(&v274 + 1) + 8 * i3);
                -[NSMutableArray addObjectsFromArray:](v159, "addObjectsFromArray:", [v238 objectForKeyedSubscript:v165]);
                [(NSMutableArray *)v160 addObject:sub_5E34(v165, @"1")];
                v166 = [objc_msgSend(v249 objectForKeyedSubscript:{v165), "objectForKeyedSubscript:", @"paired"}];
                if ([v166 length])
                {
                  [(NSMutableArray *)v160 addObject:sub_5E34(v166, @"1")];
                }
              }

              v162 = [v238 countByEnumeratingWithState:&v274 objects:v319 count:16];
            }

            while (v162);
          }

          if ([(NSMutableArray *)v159 count]>= 2)
          {
            v167 = 1;
            do
            {
              [v242 removeObject:{-[NSMutableArray objectAtIndexedSubscript:](v159, "objectAtIndexedSubscript:", v167++)}];
            }

            while (v167 < [(NSMutableArray *)v159 count]);
          }

          v168 = [v242 indexOfObject:{-[NSMutableArray objectAtIndexedSubscript:](v159, "objectAtIndexedSubscript:", 0)}];
          if (v168 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v242 replaceObjectsInRange:v168 withObjectsFromArray:{1, v160}];
          }
        }

        goto LABEL_316;
      }
    }

    else if (isH13ANEPresentOnIOS())
    {
      goto LABEL_286;
    }

    [v126 removeObjectsForKeys:v219];
    goto LABEL_286;
  }
}

id sub_590C(void *a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [a1 componentsSeparatedByCharactersInSet:{+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"@;", 0)}];
  result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if ([v6 hasPrefix:@"sw="])
        {
          return [v6 substringFromIndex:{objc_msgSend(@"sw=", "length")}];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

id sub_5A48(void *a1, uint64_t a2)
{
  v4 = [a1 rangeOfString:@"sw="];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1;
  }

  v6 = v4;
  v7 = [a1 rangeOfString:@";" options:0 range:{v6, objc_msgSend(a1, "length") - v6}];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [a1 length];
  }

  v8 = (v7 - v6);
  v9 = [@"sw=" stringByAppendingString:a2];

  return [a1 stringByReplacingCharactersInRange:v6 withString:{v8, v9}];
}

id sub_5B28(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    result = [TIInputModeGetBaseLanguage() isEqualToString:@"en"];
    if (!result)
    {
      return result;
    }

    if (([sub_590C(a2) isEqualToString:@"QWERTY"] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  result = [TIInputModeGetLanguageWithRegion() isEqualToString:@"en_JP"];
  if (result)
  {
    result = [sub_590C(a2) isEqualToString:@"QWERTY"];
    if (result)
    {
LABEL_7:
      *(*(*(a1 + 32) + 8) + 40) = sub_5BD4(a2);
      return &dword_0 + 1;
    }
  }

  return result;
}

id sub_5BD4(void *a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [a1 componentsSeparatedByCharactersInSet:{+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"@;", 0)}];
  result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if ([v6 hasPrefix:@"hw="])
        {
          return [v6 substringFromIndex:{objc_msgSend(@"hw=", "length")}];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

id sub_5D10(uint64_t a1, void *a2)
{
  v4 = [TIInputModeGetLanguageWithRegion() isEqualToString:@"en_US"];
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 40) = sub_5BD4(a2);
    *(*(*(a1 + 40) + 8) + 40) = sub_590C(a2);
  }

  return v4;
}

uint64_t sub_5D84()
{
  v0 = CFPreferencesCopyAppValue(@"LastSystemVersion", @"com.apple.migration");
  if (!v0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v1 = v0;
  v2 = [v0 integerValue];
  CFRelease(v1);
  return v2;
}

id sub_5DD8(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    return 0;
  }

  v5 = *(a1 + 40);

  return [v5 containsObject:a2];
}

id sub_5E34(void *a1, uint64_t a2)
{
  if ([objc_msgSend(TIInputModeGetComponentsFromIdentifier() objectForKeyedSubscript:{@"ml", "length"}])
  {
    return a1;
  }

  if ([a1 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"@ml=%@";
  }

  else
  {
    v5 = @";ml=%@";
  }

  return [a1 stringByAppendingFormat:v5, a2];
}

uint64_t sub_5EB8(void *a1)
{
  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryRecent"])
  {
    v2 = &EMFEmojiCategoryRecents;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryPeople"])
  {
    v2 = &EMFEmojiCategoryPeople;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryNature"])
  {
    v2 = &EMFEmojiCategoryNature;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryFoodAndDrink"])
  {
    v2 = &EMFEmojiCategoryFoodAndDrink;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryActivity"])
  {
    v2 = &EMFEmojiCategoryActivity;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryTravelAndPlaces"])
  {
    v2 = &EMFEmojiCategoryTravelAndPlaces;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryFlags"])
  {
    v2 = &EMFEmojiCategoryFlags;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryObjects"])
  {
    v2 = &EMFEmojiCategoryObjects;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategorySymbols"])
  {
    return EMFEmojiCategorySymbols;
  }

  else
  {
    return 0;
  }
}

id sub_5FFC(uint64_t a1, void *a2, void *a3)
{
  result = sub_5EB8(a2);
  if (result)
  {
    v6 = result;
    result = [a3 objectForKey:@"LastViewedIndexKey"];
    if (result)
    {
      v7 = result;
      v8 = *(a1 + 32);

      return [v8 setObject:v7 forKey:v6];
    }
  }

  return result;
}

id sub_608C(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) isEqualToArray:a3];
    if (result)
    {
      v6 = +[TIPreferencesController sharedPreferencesController];

      return [v6 setAutocorrectionEnabled:1];
    }
  }

  return result;
}

uint64_t sub_60FC()
{
  v0 = DMCopyCurrentBuildVersion();
  if (!v0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v0 integerValue];
}