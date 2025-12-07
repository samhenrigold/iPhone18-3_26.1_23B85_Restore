uint64_t MapsCachedConformsToProtocol(uint64_t a1, Protocol *a2)
{
  v3 = objc_opt_class();
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  if (qword_965B8 != -1)
  {
    sub_3AB4C();
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_16:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_4:
  v5 = atomic_load(dword_95E60);
  os_unfair_lock_lock(&unk_965C0);
  v6 = [qword_965B0 objectForKey:v4];
  if (!v6)
  {
    v6 = [NSMapTable mapTableWithKeyOptions:256 valueOptions:0];
    [qword_965B0 setObject:v6 forKey:v4];
  }

  v7 = [objc_msgSend(v6 objectForKey:{a2), "unsignedIntegerValue"}];
  os_unfair_lock_unlock(&unk_965C0);
  if (v5 != v7 >> 1)
  {
    v7 = [v4 conformsToProtocol:a2];
    if (qword_965D0 != -1)
    {
      sub_3AB60();
    }

    v8 = qword_965C8;
    if (os_log_type_enabled(qword_965C8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = NSStringFromClass(v4);
      if (v7)
      {
        v11 = "conforms to";
      }

      else
      {
        v11 = "does not conform to";
      }

      v12 = NSStringFromProtocol(a2);
      v15 = 138544130;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%{public}@ %s %{public}@ (gen: %u)", &v15, 0x26u);
    }

    os_unfair_lock_lock(&unk_965C0);
    v13 = [NSNumber numberWithUnsignedInt:v7 | (2 * v5)];
    [v6 setObject:v13 forKey:a2];

    os_unfair_lock_unlock(&unk_965C0);
  }

  return v7 & 1;
}

void sub_2884(id a1)
{
  objc_addLoadImageFunc(sub_28E0);
  qword_965B0 = [NSMapTable mapTableWithKeyOptions:256 valueOptions:0];

  _objc_release_x1();
}

void sub_28F4(id a1)
{
  qword_965C8 = os_log_create("com.apple.Maps", "MapsProtocolConformance");

  _objc_release_x1();
}

uint64_t sub_2CA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2CC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2DB4;
  block[3] = &unk_68FC0;
  v7 = *(a1 + 48);
  v11 = v6;
  v15 = v7;
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_2DB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 64) + 8);
    v5 = *(v3 + 40);
    v4 = (v3 + 40);
    if (!v5)
    {
      objc_storeStrong(v4, v2);
    }
  }

  [*(a1 + 40) addObjectsFromArray:*(a1 + 48)];
  v6 = *(a1 + 56);

  dispatch_group_leave(v6);
}

void sub_2E0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v14 + 1) + 8 * v12) locationOfInterest];
          if (v13)
          {
            [v7 addObject:v13];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2F94(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }

  else
  {
    v4 = [*(a1 + 32) allObjects];
    (*(v1 + 16))(v1, v4, 0);
  }
}

void sub_3408(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_965D8;
  qword_965D8 = v1;

  v59[0] = @"ControlBackgroundColorKey";
  v54 = [UIColor colorWithWhite:0.968627453 alpha:1.0];
  v60[0] = v54;
  v59[1] = @"controlTintColorKey";
  v52 = +[UIColor _maps_keyColor];
  v60[1] = v52;
  v59[2] = @"HairLineColorKey";
  v50 = +[UIColor separatorColor];
  v60[2] = v50;
  v59[3] = @"GreenButtonColorKey";
  v48 = [UIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:? blue:? alpha:?];
  v60[3] = v48;
  v59[4] = @"GreenButtonHighlightedColorKey";
  v46 = [UIColor colorWithRed:0.268235296 green:0.765882313 blue:0.352941185 alpha:1.0];
  v60[4] = v46;
  v59[5] = @"GroupTableViewBackgroundColorKey";
  v44 = [UIColor colorWithRed:0.937254906 green:0.937254906 blue:0.956862748 alpha:1.0];
  v60[5] = v44;
  v59[6] = @"GroupTableViewCellBackgroundColorKey";
  v42 = [UIColor colorWithWhite:1.0 alpha:1.0];
  v60[6] = v42;
  v59[7] = @"BlueButtonHighlightedColorKey";
  v40 = +[UIColor _maps_keyColor];
  v38 = [UIColor colorWithWhite:0.0 alpha:?];
  v37 = [v40 _colorBlendedWithColor:v38];
  v60[7] = v37;
  v59[8] = @"kNavEndButtonBackgroundColor";
  v3 = [UIColor colorWithRed:1.0 green:0.282352954 blue:0.282352954 alpha:1.0];
  v60[8] = v3;
  v59[9] = @"NavResumeButtonHighlightedColor";
  v4 = [UIColor colorWithWhite:0.0 alpha:0.0500000007];
  v5 = [UIColor colorWithWhite:0.0 alpha:0.100000001];
  v6 = [v4 _colorBlendedWithColor:v5];
  v60[9] = v6;
  v59[10] = @"kNavTraySecondaryTextColor";
  v7 = [UIColor colorWithRed:0.392156869 green:0.392156869 blue:0.392156869 alpha:1.0];
  v60[10] = v7;
  v59[11] = @"VibrantTopColorKey";
  v8 = [UIColor colorWithRed:0.203921571 green:0.223529413 blue:0.313725501 alpha:0.150000006];
  v60[11] = v8;
  v59[12] = @"VibrantBackgroundColorKey";
  v9 = [UIColor colorWithWhite:0.479999989 alpha:1.0];
  v60[12] = v9;
  v60[13] = kCAFilterPlusD;
  v59[13] = @"VibrantTopFilterKey";
  v59[14] = @"VibrantBackgroundFilterKey";
  v60[14] = kCAFilterColorBurnBlendMode;
  v59[15] = @"StatusIndicatorHighlightedColorKey";
  v10 = [UIColor colorWithRed:0.0 green:0.419607848 blue:0.874509811 alpha:1.0];
  v60[15] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:16];

  [qword_965D8 setObject:v11 forKeyedSubscript:@"StandardTheme"];
  v12 = [qword_965D8 objectForKeyedSubscript:@"StandardTheme"];
  v13 = [v12 copy];

  [qword_965D8 setObject:v13 forKeyedSubscript:@"StandardThemeWithoutVisualEffect"];
  v57[0] = @"ControlBackgroundColorKey";
  v55 = [UIColor colorWithRed:0.172549024 green:0.168627456 blue:0.168627456 alpha:1.0];
  v58[0] = v55;
  v57[1] = @"controlTintColorKey";
  v53 = +[UIColor whiteColor];
  v58[1] = v53;
  v57[2] = @"HairLineColorKey";
  v51 = +[UIColor separatorColor];
  v58[2] = v51;
  v57[3] = @"GreenButtonColorKey";
  v56 = [UIColor colorWithRed:0.298039228 green:0.850980401 blue:0.392156869 alpha:1.0];
  v58[3] = v56;
  v57[4] = @"GreenButtonHighlightedColorKey";
  v49 = [UIColor colorWithRed:0.268235296 green:0.765882313 blue:0.352941185 alpha:1.0];
  v58[4] = v49;
  v57[5] = @"GroupTableViewBackgroundColorKey";
  v47 = [UIColor colorWithRed:0.752941191 green:0.768627465 blue:0.78039217 alpha:1.0];
  v58[5] = v47;
  v57[6] = @"GroupTableViewCellBackgroundColorKey";
  v45 = [UIColor colorWithRed:0.811764717 green:0.827450991 blue:0.843137264 alpha:1.0];
  v58[6] = v45;
  v57[7] = @"BlueButtonHighlightedColorKey";
  v43 = +[UIColor _maps_keyColor];
  v41 = [UIColor colorWithWhite:0.0 alpha:0.100000001];
  v39 = [v43 _colorBlendedWithColor:v41];
  v58[7] = v39;
  v57[8] = @"kNavEndButtonBackgroundColor";
  v14 = [UIColor colorWithRed:1.0 green:0.23137255 blue:0.188235298 alpha:1.0];
  v58[8] = v14;
  v57[9] = @"NavResumeButtonHighlightedColor";
  v15 = [UIColor colorWithWhite:1.0 alpha:0.0500000007];
  v16 = [UIColor colorWithWhite:0.0 alpha:0.100000001];
  v17 = [v15 _colorBlendedWithColor:v16];
  v58[9] = v17;
  v57[10] = @"kNavTraySecondaryTextColor";
  v18 = [UIColor colorWithRed:0.392156869 green:0.392156869 blue:0.392156869 alpha:1.0];
  v58[10] = v18;
  v57[11] = @"VibrantTopColorKey";
  v19 = [UIColor colorWithWhite:1.0 alpha:0.0399999991];
  v58[11] = v19;
  v57[12] = @"VibrantBackgroundColorKey";
  v20 = [UIColor colorWithWhite:1.0 alpha:0.519999981];
  v58[12] = v20;
  v58[13] = kCAFilterPlusL;
  v57[13] = @"VibrantTopFilterKey";
  v57[14] = @"VibrantBackgroundFilterKey";
  v58[14] = kCAFilterOverlayBlendMode;
  v57[15] = @"StatusIndicatorHighlightedColorKey";
  v21 = [UIColor colorWithRed:0.0235294122 green:0.360784322 blue:0.698039234 alpha:1.0];
  v58[15] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:16];

  [qword_965D8 setObject:v22 forKeyedSubscript:@"DarkTheme"];
  v23 = [qword_965D8 objectForKeyedSubscript:@"DarkTheme"];
  v24 = [v23 mutableCopy];

  v25 = [UIColor colorWithRed:0.152941182 green:0.184313729 blue:0.215686277 alpha:1.0];
  [v24 setObject:v25 forKeyedSubscript:@"ControlBackgroundColorKey"];

  v26 = +[UIColor separatorColor];
  [v24 setObject:v26 forKeyedSubscript:@"HairLineColorKey"];

  v27 = [UIColor colorWithRed:0.113725491 green:0.686274529 blue:0.925490201 alpha:1.0];
  [v24 setObject:v27 forKeyedSubscript:@"controlTintColorKey"];

  v28 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.439999998];
  [v24 setObject:v28 forKeyedSubscript:@"kNavTraySecondaryTextColor"];

  v29 = [UIColor colorWithRed:0.90196079 green:0.20784314 blue:0.168627456 alpha:1.0];
  [v24 setObject:v29 forKeyedSubscript:@"kNavEndButtonBackgroundColor"];

  v30 = [UIColor colorWithRed:0.278431386 green:0.31764707 blue:0.360784322 alpha:1.0];
  [v24 setObject:v30 forKeyedSubscript:@"VibrantBackgroundColorKey"];

  v31 = [UIColor colorWithRed:0.278431386 green:0.31764707 blue:0.360784322 alpha:1.0];
  [v24 setObject:v31 forKeyedSubscript:@"VibrantTopColorKey"];

  v32 = [UIColor colorWithRed:0.243137255 green:0.776470602 blue:0.333333343 alpha:1.0];
  [v24 setObject:v32 forKeyedSubscript:@"GreenButtonColorKey"];

  v33 = [UIColor colorWithRed:0.218823522 green:0.698823512 blue:0.300000012 alpha:1.0];
  [v24 setObject:v33 forKeyedSubscript:@"GreenButtonHighlightedColorKey"];

  v34 = [UIColor colorWithRed:0.125490203 green:0.152941182 blue:0.180392161 alpha:1.0];
  [v24 setObject:v34 forKeyedSubscript:@"GroupTableViewBackgroundColorKey"];

  v35 = [UIColor colorWithRed:0.152941182 green:0.184313729 blue:0.215686277 alpha:1.0];
  [v24 setObject:v35 forKeyedSubscript:@"GroupTableViewCellBackgroundColorKey"];

  v36 = [v24 copy];
  [qword_965D8 setObject:v36 forKeyedSubscript:@"DarkThemeWithoutVisualEffect"];
}

void sub_4014(id a1)
{
  v1 = [[MapsTheme alloc] initWithMapsThemeStyle:0 visualEffectStyle:0];
  v2 = qword_965E8;
  qword_965E8 = v1;

  [MKInfoCardThemeManager setTintColorProvider:&stru_69130];
}

id sub_42CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [UIImage imageNamed:*(a1 + 40)];
  v4 = v3;
  if (v2)
  {
    [v3 _flatImageWithColor:*(a1 + 32)];
  }

  else
  {
    [v3 imageWithRenderingMode:2];
  }
  v5 = ;

  if (*(a1 + 56) & 1) != 0 && (*(*(a1 + 48) + 24))
  {
    v6 = [v5 CGImage];
    [v5 scale];
    v7 = [UIImage imageWithCGImage:v6 scale:4 orientation:?];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

void sub_4590(id a1)
{
  v1 = _os_feature_enabled_impl();
  v2 = _UISheetCornerRadius;
  if (v1)
  {
    v2 = 32.0;
  }

  qword_965F8 = *&v2;
}

void sub_4614(id a1)
{
  v1 = _os_feature_enabled_impl();
  v2 = 9.0;
  if (v1)
  {
    v2 = 24.0;
  }

  qword_96608 = *&v2;
}

void sub_468C(id a1)
{
  v1 = _os_feature_enabled_impl();
  v2 = 9.0;
  if (v1)
  {
    v2 = 18.0;
  }

  qword_96618 = *&v2;
}

void sub_4F9C(id a1)
{
  v5 = +[UITraitCollection _currentTraitCollection];
  v1 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  [UITraitCollection _setCurrentTraitCollection:v1];

  v2 = +[UIColor systemGray5Color];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v2 CGColor]);
  v4 = qword_96628;
  qword_96628 = v3;

  [UITraitCollection _setCurrentTraitCollection:v5];
}

void sub_5358(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_class() globalThemes];
  v4 = [*(a1 + 32) _mapsThemeStyleKey:0];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [objc_opt_class() globalThemes];
  v7 = [*(a1 + 32) _mapsThemeStyleKey:1];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [v5 objectForKeyedSubscript:@"ControlBackgroundColorKey"];
  [v8 objectForKeyedSubscript:@"ControlBackgroundColorKey"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_54E8;
  v15 = v14[3] = &unk_69200;
  v16 = v9;
  v10 = v9;
  v11 = v15;
  v12 = [UIColor colorWithDynamicProvider:v14];
  v13 = qword_96638;
  qword_96638 = v12;
}

id sub_54E8(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == &dword_0 + 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

void sub_55F8(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_class() globalThemes];
  v4 = [*(a1 + 32) _mapsThemeStyleKey:0];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [objc_opt_class() globalThemes];
  v7 = [*(a1 + 32) _mapsThemeStyleKey:1];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [v5 objectForKeyedSubscript:@"HairLineColorKey"];
  [v8 objectForKeyedSubscript:@"HairLineColorKey"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5788;
  v15 = v14[3] = &unk_69200;
  v16 = v9;
  v10 = v9;
  v11 = v15;
  v12 = [UIColor colorWithDynamicProvider:v14];
  v13 = qword_96648;
  qword_96648 = v12;
}

id sub_5788(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == &dword_0 + 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

BOOL isBigScreen()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v2 = v1 > 750.0;

  return v2;
}

BOOL isSmallScreen()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v2 = v1 == 320.0;

  return v2;
}

