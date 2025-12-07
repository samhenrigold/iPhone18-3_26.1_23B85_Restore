@interface PKPassTileView
- (BOOL)_isDynamicHeight;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPassTileCustomViewProviding)customViewProvider;
- (PKPassTileView)init;
- (PKPassTileViewDelegate)delegate;
- (double)_layoutWithBounds:(double)bounds applyLayout:(double)layout;
- (double)_prepareViewForReuse:(void *)reuse type:(__int128 *)type state:;
- (uint64_t)_updateContentStateAnimated:(uint64_t)animated;
- (void)_updateBackgroundAnimated:(uint64_t)animated;
- (void)_updateStyleAnimated:(uint64_t)animated;
- (void)_updateSubviewsAnimated:(uint64_t)animated;
- (void)beginActionStateTimeout:(int64_t)timeout;
- (void)dealloc;
- (void)layoutIfNeededAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)updates animated:(BOOL)animated;
- (void)prepareForReuse;
- (void)setCompact:(BOOL)compact animated:(BOOL)animated;
- (void)setContent:(id)content animated:(BOOL)animated;
- (void)setEnabled:(BOOL)enabled;
- (void)setGroupStyle:(unint64_t)style;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setInActionState:(BOOL)state animated:(BOOL)animated;
- (void)setPass:(id)pass passState:(id)state;
- (void)setSelected:(BOOL)selected;
@end

@implementation PKPassTileView

- (PKPassTileView)init
{
  v17.receiver = self;
  v17.super_class = PKPassTileView;
  v2 = [(PKPassTileView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(UIView *)v2 pkui_setMaskType:3];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    snapshots = v3->_snapshots;
    v3->_snapshots = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    icon = v3->_icon;
    v3->_icon = v6;

    Label = CreateLabel();
    title = v3->_title;
    v3->_title = Label;

    v10 = CreateLabel();
    body = v3->_body;
    v3->_body = v10;

    v12 = CreateLabel();
    footer = v3->_footer;
    v3->_footer = v12;

    [(UIImageView *)v3->_icon setAlpha:0.0];
    [(UILabel *)v3->_title setAlpha:0.0];
    [(UILabel *)v3->_body setAlpha:0.0];
    [(UIImageView *)v3->_bodyImage setAlpha:0.0];
    [(UILabel *)v3->_footer setAlpha:0.0];
    v14 = objc_alloc_init(PKPassthroughView);
    contentView = v3->_contentView;
    v3->_contentView = v14;

    [(PKPassthroughView *)v3->_contentView setHitTestEnabled:0];
    [(PKPassthroughView *)v3->_contentView addSubview:v3->_icon];
    [(PKPassthroughView *)v3->_contentView addSubview:v3->_title];
    [(PKPassthroughView *)v3->_contentView addSubview:v3->_body];
    [(PKPassthroughView *)v3->_contentView addSubview:v3->_footer];
    [(PKPassTileView *)v3 addSubview:v3->_contentView];
    v3->_enabled = [(PKPassTileView *)v3 isEnabled];
    v3->_selected = [(PKPassTileView *)v3 isSelected];
    v3->_highlighted = [(PKPassTileView *)v3 isHighlighted];
    [(PKPassTileView *)v3 _updateSubviewsAnimated:?];
  }

  return v3;
}

- (void)_updateSubviewsAnimated:(uint64_t)animated
{
  if (!animated)
  {
    return;
  }

  if (*(animated + 1073) == 1)
  {
    *(animated + 1074) = 1;
    return;
  }

  if (a2)
  {
    [animated layoutIfNeededAnimated:1];
  }

  metadata = [*(animated + 1096) metadata];
  *(animated + 979) = [metadata isSelectable];
  actions = [*(animated + 928) actions];
  v6 = actions;
  if (*(animated + 1112))
  {
    v7 = 1;
  }

  else if (actions)
  {
    v7 = [actions count] != 0;
  }

  else
  {
    v7 = 0;
  }

  *(animated + 980) = v7;
  v8 = MEMORY[0x1E69DDC38];
  if (!*(animated + 1056))
  {
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], 32770, 0);
    v10 = *(animated + 1056);
    *(animated + 1056) = v9;
  }

  isDynamic = [(PKPassTileView *)animated _isDynamicHeight];
  v12 = *(animated + 1104);
  v13 = *(animated + 784);
  if (isDynamic)
  {
    [v13 setNumberOfLines:3];
    v14 = *MEMORY[0x1E69DDD80];
    v15 = *v8;
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v15, 32770, 0, *MEMORY[0x1E69DB980]);
    v17 = *(animated + 1008);
    *(animated + 1008) = v16;

    if (v12 == 1)
    {
      v18 = *MEMORY[0x1E69DDD10];
    }

    else
    {
      v18 = v14;
    }

    if (v12 == 1)
    {
      v19 = 16.0;
    }

    else
    {
      v19 = 34.0;
    }

    v20 = PKFontForDefaultDesign(v18, v15, 0x8000, 0);
    v21 = *(animated + 1016);
    *(animated + 1016) = v20;

    v22 = [*(animated + 1008) fontWithSize:{PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC20], v19)}];
    v23 = *(animated + 1024);
    *(animated + 1024) = v22;
  }

  else
  {
    [v13 setNumberOfLines:1];
    v24 = *MEMORY[0x1E69DB8D8];
    v25 = *v8;
    if (*(animated + 979) == 1)
    {
      v26 = PKFontForDesign(v24, *MEMORY[0x1E69DDDC8], *v8, 4098, 0);
      v27 = MEMORY[0x1E69DDD80];
    }

    else
    {
      v26 = PKFontForDesign(v24, *MEMORY[0x1E69DDDB8], *v8, 32770, 0, *MEMORY[0x1E69DB980]);
      v27 = MEMORY[0x1E69DDCF8];
    }

    v28 = *(animated + 1008);
    *(animated + 1008) = v26;

    v29 = PKFontForDefaultDesign(*v27, v25, 0x8000, 0);
    v30 = *(animated + 1016);
    *(animated + 1016) = v29;

    v31 = *(animated + 1008);
    v23 = *(animated + 1024);
    *(animated + 1024) = v31;
  }

  if ((isDynamic | *(animated + 979)))
  {
    v32 = 37;
  }

  else
  {
    v32 = 38;
  }

  if ((isDynamic | *(animated + 979)))
  {
    v33 = 38;
  }

  else
  {
    v33 = 37;
  }

  objc_storeStrong((animated + 1032), *(animated + OBJC_IVAR___PKPassTileView__snapshots[v32]));
  objc_storeStrong((animated + 1040), *(animated + OBJC_IVAR___PKPassTileView__snapshots[v33]));
  objc_storeStrong((animated + 1048), *(animated + 1016));
  *(animated + 984) = *MEMORY[0x1E695F060];
  [*(animated + 1016) _bodyLeading];
  v314 = a2;
  v311 = v6;
  v312 = metadata;
  if (v12 == 1)
  {
    v36 = 9.0;
    v37 = 10.0;
  }

  else
  {
    v38 = v34.n128_f64[0];
    v34.n128_u64[0] = 0x3FD3333333333333;
    v35.n128_u64[0] = 0x3FC999999999999ALL;
    if ((isDynamic | *(animated + 979)))
    {
      v34.n128_f64[0] = 0.2;
    }

    v34.n128_f64[0] = v38 * v34.n128_f64[0];
    PKFloatRoundToPixel(v34, v35);
    v37 = v39.n128_f64[0] + 10.0;
    if (*(animated + 979) == 1)
    {
      v39.n128_f64[0] = v38 * 0.31;
      PKFloatRoundToPixel(v39, v40);
    }

    v36 = v39.n128_f64[0] + 10.0;
  }

  v41 = *(animated + 979);
  v42 = 0.0;
  v43 = 18.0;
  if (isDynamic)
  {
    v42 = 2.0;
  }

  else
  {
    v43 = 0.0;
  }

  if (v12 == 1)
  {
    v44 = 4.0;
  }

  else
  {
    v44 = v43;
  }

  if (*(animated + 979))
  {
    v45 = 16.0;
  }

  else
  {
    v45 = 13.0;
  }

  v46 = *(animated + 880);
  v337 = *(animated + 864);
  v338 = v46;
  v47 = *(animated + 912);
  v339 = *(animated + 896);
  v340 = v47;
  if (v41)
  {
    v48 = -2.0;
  }

  else
  {
    v48 = v42;
  }

  image = [*(animated + 840) image];
  image2 = [*(animated + 848) image];
  v51 = *(animated + 816) != 0;
  *(animated + 864) = v37;
  *(animated + 872) = v45;
  *(animated + 880) = v36;
  *(animated + 888) = v45;
  *(animated + 896) = v44;
  *(animated + 904) = v45;
  *(animated + 912) = v48;
  *(animated + 920) = v41;
  *(animated + 921) = 0;
  *(animated + 922) = image != 0;
  *(animated + 923) = image2 != 0;
  *(animated + 924) = v51;

  v313 = *(animated + 936);
  v52 = [PKPassTileView_State alloc];
  v53 = *(animated + 1096);
  v54 = *(animated + 928);
  v55 = *(animated + 952);
  v56 = *(animated + 1032);
  v57 = *(animated + 1040);
  v58 = *(animated + 1048);
  v59 = *(animated + 1024);
  v302 = *(animated + 1089);
  v60 = *(animated + 1112);
  v322 = v53;
  v61 = v54;
  v62 = v55;
  v326 = v56;
  v63 = v57;
  v64 = v58;
  v324 = v59;
  if (!v52)
  {
    v66 = 0;
    goto LABEL_102;
  }

  *v331 = v52;
  *&v331[8] = PKPassTileView_State;
  v65 = objc_msgSendSuper2(v331, sel_init);
  v66 = v65;
  if (!v65)
  {
LABEL_102:
    v67 = v322;
    goto LABEL_103;
  }

  objc_storeStrong(v65 + 1, v53);
  v67 = v322;
  metadata2 = [v322 metadata];
  [metadata2 preferredStyle];

  v307 = v61;
  type = [v61 type];
  icon = 0;
  v71 = NAN;
  v306 = v62;
  v308 = v64;
  v303 = v60;
  v72 = v63;
  if (type > 1)
  {
    if (type != 2)
    {
      body2 = 0;
      title2 = 0;
      bodyImage = 0;
      accessory = 0;
      obj = 0;
      v75 = 0;
      v76 = 0;
      if (type != 5)
      {
        goto LABEL_84;
      }

      stateTypeForeignView = [v307 stateTypeForeignView];
      adaptorProvider = [stateTypeForeignView adaptorProvider];
      v75 = adaptorProvider[2]();

      preferredStyle = [stateTypeForeignView preferredStyle];
      icon = 0;
      body2 = 0;
      title2 = 0;
      bodyImage = 0;
      accessory = 0;
      obj = 0;
LABEL_61:
      if ((preferredStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v76 = &stru_1F3BD7330;
      }

      else
      {
        v76 = 0;
      }

LABEL_64:
      v71 = NAN;
      v62 = v306;
      goto LABEL_84;
    }

    stateTypeCheckIn = [v307 stateTypeCheckIn];
    obj = [stateTypeCheckIn secondaryAccessory];
    date = [MEMORY[0x1E695DF00] date];
    availableFrom = [stateTypeCheckIn availableFrom];
    date2 = [availableFrom date];

    [date2 timeIntervalSinceDate:date];
    if (!date2 || v90 <= 0.0)
    {
      title2 = PKLocalizedPaymentString(&cfstr_PassTileChecki.isa);
      body2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_0.isa);
      v111 = MEMORY[0x1E69B8A98];
      v112 = PKLocalizedPaymentString(&cfstr_PassTileChecki_1.isa);
      v113 = v111;
      v114 = v112;
      accessory = [v113 createWithTitle:v112 spinnerEnabled:0];
      v71 = NAN;
LABEL_82:

      icon = 0;
      goto LABEL_83;
    }

    v298 = date;
    availableFrom2 = [stateTypeCheckIn availableFrom];
    timeZone = [availableFrom2 timeZone];

    secondsFromGMT = [timeZone secondsFromGMT];
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    secondsFromGMT2 = [localTimeZone secondsFromGMT];

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v304 = timeZone;
    [currentCalendar setTimeZone:timeZone];
    v95 = [currentCalendar components:30 fromDate:date2];
    v96 = [currentCalendar dateFromComponents:v95];

    v97 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v97 setDay:-1];
    v301 = v96;
    v299 = [currentCalendar dateByAddingComponents:v97 toDate:v96 options:0];
    weekdaySymbols = [currentCalendar weekdaySymbols];
    v99 = [weekdaySymbols count];

    v300 = 0;
    if (v99 >= 2)
    {
      [v97 setDay:-v99];
      v300 = [currentCalendar dateByAddingComponents:v97 toDate:v301 options:0];
    }

    v297 = currentCalendar;
    v317 = PKLocalizedHourOfDate();
    v100 = objc_alloc_init(MEMORY[0x1E696AB78]);
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [v100 setLocale:autoupdatingCurrentLocale];

    [v100 setLocalizedDateFormatFromTemplate:@"j:mm a"];
    [v100 setTimeZone:v304];
    v102 = [v100 stringFromDate:date2];

    date = v298;
    v103 = v300;
    if (secondsFromGMT != secondsFromGMT2)
    {
      goto LABEL_73;
    }

    [v298 timeIntervalSinceDate:v301];
    if (v104 >= 0.0)
    {
      title2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_2.isa);
      body2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_3.isa, &cfstr_Lu_0.isa, v317, v102);
      v115 = date2;
    }

    else
    {
      [v298 timeIntervalSinceDate:v299];
      if (v105 < 0.0)
      {
LABEL_73:
        v106 = v299;
        if (v300 && ([v298 timeIntervalSinceDate:v300], v106 = v300, v107 >= 0.0))
        {
          v116 = objc_alloc_init(MEMORY[0x1E696AB78]);
          autoupdatingCurrentLocale2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
          [v116 setLocale:autoupdatingCurrentLocale2];

          [v116 setLocalizedDateFormatFromTemplate:@"cccc"];
          [v116 setTimeZone:v304];
          v118 = [v116 stringFromDate:date2];
          title2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_6.isa);
          body2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_7.isa, &cfstr_Lu_1.isa, v317, v118, v102);
          v71 = MEMORY[0x1BFB41080](v299);

          v103 = v300;
        }

        else
        {
          v108 = objc_alloc_init(MEMORY[0x1E696AB78]);
          autoupdatingCurrentLocale3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
          [v108 setLocale:autoupdatingCurrentLocale3];

          [v108 setLocalizedDateFormatFromTemplate:@"MMM d"];
          [v108 setTimeZone:v304];
          v110 = [v108 stringFromDate:date2];
          title2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_8.isa);
          body2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_9.isa, &cfstr_Lu_1.isa, v317, v110, v102);
          v71 = MEMORY[0x1BFB41080](v106);

          v103 = v300;
          date = v298;
        }

        goto LABEL_81;
      }

      title2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_4.isa);
      body2 = PKLocalizedPaymentString(&cfstr_PassTileChecki_5.isa, &cfstr_Lu_0.isa, v317, v102);
      v115 = v301;
    }

    v71 = MEMORY[0x1BFB41080](v115);
