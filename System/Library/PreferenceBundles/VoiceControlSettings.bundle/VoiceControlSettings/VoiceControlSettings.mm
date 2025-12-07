void sub_1DD8(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B34;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_2374(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    if (v5 && [v5 count])
    {
      [VCVocabularyObjC addVocabularyEntryWithString:v6 pronunciations:v5];
    }

    else
    {
      [VCVocabularyObjC addVocabularyEntryWithString:v6];
    }

    [*(a1 + 32) reloadSpecifiers];
  }
}

void sub_2410(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = settingsLocString(@"ADD_VOCABULARY_PLACEHOLDER", @"CommandAndControlSettings");
  [v4 setPlaceholder:v3];

  [v4 setDelegate:*(a1 + 32)];
  [v4 addTarget:*(a1 + 32) action:"textFieldDidChange:" forControlEvents:0x20000];
}

void sub_24A4(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];
  v4 = [v3 text];

  if ([*(a1 + 40) _isTextValidForVocabulary:v4])
  {
    [VCVocabularyObjC addVocabularyEntryWithString:v4];
    [*(a1 + 40) reloadSpecifiers];
  }
}

void sub_2804(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    if (v5 && [v5 count])
    {
      [VCVocabularyObjC setPronunciations:v5 forText:v6];
    }

    [*(a1 + 32) reloadSpecifiers];
  }
}

void sub_29CC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    if (v5 && [v5 count])
    {
      [VCVocabularyObjC setPronunciations:v5 forText:v6];
    }

    [*(a1 + 32) reloadSpecifiers];
  }
}

void sub_2F04(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3408;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

float sub_47D4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mutableAttributedStringByReplacingPlaceholderAttribute:kSRCSCommandDescriptionsFontPlaceholderAttributeName withAttributeName:NSFontAttributeName inAttributedString:a2 withValueTable:*(a1 + 40)];
  [v2 size];
  v4 = v3;

  return v4;
}

id sub_59AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 textForItem:a2];
  v8 = [*(a1 + 32) textForItem:v6];

  v9 = [v7 localizedCompare:v8];
  return v9;
}

id sub_65A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_661C;
  v3[3] = &unk_28EE8;
  v3[4] = v1;
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

id sub_661C(uint64_t a1)
{
  +[VCVocabularyObjC deleteAllVocabularyForActiveLocale];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_6750(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_84D0;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_7BD8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:a2];
  v3 = *(a1 + 32);

  return [v3 appendString:@"*"];
}

BOOL sub_7C20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CACPreferences sharedPreferences];
  v5 = [v4 bestLocaleIdentifier];
  v6 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
  v7 = [v6 commandStringsTableForLocaleIdentifier:v5];

  v8 = [v3 identifier];

  v9 = +[SRCSCommandStringsTable activeTargetTypes];
  v10 = [v7 languageModelDictionaryForCommandIdentifier:v8 targetTypes:v9 parsingErrorString:0];

  v11 = [v4 builtInCommandsStringsTableForLocaleIdentifier:v5];
  v12 = [v7 spokenStringPermutationsOfLanguageModelDictionary:v10 stringsTable:v11];
  v13 = [v12 filteredArrayUsingPredicate:*(a1 + 32)];
  v14 = [v13 count] != 0;

  return v14;
}

void sub_816C(id a1)
{
  v1 = +[CACPreferences sharedPreferences];
  [v1 deleteAllCustomCommandEntries];
}

id settingsLocString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = qword_2FB50;
  if (!qword_2FB50)
  {
    v6 = [NSBundle bundleForClass:AXSafeClassFromString()];
    v7 = qword_2FB50;
    qword_2FB50 = v6;

    v5 = qword_2FB50;
  }

  v8 = [v5 localizedStringForKey:v3 value:v3 table:v4];

  return v8;
}

void sub_9E00(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A304;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_A384(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B1DC;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

int64_t sub_AFD4(id a1, CACSpokenCommandItem *a2, CACSpokenCommandItem *a3)
{
  if (a2 | a3)
  {
    result = -1;
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
    v5 = a3;
    v6 = [(CACSpokenCommandItem *)a2 untranslatedLocale];
    v7 = [(CACSpokenCommandItem *)v5 untranslatedLocale];

    v8 = [v6 compare:v7];
    return v8;
  }

  return result;
}

void sub_B25C(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C4B8;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_C71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_F548;
  v3[3] = &unk_29188;
  v3[4] = a3;
  v3[5] = a2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_C790(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 performSelector:"_updateTutorialButtonForOneness" withObject:0 afterDelay:0.0];
  }
}

void sub_D7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak((v57 + 32));
  objc_destroyWeak((v56 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_D820(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_D8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_D8C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showDonationModalView];
}

void sub_D900(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_D9A0(uint64_t a1)
{
  v2 = +[CACPreferences sharedPreferences];
  [v2 setDonationTipKitSeen:1];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];

  v4 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v4, 0);
}

void sub_E018(uint64_t a1)
{
  v2 = +[CACPreferences sharedPreferences];
  v3 = [v2 bestLocaleIdentifier];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v5 = +[CACLanguageAssetManager sharedManager];
  v6 = [v5 installationStatus];
  v7 = [v6 objectForKey:v4];

  v8 = +[CACLanguageAssetManager sharedManager];
  v9 = [v8 downloadProgressForLanguage:v4];

  v10 = CACLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Installation status: %@", buf, 0xCu);
  }

  if ([v7 hasPrefix:kCACLanguageAssetInstallationStatusPrefixInstalled])
  {
    v11 = 0;
  }

  else if ([v7 hasPrefix:kCACLanguageAssetInstallationStatusPrefixInstalling] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", kCACLanguageAssetInstallationStatusPrefixWaitingToInstall))
  {
    v11 = &dword_0 + 1;
  }

  else if (v7)
  {
    v11 = &dword_0 + 2;
  }

  else
  {
    v12 = [v9 objectForKey:kCACDownloadProgressDictionaryKeyTotalBytes];
    v13 = [v12 intValue];

    if (v13 > 0)
    {
      v11 = &dword_0 + 1;
    }

    else
    {
      v11 = &dword_0 + 2;
    }
  }

  objc_initWeak(buf, *(a1 + 32));
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_E290;
  v14[3] = &unk_29128;
  objc_copyWeak(v15, buf);
  v15[1] = v11;
  dispatch_async(&_dispatch_main_q, v14);
  objc_destroyWeak(v15);
  objc_destroyWeak(buf);
}

void sub_E290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = CACLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v3[20];
      v6 = *(a1 + 40);
      v10 = 134218240;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Checking if specifiers need update due to changed installation status. Old:%ld, New:%ld", &v10, 0x16u);
    }

    v7 = *(a1 + 40);
    v8 = v3[20];
    v3[20] = v7;
    if (v7 != v8)
    {
      v9 = CACLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Reloading specifiers due to language status update", &v10, 2u);
      }

      [v3 reloadSpecifiers];
    }
  }
}