double MapsChromeFloatingControlsInset()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = _UISolariumEnabled();
  result = 10.0;
  if (v2)
  {
    result = 16.0;
  }

  v4 = 13.0;
  if (v2)
  {
    v4 = 8.0;
  }

  if (v1 == &dword_4 + 1)
  {
    return v4;
  }

  return result;
}

double MapsChromeFloatingControlsBottomInset(int a1)
{
  if (a1)
  {
    v2 = +[UIDevice currentDevice];
    v3 = [v2 userInterfaceIdiom];

    v1 = vars8;
    if (v3 != &dword_4 + 1)
    {
      return 30.0;
    }
  }

  return MapsChromeFloatingControlsInset();
}

void MapsChromeDefaultMediumCardHeightConstant()
{
  if (qword_96660 != -1)
  {
    sub_3ABEC();
  }

  if (byte_96658 != 1)
  {
    if (!isSmallScreen())
    {
      isBigScreen();
      return;
    }

LABEL_7:
    v2 = +[UIScreen mainScreen];
    [v2 bounds];
    UIRoundToScreenScale();

    return;
  }

  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != &dword_0 + 1)
  {
    goto LABEL_7;
  }
}

id GEOAvoidedTransitModesFromMapsTransitModes(uint64_t a1)
{
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (qword_96670 != -1)
  {
    sub_3AC00();
  }

  v3 = qword_96668;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) integerValue];
        if ((v8 & a1) != 0)
        {
          v9 = _geoModesFromIndividualMapsTransitMode(v8);
          [v2 addObjectsFromArray:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];

  return v10;
}

NSMutableArray *_geoModesFromIndividualMapsTransitMode(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v4 = &off_8ADC8;
    }

    else
    {
      if (a1 != 8)
      {
        goto LABEL_11;
      }

      v4 = &off_8ADE0;
    }
  }

  else if (a1 == 1)
  {
    v4 = &off_8AD80;
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_11;
    }

    [v2 addObject:&off_8AD98];
    v4 = &off_8ADB0;
  }

  [v3 addObject:v4];
LABEL_11:

  return v3;
}

void sub_88E0(id a1)
{
  v1 = qword_96668;
  qword_96668 = &off_8AC30;
}

BOOL _currentDeviceSupportsVLF(uint64_t a1, uint64_t a2)
{
  if (qword_96680 != -1)
  {
    sub_3AC14();
  }

  return (byte_96678 & 1) == 0;
}

void sub_8938(id a1)
{
  v1 = MGGetBoolAnswer();
  if (v1)
  {
    v2 = MGGetSInt32Answer();
    if (v2 == 1)
    {
      v3 = MGGetBoolAnswer();
      if (v3)
      {
        v4 = [ARGeoTrackingConfiguration isSupportedWithOptions:4];
        if (v4)
        {
          v5 = sub_8AEC(v4);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v8 = 0;
            v6 = "VLF is supported on the current device";
            v7 = &v8;
LABEL_15:
            _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
          }
        }

        else
        {
          byte_96678 = 1;
          v5 = sub_8AEC(v4);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v6 = "VLF is not supported because the current device does not support geo tracking";
            v7 = buf;
            goto LABEL_15;
          }
        }
      }

      else
      {
        byte_96678 = 1;
        v5 = sub_8AEC(v3);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 0;
          v6 = "VLF is not supported because the current device does not support the DeviceSupportsMapsOpticalHeading gestalt key";
          v7 = &v10;
          goto LABEL_15;
        }
      }
    }

    else
    {
      byte_96678 = 1;
      v5 = sub_8AEC(v2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v6 = "VLF is not supported because the current device is not an iPhone";
        v7 = &v11;
        goto LABEL_15;
      }
    }
  }

  else
  {
    byte_96678 = 1;
    v5 = sub_8AEC(v1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v6 = "VLF is not supported because the current device does not support ARKit";
      v7 = &v12;
      goto LABEL_15;
    }
  }
}

id sub_8AEC(uint64_t a1)
{
  if (qword_96690 != -1)
  {
    sub_3AC28();
  }

  v2 = qword_96688;

  return v2;
}

void sub_8B30(id a1)
{
  qword_96688 = os_log_create("com.apple.Maps", "VLFAvailability");

  _objc_release_x1();
}

id MAPSGetCameraLog(uint64_t a1)
{
  if (qword_966A0 != -1)
  {
    sub_3AC3C();
  }

  v2 = qword_96698;

  return v2;
}

void sub_9BE0(id a1)
{
  qword_96698 = os_log_create("com.apple.Maps", "Camera");

  _objc_release_x1();
}

id MAPSGetCollectionsLog(uint64_t a1)
{
  if (qword_966B0 != -1)
  {
    sub_3AC50();
  }

  v2 = qword_966A8;

  return v2;
}

void sub_9C68(id a1)
{
  qword_966A8 = os_log_create("com.apple.Maps", "Collections");

  _objc_release_x1();
}

id MAPSGetContainerVCLog(uint64_t a1)
{
  if (qword_966C0 != -1)
  {
    sub_3AC64();
  }

  v2 = qword_966B8;

  return v2;
}

void sub_9CF0(id a1)
{
  qword_966B8 = os_log_create("com.apple.Maps", "ContainerVC");

  _objc_release_x1();
}

id MAPSGetCuratedCollectionsLog(uint64_t a1)
{
  if (qword_966D0 != -1)
  {
    sub_3AC78();
  }

  v2 = qword_966C8;

  return v2;
}

void sub_9D78(id a1)
{
  qword_966C8 = os_log_create("com.apple.Maps", "CuratedCollections");

  _objc_release_x1();
}

id MAPSGetEVOnboardingLog(uint64_t a1)
{
  if (qword_966E0 != -1)
  {
    sub_3AC8C();
  }

  v2 = qword_966D8;

  return v2;
}

void sub_9E00(id a1)
{
  qword_966D8 = os_log_create("com.apple.Maps", "EVOnboarding");

  _objc_release_x1();
}

id MAPSGetLightLevelProvidingLog(uint64_t a1)
{
  if (qword_966F0 != -1)
  {
    sub_3ACA0();
  }

  v2 = qword_966E8;

  return v2;
}

void sub_9E88(id a1)
{
  qword_966E8 = os_log_create("com.apple.Maps", "LightLevelProviding");

  _objc_release_x1();
}

id MAPSGetMapModeLog(uint64_t a1)
{
  if (qword_96700 != -1)
  {
    sub_3ACB4();
  }

  v2 = qword_966F8;

  return v2;
}

void sub_9F10(id a1)
{
  qword_966F8 = os_log_create("com.apple.Maps", "MapMode");

  _objc_release_x1();
}

id MAPSGetMapsActivityLog(uint64_t a1)
{
  if (qword_96710 != -1)
  {
    sub_3ACC8();
  }

  v2 = qword_96708;

  return v2;
}

void sub_9F98(id a1)
{
  qword_96708 = os_log_create("com.apple.Maps", "MapsActivity");

  _objc_release_x1();
}

id MAPSGetMapsAssertLog(uint64_t a1)
{
  if (qword_96720 != -1)
  {
    sub_3ACDC();
  }

  v2 = qword_96718;

  return v2;
}

void sub_A020(id a1)
{
  qword_96718 = os_log_create("com.apple.Maps", "MapsAssert");

  _objc_release_x1();
}

id MAPSGetMapsChromeLog(uint64_t a1)
{
  if (qword_96730 != -1)
  {
    sub_3ACF0();
  }

  v2 = qword_96728;

  return v2;
}

void sub_A0A8(id a1)
{
  qword_96728 = os_log_create("com.apple.Maps", "MapsChrome");

  _objc_release_x1();
}

id MAPSGetMapsDefaultLog(uint64_t a1)
{
  if (qword_96740 != -1)
  {
    sub_3AD04();
  }

  v2 = qword_96738;

  return v2;
}

void sub_A130(id a1)
{
  qword_96738 = os_log_create("com.apple.Maps", "MapsDefault");

  _objc_release_x1();
}

id MAPSGetMapsLaunchLog(uint64_t a1)
{
  if (qword_96750 != -1)
  {
    sub_3AD18();
  }

  v2 = qword_96748;

  return v2;
}

void sub_A1B8(id a1)
{
  qword_96748 = os_log_create("com.apple.Maps", "MapsLaunch");

  _objc_release_x1();
}

id MAPSGetMapsNotificationsLog(uint64_t a1)
{
  if (qword_96760 != -1)
  {
    sub_3AD2C();
  }

  v2 = qword_96758;

  return v2;
}

void sub_A240(id a1)
{
  qword_96758 = os_log_create("com.apple.Maps", "MapsNotifications");

  _objc_release_x1();
}

id MAPSGetMapsPerformanceLog(uint64_t a1)
{
  if (qword_96770 != -1)
  {
    sub_3AD40();
  }

  v2 = qword_96768;

  return v2;
}

void sub_A2C8(id a1)
{
  qword_96768 = os_log_create("com.apple.Maps", "MapsPerformance");

  _objc_release_x1();
}

id MAPSGetLookAroundLog(uint64_t a1)
{
  if (qword_96780 != -1)
  {
    sub_3AD54();
  }

  v2 = qword_96778;

  return v2;
}

void sub_A350(id a1)
{
  qword_96778 = os_log_create("com.apple.Maps", "LookAround");

  _objc_release_x1();
}

id MAPSGetNavigationLog(uint64_t a1)
{
  if (qword_96790 != -1)
  {
    sub_3AD68();
  }

  v2 = qword_96788;

  return v2;
}

void sub_A3D8(id a1)
{
  qword_96788 = os_log_create("com.apple.Maps", "Navigation");

  _objc_release_x1();
}

id MAPSGetNavigationBannersLog(uint64_t a1)
{
  if (qword_967A0 != -1)
  {
    sub_3AD7C();
  }

  v2 = qword_96798;

  return v2;
}

void sub_A460(id a1)
{
  qword_96798 = os_log_create("com.apple.Maps", "NavigationBanners");

  _objc_release_x1();
}

id MAPSGetNearbyTransitLog(uint64_t a1)
{
  if (qword_967B0 != -1)
  {
    sub_3AD90();
  }

  v2 = qword_967A8;

  return v2;
}

void sub_A4E8(id a1)
{
  qword_967A8 = os_log_create("com.apple.Maps", "NearbyTransit");

  _objc_release_x1();
}

id MAPSGetOfflineLog(uint64_t a1)
{
  if (qword_967C0 != -1)
  {
    sub_3ADA4();
  }

  v2 = qword_967B8;

  return v2;
}

void sub_A570(id a1)
{
  qword_967B8 = os_log_create("com.apple.Maps", "Offline");

  _objc_release_x1();
}

id MAPSGetPlaceCardLog(uint64_t a1)
{
  if (qword_967D0 != -1)
  {
    sub_3ADB8();
  }

  v2 = qword_967C8;

  return v2;
}

void sub_A5F8(id a1)
{
  qword_967C8 = os_log_create("com.apple.Maps", "PlaceCard");

  _objc_release_x1();
}

id MAPSGetPPTLog(uint64_t a1)
{
  if (qword_967E0 != -1)
  {
    sub_3ADCC();
  }

  v2 = qword_967D8;

  return v2;
}

void sub_A680(id a1)
{
  qword_967D8 = os_log_create("com.apple.Maps", "PPT");

  _objc_release_x1();
}

id MAPSGetPreferencesSyncLog(uint64_t a1)
{
  if (qword_967F0 != -1)
  {
    sub_3ADE0();
  }

  v2 = qword_967E8;

  return v2;
}

void sub_A708(id a1)
{
  qword_967E8 = os_log_create("com.apple.Maps", "PreferencesSync");

  _objc_release_x1();
}

id MAPSGetPrintLog(uint64_t a1)
{
  if (qword_96800 != -1)
  {
    sub_3ADF4();
  }

  v2 = qword_967F8;

  return v2;
}

void sub_A790(id a1)
{
  qword_967F8 = os_log_create("com.apple.Maps", "Print");

  _objc_release_x1();
}

id MAPSGetRAPLayoutLog(uint64_t a1)
{
  if (qword_96810 != -1)
  {
    sub_3AE08();
  }

  v2 = qword_96808;

  return v2;
}

void sub_A818(id a1)
{
  qword_96808 = os_log_create("com.apple.Maps", "RAPLayout");

  _objc_release_x1();
}

id MAPSGetRAPNavigationLog(uint64_t a1)
{
  if (qword_96820 != -1)
  {
    sub_3AE1C();
  }

  v2 = qword_96818;

  return v2;
}

void sub_A8A0(id a1)
{
  qword_96818 = os_log_create("com.apple.Maps", "RAPNavigation");

  _objc_release_x1();
}

id MAPSGetRAPSubmissionLog(uint64_t a1)
{
  if (qword_96830 != -1)
  {
    sub_3AE30();
  }

  v2 = qword_96828;

  return v2;
}

void sub_A928(id a1)
{
  qword_96828 = os_log_create("com.apple.Maps", "RAPSubmission");

  _objc_release_x1();
}

id MAPSGetRecentsLog(uint64_t a1)
{
  if (qword_96840 != -1)
  {
    sub_3AE44();
  }

  v2 = qword_96838;

  return v2;
}

void sub_A9B0(id a1)
{
  qword_96838 = os_log_create("com.apple.Maps", "Recents");

  _objc_release_x1();
}

id MAPSGetRouteCreationLog(uint64_t a1)
{
  if (qword_96850 != -1)
  {
    sub_3AE58();
  }

  v2 = qword_96848;

  return v2;
}

void sub_AA38(id a1)
{
  qword_96848 = os_log_create("com.apple.Maps", "RouteCreation");

  _objc_release_x1();
}

id MAPSGetRoutePlanningLog(uint64_t a1)
{
  if (qword_96860 != -1)
  {
    sub_3AE6C();
  }

  v2 = qword_96858;

  return v2;
}

void sub_AAC0(id a1)
{
  qword_96858 = os_log_create("com.apple.Maps", "RoutePlanning");

  _objc_release_x1();
}

id MAPSGetRoutePlanningFeatureDiscoveryLog(uint64_t a1)
{
  if (qword_96870 != -1)
  {
    sub_3AE80();
  }

  v2 = qword_96868;

  return v2;
}

void sub_AB48(id a1)
{
  qword_96868 = os_log_create("com.apple.Maps", "RoutePlanningFeatureDiscovery");

  _objc_release_x1();
}

id MAPSGetSearchACLog(uint64_t a1)
{
  if (qword_96880 != -1)
  {
    sub_3AE94();
  }

  v2 = qword_96878;

  return v2;
}

void sub_ABD0(id a1)
{
  qword_96878 = os_log_create("com.apple.Maps", "SearchAC");

  _objc_release_x1();
}

id MAPSGetSearchACFindMyLog(uint64_t a1)
{
  if (qword_96890 != -1)
  {
    sub_3AEA8();
  }

  v2 = qword_96888;

  return v2;
}

void sub_AC58(id a1)
{
  qword_96888 = os_log_create("com.apple.Maps", "SearchACFindMy");

  _objc_release_x1();
}