LABEL_81:

    accessory = 0;
    v114 = v304;
    v62 = v306;
    goto LABEL_82;
  }

  if (type)
  {
    body2 = 0;
    title2 = 0;
    bodyImage = 0;
    accessory = 0;
    obj = 0;
    v75 = 0;
    v76 = 0;
    if (type != 1)
    {
      goto LABEL_84;
    }

    stateTypeDefaultV2 = [v307 stateTypeDefaultV2];
    icon = [v307 icon];
    accessory = [stateTypeDefaultV2 accessory];
    obj = [stateTypeDefaultV2 secondaryAccessory];
    title = [stateTypeDefaultV2 title];
    title2 = [title displayableStringWithPassState:v62 inContext:0];

    body = [stateTypeDefaultV2 body];
    body2 = [body displayableStringWithPassState:v62 inContext:1];

    bodyImage = [stateTypeDefaultV2 bodyImage];
    footer = [stateTypeDefaultV2 footer];
    v81 = v62;
    v82 = footer;
    v76 = [footer displayableStringWithPassState:v81 inContext:2];

    preferredStyle = [stateTypeDefaultV2 preferredStyle];
    v75 = 0;
    if (v76)
    {
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  stateTypeCheckIn = [v307 stateTypeDefault];
  icon = [v307 icon];
  title2 = [stateTypeCheckIn title];
  body2 = [stateTypeCheckIn body];
  accessory = [stateTypeCheckIn accessory];
  obj = [stateTypeCheckIn secondaryAccessory];
  v71 = NAN;
LABEL_83:

  bodyImage = 0;
  v75 = 0;
  v76 = 0;
LABEL_84:
  objc_storeStrong(v66 + 4, icon);
  v119 = PKPassTileImageToUIImage(icon, v324);
  v120 = v66[5];
  v66[5] = v119;

  AttributedString = CreateAttributedString(title2, v326);
  v122 = v66[10];
  v66[10] = AttributedString;

  v123 = CreateAttributedString(body2, v72);
  v124 = v66[11];
  v66[11] = v123;

  objc_storeStrong(v66 + 12, bodyImage);
  v305 = v72;
  v125 = PKPassTileImageToUIImage(bodyImage, v72);
  v126 = v66[13];
  v66[13] = v125;

  v127 = CreateAttributedString(v76, v308);
  v128 = v66[14];
  v66[14] = v127;

  *(v66 + 17) = v71;
  *(v66 + 16) = v66[5] != 0;
  v129 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(v66 + 5)), vceqzq_s64(*(v66 + 13))))), 0x1000100010001);
  *(v66 + 17) = vuzp1_s8(v129, v129).u32[0];
  if (v303 == 2)
  {
    createDefaultDisclosureAccessoryImage = [MEMORY[0x1E69B8AA0] createDefaultDisclosureAccessoryImage];

    accessory = createDefaultDisclosureAccessoryImage;
    v62 = v306;
  }

  if (accessory)
  {
    type2 = [accessory type];
    if (!type2)
    {
      if ((v302 & 1) == 0)
      {
        objc_storeStrong(v66 + 6, accessory);
        *(v66 + 22) = 1;
      }

      goto LABEL_98;
    }

    if (type2 != 2)
    {
      if (type2 == 1)
      {
        objc_storeStrong(v66 + 6, accessory);
        *(v66 + 21) = 1;
      }

      goto LABEL_98;
    }

    objc_storeStrong(v66 + 6, accessory);
    v132 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC38], 2, 0);
    accessoryTypeImage = [accessory accessoryTypeImage];
    image3 = [accessoryTypeImage image];
    v139 = PKPassTileImageToUIImage(image3, v132);
    v140 = v66[7];
    v66[7] = v139;

    v67 = v322;
    *(v66 + 23) = 1;
  }

  else
  {
    if (!obj || [obj type] != 2)
    {
      goto LABEL_98;
    }

    objc_storeStrong(v66 + 8, obj);
    v132 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC38], 0, 0);
    accessoryTypeImage2 = [obj accessoryTypeImage];
    image4 = [accessoryTypeImage2 image];
    v135 = PKPassTileImageToUIImage(image4, v132);
    v136 = v66[9];
    v66[9] = v135;

    v67 = v322;
    *(v66 + 24) = 1;
  }

  v62 = v306;
LABEL_98:
  if (v75)
  {
    objc_storeStrong(v66 + 15, v75);
    view = [v75 view];
    v142 = v66[16];
    v66[16] = view;

    *(v66 + 25) = 1;
  }

  v61 = v307;
  v64 = v308;
  v63 = v305;
LABEL_103:

  v143 = *(animated + 936);
  *(animated + 936) = v66;

  v144 = *(animated + 968);
  if (v144)
  {
    dispatch_source_cancel(v144);
    v145 = *(animated + 968);
    *(animated + 968) = 0;
  }

  v146 = *(animated + 936);
  v147 = v314;
  if (v146)
  {
    v148 = *(v146 + 136);
  }

  else
  {
    v148 = 0.0;
  }

  v149 = fmax(v148 - CFAbsoluteTimeGetCurrent(), 1.0);
  v150 = MEMORY[0x1E69E96A0];
  v151 = MEMORY[0x1E69E96A0];
  v152 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v150);
  v153 = *(animated + 968);
  *(animated + 968) = v152;

  v154 = *(animated + 968);
  v155 = dispatch_walltime(0, (v149 * 1000000000.0));
  dispatch_source_set_timer(v154, v155, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(v331, animated);
  v156 = *(animated + 968);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __42__PKPassTileView__updateSubviewsAnimated___block_invoke;
  handler[3] = &unk_1E8010998;
  objc_copyWeak(&v336, v331);
  dispatch_source_set_event_handler(v156, handler);
  dispatch_resume(*(animated + 968));
  objc_destroyWeak(&v336);
  objc_destroyWeak(v331);
  v157 = *(animated + 936);
  v158 = v313;
  v159 = v157;
  v160 = objc_opt_self();
  if (v158 == v159)
  {
    v161 = 2;
  }

  else if ((v158 == 0) != (v159 == 0))
  {
    v161 = 0;
  }

  else
  {
    v161 = [(PKPassTileView_State *)v160 visuallyCompareTile:v159[1] toTile:?];
  }

  v162 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
  v163 = *(animated + 936);
  if (v163)
  {
    v163 = v163[4];
  }

  v164 = v163;
  v165 = *(animated + 936);
  if (v165)
  {
    v165 = v165[10];
  }

  v166 = v165;
  v167 = *(animated + 936);
  if (v167)
  {
    v167 = v167[11];
  }

  v168 = v167;
  v169 = *(animated + 936);
  if (v169)
  {
    v169 = v169[12];
  }

  v323 = v169;
  v170 = *(animated + 936);
  if (v170)
  {
    v170 = v170[14];
  }

  v318 = v170;
  v171 = *(animated + 936);
  if (v171)
  {
    v171 = v171[6];
  }

  v327 = v171;
  v172 = *(animated + 936);
  if (v172)
  {
    v172 = v172[8];
  }

  v321 = v172;
  v173 = *(animated + 936);
  if (v173)
  {
    v173 = v173[15];
  }

  v325 = v173;
  v333 = *(animated + 752);
  v334 = *(animated + 768);
  if (v314)
  {
    if (!v158)
    {
      v178 = 0.0;
      if (!v161)
      {
        v147 = v314;
        goto LABEL_178;
      }

      v201 = 0;
      v147 = v314;
LABEL_168:
      v202 = v201;
      LOBYTE(v161) = PKEqualObjects();

      if (v158)
      {
LABEL_169:
        if (*(v158 + 21) == 1 && (v161 & 1) == 0)
        {
          *v331 = v337;
          *&v331[16] = v338;
          v203 = v340;
          *&v331[32] = v339;
          *(animated + 765) = 1;
          v204 = *(animated + 824);
          v332 = v203;
          v178 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v204 type:2 state:v331], v178);
        }

        if (!(v161 & 1 | ((*(v158 + 22) & 1) == 0)))
        {
          *v331 = v337;
          *&v331[16] = v338;
          v205 = v340;
          *&v331[32] = v339;
          *(animated + 766) = 1;
          v206 = *(animated + 832);
          v332 = v205;
          v178 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v206 type:3 state:v331], v178);
        }

        if (!(v161 & 1 | ((*(v158 + 23) & 1) == 0)))
        {
          *v331 = v337;
          *&v331[16] = v338;
          v207 = v340;
          *&v331[32] = v339;
          *(animated + 767) = 1;
          v208 = *(animated + 840);
          v332 = v207;
          v178 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v208 type:4 state:v331], v178);
        }

        if (!(v161 & 1 | ((v158[3] & 1) == 0)))
        {
          *v331 = v337;
          *&v331[16] = v338;
          v209 = v340;
          *&v331[32] = v339;
          *(animated + 768) = 1;
          v210 = *(animated + 848);
          v332 = v209;
          v178 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v210 type:4 state:v331], v178);
        }
      }

