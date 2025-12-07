@interface UIMaterial
@end

@implementation UIMaterial

void __30___UIMaterial_materialMapping__block_invoke()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v1 != 6)
  {
    if (v1 == 4)
    {
      v4 = [[_UIMaterial alloc] initWithBlur:?];
      [v3 setObject:v4 forKeyedSubscript:@"systemBackgroundColor"];
      [v3 setObject:v4 forKeyedSubscript:@"secondarySystemBackgroundColor"];
      [v3 setObject:v4 forKeyedSubscript:@"tertiarySystemBackgroundColor"];
      [v3 setObject:v4 forKeyedSubscript:@"systemGroupedBackgroundColor"];
      [v3 setObject:v4 forKeyedSubscript:@"secondarySystemGroupedBackgroundColor"];
      [v3 setObject:v4 forKeyedSubscript:@"tertiarySystemGroupedBackgroundColor"];
      [v3 setObject:v4 forKeyedSubscript:@"tableBackgroundColor"];
      [v3 setObject:v4 forKeyedSubscript:@"tableCellGroupedBackgroundColor"];
      [v3 setObject:v4 forKeyedSubscript:@"tableCellPlainBackgroundColor"];
      v83 = 0uLL;
      *v84 = 0;
      *&v84[4] = xmmword_18A67C2F0;
      *&v84[20] = xmmword_18A67C300;
      *&v84[36] = xmmword_18A67C310;
      *&v84[52] = 0x3F80000000000000;
      *&v84[60] = 0;
      v81 = 0uLL;
      *v82 = 0;
      *&v82[4] = xmmword_18A67C320;
      *&v82[20] = 1058139013;
      *&v82[24] = 0;
      *&v82[32] = 0;
      *&v82[40] = xmmword_18A67C330;
      *&v82[56] = 1065353216;
      v80 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v5 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v80];
      [v3 setObject:v5 forKeyedSubscript:@"systemBlueColor"];

      v83 = xmmword_18A67C340;
      *v84 = xmmword_18A67C350;
      *&v84[16] = xmmword_18A67C360;
      *&v84[32] = xmmword_18A67C370;
      *&v84[48] = xmmword_18A6685B0;
      v81 = xmmword_18A67C380;
      *v82 = xmmword_18A67C390;
      *&v82[16] = xmmword_18A67C3A0;
      *&v82[32] = xmmword_18A67C3B0;
      *&v82[48] = xmmword_18A6685B0;
      v78 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v6 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v78];
      [v3 setObject:v6 forKeyedSubscript:@"systemGreenColor"];

      v83 = xmmword_18A67C3C0;
      *v84 = xmmword_18A67C3D0;
      *&v84[16] = xmmword_18A67C3E0;
      memset(&v84[36], 0, 20);
      *&v84[32] = 1011129254;
      *&v84[56] = 1065353216;
      v81 = 0uLL;
      *v82 = xmmword_18A67C3F0;
      *&v82[16] = xmmword_18A67C400;
      *&v82[32] = xmmword_18A67C410;
      *&v82[48] = xmmword_18A6685B0;
      v77 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v7 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v77];
      [v3 setObject:v7 forKeyedSubscript:@"systemOrangeColor"];

      v83 = xmmword_18A67C420;
      *v84 = xmmword_18A67C430;
      *&v84[16] = xmmword_18A67C440;
      *&v84[32] = xmmword_18A67C450;
      *&v84[48] = xmmword_18A6685B0;
      v81 = 0uLL;
      *v82 = xmmword_18A67C460;
      *&v82[16] = xmmword_18A67C470;
      *&v82[32] = xmmword_18A67C480;
      *&v82[48] = xmmword_18A6685B0;
      v76 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v8 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v76];
      [v3 setObject:v8 forKeyedSubscript:@"systemRedColor"];

      v83 = xmmword_18A67C490;
      *v84 = xmmword_18A67C4A0;
      *&v84[16] = 0x3F25604200000000;
      memset(&v84[24], 0, 32);
      *&v84[56] = 1065353216;
      v81 = 0uLL;
      *v82 = xmmword_18A67C4B0;
      *&v82[16] = 0x3F570A3D00000000;
      memset(&v82[24], 0, 32);
      *&v82[56] = 1065353216;
      v75 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v9 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v75];
      [v3 setObject:v9 forKeyedSubscript:@"systemYellowColor"];

      v83 = xmmword_18A67C4C0;
      *v84 = xmmword_18A67C4D0;
      *&v84[16] = xmmword_18A67C4E0;
      *&v84[32] = xmmword_18A67C4F0;
      *&v84[48] = xmmword_18A6685B0;
      v81 = 0uLL;
      *v82 = xmmword_18A67C500;
      *&v82[16] = xmmword_18A67C510;
      *&v82[32] = xmmword_18A67C520;
      *&v82[48] = xmmword_18A6685B0;
      v74 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v10 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v74];
      [v3 setObject:v10 forKeyedSubscript:@"systemPinkColor"];

      v83 = xmmword_18A67C530;
      *v84 = xmmword_18A67C540;
      *&v84[16] = xmmword_18A67C550;
      *&v84[32] = xmmword_18A67C560;
      *&v84[48] = xmmword_18A6685B0;
      v81 = xmmword_18A67C570;
      *v82 = xmmword_18A67C580;
      *&v82[16] = 0x3EF5C28F00000000;
      *&v82[24] = 0;
      *&v82[32] = 0;
      *&v82[40] = xmmword_18A67C330;
      *&v82[56] = 1065353216;
      v11 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v12 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v11];
      [v3 setObject:v12 forKeyedSubscript:@"systemIndigoColor"];

      v83 = xmmword_18A67C590;
      *v84 = xmmword_18A67C5A0;
      *&v84[16] = xmmword_18A67C5B0;
      *&v84[32] = xmmword_18A67C5C0;
      *&v84[48] = xmmword_18A6685B0;
      v81 = xmmword_18A67C5D0;
      *v82 = xmmword_18A67C5E0;
      *&v82[16] = xmmword_18A67C5F0;
      *&v82[32] = xmmword_18A67C600;
      *&v82[48] = xmmword_18A6685B0;
      v13 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v14 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v13];
      [v3 setObject:v14 forKeyedSubscript:@"systemPurpleColor"];

      v83 = 0uLL;
      *v84 = 0;
      *&v84[4] = xmmword_18A67C610;
      *&v84[20] = xmmword_18A67C620;
      *&v84[36] = xmmword_18A67C630;
      *&v84[52] = 0x3F80000000000000;
      *&v84[60] = 0;
      v81 = 0uLL;
      *v82 = 0;
      *&v82[4] = xmmword_18A67C640;
      *&v82[20] = xmmword_18A67C650;
      *&v82[36] = xmmword_18A67C660;
      *&v82[52] = 0x3F80000000000000;
      *&v82[60] = 0;
      v15 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v16 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v15];
      [v3 setObject:v16 forKeyedSubscript:@"systemMintColor"];

      v83 = 0uLL;
      *v84 = 0;
      *&v84[4] = xmmword_18A67C670;
      *&v84[20] = xmmword_18A67C680;
      *&v84[36] = xmmword_18A67C690;
      *&v84[52] = 0x3F80000000000000;
      *&v84[60] = 0;
      v81 = xmmword_18A67C6A0;
      *v82 = xmmword_18A67C6B0;
      *&v82[16] = 0x3F547AE100000000;
      *&v82[24] = 0;
      *&v82[32] = 0;
      *&v82[40] = xmmword_18A67C330;
      *&v82[56] = 1065353216;
      v17 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v18 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v17];
      [v3 setObject:v18 forKeyedSubscript:@"systemCyanColor"];

      v83 = 0uLL;
      *v84 = 0;
      *&v84[4] = xmmword_18A67C6C0;
      *&v84[20] = xmmword_18A67C6D0;
      *&v84[36] = xmmword_18A67C6E0;
      *&v84[52] = 0x3F80000000000000;
      *&v84[60] = 0;
      *v82 = 0;
      v81 = 0uLL;
      *&v82[4] = xmmword_18A67C6F0;
      *&v82[20] = xmmword_18A67C700;
      *&v82[36] = xmmword_18A67C710;
      *&v82[52] = 0x3F80000000000000;
      *&v82[60] = 0;
      v19 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v20 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v19];
      [v3 setObject:v20 forKeyedSubscript:@"systemTealColor"];

      v83 = xmmword_18A67C720;
      *v84 = xmmword_18A67C730;
      *&v84[16] = xmmword_18A67C740;
      *&v84[32] = xmmword_18A67C750;
      *&v84[48] = xmmword_18A6685B0;
      v81 = xmmword_18A67C760;
      *v82 = xmmword_18A67C770;
      *&v82[16] = xmmword_18A67C780;
      *&v82[32] = xmmword_18A67C790;
      *&v82[48] = xmmword_18A6685B0;
      v21 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
      v22 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v19];
      [v3 setObject:v22 forKeyedSubscript:@"systemBrownColor"];

      v23 = [_UIMaterial alloc];
      if (v23)
      {
        v24 = [(_UIMaterial *)v23 initWithVibrancy:4 forBlurEffectStyle:9];
      }

      else
      {
        v24 = 0;
      }

      [v3 setObject:v24 forKeyedSubscript:@"systemFillColor"];

      v25 = [_UIMaterial alloc];
      if (v25)
      {
        v26 = [(_UIMaterial *)v25 initWithVibrancy:5 forBlurEffectStyle:9];
      }

      else
      {
        v26 = 0;
      }

      [v3 setObject:v26 forKeyedSubscript:@"secondarySystemFillColor"];

      v27 = [_UIMaterial alloc];
      if (v27)
      {
        v28 = [(_UIMaterial *)v27 initWithVibrancy:6 forBlurEffectStyle:9];
      }

      else
      {
        v28 = 0;
      }

      [v3 setObject:v28 forKeyedSubscript:@"tertiarySystemFillColor"];

      v29 = [_UIMaterial alloc];
      if (v29)
      {
        v30 = [(_UIMaterial *)v29 initWithVibrancy:0 forBlurEffectStyle:9];
      }

      else
      {
        v30 = 0;
      }

      [v3 setObject:v30 forKeyedSubscript:@"labelColor"];

      v31 = [_UIMaterial alloc];
      if (v31)
      {
        v32 = [(_UIMaterial *)v31 initWithVibrancy:1 forBlurEffectStyle:9];
      }

      else
      {
        v32 = 0;
      }

      [v3 setObject:v32 forKeyedSubscript:@"secondaryLabelColor"];

      v33 = [_UIMaterial alloc];
      if (v33)
      {
        v34 = [(_UIMaterial *)v33 initWithVibrancy:2 forBlurEffectStyle:9];
      }

      else
      {
        v34 = 0;
      }

      [v3 setObject:v34 forKeyedSubscript:@"tertiaryLabelColor"];

      v35 = [_UIMaterial alloc];
      if (v35)
      {
        v36 = [(_UIMaterial *)v35 initWithVibrancy:3 forBlurEffectStyle:9];
      }

      else
      {
        v36 = 0;
      }

      [v3 setObject:v36 forKeyedSubscript:@"quaternaryLabelColor"];

      v37 = [_UIMaterial alloc];
      if (v37)
      {
        v38 = [(_UIMaterial *)v37 initWithVibrancy:7 forBlurEffectStyle:9];
      }

      else
      {
        v38 = 0;
      }

      v39 = v78;
      [v3 setObject:v38 forKeyedSubscript:@"separatorColor"];
      v40 = @"opaqueSeparatorColor";