id MAPSGetSearchHomeLog(uint64_t a1)
{
  if (qword_968A0 != -1)
  {
    sub_3AEBC();
  }

  v2 = qword_96898;

  return v2;
}

void sub_ACE0(id a1)
{
  qword_96898 = os_log_create("com.apple.Maps", "SearchHome");

  _objc_release_x1();
}

id MAPSGetSharedTripLog(uint64_t a1)
{
  if (qword_968B0 != -1)
  {
    sub_3AED0();
  }

  v2 = qword_968A8;

  return v2;
}

void sub_AD68(id a1)
{
  qword_968A8 = os_log_create("com.apple.Maps", "SharedTrip");

  _objc_release_x1();
}

id MAPSGetSharingLog(uint64_t a1)
{
  if (qword_968C0 != -1)
  {
    sub_3AEE4();
  }

  v2 = qword_968B8;

  return v2;
}

void sub_ADF0(id a1)
{
  qword_968B8 = os_log_create("com.apple.Maps", "Sharing");

  _objc_release_x1();
}

id MAPSGetShortcutsLog(uint64_t a1)
{
  if (qword_968D0 != -1)
  {
    sub_3AEF8();
  }

  v2 = qword_968C8;

  return v2;
}

void sub_AE78(id a1)
{
  qword_968C8 = os_log_create("com.apple.Maps", "Shortcuts");

  _objc_release_x1();
}

id MAPSGetTileStateCaptureLog(uint64_t a1)
{
  if (qword_968E0 != -1)
  {
    sub_3AF0C();
  }

  v2 = qword_968D8;

  return v2;
}

void sub_AF00(id a1)
{
  qword_968D8 = os_log_create("com.apple.Maps", "TileStateCapture");

  _objc_release_x1();
}

id MAPSGetTransitLog(uint64_t a1)
{
  if (qword_968F0 != -1)
  {
    sub_3AF20();
  }

  v2 = qword_968E8;

  return v2;
}

void sub_AF88(id a1)
{
  qword_968E8 = os_log_create("com.apple.Maps", "Transit");

  _objc_release_x1();
}

id MAPSGetTransitPayLog(uint64_t a1)
{
  if (qword_96900 != -1)
  {
    sub_3AF34();
  }

  v2 = qword_968F8;

  return v2;
}

void sub_B010(id a1)
{
  qword_968F8 = os_log_create("com.apple.Maps", "TransitPay");

  _objc_release_x1();
}

id MAPSGetTransitSchedulesLog(uint64_t a1)
{
  if (qword_96910 != -1)
  {
    sub_3AF48();
  }

  v2 = qword_96908;

  return v2;
}

void sub_B098(id a1)
{
  qword_96908 = os_log_create("com.apple.Maps", "TransitSchedules");

  _objc_release_x1();
}

id MAPSGetUserProfileLog(uint64_t a1)
{
  if (qword_96920 != -1)
  {
    sub_3AF5C();
  }

  v2 = qword_96918;

  return v2;
}

void sub_B120(id a1)
{
  qword_96918 = os_log_create("com.apple.Maps", "UserProfile");

  _objc_release_x1();
}

id MAPSGetVehicleDisambiguatorLog(uint64_t a1)
{
  if (qword_96930 != -1)
  {
    sub_3AF70();
  }

  v2 = qword_96928;

  return v2;
}

void sub_B1A8(id a1)
{
  qword_96928 = os_log_create("com.apple.Maps", "VehicleDisambiguator");

  _objc_release_x1();
}

id MAPSGetVirtualGarageLog(uint64_t a1)
{
  if (qword_96940 != -1)
  {
    sub_3AF84();
  }

  v2 = qword_96938;

  return v2;
}

void sub_B230(id a1)
{
  qword_96938 = os_log_create("com.apple.Maps", "VirtualGarage");

  _objc_release_x1();
}

id MAPSGetWeatherLog(uint64_t a1)
{
  if (qword_96950 != -1)
  {
    sub_3AF98();
  }

  v2 = qword_96948;

  return v2;
}

void sub_B2B8(id a1)
{
  qword_96948 = os_log_create("com.apple.Maps", "Weather");

  _objc_release_x1();
}

id MAPSGetXPCLog(uint64_t a1)
{
  if (qword_96960 != -1)
  {
    sub_3AFAC();
  }

  v2 = qword_96958;

  return v2;
}

void sub_B340(id a1)
{
  qword_96958 = os_log_create("com.apple.Maps", "XPC");

  _objc_release_x1();
}

id MAPSGetUGCBAAUtilitiesLog(uint64_t a1)
{
  if (qword_96970 != -1)
  {
    sub_3AFC0();
  }

  v2 = qword_96968;

  return v2;
}

void sub_B3C8(id a1)
{
  qword_96968 = os_log_create("com.apple.Maps", "UGCBAAUtilities");

  _objc_release_x1();
}

id MAPSGetIncidentsReportingLog(uint64_t a1)
{
  if (qword_96980 != -1)
  {
    sub_3AFD4();
  }

  v2 = qword_96978;

  return v2;
}

void sub_B450(id a1)
{
  qword_96978 = os_log_create("com.apple.Maps", "IncidentsReporting");

  _objc_release_x1();
}

id MAPSGetWatermarkingLog(uint64_t a1)
{
  if (qword_96990 != -1)
  {
    sub_3AFE8();
  }

  v2 = qword_96988;

  return v2;
}

void sub_B4D8(id a1)
{
  qword_96988 = os_log_create("com.apple.Maps", "Watermarking");

  _objc_release_x1();
}

id MAPSGetWaypointRequestLog(uint64_t a1)
{
  if (qword_969A0 != -1)
  {
    sub_3AFFC();
  }

  v2 = qword_96998;

  return v2;
}

void sub_B560(id a1)
{
  qword_96998 = os_log_create("com.apple.Maps", "WaypointRequest");

  _objc_release_x1();
}

id MAPSGetWebBundleLog(uint64_t a1)
{
  if (qword_969B0 != -1)
  {
    sub_3B010();
  }

  v2 = qword_969A8;

  return v2;
}

void sub_B5E8(id a1)
{
  qword_969A8 = os_log_create("com.apple.Maps", "WebBundle");

  _objc_release_x1();
}

id MAPSGetRAPRecordsManagerLog(uint64_t a1)
{
  if (qword_969C0 != -1)
  {
    sub_3B024();
  }

  v2 = qword_969B8;

  return v2;
}

void sub_B670(id a1)
{
  qword_969B8 = os_log_create("com.apple.Maps", "RAPRecordsManager");

  _objc_release_x1();
}

id MAPSGetUGCPhotoAttributionLog(uint64_t a1)
{
  if (qword_969D0 != -1)
  {
    sub_3B038();
  }

  v2 = qword_969C8;

  return v2;
}

void sub_B6F8(id a1)
{
  qword_969C8 = os_log_create("com.apple.Maps", "UGCPhotoAttribution");

  _objc_release_x1();
}

id MAPSGetSearchResultsImpressionsLog(uint64_t a1)
{
  if (qword_969E0 != -1)
  {
    sub_3B04C();
  }

  v2 = qword_969D8;

  return v2;
}

void sub_B780(id a1)
{
  qword_969D8 = os_log_create("com.apple.Maps", "SearchResultsImpressions");

  _objc_release_x1();
}

id MAPSGetSearchRedoLog(uint64_t a1)
{
  if (qword_969F0 != -1)
  {
    sub_3B060();
  }

  v2 = qword_969E8;

  return v2;
}

void sub_B808(id a1)
{
  qword_969E8 = os_log_create("com.apple.Maps", "SearchRedo");

  _objc_release_x1();
}

id MAPSGetStaleTimeBug_105865770Log(uint64_t a1)
{
  if (qword_96A00 != -1)
  {
    sub_3B074();
  }

  v2 = qword_969F8;

  return v2;
}

void sub_B890(id a1)
{
  qword_969F8 = os_log_create("com.apple.Maps", "StaleTimeBug_105865770");

  _objc_release_x1();
}

id MAPSGetCustomPOIsControllerLog(uint64_t a1)
{
  if (qword_96A10 != -1)
  {
    sub_3B088();
  }

  v2 = qword_96A08;

  return v2;
}

void sub_B918(id a1)
{
  qword_96A08 = os_log_create("com.apple.Maps", "CustomPOIsController");

  _objc_release_x1();
}

id MAPSGetPOSIXSignalsLog(uint64_t a1)
{
  if (qword_96A20 != -1)
  {
    sub_3B09C();
  }

  v2 = qword_96A18;

  return v2;
}

void sub_B9A0(id a1)
{
  qword_96A18 = os_log_create("com.apple.Maps", "POSIXSignals");

  _objc_release_x1();
}

id MAPSGetCoalescingSchedulerLog(uint64_t a1)
{
  if (qword_96A30 != -1)
  {
    sub_3B0B0();
  }

  v2 = qword_96A28;

  return v2;
}

void sub_BA28(id a1)
{
  qword_96A28 = os_log_create("com.apple.Maps", "CoalescingScheduler");

  _objc_release_x1();
}

id MAPSGetDeviceConnectionLog(uint64_t a1)
{
  if (qword_96A40 != -1)
  {
    sub_3B0C4();
  }

  v2 = qword_96A38;

  return v2;
}

void sub_BAB0(id a1)
{
  qword_96A38 = os_log_create("com.apple.Maps", "DeviceConnection");

  _objc_release_x1();
}

id MAPSGetDictationLog(uint64_t a1)
{
  if (qword_96A50 != -1)
  {
    sub_3B0D8();
  }

  v2 = qword_96A48;

  return v2;
}

void sub_BB38(id a1)
{
  qword_96A48 = os_log_create("com.apple.Maps", "Dictation");

  _objc_release_x1();
}

id MAPSGetElevationGraphLog(uint64_t a1)
{
  if (qword_96A60 != -1)
  {
    sub_3B0EC();
  }

  v2 = qword_96A58;

  return v2;
}

void sub_BBC0(id a1)
{
  qword_96A58 = os_log_create("com.apple.Maps", "ElevationGraph");

  _objc_release_x1();
}

id MAPSGetIncidentReportingLog(uint64_t a1)
{
  if (qword_96A70 != -1)
  {
    sub_3B100();
  }

  v2 = qword_96A68;

  return v2;
}

void sub_BC48(id a1)
{
  qword_96A68 = os_log_create("com.apple.Maps", "IncidentReporting");

  _objc_release_x1();
}

id MAPSGetLightLevelLog(uint64_t a1)
{
  if (qword_96A80 != -1)
  {
    sub_3B114();
  }

  v2 = qword_96A78;

  return v2;
}

void sub_BCD0(id a1)
{
  qword_96A78 = os_log_create("com.apple.Maps", "LightLevel");

  _objc_release_x1();
}

id MAPSGetMapRegionLog(uint64_t a1)
{
  if (qword_96A90 != -1)
  {
    sub_3B128();
  }

  v2 = qword_96A88;

  return v2;
}

void sub_BD58(id a1)
{
  qword_96A88 = os_log_create("com.apple.Maps", "MapRegion");

  _objc_release_x1();
}

id MAPSGetNavigationSimulationPromptLog(uint64_t a1)
{
  if (qword_96AA0 != -1)
  {
    sub_3B13C();
  }

  v2 = qword_96A98;

  return v2;
}

void sub_BDE0(id a1)
{
  qword_96A98 = os_log_create("com.apple.Maps", "NavigationSimulationPrompt");

  _objc_release_x1();
}

id MAPSGetNavIndicatorsLog(uint64_t a1)
{
  if (qword_96AB0 != -1)
  {
    sub_3B150();
  }

  v2 = qword_96AA8;

  return v2;
}

void sub_BE68(id a1)
{
  qword_96AA8 = os_log_create("com.apple.Maps", "NavIndicators");

  _objc_release_x1();
}

id MAPSGetProactiveTrayLog(uint64_t a1)
{
  if (qword_96AC0 != -1)
  {
    sub_3B164();
  }

  v2 = qword_96AB8;

  return v2;
}

void sub_BEF0(id a1)
{
  qword_96AB8 = os_log_create("com.apple.Maps", "ProactiveTray");

  _objc_release_x1();
}

id MAPSGetRAPPresenterLog(uint64_t a1)
{
  if (qword_96AD0 != -1)
  {
    sub_3B178();
  }

  v2 = qword_96AC8;

  return v2;
}

void sub_BF78(id a1)
{
  qword_96AC8 = os_log_create("com.apple.Maps", "RAPPresenter");

  _objc_release_x1();
}

id MAPSGetRoutePlanningOutlineLog(uint64_t a1)
{
  if (qword_96AE0 != -1)
  {
    sub_3B18C();
  }

  v2 = qword_96AD8;

  return v2;
}

void sub_C000(id a1)
{
  qword_96AD8 = os_log_create("com.apple.Maps", "RoutePlanningOutline");

  _objc_release_x1();
}

id MAPSGetStatusIndicatorLog(uint64_t a1)
{
  if (qword_96AF0 != -1)
  {
    sub_3B1A0();
  }

  v2 = qword_96AE8;

  return v2;
}

void sub_C088(id a1)
{
  qword_96AE8 = os_log_create("com.apple.Maps", "StatusIndicator");

  _objc_release_x1();
}

id MAPSGetTransitNavigationLog(uint64_t a1)
{
  if (qword_96B00 != -1)
  {
    sub_3B1B4();
  }

  v2 = qword_96AF8;

  return v2;
}

void sub_C110(id a1)
{
  qword_96AF8 = os_log_create("com.apple.Maps", "TransitNavigation");

  _objc_release_x1();
}

id MAPSGetTurnAlertsLog(uint64_t a1)
{
  if (qword_96B10 != -1)
  {
    sub_3B1C8();
  }

  v2 = qword_96B08;

  return v2;
}

void sub_C198(id a1)
{
  qword_96B08 = os_log_create("com.apple.Maps", "TurnAlerts");

  _objc_release_x1();
}

id MAPSGetUGCCallToActionViewProviderLog(uint64_t a1)
{
  if (qword_96B20 != -1)
  {
    sub_3B1DC();
  }

  v2 = qword_96B18;

  return v2;
}

void sub_C220(id a1)
{
  qword_96B18 = os_log_create("com.apple.Maps", "UGCCallToActionViewProvider");

  _objc_release_x1();
}

id MAPSGetUGCPhotoDownloadManagerLog(uint64_t a1)
{
  if (qword_96B30 != -1)
  {
    sub_3B1F0();
  }

  v2 = qword_96B28;

  return v2;
}

void sub_C2A8(id a1)
{
  qword_96B28 = os_log_create("com.apple.Maps", "UGCPhotoDownloadManager");

  _objc_release_x1();
}

id MAPSGetUGCReviewedPlacesManagerLog(uint64_t a1)
{
  if (qword_96B40 != -1)
  {
    sub_3B204();
  }

  v2 = qword_96B38;

  return v2;
}

void sub_C330(id a1)
{
  qword_96B38 = os_log_create("com.apple.Maps", "UGCReviewedPlacesManager");

  _objc_release_x1();
}

id MAPSGetUGCPhotoViewerDataProviderLog(uint64_t a1)
{
  if (qword_96B50 != -1)
  {
    sub_3B218();
  }

  v2 = qword_96B48;

  return v2;
}