LABEL_178:
      *(animated + 752) = fmax(*(animated + 752), v178 * 0.65);
      goto LABEL_179;
    }

    v174 = *(v158 + 16);
    if (v174 == 1 && v161)
    {
      v175 = v158[4];
      v176 = v164;
      v177 = PKEqualObjects();

      v178 = 0.0;
      if ((v177 & 1) == 0)
      {
        goto LABEL_135;
      }
    }

    else
    {
      v176 = v164;
      v178 = 0.0;
      if (v174)
      {
LABEL_135:
        *(animated + 760) = 1;
        v179 = *(animated + 776);
        *v331 = v337;
        *&v331[16] = v338;
        *&v331[32] = v339;
        v332 = v340;
        v178 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v179 type:0 state:v331], 0.0);
      }
    }

    v180 = *(v158 + 17);
    if (v180 == 1 && v161)
    {
      v181 = v158[10];
      v182 = PKEqualObjects();

      if (v182)
      {
        goto LABEL_142;
      }
    }

    else if ((v180 & 1) == 0)
    {
LABEL_142:
      v184 = *(v158 + 18);
      if (v184 == 1 && v161 > 1)
      {
        v185 = v158[11];
        v186 = PKEqualObjects();

        if (v186)
        {
          goto LABEL_148;
        }
      }

      else if ((v184 & 1) == 0)
      {
LABEL_148:
        v188 = *(v158 + 19);
        if (v188 == 1 && v161)
        {
          v189 = v158[12];
          v190 = PKEqualObjects();

          if (v190)
          {
            goto LABEL_154;
          }
        }

        else if ((v188 & 1) == 0)
        {
LABEL_154:
          v193 = *(v158 + 20);
          if (v193 == 1 && v161)
          {
            v194 = v158[14];
            v195 = PKEqualObjects();

            if (v195)
            {
              goto LABEL_160;
            }
          }

          else if ((v193 & 1) == 0)
          {
LABEL_160:
            v197 = *(v158 + 25);
            if (v197 == 1 && v161)
            {
              v198 = *(animated + 816);
              v199 = v158[15];
              LOBYTE(v198) = [v325 isViewEqualToOther:v198 withAdaptor:v199];

              v164 = v176;
              if (v198)
              {
                v162 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
LABEL_167:
                v201 = v158[6];
                goto LABEL_168;
              }
            }

            else
            {
              v164 = v176;
              if ((v197 & 1) == 0)
              {
                goto LABEL_166;
              }
            }

            *(animated + 769) = 1;
            v200 = *(animated + 816);
            *v331 = v337;
            *&v331[16] = v338;
            *&v331[32] = v339;
            v332 = v340;
            v178 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v200 type:5 state:v331], v178);
LABEL_166:
            v162 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
            if (!v161)
            {
              goto LABEL_169;
            }

            goto LABEL_167;
          }

          *(animated + 764) = 1;
          v196 = *(animated + 808);
          *v331 = v337;
          *&v331[16] = v338;
          *&v331[32] = v339;
          v332 = v340;
          v178 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v196 type:1 state:v331], v178);
          goto LABEL_160;
        }

        *v331 = v337;
        *&v331[16] = v338;
        v191 = v340;
        *&v331[32] = v339;
        *(animated + 760) = 1;
        v192 = *(animated + 800);
        v332 = v191;
        v178 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v192 type:5 state:v331], v178);
        goto LABEL_154;
      }

      *(animated + 762) = 1;
      v187 = *(animated + 792);
      *v331 = v337;
      *&v331[16] = v338;
      *&v331[32] = v339;
      v332 = v340;
      v178 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v187 type:1 state:v331], v178);
      goto LABEL_148;
    }

    *(animated + 761) = 1;
    v183 = *(animated + 784);
    *v331 = v337;
    *&v331[16] = v338;
    *&v331[32] = v339;
    v332 = v340;
    v178 = fmax([(PKPassTileView *)animated _prepareViewForReuse:v183 type:1 state:v331], v178);
    goto LABEL_142;
  }

LABEL_179:
  v211 = *(animated + 928);
  if (v211)
  {
    isEnabled = [v211 isEnabled];
  }

  else
  {
    isEnabled = 1;
  }

  *(animated + 976) = isEnabled;
  v213 = *(animated + 928);
  if (v213)
  {
    LOBYTE(v213) = [v213 isSelected];
  }

  *(animated + 977) = v213;
  [animated setEnabled:*(animated + 976)];
  [animated setSelected:*(animated + 977)];
  v214 = *(animated + 776);
  v215 = *(animated + 936);
  if (v215)
  {
    v215 = v215[5];
  }

  v216 = v215;
  [v214 setImage:v216];

  v217 = *(animated + 784);
  if (v217)
  {
    [v217 setAttributedText:v166];
  }

  v218 = *(animated + 792);
  if (v218)
  {
    [v218 setAttributedText:v168];
  }

  v219 = *(animated + 808);
  if (v219)
  {
    [v219 setAttributedText:v318];
  }

  if (v323 && (v220 = *(animated + v162[304])) != 0 && *(v220 + 19) == 1)
  {
    v221 = *(animated + 800);
    if (v221 || (v222 = objc_alloc_init(MEMORY[0x1E69DCAE0]), v223 = *(animated + 800), *(animated + 800) = v222, v223, *(animated + 763) = 1, [*(animated + 800) setAlpha:0.0], objc_msgSend(*(animated + 744), "addSubview:", *(animated + 800)), v221 = *(animated + 800), (v220 = *(animated + 936)) != 0))
    {
      v220 = *(v220 + 104);
    }

    v224 = v220;
    [v221 setImage:v224];
  }

  else
  {
    v225 = *(animated + 800);
    if (v225)
    {
      [v225 setImage:0];
    }
  }

  if (!v325 || (v226 = *(animated + v162[304])) == 0 || *(v226 + 25) != 1)
  {
    v236 = *(animated + 816);
    if (!v236)
    {
      goto LABEL_211;
    }

    [v236 removeFromSuperview];
    v237 = *(animated + 816);
    *(animated + 816) = 0;

    v235 = *(animated + 744);
    isUserInteractionEnabled = 0;
    goto LABEL_210;
  }

  v227 = *(animated + 816);
  if (v158)
  {
    v228 = v158[15];
  }

  else
  {
    v228 = 0;
  }

  v229 = v228;
  v230 = [v325 isViewEqualToOther:v227 withAdaptor:v229];

  if ((v230 & 1) == 0)
  {
    [*(animated + 816) removeFromSuperview];
    view2 = [v325 view];
    v232 = *(animated + 816);
    *(animated + 816) = view2;

    *(animated + 1064) = [v325 viewPreferredSizing];
    *(animated + 769) = 1;
    [*(animated + 816) setAlpha:0.0];
    [*(animated + 744) addSubview:*(animated + 816)];
    v233 = *(animated + 744);
    isUserInteractionEnabled = [*(animated + 816) isUserInteractionEnabled];
    v235 = v233;
LABEL_210:
    [v235 setHitTestEnabled:isUserInteractionEnabled];
  }

LABEL_211:
  type3 = [*(animated + 928) type];
  v239 = *(animated + 856);
  v240 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
  if (type3 == 6)
  {
    if (!v239)
    {
      WeakRetained = objc_loadWeakRetained((animated + 1128));
      v242 = objc_opt_respondsToSelector();

      if (v242)
      {
        v243 = objc_loadWeakRetained((animated + 1128));
        paymentOfferSelectorCustomViewProvider = [v243 paymentOfferSelectorCustomViewProvider];

        v245 = [paymentOfferSelectorCustomViewProvider rewardsRedemptionTransactionSourceCollectionForPassTileView:animated];
        [paymentOfferSelectorCustomViewProvider paymentOffersControllerForPassTileView:animated];
        v246 = obja = v164;
        paymentPass = [*(animated + 944) paymentPass];
        v330[0] = MEMORY[0x1E69E9820];
        v330[1] = 3221225472;
        v330[2] = __42__PKPassTileView__updateSubviewsAnimated___block_invoke_3;
        v330[3] = &unk_1E8012720;
        v330[4] = animated;
        v147 = v314;
        v248 = [PKPaymentOfferSelectionView createWithPaymentPass:paymentPass transactionSourceCollection:v245 paymentOffersController:v246 beginSuppressCardEmulation:v330];
        v249 = *(animated + 856);
        *(animated + 856) = v248;

        v240 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
        [*(animated + 744) addSubview:*(animated + 856)];
        [*(animated + 744) setHitTestEnabled:1];

        v164 = obja;
      }
    }
  }

  else if (v239)
  {
    [v239 removeFromSuperview];
    v250 = *(animated + 856);
    *(animated + 856) = 0;

    v240 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
    [*(animated + 744) setHitTestEnabled:0];
  }

  if (v327 && (v251 = *(animated + v240[304])) != 0 && *(v251 + 21) == 1)
  {
    if (!*(animated + 824))
    {
      v252 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v253 = *(animated + 824);
      *(animated + 824) = v252;

      *(animated + 765) = 1;
      [*(animated + 824) setAlpha:0.0];
      [*(animated + 744) addSubview:*(animated + 824)];
    }

    accessoryTypeSpinner = [v327 accessoryTypeSpinner];
    isSpinnerEnabled = [accessoryTypeSpinner isSpinnerEnabled];

    v240 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
    if (isSpinnerEnabled != [*(animated + 824) isAnimating])
    {
      v256 = *(animated + 824);
      if (isSpinnerEnabled)
      {
        [v256 startAnimating];
      }

      else
      {
        [v256 stopAnimating];
      }
    }
  }

  else
  {
    v257 = *(animated + 824);
    if (v257)
    {
      [v257 stopAnimating];
    }

    if (!v327)
    {
      goto LABEL_233;
    }
  }

  v258 = *(animated + v240[304]);
  if (v258 && *(v258 + 22) == 1)
  {
    v315 = v168;
    v259 = v166;
    v260 = v147;
    v261 = v164;
    v262 = *(animated + 832);
    if (!v262)
    {
      v263 = [PKContinuousButton alloc];
      *v331 = 0;
      *&v331[8] = vdupq_n_s64(2uLL);
      *&v331[24] = *&v331[8];
      v264 = [(PKContinuousButton *)v263 initWithConfiguration:v331];
      v265 = *(animated + 832);
      *(animated + 832) = v264;

      [*(animated + 832) setContentEdgeInsets:{12.0, 16.0, 12.0, 16.0}];
      v266 = *(animated + 832);
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [v266 setTintColor:labelColor];

      v268 = *(animated + 832);
      secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [v268 updateTitleColorWithColor:secondarySystemGroupedBackgroundColor];

      *(animated + 766) = 1;
      [*(animated + 832) setAlpha:0.0];
      [*(animated + 744) addSubview:*(animated + 832)];
      v262 = *(animated + 832);
    }

    titleLabel = [v262 titleLabel];
    [titleLabel setFont:*(animated + 1056)];
    accessoryTypeButton = [v327 accessoryTypeButton];
    v272 = *(animated + 832);
    title3 = [accessoryTypeButton title];
    [v272 setTitle:title3 forState:0];

    [*(animated + 832) setShowSpinner:{objc_msgSend(accessoryTypeButton, "isSpinnerEnabled")}];
    v164 = v261;
    v147 = v260;
    v166 = v259;
    v168 = v315;
    v274 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
    goto LABEL_236;
  }

LABEL_233:
  v275 = *(animated + 832);
  if (v275)
  {
    [v275 setTitle:0 forState:0];
    [*(animated + 832) setShowSpinner:0];
  }

  v274 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
  if (!v327)
  {
    goto LABEL_242;
  }

LABEL_236:
  v276 = *(animated + v274[304]);
  if (!v276 || *(v276 + 23) != 1)
  {
LABEL_242:
    v281 = *(animated + 840);
    if (v281)
    {
      [v281 setImage:0];
    }

    goto LABEL_244;
  }

  v277 = *(animated + 840);
  if (v277 || (v278 = objc_alloc_init(MEMORY[0x1E69DCAE0]), v279 = *(animated + 840), *(animated + 840) = v278, v279, *(animated + 767) = 1, [*(animated + 840) setAlpha:0.0], objc_msgSend(*(animated + 744), "addSubview:", *(animated + 840)), v277 = *(animated + 840), (v276 = *(animated + 936)) != 0))
  {
    v276 = *(v276 + 56);
  }

  v280 = v276;
  [v277 setImage:v280];

  v274 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
