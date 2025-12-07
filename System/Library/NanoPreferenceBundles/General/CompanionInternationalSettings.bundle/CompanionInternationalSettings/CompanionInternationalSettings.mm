void layoutSubviewsPatchForTextLabelTruncation(void *a1)
{
  v18 = a1;
  v1 = [v18 textLabel];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = [v18 textLabel];
  v9 = [v8 superview];

  [v9 size];
  v11 = v10;
  [v9 directionalLayoutMargins];
  v13 = v12;
  [v9 directionalLayoutMargins];
  v15 = v14;
  if ([UIApp userInterfaceLayoutDirection] == &dword_0 + 1)
  {
    [v9 directionalLayoutMargins];
    v3 = v16;
  }

  v17 = [v18 textLabel];
  [v17 setFrame:{v3, v5, v11 - v13 - v15, v7}];
}

id COSActivePairingIsTinker()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  v4 = [v3 valueForProperty:NRDevicePropertyIsAltAccount];
  v5 = [v4 BOOLValue];

  return v5;
}

id sub_4A9C(uint64_t a1)
{
  [*(a1 + 32) moveSpecifierAtIndexPath:*(a1 + 40) toIndexPath:*(a1 + 48) moveRow:1];
  v2 = *(a1 + 32);

  return [v2 setUpdatedAppleLanguages:0];
}

void sub_4F28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([*(a1 + 32) isEditing])
  {
    [*(a1 + 32) initializeUpdatedAppleLanguagesIfNeeded];
    if (([*(a1 + 40) row] & 0x8000000000000000) == 0)
    {
      v10 = [*(a1 + 40) row];
      v11 = [*(a1 + 32) updatedAppleLanguages];
      if (![v11 count])
      {
        sub_1A690();
      }

      v12 = [*(a1 + 32) updatedAppleLanguages];
      v13 = [v12 count];

      if (v10 < v13)
      {
        v14 = [*(a1 + 32) updatedAppleLanguages];
        [v14 removeObjectAtIndex:v10];

        v15 = *(a1 + 32);
        v16 = [v15 specifierAtIndexPath:*(a1 + 40)];
        [v15 removeSpecifier:v16 animated:1];

        v9[2](v9, 1);
      }
    }
  }

  else
  {
    v17 = +[ISInternationalViewController localizedRestartStringForCurrentDevice];
    +[UIDevice currentDevice];
    v18 = v28 = v9;
    v19 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v17, 0, [v18 sf_isiPad]);

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"CANCEL_CHANGE_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_52B4;
    v32[3] = &unk_28BD0;
    v22 = v28;
    v33 = v22;
    v23 = [UIAlertAction actionWithTitle:v21 style:1 handler:v32];

    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"CONTINUE_CHANGE_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_52C8;
    v29[3] = &unk_28BF8;
    v26 = *(a1 + 40);
    v29[4] = *(a1 + 32);
    v30 = v26;
    v31 = v22;
    v27 = [UIAlertAction actionWithTitle:v25 style:2 handler:v29];

    [v19 addAction:v23];
    [v19 addAction:v27];
    [*(a1 + 32) presentViewController:v19 animated:1 completion:0];

    v9 = v28;
  }
}

uint64_t sub_52C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 specifierAtIndexPath:*(a1 + 40)];
  [v2 removeSpecifier:v3 animated:1];

  [*(a1 + 32) initializeUpdatedAppleLanguagesIfNeeded];
  v4 = [*(a1 + 32) updatedAppleLanguages];
  [v4 removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];

  [*(a1 + 32) changeLanguage:0];
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void sub_6A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_6F34(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_302F8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_7078;
    v4[4] = &unk_28C80;
    v4[5] = v4;
    v5 = off_28C68;
    v6 = 0;
    qword_302F8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_302F8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CloudSettingsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A714();
  }

  qword_302F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_7078(uint64_t a1)
{
  result = _sl_dlopen();
  qword_302F8 = result;
  return result;
}

void sub_7B8C(uint64_t a1)
{
  v4 = [NSIndexPath indexPathForRow:*(a1 + 40) inSection:*(a1 + 48)];
  v2 = [*(a1 + 32) tableView:*(*(a1 + 32) + 32) cellForRowAtIndexPath:v4];
  v3 = [v2 textLabel];
  [v3 sizeThatFits:{1.79769313e308, 1.79769313e308}];
}