void sub_C3B8(id a1)
{
  qword_96B48 = os_log_create("com.apple.Maps", "UGCPhotoViewerDataProvider");

  _objc_release_x1();
}

id MAPSGetCarBlurViewLog(uint64_t a1)
{
  if (qword_96B60 != -1)
  {
    sub_3B22C();
  }

  v2 = qword_96B58;

  return v2;
}

void sub_C440(id a1)
{
  qword_96B58 = os_log_create("com.apple.Maps", "CarBlurView");

  _objc_release_x1();
}

id MAPSGetCarCardsLog(uint64_t a1)
{
  if (qword_96B70 != -1)
  {
    sub_3B240();
  }

  v2 = qword_96B68;

  return v2;
}

void sub_C4C8(id a1)
{
  qword_96B68 = os_log_create("com.apple.Maps", "CarCards");

  _objc_release_x1();
}

id MAPSGetCarClusterSuggestionLog(uint64_t a1)
{
  if (qword_96B80 != -1)
  {
    sub_3B254();
  }

  v2 = qword_96B78;

  return v2;
}

void sub_C550(id a1)
{
  qword_96B78 = os_log_create("com.apple.Maps", "CarClusterSuggestion");

  _objc_release_x1();
}

id MAPSGetCarCompressionLog(uint64_t a1)
{
  if (qword_96B90 != -1)
  {
    sub_3B268();
  }

  v2 = qword_96B88;

  return v2;
}

void sub_C5D8(id a1)
{
  qword_96B88 = os_log_create("com.apple.Maps", "CarCompression");

  _objc_release_x1();
}

id MAPSGetCarFocusLog(uint64_t a1)
{
  if (qword_96BA0 != -1)
  {
    sub_3B27C();
  }

  v2 = qword_96B98;

  return v2;
}

void sub_C660(id a1)
{
  qword_96B98 = os_log_create("com.apple.Maps", "CarFocus");

  _objc_release_x1();
}

id MAPSGetCarInstrumentClusterLog(uint64_t a1)
{
  if (qword_96BB0 != -1)
  {
    sub_3B290();
  }

  v2 = qword_96BA8;

  return v2;
}

void sub_C6E8(id a1)
{
  qword_96BA8 = os_log_create("com.apple.Maps", "CarInstrumentCluster");

  _objc_release_x1();
}

id MAPSGetCarGuidanceLog(uint64_t a1)
{
  if (qword_96BC0 != -1)
  {
    sub_3B2A4();
  }

  v2 = qword_96BB8;

  return v2;
}

void sub_C770(id a1)
{
  qword_96BB8 = os_log_create("com.apple.Maps", "CarGuidance");

  _objc_release_x1();
}

id MAPSGetCarMapWidgetLog(uint64_t a1)
{
  if (qword_96BD0 != -1)
  {
    sub_3B2B8();
  }

  v2 = qword_96BC8;

  return v2;
}

void sub_C7F8(id a1)
{
  qword_96BC8 = os_log_create("com.apple.Maps", "CarMapWidget");

  _objc_release_x1();
}

id MAPSGetCarPlayLog(uint64_t a1)
{
  if (qword_96BE0 != -1)
  {
    sub_3B2CC();
  }

  v2 = qword_96BD8;

  return v2;
}

void sub_C880(id a1)
{
  qword_96BD8 = os_log_create("com.apple.Maps", "CarPlay");

  _objc_release_x1();
}

id MAPSGetCarRouteGeniusLog(uint64_t a1)
{
  if (qword_96BF0 != -1)
  {
    sub_3B2E0();
  }

  v2 = qword_96BE8;

  return v2;
}

void sub_C908(id a1)
{
  qword_96BE8 = os_log_create("com.apple.Maps", "CarRouteGenius");

  _objc_release_x1();
}

id MAPSGetCarSessionControllerLog(uint64_t a1)
{
  if (qword_96C00 != -1)
  {
    sub_3B2F4();
  }

  v2 = qword_96BF8;

  return v2;
}

void sub_C990(id a1)
{
  qword_96BF8 = os_log_create("com.apple.Maps", "CarSessionController");

  _objc_release_x1();
}

id MAPSGetCarSmallWidgetLog(uint64_t a1)
{
  if (qword_96C10 != -1)
  {
    sub_3B308();
  }

  v2 = qword_96C08;

  return v2;
}

void sub_CA18(id a1)
{
  qword_96C08 = os_log_create("com.apple.Maps", "CarSmallWidget");

  _objc_release_x1();
}

id MAPSGetCompanionControllerLog(uint64_t a1)
{
  if (qword_96C20 != -1)
  {
    sub_3B31C();
  }

  v2 = qword_96C18;

  return v2;
}

void sub_CAA0(id a1)
{
  qword_96C18 = os_log_create("com.apple.Maps", "CompanionController");

  _objc_release_x1();
}

id MAPSGetHydrateGeoMapItemLog(uint64_t a1)
{
  if (qword_96C30 != -1)
  {
    sub_3B330();
  }

  v2 = qword_96C28;

  return v2;
}

void sub_CB28(id a1)
{
  qword_96C28 = os_log_create("com.apple.Maps", "HydrateGeoMapItem");

  _objc_release_x1();
}

id MAPSGetIdleTimerLog(uint64_t a1)
{
  if (qword_96C40 != -1)
  {
    sub_3B344();
  }

  v2 = qword_96C38;

  return v2;
}

void sub_CBB0(id a1)
{
  qword_96C38 = os_log_create("com.apple.Maps", "IdleTimer");

  _objc_release_x1();
}

id MAPSGetPedestrianARLog(uint64_t a1)
{
  if (qword_96C50 != -1)
  {
    sub_3B358();
  }

  v2 = qword_96C48;

  return v2;
}

void sub_CC38(id a1)
{
  qword_96C48 = os_log_create("com.apple.Maps", "PedestrianAR");

  _objc_release_x1();
}

id MAPSGetPuckTrackingLog(uint64_t a1)
{
  if (qword_96C60 != -1)
  {
    sub_3B36C();
  }

  v2 = qword_96C58;

  return v2;
}

void sub_CCC0(id a1)
{
  qword_96C58 = os_log_create("com.apple.Maps", "PuckTracking");

  _objc_release_x1();
}

void sub_CE68(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), off_95FF0);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = NSSelectorFromString(*(*(&v10 + 1) + 8 * v7));
        MapsPerformSelector(v8, v9);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_setAssociatedObject(*(a1 + 32), off_95FF0, 0, &dword_0 + 1);
  objc_setAssociatedObject(*(a1 + 32), off_95FE8, 0, &dword_0 + 3);
}

void sub_D50C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v10[0] = a2;
  v7 = a2;
  v8 = [NSValue valueWithRange:a3, a4];
  v10[1] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  [v6 addObject:v9];
}

id MapsMap(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i), v9);
          if (v12)
          {
            [v5 addObject:{v12, v15}];
          }

          ++v9;
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

id MapsFlatMap(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v3;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v30;
      p_info = &@"DistanceUnits".info;
      do
      {
        v11 = 0;
        v23 = v7;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = v4[2](v4, *(*(&v29 + 1) + 8 * v11), v8);
          v13 = v12;
          if (v12)
          {
            if ([v12 conformsToProtocol:p_info[238]])
            {
              v14 = v9;
              v15 = v13;
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v26;
                do
                {
                  for (i = 0; i != v17; i = i + 1)
                  {
                    if (*v26 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    [v5 addObject:{*(*(&v25 + 1) + 8 * i), v22}];
                  }

                  v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
                }

                while (v17);
              }

              v9 = v14;
              v7 = v23;
              p_info = (@"DistanceUnits" + 8);
            }

            else
            {
              [v5 addObject:v13];
            }
          }

          ++v8;

          v11 = v11 + 1;
        }

        while (v11 != v7);
        v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    v20 = [v5 copy];
    v3 = v22;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

id MapsFilter(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v17;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v15 = 0;
        if (v4[2](v4, v12, v9, &v15))
        {
          [v5 addObject:v12];
        }

        if (v15)
        {
          break;
        }

        ++v9;
        if (v8 == ++v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

id MapsFindFirst(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v14 = 0;
          if (v4[2](v4, v11, v8, &v14))
          {
            v12 = v11;
            goto LABEL_15;
          }

          if (v14)
          {
            goto LABEL_12;
          }

          ++v8;
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v12 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_12:
      v12 = 0;
    }

LABEL_15:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t MapsAllSatisfies(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          if (!v4[2](v4, *(*(&v13 + 1) + 8 * v10), v8))
          {
            v11 = 0;
            goto LABEL_12;
          }

          ++v8;
          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id MapsEquals(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return &dword_0 + 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

__CFString *MapsStringFromBOOL(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

void sub_DEE4(uint64_t result, uint64_t a2)
{
  if (qword_96C68 != -1)
  {
    sub_3B380();
  }
}

id sub_DFB8(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 isInternalInstall]);

  return v2;
}

id sub_EE90(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isInternalInstall]);

  return v2;
}

id sub_10240(id a1)
{
  v1 = +[GEOCountryConfiguration sharedConfiguration];
  v2 = [v1 countryCode];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 isEqualToString:@"CN"] ^ 1);

  return v3;
}

void sub_10994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_109B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10A70;
  v5[3] = &unk_7FA60;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10A70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _consumeUpdatedGarage:*(a1 + 32)];
    WeakRetained = v3;
  }
}

int64_t sub_10C34(id a1, VGOEMApplication *a2, VGOEMApplication *a3)
{
  v4 = a3;
  v5 = [(VGOEMApplication *)a2 applicationRecord];
  v6 = [v5 localizedName];
  v7 = [(VGOEMApplication *)v4 applicationRecord];

  v8 = [v7 localizedName];
  v9 = [v6 localizedCompare:v8];

  return v9;
}

uint64_t _maps_isNotchDevice(uint64_t a1, uint64_t a2)
{
  if (qword_96C78 != -1)
  {
    sub_3B394();
  }

  return byte_96C70;
}

void sub_11F20(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 integerForKey:@"__internal__keyColorOverride"];

  if (v2 <= 3)
  {
    if (v2 <= 1)
    {
      if (v2 == (&dword_0 + 1))
      {
        v3 = +[UIColor systemRedColor];
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v2 != (&dword_0 + 2))
    {
LABEL_11:
      v3 = +[UIColor systemBlueColor];
      goto LABEL_19;
    }

    v3 = +[UIColor systemGreenColor];
  }

  else
  {
    if (v2 <= 5)
    {
      if (v2 == &dword_4)
      {
        +[UIColor systemOrangeColor];
      }

      else
      {
        +[UIColor systemYellowColor];
      }
      v3 = ;
      goto LABEL_19;
    }

    if (v2 == (&dword_4 + 2))
    {
      v3 = +[UIColor systemTealColor];
    }

    else
    {
      if (v2 != (&dword_4 + 3))
      {
        if (v2 == &dword_8)
        {
          v3 = +[UIColor systemGrayColor];
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v3 = +[UIColor systemPinkColor];
    }
  }

LABEL_19:
  qword_96C80 = v3;

  _objc_release_x1();
}

void sub_12080(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 integerForKey:@"__internal__keyColorOverride"];

  if (v2 <= 3)
  {
    if (v2 <= 1)
    {
      if (v2 == (&dword_0 + 1))
      {
        v3 = +[UIColor systemDarkRedColor];
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v2 != (&dword_0 + 2))
    {
LABEL_11:
      v3 = +[UIColor systemDarkBlueColor];
      goto LABEL_19;
    }

    v3 = +[UIColor systemDarkGreenColor];
  }

  else
  {
    if (v2 <= 5)
    {
      if (v2 == &dword_4)
      {
        +[UIColor systemDarkOrangeColor];
      }

      else
      {
        +[UIColor systemDarkYellowColor];
      }
      v3 = ;
      goto LABEL_19;
    }

    if (v2 == (&dword_4 + 2))
    {
      v3 = +[UIColor systemDarkTealColor];
    }

    else
    {
      if (v2 != (&dword_4 + 3))
      {
        if (v2 == &dword_8)
        {
          v3 = +[UIColor darkGrayColor];
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v3 = +[UIColor systemDarkPinkColor];
    }
  }

LABEL_19:
  qword_96C90 = v3;

  _objc_release_x1();
}

uint64_t sub_142E4(uint64_t a1)
{
  if (*(a1 + 48) == 1 && +[UIView areAnimationsEnabled])
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"BacklightLuminanceDidChangeNotification" object:*(a1 + 40)];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_16D34(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) removals];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) object];
        [*(a1 + 40) sendSubviewToBack:v7];
        [v7 setAlpha:0.0];
        [v7 setHidden:1];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_16E60(uint64_t a1)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) removals];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v19 + 1) + 8 * i) object];
        [*(a1 + 40) _maps_removeArrangedSubview:v7];
        [v7 setHidden:0];
        [v7 setAlpha:1.0];
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [*(a1 + 32) insertions];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * j);
        v14 = [v13 object];
        [v14 setHidden:1];
        [v14 setAlpha:0.0];
        [*(a1 + 40) insertArrangedSubview:v14 atIndex:{objc_msgSend(v13, "index")}];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }
}

void sub_17064(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) insertions];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) object];
        [v6 setHidden:0];
        [v6 setAlpha:1.0];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

NSString *MapsUIContentSizeCategoryClamp(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  if (v5)
  {
    v9 = UIContentSizeCategoryCompareToCategory(v5, UIContentSizeCategoryUnspecified);
    v8 = v5;
    if (v9)
    {
      if (!v6 || UIContentSizeCategoryCompareToCategory(v6, UIContentSizeCategoryUnspecified) == NSOrderedSame || (v10 = UIContentSizeCategoryCompareToCategory(v6, v5), v8 = v6, v10 != NSOrderedDescending))
      {
        if (!v7 || UIContentSizeCategoryCompareToCategory(v7, UIContentSizeCategoryUnspecified) == NSOrderedSame || (v11 = UIContentSizeCategoryCompareToCategory(v7, v5), v8 = v7, v11 != NSOrderedAscending))
        {
          v8 = v5;
        }
      }
    }
  }

  v12 = v8;

  return v12;
}

uint64_t sub_17700(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v11 = 0;
    goto LABEL_18;
  }

  if (!v3)
  {
    v6 = 1;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_17:
    v11 = !v6;
    goto LABEL_18;
  }

  v6 = UIContentSizeCategoryCompareToCategory(v3, UIContentSizeCategoryUnspecified) == NSOrderedSame;
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_4:
  v7 = UIContentSizeCategoryCompareToCategory(v5, UIContentSizeCategoryUnspecified);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = 1;
  }

  v10 = v8 - 1;
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v11 = UIContentSizeCategoryCompareToCategory(v3, v5);
  }

LABEL_18:

  return v11;
}