LABEL_244:
  if (v321 && (v282 = *(animated + v274[304])) != 0 && *(v282 + 24) == 1)
  {
    v283 = *(animated + 848);
    if (v283 || (v284 = objc_alloc_init(MEMORY[0x1E69DCAE0]), v285 = *(animated + 848), *(animated + 848) = v284, v285, *(animated + 768) = 1, [*(animated + 848) setAlpha:0.0], objc_msgSend(*(animated + 744), "addSubview:", *(animated + 848)), v283 = *(animated + 848), (v282 = *(animated + 936)) != 0))
    {
      v282 = *(v282 + 72);
    }

    v287 = v311;
    v286 = v312;
    v288 = v282;
    [v283 setImage:v288];
  }

  else
  {
    v289 = *(animated + 848);
    v287 = v311;
    v286 = v312;
    if (v289)
    {
      [v289 setImage:0];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__PKPassTileView__updateSubviewsAnimated___block_invoke_4;
  aBlock[3] = &unk_1E8012748;
  v329 = v147;
  aBlock[4] = animated;
  v290 = _Block_copy(aBlock);
  v291 = v290;
  v292 = *(animated + 936);
  if (v292)
  {
    LOBYTE(v292) = *(v292 + 17);
  }

  (*(v290 + 2))(v290, *(animated + 784), v292 & 1, *(animated + 761));
  v293 = *(animated + 936);
  if (v293)
  {
    LOBYTE(v293) = *(v293 + 18);
  }

  v291[2](v291, *(animated + 792), v293 & 1, *(animated + 762));
  v294 = *(animated + 936);
  if (v294)
  {
    LOBYTE(v294) = *(v294 + 20);
  }

  v291[2](v291, *(animated + 808), v294 & 1, *(animated + 764));
  v295 = *(animated + 936);
  if (v295)
  {
    LOBYTE(v295) = *(v295 + 25);
  }

  v291[2](v291, *(animated + 816), v295 & 1, *(animated + 769));
  [(PKPassTileView *)animated _updateStyleAnimated:v147];
  [(PKPassTileView *)animated _updateBackgroundAnimated:v147];
  [animated setNeedsLayout];
  [animated layoutIfNeeded];
  *(animated + 752) = v333;
  *(animated + 768) = v334;
}

- (void)dealloc
{
  effectiveContentTimeout = self->_effectiveContentTimeout;
  if (effectiveContentTimeout)
  {
    dispatch_source_cancel(effectiveContentTimeout);
  }

  actionStateTimeout = self->_actionStateTimeout;
  if (actionStateTimeout)
  {
    dispatch_source_cancel(actionStateTimeout);
  }

  v5.receiver = self;
  v5.super_class = PKPassTileView;
  [(PKPassTileView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKPassTileView;
  [(PKPassTileView *)&v7 layoutSubviews];
  [(PKPassTileView *)self bounds];
  [(PKPassTileView *)self _layoutWithBounds:v3 applyLayout:v4, v5, v6];
}

- (double)_layoutWithBounds:(double)bounds applyLayout:(double)layout
{
  v349 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0.0;
  }

  _shouldReverseLayoutDirection = [self _shouldReverseLayoutDirection];
  isFullBleed = [*(self + 928) isFullBleed];
  isDynamic = [(PKPassTileView *)self _isDynamicHeight];
  v13 = *(self + 1104);
  if (_shouldReverseLayoutDirection)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0x200000000;
  }

  [*(self + 776) alpha];
  v16 = v15;
  v18 = *(self + 864);
  v17 = *(self + 872);
  v19 = v17 + *(self + 888);
  v308 = a5;
  v20 = a6 - (v18 + *(self + 880));
  v21 = *MEMORY[0x1E695EFF8];
  v22 = *(MEMORY[0x1E695EFF8] + 8);
  v336 = 0;
  v337 = &v336;
  v338 = 0x4010000000;
  v339 = &unk_1BE347799;
  v330 = 0;
  v331 = &v330;
  v332 = 0x4010000000;
  v333 = &unk_1BE347799;
  v334 = 0u;
  v335 = 0u;
  v313 = v22;
  v314 = v21;
  v340 = v21;
  v341 = v22;
  v315 = v20;
  v316 = a5 - v19;
  v342 = a5 - v19;
  v343 = v20;
  if (v13 == 1)
  {
    v23 = 24.0;
  }

  else
  {
    v23 = 28.0;
  }

  if (v13 != 1 && isDynamic)
  {
    v23 = PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC20], 34.0);
  }

  v302 = a6;
  v320 = v17;
  if (v16 <= 0.0)
  {
    v28 = v331;
    v29 = *MEMORY[0x1E695F058];
    v30 = *(MEMORY[0x1E695F058] + 16);
    v331[1].origin = *MEMORY[0x1E695F058];
    v28[3] = v30;
    slice.origin = v29;
    slice.size = v30;
    v31 = 0.0;
    height = v315;
    width = v316;
    x = v314;
    y = v313;
  }

  else
  {
    if (isDynamic)
    {
      v24 = CGRectMinYEdge;
    }

    else
    {
      v24 = v14;
    }

    CGRectDivide(v337[1], v331 + 1, v337 + 1, v23, v24);
    v25 = v331;
    size = v331[1].size;
    slice.origin = v331[1].origin;
    slice.size = size;
    if (isDynamic)
    {
      v27 = *(self + 896);
      if (v13 != 1)
      {
        CGRectDivide(v331[1], &slice, v331 + 1, v23, v14);
        v25 = v331;
      }

      CGRectDivide(v337[1], v25 + 1, v337 + 1, *(self + 896), CGRectMinYEdge);
      v31 = v23 + v27;
    }

    else
    {
      v31 = 0.0;
      CGRectDivide(v337[1], v331 + 1, v337 + 1, *(self + 904), v14);
    }

    x = v337[1].origin.x;
    y = v337[1].origin.y;
    width = v337[1].size.width;
    height = v337[1].size.height;
  }

  r1 = v16;
  v34 = *(self + 984) == width && *(self + 992) == height;
  selfCopy = self;
  if (v34)
  {
    [*(self + 784) frame];
    v301 = v37;
    v311 = v38;
    [*(self + 792) frame];
    v281 = v39;
    v283 = v40;
    [*(self + 800) frame];
    v280 = v41;
    v282 = v42;
    [*(self + 808) frame];
    v300 = v43;
    v45 = v44;
    [*(self + 816) frame];
    v298 = v46;
    v309 = v47;
    [*(self + 824) frame];
    v292 = v49;
    v295 = v48;
    [*(self + 832) frame];
    v290 = v50;
    v291 = v51;
    [*(self + 840) frame];
    v286 = v53;
    v288 = v52;
    [*(self + 848) frame];
    v284 = v54;
    v56 = v55;
    [*(self + 856) frame];
    v299 = v57;
  }

  else
  {
    *(self + 984) = width;
    *(self + 992) = height;
    text = [*(self + 784) text];
    if (text)
    {
      if (isDynamic)
      {
        [*(self + 784) pkui_sizeThatFits:1 forceWordWrap:{*(self + 984), *(self + 992)}];
        v311 = v36;
      }

      else
      {
        [*(self + 1032) _bodyLeading];
        v311 = v58;
      }

      v301 = width;
    }

    else
    {
      v301 = *MEMORY[0x1E695F060];
      v311 = *(MEMORY[0x1E695F060] + 8);
    }

    [*(self + 1040) _bodyLeading];
    v283 = v59;
    image = [*(self + 800) image];
    v61 = image;
    if (isFullBleed)
    {
      boundsCopy = bounds;
    }

    else
    {
      boundsCopy = x;
    }

    if (isFullBleed)
    {
      layoutCopy = layout;
    }

    else
    {
      layoutCopy = y;
    }

    if (isFullBleed)
    {
      v64 = v308;
    }

    else
    {
      v64 = width;
    }

    if (isFullBleed)
    {
      v65 = v302;
    }

    else
    {
      v65 = height;
    }

    if (image)
    {
      v347 = 0;
      v345 = 0u;
      v346 = 0u;
      v344 = 0u;
      objc_msgSend_pkui_alignmentSizeThatFits_maximumScale_(image, v64, v65, 1.0);
      v66.n128_f64[0] = boundsCopy + (v64 - *&v344) * 0.5 + *(&v345 + 1);
      v67.n128_f64[0] = *&v345 + layoutCopy + (v65 - *(&v344 + 1)) * 0.5;
      v68.n128_f64[0] = *&v344 - (*(&v345 + 1) + *(&v346 + 1));
      v69.n128_f64[0] = *&v345 + *&v346;
      v70.n128_f64[0] = *(&v344 + 1) - (*&v345 + *&v346);
      PKRectRoundToPixel(v66, v67, v68, v70, v69);
      v280 = v71;
      v282 = v72;
    }

    else
    {
      v280 = *(MEMORY[0x1E695F058] + 16);
      v282 = *(MEMORY[0x1E695F058] + 24);
    }

    text2 = [*(self + 808) text];
    if (text2)
    {
      [*(self + 1048) _bodyLeading];
      v45 = v74;
      v300 = width;
    }

    else
    {
      v45 = *(MEMORY[0x1E695F060] + 8);
      v300 = *MEMORY[0x1E695F060];
    }

    v77 = *(self + 1064);
    if (v77)
    {
      v309 = 0.0;
      v298 = 0.0;
      if (v77 == 1)
      {
        [*(self + 816) sizeThatFits:{width, 1.79769313e308}];
        v298 = v78;
        v309 = v79;
      }
    }

    else
    {
      LODWORD(v75) = 1148846080;
      LODWORD(v76) = 1112014848;
      [*(self + 816) systemLayoutSizeFittingSize:width withHorizontalFittingPriority:*(MEMORY[0x1E69DE098] + 8) verticalFittingPriority:{v75, v76}];
      v298 = v80;
      v309 = v81;
    }

    [*(self + 824) intrinsicContentSize];
    v292 = v83;
    v295 = v82;
    [*(self + 832) sizeThatFits:{width, height}];
    v290 = v84;
    v291 = v85;
    image2 = [*(self + 840) image];
    v87 = image2;
    if (image2)
    {
      v347 = 0;
      v345 = 0u;
      v346 = 0u;
      v344 = 0u;
      objc_msgSend_pkui_alignmentSizeThatFits_maximumScale_(image2, width, height, 1.0);
      v88.n128_f64[0] = x + (width - *&v344) * 0.5 + *(&v345 + 1);
      v89.n128_f64[0] = *&v345 + y + (height - *(&v344 + 1)) * 0.5;
      v90.n128_f64[0] = *&v344 - (*(&v345 + 1) + *(&v346 + 1));
      v91.n128_f64[0] = *&v345 + *&v346;
      v92.n128_f64[0] = *(&v344 + 1) - (*&v345 + *&v346);
      PKRectRoundToPixel(v88, v89, v90, v92, v91);
      v286 = v94;
      v288 = v93;
    }

    else
    {
      v286 = *(MEMORY[0x1E695F058] + 24);
      v288 = *(MEMORY[0x1E695F058] + 16);
    }

    image3 = [*(self + 848) image];
    v96 = image3;
    if (image3)
    {
      v347 = 0;
      v345 = 0u;
      v346 = 0u;
      v344 = 0u;
      objc_msgSend_pkui_alignmentSizeThatFits_maximumScale_(image3, width, height, 1.0);
      v97.n128_f64[0] = x + (width - *&v344) * 0.5 + *(&v345 + 1);
      v98.n128_f64[0] = *&v345 + y + (height - *(&v344 + 1)) * 0.5;
      v99.n128_f64[0] = *&v344 - (*(&v345 + 1) + *(&v346 + 1));
      v100.n128_f64[0] = *&v345 + *&v346;
      v101.n128_f64[0] = *(&v344 + 1) - (*&v345 + *&v346);
      PKRectRoundToPixel(v97, v98, v99, v101, v100);
      v284 = v102;
      v56 = v103;
    }

    else
    {
      v56 = *(MEMORY[0x1E695F058] + 16);
      v284 = *(MEMORY[0x1E695F058] + 24);
    }

    [*(self + 856) sizeThatFits:{width, 1.79769313e308}];
    v299 = v104;
    v281 = width;
  }

  image4 = [*(self + 800) image];

  text3 = [*(self + 792) text];

  v108 = v309;
  if (!*(self + 816))
  {
    v108 = v299;
    if (!*(self + 856))
    {
      v108 = 0.0;
      if (image4 | text3)
      {
        v109 = 0.0;
        if (text3)
        {
          v109 = v283;
        }

        if (image4)
        {
          v108 = v282;
        }

        else
        {
          v108 = v109;
        }

        v107 = v311;
        if (v311 > 0.0)
        {
          v107 = *(self + 912);
          v108 = v108 + v107;
        }
      }
    }
  }

  text4 = [*(self + 808) text];
  if (text4)
  {
    v111 = v45 + *(self + 912);
  }

  else
  {
    v111 = 0.0;
  }

  v113.n128_f64[0] = v31 + v311 + v108 + v111;
  if ((isFullBleed & 1) == 0)
  {
    v112.n128_u64[0] = *(self + 880);
    v113.n128_f64[0] = v113.n128_f64[0] + *(self + 864) + v112.n128_f64[0];
  }

  PKFloatCeilToPixel(v113, v112);
  if (a2)
  {
    [*(self + 744) setFrame:{bounds + v320, layout + v18, v316, v315}];
    image5 = [*(self + 776) image];
    v115 = slice.origin.x;
    v116 = slice.origin.y;
    v117 = slice.size.width;
    v118 = slice.size.height;
    v119 = image5;
    if (image5)
    {
      v347 = 0;
      v345 = 0u;
      v346 = 0u;
      v344 = 0u;
      objc_msgSend_pkui_alignmentSizeThatFits_maximumScale_(image5, slice.size.width, slice.size.height, 1.0);
      v120.n128_f64[0] = v115 + (v117 - *&v344) * 0.5 + *(&v345 + 1);
      v121.n128_f64[0] = *&v345 + v116 + (v118 - *(&v344 + 1)) * 0.5;
      v122.n128_f64[0] = *&v344 - (*(&v345 + 1) + *(&v346 + 1));
      v123.n128_f64[0] = *&v345 + *&v346;
      v124.n128_f64[0] = *(&v344 + 1) - (*&v345 + *&v346);
      PKRectRoundToPixel(v120, v121, v122, v124, v123);
      v125.n128_u64[0] = *&slice.origin.x;
      v126.n128_u64[0] = *&slice.size.width;
      v127.n128_u64[0] = *&slice.size.height;
      v129.n128_u64[0] = v128;
      v131.n128_u64[0] = v130;
      v132.n128_u64[0] = *&slice.origin.x;
      v133.n128_u64[0] = *&slice.origin.y;
      PKSizeAlignedInRect(0x100000001, v129, v131, v132, v133, v126, v127, v125);
      v115 = v134;
      v116 = v135;
      v117 = v136;
      v118 = v137;
    }

    v279 = v45;
    if (r1 > 0.0)
    {
      v138 = *(selfCopy + 1072);
    }

    else
    {
      v138 = 0;
    }

    [*(selfCopy + 776) pkui_setFrame:v138 animated:{v115, v116, v117, v118}];
    [*(selfCopy + 824) sizeToFit];
    v139.n128_f64[0] = width * 0.5;
    PKFloatRoundToPixel(v139, v140);
    v278 = v141.n128_f64[0];
    v149 = *MEMORY[0x1E695F050];
    v148 = *(MEMORY[0x1E695F050] + 8);
    v150 = *(MEMORY[0x1E695F050] + 24);
    r1a = *(MEMORY[0x1E695F050] + 16);
    v151 = v119;
    v321 = HIDWORD(v14);
    if (*(selfCopy + 848))
    {
      v141.n128_u64[0] = v56;
      v152 = *(MEMORY[0x1E695F050] + 8);
      v142.n128_u64[0] = v284;
      v143.n128_f64[0] = x;
      v144.n128_f64[0] = y;
      v145.n128_f64[0] = width;
      v146.n128_f64[0] = height;
      PKSizeAlignedInRect(HIDWORD(v14), v141, v142, v143, v144, v145, v146, v147);
      v285 = v153;
      r2 = v154;
      v156 = v155;
      v158 = v157;
      [*(selfCopy + 848) alpha];
      v160 = v159;
      if (v159 > 0.0)
      {
        v161 = *(selfCopy + 1072);
      }

      else
      {
        v161 = 0;
      }

      [*(selfCopy + 848) pkui_setFrame:v161 animated:{v285, v156, v158, r2}];
      if (v160 <= 0.0)
      {
        v148 = v152;
      }

      else
      {
        v350.origin.x = v149;
        v350.origin.y = v152;
        v350.size.width = r1a;
        v350.size.height = v150;
        v358.origin.x = v285;
        v358.origin.y = v156;
        v358.size.width = v158;
        v358.size.height = r2;
        *v141.n128_u64 = CGRectUnion(v350, v358);
        r1a = v143.n128_f64[0];
        v149 = v141.n128_f64[0];
        v148 = v142.n128_f64[0];
        v150 = v144.n128_f64[0];
      }
    }

    if (*(selfCopy + 840))
    {
      v162 = v148;
      v142.n128_u64[0] = v286;
      v141.n128_u64[0] = v288;
      v143.n128_f64[0] = x;
      v144.n128_f64[0] = y;
      v145.n128_f64[0] = width;
      v146.n128_f64[0] = height;
      PKSizeAlignedInRect(v321 | 0x100000000, v141, v142, v143, v144, v145, v146, v147);
      v287 = v164;
      v289 = v163;
      v166 = v165;
      v168 = v167;
      [*(selfCopy + 840) alpha];
      v170 = v169;
      if (v169 > 0.0)
      {
        v171 = *(selfCopy + 1072);
      }

      else
      {
        v171 = 0;
      }

      [*(selfCopy + 840) pkui_setFrame:v171 animated:{v289, v166, v168, v287}];
      if (v170 <= 0.0)
      {
        v148 = v162;
      }

      else
      {
        v351.origin.x = v149;
        v351.origin.y = v162;
        v351.size.width = r1a;
        v351.size.height = v150;
        v359.size.height = v287;
        v359.origin.x = v289;
        v359.origin.y = v166;
        v359.size.width = v168;
        *v141.n128_u64 = CGRectUnion(v351, v359);
        r1a = v143.n128_f64[0];
        v149 = v141.n128_f64[0];
        v148 = v142.n128_f64[0];
        v150 = v144.n128_f64[0];
      }
    }

    if (*(selfCopy + 824))
    {
      if (*(selfCopy + 920))
      {
        v352.origin.x = x;
        v352.origin.y = y;
        v352.size.width = width;
        v352.size.height = height;
        *v141.n128_u64 = CGRectInset(v352, -4.0, -2.0);
        v147.n128_u64[0] = v141.n128_u64[0];
        v172 = v142.n128_u64[0];
        v145.n128_u64[0] = v143.n128_u64[0];
        v146.n128_u64[0] = v144.n128_u64[0];
        v173 = 0;
      }

      else
      {
        v173 = 0x100000000;
        v147.n128_f64[0] = x;
        v172 = *&y;
        v145.n128_f64[0] = width;
        v146.n128_f64[0] = height;
      }

      v142.n128_u64[0] = v292;
      v141.n128_u64[0] = v295;
      v143.n128_u64[0] = v147.n128_u64[0];
      v144.n128_u64[0] = v172;
      PKSizeAlignedInRect(v173 | v321, v141, v142, v143, v144, v145, v146, v147);
      v293 = v175;
      v296 = v174;
      v177 = v176;
      v179 = v178;
      v180 = v148;
      [*(selfCopy + 824) alpha];
      v182 = v181;
      if (v181 > 0.0)
      {
        v183 = *(selfCopy + 1072);
      }

      else
      {
        v183 = 0;
      }

      [*(selfCopy + 824) pkui_setFrame:v183 animated:{v296, v177, v179, v293}];
      if (v182 <= 0.0)
      {
        v148 = v180;
      }

      else
      {
        v353.origin.x = v149;
        v353.origin.y = v180;
        v353.size.width = r1a;
        v353.size.height = v150;
        v360.size.height = v293;
        v360.origin.x = v296;
        v360.origin.y = v177;
        v360.size.width = v179;
        *v141.n128_u64 = CGRectUnion(v353, v360);
        r1a = v143.n128_f64[0];
        v149 = v141.n128_f64[0];
        v148 = v142.n128_f64[0];
        v150 = v144.n128_f64[0];
      }
    }

    if (*(selfCopy + 832))
    {
      v184 = v148;
      v141.n128_f64[0] = fmin(v278, v290);
      v142.n128_u64[0] = v291;
      v143.n128_f64[0] = x;
      v144.n128_f64[0] = y;
      v145.n128_f64[0] = width;
      v146.n128_f64[0] = height;
      PKSizeAlignedInRect(v321 | 0x100000000, v141, v142, v143, v144, v145, v146, v147);
      v294 = v186;
      v297 = v185;
      v188 = v187;
      v190 = v189;
      [*(selfCopy + 832) alpha];
      v192 = v191;
      if (v191 > 0.0)
      {
        v193 = *(selfCopy + 1072);
      }

      else
      {
        v193 = 0;
      }

      [*(selfCopy + 832) pkui_setFrame:v193 animated:{v297, v188, v190, v294}];
      if (v192 <= 0.0)
      {
        v148 = v184;
      }

      else
      {
        v354.origin.x = v149;
        v354.origin.y = v184;
        v354.size.width = r1a;
        v354.size.height = v150;
        v361.size.height = v294;
        v361.origin.x = v297;
        v361.origin.y = v188;
        v361.size.width = v190;
        v355 = CGRectUnion(v354, v361);
        r1a = v355.size.width;
        v149 = v355.origin.x;
        v148 = v355.origin.y;
        v150 = v355.size.height;
      }
    }

    v356.origin.x = v149;
    v356.origin.y = v148;
    v356.size.width = r1a;
    v356.size.height = v150;
    IsNull = CGRectIsNull(v356);
    v195 = v149 + -2.0;
    p_x = &v337->origin.x;
    v337[1].origin.x = x;
    p_x[5] = y;
    v197 = r1a + 2.0;
    if (IsNull)
    {
      v197 = r1a;
    }

    p_x[6] = width;
    p_x[7] = height;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__PKPassTileView__layoutWithBounds_applyLayout___block_invoke;
    aBlock[3] = &unk_1E80126F8;
    aBlock[6] = &v330;
    if ((IsNull | _shouldReverseLayoutDirection))
    {
      v195 = v149;
    }

    v328 = !IsNull;
    *&aBlock[7] = v195;
    *&aBlock[8] = v148;
    *&aBlock[9] = v197;
    *&aBlock[10] = v150;
    aBlock[11] = v14;
    aBlock[4] = selfCopy;
    aBlock[5] = &v336;
    r1b = _Block_copy(aBlock);
    if (v13 == 1)
    {
      v198 = 0x100000001;
    }

    else
    {
      v198 = v14 & 2 | 0x100000000;
    }

    v199 = v311;
    v312 = v198;
    r1b[2](v301, v199);
    if (*(selfCopy + 816))
    {
      if (isFullBleed)
      {
        [*(selfCopy + 816) alpha];
        v203 = v202;
        v204 = *(selfCopy + 744);
        superview = [v204 superview];
        [v204 convertRect:superview fromView:{bounds, layout, v308, v309}];
        v207 = v206;
        v209 = v208;
        v211 = v210;
        v213 = v212;

        [*(selfCopy + 816) pkui_setFrame:*(selfCopy + 1072) & (v203 > 0.0) animated:{v207, v209, v211, v213}];
      }

      else
      {
        r1b[2](v298, v309);
      }

      goto LABEL_133;
    }

    if (*(selfCopy + 856))
    {
      v214 = *(selfCopy + 744);
      superview2 = [v214 superview];
      [v214 convertRect:superview2 fromView:{bounds, layout, v308, v299}];
      v217 = v216;
      v219 = v218;
      v221 = v220;
      v223 = v222;

      [*(selfCopy + 856) pkui_setFrame:*(selfCopy + 1072) animated:{v217, v219, v221, v223}];
LABEL_133:
      (r1b[2])(r1b, *(selfCopy + 808), v312, v300, v279);
      v325 = 0u;
      v326 = 0u;
      v323 = 0u;
      v324 = 0u;
      v238 = *(selfCopy + 1000);
      v239 = [v238 countByEnumeratingWithState:&v323 objects:v348 count:16];
      if (!v239)
      {
        goto LABEL_164;
      }

      v240 = *v324;
      v310 = *MEMORY[0x1E69BB7F8];
      v241 = MEMORY[0x1E69DDCE0];
      rect = width;
      while (1)
      {
        v242 = 0;
        do
        {
          if (*v324 != v240)
          {
            objc_enumerationMutation(v238);
          }

          v243 = height;
          v244 = *(*(&v323 + 1) + 8 * v242);
          if (v244)
          {
            v245 = *(v244 + 112);
            v246 = v241 + 1;
            v247 = v241 + 2;
            v248 = v241 + 3;
            v249 = (v244 + 24);
            v250 = (v244 + 32);
            v251 = (v244 + 40);
            v252 = (v244 + 48);
            v254 = v244 + 8;
            v244 = *(v244 + 8);
            v253 = *(v254 + 8);
            if (v253)
            {
              v249 = v241;
            }

            else
            {
              v248 = v252;
              v247 = v251;
              v246 = v250;
            }

            v255 = *v249;
            v256 = *v246;
            v257 = *v247;
            v258 = *v248;
          }

          else
          {
            v253 = 0;
            v245 = 0;
            v258 = 0.0;
            v257 = 0.0;
            v256 = 0.0;
            v255 = 0.0;
          }

          v259 = v244;
          [v259 frame];
          v266.n128_f64[0] = v256 + v266.n128_f64[0];
          v267 = v255 + v260.n128_f64[0];
          v268 = v261.n128_f64[0] - (v258 + v256);
          v269 = v262.n128_f64[0] - (v257 + v255);
          if (v253 > 2)
          {
            switch(v253)
            {
              case 3:
                v266.n128_f64[0] = v261.n128_f64[0] - (v258 + v256);
                v260.n128_f64[0] = v262.n128_f64[0] - (v257 + v255);
                v261.n128_f64[0] = x;
                v262.n128_f64[0] = y;
                v263.n128_f64[0] = rect;
                v264.n128_f64[0] = v243;
                PKSizeAlignedInRect(v321 | 0x100000000, v266, v260, v261, v262, v263, v264, v265);
                break;
              case 4:
                v266.n128_f64[0] = v261.n128_f64[0] - (v258 + v256);
                v260.n128_f64[0] = v262.n128_f64[0] - (v257 + v255);
                v261.n128_f64[0] = x;
                v262.n128_f64[0] = y;
                v263.n128_f64[0] = rect;
                v264.n128_f64[0] = v243;
                PKSizeAlignedInRect(v321, v266, v260, v261, v262, v263, v264, v265);
                break;
              case 5:
                v266.n128_f64[0] = v261.n128_f64[0] - (v258 + v256);
                v260.n128_f64[0] = v262.n128_f64[0] - (v257 + v255);
                v262.n128_f64[0] = v313;
                v261.n128_f64[0] = v314;
                v264.n128_f64[0] = v315;
                v263.n128_f64[0] = v316;
                PKSizeAlignedInRect(0x100000001, v266, v260, v261, v262, v263, v264, v265);
                break;
              default:
                goto LABEL_160;
            }
          }

          else if (v253)
          {
            if (v253 == 1)
            {
              v266.n128_f64[0] = v261.n128_f64[0] - (v258 + v256);
              v260.n128_f64[0] = v262.n128_f64[0] - (v257 + v255);
              v261.n128_f64[0] = x;
              v262.n128_f64[0] = y;
              v263.n128_f64[0] = rect;
              v264.n128_f64[0] = v243;
              PKSizeAlignedInRect(v312, v266, v260, v261, v262, v263, v264, v265);
              goto LABEL_160;
            }

            if (v253 != 2)
            {
              goto LABEL_160;
            }

            if (v245)
            {
              v357.origin.x = x;
              v357.origin.y = y;
              v357.size.width = rect;
              v357.size.height = v243;
              *v266.n128_u64 = CGRectInset(v357, -4.0, -2.0);
              v263.n128_u64[0] = v266.n128_u64[0];
              v264.n128_u64[0] = v260.n128_u64[0];
              v265.n128_u64[0] = v261.n128_u64[0];
              v270 = v262.n128_u64[0];
              v271 = 0;
            }

            else
            {
              v271 = 0x100000000;
              v263.n128_f64[0] = x;
              v264.n128_f64[0] = y;
              v265.n128_f64[0] = rect;
              v270 = *&v243;
            }

            v266.n128_f64[0] = v268;
            v260.n128_f64[0] = v269;
            v261.n128_u64[0] = v263.n128_u64[0];
            v262.n128_u64[0] = v264.n128_u64[0];
            v263.n128_u64[0] = v265.n128_u64[0];
            v264.n128_u64[0] = v270;
            PKSizeAlignedInRect(v271 | v321, v266, v260, v261, v262, v263, v264, v265);
          }

          else
          {
            v261.n128_u64[0] = *&slice.origin.x;
            v262.n128_u64[0] = *&slice.origin.y;
            v263.n128_u64[0] = *&slice.size.width;
            v264.n128_u64[0] = *&slice.size.height;
            v266.n128_f64[0] = v268;
            v260.n128_f64[0] = v269;
            PKSizeAlignedInRect(v310, v266, v260, v261, v262, v263, v264, v265);
          }

          v267 = v272;
          v268 = v273;
          v269 = v274;
LABEL_160:
          [v259 pkui_setFrame:*(selfCopy + 1072) animated:{v266.n128_f64[0] - v256, v267 - v255, v268 - (-v258 - v256), v269 - (-v257 - v255)}];

          height = v243;
          ++v242;
        }

        while (v239 != v242);
        v151 = v119;
        v275 = [v238 countByEnumeratingWithState:&v323 objects:v348 count:16];
        v239 = v275;
        if (!v275)
        {
LABEL_164:

          goto LABEL_165;
        }
      }
    }

    if (image4)
    {
      v224 = *(selfCopy + 800);
      if (isFullBleed)
      {
        [*(selfCopy + 800) alpha];
        v226 = v225;
        v227 = *(selfCopy + 744);
        superview3 = [v227 superview];
        [v227 convertRect:superview3 fromView:{bounds, layout, v308, v302}];
        v230 = v229;
        v232 = v231;
        v234 = v233;
        v236 = v235;

        [*(selfCopy + 800) pkui_setFrame:*(selfCopy + 1072) & (v226 > 0.0) animated:{v230, v232, v234, v236}];
        goto LABEL_133;
      }

      v237 = 0x100000001;
      v201.n128_f64[0] = v282;
      v200.n128_u64[0] = v280;
    }

    else
    {
      v224 = *(selfCopy + 792);
      v200.n128_f64[0] = v281;
      v237 = v312;
      v201.n128_f64[0] = v283;
    }

    (r1b[2])(r1b, v224, v237, v200, v201);
    goto LABEL_133;
  }