void sub_F010(id a1, UIAlertAction *a2)
{
  v3 = +[CACPreferences sharedPreferences];
  v2 = +[NSDictionary dictionary];
  [v3 setUserHintsHistory:v2];
}

void sub_F2A0(uint64_t a1)
{
  v2 = [*(a1 + 32) specifierForID:@"COMMAND_AND_CONTROL_DONATION_TipKit"];
  v3 = [*(a1 + 32) cellForSpecifier:v2];
  [v3 instrinsicContentHeight];
  *(*(a1 + 32) + 144) = v4;

  [*(a1 + 32) reloadSpecifier:v2];
  *(*(a1 + 32) + 138) = 1;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithDouble:*(*(a1 + 32) + 144)];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Tip loaded, resetting specifier, height: %@", &v7, 0xCu);
  }
}

id sub_F548(uint64_t a1)
{
  v2 = CACLogAssetDownload();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_16D68(a1, v2);
  }

  return [*(a1 + 40) reloadSpecifiers];
}

uint64_t sub_1025C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_16F74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_12210(&qword_2F628, &qword_1C2A0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_12CF4(v2, &v14 - v9, &qword_2F628, &qword_1C2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_16EB4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_17344();
    v13 = sub_170E4();
    sub_16E34();

    sub_16F64();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1045C(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_16E04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_12210(&qword_2F710, &qword_1C470);
  __chkstk_darwin(v5 - 8);
  v32 = v29 - v6;
  v7 = sub_12210(&qword_2F718, &qword_1C478);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v10 = sub_17314();
  v11 = sub_17314();
  v12 = settingsLocString(v10, v11);

  if (v12)
  {
    v13 = sub_17324();
    v15 = v14;

    v34 = v13;
    v35 = v15;
    v16 = sub_17334();
    v29[4] = v17;
    v29[5] = v16;
    v18 = sub_17314();
    v19 = sub_17314();
    v20 = settingsLocString(v18, v19);

    if (v20)
    {
      v21 = sub_17324();
      v23 = v22;

      v34 = v21;
      v35 = v23;
      v24 = sub_17334();
      v29[1] = v25;
      v29[2] = v24;
      v29[3] = v29;
      v26 = __chkstk_darwin(v24);
      __chkstk_darwin(v26);
      v34 = &_swiftEmptyArrayStorage;
      sub_1299C(&qword_2F720, &type metadata accessor for OnboardingTraits, &protocol conformance descriptor for OnboardingTraits);
      sub_12210(&qword_2F728, &qword_1C480);
      sub_12ED4(&qword_2F730, &qword_2F728, &qword_1C480, &protocol conformance descriptor for [A]);
      sub_17354();
      sub_172B4();
      (*(v2 + 8))(v4, v1);
      sub_12210(&qword_2F738, &qword_1C488);
      sub_12210(&qword_2F740, &qword_1C490);
      sub_125FC();
      sub_12ED4(&qword_2F778, &qword_2F740, &qword_1C490, &protocol conformance descriptor for VStack<A>);
      sub_16DF4();
      v27 = v33;
      (*(v30 + 32))(v33, v9, v31);
      v28 = (v27 + *(sub_12210(&qword_2F780, &qword_1C4A8) + 36));
      *v28 = 0;
      v28[1] = 0;
      v28[2] = nullsub_6;
      v28[3] = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_109A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VCAudioDonationView(0);
  v52 = *(v4 - 1);
  __chkstk_darwin(v4);
  v54 = v5;
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_12210(&qword_2F7E0, &unk_1C4E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v53 = sub_16E14();
  v10 = *(v53 - 8);
  __chkstk_darwin(v53);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_12210(&qword_2F758, &qword_1C498);
  __chkstk_darwin(v51);
  v55 = &v50 - v13;
  v14 = objc_opt_self();
  v15 = sub_17314();
  v16 = [v14 linkWithBundleIdentifier:v15];

  v56 = v4;
  v57 = a2;
  if (v16)
  {
    v17 = [v16 bundle];

    v18 = [v17 privacyFlow];
    if (!v18)
    {
      __break(1u);
      goto LABEL_9;
    }

    v19 = [v18 localizedButtonTitle];

    if (v19)
    {
      sub_17324();

LABEL_7:
      v26 = sub_16E44();
      (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
      sub_127E0(a1, v6);
      v27 = a1;
      v28 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v29 = swift_allocObject();
      sub_12848(v6, v29 + v28);
      sub_16E24();
      v30 = sub_170F4();
      v31 = v55;
      (*(v10 + 32))(v55, v12, v53);
      v32 = &v31[*(v51 + 36)];
      *v32 = v30;
      *(v32 + 8) = 0u;
      *(v32 + 24) = 0u;
      v32[40] = 1;
      v33 = *(v27 + v56[6]);
      v56 = v33;
      sub_17304();
      sub_16E94();
      v34 = v73;
      v35 = v74;
      v36 = v75;
      v37 = v76;
      v38 = v77;
      v39 = v78;
      v40 = sub_17304();
      v42 = v41;
      v58[80] = v35;
      v58[72] = v37;
      *&v59 = v33;
      *(&v59 + 1) = v34;
      LOBYTE(v60) = v35;
      *(&v60 + 1) = v36;
      LOBYTE(v61) = v37;
      *(&v61 + 1) = v38;
      *&v62 = v39;
      *(&v62 + 1) = v40;
      v63 = v41;
      v43 = v40;
      v44 = v31;
      v45 = v57;
      sub_12C84(v44, v57);
      v46 = v45 + *(sub_12210(&qword_2F738, &qword_1C488) + 36);
      v47 = v62;
      *(v46 + 32) = v61;
      *(v46 + 48) = v47;
      *(v46 + 64) = v63;
      v48 = v60;
      *v46 = v59;
      *(v46 + 16) = v48;
      v64 = v56;
      v65 = v34;
      v66 = v35;
      v67 = v36;
      v68 = v37;
      v69 = v38;
      v70 = v39;
      v71 = v43;
      v72 = v42;
      v49 = v56;
      sub_12CF4(&v59, v58, &qword_2F770, &qword_1C4A0);
      sub_12D5C(&v64);
      return;
    }
  }

  v20 = sub_17314();
  v21 = sub_17314();
  v22 = settingsLocString(v20, v21);

  if (v22)
  {
    v23 = sub_17324();
    v25 = v24;

    v64 = v23;
    v65 = v25;
    sub_17334();
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
}

void sub_10F24(uint64_t a1)
{
  v2 = sub_17314();
  v3 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v2];

  if (v3)
  {
    [v3 setPresentingViewController:*(a1 + *(type metadata accessor for VCAudioDonationView(0) + 24))];
    [v3 present];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_12210(&qword_2F740, &qword_1C490);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  *v7 = sub_16FD4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_12210(&qword_2F788, &qword_1C4B0);
  sub_11100(a1, &v7[*(v8 + 44)]);
  sub_12770(v7, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_11100@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v54 = a2;
  v50 = sub_17044();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for VCAudioDonationView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v47 = sub_12210(&qword_2F790, &qword_1C4B8);
  v48 = *(v47 - 8);
  v8 = __chkstk_darwin(v47);
  v53 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v39[-v10];
  v52 = sub_12210(&qword_2F798, &qword_1C4C0);
  v55 = *(v52 - 8);
  v12 = __chkstk_darwin(v52);
  v49 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v39[-v14];
  v44 = a1;
  sub_127E0(a1, &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_12848(&v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  v57 = a1;
  v46 = sub_12210(&qword_2F7A0, &qword_1C4C8);
  v45 = sub_128E4();
  sub_17294();
  sub_17034();
  sub_12ED4(&qword_2F7C0, &qword_2F790, &qword_1C4B8, &protocol conformance descriptor for Button<A>);
  sub_1299C(&qword_2F7C8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v18 = v15;
  v43 = v15;
  v19 = v47;
  v20 = v50;
  sub_171C4();
  v51[1](v4, v20);
  v21 = v48;
  v22 = *(v48 + 8);
  v50 = v48 + 8;
  v51 = v22;
  v23 = v19;
  (v22)(v11, v19);
  v24 = v44;
  sub_127E0(v44, &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v25 = swift_allocObject();
  sub_12848(&v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v25 + v16);
  v56 = v24;
  v41 = v11;
  sub_17294();
  sub_17304();
  sub_16E94();
  v46 = v61;
  v45 = v63;
  v44 = v65;
  v42 = v66;
  v60 = 1;
  v59 = v62;
  v58 = v64;
  v26 = *(v55 + 16);
  v27 = v49;
  v28 = v18;
  v29 = v52;
  v26(v49, v28, v52);
  v30 = *(v21 + 16);
  v31 = v53;
  v30(v53, v11, v23);
  LOBYTE(v11) = v60;
  v40 = v59;
  LODWORD(v48) = v58;
  v32 = v54;
  v26(v54, v27, v29);
  v33 = sub_12210(&qword_2F7D0, &qword_1C4D8);
  v30(&v32[*(v33 + 48)], v31, v23);
  v34 = &v32[*(v33 + 64)];
  *v34 = 0;
  v34[8] = v11;
  *(v34 + 2) = v46;
  v34[24] = v40;
  *(v34 + 4) = v45;
  v34[40] = v48;
  v35 = v42;
  *(v34 + 6) = v44;
  *(v34 + 7) = v35;
  v36 = v51;
  (v51)(v41, v23);
  v37 = *(v55 + 8);
  v37(v43, v29);
  v36(v31, v23);
  return (v37)(v27, v29);
}

void sub_117CC(uint64_t a1@<X8>)
{
  v2 = sub_17314();
  v3 = sub_17314();
  v4 = settingsLocString(v2, v3);

  if (v4)
  {
    sub_17324();

    sub_17334();
    sub_12A80();
    v5 = sub_17194();
    v7 = v6;
    v9 = v8;
    v10 = sub_17174();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    sub_12AD4(v5, v7, v9 & 1);

    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = v10;
    *(a1 + 24) = v12;
    *(a1 + 32) = v14 & 1;
    *(a1 + 40) = v16;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    sub_12AE4(v10, v12, v14 & 1);

    sub_12AD4(v10, v12, v14 & 1);
  }

  else
  {
    __break(1u);
  }
}

id sub_11970(uint64_t a1, unsigned __int8 a2)
{
  v2 = sub_16EB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _AXSSetAudioDonationSiriImprovementEnabled();
  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v7 = result;
    [result setDonationTipKitSeen:1];

    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    v9 = sub_17314();
    CFNotificationCenterPostNotification(v8, v9, 0, 0, 1u);

    sub_1025C(v5);
    sub_16EA4();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_11AE0(uint64_t a1@<X0>, void *(*a2)(_OWORD *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_16F94();
  a2(v12, a1);
  *&v11[7] = v12[0];
  *&v11[23] = v12[1];
  *&v11[39] = v13[0];
  *&v11[48] = *(v13 + 9);
  LOBYTE(a2) = sub_17134();
  sub_16E54();
  *(a3 + 17) = *v11;
  *(a3 + 33) = *&v11[16];
  *(a3 + 49) = *&v11[32];
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 65) = *&v11[48];
  *(a3 + 88) = a2;
  *(a3 + 96) = v7;
  *(a3 + 104) = v8;
  *(a3 + 112) = v9;
  *(a3 + 120) = v10;
  *(a3 + 128) = 0;
}

void sub_11B98(uint64_t a1@<X8>)
{
  v2 = sub_17314();
  v3 = sub_17314();
  v4 = settingsLocString(v2, v3);

  if (v4)
  {
    sub_17324();

    sub_17334();
    sub_12A80();
    v5 = sub_17194();
    v7 = v6;
    v9 = v8;
    v10 = sub_17174();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    sub_12AD4(v5, v7, v9 & 1);

    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = v10;
    *(a1 + 24) = v12;
    *(a1 + 32) = v14 & 1;
    *(a1 + 40) = v16;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    sub_12AE4(v10, v12, v14 & 1);

    sub_12AD4(v10, v12, v14 & 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static VCAudioDonationViewBridge.makeViewController()()
{
  v0 = type metadata accessor for VCAudioDonationView(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = swift_getKeyPath();
  sub_12210(&qword_2F628, &qword_1C2A0);
  swift_storeEnumTagMultiPayload();
  v4 = (v3 + *(v1 + 28));
  *v4 = 0xD000000000000024;
  v4[1] = 0x8000000000021750;
  v5 = *(v1 + 32);
  *(v3 + v5) = [objc_allocWithZone(UIViewController) init];
  v6 = objc_allocWithZone(sub_12210(&qword_2F630, &qword_1C2A8));
  return sub_16FF4();
}

uint64_t type metadata accessor for VCAudioDonationView(uint64_t a1)
{
  result = qword_2F6C0;
  if (!qword_2F6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AXInstructionalCellContentViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VCAudioDonationViewBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCAudioDonationViewBridge();
  return objc_msgSendSuper2(&v2, "init");
}

id VCAudioDonationViewBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VCAudioDonationViewBridge();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_120FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_12DC4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_12160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_12DC4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_121C4(uint64_t a1)
{
  sub_12DC4();
  sub_170B4();
  __break(1u);
}

uint64_t sub_12210(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_12290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_12210(&qword_2F660, &unk_1C2F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_12370(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_12210(&qword_2F660, &unk_1C2F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_12438(uint64_t a1)
{
  sub_124BC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_124BC(uint64_t a1)
{
  if (!qword_2F6D0)
  {
    sub_16EB4();
    v1 = sub_16E84();
    if (!v2)
    {
      atomic_store(v1, &qword_2F6D0);
    }
  }
}

unint64_t sub_12534()
{
  result = qword_2F708;
  if (!qword_2F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F708);
  }

  return result;
}

uint64_t sub_125B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_125FC()
{
  result = qword_2F748;
  if (!qword_2F748)
  {
    sub_125B4(&qword_2F738, &qword_1C488);
    sub_126B4();
    sub_12ED4(&qword_2F768, &qword_2F770, &qword_1C4A0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F748);
  }

  return result;
}

unint64_t sub_126B4()
{
  result = qword_2F750;
  if (!qword_2F750)
  {
    sub_125B4(&qword_2F758, &qword_1C498);
    sub_1299C(&qword_2F760, &type metadata accessor for AXOnboardingButton, &protocol conformance descriptor for AXOnboardingButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F750);
  }

  return result;
}

uint64_t sub_12770(uint64_t a1, uint64_t a2)
{
  v4 = sub_12210(&qword_2F740, &qword_1C490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_127E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCAudioDonationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCAudioDonationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_128E4()
{
  result = qword_2F7A8;
  if (!qword_2F7A8)
  {
    sub_125B4(&qword_2F7A0, &qword_1C4C8);
    sub_12ED4(&qword_2F7B0, &qword_2F7B8, &qword_1C4D0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F7A8);
  }

  return result;
}

uint64_t sub_1299C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_12A80()
{
  result = qword_2F7D8;
  if (!qword_2F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F7D8);
  }

  return result;
}

uint64_t sub_12AD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_12AE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_12AF4()
{
  v1 = type metadata accessor for VCAudioDonationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_12210(&qword_2F628, &qword_1C2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_16EB4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_12C24()
{
  v1 = *(type metadata accessor for VCAudioDonationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_10F24(v2);
}

uint64_t sub_12C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_12210(&qword_2F758, &qword_1C498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_12210(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_12D5C(uint64_t a1)
{
  v2 = sub_12210(&qword_2F770, &qword_1C4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_12DC4()
{
  result = qword_2F7E8;
  if (!qword_2F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F7E8);
  }

  return result;
}

unint64_t sub_12E1C()
{
  result = qword_2F7F0;
  if (!qword_2F7F0)
  {
    sub_125B4(&qword_2F780, &qword_1C4A8);
    sub_12ED4(&qword_2F7F8, &qword_2F718, &qword_1C478, &protocol conformance descriptor for AXOnboardingView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F7F0);
  }

  return result;
}

uint64_t sub_12ED4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_125B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AXInstructionalCellContentViewBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXInstructionalCellContentViewBridge();
  return objc_msgSendSuper2(&v2, "init");
}

id AXInstructionalCellContentViewBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AXInstructionalCellContentViewBridge();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1316C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_16F74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_12210(&qword_2F828, &qword_1C558);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_12CF4(v2, &v14 - v9, &qword_2F828, &qword_1C558);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_16E74();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_17344();
    v13 = sub_170E4();
    sub_16E34();

    sub_16F64();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1336C@<X0>(uint64_t a1@<X8>)
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement();
  }

  else
  {
    v5 = sub_16FC4();
    v109 = &v73;
    v105 = *(v5 - 8);
    v106 = v5;
    __chkstk_darwin(v5);
    v101 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = sub_17024();
    v108 = &v73;
    v94 = *(v7 - 8);
    v95 = v7;
    __chkstk_darwin(v7);
    v92 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v79 = sub_16E74();
    v107 = &v73;
    v9 = *(v79 - 8);
    v10 = __chkstk_darwin(v79);
    v78 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v104 = &v73;
    __chkstk_darwin(v10);
    v76 = &v73 - v12;
    v13 = sub_12210(&qword_2F910, &qword_1C5E8);
    v103 = &v73;
    v14 = __chkstk_darwin(v13 - 8);
    v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v102 = &v73;
    __chkstk_darwin(v14);
    v18 = &v73 - v17;
    v19 = sub_12210(&qword_2F918, &qword_1C5F0);
    v100 = &v73;
    __chkstk_darwin(v19 - 8);
    v21 = &v73 - v20;
    v22 = sub_12210(&qword_2F920, &qword_1C5F8);
    v98 = a1;
    v99 = &v73;
    v75 = v22 - 8;
    __chkstk_darwin(v22 - 8);
    v74 = &v73 - v23;
    v73 = sub_12210(&qword_2F928, &qword_1C600);
    v97 = &v73;
    __chkstk_darwin(v73);
    v25 = &v73 - v24;
    v83 = sub_12210(&qword_2F930, &qword_1C608);
    v96 = &v73;
    v84 = *(v83 - 8);
    __chkstk_darwin(v83);
    v77 = &v73 - v26;
    v87 = sub_12210(&qword_2F938, &qword_1C610);
    v93 = &v73;
    v88 = *(v87 - 8);
    __chkstk_darwin(v87);
    v80 = &v73 - v27;
    v86 = sub_12210(&qword_2F940, &qword_1C618);
    v91 = &v73;
    v28 = __chkstk_darwin(v86);
    v85 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v90 = &v73;
    v30 = __chkstk_darwin(v28);
    v81 = &v73 - v31;
    v89 = &v73;
    __chkstk_darwin(v30);
    v82 = &v73 - v32;
    *v21 = sub_16FE4();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v33 = &v21[*(sub_12210(&qword_2F948, &qword_1C620) + 44)];
    *v18 = sub_16F84();
    *(v18 + 1) = 0x4024000000000000;
    v18[16] = 0;
    v34 = sub_12210(&qword_2F950, &qword_1C628);
    sub_13F14(v1, &v18[*(v34 + 44)]);
    sub_12CF4(v18, v16, &qword_2F910, &qword_1C5E8);
    *v33 = 0x4024000000000000;
    v33[8] = 0;
    v35 = sub_12210(&qword_2F958, &qword_1C630);
    sub_12CF4(v16, &v33[*(v35 + 48)], &qword_2F910, &qword_1C5E8);
    sub_168B4(v18, &qword_2F910, &qword_1C5E8);
    sub_168B4(v16, &qword_2F910, &qword_1C5E8);
    v36 = v76;
    v37 = v1;
    sub_1316C(v76);
    v38 = v78;
    v39 = v79;
    (*(v9 + 104))(v78, enum case for ColorScheme.dark(_:), v79);
    v40 = sub_16E64();
    v41 = *(v9 + 8);
    v41(v38, v39);
    v41(v36, v39);
    v42 = objc_opt_self();
    v43 = &selRef_secondarySystemBackgroundColor;
    if ((v40 & 1) == 0)
    {
      v43 = &selRef_systemBackgroundColor;
    }

    v44 = [v42 *v43];
    v45 = sub_17244();
    v46 = sub_170F4();
    v47 = v74;
    sub_165A4(v21, v74, &qword_2F918, &qword_1C5F0);
    v48 = v47 + *(v75 + 44);
    *v48 = v45;
    *(v48 + 8) = v46;
    v49 = v73;
    v50 = &v25[*(v73 + 36)];
    v51 = *(sub_16EF4() + 20);
    v52 = enum case for RoundedCornerStyle.continuous(_:);
    v53 = sub_16FA4();
    (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
    __asm { FMOV            V0.2D, #16.0 }

    *v50 = _Q0;
    *&v50[*(sub_12210(&qword_2F960, &qword_1C638) + 36)] = 256;
    sub_165A4(v47, v25, &qword_2F920, &qword_1C5F8);
    v59 = v92;
    sub_17014();
    v60 = sub_16198();
    v61 = v77;
    v62 = v49;
    sub_171F4();
    (*(v94 + 8))(v59, v95);
    v63 = sub_168B4(v25, &qword_2F928, &qword_1C600);
    __chkstk_darwin(v63);
    *(&v73 - 2) = v37;
    v64 = sub_12210(&qword_2F998, &qword_1C648);
    v110 = v62;
    v111 = v60;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v66 = sub_12ED4(&qword_2F9A0, &qword_2F998, &qword_1C648, &protocol conformance descriptor for TupleView<A>);
    v67 = v80;
    v68 = v83;
    sub_171E4();
    (*(v84 + 8))(v61, v68);
    v69 = v101;
    sub_16FB4();
    v110 = v68;
    v111 = v64;
    v112 = OpaqueTypeConformance2;
    v113 = v66;
    swift_getOpaqueTypeConformance2();
    v70 = v81;
    v71 = v87;
    sub_17204();
    (*(v105 + 8))(v69, v106);
    (*(v88 + 8))(v67, v71);
    v72 = v82;
    sub_16EC4();
    sub_168B4(v70, &qword_2F940, &qword_1C618);
    sub_12CF4(v72, v85, &qword_2F940, &qword_1C618);
    sub_1633C();
    sub_17004();
    return sub_168B4(v72, &qword_2F940, &qword_1C618);
  }
}

uint64_t sub_13F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v50 = a2;
  v3 = sub_12210(&qword_2F9C8, &qword_1C660);
  v4 = __chkstk_darwin(v3 - 8);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v48 - v6;
  v8 = sub_17274();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_12210(&qword_2F9D0, &qword_1C668);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  v19 = type metadata accessor for AXInstructionalCellContentView(0);
  v20 = *(a1 + *(v19 + 28));
  sub_17254();
  (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
  v21 = sub_17284();

  (*(v9 + 8))(v11, v8);
  sub_17304();
  sub_16E94();
  v52 = 1;
  *&v51[6] = v53;
  *&v51[22] = v54;
  *&v51[38] = v55;
  v22 = &v18[*(sub_12210(&qword_2F9D8, &qword_1C670) + 36)];
  v23 = *(sub_16EF4() + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = sub_16FA4();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #16.0 }

  *v22 = _Q0;
  *&v22[*(sub_12210(&qword_2F960, &qword_1C638) + 36)] = 256;
  v31 = *&v51[16];
  *(v18 + 18) = *v51;
  *v18 = v21;
  *(v18 + 1) = 0;
  *(v18 + 8) = 1;
  *(v18 + 34) = v31;
  *(v18 + 50) = *&v51[32];
  *(v18 + 8) = *&v51[46];
  LOBYTE(v24) = sub_17104();
  sub_16E54();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v18[*(sub_12210(&qword_2F9E0, &qword_1C678) + 36)];
  *v40 = v24;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = *(v19 + 32);
  v42 = v48;
  v18[*(v13 + 44)] = *(v48 + v41);
  *v7 = sub_16FE4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v43 = sub_12210(&qword_2F9E8, &qword_1C680);
  sub_143BC(v42, &v7[*(v43 + 44)]);
  sub_12CF4(v18, v16, &qword_2F9D0, &qword_1C668);
  v44 = v49;
  sub_12CF4(v7, v49, &qword_2F9C8, &qword_1C660);
  v45 = v50;
  sub_12CF4(v16, v50, &qword_2F9D0, &qword_1C668);
  v46 = sub_12210(&qword_2F9F0, &qword_1C688);
  sub_12CF4(v44, v45 + *(v46 + 48), &qword_2F9C8, &qword_1C660);
  sub_168B4(v7, &qword_2F9C8, &qword_1C660);
  sub_168B4(v18, &qword_2F9D0, &qword_1C668);
  sub_168B4(v44, &qword_2F9C8, &qword_1C660);
  return sub_168B4(v16, &qword_2F9D0, &qword_1C668);
}

uint64_t sub_143BC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v136 = sub_12210(&qword_2F9F8, &qword_1C690);
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v126 = (v111 - v3);
  v124 = sub_16EE4();
  v122 = *(v124 - 1);
  __chkstk_darwin(v124);
  v120 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AXInstructionalCellContentView(0);
  v112 = *(v5 - 8);
  __chkstk_darwin(v5);
  v113 = v6;
  v114 = v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_12210(&qword_2FA00, &qword_1C698);
  __chkstk_darwin(v115);
  v116 = v111 - v7;
  v125 = sub_12210(&qword_2FA08, &qword_1C6A0);
  v123 = *(v125 - 8);
  v8 = __chkstk_darwin(v125);
  v121 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v128 = v111 - v10;
  v119 = sub_172D4();
  v118 = *(v119 - 8);
  v11 = __chkstk_darwin(v119);
  v117 = v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v127 = v111 - v13;
  v14 = sub_12210(&qword_2FA10, &qword_1C6A8);
  v15 = __chkstk_darwin(v14 - 8);
  v134 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v141 = v111 - v17;
  v18 = sub_12210(&qword_2FA18, &qword_1C6B0);
  __chkstk_darwin(v18 - 8);
  v20 = v111 - v19;
  v21 = sub_12210(&qword_2FA20, &qword_1C6B8);
  v22 = __chkstk_darwin(v21);
  v140 = v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = v111 - v25;
  __chkstk_darwin(v24);
  v28 = v111 - v27;
  *v20 = sub_16F84();
  *(v20 + 1) = 0x4024000000000000;
  v20[16] = 0;
  v29 = sub_12210(&qword_2FA28, &qword_1C6C0);
  sub_15154(a1, &v20[*(v29 + 44)]);
  v30 = sub_17124();
  v31 = sub_17114();
  sub_17114();
  if (sub_17114() != v30)
  {
    v31 = sub_17114();
  }

  sub_16E54();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_165A4(v20, v26, &qword_2FA18, &qword_1C6B0);
  v40 = &v26[*(v21 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v139 = v28;
  sub_165A4(v26, v28, &qword_2FA20, &qword_1C6B8);
  v41 = &a1[*(v5 + 24)];
  v42 = *(v41 + 1);
  v146 = *v41;
  v147 = v42;
  v43 = sub_12A80();

  v111[1] = v43;
  v44 = sub_17194();
  v46 = v45;
  v48 = v47;
  sub_17234();
  v129 = v5;
  v66 = a1;
  v49 = sub_17164();
  v51 = v50;
  v53 = v52;

  sub_12AD4(v44, v46, v48 & 1);

  sub_17154();
  v132 = sub_17184();
  v131 = v54;
  LOBYTE(v46) = v55;
  v133 = v56;

  v57 = v66;
  sub_12AD4(v49, v51, v53 & 1);

  v130 = sub_17124();
  sub_16E54();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  LODWORD(v66) = v46 & 1;
  LOBYTE(v146) = v46 & 1;
  LOBYTE(v142) = 0;
  v67 = (v57 + *(v129 + 36));
  v69 = *v67;
  v68 = v67[1];
  v138 = v66;
  if (!v69 && v68 == 0xE000000000000000 || (sub_17364() & 1) != 0)
  {
    v70 = v141;
    (*(v135 + 56))(v141, 1, 1, v136);
  }

  else
  {
    v71 = v127;
    sub_172C4();
    v146 = v69;
    v147 = v68;
    v72 = v114;
    sub_164D0(v57, v114);
    v73 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v74 = swift_allocObject();
    sub_16538(v72, v74 + v73);

    v75 = v116;
    sub_172A4();
    v76 = sub_17224();
    v77 = sub_170F4();
    v78 = v75 + *(sub_12210(&qword_2FA30, &qword_1C6C8) + 36);
    *v78 = v76;
    *(v78 + 8) = v77;
    v79 = sub_17214();
    KeyPath = swift_getKeyPath();
    v81 = (v75 + *(v115 + 36));
    *v81 = KeyPath;
    v81[1] = v79;
    v82 = v120;
    sub_16ED4();
    sub_166D0();
    sub_1686C(&qword_2FA60, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v83 = v128;
    v84 = v124;
    sub_171C4();
    (*(v122 + 8))(v82, v84);
    sub_168B4(v75, &qword_2FA00, &qword_1C698);
    LOBYTE(v146) = 1;
    v85 = v118;
    v124 = *(v118 + 16);
    v86 = v117;
    v87 = v119;
    (v124)(v117, v71, v119);
    LOBYTE(v142) = 1;
    v88 = v123;
    v129 = *(v123 + 16);
    v89 = v121;
    v90 = v125;
    (v129)(v121, v83, v125);
    v91 = v146;
    v92 = v126;
    *v126 = 0;
    *(v92 + 8) = v91;
    v93 = sub_12210(&qword_2FA68, &qword_1C708);
    (v124)(v92 + v93[12], v86, v87);
    v94 = v92 + v93[16];
    v95 = v142;
    *v94 = 0;
    *(v94 + 8) = v95;
    (v129)(v92 + v93[20], v89, v90);
    v66 = *(v88 + 8);
    (v66)(v128, v90);
    v96 = *(v85 + 8);
    v96(v127, v87);
    (v66)(v89, v90);
    LOBYTE(v66) = v138;
    v96(v86, v87);
    v70 = v141;
    sub_165A4(v92, v141, &qword_2F9F8, &qword_1C690);
    (*(v135 + 56))(v70, 0, 1, v136);
  }

  v97 = v140;
  sub_12CF4(v139, v140, &qword_2FA20, &qword_1C6B8);
  v98 = v134;
  sub_12CF4(v70, v134, &qword_2FA10, &qword_1C6A8);
  v99 = v137;
  sub_12CF4(v97, v137, &qword_2FA20, &qword_1C6B8);
  v100 = sub_12210(&qword_2FA70, &qword_1C710);
  v101 = (v99 + v100[12]);
  v102 = v132;
  *&v142 = v132;
  v103 = v131;
  *(&v142 + 1) = v131;
  LOBYTE(v143) = v66;
  *(&v143 + 1) = *v159;
  DWORD1(v143) = *&v159[3];
  v104 = v133;
  *(&v143 + 1) = v133;
  v105 = v130;
  LOBYTE(v144) = v130;
  *(&v144 + 1) = *v158;
  DWORD1(v144) = *&v158[3];
  *(&v144 + 1) = v59;
  *v145 = v61;
  *&v145[8] = v63;
  *&v145[16] = v65;
  v145[24] = 0;
  v106 = v142;
  v107 = v143;
  *(v101 + 57) = *&v145[9];
  v108 = *v145;
  v101[2] = v144;
  v101[3] = v108;
  *v101 = v106;
  v101[1] = v107;
  sub_12CF4(v98, v99 + v100[16], &qword_2FA10, &qword_1C6A8);
  v109 = v99 + v100[20];
  *v109 = 0x4024000000000000;
  *(v109 + 8) = 0;
  sub_12CF4(&v142, &v146, &qword_2FA78, &qword_1C718);
  sub_168B4(v141, &qword_2FA10, &qword_1C6A8);
  sub_168B4(v139, &qword_2FA20, &qword_1C6B8);
  sub_168B4(v98, &qword_2FA10, &qword_1C6A8);
  v146 = v102;
  v147 = v103;
  v148 = v138;
  *v149 = *v159;
  *&v149[3] = *&v159[3];
  v150 = v104;
  v151 = v105;
  *v152 = *v158;
  *&v152[3] = *&v158[3];
  v153 = v59;
  v154 = v61;
  v155 = v63;
  v156 = v65;
  v157 = 0;
  sub_168B4(&v146, &qword_2FA78, &qword_1C718);
  return sub_168B4(v140, &qword_2FA20, &qword_1C6B8);
}

uint64_t sub_15154@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = a1;
  v52 = a2;
  v3 = type metadata accessor for AXInstructionalCellContentView(0);
  v4 = v3 - 8;
  v49 = *(v3 - 8);
  v48 = *(v49 + 64);
  __chkstk_darwin(v3);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_12210(&qword_2FA80, &qword_1C720) - 8;
  v6 = __chkstk_darwin(v51);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v44 - v8;
  v9 = (a1 + *(v4 + 28));
  v10 = v9[1];
  v70 = *v9;
  v71 = v10;
  sub_12A80();

  v11 = sub_17194();
  v13 = v12;
  v15 = v14;
  sub_17144();
  v16 = sub_17184();
  v18 = v17;
  v20 = v19;

  sub_12AD4(v11, v13, v15 & 1);

  v21 = sub_17174();
  v46 = v22;
  v24 = v23;
  v26 = v25;
  v44 = v25;
  sub_12AD4(v16, v18, v20 & 1);

  sub_172E4();
  sub_16F04();
  LOBYTE(v16) = v24 & 1;
  v83 = v24 & 1;
  v27 = v47;
  sub_164D0(v45, v47);
  v28 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v29 = swift_allocObject();
  sub_16538(v27, v29 + v28);
  sub_12210(&qword_2FA88, &qword_1C728);
  sub_16AF0();
  v30 = v53;
  sub_17294();
  sub_172F4();
  sub_16E94();
  v31 = (v30 + *(sub_12210(&qword_2FA98, &qword_1C730) + 36));
  v32 = v84[1];
  *v31 = v84[0];
  v31[1] = v32;
  v31[2] = v84[2];
  v33 = v50;
  *(v30 + *(v51 + 44)) = 257;
  sub_12CF4(v30, v33, &qword_2FA80, &qword_1C720);
  v34 = v21;
  *&v61 = v21;
  v35 = v46;
  *(&v61 + 1) = v46;
  LOBYTE(v62) = v16;
  *(&v62 + 1) = *v82;
  DWORD1(v62) = *&v82[3];
  *(&v62 + 1) = v26;
  v67 = v58;
  v68 = v59;
  v69 = v60;
  v63 = v54;
  v64 = v55;
  v65 = v56;
  v66 = v57;
  v36 = v59;
  v37 = v52;
  v52[6] = v58;
  v37[7] = v36;
  v37[8] = v69;
  v38 = v64;
  v37[2] = v63;
  v37[3] = v38;
  v39 = v66;
  v37[4] = v65;
  v37[5] = v39;
  v40 = v62;
  *v37 = v61;
  v37[1] = v40;
  v41 = v37;
  v42 = sub_12210(&qword_2FAA0, &qword_1C738);
  sub_12CF4(v33, v41 + *(v42 + 48), &qword_2FA80, &qword_1C720);
  sub_12CF4(&v61, &v70, &qword_2FAA8, qword_1C740);
  sub_168B4(v53, &qword_2FA80, &qword_1C720);
  sub_168B4(v33, &qword_2FA80, &qword_1C720);
  v70 = v34;
  v71 = v35;
  v72 = v16;
  *v73 = *v82;
  *&v73[3] = *&v82[3];
  v74 = v44;
  v79 = v58;
  v80 = v59;
  v81 = v60;
  v75 = v54;
  v76 = v55;
  v77 = v56;
  v78 = v57;
  return sub_168B4(&v70, &qword_2FAA8, qword_1C740);
}

uint64_t sub_1563C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_17264();
  v3 = sub_17234();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

void sub_15698(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v37 = type metadata accessor for AXInstructionalCellContentView(0);
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v5 = sub_12210(&qword_2F9B8, &qword_1C650);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v39 = &v36 - v10;
  v11 = __chkstk_darwin(v9);
  v38 = &v36 - v12;
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = sub_17314();
  v16 = [objc_opt_self() bundleWithIdentifier:v15];

  if (v16)
  {
    v35._countAndFlagsBits = 0xE000000000000000;
    v45.value._object = 0x80000000000219A0;
    v44._countAndFlagsBits = 1162103112;
    v44._object = 0xE400000000000000;
    v45.value._countAndFlagsBits = 0xD000000000000011;
    v17.super.isa = v16;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    v18 = sub_16DE4(v44, v45, v17, v46, 0, v35);
    v20 = v19;

    v42 = v18;
    v43 = v20;
    sub_164D0(a1, &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = *(v3 + 80);
    v22 = a1;
    v23 = (v21 + 16) & ~v21;
    v24 = swift_allocObject();
    sub_16538(&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    sub_12A80();
    sub_172A4();
    v25 = (v22 + *(v37 + 36));
    v26 = v25[1];
    v42 = *v25;
    v43 = v26;
    sub_164D0(v22, &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = swift_allocObject();
    sub_16538(&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v23);

    v28 = v38;
    sub_172A4();
    v29 = *(v6 + 16);
    v30 = v39;
    v29(v39, v14, v5);
    v31 = v40;
    v29(v40, v28, v5);
    v32 = v41;
    v29(v41, v30, v5);
    v33 = sub_12210(&qword_2F9C0, &qword_1C658);
    v29(&v32[*(v33 + 48)], v31, v5);
    v34 = *(v6 + 8);
    v34(v28, v5);
    v34(v14, v5);
    v34(v31, v5);
    v34(v30, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_15AD4(uint64_t a1)
{
  v2 = sub_16E74();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_16F24();
}

uint64_t sub_15B9C(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a7;
  v35 = a12;
  v32 = a9;
  v33 = a11;
  v19 = type metadata accessor for AXInstructionalCellContentView(0);
  v20 = (v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v22 = swift_getKeyPath();
  sub_12210(&qword_2F828, &qword_1C558);
  swift_storeEnumTagMultiPayload();
  v23 = (v22 + v20[7]);
  *v23 = a1;
  v23[1] = a2;
  v24 = (v22 + v20[8]);
  *v24 = a5;
  v24[1] = a6;
  *(v22 + v20[9]) = a3;
  *(v22 + v20[10]) = a4;
  v25 = (v22 + v20[11]);
  v26 = v35;
  *v25 = v34;
  v25[1] = a8;
  v27 = (v22 + v20[12]);
  v28 = v33;
  *v27 = v32;
  v27[1] = a10;
  v29 = (v22 + v20[13]);
  *v29 = v28;
  v29[1] = v26;
  objc_allocWithZone(sub_12210(&qword_2F830, &qword_1C560));

  v30 = a3;

  return sub_16FF4();
}

uint64_t sub_15D54()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for AXInstructionalCellContentView(uint64_t a1)
{
  result = qword_2F898;
  if (!qword_2F898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_15E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_12210(&qword_2F838, &qword_1C568);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_15F04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_12210(&qword_2F838, &qword_1C568);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_15FCC(uint64_t a1)
{
  sub_16088(319);
  if (v1 <= 0x3F)
  {
    sub_160E0();
    if (v2 <= 0x3F)
    {
      sub_1612C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_16088(uint64_t a1)
{
  if (!qword_2F8A8)
  {
    sub_16E74();
    v1 = sub_16E84();
    if (!v2)
    {
      atomic_store(v1, &qword_2F8A8);
    }
  }
}

unint64_t sub_160E0()
{
  result = qword_2F8B0;
  if (!qword_2F8B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2F8B0);
  }

  return result;
}

unint64_t sub_1612C()
{
  result = qword_2F8B8;
  if (!qword_2F8B8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2F8B8);
  }

  return result;
}

unint64_t sub_16198()
{
  result = qword_2F968;
  if (!qword_2F968)
  {
    sub_125B4(&qword_2F928, &qword_1C600);
    sub_16250();
    sub_12ED4(&qword_2F990, &qword_2F960, &qword_1C638, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F968);
  }

  return result;
}

unint64_t sub_16250()
{
  result = qword_2F970;
  if (!qword_2F970)
  {
    sub_125B4(&qword_2F920, &qword_1C5F8);
    sub_12ED4(&qword_2F978, &qword_2F918, &qword_1C5F0, &protocol conformance descriptor for VStack<A>);
    sub_12ED4(&qword_2F980, &qword_2F988, &qword_1C640, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F970);
  }

  return result;
}

unint64_t sub_1633C()
{
  result = qword_2F9A8;
  if (!qword_2F9A8)
  {
    sub_125B4(&qword_2F940, &qword_1C618);
    sub_125B4(&qword_2F930, &qword_1C608);
    sub_125B4(&qword_2F998, &qword_1C648);
    sub_125B4(&qword_2F928, &qword_1C600);
    sub_16198();
    swift_getOpaqueTypeConformance2();
    sub_12ED4(&qword_2F9A0, &qword_2F998, &qword_1C648, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_1686C(&qword_2F9B0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F9A8);
  }

  return result;
}

uint64_t sub_164D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXInstructionalCellContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXInstructionalCellContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_165A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_12210(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_16678@<X0>(uint64_t *a1@<X8>)
{
  result = sub_16F34();
  *a1 = result;
  return result;
}

unint64_t sub_166D0()
{
  result = qword_2FA38;
  if (!qword_2FA38)
  {
    sub_125B4(&qword_2FA00, &qword_1C698);
    sub_16788();
    sub_12ED4(&qword_2FA50, &qword_2FA58, &qword_1C700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2FA38);
  }

  return result;
}

unint64_t sub_16788()
{
  result = qword_2FA40;
  if (!qword_2FA40)
  {
    sub_125B4(&qword_2FA30, &qword_1C6C8);
    sub_12ED4(&qword_2FA48, &qword_2F9B8, &qword_1C650, &protocol conformance descriptor for Button<A>);
    sub_12ED4(&qword_2F980, &qword_2F988, &qword_1C640, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2FA40);
  }

  return result;
}

uint64_t sub_1686C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_168B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_12210(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_16914()
{
  v1 = type metadata accessor for AXInstructionalCellContentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_12210(&qword_2F828, &qword_1C558);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_16E74();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_16AF0()
{
  result = qword_2FA90;
  if (!qword_2FA90)
  {
    sub_125B4(&qword_2FA88, &qword_1C728);
    sub_12ED4(&qword_2FA50, &qword_2FA58, &qword_1C700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2FA90);
  }

  return result;
}

void sub_16D68(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Settings got notification: %@", &v3, 0xCu);
}