uint64_t MapsBacklightLuminanceDidChange(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 _backlightLuminance];
  v5 = [v3 _backlightLuminance];

  if (v4 == -1)
  {
    return 0;
  }

  v7 = v4 == &dword_0 + 2 && v5 == &dword_0 + 1;
  v8 = v5 == &dword_0 + 2 && v4 == &dword_0 + 1;
  result = 1;
  if (!v8)
  {
    if (v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5 == &dword_0 + 1;
    }

    v11 = v10;
    if (v4 == &dword_0 + 1 && v5 == 0)
    {
      v11 = 1;
    }

    if (v7)
    {
      return 1;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

uint64_t MapsIdiomInTraitEnvironment(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  return v2;
}

id MapsHorizontalSizeClassInTraitEnvironment(id result)
{
  if (result)
  {
    v1 = [result traitCollection];
    v2 = [v1 horizontalSizeClass];

    return v2;
  }

  return result;
}

id MapsVerticalSizeClassInTraitEnvironment(id result)
{
  if (result)
  {
    v1 = [result traitCollection];
    v2 = [v1 verticalSizeClass];

    return v2;
  }

  return result;
}

id DictionaryOfLayoutMetricsFromDeclarationAndValues(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a1;
  v12 = objc_alloc_init(NSMutableDictionary);
  v30 = &a10;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = v11;
  v13 = [v11 componentsSeparatedByString:{@", "}];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    v17 = 1;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
        v21 = [v19 stringByTrimmingCharactersInSet:v20];

        if ((v17 & 1) == 0)
        {
          v22 = v30++;
          a2 = *v22;
        }

        v23 = [NSNumber numberWithDouble:a2];
        [v12 setObject:v23 forKeyedSubscript:v21];

        v17 = 0;
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v17 = 0;
    }

    while (v15);
  }

  return v12;
}

id MapsDefaultSimpleAlertPresenter()
{
  v0 = +[UIApplication sharedApplication];
  v1 = [v0 delegate];
  v2 = [v1 window];
  v3 = [v2 rootViewController];

  return v3;
}

NSNumber *__cdecl sub_17F14(id a1, NSNumber *a2, unint64_t a3)
{
  v3 = a2;
  [(NSNumber *)v3 cgFloatValue];
  if (vabdd_f64(v4, UISheetPresentationControllerDetentInactive) <= 2.22044605e-16)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

void sub_18060(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_1807C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [_UIBackgroundViewConfiguration defaultPlainListCellConfigurationForState:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((v2 & 4) != 0)
    {
      [v4 setBackgroundColorMode:1];
      [v4 setCornerRadius:5.0];
      [v4 setBackgroundInsets:{0.0, 10.0, 0.0, 10.0}];
    }

    else
    {
      [v4 setBackgroundColorMode:0];
      v6 = +[UIColor clearColor];
      [v4 setBackgroundColor:v6];
    }
  }

  return v4;
}

void sub_181EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_18208(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [_UIBackgroundViewConfiguration defaultPlainListCellConfigurationForState:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((v2 & 4) != 0)
    {
      [v4 setBackgroundColorMode:1];
      [v4 setCornerRadius:5.0];
      [v4 setBackgroundInsets:{0.0, 10.0, 0.0, 10.0}];
    }

    else
    {
      [v4 setBackgroundColorMode:0];
      v6 = +[UIColor clearColor];
      [v4 setBackgroundColor:v6];
    }
  }

  return v4;
}

void sub_19118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1913C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v8 = [MapsSettingsIntentsApplication applicationsFromExtensions:v5];
      v9 = [v8 sortedArrayUsingComparator:&stru_7FD00];

      v10 = [v7 applications];
      v11 = [v7 _countAndIdentifiersOfApplications:v9 matchCountAndIdentifiersOfApplications:v10];

      [v7 setApplications:v9];
      if ((v11 & 1) == 0)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_192D0;
        block[3] = &unk_69228;
        block[4] = v7;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

int64_t sub_19260(id a1, MapsSettingsIntentsApplication *a2, MapsSettingsIntentsApplication *a3)
{
  v4 = a3;
  v5 = [(MapsSettingsIntentsApplication *)a2 displayName];
  v6 = [(MapsSettingsIntentsApplication *)v4 displayName];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

id sub_192D0(uint64_t a1)
{
  if ([*(a1 + 32) isViewLoaded])
  {
    [*(a1 + 32) reloadSpecifiers];
  }

  v2 = *(a1 + 32);

  return [v2 _callUpdateHandler];
}

id sub_195D8(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id sub_1974C(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

BOOL _currentDeviceSupportsVIO(uint64_t a1, uint64_t a2)
{
  if (qword_96CA8 != -1)
  {
    sub_3B548();
  }

  return (byte_96CA0 & 1) == 0;
}

void sub_198CC(id a1)
{
  v1 = MGGetBoolAnswer();
  if (v1)
  {
    v2 = MGGetSInt32Answer();
    if (v2 == 1)
    {
      v3 = MGGetBoolAnswer();
      if (v3)
      {
        v4 = sub_19A2C(v3);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 0;
          v5 = "VIO is supported on the current device";
          v6 = &v7;
LABEL_12:
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
        }
      }

      else
      {
        byte_96CA0 = 1;
        v4 = sub_19A2C(v3);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v5 = "VIO is not supported because the current device does not support the DeviceSupportsMapsOpticalHeading gestalt key";
          v6 = buf;
          goto LABEL_12;
        }
      }
    }

    else
    {
      byte_96CA0 = 1;
      v4 = sub_19A2C(v2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v5 = "VIO is not supported because the current device is not an iPhone";
        v6 = &v9;
        goto LABEL_12;
      }
    }
  }

  else
  {
    byte_96CA0 = 1;
    v4 = sub_19A2C(v1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v5 = "VIO is not supported because the current device does not support ARKit";
      v6 = &v10;
      goto LABEL_12;
    }
  }
}

id sub_19A2C(uint64_t a1)
{
  if (qword_96CB8 != -1)
  {
    sub_3B55C();
  }

  v2 = qword_96CB0;

  return v2;
}

void sub_19A70(id a1)
{
  qword_96CB0 = os_log_create("com.apple.Maps", "VIOAvailability");

  _objc_release_x1();
}

id _isInternalInstall()
{
  v0 = +[GEOPlatform sharedPlatform];
  v1 = [v0 isInternalInstall];

  return v1;
}

void sub_1AD24(id a1)
{
  v1 = qword_96CC0;
  qword_96CC0 = &off_8AD08;
}

void sub_1B1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *(*(a1 + 48) + 8);
  if (*(v8 + 24) == 1)
  {
    v13 = v7;
    v9 = *(a1 + 32);
    v10 = a2;
    v11 = [v9 objectAtIndexedSubscript:a4];
    LOBYTE(v9) = [v10 isEqual:v11];

    if (v9)
    {
      v12 = [*(a1 + 40) objectAtIndexedSubscript:a4];
      *(*(*(a1 + 48) + 8) + 24) = [v13 isEqual:v12];
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    v7 = v13;
  }

  else
  {
    *(v8 + 24) = 0;
  }
}

void sub_1B458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:v4];
}

void sub_1B640(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = +[NSNull null];

        if (v13 == v6)
        {
          [v12 removeObjectForKey:v5];
        }

        else
        {
          [v12 setObject:v6 forKey:v5];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

id MapsTransitModesLocalizedLongNameForIndividualMode(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) <= 7 && ((0x8Bu >> v1))
  {
    v2 = *(&off_7FE60 + v1);
    v3 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v4 = [v3 localizedStringForKey:v2 value:@"localized string not found" table:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id AppsSettingsTitle()
{
  v0 = [_NSLocalizedStringResource alloc];
  v1 = +[NSLocale currentLocale];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleURL];
  v4 = [v0 initWithKey:@"Maps [Settings]" table:0 locale:v1 bundleURL:v3];

  return v4;
}

id MapsSettingsRootTitle()
{
  v0 = [_NSLocalizedStringResource alloc];
  v1 = +[NSLocale currentLocale];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleURL];
  v4 = [v0 initWithKey:@"Maps [Settings]" table:0 locale:v1 bundleURL:v3];

  return v4;
}

id MapsSettingsTransitTitle()
{
  v0 = [_NSLocalizedStringResource alloc];
  v1 = +[NSLocale currentLocale];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleURL];
  v4 = [v0 initWithKey:@"Transit Label [Settings]" table:0 locale:v1 bundleURL:v3];

  return v4;
}

id MapsSettingsDrivingTitle()
{
  v0 = [_NSLocalizedStringResource alloc];
  v1 = +[NSLocale currentLocale];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleURL];
  v4 = [v0 initWithKey:@"Driving Group Title [Settings]" table:0 locale:v1 bundleURL:v3];

  return v4;
}

id MapsSettingsCyclingTitle()
{
  v0 = [_NSLocalizedStringResource alloc];
  v1 = +[NSLocale currentLocale];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleURL];
  v4 = [v0 initWithKey:@"Cycling Label [Settings]" table:0 locale:v1 bundleURL:v3];

  return v4;
}

id MapsSettingsWalkingTitle()
{
  v0 = [_NSLocalizedStringResource alloc];
  v1 = +[NSLocale currentLocale];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleURL];
  v4 = [v0 initWithKey:@"Walking Label [Settings]" table:0 locale:v1 bundleURL:v3];

  return v4;
}

id MapsSettingsSpokenDirectionsTitle()
{
  v0 = [_NSLocalizedStringResource alloc];
  v1 = +[NSLocale currentLocale];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleURL];
  v4 = [v0 initWithKey:@"Spoken Directions Label [Settings]" table:0 locale:v1 bundleURL:v3];

  return v4;
}

void RideBookingDidReportError()
{
  v0 = +[GEOPlatform sharedPlatform];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    NSLog(@"[Maps Extensions - internal only: break on RideBookingDidReportError() to debug this.");
  }
}

void sub_1D73C(id a1)
{
  qword_96CE0 = objc_opt_new();

  _objc_release_x1();
}

void sub_1D8E4(id a1)
{
  byte_96CF8 = GEOConfigGetBOOL();
  v1 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/Utils/RideBookingUtils.m");
    v3 = [NSString alloc];
    v4 = [v3 initWithFormat:@"isRidebookingOverridenOniPad: %d", byte_96CF8];
    *buf = 136315394;
    v7 = v2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  byte_96CF9 = MGGetSInt32Answer() == 3;
  v5 = _GEOConfigAddBlockListenerForKey();
}

id RideBookingIsEnabled()
{
  v0 = +[RideBookingUtils sharedUtils];
  v1 = [v0 isEnabled];

  return v1;
}

id GEOTransitOptionsFromTransitPreferences(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(GEOTransitOptions);
    [v2 setPrioritization:{objc_msgSend(v1, "sortOption")}];
    v3 = objc_alloc_init(GEOFareOptions);
    [v3 setPaymentType:{objc_msgSend(v1, "showICFares")}];
    v4 = [v1 surchargeOption];

    if (v4)
    {
      v5 = [v1 surchargeOption];
      [v3 setPreferredSurchargeType:{objc_msgSend(v5, "integerValue")}];
    }

    [v2 setFareOptions:v3];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = GEOAvoidedTransitModesFromMapsTransitModes([v1 disabledModes]);
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v2 addAvoidedMode:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "integerValue")}];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    if (GEOConfigGetBOOL())
    {
      [v2 setRoutingBehavior:1];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1F9E4(id a1)
{
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:0 error:0];
  v1 = [v3 dataContainerURL];
  v2 = qword_96D00;
  qword_96D00 = v1;
}

void MapsRAPNotificationPreferenceSetForDefaultsKey(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setInteger:a2 forKey:v3];
}