LABEL_165:
  _Block_object_dispose(&v330, 8);
  _Block_object_dispose(&v336, 8);
  return v308;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(PKPassTileView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8] applyLayout:*(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)_isDynamicHeight
{
  stateTypeDefaultV2 = [*(self + 928) stateTypeDefaultV2];
  v2 = stateTypeDefaultV2;
  if (stateTypeDefaultV2)
  {
    v3 = ([stateTypeDefaultV2 preferredStyle] & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __48__PKPassTileView__layoutWithBounds_applyLayout___block_invoke(uint64_t a1, void *a2, uint64_t a3, double a4, CGFloat a5)
{
  v9 = a2;
  v10 = *(*(a1 + 40) + 8);
  v44 = *(v10 + 32);
  v45 = *(v10 + 48);
  v43 = v9;
  [v9 alpha];
  v12 = v11;
  v13 = *(*(a1 + 40) + 8);
  v47.origin.x = v13[1].origin.x;
  v47.origin.y = v13[1].origin.y;
  ++v13;
  v47.size.width = v13->size.width;
  v47.size.height = v13->size.height;
  CGRectDivide(v47, (*(*(a1 + 48) + 8) + 32), v13, a5, CGRectMinYEdge);
  v21 = *(*(a1 + 48) + 8);
  if ((*(a1 + 96) & 1) == 0)
  {
    v18.n128_u64[0] = *(v21 + 48);
    goto LABEL_5;
  }

  v40 = a4;
  v41 = a5;
  v42 = v12;
  v22 = *(a1 + 92);
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v48 = CGRectStandardize(*(v21 + 32));
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  v50.origin.x = v23;
  v50.origin.y = v24;
  v50.size.width = v25;
  v50.size.height = v26;
  v49 = CGRectIntersection(v48, v50);
  v31 = v49.origin.x;
  v32 = v49.origin.y;
  v33 = v49.size.width;
  v34 = v49.size.height;
  if (!CGRectIsNull(v49))
  {
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        width = fmax(v31 - x, 0.0);
        goto LABEL_3;
      }

      if (v22 == 3)
      {
        height = fmax(v32 - y, 0.0);
        goto LABEL_3;
      }
    }

    else
    {
      if (!v22)
      {
        v39 = x + width;
        x = fmin(v31 + v33, x + width);
        width = v39 - x;
        goto LABEL_3;
      }

      if (v22 == 1)
      {
        v38 = y + height;
        y = fmin(v32 + v34, y + height);
        height = v38 - y;
        goto LABEL_3;
      }
    }

    __break(1u);
    return;
  }

LABEL_3:
  a5 = v41;
  v12 = v42;
  v35 = *(*(a1 + 48) + 8);
  v35[4] = x;
  v35[5] = y;
  v35[6] = width;
  v35[7] = height;
  v21 = *(*(a1 + 48) + 8);
  v18.n128_u64[0] = *(v21 + 48);
  a4 = fmin(v40, v18.n128_f64[0]);
LABEL_5:
  v16.n128_u64[0] = *(v21 + 32);
  v17.n128_u64[0] = *(v21 + 40);
  v19.n128_u64[0] = *(v21 + 56);
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;
  PKSizeAlignedInRect(a3, v14, v15, v16, v17, v18, v19, v20);
  if (v12 > 0.0)
  {
    v36 = *(*(a1 + 32) + 1072);
  }

  else
  {
    v36 = 0;
  }

  [v43 pkui_setFrame:v36 animated:{*&v40, *&v41, *&v42}];
  v37 = *(*(a1 + 40) + 8);
  if (v12 <= 0.0)
  {
    *(v37 + 32) = v44;
    *(v37 + 48) = v45;
  }

  else
  {
    CGRectDivide(*(v37 + 32), (*(*(a1 + 48) + 8) + 32), (v37 + 32), *(*(a1 + 32) + 912), CGRectMinYEdge);
  }
}

- (void)layoutIfNeededAnimated:(BOOL)animated
{
  self->_animated = animated;
  [(PKPassTileView *)self layoutIfNeeded];
  self->_animated = 0;
}

- (void)prepareForReuse
{
  v25 = *MEMORY[0x1E69E9840];
  actionStateTimeout = self->_actionStateTimeout;
  if (actionStateTimeout)
  {
    dispatch_source_cancel(actionStateTimeout);
    v4 = self->_actionStateTimeout;
    self->_actionStateTimeout = 0;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __33__PKPassTileView_prepareForReuse__block_invoke;
  v23[3] = &unk_1E8010970;
  v23[4] = self;
  [(PKPassTileView *)self performBatchUpdates:v23 animated:0];
  layer = [(PKPassTileView *)self layer];
  [layer removeAllAnimations];

  layer2 = [(UIImageView *)self->_icon layer];
  [layer2 removeAllAnimations];

  layer3 = [(UILabel *)self->_title layer];
  [layer3 removeAllAnimations];

  layer4 = [(UILabel *)self->_body layer];
  [layer4 removeAllAnimations];

  layer5 = [(UIImageView *)self->_bodyImage layer];
  [layer5 removeAllAnimations];

  layer6 = [(UILabel *)self->_footer layer];
  [layer6 removeAllAnimations];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_snapshots;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        if (v16)
        {
          v17 = *(v16 + 8);
        }

        else
        {
          v17 = 0;
        }

        [v17 removeFromSuperview];
        ++v15;
      }

      while (v13 != v15);
      v18 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      v13 = v18;
    }

    while (v18);
  }

  [(NSMutableArray *)self->_snapshots removeAllObjects];
}