LABEL_42:
      [v3 setObject:v38 forKeyedSubscript:v40];

      goto LABEL_43;
    }

    v4 = [[_UIMaterial alloc] initWithBlur:?];
    [v3 setObject:v4 forKeyedSubscript:@"systemBackgroundColor"];
    [v3 setObject:v4 forKeyedSubscript:@"secondarySystemBackgroundColor"];
    [v3 setObject:v4 forKeyedSubscript:@"tertiarySystemBackgroundColor"];
    [v3 setObject:v4 forKeyedSubscript:@"systemGroupedBackgroundColor"];
    [v3 setObject:v4 forKeyedSubscript:@"secondarySystemGroupedBackgroundColor"];
    [v3 setObject:v4 forKeyedSubscript:@"tertiarySystemGroupedBackgroundColor"];
    [v3 setObject:v4 forKeyedSubscript:@"tableBackgroundColor"];
    [v3 setObject:v4 forKeyedSubscript:@"tableCellGroupedBackgroundColor"];
    [v3 setObject:v4 forKeyedSubscript:@"tableCellPlainBackgroundColor"];
    v41 = [_UIMaterial alloc];
    if (v41)
    {
      v42 = [(_UIMaterial *)v41 initWithVibrancy:7 forBlurEffectStyle:9];
    }

    else
    {
      v42 = 0;
    }

    [v3 setObject:v42 forKeyedSubscript:@"separatorColor"];
    v80 = v42;
    [v3 setObject:v42 forKeyedSubscript:@"opaqueSeparatorColor"];
    v43 = [_UIMaterial alloc];
    if (v43)
    {
      v44 = [(_UIMaterial *)v43 initWithVibrancy:5 forBlurEffectStyle:9];
    }

    else
    {
      v44 = 0;
    }

    [v3 setObject:v44 forKeyedSubscript:@"_switchOffColor"];

    v83 = xmmword_18A67C7A0;
    *v84 = xmmword_18A67C7B0;
    *&v84[16] = xmmword_18A67C7C0;
    *&v84[32] = xmmword_18A67C7D0;
    *&v84[48] = xmmword_18A6685B0;
    v81 = xmmword_18A67C7E0;
    *v82 = xmmword_18A67C7F0;
    *&v82[16] = xmmword_18A67C800;
    *&v82[32] = xmmword_18A67C810;
    *&v82[48] = xmmword_18A6685B0;
    v79 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v83 darkCAColorMatrix:&v81 alpha:1.0];
    v45 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v79];
    [v3 setObject:v45 forKeyedSubscript:@"systemRedColor"];

    v77 = [(_UIMaterial *)v2 vibrancyEffectWithA:6.905 B:-51.525 C:91.932 D:54.282 E:-4.146 F:?];
    v46 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v77];
    [v3 setObject:v46 forKeyedSubscript:@"systemOrangeColor"];

    v76 = [(_UIMaterial *)v2 vibrancyEffectWithA:28.262 B:-51.738 C:94.219 D:78.139 E:-1.859 F:?];
    v47 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v76];
    [v3 setObject:v47 forKeyedSubscript:@"systemYellowColor"];

    v48 = [_UIMaterial alloc];
    v49 = +[(_UIMaterial *)v2];
    v50 = [(_UIMaterial *)v48 initWithVibrantVisualEffect:v49];
    [v3 setObject:v50 forKeyedSubscript:@"systemGreenColor"];

    v75 = [(_UIMaterial *)v2 vibrancyEffectWithA:27.443 B:23.913 C:24.238 D:75.618 E:74.048 F:?];
    v51 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v75];
    [v3 setObject:v51 forKeyedSubscript:@"systemMintColor"];

    v74 = [(_UIMaterial *)v2 vibrancyEffectWithA:19.521 B:28.541 C:16.214 D:69.544 E:78.954 F:?];
    v52 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v74];
    [v3 setObject:v52 forKeyedSubscript:@"systemTealColor"];

    v11 = [(_UIMaterial *)v2 vibrancyEffectWithA:18.24 B:40.6 C:26.993 D:70.123 E:87.773 F:?];
    v53 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v11];
    [v3 setObject:v53 forKeyedSubscript:@"systemCyanColor"];

    v13 = [(_UIMaterial *)v2 vibrancyEffectWithA:2.122 B:54.282 C:1.386 D:49.224 E:97.464 F:?];
    v54 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v13];
    [v3 setObject:v54 forKeyedSubscript:@"systemBlueColor"];

    v15 = [(_UIMaterial *)v2 vibrancyEffectWithA:-12.53 B:37.66 C:34.283 D:33.503 E:87.623 F:?];
    v55 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v15];
    [v3 setObject:v55 forKeyedSubscript:@"systemIndigoColor"];

    v17 = [(_UIMaterial *)v2 vibrancyEffectWithA:-14.779 B:40.121 C:73.393 D:33.783 E:93.393 F:?];
    v56 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v17];
    [v3 setObject:v56 forKeyedSubscript:@"systemPurpleColor"];

    v19 = [(_UIMaterial *)v2 vibrancyEffectWithA:-25.495 B:-9.815 C:105.312 D:26.882 E:42.562 F:?];
    v57 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v19];
    [v3 setObject:v57 forKeyedSubscript:@"systemPinkColor"];

    v21 = [(_UIMaterial *)v2 vibrancyEffectWithA:0.167 B:-14.733 C:61.393 D:49.633 E:34.723 F:?];
    v58 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v21];
    [v3 setObject:v58 forKeyedSubscript:@"systemBrownColor"];

    v59 = [_UIMaterial alloc];
    if (v59)
    {
      v60 = [(_UIMaterial *)v59 initWithVibrancy:4 forBlurEffectStyle:9];
    }

    else
    {
      v60 = 0;
    }

    [v3 setObject:v60 forKeyedSubscript:@"systemFillColor"];

    v61 = [_UIMaterial alloc];
    if (v61)
    {
      v62 = [(_UIMaterial *)v61 initWithVibrancy:5 forBlurEffectStyle:9];
    }

    else
    {
      v62 = 0;
    }

    [v3 setObject:v62 forKeyedSubscript:@"secondarySystemFillColor"];

    v63 = [_UIMaterial alloc];
    if (v63)
    {
      v64 = [(_UIMaterial *)v63 initWithVibrancy:6 forBlurEffectStyle:9];
    }

    else
    {
      v64 = 0;
    }

    [v3 setObject:v64 forKeyedSubscript:@"tertiarySystemFillColor"];

    if (_UISolariumEnabled())
    {
      v65 = +[_UIMaterial _labelMaterial];
    }

    else
    {
      v66 = [_UIMaterial alloc];
      if (!v66)
      {
        v67 = 0;
        goto LABEL_35;
      }

      v65 = [(_UIMaterial *)v66 initWithVibrancy:0 forBlurEffectStyle:9];
    }

    v67 = v65;