id MapsRAPNotificationPreferenceForDefaultsKey(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:v1];

  if (v3 <= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t MapsRAPNotificationPreferenceForDefaultsValue(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id MacMapsRAPContactBackEmailAddress()
{
  v0 = objc_alloc_init(ACAccountStore);
  v1 = [v0 aa_primaryAppleAccount];
  v2 = [v1 aa_primaryEmail];
  if (![v2 length])
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = [v1 aa_isPrimaryEmailVerified];

  if (v3)
  {
    v2 = [v1 aa_primaryEmail];
    v4 = [v2 copy];
LABEL_5:

    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

void sub_1FF3C(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a2 values];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      (*(*(a1 + 32) + 16))();
      if (*a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_20298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_202B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_202C8(uint64_t a1, void *a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_20340;
  v4[3] = &unk_7FFE8;
  v4[4] = *(a1 + 32);
  v4[5] = a3;
  return [a2 enumerateValidComponentValuesOfType:7 usingBlock:v4];
}

void sub_20340(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = [a2 photoAttributionPreferences];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 40);
  *a3 = *(*(*(a1 + 32) + 8) + 40) != 0;
  *v8 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_204A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_204C0(uint64_t a1, void *a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_20538;
  v4[3] = &unk_7FFE8;
  v4[4] = *(a1 + 32);
  v4[5] = a3;
  return [a2 enumerateValidComponentValuesOfType:6 usingBlock:v4];
}

void sub_20538(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = [a2 thirdPartyPhotoSharingPreferences];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 40);
  *a3 = *(*(*(a1 + 32) + 8) + 40) != 0;
  *v8 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

BOOL _isPedestrianARModeSupported(uint64_t a1, uint64_t a2)
{
  if (qword_96D18 != -1)
  {
    sub_3B660();
  }

  return (byte_96D10 & 1) == 0;
}

void sub_205EC(id a1)
{
  v2 = _currentDeviceSupportsVLF(a1, v1);
  if (v2)
  {
    v3 = +[ARGeoTrackingConfiguration isSupported];
    if (v3)
    {
      v4 = sub_206EC(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 0;
        v5 = "Pedestrian AR is supported on the current device";
        v6 = &v7;
LABEL_9:
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      }
    }

    else
    {
      byte_96D10 = 1;
      v4 = sub_206EC(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = "Pedestrian AR is not supported because the current device does not support geo tracking";
        v6 = buf;
        goto LABEL_9;
      }
    }
  }

  else
  {
    byte_96D10 = 1;
    v4 = sub_206EC(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v5 = "Pedestrian AR is not supported because the current device does not support VLF";
      v6 = &v9;
      goto LABEL_9;
    }
  }
}

id sub_206EC(uint64_t a1)
{
  if (qword_96D28 != -1)
  {
    sub_3B674();
  }

  v2 = qword_96D20;

  return v2;
}

void sub_20730(id a1)
{
  qword_96D20 = os_log_create("com.apple.Maps", "PedestrianARAvailability");

  _objc_release_x1();
}

void sub_209C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_209E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isViewLoaded])
  {
    [WeakRetained reloadSpecifiers];
  }
}

id sub_23FC4(uint64_t a1)
{
  GEOConfigSetBOOL();
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

id sub_2400C(uint64_t a1)
{
  GEOConfigSetBOOL();
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_25068(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2508C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (!a3)
  {
    [WeakRetained setThirdPartyPhotoSharingPreference:v7];
    [v6 setThirdPartyPhotoSharingStatusLoading:0];
    [v6 reloadSpecifiers];
  }
}

void sub_252C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_252E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setThirdPartyPhotoSharingPreference:v7];

  [*(a1 + 32) setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [WeakRetained reloadSpecifier:*(a1 + 32)];
  if (a3 | a4)
  {
    v8 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v9 = [v8 localizedStringForKey:@"Submission Generic Failure Title [UGC]" value:@"localized string not found" table:0];
    v10 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v11 = [v10 localizedStringForKey:@"Submission Generic Failure Description [UGC]" value:@"localized string not found" table:0];
    v12 = [UIAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:1];

    v13 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v14 = [v13 localizedStringForKey:@"OK [UGC]" value:@"localized string not found" table:0];
    v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
    [v12 addAction:v15];

    [WeakRetained presentViewController:v12 animated:1 completion:0];
  }
}

id MapsRAPContactBackEmailAddress()
{
  v0 = objc_alloc_init(ACAccountStore);
  v1 = [v0 aa_primaryAppleAccount];
  v2 = [v1 aa_primaryEmail];
  if (![v2 length])
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = [v1 aa_isPrimaryEmailVerified];

  if (v3)
  {
    v2 = [v1 aa_primaryEmail];
    v4 = [v2 copy];
LABEL_5:

    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

id MapsRAPLocalizedPrivacyConsentAlertMessage()
{
  v0 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v1 = [v0 localizedStringForKey:@"Reports may include location and contact information." value:@"localized string not found" table:0];

  return v1;
}

uint64_t MapsRAPIsAvailable()
{
  result = _MKRAPIsAvailable();
  if (result)
  {
    return sub_288E0() ^ 1;
  }

  return result;
}

id sub_288E0()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:105];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

uint64_t RAPConfigDefaults(uint64_t a1)
{
  v2 = 0;
  v5[0] = *&MapsConfig_ReportAProblemIsDisabled;
  v5[1] = *&MapsConfig_ReportAProblemInvalidEmailIsVisible;
  v5[2] = *&MapsConfig_ReportAProblemSettingsSearchIsVisible;
  v5[3] = *&MapsConfig_ReportAProblemDirectionsETAIsVisible;
  v5[4] = *&MapsConfig_ReportAProblemRoutePlanningFlowIsVisible;
  v5[5] = *&MapsConfig_ReportAProblemApplePayIsVisible;
  v5[6] = *&MapsConfig_ReportAProblemRequirePhotosWhenNearby;
  v5[7] = *&MapsConfig_ReportAProblemAddStreetFlowIsVisible;
  v5[8] = *&MapsConfig_ReportAProblemAddAPlaceStartsWithPrivacy;
  v5[9] = *&MapsConfig_ReportAProblemStartsWithPrivacy;
  v5[10] = *&MapsConfig_ReportAProblemShouldIncludeHistoricLocationsInDirectionsRequest;
  v5[11] = *&MapsConfig_ReportAProblemShouldAnonymizeCredentials;
  v5[12] = *&MapsConfig_ReportAProblemShouldAnonymizeLocations;
  v5[13] = *&MapsConfig_ReportAProblemShouldAnonymizePhotos;
  v5[14] = *&MapsConfig_ReportAProblemShouldAnonymizeScreenshots;
  v5[15] = *&MapsConfig_ReportAProblemShouldAnonymizeDirections;
  v5[16] = *&MapsConfig_ReportAProblemShouldAnonymizeDirectionRequests;
  v5[17] = *&MapsConfig_ReportAProblemShouldAnonymizeDirectionResponses;
  v5[18] = *&MapsConfig_ReportAProblemShouldAnonymizeTransit;
  v5[19] = *&MapsConfig_ReportAProblemShouldAnonymizePersonalizedLocations;
  v5[20] = *&MapsConfig_ReportAProblemAddressEditIsProhibited;
  v5[21] = *&MapsConfig_RAPShouldFailSilentlyOnInvalidRequests;
  v5[22] = *&MapsConfig_RAPEnableAfterNavFeedbackFlow;
  v5[23] = MapsConfig_ShowRAPFeedbackPortalInternalUI;
  do
  {
    result = (*(a1 + 16))(a1, *&v5[v2], *(&v5[v2] + 1));
    if (!result)
    {
      break;
    }
  }

  while (v2++ != 23);
  return result;
}

BOOL RAPIsValidEmail(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = GEOConfigGetString();
    v3 = ![v2 length] || (objc_msgSend(v1, "hasSuffix:", v2) & 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id RAPPrivacyInvalidEmailIsVisible()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:114];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPSettingsSearchFlowIsVisible()
{
  if (!_MKRAPIsAvailable() || (sub_288E0() & 1) != 0)
  {
    return 0;
  }

  if (!_GEOConfigHasValue())
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_8BAE0;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_8BB08;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_8BB30;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_8BB58;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_8BB80;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_8BBA8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_8BBD0;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:107];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v0 = BOOL;

    return v0;
  }

  return GEOConfigGetBOOL();
}

id RAPDirectionsETAFlowIsVisible()
{
  if (!_MKRAPIsAvailable() || (sub_288E0() & 1) != 0)
  {
    return 0;
  }

  if (!_GEOConfigHasValue())
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_8BAE0;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_8BB08;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_8BB30;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_8BB58;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_8BB80;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_8BBA8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_8BBD0;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:108];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v0 = BOOL;

    return v0;
  }

  return GEOConfigGetBOOL();
}

id RAPRoutePlanningFlowIsVisible()
{
  if (!_MKRAPIsAvailable() || (sub_288E0() & 1) != 0)
  {
    return 0;
  }

  if (!_GEOConfigHasValue())
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_8BAE0;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_8BB08;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_8BB30;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_8BB58;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_8BB80;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_8BBA8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_8BBD0;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:109];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v0 = BOOL;

    return v0;
  }

  return GEOConfigGetBOOL();
}

id RAPApplePayIsVisible()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:110];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPRequirePhotosWhenNearby()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:111];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPSettingsAaPAddStreetFlowIsVisible()
{
  if (!_MKRAPIsAvailable() || (sub_288E0() & 1) != 0)
  {
    return 0;
  }

  if (!_GEOConfigHasValue())
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_8BAE0;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_8BB08;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_8BB30;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_8BB58;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_8BB80;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_8BBA8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_8BBD0;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:112];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v0 = BOOL;

    return v0;
  }

  return GEOConfigGetBOOL();
}

id RAPAddAPlaceStartsWithPrivacy()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:113];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPStartsWithPrivacy()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:115];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPAddressEditIsProhibited()
{
  if (sub_288E0())
  {
    return &dword_0 + 1;
  }

  if (!_GEOConfigHasValue())
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_8BAE0;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_8BB08;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_8BB30;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_8BB58;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_8BB80;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_8BBA8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_8BBD0;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:116];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v0 = BOOL;

    return v0;
  }

  return GEOConfigGetBOOL();
}

id RAPShouldIncludeHistoricLocationsInDirectionsRequest()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:117];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPShouldAnonymizeCredentials()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:118];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPShouldAnonymizeLocations()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:119];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPShouldAnonymizePhotos()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:120];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPShouldAnonymizeScreenshots()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:121];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPShouldAnonymizeDirections()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:122];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPShouldAnonymizeDirectionRequests()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:123];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPShouldAnonymizeDirectionResponses()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:124];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPShouldAnonymizeTransit()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:125];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPShouldAnonymizePersonalizedLocations()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:126];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPShouldFailSilentlyOnInvalidRequests()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:398];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id RAPShouldDisplayAfterNavigationFlow()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_8BA68;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_8BA90;
    v16 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v16;
    v20[2] = &off_8BAB8;
    v1 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v1;
    v20[3] = &off_8BAE0;
    v2 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v2;
    v20[4] = &off_8BB08;
    v3 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v3;
    v20[5] = &off_8BB30;
    v4 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v4;
    v20[6] = &off_8BB58;
    v5 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v5;
    v20[7] = &off_8BB80;
    v6 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v6;
    v20[8] = &off_8BBA8;
    v7 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v7;
    v20[9] = &off_8BBD0;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v9 = [NSNumber numberWithUnsignedInt:409];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = +[GEOCountryConfiguration sharedConfiguration];
    v12 = [v11 countryCode];
    v13 = [v10 objectForKey:v12];

    if (v13)
    {
      BOOL = [v13 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v15 = BOOL;

    return v15;
  }
}

id sub_2DD54(uint64_t a1)
{
  if (qword_96D38 != -1)
  {
    sub_3B688();
  }

  v2 = qword_96D30;

  return v2;
}

void sub_2E418(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _leaveCompletionWaitDispatchGroupWithReason:*(a1 + 32)];
}

id sub_2E71C(uint64_t a1)
{
  v2 = sub_2DD54(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 134349056;
    v8 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "[%{public}p] child animation completion group notify block running", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  return [*(a1 + 32) _childAnimationsDidComplete];
}

uint64_t sub_2EC5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2EC74(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

id sub_2FD34(uint64_t a1)
{
  [*(a1 + 32) prepare];
  [*(a1 + 32) animate];
  v2 = *(a1 + 32);

  return [v2 complete:1];
}

id sub_30734(uint64_t a1)
{
  [*(a1 + 32) prepare];
  [*(a1 + 32) animate];
  v2 = *(a1 + 32);

  return [v2 complete:1];
}

void sub_30798(id a1)
{
  qword_96D30 = os_log_create("com.apple.Maps", "GroupAnimation");

  _objc_release_x1();
}

BOOL sub_30824(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_31D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_31DB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_32CD0(id a1)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v1 = [&off_8AD20 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = &__kCFBooleanFalse;
    v4 = MapsThemeCollectionViewCell;
    v5 = *v24;
    v6 = &off_8B6B0;
    do
    {
      v7 = 0;
      v22 = v2;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(&off_8AD20);
        }

        v8 = [&v4[78] valueForDefaultsKey:*(*(&v23 + 1) + 8 * v7)];
        v9 = v8;
        if (v8 && ([v8 isEqualToNumber:v6] & 1) == 0)
        {
          BiomeLibrary();
          v11 = v5;
          v12 = v4;
          v13 = v3;
          v15 = v14 = v6;
          v16 = [v15 Discoverability];
          v17 = [v16 Signals];
          v10 = [v17 source];

          v18 = [BMDiscoverabilitySignals alloc];
          v19 = +[NSProcessInfo processInfo];
          v20 = [v19 operatingSystemVersionString];
          v21 = [v18 initWithContentIdentifier:@"com.apple.Maps.UserHasNonStandardPreferences" context:@"System-Settings-App" osBuild:v20 userInfo:0];

          [v10 sendEvent:v21];
          v6 = v14;
          v3 = v13;
          v4 = v12;
          v5 = v11;
          v2 = v22;
        }

        else
        {
          v10 = v9;
          v9 = v3;
        }

        v7 = v7 + 1;
      }

      while (v2 != v7);
      v2 = [&off_8AD20 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v2);
  }
}

void sub_32F88(id a1)
{
  qword_96D40 = objc_alloc_init(MapsOfflineUIHelper);

  _objc_release_x1();
}

void sub_33314(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_33368(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reloadSubscriptions];
    WeakRetained = v2;
  }
}

void sub_333AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reloadLastUpdatedDates];
    WeakRetained = v2;
  }
}

void sub_333F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reloadLastUpdatedDates];
    WeakRetained = v2;
  }
}

void sub_33434(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reloadPairedDeviceSubscriptionInfos];
    [v2 setAvailableDiskSpaceForPairedDevice:0];
    WeakRetained = v2;
  }
}

uint64_t sub_33AF4(uint64_t a1, int a2)
{
  result = *(a1 + 40);
  if (result)
  {
    if (a2)
    {
      v4 = *(a1 + 32);
    }

    else
    {
      v4 = 0;
    }

    return (*(result + 16))(result, v4);
  }

  return result;
}

void sub_33E18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MAPSGetOfflineLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) identifier];
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Error restoring expired subscription: %@, error: %@", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_34310(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_34334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v7 = [NSNumber numberWithLongLong:a2];
      [v8 setAvailableDiskSpaceForPairedDevice:v7];

      (*(*(a1 + 32) + 16))();
      WeakRetained = v8;
    }
  }
}

void sub_34734(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_3476C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v10 = MAPSGetOfflineLog(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] refresh last update for paired date error: %@", &v11, 0xCu);
      }
    }

    else
    {
      objc_storeStrong(WeakRetained + 8, a2);
      [v9[1] lastUpdatedDateForPairedDeviceDidChange:v9[8]];
    }
  }
}

void sub_3486C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v10 = MAPSGetOfflineLog(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] refresh last update date error: %@", &v11, 0xCu);
      }
    }

    else
    {
      objc_storeStrong(WeakRetained + 7, a2);
      [v9[1] lastUpdatedDateDidChange:v9[7]];
    }
  }
}

void sub_34B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_34B60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v26 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = MAPSGetOfflineLog(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] subscription fetch error: %@", buf, 0xCu);
      }

      v10 = *(a1 + 32);
      if (v10)
      {
        (*(v10 + 16))(v10, 0, v6);
      }
    }

    else
    {
      v24 = v5;
      v11 = MapsFilter(v5, &stru_803B8);
      [v8 setSubscriptions:v11];

      v12 = [v8 subscriptions];
      v13 = [v12 count];

      if (!v13)
      {
        GEOConfigSetBOOL();
      }

      v14 = +[NSMutableArray array];
      v15 = dispatch_group_create();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = [v8 subscriptions];
      v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v37;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v37 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v36 + 1) + 8 * i);
            dispatch_group_enter(v15);
            v21 = [v8 subscriptionManager];
            v22 = [v20 identifier];
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_34F20;
            v31[3] = &unk_803E0;
            v32 = v15;
            v35 = *(v26 + 32);
            v33 = v20;
            v34 = v14;
            [v21 fetchStateForSubscriptionWithIdentifier:v22 callbackQueue:&_dispatch_main_q completionHandler:v31];
          }

          v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v17);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_351C0;
      block[3] = &unk_80408;
      v28 = v14;
      v29 = v8;
      v30 = *(v26 + 32);
      v23 = v14;
      dispatch_group_notify(v15, &_dispatch_main_q, block);

      v6 = 0;
      v5 = v24;
    }
  }
}

void sub_34F20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v10 = [[MapDataSubscriptionInfo alloc] initWithSubscription:*(a1 + 40) state:v5];
    [*(a1 + 48) addObject:v10];
    v11 = [v5 loadState];
    if (v11 > 1)
    {
      if (v11 == &dword_0 + 2)
      {
        v12 = MAPSGetOfflineLog(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v17 = *(a1 + 40);
          v18 = 138412546;
          v19 = v17;
          v20 = 2112;
          v21 = v5;
          v14 = "[MapsOfflineUIHelper] found fully loaded subscription: %@, state: %@";
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      if (v11 == &dword_0 + 3)
      {
        v12 = MAPSGetOfflineLog(3);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v15 = *(a1 + 40);
          v18 = 138412546;
          v19 = v15;
          v20 = 2112;
          v21 = v5;
          v14 = "[MapsOfflineUIHelper] found fully-loaded, incompatible subscription: %@, state: %@";
          goto LABEL_19;
        }

LABEL_20:
      }
    }

    else
    {
      if (!v11)
      {
        v12 = MAPSGetOfflineLog(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 40);
          v18 = 138412546;
          v19 = v16;
          v20 = 2112;
          v21 = v5;
          v14 = "[MapsOfflineUIHelper] found not fully loaded subscription: %@, state: %@";
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      if (v11 == &dword_0 + 1)
      {
        v12 = MAPSGetOfflineLog(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(a1 + 40);
          v18 = 138412546;
          v19 = v13;
          v20 = 2112;
          v21 = v5;
          v14 = "[MapsOfflineUIHelper] found out of date subscription: %@, state: %@";
LABEL_19:
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, v14, &v18, 0x16u);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    dispatch_group_leave(*(a1 + 32));

    goto LABEL_22;
  }

  v8 = MAPSGetOfflineLog(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] subscription state error: %@", &v18, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v7);
  }

LABEL_22:
}

void sub_351C0(uint64_t a1)
{
  +[NSMutableSet set];
  v27 = v26 = a1;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_22;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = *v32;
  v29 = GEOMapDataSubscriptionDownloadReasonKey;
  v28 = GEOMapDataSubscriptionProgressDownloadReasonForcedUpdate;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v32 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v31 + 1) + 8 * i);
      v9 = [v8 state];
      if ([v9 loadState] == &dword_0 + 1)
      {
      }

      else
      {
        v10 = [v8 state];
        v11 = [v10 loadState];

        if (v11 != &dword_0 + 2)
        {
          goto LABEL_10;
        }
      }

      ++v4;