uint64_t __33__PKPassTileView_prepareForReuse__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContent:0];
  [*(a1 + 32) setInActionState:0];
  v2 = *(a1 + 32);

  return [v2 setCompact:0];
}

- (void)beginActionStateTimeout:(int64_t)timeout
{
  [(PKPassTileView *)self setInActionState:1 animated:1];
  actionStateTimeout = self->_actionStateTimeout;
  if (actionStateTimeout)
  {
    dispatch_source_cancel(actionStateTimeout);
    v6 = self->_actionStateTimeout;
    self->_actionStateTimeout = 0;
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v8 = self->_actionStateTimeout;
  self->_actionStateTimeout = v7;

  v9 = self->_actionStateTimeout;
  if (timeout == 1)
  {
    v10 = 10000000000;
  }

  else
  {
    v10 = 1250000000;
  }

  v11 = dispatch_time(0, v10);
  dispatch_source_set_timer(v9, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  objc_initWeak(&location, self);
  v12 = self->_actionStateTimeout;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__PKPassTileView_beginActionStateTimeout___block_invoke;
  v13[3] = &unk_1E8010998;
  objc_copyWeak(&v14, &location);
  dispatch_source_set_event_handler(v12, v13);
  dispatch_resume(self->_actionStateTimeout);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __42__PKPassTileView_beginActionStateTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_source_cancel(WeakRetained[135]);
    v2 = v3[135];
    v3[135] = 0;

    [(dispatch_source_t *)v3 setInActionState:[v3[137] isInProgress] animated:1];
    WeakRetained = v3;
  }
}

- (void)performBatchUpdates:(id)updates animated:(BOOL)animated
{
  animatedCopy = animated;
  updatesCopy = updates;
  v7 = updatesCopy;
  if (updatesCopy)
  {
    v10 = updatesCopy;
    if (self->_deferringUpdate)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPassTileView recursive batch updates are not supported."];
    }

    if (animatedCopy)
    {
      [(PKPassTileView *)self layoutIfNeeded];
    }

    self->_deferringUpdate = 1;
    v10[2]();
    self->_deferringUpdate = 0;
    deferredSubviewUpdate = self->_deferredSubviewUpdate;
    self->_deferredSubviewUpdate = 0;
    v9 = [(PKPassTileView *)self _updateContentStateAnimated:animatedCopy];
    v7 = v10;
    if ((v9 & 1) == 0)
    {
      if (deferredSubviewUpdate)
      {
        [(PKPassTileView *)self _updateSubviewsAnimated:animatedCopy];
      }

      else
      {
        [(PKPassTileView *)self layoutIfNeededAnimated:animatedCopy];
      }

      v7 = v10;
    }
  }
}