LABEL_35:
    [v3 setObject:v67 forKeyedSubscript:@"labelColor"];

    v68 = [_UIMaterial alloc];
    if (v68)
    {
      v69 = [(_UIMaterial *)v68 initWithVibrancy:1 forBlurEffectStyle:9];
    }

    else
    {
      v69 = 0;
    }

    [v3 setObject:v69 forKeyedSubscript:@"secondaryLabelColor"];

    v70 = [_UIMaterial alloc];
    if (v70)
    {
      v71 = [(_UIMaterial *)v70 initWithVibrancy:2 forBlurEffectStyle:9];
    }

    else
    {
      v71 = 0;
    }

    [v3 setObject:v71 forKeyedSubscript:@"tertiaryLabelColor"];

    v72 = [_UIMaterial alloc];
    if (v72)
    {
      v38 = [(_UIMaterial *)v72 initWithVibrancy:3 forBlurEffectStyle:9];
    }

    else
    {
      v38 = 0;
    }

    v39 = v79;
    v40 = @"quaternaryLabelColor";
    goto LABEL_42;
  }

LABEL_43:
  v73 = qword_1ED49B918;
  qword_1ED49B918 = v3;
}

void __33___UIMaterial__systemGreenEffect__block_invoke(uint64_t a1)
{
  v1 = [(_UIMaterial *)*(a1 + 32) vibrancyEffectWithA:26.706 B:-16.434 C:11.265 D:74.405 E:26.955 F:?];
  v2 = qword_1ED49B928;
  qword_1ED49B928 = v1;
}

@end