LABEL_10:
      v12 = [v8 state];
      if ([v12 loadState] == &dword_0 + 1)
      {
      }

      else
      {
        v13 = [v8 state];
        v14 = [v13 loadState];

        if (v14 != &dword_0 + 3)
        {
          continue;
        }
      }

      ++v5;
      v15 = [v8 state];
      v16 = [v15 downloadProgress];

      if (v16)
      {
        v17 = [v8 state];
        v18 = [v17 downloadProgress];
        v19 = [v18 userInfo];
        v20 = [v19 objectForKeyedSubscript:v29];

        if (v20 && [v20 isEqualToString:v28])
        {
          v21 = [v8 subscription];
          v22 = [v21 identifier];
          [v27 addObject:v22];
        }
      }
    }

    v3 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v3);
LABEL_22:

  [*(v26 + 40) setOutOfDateSubscriptionsCount:v5];
  [*(v26 + 40) setFullyLoadedSubscriptionsCount:v4];
  [*(v26 + 40) setUpdatingSubscriptions:v27];
  v23 = [*(v26 + 32) copy];
  [*(v26 + 40) setSubscriptionInfos:v23];

  v24 = *(v26 + 48);
  if (v24)
  {
    v25 = [*(v26 + 40) subscriptionInfos];
    (*(v24 + 16))(v24, v25, 0);
  }

  [*(v26 + 40) _subscriptionsDidChange];
  if ([*(v26 + 40) pairedDeviceSubscriptionStatesMonitorCount] >= 1)
  {
    [*(v26 + 40) _reloadPairedDeviceSubscriptionInfos];
  }
}

void sub_355D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_356F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_35714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      [WeakRetained setTotalOfflineDataSize:a2];
    }
  }
}

void sub_35A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_35AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = MAPSGetOfflineLog(WeakRetained);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] paired device subscription fetch error: %@", buf, 0xCu);
      }
    }

    else
    {
      v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
      v8 = dispatch_group_create();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = v5;
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            dispatch_group_enter(v8);
            v15 = [v18 subscriptionManager];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_35D84;
            v21[3] = &unk_80480;
            v22 = v9;
            v23 = v14;
            v24 = v8;
            [v15 fetchStateForPairedDeviceSubscriptionWithIdentifier:v14 callbackQueue:&_dispatch_main_q completionHandler:v21];
          }

          v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_35E5C;
      block[3] = &unk_7FAF0;
      block[4] = v18;
      v20 = v9;
      v16 = v9;
      dispatch_group_notify(v8, &_dispatch_main_q, block);

      v6 = 0;
    }
  }
}

void sub_35D84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v7 = MAPSGetOfflineLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] paired device subscription state fetch error: %@", &v8, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_35E5C(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) subscriptionInfos];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 subscription];
        v10 = [v9 identifier];
        v11 = [v8 objectForKeyedSubscript:v10];

        [v7 setPairedDeviceState:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = *(a1 + 32);
  v13 = v12[1];
  v14 = [v12 subscriptionInfos];
  [v13 pairedSubscriptionInfosDidChange:v14];
}

void sub_364DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = MAPSGetOfflineLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      *buf = 138412802;
      v42 = v5;
      v43 = 2112;
      v44 = v3;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "[MapsOfflineUIHelper] KVO update for keyPath: %@, state: %@, change: %@", buf, 0x20u);
    }

    v7 = *(a1 + 40);
    v8 = NSStringFromSelector("loadState");
    LODWORD(v7) = [v7 isEqualToString:v8];

    if (!v7)
    {
      v14 = *(a1 + 40);
      v15 = NSStringFromSelector("lastError");
      LOBYTE(v14) = [v14 isEqualToString:v15];

      if ((v14 & 1) == 0)
      {
        v16 = *(a1 + 40);
        v17 = NSStringFromSelector("downloadProgress");
        LODWORD(v16) = [v16 isEqualToString:v17];

        if (v16)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v18 = WeakRetained[6];
          v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v19)
          {
            v20 = *v37;
            while (2)
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v37 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                v22 = *(*(&v36 + 1) + 8 * i);
                v23 = [v22 state];

                if (v23 == v3)
                {
                  v31 = [v22 subscription];
                  v19 = [v31 identifier];

                  goto LABEL_36;
                }
              }

              v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

LABEL_36:

          v32 = [v3 downloadProgress];

          if (v32)
          {
            v33 = [v3 downloadProgress];
            v34 = [v33 userInfo];
            v35 = [v34 objectForKeyedSubscript:GEOMapDataSubscriptionDownloadReasonKey];

            if (([v3 loadState] == &dword_0 + 1 || objc_msgSend(v3, "loadState") == &dword_0 + 3) && v35 && objc_msgSend(v35, "isEqualToString:", GEOMapDataSubscriptionProgressDownloadReasonForcedUpdate))
            {
              [WeakRetained _startedUpdatingSubscription:v19];
            }

            else
            {
              [WeakRetained _stoppedUpdatingSubscription:{v19, v36}];
            }
          }

          else
          {
            [WeakRetained _stoppedUpdatingSubscription:v19];
          }
        }
      }

      goto LABEL_46;
    }

    v9 = [*(a1 + 56) objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v10 = [v9 intValue];

    v11 = [*(a1 + 56) objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v12 = [v11 intValue];

    if (v10 != 1 || v12 == 1)
    {
      if (v10 == 1 || v12 != 1)
      {
        goto LABEL_25;
      }

      v24 = 1;
    }

    else
    {
      v24 = -1;
    }

    [WeakRetained setOutOfDateSubscriptionsCount:{objc_msgSend(WeakRetained, "outOfDateSubscriptionsCount") + v24}];
LABEL_25:
    v25 = v10 - 3;
    if ((v25 != 0) == (v12 == 3))
    {
      v26 = [WeakRetained outOfDateSubscriptionsCount];
      if (v12 == 3)
      {
        v27 = v26 + 1;
      }

      else
      {
        v27 = v26 - 1;
      }

      [WeakRetained setOutOfDateSubscriptionsCount:v27];
    }

    v28 = v12 - 1;
    if (v25 < 0xFFFFFFFE == v28 < 2)
    {
      v29 = [WeakRetained fullyLoadedSubscriptionsCount];
      if (v28 > 1)
      {
        v30 = v29 - 1;
      }

      else
      {
        v30 = v29 + 1;
      }

      [WeakRetained setFullyLoadedSubscriptionsCount:v30];
    }

LABEL_46:
  }
}

void sub_3703C(id a1)
{
  v1 = qword_96D58;
  qword_96D58 = &off_8AD38;
}

void sub_37054(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _os_log_impl(a1, v16, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

uint64_t IsFetchAutomaticParkedCarLocationSupported(uint64_t a1, uint64_t a2)
{
  if (qword_96D68 != -1)
  {
    sub_3C510();
  }

  return byte_96D60;
}

void sub_3729C(id a1)
{
  if (MGGetBoolAnswer())
  {
    v1 = dispatch_group_create();
    dispatch_group_enter(v1);
    v2 = +[RTRoutineManager defaultManager];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_37378;
    v5[3] = &unk_80510;
    v6 = v1;
    v3 = v1;
    [v2 fetchAutomaticVehicleEventDetectionSupportedWithHandler:v5];

    v4 = dispatch_walltime(0, 2000000000);
    dispatch_group_wait(v3, v4);
  }
}

void sub_373CC(id a1)
{
  qword_96D70 = objc_alloc_init(UGCThirdPartyPhotoSharingPreferencesManager);

  _objc_release_x1();
}

void sub_37568(uint64_t a1)
{
  v2 = sub_377D4(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "Fetching third party photo sharing preferences", buf, 2u);
  }

  v3 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v4 = objc_alloc_init(GEORPFeedbackQueryParameters);
  [v3 setQueryParameters:v4];

  v5 = [v3 queryParameters];
  [v5 addFeedbackComponentType:6];

  v6 = objc_alloc_init(GEORPFeedbackUserInfo);
  v7 = +[GEORPUserCredentials _credentialsForPrimaryICloudAccount];
  [v6 setUserCredentials:v7];

  objc_initWeak(buf, *(a1 + 32));
  v8 = [GEORPFeedbackRequest alloc];
  v9 = +[GEOMapService sharedService];
  v10 = [v9 defaultTraits];
  v11 = [v8 initWithFeedbackRequestParameters:v3 userInfo:v6 traits:v10];

  v12 = +[GEOMapService sharedService];
  v13 = +[GEOMapService sharedService];
  v14 = [v13 defaultTraits];
  v15 = [v12 ticketForFeedbackRequest:v11 traits:v14];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_37818;
  v16[3] = &unk_80580;
  objc_copyWeak(&v18, buf);
  v17 = *(a1 + 40);
  [v15 submitWithHandler:v16 networkActivity:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void sub_377AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_377D4(uint64_t a1)
{
  if (qword_96D88 != -1)
  {
    sub_3C538();
  }

  v2 = qword_96D80;

  return v2;
}

void sub_37818(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = sub_377D4(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Preferences fetch failed with error %@", buf, 0xCu);
    }
  }

  v10 = [GEORPThirdPartyPhotoSharingPreference thirdPartyPhotoSharingPreferenceFromResponse:v6];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_379A8;
  v14[3] = &unk_80558;
  objc_copyWeak(&v18, (a1 + 40));
  v15 = v10;
  v11 = *(a1 + 32);
  v16 = v8;
  v17 = v11;
  v12 = v8;
  v13 = v10;
  dispatch_async(&_dispatch_main_q, v14);

  objc_destroyWeak(&v18);
}

void sub_379A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _setDefaultsKeyForPreferences:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

void sub_37ABC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_37AD8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 version];

  [WeakRetained _updateThirdPartyPhotoSharingPreferences:0 versionID:v4 eraseServerSavedSetting:1 completion:&stru_805E8];
}

void sub_37C3C(uint64_t a1)
{
  v2 = sub_377D4(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "Updating third party photo sharing preferences", buf, 2u);
  }

  v3 = objc_alloc_init(GEORPThirdPartyPhotoSharingPreference);
  v4 = v3;
  if ((*(a1 + 56) & 1) == 0)
  {
    [v3 setOptIn:*(a1 + 57)];
  }

  if (*(a1 + 32))
  {
    [v4 setVersion:?];
  }

  v5 = objc_alloc_init(GEORPThirdPartyPhotoSharingPreferenceUpdate);
  [v5 setPreference:v4];
  v6 = objc_alloc_init(GEORPFeedbackDetails);
  [v6 setThirdPartyPhotoSharingPreferenceUpdate:v5];
  v7 = objc_alloc_init(GEORPFeedbackSubmissionParameters);
  [v7 setType:18];
  v29 = v6;
  [v7 setDetails:v6];
  v8 = objc_alloc_init(GEORPFeedbackRequestParameters);
  [v8 setSubmissionParameters:v7];
  v9 = objc_alloc_init(GEORPFeedbackUserInfo);
  v10 = +[GEORPUserCredentials _credentialsForPrimaryICloudAccount];
  [v9 setUserCredentials:v10];

  objc_initWeak(buf, *(a1 + 40));
  v11 = [GEORPFeedbackRequest alloc];
  v12 = +[GEOMapService sharedService];
  v13 = [v12 defaultTraits];
  v30 = [v11 initWithFeedbackRequestParameters:v8 userInfo:v9 traits:v13];
  v25 = v5;
  v27 = v4;

  v14 = +[GEOMapService sharedService];
  v15 = +[GEOMapService sharedService];
  v16 = [v15 defaultTraits];
  v17 = [v14 ticketForFeedbackRequest:v30 traits:v16];

  v19 = sub_377D4(v18);
  v20 = [v8 submissionParameters];
  v21 = [v20 clientSubmissionUuid];
  if ([v21 length])
  {
    v22 = [v8 submissionParameters];
    [v22 clientSubmissionUuid];
  }

  else
  {
    v22 = [NSUUID UUID:v25];
    [v22 UUIDString];
  }
  v23 = ;

  v24 = &_dispatch_main_q;
  MSPUGCPerformLogDiscardForCurrentSessionWithCompletion();

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_37FE0;
  v31[3] = &unk_80580;
  objc_copyWeak(&v33, buf);
  v32 = *(a1 + 48);
  [v17 submitWithHandler:v31 networkActivity:0];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

void sub_37FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_37FE0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = sub_377D4(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Update to third party photo settings failed with error %@", buf, 0xCu);
    }
  }

  v12 = [v7 feedbackResult];
  v13 = [v12 submissionResult];
  v14 = [v13 thirdPartyPhotoSharingPreferenceUpdateResult];

  v15 = [v14 preference];
  if ([v14 errorsCount])
  {
    v16 = +[NSMutableArray array];
    if ([v14 errorsCount])
    {
      v17 = 0;
      do
      {
        v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 errorsAtIndex:v17]);
        [v16 addObject:v18];

        ++v17;
      }

      while (v17 < [v14 errorsCount]);
    }
  }

  else
  {
    v16 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_38258;
  block[3] = &unk_80610;
  objc_copyWeak(&v28, (a1 + 40));
  v24 = v15;
  v19 = *(a1 + 32);
  v26 = v16;
  v27 = v19;
  v25 = v10;
  v20 = v16;
  v21 = v10;
  v22 = v15;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v28);
}

void sub_38258(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _setDefaultsKeyForPreferences:*(a1 + 32)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 48) copy];
  (*(v4 + 16))(v4, v2, v3, v5);
}

void sub_38394(id a1)
{
  qword_96D80 = os_log_create("com.apple.Maps", "ThirdPartyPhotoSharingPreferencesManager");

  _objc_release_x1();
}

uint64_t MapsWalkPreferencesCurrentCountrySupportsAvoidHills()
{
  v0 = +[GEOCountryConfiguration sharedConfiguration];
  v1 = [v0 countryCode];
  v2 = [v1 isEqualToString:@"CN"];

  return v2 ^ 1;
}

uint64_t MapsWalkPreferencesCurrentCountrySupportsAvoidBusyRoads()
{
  v0 = +[GEOCountryConfiguration sharedConfiguration];
  v1 = [v0 countryCode];
  v2 = [v1 isEqualToString:@"CN"];

  return v2 ^ 1;
}