- (uint64_t)_updateContentStateAnimated:(uint64_t)animated
{
  if (animated && (*(animated + 1073) & 1) == 0)
  {
    v5 = *(animated + 1088) ^ 1;
    state = [*(animated + 1096) state];
    v7 = state;
    if (*(animated + 1088) == 1)
    {
      actionState = [state actionState];
      v9 = actionState;
      if (actionState)
      {
        v10 = actionState;

        v7 = v10;
      }
    }

    [animated setUserInteractionEnabled:v5 & 1];
    v11 = *(animated + 952);
    v12 = *(animated + 960);
    v13 = *(animated + 928);
    v14 = v7;
    v15 = v11;
    v16 = v15;
    if (v13 == v14)
    {
      if ([v15 hash] == v12)
      {

LABEL_11:
        v3 = 0;
LABEL_18:

        return v3;
      }

      stateTypeDefaultV2 = [v13 stateTypeDefaultV2];
      title = [stateTypeDefaultV2 title];
      valueTypeForeignReference = [title valueTypeForeignReference];
      foreignReferenceType = [valueTypeForeignReference foreignReferenceType];

      if (!foreignReferenceType)
      {
        v27 = title;
        body = [stateTypeDefaultV2 body];
        valueTypeForeignReference2 = [body valueTypeForeignReference];
        foreignReferenceType2 = [valueTypeForeignReference2 foreignReferenceType];

        if (!foreignReferenceType2)
        {
          footer = [stateTypeDefaultV2 footer];
          valueTypeForeignReference3 = [footer valueTypeForeignReference];
          foreignReferenceType3 = [valueTypeForeignReference3 foreignReferenceType];

          if (!foreignReferenceType3)
          {
            goto LABEL_11;
          }

LABEL_17:
          *(animated + 960) = [*(animated + 952) hash];
          objc_storeStrong((animated + 928), v7);
          [(PKPassTileView *)animated _updateSubviewsAnimated:a2];
          v3 = 1;
          goto LABEL_18;
        }

        title = v27;
      }
    }

    goto LABEL_17;
  }

  return 0;
}

void __42__PKPassTileView__updateSubviewsAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_source_cancel(WeakRetained[121]);
    v2 = v3[121];
    v3[121] = 0;

    [(PKPassTileView *)v3 _updateSubviewsAnimated:?];
    WeakRetained = v3;
  }
}

- (double)_prepareViewForReuse:(void *)reuse type:(__int128 *)type state:
{
  v7 = a2;
  superview = [v7 superview];
  if (superview)
  {
    v9 = [v7 snapshotViewAfterScreenUpdates:0];
    if (v9)
    {
      [v7 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      layer = [v7 layer];
      presentationLayer = [layer presentationLayer];
      v20 = presentationLayer;
      if (presentationLayer)
      {
        [presentationLayer anchorPoint];
        v22 = v21;
        v24 = v23;
        [v20 position];
        v26 = v25;
        v28 = v27;
        [v20 bounds];
        v15 = v29;
        v17 = v30;
        v11 = v26 - v22 * v29;
        v13 = v28 - v24 * v30;
      }

      [v9 setFrame:{v11, v13, v15, v17}];
      [superview addSubview:v9];
      layer2 = [v9 layer];
      [layer2 setAllowsGroupOpacity:{objc_msgSend(layer, "allowsGroupOpacity")}];
      compositingFilter = [layer compositingFilter];
      [layer2 setCompositingFilter:compositingFilter];

      v33 = [PKPassTileView_SubviewSnapshot alloc];
      [v7 alignmentRectInsets];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = type[1];
      v63 = *type;
      v64 = v42;
      v43 = type[3];
      v65 = type[2];
      v66 = v43;
      v44 = v9;
      if (v33)
      {
        v67.receiver = v33;
        v67.super_class = PKPassTileView_SubviewSnapshot;
        v45 = objc_msgSendSuper2(&v67, sel_init);
        v46 = v45;
        if (v45)
        {
          objc_storeStrong(v45 + 1, v9);
          v46[3] = v35;
          v46[4] = v37;
          v46[5] = v39;
          v46[6] = v41;
          v46[2] = reuse;
          v47 = v64;
          *(v46 + 7) = v63;
          *(v46 + 9) = v47;
          v48 = v66;
          *(v46 + 11) = v65;
          *(v46 + 13) = v48;
        }

        v49 = v46;
      }

      else
      {
        v49 = 0;
      }

      v50 = *(self + 1000);
      [v50 addObject:v49];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __50__PKPassTileView__prepareViewForReuse_type_state___block_invoke;
      v59[3] = &unk_1E8012798;
      v60 = v44;
      v61 = v50;
      v62 = v49;
      v51 = v49;
      v52 = v50;
      *&v63 = 0;
      _PKViewSetAlphaAnimated(v60, v59, &v63, 0.0, 0.0);
      v53 = *&v63;
    }

    else
    {
      v53 = 0.0;
    }
  }

  else
  {
    v53 = 0.0;
  }

  v54 = MEMORY[0x1E69DD250];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __50__PKPassTileView__prepareViewForReuse_type_state___block_invoke_2;
  v57[3] = &unk_1E8010970;
  v55 = v7;
  v58 = v55;
  [v54 performWithoutAnimation:v57];

  return v53;
}

id __42__PKPassTileView__updateSubviewsAnimated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1120));
  v3 = [WeakRetained passTileViewRequestsBeginSuppressingCardEmulation:*(a1 + 32)];

  return v3;
}

void __42__PKPassTileView__updateSubviewsAnimated___block_invoke_4(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v6 = a3;
  if (*(a1 + 40) == 1)
  {
    v7 = 0.0;
    if (a3)
    {
      if (a4)
      {
        v7 = *(*(a1 + 32) + 752);
      }
    }

    v8[1] = v4;
    v8[2] = v5;
    _PKViewSetAlphaAnimated(a2, 0, v8, v6, v7);
  }

  else
  {

    [a2 pkui_setAlpha:0 animated:{a4, v6}];
  }
}

- (void)_updateStyleAnimated:(uint64_t)animated
{
  if (animated && (*(animated + 1073) & 1) == 0)
  {
    if (*(animated + 976) == 1)
    {
      v4 = *(animated + 979);
      if (*(animated + 977) == 1 || (v4 = 0, !*(animated + 979)))
      {
        v5 = 0;
        v6 = 1.0;
      }

      else
      {
        v5 = 1;
        v6 = 0.6;
      }
    }

    else
    {
      v4 = 0;
      v5 = 2;
      v6 = 0.3;
    }

    if ([animated overrideUserInterfaceStyle] != v4)
    {
      [animated setOverrideUserInterfaceStyle:v4];
    }

    if (*(animated + 978) == 1)
    {
      v7 = *(animated + 980);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(animated + 1104);
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    if (v5 == 2)
    {
      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];

      quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    }

    else
    {
      if (v5 != 1)
      {
        if (v8 == 1)
        {
          if (v7)
          {
            [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
          }

          else
          {
            [MEMORY[0x1E69DC888] linkColor];
          }
          v13 = ;

          labelColor = v13;
        }

        secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
LABEL_25:

        v14 = *(animated + 936);
        if (v14)
        {
          v14 = v14[4];
        }

        v15 = v14;
        v16 = v15;
        v91[0] = 0;
        if (v15 && v8 != 1)
        {
          v17 = PKPassTileViewTileImageTintColor(v15, v91);
          v18 = v6;
          if (v17)
          {
LABEL_32:
            v19 = *(animated + 936);
            v72 = v16;
            if (v19 && (v20 = *(v19 + 96), v91[0] = 0, v20))
            {
              v71 = v20;
              v21 = PKPassTileViewTileImageTintColor(v20, v91);
              if (v21)
              {
                v22 = v21;
LABEL_40:
                v23 = v6;
LABEL_41:
                v24 = *(animated + 936);
                if (v24)
                {
                  v24 = v24[8];
                }

                v25 = v24;
                accessoryTypeImage = [v25 accessoryTypeImage];
                image = [accessoryTypeImage image];

                v91[0] = 0;
                if (image)
                {
                  v28 = PKPassTileViewTileImageTintColor(image, v91);
                  v29 = v6;
                  if (v28)
                  {
LABEL_47:
                    v30 = *(animated + 936);
                    v63 = v28;
                    if (v30)
                    {
                      v30 = v30[6];
                    }

                    v31 = v30;
                    accessoryTypeImage2 = [v31 accessoryTypeImage];
                    image2 = [accessoryTypeImage2 image];

                    v91[0] = 0;
                    if (!image2)
                    {
                      goto LABEL_52;
                    }

                    v34 = PKPassTileViewTileImageTintColor(image2, v91);
                    v35 = v6;
                    if (v34)
                    {
                      goto LABEL_53;
                    }

                    if ((v91[0] & 1) == 0)
                    {
                      v34 = 0;
                      v35 = v6;
                    }

                    else
                    {
LABEL_52:
                      v34 = labelColor;
                      v35 = 1.0;
                    }

LABEL_53:
                    v59 = v34;
                    v68 = image2;
                    aBlock[0] = MEMORY[0x1E69E9820];
                    aBlock[1] = 3221225472;
                    aBlock[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke;
                    aBlock[3] = &unk_1E8012770;
                    v90 = a2;
                    aBlock[4] = animated;
                    v36 = _Block_copy(aBlock);
                    v37 = v36;
                    v38 = *(animated + 936);
                    if (v38)
                    {
                      LOBYTE(v38) = *(v38 + 16);
                    }

                    (*(v36 + 2))(v36, *(animated + 776), v38 & 1, *(animated + 760), v18);
                    v39 = *(animated + 936);
                    if (v39)
                    {
                      LOBYTE(v39) = *(v39 + 19);
                    }

                    v37[2](v37, *(animated + 800), v39 & 1, *(animated + 763), v23);
                    v40 = *(animated + 936);
                    if (v40)
                    {
                      LOBYTE(v40) = *(v40 + 21);
                    }

                    v37[2](v37, *(animated + 824), v40 & 1, *(animated + 765), v6);
                    v41 = *(animated + 936);
                    if (v41)
                    {
                      LOBYTE(v41) = *(v41 + 22);
                    }

                    v37[2](v37, *(animated + 832), v41 & 1, *(animated + 766), v6);
                    v42 = *(animated + 936);
                    if (v42)
                    {
                      LOBYTE(v42) = *(v42 + 25);
                    }

                    v37[2](v37, *(animated + 816), v42 & 1, *(animated + 769), v6);
                    v43 = *(animated + 936);
                    if (v43)
                    {
                      LOBYTE(v43) = *(v43 + 23);
                    }

                    v37[2](v37, *(animated + 840), v43 & 1, *(animated + 767), v35);
                    v44 = *(animated + 936);
                    v70 = a2;
                    v69 = image;
                    if (v44)
                    {
                      LOBYTE(v44) = *(v44 + 24);
                    }

                    v37[2](v37, *(animated + 848), v44 & 1, *(animated + 768), v29);
                    v87[0] = MEMORY[0x1E69E9820];
                    v87[1] = 3221225472;
                    v87[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_2;
                    v87[3] = &unk_1E8010A10;
                    v87[4] = animated;
                    v65 = v17;
                    v88 = v65;
                    v58 = _Block_copy(v87);
                    v85[0] = MEMORY[0x1E69E9820];
                    v85[1] = 3221225472;
                    v85[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_3;
                    v85[3] = &unk_1E8010A10;
                    v85[4] = animated;
                    v45 = labelColor;
                    v86 = v45;
                    v46 = _Block_copy(v85);
                    v83[0] = MEMORY[0x1E69E9820];
                    v83[1] = 3221225472;
                    v83[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_4;
                    v83[3] = &unk_1E8010A10;
                    v83[4] = animated;
                    v47 = v45;
                    v84 = v47;
                    v48 = _Block_copy(v83);
                    v81[0] = MEMORY[0x1E69E9820];
                    v81[1] = 3221225472;
                    v81[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_5;
                    v81[3] = &unk_1E8010A10;
                    v81[4] = animated;
                    v62 = v22;
                    v82 = v62;
                    v49 = _Block_copy(v81);
                    v79[0] = MEMORY[0x1E69E9820];
                    v79[1] = 3221225472;
                    v79[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_6;
                    v79[3] = &unk_1E8010A10;
                    v79[4] = animated;
                    v67 = secondaryLabelColor2;
                    v80 = v67;
                    v50 = _Block_copy(v79);
                    v77[0] = MEMORY[0x1E69E9820];
                    v77[1] = 3221225472;
                    v77[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_7;
                    v77[3] = &unk_1E8010A10;
                    v77[4] = animated;
                    v61 = v47;
                    v78 = v61;
                    v51 = _Block_copy(v77);
                    v75[0] = MEMORY[0x1E69E9820];
                    v75[1] = 3221225472;
                    v75[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_8;
                    v75[3] = &unk_1E8010A10;
                    v75[4] = animated;
                    v60 = v59;
                    v76 = v60;
                    v52 = _Block_copy(v75);
                    v73[0] = MEMORY[0x1E69E9820];
                    v73[1] = 3221225472;
                    v73[2] = __39__PKPassTileView__updateStyleAnimated___block_invoke_9;
                    v73[3] = &unk_1E8010A10;
                    v73[4] = animated;
                    v64 = v63;
                    v74 = v64;
                    v53 = _Block_copy(v73);
                    if (v70)
                    {
                      if (*(animated + 760) == 1)
                      {
                        v58[2](v58);
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v58 completion:0];
                      }

                      if (*(animated + 761) == 1)
                      {
                        v46[2](v46);
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v46 completion:0];
                      }

                      if (*(animated + 762) == 1)
                      {
                        v48[2]();
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v48 completion:0];
                      }

                      if (*(animated + 763) == 1)
                      {
                        v49[2]();
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v49 completion:0];
                      }

                      if (*(animated + 764) == 1)
                      {
                        v50[2]();
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v50 completion:0];
                      }

                      if (*(animated + 769) == 1)
                      {
                        v51[2](v51);
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v51 completion:0];
                      }

                      v54 = v51;
                      if (*(animated + 767) == 1)
                      {
                        v52[2]();
                      }

                      else
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v52 completion:0];
                      }

                      v57 = *(animated + 768);
                      v55 = v58;
                      v56 = v52;
                      if ((v57 & 1) == 0)
                      {
                        [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v53 completion:0];
                        goto LABEL_93;
                      }
                    }

                    else
                    {
                      v58[2](v58);
                      v46[2](v46);
                      (v48[2])(v48);
                      (v49[2])(v49);
                      (v50[2])(v50);
                      v54 = v51;
                      v51[2](v51);
                      (v52[2])(v52);
                      v55 = v58;
                      v56 = v52;
                    }

                    v53[2](v53);
LABEL_93:

                    return;
                  }

                  if ((v91[0] & 1) == 0)
                  {
                    v28 = 0;
                    v29 = v6;
                    goto LABEL_47;
                  }
                }

                v28 = labelColor;
                v29 = 1.0;
                goto LABEL_47;
              }

              if ((v91[0] & 1) == 0)
              {
                v22 = 0;
                goto LABEL_40;
              }
            }

            else
            {
              v71 = 0;
            }

            v22 = labelColor;
            v23 = 1.0;
            goto LABEL_41;
          }

          if ((v91[0] & 1) == 0)
          {
            v17 = 0;
            v18 = v6;
            goto LABEL_32;
          }
        }

        v17 = labelColor;
        v18 = 1.0;
        goto LABEL_32;
      }

      tertiaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];

      quaternaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }

    secondaryLabelColor2 = quaternaryLabelColor;
    labelColor = tertiaryLabelColor;
    goto LABEL_25;
  }
}