void sub_8CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_8D2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_8D44(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
  v8 = [v7 containsObject:a1[4]];

  if (v8)
  {
    *(*(a1[5] + 8) + 24) = a3;
    v9 = [v12 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

void sub_8F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8F78(uint64_t a1)
{
  v2 = [*(a1 + 32) unfilteredLanguageSections];
  v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(a1 + 32) unfilteredLanguageSections];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
        v10 = [v9 filteredLanguagesBySearchString:*(a1 + 40)];

        if ([v10 count])
        {
          v22[0] = @"kLanguageSectionKeyTitle";
          v11 = [v8 objectForKeyedSubscript:@"kLanguageSectionKeyTitle"];
          v22[1] = @"kLanguageSectionKeyLanguages";
          v23[0] = v11;
          v23[1] = v10;
          v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

          [v15 addObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = [WeakRetained isCancelled];

  if ((v14 & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_91DC;
    block[3] = &unk_28CF8;
    block[4] = *(a1 + 32);
    v17 = v15;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

id sub_91DC(uint64_t a1)
{
  [*(a1 + 32) setFilteredLanguageSections:*(a1 + 40)];
  *(*(a1 + 32) + 48) = 1;
  v2 = *(*(a1 + 32) + 32);

  return [v2 reloadData];
}

uint64_t sub_9CEC(uint64_t a1)
{
  v1 = [*(a1 + 32) listController];
  [v1 deselectHighlightedRow];

  return 1;
}

void sub_A9F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_AA0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleLocalesInfo:v6 error:v5];
}

void sub_D0AC(id a1)
{
  v3[0] = NSCalendarIdentifierGregorian;
  v3[1] = NSCalendarIdentifierJapanese;
  v4[0] = @"GREGORIAN_CALENDAR";
  v4[1] = @"JAPANESE_CALENDAR";
  v3[2] = NSCalendarIdentifierBuddhist;
  v4[2] = @"BUDDHIST_CALENDAR";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_30300;
  qword_30300 = v1;
}

void sub_ECC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_ECE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 regionsList];
  v4 = [v2 filteredRegionsForRegionList:v3 searchString:*(a1 + 40)];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained isCancelled];

  if ((v6 & 1) == 0)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_EDD4;
    v7[3] = &unk_28CF8;
    v7[4] = *(a1 + 32);
    v8 = v4;
    dispatch_sync(&_dispatch_main_q, v7);
  }
}

id sub_EDD4(uint64_t a1)
{
  [*(a1 + 32) setFilteredListContent:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 32);

  return [v2 reloadData];
}

void sub_F0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) evaluateWithObject:{a2, a4, a5, a6}];
  if (result)
  {
    result = [*(a1 + 40) addObject:*(a1 + 48)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

uint64_t sub_FCD0(uint64_t a1)
{
  v1 = [*(a1 + 32) listController];
  [v1 deselectHighlightedRow];

  return 1;
}

uint64_t sub_FD2C(uint64_t a1)
{
  v1 = [*(a1 + 32) listController];
  [v1 deselectHighlightedRow];

  return 1;
}

id sub_FFBC()
{
  v1 = &v0[OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions] = 0;
  sub_1AB58();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DateFormatSetting(0);
  v2 = objc_msgSendSuper2(&v10, "init");
  sub_10554();
  v3 = [objc_opt_self() defaultCenter];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v9[4] = sub_124DC;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1043C;
  v9[3] = &unk_28E80;
  v5 = _Block_copy(v9);
  v6 = v2;

  v7 = [v3 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:v5];
  _Block_release(v5);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10150(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat);
  v6 = *(v2 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1AD08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v10);
    sub_12640(&qword_30118, type metadata accessor for DateFormatSetting, &unk_26AF8);
    sub_1AB38();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_102CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions;
  if (!*(v1 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v7);
    sub_12640(&qword_30118, type metadata accessor for DateFormatSetting, &unk_26AF8);
    sub_1AB38();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = sub_11C14(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1043C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A908();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_1A8F8();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

void *sub_10554()
{
  v33 = sub_11A38(&qword_30108, &qword_26B18);
  v1 = *(v33 - 8);
  __chkstk_darwin(v33, v2);
  v4 = (&v29 - v3);
  v5 = objc_opt_self();
  v6 = [v5 currentDateFormat];
  v7 = sub_1ABF8();
  v9 = v8;

  v29 = v0;
  sub_10150(v7, v9);
  v10 = [v5 availableDateFormats];
  sub_122DC(0, &qword_30130, IPDateFormat_ptr);
  v11 = sub_1AC48();

  if (!(v11 >> 62))
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:

    v15 = &_swiftEmptyArrayStorage;
    return sub_102CC(v15);
  }

  v12 = sub_1ACA8();
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  v34 = &_swiftEmptyArrayStorage;
  result = sub_17E1C(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v34;
    v16 = v11;
    v30 = v11 & 0xC000000000000001;
    v31 = v12;
    v32 = v11;
    do
    {
      if (v30)
      {
        v17 = sub_1AC98();
      }

      else
      {
        v17 = *(v16 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = [v17 title];
      v20 = sub_1ABF8();
      v22 = v21;

      v23 = [v18 option];
      v24 = sub_1ABF8();
      v26 = v25;

      sub_1A968();
      v4[2] = v24;
      v4[3] = v26;
      *v4 = v20;
      v4[1] = v22;
      v34 = v15;
      v28 = v15[2];
      v27 = v15[3];
      if (v28 >= v27 >> 1)
      {
        sub_17E1C((v27 > 1), v28 + 1, 1);
        v15 = v34;
      }

      ++v14;
      v15[2] = v28 + 1;
      sub_12324(v4, v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v28);
      v16 = v32;
    }

    while (v31 != v14);

    return sub_102CC(v15);
  }

  __break(1u);
  return result;
}

uint64_t sub_10A10()
{
  swift_getKeyPath();
  sub_12640(&qword_30118, type metadata accessor for DateFormatSetting, &unk_26AF8);
  sub_1AB48();

  v1 = *(v0 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat);

  return v1;
}

uint64_t sub_10B4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_12640(&qword_30118, type metadata accessor for DateFormatSetting, &unk_26AF8);
  sub_1AB48();

  v4 = *(v3 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat);
  a2[1] = v4;
}

uint64_t sub_10C04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10150(v1, v2);
}

uint64_t sub_10C44()
{
  swift_getKeyPath();
  sub_12640(&qword_30118, type metadata accessor for DateFormatSetting, &unk_26AF8);
  sub_1AB48();
}

uint64_t sub_10CF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_12640(&qword_30118, type metadata accessor for DateFormatSetting, &unk_26AF8);
  sub_1AB48();

  *a2 = *(v3 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions);
}

id sub_10E14()
{
  v1 = sub_11A38(&qword_30108, &qword_26B18);
  v57 = *(v1 - 8);
  __chkstk_darwin(v1 - 8, v2);
  v4 = (v51 - v3);
  type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v50._countAndFlagsBits = 0xE000000000000000;
  v60.value._object = 0x80000000000264C0;
  v59._countAndFlagsBits = 0x524F465F45544144;
  v59._object = 0xEB0000000054414DLL;
  v60.value._countAndFlagsBits = 0xD000000000000015;
  v7.super.isa = v6;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  sub_1A918(v59, v60, v7, v61, 0, v50);

  v8 = type metadata accessor for DateFormatSetting(0);
  v58[3] = v8;
  v58[0] = v0;
  v9 = v0;
  v10 = sub_1ABC8();

  if (v8)
  {
    v11 = sub_12168(v58, v8);
    v12 = *(v8 - 8);
    __chkstk_darwin(v11, v11);
    v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_1ACF8();
    (*(v12 + 8))(v14, v8);
    sub_121AC(v58);
  }

  else
  {
    v15 = 0;
  }

  sub_122DC(0, &qword_30110, &off_285B0);
  v16 = [objc_allocWithZone(PSSpecifier) initWithName:v10 target:v15 set:"setDateFormatAndUpdateFooterTextWithDateFormat:specifier:" get:"dateFormat" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (!v16)
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = sub_1ABC8();
  v56 = v16;
  [v16 setIdentifier:v18];

  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting___observationRegistrar;
  v58[0] = v9;
  v20 = sub_12640(&qword_30118, type metadata accessor for DateFormatSetting, &unk_26AF8);
  sub_1AB48();

  v21 = OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions;
  v22 = *&v9[OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions];
  if (!v22)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v23 = *(v22 + 16);
  v24 = &_swiftEmptyArrayStorage;
  if (v23)
  {
    v52 = OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions;
    v53 = v20;
    v54 = v19;
    v55 = v9;
    v58[0] = &_swiftEmptyArrayStorage;

    sub_17E7C(0, v23, 0);
    v24 = v58[0];
    v25 = *(v57 + 80);
    v51[1] = v22;
    v26 = v22 + ((v25 + 32) & ~v25);
    v27 = *(v57 + 72);
    do
    {
      sub_11B3C(v26, v4);
      v29 = v4[2];
      v28 = v4[3];

      sub_11BAC(v4);
      v58[0] = v24;
      v31 = v24[2];
      v30 = v24[3];
      if (v31 >= v30 >> 1)
      {
        sub_17E7C((v30 > 1), v31 + 1, 1);
        v24 = v58[0];
      }

      v24[2] = v31 + 1;
      v32 = &v24[2 * v31];
      *(v32 + 4) = v29;
      *(v32 + 5) = v28;
      v26 += v27;
      --v23;
    }

    while (v23);

    v9 = v55;
    v21 = v52;
  }

  swift_getKeyPath();
  v58[0] = v9;
  sub_1AB48();

  v33 = *&v9[v21];
  if (!v33)
  {
    goto LABEL_22;
  }

  v34 = v33[2];
  v35 = &_swiftEmptyArrayStorage;
  if (v34)
  {
    v58[0] = &_swiftEmptyArrayStorage;

    sub_17E7C(0, v34, 0);
    v35 = v58[0];
    v36 = *(v57 + 80);
    v55 = v33;
    v37 = v33 + ((v36 + 32) & ~v36);
    v38 = *(v57 + 72);
    do
    {
      sub_11B3C(v37, v4);
      v40 = *v4;
      v39 = v4[1];

      sub_11BAC(v4);
      v58[0] = v35;
      v42 = v35[2];
      v41 = v35[3];
      if (v42 >= v41 >> 1)
      {
        sub_17E7C((v41 > 1), v42 + 1, 1);
        v35 = v58[0];
      }

      v35[2] = v42 + 1;
      v43 = &v35[2 * v42];
      *(v43 + 4) = v40;
      *(v43 + 5) = v39;
      v37 += v38;
      --v34;
    }

    while (v34);
  }

  sub_16E44(v24);

  isa = sub_1AC38().super.isa;
  sub_16E44(v35);
  v45 = sub_1AC38().super.isa;

  v46 = v56;
  [v56 setValues:isa titles:v45];

  v47 = sub_1AC38().super.isa;
  [v46 setProperty:v47 forKey:PSValidValuesKey];

  v48 = sub_1AC38().super.isa;
  [v46 setProperty:v48 forKey:PSValidTitlesKey];

  sub_11DF0();
  v49 = sub_1ABC8();

  [v46 setProperty:v49 forKey:PSStaticTextMessageKey];

  return v46;
}

id sub_11534()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DateFormatSetting(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DateFormatSetting(uint64_t a1)
{
  result = qword_300F8;
  if (!qword_300F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11650(uint64_t a1)
{
  result = sub_1AB68();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_116FC(uint64_t a1, id *a2)
{
  result = sub_1ABD8();
  *a2 = 0;
  return result;
}

uint64_t sub_11774(uint64_t a1, id *a2)
{
  v3 = sub_1ABE8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_117F4@<X0>(uint64_t *a3@<X8>)
{
  sub_1ABF8();
  v4 = sub_1ABC8();

  *a3 = v4;
  return result;
}

uint64_t sub_11838(uint64_t a1, uint64_t a2)
{
  sub_1ABF8();
  v2 = sub_1AC28();

  return v2;
}

uint64_t sub_11874(uint64_t a1, uint64_t a2)
{
  sub_1ABF8();
  sub_1AC18();
}

Swift::Int sub_118C8(uint64_t a1, uint64_t a2)
{
  sub_1ABF8();
  sub_1AD28();
  sub_1AC18();
  v2 = sub_1AD38();

  return v2;
}

uint64_t sub_1193C(void *a1, uint64_t *a2)
{
  v2 = sub_1ABF8();
  v4 = v3;
  if (v2 == sub_1ABF8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1AD08();
  }

  return v7 & 1;
}

uint64_t sub_119C4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1ABC8();

  *a2 = v3;
  return result;
}

uint64_t sub_11A0C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1ABF8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_11A38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_11A80(uint64_t a1)
{
  v2 = sub_12640(&qword_30158, type metadata accessor for Identifier, &unk_26CE4);
  v3 = sub_12640(&qword_30160, type metadata accessor for Identifier, &unk_26C38);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_11B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30108, &qword_26B18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11BAC(uint64_t a1)
{
  v2 = sub_11A38(&qword_30108, &qword_26B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30108, &qword_26B18);
  v6 = __chkstk_darwin(v4, v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6, v9);
  v12 = (&v22 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      sub_11B3C(v15, v12);
      sub_11B3C(v16, v8);
      v18 = *v12 == *v8 && v12[1] == v8[1];
      if (!v18 && (sub_1AD08() & 1) == 0)
      {
        break;
      }

      v19 = v12[2] == v8[2] && v12[3] == v8[3];
      if (!v19 && (sub_1AD08() & 1) == 0)
      {
        break;
      }

      v20 = sub_1A958();
      sub_11BAC(v8);
      sub_11BAC(v12);
      if (v20)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_11BAC(v8);
    sub_11BAC(v12);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_11DF0()
{
  v0 = sub_1A948();
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0, v1);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() sampleTime];
  sub_1A938();
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setDateStyle:1];
  isa = sub_1A928().super.isa;
  v6 = [v4 stringFromDate:isa];

  v7 = sub_1ABF8();
  v37 = v8;
  v38 = v7;

  [v4 setDateStyle:2];
  v9 = sub_1A928().super.isa;
  v10 = [v4 stringFromDate:v9];

  v11 = sub_1ABF8();
  v35 = v12;
  v36 = v11;

  [v4 setDateStyle:3];
  v13 = sub_1A928().super.isa;
  v14 = [v4 stringFromDate:v13];

  v34 = sub_1ABF8();
  v16 = v15;

  [v4 setDateStyle:4];
  v17 = sub_1A928().super.isa;
  v18 = [v4 stringFromDate:v17];

  v19 = sub_1ABF8();
  v21 = v20;

  type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v32._countAndFlagsBits = 0x8000000000026500;
  v41._countAndFlagsBits = 0xD00000000000001FLL;
  v41._object = 0x80000000000264E0;
  v42.value._object = 0x80000000000264C0;
  v42.value._countAndFlagsBits = 0xD000000000000015;
  v24.super.isa = v23;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_1A918(v41, v42, v24, v43, 0xD000000000000044, v32);

  sub_11A38(&qword_30120, &qword_26B48);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26A70;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_121F8();
  v27 = v37;
  *(v25 + 32) = v38;
  *(v25 + 40) = v27;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  v28 = v35;
  v29 = v36;
  *(v25 + 64) = v26;
  *(v25 + 72) = v29;
  *(v25 + 80) = v28;
  *(v25 + 136) = &type metadata for String;
  *(v25 + 144) = v26;
  *(v25 + 112) = v34;
  *(v25 + 120) = v16;
  *(v25 + 176) = &type metadata for String;
  *(v25 + 184) = v26;
  *(v25 + 152) = v19;
  *(v25 + 160) = v21;
  v30 = sub_1AC08();

  (*(v39 + 8))(v3, v40);
  return v30;
}

void *sub_12168(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_121AC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_121F8()
{
  result = qword_30128;
  if (!qword_30128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_30128);
  }

  return result;
}

uint64_t sub_1224C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions) = *(v0 + 24);
}

uint64_t sub_12290()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_122DC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_12324(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30108, &qword_26B18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_12394(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = sub_1ABC8();
  [v4 setDateFormat:v5];

  _CFLocaleResetCurrent();
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = sub_1ABC8();
  CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);

  sub_11DF0();
  v8 = sub_1ABC8();

  [a3 setProperty:v8 forKey:PSStaticTextMessageKey];
}

uint64_t sub_124A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for Identifier()
{
  if (!qword_30138)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_30138);
    }
  }
}

uint64_t sub_12640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_128D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30168, &qword_26D28);
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v7, v10);
  v29 = &v28 - v12;
  __chkstk_darwin(v11, v13);
  v30 = &v28 - v14;
  result = sub_13128();
  v16 = result;
  v17 = *(result + 16);
  if (v17)
  {
    v18 = 0;
    while (v18 < *(v16 + 16))
    {
      sub_13398(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v9);
      v19 = [v9[2] formattedNumber];
      v20 = sub_1ABF8();
      v22 = v21;

      if (v20 == a1 && v22 == a2)
      {
        goto LABEL_11;
      }

      v24 = sub_1AD08();

      if (v24)
      {

        goto LABEL_13;
      }

      ++v18;
      result = sub_13408(v9);
      if (v17 == v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    __break(1u);
LABEL_11:

LABEL_13:

    v25 = v29;
    sub_13470(v9, v29);
    v26 = v25;
    v27 = v30;
    sub_13470(v26, v30);
    [v31 setNumberFormat:*(v27 + 16)];
    return sub_13408(v27);
  }

  return result;
}

id sub_12B58()
{
  v1 = sub_11A38(&qword_30168, &qword_26D28);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8, v3);
  v5 = (v50 - v4);
  v6 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v49._countAndFlagsBits = 0xE000000000000000;
  v55.value._object = 0x80000000000264C0;
  v54._countAndFlagsBits = 0x465F5245424D554ELL;
  v54._object = 0xED000054414D524FLL;
  v55.value._countAndFlagsBits = 0xD000000000000015;
  v9.super.isa = v8;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  sub_1A918(v54, v55, v9, v56, 0, v49);

  v53[3] = v6;
  v53[0] = v0;
  v10 = v0;
  v11 = sub_1ABC8();

  if (v6)
  {
    v12 = sub_12168(v53, v6);
    v13 = *(v6 - 8);
    __chkstk_darwin(v12, v12);
    v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_1ACF8();
    (*(v13 + 8))(v15, v6);
    sub_121AC(v53);
  }

  else
  {
    v16 = 0;
  }

  sub_122DC(0, &qword_30170, off_285A8);
  v17 = [objc_allocWithZone(PSSpecifier) initWithName:v11 target:v16 set:"setNumberFormatAsString:" get:"numberFormatAsString" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v17)
  {
    v19 = sub_1ABC8();
    v52 = v17;
    [v17 setIdentifier:v19];

    v20 = sub_13128();
    v21 = v20[2];
    v22 = &_swiftEmptyArrayStorage;
    if (v21)
    {
      v53[0] = &_swiftEmptyArrayStorage;
      sub_17E7C(0, v21, 0);
      v23 = v53[0];
      v24 = *(v2 + 80);
      v50[1] = v20;
      v51 = v2;
      v25 = v20 + ((v24 + 32) & ~v24);
      v26 = v2[9];
      do
      {
        sub_13398(v25, v5);
        v27 = [v5[2] formattedNumber];
        v28 = sub_1ABF8();
        v30 = v29;

        sub_13408(v5);
        v53[0] = v23;
        v32 = v23[2];
        v31 = v23[3];
        if (v32 >= v31 >> 1)
        {
          sub_17E7C((v31 > 1), v32 + 1, 1);
          v23 = v53[0];
        }

        v23[2] = v32 + 1;
        v33 = &v23[2 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v30;
        v25 += v26;
        --v21;
      }

      while (v21);

      v2 = v51;
      v22 = &_swiftEmptyArrayStorage;
    }

    else
    {

      v23 = &_swiftEmptyArrayStorage;
    }

    v34 = sub_13128();
    v35 = v34[2];
    if (v35)
    {
      v53[0] = &_swiftEmptyArrayStorage;
      sub_17E7C(0, v35, 0);
      v22 = v53[0];
      v36 = *(v2 + 80);
      v51 = v34;
      v37 = v34 + ((v36 + 32) & ~v36);
      v38 = v2[9];
      do
      {
        sub_13398(v37, v5);
        v40 = *v5;
        v39 = v5[1];

        sub_13408(v5);
        v53[0] = v22;
        v42 = v22[2];
        v41 = v22[3];
        if (v42 >= v41 >> 1)
        {
          sub_17E7C((v41 > 1), v42 + 1, 1);
          v22 = v53[0];
        }

        v22[2] = v42 + 1;
        v43 = &v22[2 * v42];
        *(v43 + 4) = v40;
        *(v43 + 5) = v39;
        v37 += v38;
        --v35;
      }

      while (v35);
    }

    sub_16E44(v23);

    isa = sub_1AC38().super.isa;
    sub_16E44(v22);
    v45 = sub_1AC38().super.isa;

    v46 = v52;
    [v52 setValues:isa titles:v45];

    v47 = sub_1AC38().super.isa;
    [v46 setProperty:v47 forKey:PSValidValuesKey];

    v48 = sub_1AC38().super.isa;
    [v46 setProperty:v48 forKey:PSValidTitlesKey];

    return v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_13128()
{
  v22 = sub_11A38(&qword_30168, &qword_26D28);
  v0 = *(v22 - 8);
  __chkstk_darwin(v22, v1);
  v3 = (&v20 - v2);
  v4 = [objc_opt_self() availableFormats];
  sub_122DC(0, &qword_30178, IPNumberFormat_ptr);
  v5 = sub_1AC48();

  if (!(v5 >> 62))
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1ACA8();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v23 = &_swiftEmptyArrayStorage;
  result = sub_17E9C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v23;
    v10 = v5;
    v21 = v5 & 0xC000000000000001;
    v11 = v5;
    do
    {
      if (v21)
      {
        v12 = sub_1AC98();
      }

      else
      {
        v12 = *(v10 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = [v12 formattedNumber];
      v15 = sub_1ABF8();
      v17 = v16;

      sub_1A968();
      v3[1] = v17;
      v3[2] = v13;
      *v3 = v15;
      v23 = v9;
      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        sub_17E9C((v18 > 1), v19 + 1, 1);
        v9 = v23;
      }

      ++v8;
      v9[2] = v19 + 1;
      sub_13470(v3, v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v19);
      v10 = v11;
    }

    while (v6 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_13398(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30168, &qword_26D28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13408(uint64_t a1)
{
  v2 = sub_11A38(&qword_30168, &qword_26D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13470(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30168, &qword_26D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_134E0()
{
  result = qword_30180;
  if (!qword_30180)
  {
    type metadata accessor for Settings();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_30180);
  }

  return result;
}

void sub_135F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAE8();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = v21 - v11;
  type metadata accessor for Settings();
  sub_134E0();
  sub_1AB78();
  sub_1AB88();

  v13 = objc_opt_self();
  v14 = [v13 preferredLocale];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  sub_1A9C8();

  sub_1A998();
  v16 = *(v5 + 8);
  v16(v9, v4);
  sub_1A988();
  isa = sub_1A9B8().super.isa;
  v16(v12, v4);
  v18 = [(objc_class *)isa objectForKey:NSLocaleMeasurementSystem];

  if (!v18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1AC68();
  swift_unknownObjectRelease();
  sub_142C4(v22, &v23);
  swift_dynamicCast();
  if (v21[0] == a1 && v21[1] == a2)
  {

LABEL_7:

    [v13 _setPreferredMeasurementSystem:0];
    return;
  }

  v19 = sub_1AD08();

  if (v19)
  {
    goto LABEL_7;
  }

  v20 = sub_1ABC8();

  [v13 _setPreferredMeasurementSystem:v20];
}

id sub_138E8()
{
  v1 = sub_11A38(&qword_30108, &qword_26B18);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8, v3);
  v5 = (v48 - v4);
  v6 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v47._countAndFlagsBits = 0xE000000000000000;
  v52._object = 0x80000000000266C0;
  v53.value._countAndFlagsBits = 0xD000000000000015;
  v53.value._object = 0x80000000000264C0;
  v52._countAndFlagsBits = 0xD000000000000012;
  v9.super.isa = v8;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  sub_1A918(v52, v53, v9, v54, 0, v47);

  v51[3] = v6;
  v51[0] = v0;
  v10 = v0;
  v11 = sub_1ABC8();

  if (v6)
  {
    v12 = sub_12168(v51, v6);
    v13 = *(v6 - 8);
    __chkstk_darwin(v12, v12);
    v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_1ACF8();
    (*(v13 + 8))(v15, v6);
    sub_121AC(v51);
  }

  else
  {
    v16 = 0;
  }

  sub_13E80();
  v17 = [objc_allocWithZone(PSSpecifier) initWithName:v11 target:v16 set:"setMeasurementSystem:" get:"measurementSystem" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v17)
  {
    v19 = sub_1ABC8();
    v50 = v17;
    [v17 setIdentifier:v19];

    v20 = sub_13F94();
    v21 = *(v20 + 16);
    v22 = &_swiftEmptyArrayStorage;
    if (v21)
    {
      v51[0] = &_swiftEmptyArrayStorage;
      sub_17E7C(0, v21, 0);
      v23 = v51[0];
      v24 = *(v2 + 80);
      v48[1] = v20;
      v49 = v2;
      v25 = v20 + ((v24 + 32) & ~v24);
      v26 = *(v2 + 72);
      do
      {
        sub_11B3C(v25, v5);
        v27 = v5[2];
        v28 = v5[3];

        sub_11BAC(v5);
        v51[0] = v23;
        v30 = v23[2];
        v29 = v23[3];
        if (v30 >= v29 >> 1)
        {
          sub_17E7C((v29 > 1), v30 + 1, 1);
          v23 = v51[0];
        }

        v23[2] = v30 + 1;
        v31 = &v23[2 * v30];
        *(v31 + 4) = v27;
        *(v31 + 5) = v28;
        v25 += v26;
        --v21;
      }

      while (v21);

      v2 = v49;
      v22 = &_swiftEmptyArrayStorage;
    }

    else
    {

      v23 = &_swiftEmptyArrayStorage;
    }

    v32 = sub_13F94();
    v33 = *(v32 + 16);
    if (v33)
    {
      v51[0] = &_swiftEmptyArrayStorage;
      sub_17E7C(0, v33, 0);
      v22 = v51[0];
      v34 = *(v2 + 80);
      v49 = v32;
      v35 = v32 + ((v34 + 32) & ~v34);
      v36 = *(v2 + 72);
      do
      {
        sub_11B3C(v35, v5);
        v38 = *v5;
        v37 = v5[1];

        sub_11BAC(v5);
        v51[0] = v22;
        v40 = v22[2];
        v39 = v22[3];
        if (v40 >= v39 >> 1)
        {
          sub_17E7C((v39 > 1), v40 + 1, 1);
          v22 = v51[0];
        }

        v22[2] = v40 + 1;
        v41 = &v22[2 * v40];
        *(v41 + 4) = v38;
        *(v41 + 5) = v37;
        v35 += v36;
        --v33;
      }

      while (v33);
    }

    sub_16E44(v23);

    isa = sub_1AC38().super.isa;
    sub_16E44(v22);
    v43 = sub_1AC38().super.isa;

    v44 = v50;
    [v50 setValues:isa titles:v43];

    v45 = sub_1AC38().super.isa;
    [v44 setProperty:v45 forKey:PSValidValuesKey];

    v46 = sub_1AC38().super.isa;
    [v44 setProperty:v46 forKey:PSValidTitlesKey];

    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_13E80()
{
  result = qword_30188;
  if (!qword_30188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_30188);
  }

  return result;
}

void sub_13ECC()
{
  v0 = [objc_opt_self() preferredLocale];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 objectForKey:NSLocaleMeasurementSystem];

    if (v2)
    {
      sub_1AC68();
      swift_unknownObjectRelease();
      sub_142C4(v3, &v4);
      swift_dynamicCast();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_13F94()
{
  sub_11A38(&qword_30190, &unk_26D40);
  v0 = *(sub_11A38(&qword_30108, &qword_26B18) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v35 = *(v0 + 72);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26D30;
  v2 = (v36 + v1);
  type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v32._object = v4;
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v37._countAndFlagsBits = 0xD000000000000012;
  v32._countAndFlagsBits = 0x8000000000026700;
  v37._object = 0x80000000000266E0;
  v40.value._object = 0x80000000000264C0;
  v40.value._countAndFlagsBits = 0xD000000000000015;
  v6.super.isa = v5;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v7 = sub_1A918(v37, v40, v6, v43, 0xD00000000000001ALL, v32);
  v9 = v8;

  v10 = sub_1ABF8();
  v12 = v11;
  sub_1A968();
  v2[2] = v10;
  v2[3] = v12;
  *v2 = v7;
  v2[1] = v9;
  v13 = (v36 + v1 + v35);
  v14 = [v4 bundleForClass:ObjCClassFromMetadata];
  v33._countAndFlagsBits = 0x8000000000026700;
  v38._countAndFlagsBits = 0x4D4552555341454DLL;
  v38._object = 0xEE0053555F544E45;
  v41.value._object = 0x80000000000264C0;
  v41.value._countAndFlagsBits = 0xD000000000000015;
  v15.super.isa = v14;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v16 = sub_1A918(v38, v41, v15, v44, 0xD00000000000001ALL, v33);
  v18 = v17;

  v19 = sub_1ABF8();
  v21 = v20;
  sub_1A968();
  v13[2] = v19;
  v13[3] = v21;
  *v13 = v16;
  v13[1] = v18;
  v22 = (v36 + v1 + 2 * v35);
  v23 = [v34._object bundleForClass:ObjCClassFromMetadata];
  v34._countAndFlagsBits = 0x8000000000026700;
  v39._object = 0xEE004B555F544E45;
  v42.value._object = 0x80000000000264C0;
  v39._countAndFlagsBits = 0x4D4552555341454DLL;
  v42.value._countAndFlagsBits = 0xD000000000000015;
  v24.super.isa = v23;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v25 = sub_1A918(v39, v42, v24, v45, 0xD00000000000001ALL, v34);
  v27 = v26;

  v28 = sub_1ABF8();
  v30 = v29;
  sub_1A968();
  v22[2] = v28;
  v22[3] = v30;
  *v22 = v25;
  v22[1] = v27;
  return v36;
}

_OWORD *sub_142C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1438C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAE8();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = v21 - v11;
  type metadata accessor for Settings();
  sub_134E0();
  sub_1AB78();
  sub_1AB88();

  v13 = objc_opt_self();
  v14 = [v13 preferredLocale];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  sub_1A9C8();

  sub_1A998();
  v16 = *(v5 + 8);
  v16(v9, v4);
  sub_1A988();
  isa = sub_1A9B8().super.isa;
  v16(v12, v4);
  v18 = [(objc_class *)isa objectForKey:NSLocaleTemperatureUnit];

  if (!v18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1AC68();
  swift_unknownObjectRelease();
  sub_142C4(&v22, &v23);
  swift_dynamicCast();
  if (v21[0] == a1 && v21[1] == a2)
  {

    v19 = 0;
  }

  else
  {
    v20 = sub_1AD08();

    if (v20)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_1ABC8();
    }
  }

  [v13 _setPreferredTemperatureUnit:v19];
}

id sub_14670()
{
  v1 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = objc_opt_self();
  v3 = [v51 bundleForClass:ObjCClassFromMetadata];
  v43._countAndFlagsBits = 0xE000000000000000;
  v54._object = 0x8000000000026780;
  v59.value._object = 0x80000000000264C0;
  v54._countAndFlagsBits = 0xD000000000000010;
  v59.value._countAndFlagsBits = 0xD000000000000015;
  v4.super.isa = v3;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1A918(v54, v59, v4, v64, 0, v43);

  v53[3] = v1;
  v53[0] = v0;
  v5 = v0;
  v6 = sub_1ABC8();

  if (v1)
  {
    v7 = sub_12168(v53, v1);
    v8 = *(v1 - 8);
    __chkstk_darwin(v7, v7);
    v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_1ACF8();
    (*(v8 + 8))(v10, v1);
    sub_121AC(v53);
  }

  else
  {
    v11 = 0;
  }

  sub_14C14();
  v12 = [objc_allocWithZone(PSSpecifier) initWithName:v6 target:v11 set:"setTemperatureUnit:" get:"temperatureUnit" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v12)
  {
    v14 = sub_1ABC8();
    [v12 setIdentifier:v14];

    v48 = sub_11A38(&qword_301A0, &qword_26D60);
    inited = swift_initStackObject();
    v52 = xmmword_26D50;
    *(inited + 16) = xmmword_26D50;
    *(inited + 32) = sub_1ABF8();
    v50 = inited + 32;
    *(inited + 40) = v16;
    *(inited + 48) = sub_1ABF8();
    *(inited + 56) = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = v52;
    v19 = v51;
    v20 = [v51 bundleForClass:ObjCClassFromMetadata];
    v44._countAndFlagsBits = 0xE000000000000000;
    v55._countAndFlagsBits = 0x20737569736C6543;
    v55._object = 0xAD00002943B0C228;
    v60.value._object = 0x80000000000264C0;
    v60.value._countAndFlagsBits = 0xD000000000000015;
    v21.super.isa = v20;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v22 = sub_1A918(v55, v60, v21, v65, 0, v44);
    v49 = v12;
    v24 = v23;

    *(v18 + 32) = v22;
    *(v18 + 40) = v24;
    v25 = [v19 bundleForClass:ObjCClassFromMetadata];
    v45._countAndFlagsBits = 0xE000000000000000;
    v56._object = 0x80000000000267A0;
    v61.value._object = 0x80000000000264C0;
    v56._countAndFlagsBits = 0x1000000000000010;
    v61.value._countAndFlagsBits = 0xD000000000000015;
    v26.super.isa = v25;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    v27 = sub_1A918(v56, v61, v26, v66, 0, v45);
    v29 = v28;

    *(v18 + 48) = v27;
    *(v18 + 56) = v29;
    v30 = swift_initStackObject();
    *(v30 + 16) = v52;
    v31 = [v19 bundleForClass:ObjCClassFromMetadata];
    v46._countAndFlagsBits = 0xE000000000000000;
    v62.value._object = 0x80000000000264C0;
    v57._countAndFlagsBits = 4436162;
    v57._object = 0xA300000000000000;
    v32.super.isa = v31;
    v62.value._countAndFlagsBits = 0xD000000000000015;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v33 = sub_1A918(v57, v62, v32, v67, 0, v46);
    v35 = v34;

    *(v30 + 32) = v33;
    *(v30 + 40) = v35;
    v36 = [v19 bundleForClass:ObjCClassFromMetadata];
    v47._countAndFlagsBits = 0xE000000000000000;
    v58._countAndFlagsBits = 4632770;
    v63.value._object = 0x80000000000264C0;
    v58._object = 0xA300000000000000;
    v63.value._countAndFlagsBits = 0xD000000000000015;
    v37.super.isa = v36;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    v38 = sub_1A918(v58, v63, v37, v68, 0, v47);
    v40 = v39;

    *(v30 + 48) = v38;
    *(v30 + 56) = v40;
    v41 = sub_16E44(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v42 = v49;
    sub_14D28(v41, v18, v30);

    swift_setDeallocating();
    swift_arrayDestroy();
    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_14C14()
{
  result = qword_30198;
  if (!qword_30198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_30198);
  }

  return result;
}

void sub_14C60()
{
  v0 = [objc_opt_self() preferredLocale];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 objectForKey:NSLocaleTemperatureUnit];

    if (v2)
    {
      sub_1AC68();
      swift_unknownObjectRelease();
      sub_142C4(&v3, &v4);
      swift_dynamicCast();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_14D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    isa = sub_1AC38().super.isa;
    sub_16E44(a2);
    v7.super.isa = sub_1AC38().super.isa;

    sub_16E44(a3);
    v8.super.isa = sub_1AC38().super.isa;

    [v3 setValues:isa titles:v7.super.isa shortTitles:v8.super.isa];
  }

  else
  {
    v7.super.isa = sub_1AC38().super.isa;
    sub_16E44(a2);
    v8.super.isa = sub_1AC38().super.isa;

    [v3 setValues:v7.super.isa titles:v8.super.isa];
  }

  v9 = sub_1AC38().super.isa;
  [v3 setProperty:v9 forKey:PSValidValuesKey];

  v10 = sub_1AC38().super.isa;
  [v3 setProperty:v10 forKey:PSValidTitlesKey];
}

uint64_t sub_14EB8()
{
  v0 = sub_1A9A8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_11A38(&qword_301C0, &unk_26D80);
  v5 = v4 - 8;
  __chkstk_darwin(v4, v6);
  v8 = &v27 - v7;
  v9 = sub_11A38(&qword_301A8, &qword_26D68);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v27 - v15;
  __chkstk_darwin(v14, v17);
  v19 = &v27 - v18;
  sub_1AA78();
  sub_1AA18();
  v20 = *(v5 + 56);
  sub_15B24(v19, v8);
  sub_15B24(v16, &v8[v20]);
  v21 = *(v1 + 48);
  if (v21(v8, 1, v0) != 1)
  {
    sub_15B24(v8, v28);
    if (v21(&v8[v20], 1, v0) != 1)
    {
      v23 = &v8[v20];
      v24 = v27;
      (*(v1 + 32))(v27, v23, v0);
      sub_15BF4();
      v22 = sub_1ABB8();
      v25 = *(v1 + 8);
      v25(v24, v0);
      sub_15B94(v16, &qword_301A8, &qword_26D68);
      sub_15B94(v19, &qword_301A8, &qword_26D68);
      v25(v28, v0);
      sub_15B94(v8, &qword_301A8, &qword_26D68);
      return v22 & 1;
    }

    sub_15B94(v16, &qword_301A8, &qword_26D68);
    sub_15B94(v19, &qword_301A8, &qword_26D68);
    (*(v1 + 8))(v28, v0);
    goto LABEL_6;
  }

  sub_15B94(v16, &qword_301A8, &qword_26D68);
  sub_15B94(v19, &qword_301A8, &qword_26D68);
  if (v21(&v8[v20], 1, v0) != 1)
  {
LABEL_6:
    sub_15B94(v8, &qword_301C0, &unk_26D80);
    v22 = 0;
    return v22 & 1;
  }

  sub_15B94(v8, &qword_301A8, &qword_26D68);
  v22 = 1;
  return v22 & 1;
}

void *sub_15280(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v41 = sub_1AAC8();
  v8 = __chkstk_darwin(v41, v7);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8, v10);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = &_swiftEmptyArrayStorage;
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v3)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_17EDC(0, v25[2] + 1, 1);
          v25 = v42;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          sub_17EDC((v27 > 1), v28 + 1, 1);
          v25 = v42;
        }

        v25[2] = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v39;
  }

  return result;
}

uint64_t sub_155C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_11A38(&qword_301A8, &qword_26D68);
  __chkstk_darwin(v3 - 8, v4);
  v49[2] = v49 - v5;
  v6 = sub_1AAC8();
  v52 = *(v6 - 8);
  v53 = v6;
  v8 = __chkstk_darwin(v6, v7);
  v51 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v50 = v49 - v11;
  v12 = sub_11A38(&qword_301B0, &qword_26D70);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v49[1] = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = v49 - v17;
  v19 = sub_11A38(&qword_301B8, &qword_26D78);
  v21 = __chkstk_darwin(v19 - 8, v20);
  v49[0] = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v25 = v49 - v24;
  v26 = sub_1AA48();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26, v28);
  v30 = v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1AA08();
  sub_1AA28();
  v31 = sub_1A9D8();
  v32 = (*(*(v31 - 8) + 48))(v25, 1, v31);
  sub_15B94(v25, &qword_301B8, &qword_26D78);
  if (v32 == 1 && (sub_1AA38(), v33 = sub_1A9E8(), v34 = (*(*(v33 - 8) + 48))(v18, 1, v33), sub_15B94(v18, &qword_301B0, &qword_26D70), v34 == 1) && (v35 = sub_1AA88(), __chkstk_darwin(v35, v36), v49[-2] = v30, v38 = *(sub_15280(sub_15B04, &v49[-4], v37) + 2), , v38 >= 2))
  {
    v39 = objc_opt_self();
    v40 = sub_1ABC8();
    v41 = [v39 addLikelySubtagsForLocaleIdentifier:v40];

    sub_1ABF8();
    v42 = v50;
    sub_1AA58();
    sub_1AA78();
    sub_1AAB8();
    sub_1AAA8();
    v43 = v51;
    sub_1AA68();
    sub_1AA98();
    v44 = sub_1ABC8();

    v45 = [v39 canonicalLocaleIdentifierFromString:v44];

    a1 = sub_1ABF8();
    v46 = v53;
    v47 = *(v52 + 8);
    v47(v43, v53);
    v47(v42, v46);
  }

  else
  {
  }

  (*(v27 + 8))(v30, v26);
  return a1;
}

uint64_t sub_15B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_301A8, &qword_26D68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15B94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_11A38(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_15BF4()
{
  result = qword_301C8;
  if (!qword_301C8)
  {
    sub_1A9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_301C8);
  }

  return result;
}

uint64_t sub_15C4C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[1];
  v7 = *a1 == *a2 && a1[1] == v6;
  if (!v7 && (sub_1AD08() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Option(0, a3, a4, v6);
  if ((sub_1ABB8() & 1) == 0)
  {
    return 0;
  }

  return sub_1A958();
}

uint64_t sub_15D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1A978();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_15DD0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Settings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_15E30(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1A978();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_15EC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1A978();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        v24 = (a1 + v10 + 16) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 48);

          return v25(v24, v7, v5);
        }

        else
        {
          v26 = *(v9 + 48);
          v27 = (v24 + v11 + v12) & ~v12;

          return v26(v27);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_16170(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = sub_1A978();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v24 = (a1 + v12 + 16) & ~v12;
    if (v9 == v16)
    {
      v25 = *(v28 + 56);

      v25(v24, a2, v9, v7);
    }

    else
    {
      v26 = *(v11 + 56);
      v27 = (v24 + v13 + v14) & ~v14;

      v26(v27, a2);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

unint64_t sub_164C8()
{
  result = qword_30278;
  if (!qword_30278)
  {
    sub_1A978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_30278);
  }

  return result;
}

uint64_t sub_1652C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Settings();
  result = sub_1AB78();
  *a2 = result;
  return result;
}

void sub_16650(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v3 = sub_1AAE8();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v46 - v10;
  __chkstk_darwin(v9, v12);
  v14 = &v46 - v13;
  type metadata accessor for Settings();
  sub_134E0();
  sub_1AB78();
  sub_1AB88();

  v15 = objc_opt_self();
  v16 = [v15 preferredLocale];
  if (!v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v16;
  sub_1A9C8();

  sub_1A998();
  v18 = *(v4 + 8);
  v18(v14, v3);
  v19 = sub_1ABC8();

  v20 = [v15 componentsFromLocaleIdentifier:v19];

  v21 = sub_1ABA8();
  v49 = v21;
  v22 = [v15 preferredLocale];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  v24 = objc_opt_self();
  sub_1A9C8();

  sub_1A998();
  v18(v11, v3);
  v25 = sub_1ABC8();

  v26 = [v24 defaultNumberingSystemForLocaleID:v25];

  v27 = sub_1ABF8();
  v29 = v28;

  v30 = v47;
  if (v27 == v47 && v29 == a2)
  {

LABEL_7:
    v32 = v3;

    sub_19AE0(0x737265626D756ELL, 0xE700000000000000);

    v33 = v49;
    goto LABEL_9;
  }

  v31 = sub_1AD08();

  if (v31)
  {
    goto LABEL_7;
  }

  v34 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v34;
  sub_1A000(v30, a2, 0x737265626D756ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v33 = v48;
  v49 = v48;
  v32 = v3;
LABEL_9:
  v36 = [v15 preferredLocale];
  if (!v36)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = v46;
  sub_1A9C8();

  sub_1A998();
  v18(v38, v32);
  v39 = sub_1ABC8();

  v40 = [v15 componentsFromLocaleIdentifier:v39];

  v41 = sub_1ABA8();
  LOBYTE(v40) = sub_19674(v33, v41);

  if (v40)
  {
  }

  else
  {
    sub_18E70(v33);

    isa = sub_1AB98().super.isa;

    v43 = [v15 canonicalLocaleIdentifierFromComponents:isa];

    if (!v43)
    {
      sub_1ABF8();
      v43 = sub_1ABC8();
    }

    [v15 setLocaleOnly:v43];

    _CFLocaleResetCurrent();
    v44 = CFNotificationCenterGetDarwinNotifyCenter();
    v45 = sub_1ABC8();
    CFNotificationCenterPostNotification(v44, v45, 0, 0, 1u);
  }
}

id sub_16BA4()
{
  v0 = sub_1AAE8();
  v1 = *(v0 - 8);
  v3 = __chkstk_darwin(v0, v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v23 - v7;
  v9 = objc_opt_self();
  result = [v9 preferredLocale];
  if (result)
  {
    v11 = result;
    sub_1A9C8();

    sub_1A998();
    v12 = *(v1 + 8);
    v12(v8, v0);
    v13 = sub_1ABC8();

    v14 = [v9 componentsFromLocaleIdentifier:v13];

    v15 = sub_1ABA8();
    if (*(v15 + 16))
    {
      v16 = sub_19818(0x737265626D756ELL, 0xE700000000000000);
      if (v17)
      {
        v18 = *(*(v15 + 56) + 16 * v16);

        return v18;
      }
    }

    result = [v9 preferredLocale];
    if (result)
    {
      v19 = result;
      v20 = objc_opt_self();
      sub_1A9C8();

      sub_1A998();
      v12(v5, v0);
      v21 = sub_1ABC8();

      v22 = [v20 defaultNumberingSystemForLocaleID:v21];

      v18 = sub_1ABF8();
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_16E44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_17E5C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_17E5C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_142C4(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_16F44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_17E5C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_17E5C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_142C4(&v8, &v2[4 * v6 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1729C(uint64_t a1)
{
  v36 = a1;
  v1 = sub_1AAE8();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v35 - v8;
  v35 = sub_1AB28();
  v10 = *(v35 - 8);
  v12 = __chkstk_darwin(v35, v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v35 - v16;
  type metadata accessor for Settings();
  sub_18E28(&qword_30180, type metadata accessor for Settings, &unk_26E28);
  sub_1AB78();
  sub_1AB88();

  v18 = [objc_opt_self() preferredLocale];
  if (v18)
  {
    v19 = v18;
    sub_1A9C8();

    sub_1A998();
    v20 = *(v2 + 8);
    v20(v6, v1);
    sub_1A988();
    sub_1AAD8();
    v20(v9, v1);
    v21 = sub_1AAF8();
    v22 = *(v10 + 8);
    v23 = v35;
    v22(v17, v35);
    v24 = v36;
    if (v21 == v36)
    {
      v25 = 0;
    }

    else
    {
      sub_1AB18();
      isa = sub_1AB08().super.isa;
      v22(v14, v23);
      v27 = [(objc_class *)isa calendarIdentifier];

      sub_11A38(&qword_302B0, &qword_26EB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26E80;
      *(inited + 32) = v27;
      v29 = inited + 32;
      *(inited + 40) = v24;
      v25 = sub_18D3C(inited);
      swift_setDeallocating();
      sub_15B94(v29, &qword_302B8, &qword_26EB8);
    }

    v30 = [objc_opt_self() standardUserDefaults];
    if (v25)
    {
      type metadata accessor for Identifier();
      sub_18E28(&qword_30158, type metadata accessor for Identifier, &unk_26CE4);
      v31.super.isa = sub_1AB98().super.isa;
    }

    else
    {
      v31.super.isa = 0;
    }

    v32 = sub_1ABC8();
    [v30 setObject:v31.super.isa forKey:v32 inDomain:NSGlobalDomain];
    swift_unknownObjectRelease();

    v33 = CFNotificationCenterGetDarwinNotifyCenter();
    v34 = sub_1ABC8();
    CFNotificationCenterPostNotification(v33, v34, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

id sub_17848()
{
  v1 = sub_11A38(&qword_30280, &qword_26E90);
  v48 = *(v1 - 8);
  __chkstk_darwin(v1 - 8, v2);
  v4 = (&v45 - v3);
  v5 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v44._countAndFlagsBits = 0xE000000000000000;
  v51.value._object = 0x80000000000264C0;
  v50._countAndFlagsBits = 0x45575F5453524946;
  v50._object = 0xED00005941444B45;
  v51.value._countAndFlagsBits = 0xD000000000000015;
  v8.super.isa = v7;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  sub_1A918(v50, v51, v8, v52, 0, v44);

  v49[3] = v5;
  v49[0] = v0;
  v9 = v0;
  v10 = sub_1ABC8();

  if (v5)
  {
    v11 = sub_12168(v49, v5);
    v12 = *(v5 - 8);
    __chkstk_darwin(v11, v11);
    v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_1ACF8();
    (*(v12 + 8))(v14, v5);
    sub_121AC(v49);
  }

  else
  {
    v15 = 0;
  }

  sub_122DC(0, &qword_30288, off_285A0);
  v16 = [objc_allocWithZone(PSSpecifier) initWithName:v10 target:v15 set:"setFirstWeekdayAsNSNumber:" get:"firstWeekdayAsNSNumber" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v16)
  {
    v18 = sub_1ABC8();
    v47 = v16;
    [v16 setIdentifier:v18];

    v19 = sub_187EC();
    v20 = v19[2];
    v21 = &_swiftEmptyArrayStorage;
    if (v20)
    {
      v49[0] = &_swiftEmptyArrayStorage;
      sub_17EFC(0, v20, 0);
      v22 = v49[0];
      v23 = *(v48 + 80);
      v46 = v19;
      v24 = v19 + ((v23 + 32) & ~v23);
      v25 = *(v48 + 72);
      do
      {
        sub_18C58(v24, v4);
        v26 = v4[2];
        sub_15B94(v4, &qword_30280, &qword_26E90);
        v49[0] = v22;
        v28 = v22[2];
        v27 = v22[3];
        if (v28 >= v27 >> 1)
        {
          sub_17EFC((v27 > 1), v28 + 1, 1);
          v22 = v49[0];
        }

        v22[2] = v28 + 1;
        v22[v28 + 4] = v26;
        v24 += v25;
        --v20;
      }

      while (v20);

      v21 = &_swiftEmptyArrayStorage;
    }

    else
    {

      v22 = &_swiftEmptyArrayStorage;
    }

    v29 = sub_187EC();
    v30 = v29[2];
    if (v30)
    {
      v49[0] = &_swiftEmptyArrayStorage;
      sub_17E7C(0, v30, 0);
      v21 = v49[0];
      v31 = *(v48 + 80);
      v46 = v29;
      v32 = v29 + ((v31 + 32) & ~v31);
      v33 = *(v48 + 72);
      do
      {
        sub_18C58(v32, v4);
        v34 = *v4;
        v35 = v4[1];

        sub_15B94(v4, &qword_30280, &qword_26E90);
        v49[0] = v21;
        v37 = v21[2];
        v36 = v21[3];
        if (v37 >= v36 >> 1)
        {
          sub_17E7C((v36 > 1), v37 + 1, 1);
          v21 = v49[0];
        }

        v21[2] = v37 + 1;
        v38 = &v21[2 * v37];
        *(v38 + 4) = v34;
        *(v38 + 5) = v35;
        v32 += v33;
        --v30;
      }

      while (v30);
    }

    sub_16F44(v22);

    isa = sub_1AC38().super.isa;
    sub_16E44(v21);
    v40 = sub_1AC38().super.isa;

    v41 = v47;
    [v47 setValues:isa titles:v40];

    v42 = sub_1AC38().super.isa;
    [v41 setProperty:v42 forKey:PSValidValuesKey];

    v43 = sub_1AC38().super.isa;
    [v41 setProperty:v43 forKey:PSValidTitlesKey];

    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_17E1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18138(a1, a2, a3, *v3, &qword_30190, &unk_26D40, &qword_30108, &qword_26B18);
  *v3 = result;
  return result;
}

char *sub_17E5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_17F1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_17E7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1802C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_17E9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18138(a1, a2, a3, *v3, &qword_302D0, &qword_26ED0, &qword_30168, &qword_26D28);
  *v3 = result;
  return result;
}

void *sub_17EDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_17EFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_184F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_17F1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_11A38(&qword_30290, &qword_26E98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1802C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_11A38(&qword_301A0, &qword_26D60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18138(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_11A38(a5, a6);
  v16 = *(sub_11A38(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_11A38(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_18320(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_11A38(&qword_302C8, &qword_26EC8);
  v10 = *(sub_1AAC8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1AAC8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_184F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_11A38(&qword_30298, &qword_26EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_185FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_11A38(&qword_302A0, &qword_26EA8);
  v10 = *(sub_11A38(&qword_30280, &qword_26E90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_11A38(&qword_30280, &qword_26E90) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_187EC()
{
  v0 = sub_11A38(&qword_30280, &qword_26E90);
  v42 = *(v0 - 8);
  v43 = v0;
  __chkstk_darwin(v0, v1);
  v3 = (&v38 - v2);
  v48 = sub_1AAE8();
  v4 = *(v48 - 8);
  v6 = __chkstk_darwin(v48, v5);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v46 = &v38 - v9;
  v45 = sub_1AB28();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45, v11);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(NSDateFormatter) init];
  [v13 setFormattingContext:2];
  result = [v13 standaloneWeekdaySymbols];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v15 = result;
  v38 = v13;
  v16 = sub_1AC48();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v40 = (v10 + 8);
    v41 = (v4 + 8);
    v39 = v16 + 32;
    v19 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v49 = v19;
      result = [objc_opt_self() preferredLocale];
      if (!result)
      {
        break;
      }

      v20 = result;
      v21 = v47;
      sub_1A9C8();

      sub_1A998();
      v22 = *v41;
      v23 = v21;
      v24 = v48;
      (*v41)(v23, v48);
      v25 = v46;
      sub_1A988();
      v26 = v44;
      sub_1AAD8();
      v22(v25, v24);
      v27 = sub_1AAF8();
      result = (*v40)(v26, v45);
      v28 = v27 + v18;
      if (__OFADD__(v27, v18))
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        break;
      }

      v29 = __OFSUB__(v28, 1);
      v30 = v28 - 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v31 = v30 % v17;
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (v31 >= *(v16 + 16))
      {
        goto LABEL_20;
      }

      v32 = v31 + 1;
      v33 = (v39 + 16 * v31);
      v35 = *v33;
      v34 = v33[1];

      sub_1A968();
      v3[1] = v34;
      v3[2] = v32;
      *v3 = v35;
      v19 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_185FC(0, v19[2] + 1, 1, v19);
      }

      v37 = v19[2];
      v36 = v19[3];
      if (v37 >= v36 >> 1)
      {
        v19 = sub_185FC((v36 > 1), v37 + 1, 1, v19);
      }

      ++v18;
      v19[2] = v37 + 1;
      sub_18CCC(v3, v19 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v37);
      if (v17 == v18)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v19 = &_swiftEmptyArrayStorage;
LABEL_16:

  return v19;
}

uint64_t sub_18C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30280, &qword_26E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30280, &qword_26E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18D3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_11A38(&qword_302C0, &qword_26EC0);
    v3 = sub_1ACD8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_19890(v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_18E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18E70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_11A38(&unk_302E0, &qword_26EE0);
    v2 = sub_1ACD8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_142C4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_142C4(v29, v30);
    result = sub_1AC88(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_142C4(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_191F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings();
  sub_134E0();
  sub_1AB78();
  sub_1AB88();

  v9 = objc_opt_self();
  sub_1A9F8();
  sub_1A998();
  v10 = *(v5 + 8);
  v10(v8, v4);
  v11 = sub_1ABC8();

  v33 = v9;
  v12 = [v9 componentsFromLocaleIdentifier:v11];

  v13 = sub_1ABA8();
  v35 = v13;
  v14 = objc_opt_self();
  sub_1A9F8();
  sub_1A998();
  v10(v8, v4);
  v15 = sub_1ABC8();

  v16 = [v14 defaultCalendarForLocaleID:v15];

  v17 = sub_1ABF8();
  v19 = v18;

  if (v17 == a1 && v19 == a2)
  {

LABEL_5:

    sub_19AE0(0x7261646E656C6163, 0xE800000000000000);

    v21 = v35;
    goto LABEL_7;
  }

  v20 = sub_1AD08();

  if (v20)
  {
    goto LABEL_5;
  }

  v22 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v22;
  sub_1A000(a1, a2, 0x7261646E656C6163, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v21 = v34;
  v35 = v34;
LABEL_7:
  sub_1A9F8();
  sub_1A998();
  v10(v8, v4);
  v24 = sub_1ABC8();

  v25 = v33;
  v26 = [v33 componentsFromLocaleIdentifier:v24];

  v27 = sub_1ABA8();
  LOBYTE(v26) = sub_19674(v21, v27);

  if (v26)
  {
  }

  else
  {
    sub_18E70(v21);

    isa = sub_1AB98().super.isa;

    v29 = [v25 canonicalLocaleIdentifierFromComponents:isa];

    if (!v29)
    {
      sub_1ABF8();
      v29 = sub_1ABC8();
    }

    [v25 setLocaleOnly:v29];

    _CFLocaleResetCurrent();
    v30 = CFNotificationCenterGetDarwinNotifyCenter();
    v31 = sub_1ABC8();
    CFNotificationCenterPostNotification(v30, v31, 0, 0, 1u);
  }
}

uint64_t sub_19674(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_19818(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1AD08();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_19818(uint64_t a1, uint64_t a2)
{
  sub_1AD28();
  sub_1AC18();
  v4 = sub_1AD38();

  return sub_19924(a1, a2, v4);
}

unint64_t sub_19890(uint64_t a1, uint64_t a2)
{
  sub_1ABF8();
  sub_1AD28();
  sub_1AC18();
  v3 = sub_1AD38();

  return sub_199DC(a1, v3);
}

unint64_t sub_19924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AD08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_199DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1ABF8();
      v8 = v7;
      if (v6 == sub_1ABF8() && v8 == v9)
      {
        break;
      }

      v11 = sub_1AD08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_19AE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_19818(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A188();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_19E50(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_19B90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_11A38(&qword_302D8, &qword_26ED8);
  v37 = v4;
  result = sub_1ACC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1AD28();
      sub_1AC18();
      result = sub_1AD38();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19E50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AC78() + 1) & ~v5;
    do
    {
      sub_1AD28();

      sub_1AC18();
      v9 = sub_1AD38();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_19818(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_19B90(v18, a5 & 1);
      v13 = sub_19818(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1AD18();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1A188();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_1A188()
{
  v1 = v0;
  sub_11A38(&qword_302D8, &qword_26ED8);
  v2 = *v0;
  v3 = sub_1ACB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A300()
{
  v0 = sub_1AAE8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  sub_1A9F8();
  sub_1A998();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v7 = sub_1ABC8();

  v8 = [v5 componentsFromLocaleIdentifier:v7];

  v9 = sub_1ABA8();
  if (*(v9 + 16) && (v10 = sub_19818(0x7261646E656C6163, 0xE800000000000000), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 16 * v10);
  }

  else
  {

    v13 = objc_opt_self();
    sub_1A9F8();
    sub_1A998();
    v6(v4, v0);
    v14 = sub_1ABC8();

    v15 = [v13 defaultCalendarForLocaleID:v14];

    v12 = sub_1ABF8();
  }

  return v12;
}

void sub_1A7C0()
{
  v0 = 136315138;
  v1 = "[COSInternationalController localizedDeviceDisplayLanguageNameFromPreferredLanguages:]";
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: deviceDisplayLanguage is nil.", &v0, 0xCu);
}

void sub_1A848()
{
  v0 = 136315138;
  v1 = "[COSInternationalController localizedRegionNameForLocale:]";
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: regionCode is nil.", &v0, 0xCu);
}