id MapsWalkPreferencesCurrentCountrySupportsAvoidStairs()
{
  v0 = +[GEOCountryConfiguration sharedConfiguration];
  if ([v0 currentCountrySupportsAvoidStairs])
  {
    v1 = &dword_0 + 1;
  }

  else
  {
    v2 = +[GEOCountryConfiguration sharedConfiguration];
    v3 = [v2 countryCode];
    v1 = [v3 isEqualToString:@"CN"];
  }

  return v1;
}

void sub_3920C(id a1)
{
  qword_96D90 = [[WeatherSettingsManager alloc] initSharedManager];

  _objc_release_x1();
}

unint64_t sub_394A8()
{
  result = qword_96530;
  if (!qword_96530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_96530);
  }

  return result;
}

uint64_t sub_39518(uint64_t a1)
{
  sub_3C610();
  __chkstk_darwin();
  sub_3AA8C(0, &unk_965A0, off_687A8);
  v2 = [objc_allocWithZone(PSSpecifier) init];
  [v2 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_3C5E0();
  return sub_3C5B0();
}

uint64_t sub_39604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  sub_3A428(&qword_96550, &qword_49020);
  v3[9] = swift_task_alloc();
  sub_3C700();
  v3[10] = swift_task_alloc();
  v4 = sub_3C610();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = sub_3C640();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v6 = sub_3C630();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v7 = sub_3C5A0();
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  sub_3A428(&qword_96558, &qword_49028);
  v3[27] = swift_task_alloc();
  v8 = sub_3C590();
  v3[28] = v8;
  v3[29] = *(v8 - 8);
  v3[30] = swift_task_alloc();
  sub_3C6E0();
  v3[31] = sub_3C6D0();
  v10 = sub_3C6C0();

  return _swift_task_switch(sub_39938, v10, v9);
}

uint64_t sub_39938()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];

  sub_3C670();
  sub_3C560();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[23];
    v8 = v0[20];
    v9 = v0[21];
    sub_3A9E0(v0[27], &qword_96558, &qword_49028);
    sub_3C660();
    sub_3C690();
    (*(v9 + 8))(v7, v8);
    goto LABEL_60;
  }

  (*(v0[29] + 32))(v0[30], v0[27], v0[28]);
  sub_3C660();
  v0[2] = sub_3C570();
  v0[3] = v10;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_3A938();
  v11 = sub_3C710();

  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = -v13;
    v16 = v11 + 40;
    v17 = &_swiftEmptyArrayStorage;
    do
    {
      v18 = (v16 + 16 * v14++);
      while (1)
      {
        if ((v14 - 1) >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v18 - 1);
        v20 = *v18;
        v21 = HIBYTE(*v18) & 0xF;
        if ((*v18 & 0x2000000000000000) == 0)
        {
          v21 = v19 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          if (v19 != 0x6C7070612E6D6F63 || v20 != 0xEE007370614D2E65)
          {
            result = sub_3C730();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        ++v14;
        v18 += 2;
        if (v15 + v14 == 1)
        {
          goto LABEL_23;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v71 = v17;
      if ((result & 1) == 0)
      {
        result = sub_3A700(0, *(v17 + 2) + 1, 1);
      }

      v16 = v11 + 40;
      v24 = *(v17 + 2);
      v23 = *(v17 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v27 = v24 + 1;
        v66 = v24;
        result = sub_3A700((v23 > 1), v24 + 1, 1);
        v25 = v27;
        v24 = v66;
        v16 = v11 + 40;
        v17 = v71;
      }

      *(v17 + 2) = v25;
      v26 = &v17[16 * v24];
      *(v26 + 4) = v19;
      *(v26 + 5) = v20;
    }

    while (v15 + v14);
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
  }

LABEL_23:

  v28 = *(v17 + 2);
  if (v28)
  {
    goto LABEL_24;
  }

  sub_3C580();
  if (v48)
  {
    v49 = v0[8];

    v50 = sub_3C6B0();

    [v49 setSpecifierIdentifierToScrollAndHighlight:v50];

LABEL_58:
    v52 = v0[29];
    v51 = v0[30];
    v53 = v0[28];
    v55 = v0[21];
    v54 = v0[22];
    v56 = v0[20];
    sub_3C690();
    (*(v55 + 8))(v54, v56);
    (*(v52 + 8))(v51, v53);
    goto LABEL_60;
  }

  v28 = *(v17 + 2);
  if (!v28)
  {

    goto LABEL_58;
  }

LABEL_24:
  v29 = v0[12];
  v30 = (v29 + 8);
  v67 = (v0[18] + 48);
  v69 = (v29 + 32);
  while (1)
  {
    v36 = *(v17 + 4);
    v35 = *(v17 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v28 - 1) > *(v17 + 3) >> 1)
    {
      v17 = sub_3A82C(isUniquelyReferenced_nonNull_native, v28, 1, v17);
    }

    sub_3A98C((v17 + 32));
    v38 = *(v17 + 2);
    memmove(v17 + 32, v17 + 48, 16 * v38 - 16);
    *(v17 + 2) = v38 - 1;
    v39._rawValue = &off_80750;
    v73._countAndFlagsBits = v36;
    v73._object = v35;
    v40 = sub_3C720(v39, v73);

    if (v40 > 2)
    {
      switch(v40)
      {
        case 3:
          sub_3AA8C(0, &qword_96578, off_687B0);
          sub_3C5F0();
          v41 = 3;
          break;
        case 4:
          sub_3AA8C(0, &qword_96570, off_687C0);
          sub_3C5F0();
          v41 = 4;
          break;
        case 5:
          sub_3C6F0();
          sub_3C600();
          v41 = 5;
          break;
        default:
LABEL_55:

          goto LABEL_58;
      }
    }

    else if (v40)
    {
      if (v40 == 1)
      {
        sub_3AA8C(0, &qword_96588, off_687D0);
        sub_3C5F0();
        v41 = 1;
      }

      else
      {
        if (v40 != 2)
        {
          goto LABEL_55;
        }

        sub_3AA8C(0, &qword_96580, off_687C8);
        sub_3C5F0();
        v41 = 2;
      }
    }

    else
    {
      sub_3AA8C(0, &qword_96590, off_687B8);
      sub_3C5F0();
      v41 = 0;
    }

    v42 = v0[16];
    v43 = v0[17];
    v44 = v0[11];
    v45 = v0[9];
    v46 = *v69;
    (*v69)(v42, v0[15], v44);
    sub_3C5D0();
    v47 = *v30;
    (*v30)(v42, v44);
    if ((*v67)(v45, 1, v43) != 1)
    {
      break;
    }

    sub_3A9E0(v0[9], &qword_96550, &qword_49020);
    if (v41 > 2)
    {
      if (v41 == 3)
      {
        v31 = &qword_96578;
        v32 = off_687B0;
      }

      else
      {
        if (v41 != 4)
        {
          sub_3C6F0();
          sub_3C600();
          goto LABEL_27;
        }

        v31 = &qword_96570;
        v32 = off_687C0;
      }
    }

    else if (v41)
    {
      if (v41 == 1)
      {
        v31 = &qword_96588;
        v32 = off_687D0;
      }

      else
      {
        v31 = &qword_96580;
        v32 = off_687C8;
      }
    }

    else
    {
      v31 = &qword_96590;
      v32 = off_687B8;
    }

    sub_3AA8C(0, v31, v32);
    sub_3C5F0();
LABEL_27:
    v33 = v0[14];
    v34 = v0[11];
    v46(v33, v0[13], v34);
    sub_3AA40(&qword_96568, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
    sub_3C620();
    v47(v33, v34);
    v28 = *(v17 + 2);
    if (!v28)
    {
      goto LABEL_55;
    }
  }

  v57 = v0[29];
  v68 = v0[28];
  v70 = v0[30];
  v58 = v0[21];
  v59 = v0[22];
  v60 = v0[19];
  v65 = v0[20];
  v62 = v0[17];
  v61 = v0[18];
  v63 = v0[9];

  (*(v61 + 32))(v60, v63, v62);
  sub_3C680();
  (*(v61 + 8))(v60, v62);
  (*(v58 + 8))(v59, v65);
  (*(v57 + 8))(v70, v68);
LABEL_60:

  v64 = v0[1];

  return v64();
}

uint64_t sub_3A230()
{
  v1 = sub_3A428(&qword_96538, &qword_49008);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  sub_3C5C0();
  sub_3AA40(&qword_96540, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v6 = v5;
  sub_3C6A0();
  *(swift_allocObject() + 16) = v6;
  sub_3A654();
  v7 = v6;
  sub_3C650();
  return (*(v2 + 8))(v4, v1);
}

id sub_3A3EC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_3A428(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3A470()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3A4B0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3A560;

  return sub_39604(a1, a2, v6);
}

uint64_t sub_3A560()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_3A654()
{
  result = qword_96548;
  if (!qword_96548)
  {
    sub_3A6B8(&qword_96538, &qword_49008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_96548);
  }

  return result;
}

uint64_t sub_3A6B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_3A700(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3A720(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_3A720(char *result, int64_t a2, char a3, char *a4)
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
    sub_3A428(&qword_96598, &qword_49030);
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

char *sub_3A82C(char *result, int64_t a2, char a3, char *a4)
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
    sub_3A428(&qword_96598, &qword_49030);
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

unint64_t sub_3A938()
{
  result = qword_96560;
  if (!qword_96560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_96560);
  }

  return result;
}

uint64_t sub_3A9E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3A428(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3AA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3AA8C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_3AAE4()
{
  sub_3A6B8(&qword_96538, &qword_49008);
  sub_3A654();
  return swift_getOpaqueTypeConformance2();
}

void sub_3B3D0(uint64_t a1)
{
  v1 = MAPSGetMapsAssertLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = [NSString stringWithFormat:@"fillingPriority Required is not supported and will be clamped to Required - 1"];
    v6 = 136316162;
    v7 = "[UILayoutGuide(UIKitExtras) _maps_flexibleConstraintsForLayoutGuide:insideEdges:withFillingPriority:]";
    v8 = 2080;
    v9 = "UIKitExtras.m";
    v10 = 1024;
    v11 = 815;
    v12 = 2080;
    v13 = "fillingPriority < UILayoutPriorityRequired";
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v6, 0x30u);
  }

  v3 = _isInternalInstall();
  if (v3)
  {
    v4 = MAPSGetMapsAssertLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = +[NSThread callStackSymbols];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%@", &v6, 0xCu);
    }
  }
}

void sub_3B69C(uint64_t a1)
{
  v2 = MAPSGetMapsAssertLog(a1);
  if (sub_30824(v2))
  {
    v3 = [NSString stringWithFormat:@"cannot add preparations, already prepared"];
    sub_30800();
    sub_30814();
    sub_3083C();
    sub_307EC();
    sub_307DC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }

  v9 = _isInternalInstall();
  if (v9)
  {
    v10 = MAPSGetMapsAssertLog(v9);
    if (sub_30824(v10))
    {
      v11 = +[NSThread callStackSymbols];
      sub_30848();
      sub_307DC();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    }
  }
}

void sub_3B7CC(uint64_t a1)
{
  v2 = MAPSGetMapsAssertLog(a1);
  if (sub_30824(v2))
  {
    v3 = [NSString stringWithFormat:@"cannot add animations, already animated"];
    sub_30800();
    sub_30814();
    sub_3083C();
    sub_307EC();
    sub_307DC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }

  v9 = _isInternalInstall();
  if (v9)
  {
    v10 = MAPSGetMapsAssertLog(v9);
    if (sub_30824(v10))
    {
      v11 = +[NSThread callStackSymbols];
      sub_30848();
      sub_307DC();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    }
  }
}

void sub_3B8FC(uint64_t a1)
{
  v2 = MAPSGetMapsAssertLog(a1);
  if (sub_30824(v2))
  {
    v3 = [NSString stringWithFormat:@"cannot add completions, already completed"];
    sub_30800();
    sub_30814();
    sub_3083C();
    sub_307EC();
    sub_307DC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }

  v9 = _isInternalInstall();
  if (v9)
  {
    v10 = MAPSGetMapsAssertLog(v9);
    if (sub_30824(v10))
    {
      v11 = +[NSThread callStackSymbols];
      sub_30848();
      sub_307DC();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    }
  }
}

BOOL sub_3BA2C(uint64_t a1, void *a2)
{
  v4 = MAPSGetMapsAssertLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [NSString stringWithFormat:@"[%p] cannot leave childAnimationCompletionGroup, never entered", a1];
    *buf = 136316162;
    v11 = "[GroupAnimation _leaveCompletionWaitDispatchGroupWithReason:]";
    v12 = 2080;
    v13 = "GroupAnimation.m";
    v14 = 1024;
    v15 = 170;
    v16 = 2080;
    v17 = "_childAnimationCompletionGroup != nil";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
  }

  v6 = _isInternalInstall();
  if (v6)
  {
    v7 = MAPSGetMapsAssertLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  return *a2 == 0;
}

void sub_3BBC4(uint64_t a1)
{
  v2 = MAPSGetMapsAssertLog(a1);
  if (sub_30824(v2))
  {
    v3 = [NSString stringWithFormat:@"cannot call -prepare if any phase already ran"];
    sub_30800();
    sub_30814();
    sub_3083C();
    sub_307EC();
    sub_307DC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }

  v9 = _isInternalInstall();
  if (v9)
  {
    v10 = MAPSGetMapsAssertLog(v9);
    if (sub_30824(v10))
    {
      v11 = +[NSThread callStackSymbols];
      sub_30848();
      sub_307DC();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    }
  }
}

void sub_3BCF8(uint64_t a1)
{
  v2 = MAPSGetMapsAssertLog(a1);
  if (sub_30824(v2))
  {
    v3 = [NSString stringWithFormat:@"cannot call -animate if -prepare or -animate was already called"];
    sub_30800();
    sub_30814();
    sub_3083C();
    sub_307EC();
    sub_307DC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }

  v9 = _isInternalInstall();
  if (v9)
  {
    v10 = MAPSGetMapsAssertLog(v9);
    if (sub_30824(v10))
    {
      v11 = +[NSThread callStackSymbols];
      sub_30848();
      sub_307DC();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    }
  }
}

void sub_3BE28(uint64_t a1)
{
  v2 = MAPSGetMapsAssertLog(a1);
  if (sub_30824(v2))
  {
    v3 = [NSString stringWithFormat:@"cannot call -complete: if no other phase already ran"];
    sub_30800();
    sub_30814();
    sub_3083C();
    sub_307EC();
    sub_307DC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }

  v9 = _isInternalInstall();
  if (v9)
  {
    v10 = MAPSGetMapsAssertLog(v9);
    if (sub_30824(v10))
    {
      v11 = +[NSThread callStackSymbols];
      sub_30848();
      sub_307DC();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    }
  }
}

void sub_3C110(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      [WeakRetained setExpiredSubscriptionsCount:{objc_msgSend(v6, "count")}];
    }
  }
}

void sub_3C3FC(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline reason value %x", v1, 8u);
}

void sub_3C47C(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", v1, 8u);
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}