- (void)_updateBackgroundAnimated:(uint64_t)animated
{
  if (animated)
  {
    if ([*(animated + 928) hidesBackground])
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [animated setBackgroundColor:clearColor];
    }

    else
    {
      if (*(animated + 978) == 1 && (*(animated + 980) & 1) != 0)
      {
        tableCellDefaultSelectionTintColor = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
      }

      else
      {
        tableCellDefaultSelectionTintColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      }

      v5 = tableCellDefaultSelectionTintColor;
      if (a2)
      {
        v6 = MEMORY[0x1E69DD250];
        if (*(animated + 978) == 1)
        {
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __44__PKPassTileView__updateBackgroundAnimated___block_invoke;
          v11[3] = &unk_1E8010A10;
          v11[4] = animated;
          v12 = tableCellDefaultSelectionTintColor;
          [v6 _animateUsingDefaultTimingWithOptions:1030 animations:v11 completion:0];
          v7 = v12;
        }

        else
        {
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __44__PKPassTileView__updateBackgroundAnimated___block_invoke_2;
          v9[3] = &unk_1E8010A10;
          v9[4] = animated;
          v10 = tableCellDefaultSelectionTintColor;
          [v6 _animateUsingDefaultTimingWithOptions:2 animations:v9 completion:0];
          v7 = v10;
        }
      }

      else
      {
        [animated setBackgroundColor:tableCellDefaultSelectionTintColor];
      }
    }
  }
}

void __39__PKPassTileView__updateStyleAnimated___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4, double a5)
{
  v7 = 0.0;
  if (!a3)
  {
    a5 = 0.0;
  }

  if (*(a1 + 40) == 1)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = *(*(a1 + 32) + 752);
      }
    }

    v8[1] = v5;
    v8[2] = v6;
    _PKViewSetAlphaAnimated(a2, 0, v8, a5, v7);
  }

  else
  {

    [a2 pkui_setAlpha:0 animated:{a4, a5}];
  }
}

uint64_t __50__PKPassTileView__prepareViewForReuse_type_state___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 removeObjectIdenticalTo:v3];
}

void __50__PKPassTileView__prepareViewForReuse_type_state___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 removeAllAnimations];
  [*(a1 + 32) setAlpha:0.0];
  [v2 clearHasBeenCommitted];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = PKPassTileView;
  [(PKPassTileView *)&v5 setEnabled:?];
  if (self->_enabled != enabledCopy)
  {
    self->_enabled = enabledCopy;
    [(PKPassTileView *)self _updateStyleAnimated:?];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = PKPassTileView;
  [(PKPassTileView *)&v5 setSelected:?];
  if (self->_selected != selectedCopy)
  {
    self->_selected = selectedCopy;
    [(PKPassTileView *)self _updateStyleAnimated:?];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = PKPassTileView;
  [(PKPassTileView *)&v5 setHighlighted:?];
  if (self->_highlighted != highlightedCopy)
  {
    self->_highlighted = highlightedCopy;
    [(PKPassTileView *)self _updateBackgroundAnimated:?];
  }
}

- (void)setPass:(id)pass passState:(id)state
{
  passCopy = pass;
  stateCopy = state;
  uniqueID = [(PKPass *)self->_pass uniqueID];
  uniqueID2 = [passCopy uniqueID];
  v10 = [uniqueID isEqualToString:uniqueID2];

  if ((v10 & 1) == 0)
  {
    objc_storeStrong(&self->_pass, pass);
    p_passState = &self->_passState;
    if (self->_passState == stateCopy)
    {
LABEL_6:
      [(PKPassTileView *)self _updateSubviewsAnimated:?];
      goto LABEL_7;
    }

LABEL_5:
    objc_storeStrong(p_passState, state);
    goto LABEL_6;
  }

  p_passState = &self->_passState;
  if (self->_passState != stateCopy)
  {
    goto LABEL_5;
  }

LABEL_7:
}

- (void)setContent:(id)content animated:(BOOL)animated
{
  animatedCopy = animated;
  contentCopy = content;
  passState = self->_passState;
  lastPassStateHash = self->_lastPassStateHash;
  v10 = self->_content;
  v33 = contentCopy;
  v11 = passState;
  if (PKEqualObjects())
  {
    state = [(PKPassTile *)v10 state];
    state2 = [v33 state];
    v14 = state;
    if (v14 == state2)
    {
      if ([(PKPassDynamicState *)v11 hash]== lastPassStateHash)
      {

        goto LABEL_22;
      }

      stateTypeDefaultV2 = [v14 stateTypeDefaultV2];
      title = [stateTypeDefaultV2 title];
      valueTypeForeignReference = [title valueTypeForeignReference];
      foreignReferenceType = [valueTypeForeignReference foreignReferenceType];

      if (!foreignReferenceType)
      {
        v31 = title;
        body = [stateTypeDefaultV2 body];
        valueTypeForeignReference2 = [body valueTypeForeignReference];
        foreignReferenceType2 = [valueTypeForeignReference2 foreignReferenceType];

        if (!foreignReferenceType2)
        {
          footer = [stateTypeDefaultV2 footer];
          valueTypeForeignReference3 = [footer valueTypeForeignReference];
          foreignReferenceType3 = [valueTypeForeignReference3 foreignReferenceType];

          if (!foreignReferenceType3)
          {
            goto LABEL_22;
          }

          goto LABEL_11;
        }

        title = v31;
      }
    }
  }

LABEL_11:
  v19 = v33;
  if (animatedCopy && !self->_deferringUpdate)
  {
    [(PKPassTileView *)self layoutIfNeeded];
    v19 = v33;
  }

  v20 = [PKPassTileView_State visuallyCompareTile:v19 toTile:?];
  objc_storeStrong(&self->_content, content);
  axID = [(PKPassTile *)self->_content axID];
  [(PKPassTileView *)self setAccessibilityIdentifier:axID];

  state3 = [(PKPassTile *)self->_content state];
  type = [state3 type];

  if (type == 6)
  {
    [(PKPassTileView *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9A60]];
  }

  if (v20 != 2)
  {
    actionStateTimeout = self->_actionStateTimeout;
    if (actionStateTimeout)
    {
      dispatch_source_cancel(actionStateTimeout);
      v25 = self->_actionStateTimeout;
      self->_actionStateTimeout = 0;
    }
  }

  if (!self->_actionStateTimeout)
  {
    self->_inActionState = [(PKPassTile *)self->_content isInProgress];
  }

  [(PKPassTileView *)self _updateContentStateAnimated:animatedCopy];
LABEL_22:
}

- (void)setInActionState:(BOOL)state animated:(BOOL)animated
{
  if (self->_inActionState != state)
  {
    animatedCopy = animated;
    if (animated && !self->_deferringUpdate)
    {
      [(PKPassTileView *)self layoutIfNeeded];
    }

    self->_inActionState = state;

    [(PKPassTileView *)self _updateContentStateAnimated:animatedCopy];
  }
}

- (void)setCompact:(BOOL)compact animated:(BOOL)animated
{
  if (self->_compact != compact)
  {
    animatedCopy = animated;
    if (animated && !self->_deferringUpdate)
    {
      [(PKPassTileView *)self layoutIfNeeded];
    }

    self->_compact = compact;

    [(PKPassTileView *)self _updateSubviewsAnimated:animatedCopy];
  }
}

- (void)setGroupStyle:(unint64_t)style
{
  if (self)
  {
    if (self->_groupStyle != style)
    {
      self->_groupStyle = style;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __41__PKPassTileView_setGroupStyle_animated___block_invoke;
      aBlock[3] = &__block_descriptor_33_e17_v16__0__UILabel_8l;
      v6 = style == 1;
      v4 = _Block_copy(aBlock);
      v4[2](v4, self->_title);
      v4[2](v4, self->_body);
      v4[2](v4, self->_footer);
      [(PKPassTileView *)self _updateSubviewsAnimated:?];
    }
  }
}

uint64_t __41__PKPassTileView_setGroupStyle_animated___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 1;
  }

  else
  {
    v2 = 4;
  }

  return [a2 setTextAlignment:v2];
}

- (PKPassTileViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKPassTileCustomViewProviding)customViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_customViewProvider);

  return WeakRetained;
}

@end