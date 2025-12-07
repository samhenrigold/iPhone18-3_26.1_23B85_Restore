@interface PKPassSemanticBoardingPassFaceView
- (BOOL)flushFormattedFieldValues;
- (BOOL)flushPassStateFieldValues;
- (id)_footerImageGlyphIfExists;
- (id)_transitGlyphForTransitType:(int64_t)type;
- (id)fetchRelevantBuckets;
- (void)createBodyContentViews;
- (void)createHeaderContentViews;
- (void)layoutSubviews;
- (void)setShowsBarcodeView:(BOOL)view animated:(BOOL)animated;
@end

@implementation PKPassSemanticBoardingPassFaceView

- (id)fetchRelevantBuckets
{
  v12[4] = *MEMORY[0x1E69E9840];
  pass = [(PKPassFaceView *)self pass];
  passState = [(PKPassFaceView *)self passState];
  v5 = [[PKBoardingPassFaceBucketsFactory alloc] initWithPass:pass state:passState];
  headerFields = [(PKBoardingPassFaceBucketsFactory *)v5 headerFields];
  v12[0] = headerFields;
  primaryFields = [(PKBoardingPassFaceBucketsFactory *)v5 primaryFields];
  v12[1] = primaryFields;
  secondaryFields = [(PKBoardingPassFaceBucketsFactory *)v5 secondaryFields];
  v12[2] = secondaryFields;
  auxiliaryFields = [(PKBoardingPassFaceBucketsFactory *)v5 auxiliaryFields];
  v12[3] = auxiliaryFields;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  return v10;
}

- (BOOL)flushFormattedFieldValues
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke;
  aBlock[3] = &unk_1E80190C0;
  aBlock[4] = &v25;
  v3 = _Block_copy(aBlock);
  pass = [(PKPassFaceView *)self pass];
  passState = [(PKPassFaceView *)self passState];
  v6 = [[PKBoardingPassFaceBucketsFactory alloc] initWithPass:pass state:passState];
  headerFields = [(PKBoardingPassFaceBucketsFactory *)v6 headerFields];
  buckets = [(PKPassFaceView *)self buckets];
  v9 = [buckets objectAtIndexedSubscript:0];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke_2;
  v21[3] = &unk_1E80190E8;
  v10 = headerFields;
  v22 = v10;
  v11 = v3;
  v23 = v11;
  [v9 enumerateObjectsUsingBlock:v21];
  auxiliaryFields = [(PKBoardingPassFaceBucketsFactory *)v6 auxiliaryFields];
  buckets2 = [(PKPassFaceView *)self buckets];
  v14 = [buckets2 objectAtIndexedSubscript:3];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke_3;
  v18[3] = &unk_1E80190E8;
  v15 = auxiliaryFields;
  v19 = v15;
  v16 = v11;
  v20 = v16;
  [v14 enumerateObjectsUsingBlock:v18];
  LOBYTE(v11) = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return v11;
}

void __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v5 label];
  v7 = [v5 value];
  v8 = [v18 label];
  v9 = v6;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v8)
  {

    goto LABEL_8;
  }

  v11 = [v8 isEqualToString:v9];

  if ((v11 & 1) == 0)
  {
LABEL_8:
    [v18 setLabel:v10];
    v12 = [v5 accessibilityLabel];
    [v18 setAccessibilityLabel:v12];

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_9:
  v13 = [v18 value];
  v14 = v7;
  v15 = v14;
  if (v13 == v14)
  {

    goto LABEL_17;
  }

  if (!v14 || !v13)
  {

    goto LABEL_16;
  }

  v16 = [v13 isEqualToString:v14];

  if ((v16 & 1) == 0)
  {
LABEL_16:
    [v18 setUnformattedValue:v15];
    v17 = [v5 accessibilityValue];
    [v18 setAccessibilityValue:v17];

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_17:
}

void __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

void __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)flushPassStateFieldValues
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke;
  aBlock[3] = &unk_1E80190C0;
  aBlock[4] = &v35;
  v3 = _Block_copy(aBlock);
  pass = [(PKPassFaceView *)self pass];
  passState = [(PKPassFaceView *)self passState];
  v5 = [[PKBoardingPassFaceBucketsFactory alloc] initWithPass:pass state:passState];
  headerFields = [(PKBoardingPassFaceBucketsFactory *)v5 headerFields];
  buckets = [(PKPassFaceView *)self buckets];
  v8 = [buckets objectAtIndexedSubscript:0];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_2;
  v31[3] = &unk_1E80190E8;
  v9 = headerFields;
  v32 = v9;
  v10 = v3;
  v33 = v10;
  [v8 enumerateObjectsUsingBlock:v31];
  v23 = v8;
  primaryFields = [(PKBoardingPassFaceBucketsFactory *)v5 primaryFields];
  buckets2 = [(PKPassFaceView *)self buckets];
  v13 = [buckets2 objectAtIndexedSubscript:1];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_3;
  v28[3] = &unk_1E80190E8;
  v14 = primaryFields;
  v29 = v14;
  v15 = v10;
  v30 = v15;
  [v13 enumerateObjectsUsingBlock:v28];
  v16 = pass;
  auxiliaryFields = [(PKBoardingPassFaceBucketsFactory *)v5 auxiliaryFields];
  buckets3 = [(PKPassFaceView *)self buckets];
  v19 = [buckets3 objectAtIndexedSubscript:3];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_4;
  v25[3] = &unk_1E80190E8;
  v20 = auxiliaryFields;
  v26 = v20;
  v21 = v15;
  v27 = v21;
  [v19 enumerateObjectsUsingBlock:v25];
  LOBYTE(v15) = *(v36 + 24);

  _Block_object_dispose(&v35, 8);
  return v15;
}

void __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v5 label];
  v7 = [v5 value];
  v8 = [v18 label];
  v9 = v6;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v8)
  {

    goto LABEL_8;
  }

  v11 = [v8 isEqualToString:v9];

  if ((v11 & 1) == 0)
  {
LABEL_8:
    [v18 setLabel:v10];
    v12 = [v5 accessibilityLabel];
    [v18 setAccessibilityLabel:v12];

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_9:
  v13 = [v18 value];
  v14 = v7;
  v15 = v14;
  if (v13 == v14)
  {

    goto LABEL_17;
  }

  if (!v14 || !v13)
  {

    goto LABEL_16;
  }

  v16 = [v13 isEqualToString:v14];

  if ((v16 & 1) == 0)
  {
LABEL_16:
    [v18 setUnformattedValue:v15];
    v17 = [v5 accessibilityValue];
    [v18 setAccessibilityValue:v17];

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_17:
}

void __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

void __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

void __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

- (void)createHeaderContentViews
{
  v36.receiver = self;
  v36.super_class = PKPassSemanticBoardingPassFaceView;
  [(PKPassFrontFaceView *)&v36 createHeaderContentViews];
  style = [(PKPassFaceView *)self style];
  pass = [(PKPassFaceView *)self pass];
  colorProfile = [(PKPassFaceView *)self colorProfile];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v35 = pass;
  logoText = [pass logoText];
  PKPassFaceLogoRect();
  IsEmpty = CGRectIsEmpty(v37);
  v9 = MEMORY[0x1E69DB958];
  if (!IsEmpty && (style - 9) <= 1 && logoText)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    logoLabel = self->_logoLabel;
    self->_logoLabel = v10;

    v12 = self->_logoLabel;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v12 setBackgroundColor:clearColor];

    [(UILabel *)self->_logoLabel setLineBreakMode:4];
    [(UILabel *)self->_logoLabel setNumberOfLines:1];
    [(UILabel *)self->_logoLabel setTextAlignment:0];
    v14 = self->_logoLabel;
    v15 = PKFontForDefaultDesign(v6, *MEMORY[0x1E69DDCF8], 32770, 0, *v9);
    [(UILabel *)v14 setFont:v15];

    v16 = self->_logoLabel;
    foregroundColor = [colorProfile foregroundColor];
    [(UILabel *)v16 setTextColor:foregroundColor];

    [(UILabel *)self->_logoLabel setText:logoText];
    [(PKPassFrontFaceView *)self insertContentView:self->_logoLabel ofType:0];
  }

  buckets = [(PKPassFaceView *)self buckets];
  firstObject = [buckets firstObject];
  v18FirstObject = [firstObject firstObject];

  if (v18FirstObject)
  {
    label = [v18FirstObject label];
    v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    flightCodeLabel = self->_flightCodeLabel;
    self->_flightCodeLabel = v21;

    [(UILabel *)self->_flightCodeLabel setNumberOfLines:1];
    [(UILabel *)self->_flightCodeLabel setLineBreakMode:4];
    [(UILabel *)self->_flightCodeLabel setTextAlignment:2];
    v23 = self->_flightCodeLabel;
    v24 = PKFontForDefaultDesign(v6, *MEMORY[0x1E69DDD80], 32770, 0, *v9);
    [(UILabel *)v23 setFont:v24];

    v25 = self->_flightCodeLabel;
    foregroundColor2 = [colorProfile foregroundColor];
    [(UILabel *)v25 setTextColor:foregroundColor2];

    [(UILabel *)self->_flightCodeLabel setText:label];
    [(PKPassFrontFaceView *)self insertContentView:self->_flightCodeLabel ofType:0];
    value = [v18FirstObject value];
    v28 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dateLabel = self->_dateLabel;
    self->_dateLabel = v28;

    [(UILabel *)self->_dateLabel setNumberOfLines:1];
    [(UILabel *)self->_dateLabel setLineBreakMode:4];
    [(UILabel *)self->_dateLabel setTextAlignment:2];
    v30 = self->_dateLabel;
    v31 = _PKFontForDesign(v6, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD28], 0x8000, 0, 0);
    [(UILabel *)v30 setFont:v31];

    v32 = self->_dateLabel;
    labelColor = [colorProfile labelColor];
    [(UILabel *)v32 setTextColor:labelColor];

    [(UILabel *)self->_dateLabel setText:value];
    [(PKPassFrontFaceView *)self insertContentView:self->_dateLabel ofType:0];
  }

  else
  {
    __break(1u);
  }
}

- (void)createBodyContentViews
{
  v99.receiver = self;
  v99.super_class = PKPassSemanticBoardingPassFaceView;
  [(PKPassFrontFaceView *)&v99 createBodyContentViews];
  pass = [(PKPassFaceView *)self pass];
  style = [pass style];
  colorProfile = [(PKPassFaceView *)self colorProfile];
  v98 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  buckets = [(PKPassFaceView *)self buckets];
  if ([buckets count] != 4)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = [buckets objectAtIndexedSubscript:1];
  v93 = [buckets objectAtIndexedSubscript:2];
  v95 = [buckets objectAtIndexedSubscript:3];
  if ([v6 count] <= 3)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v85 = *MEMORY[0x1E69DB8C8];
  v7 = _PKFontForDesign(v98, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD28], 0x8000, 0, 0);
  v97 = v7;
  v80 = style;
  PKPassFrontFaceContentSize();
  if (v8 >= 343.0)
  {
    v9 = 44.0;
  }

  else
  {
    v9 = 42.0;
  }

  v10 = PKFontForDefaultDesign(v98, *MEMORY[0x1E69DDD18], *MEMORY[0x1E69DB960]);
  v94 = [v10 fontWithSize:v9];

  v11 = [v6 objectAtIndexedSubscript:0];
  label = [v11 label];
  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  departureCityLabel = self->_departureCityLabel;
  self->_departureCityLabel = v13;

  [(UILabel *)self->_departureCityLabel setNumberOfLines:1];
  [(UILabel *)self->_departureCityLabel setLineBreakMode:4];
  [(UILabel *)self->_departureCityLabel setTextAlignment:0];
  [(UILabel *)self->_departureCityLabel setFont:v7];
  v15 = self->_departureCityLabel;
  labelColor = [colorProfile labelColor];
  [(UILabel *)v15 setTextColor:labelColor];

  v90 = label;
  [(UILabel *)self->_departureCityLabel setText:label];
  [(PKPassFrontFaceView *)self insertContentView:self->_departureCityLabel ofType:2];
  v91 = v11;
  value = [v11 value];
  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  departureAirportLabel = self->_departureAirportLabel;
  self->_departureAirportLabel = v18;

  [(UILabel *)self->_departureAirportLabel setNumberOfLines:1];
  [(UILabel *)self->_departureAirportLabel setLineBreakMode:4];
  [(UILabel *)self->_departureAirportLabel setTextAlignment:0];
  [(UILabel *)self->_departureAirportLabel setFont:v94];
  v20 = self->_departureAirportLabel;
  foregroundColor = [colorProfile foregroundColor];
  [(UILabel *)v20 setTextColor:foregroundColor];

  v89 = value;
  [(UILabel *)self->_departureAirportLabel setText:value];
  [(PKPassFrontFaceView *)self insertContentView:self->_departureAirportLabel ofType:2];
  v88 = [v6 objectAtIndexedSubscript:1];
  value2 = [v88 value];
  v23 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  departureDateLabel = self->_departureDateLabel;
  self->_departureDateLabel = v23;

  [(UILabel *)self->_departureDateLabel setNumberOfLines:1];
  [(UILabel *)self->_departureDateLabel setLineBreakMode:4];
  [(UILabel *)self->_departureDateLabel setTextAlignment:0];
  [(UILabel *)self->_departureDateLabel setFont:v97];
  v25 = self->_departureDateLabel;
  labelColor2 = [colorProfile labelColor];
  [(UILabel *)v25 setTextColor:labelColor2];

  v87 = value2;
  [(UILabel *)self->_departureDateLabel setText:value2];
  [(PKPassFrontFaceView *)self insertContentView:self->_departureDateLabel ofType:2];
  v27 = [v6 objectAtIndexedSubscript:2];
  label2 = [v27 label];
  v29 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  destinationCityLabel = self->_destinationCityLabel;
  self->_destinationCityLabel = v29;

  [(UILabel *)self->_destinationCityLabel setNumberOfLines:1];
  [(UILabel *)self->_destinationCityLabel setLineBreakMode:4];
  [(UILabel *)self->_destinationCityLabel setTextAlignment:2];
  [(UILabel *)self->_destinationCityLabel setFont:v97];
  v31 = self->_destinationCityLabel;
  labelColor3 = [colorProfile labelColor];
  [(UILabel *)v31 setTextColor:labelColor3];

  v84 = label2;
  [(UILabel *)self->_destinationCityLabel setText:label2];
  [(PKPassFrontFaceView *)self insertContentView:self->_destinationCityLabel ofType:2];
  v86 = v27;
  value3 = [v27 value];
  v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  destinationAirportLabel = self->_destinationAirportLabel;
  self->_destinationAirportLabel = v34;

  [(UILabel *)self->_destinationAirportLabel setNumberOfLines:1];
  [(UILabel *)self->_destinationAirportLabel setLineBreakMode:4];
  [(UILabel *)self->_destinationAirportLabel setTextAlignment:2];
  [(UILabel *)self->_destinationAirportLabel setFont:v94];
  v36 = self->_destinationAirportLabel;
  foregroundColor2 = [colorProfile foregroundColor];
  [(UILabel *)v36 setTextColor:foregroundColor2];

  [(UILabel *)self->_destinationAirportLabel setText:value3];
  [(PKPassFrontFaceView *)self insertContentView:self->_destinationAirportLabel ofType:2];
  v92 = v6;
  v83 = [v6 objectAtIndexedSubscript:3];
  value4 = [v83 value];
  v39 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  arrivalDateLabel = self->_arrivalDateLabel;
  self->_arrivalDateLabel = v39;

  [(UILabel *)self->_arrivalDateLabel setNumberOfLines:1];
  [(UILabel *)self->_arrivalDateLabel setLineBreakMode:4];
  [(UILabel *)self->_arrivalDateLabel setTextAlignment:2];
  [(UILabel *)self->_arrivalDateLabel setFont:v97];
  v41 = self->_arrivalDateLabel;
  labelColor4 = [colorProfile labelColor];
  [(UILabel *)v41 setTextColor:labelColor4];

  [(UILabel *)self->_arrivalDateLabel setText:value4];
  [(PKPassFrontFaceView *)self insertContentView:self->_arrivalDateLabel ofType:2];
  v43 = PKFontForDefaultDesign(v98, *MEMORY[0x1E69DDD80], *MEMORY[0x1E69DB958]);
  firstObject = [v93 firstObject];
  value5 = [firstObject value];

  v46 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  passengerNameLabel = self->_passengerNameLabel;
  self->_passengerNameLabel = v46;

  [(UILabel *)self->_passengerNameLabel setNumberOfLines:1];
  [(UILabel *)self->_passengerNameLabel setLineBreakMode:4];
  [(UILabel *)self->_passengerNameLabel setTextAlignment:0];
  v82 = v43;
  [(UILabel *)self->_passengerNameLabel setFont:v43];
  v48 = self->_passengerNameLabel;
  foregroundColor3 = [colorProfile foregroundColor];
  [(UILabel *)v48 setTextColor:foregroundColor3];

  v81 = value5;
  [(UILabel *)self->_passengerNameLabel setText:value5];
  [(UILabel *)self->_passengerNameLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_passengerNameLabel setMinimumScaleFactor:0.8];
  [(PKPassFrontFaceView *)self insertContentView:self->_passengerNameLabel ofType:2];
  v50 = objc_alloc_init(PKPassFaceBadgesCollectionView);
  badgesCollectionView = self->_badgesCollectionView;
  self->_badgesCollectionView = v50;

  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setLayoutDirection:0];
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setContentInsets:3.0, 3.0, 3.0, 3.0];
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setNumberOfLines:2];
  if ([v93 count] < 2)
  {
    v52 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v52 = [v93 subarrayWithRange:{1, objc_msgSend(v93, "count") - 1}];
  }

  v53 = self->_badgesCollectionView;
  foregroundColor4 = [colorProfile foregroundColor];
  [(PKPassFaceBadgesCollectionView *)v53 setBadgesBackgroundColor:foregroundColor4];

  v55 = self->_badgesCollectionView;
  backgroundColor = [colorProfile backgroundColor];
  [(PKPassFaceBadgesCollectionView *)v55 setBadgesTextColor:backgroundColor];

  v57 = self->_badgesCollectionView;
  v58 = PKFontForDefaultDesign(v98, *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DB980]);
  [(PKPassFaceBadgesCollectionView *)v57 setBadgesFont:v58];

  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setBadgesTextPadding:5.0, 6.0, 5.0, 6.0];
  v59 = v52;
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setFields:v52];
  [(PKPassFrontFaceView *)self insertContentView:self->_badgesCollectionView ofType:2];
  v60 = [[PKDynamicPassBucketView alloc] initWithBucket:v95];
  auxiliaryBucketView = self->_auxiliaryBucketView;
  self->_auxiliaryBucketView = v60;

  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setLayoutDirection:0];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setDistribution:1];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setSizingRule:0];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setSpacing:10.0];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setVerticalPadding:0.0];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setMinResizeScale:0.6];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setLabelFont:v97];
  v62 = self->_auxiliaryBucketView;
  labelColor5 = [colorProfile labelColor];
  [(PKDynamicPassBucketView *)v62 setLabelTextColor:labelColor5];

  v64 = self->_auxiliaryBucketView;
  v65 = _PKFontForDesign(v98, v85, *MEMORY[0x1E69DDD40], 0, 0, 0);
  [(PKDynamicPassBucketView *)v64 setValueFont:v65];

  v66 = self->_auxiliaryBucketView;
  foregroundColor5 = [colorProfile foregroundColor];
  [(PKDynamicPassBucketView *)v66 setValueTextColor:foregroundColor5];

  [(PKPassFrontFaceView *)self insertContentView:self->_auxiliaryBucketView ofType:2];
  pass2 = [(PKPassFaceView *)self pass];
  v69 = -[PKPassSemanticBoardingPassFaceView _transitGlyphForTransitType:](self, "_transitGlyphForTransitType:", [pass2 transitType]);

  colorProfile2 = [(PKPassFaceView *)self colorProfile];
  v71 = [colorProfile2 labelImageForGlyph:v69];

  v72 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v71];
  transitImageView = self->_transitImageView;
  self->_transitImageView = v72;

  [(PKPassFrontFaceView *)self insertContentView:self->_transitImageView ofType:2];
  barcode = [pass barcode];
  if (barcode)
  {
    v75 = [[PKBarcodeStickerView alloc] initWithBarcode:barcode validityState:[PKBarcodeStickerView passStyle:"validityStateForPass:" validityStateForPass:pass], v80];
    customBarcodeView = self->_customBarcodeView;
    self->_customBarcodeView = v75;

    [(PKBarcodeStickerView *)self->_customBarcodeView sizeToFit];
    [(PKBarcodeStickerView *)self->_customBarcodeView setAlpha:1.0];
    [(PKBarcodeStickerView *)self->_customBarcodeView setMatteCornerRadius:12.0];
    [(PKBarcodeStickerView *)self->_customBarcodeView layoutIfNeeded];
    if ([(PKPassFrontFaceView *)self showsBarcodeView])
    {
      [(PKPassFrontFaceView *)self insertContentView:self->_customBarcodeView ofType:2];
    }
  }

  _footerImageGlyphIfExists = [(PKPassSemanticBoardingPassFaceView *)self _footerImageGlyphIfExists];
  if (_footerImageGlyphIfExists)
  {
    v78 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:_footerImageGlyphIfExists];
    footerImageView = self->_footerImageView;
    self->_footerImageView = v78;

    if ([(PKPassFrontFaceView *)self showsBarcodeView])
    {
      [(PKPassFrontFaceView *)self insertContentView:self->_footerImageView ofType:2];
    }
  }
}

- (void)layoutSubviews
{
  v275.receiver = self;
  v275.super_class = PKPassSemanticBoardingPassFaceView;
  [(PKPassFrontFaceView *)&v275 layoutSubviews];
  style = [(PKPassFaceView *)self style];
  PKPassFrontFaceContentSize();
  v5 = v4;
  v266 = v6;
  PKPassFaceLogoRect();
  x = v276.origin.x;
  y = v276.origin.y;
  width = v276.size.width;
  height = v276.size.height;
  MinX = CGRectGetMinX(v276);
  v11.n128_u64[0] = 0.5;
  v264 = v5 + MinX * -2.0;
  v12.n128_f64[0] = v264 * 0.5;
  PKFloatRoundToPixel(v12, v11);
  v14 = v13;
  *&v274 = v5;
  if (self->_logoLabel)
  {
    v277.origin.x = x;
    v277.origin.y = y;
    v277.size.width = width;
    v277.size.height = height;
    if (!CGRectIsNull(v277))
    {
      v15 = x;
      v270 = height;
      pass = [(PKPassFaceView *)self pass];
      [pass logoRect];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v278.origin.x = v18;
      v278.origin.y = v20;
      v278.size.width = v22;
      v278.size.height = v24;
      if (CGRectIsNull(v278))
      {
        x = v15;
        v279.origin.x = v15;
        v279.origin.y = y;
        v279.size.width = width;
        height = v270;
        v279.size.height = v270;
        v25 = CGRectGetMinX(v279);
      }

      else
      {
        v280.origin.x = v18;
        v280.origin.y = v20;
        v280.size.width = v22;
        v280.size.height = v24;
        v25 = CGRectGetMaxX(v280) + 8.0;
        height = v270;
        x = v15;
      }

      v281.origin.x = x;
      v281.origin.y = y;
      v281.size.width = v14;
      v281.size.height = height;
      [(UILabel *)self->_logoLabel sizeThatFits:CGRectGetMaxX(v281) - v25, 1.79769313e308];
      logoLabel = self->_logoLabel;
      UIRectCenteredYInRect();
      [(UILabel *)logoLabel setFrame:?];
    }
  }

  v27 = v14;
  v262 = v14;
  [(UILabel *)self->_flightCodeLabel sizeThatFits:v14, 1.79769313e308];
  v29 = v28;
  v30 = *&height;
  v32 = v31;
  [(UILabel *)self->_dateLabel sizeThatFits:v27, 1.79769313e308];
  v268 = v33;
  v271 = v34;
  v35 = v32 + v34 + -2.0;
  v36 = PKContentAlignmentMake();
  v37.n128_u64[0] = 0;
  v38.n128_f64[0] = v35;
  v39.n128_f64[0] = x;
  v40.n128_f64[0] = y;
  v41.n128_f64[0] = width;
  v42.n128_u64[0] = v30;
  PKSizeAlignedInRect(v36, v37, v38, v39, v40, v41, v42, v43);
  MinY = CGRectGetMinY(v282);
  [(UILabel *)self->_flightCodeLabel setFrame:*&v274 - MinX - v29, MinY, v29, v32];
  v283.origin.x = *&v274 - MinX - v29;
  v283.origin.y = MinY;
  v283.size.width = v29;
  v283.size.height = v32;
  [(UILabel *)self->_dateLabel setFrame:*&v274 - MinX - v268, CGRectGetMaxY(v283) + -2.0, v268, v271];
  [(UIImageView *)self->_transitImageView frame];
  v45 = *MEMORY[0x1E695EFF8];
  v46 = *(MEMORY[0x1E695EFF8] + 8);
  v47 = 28.0;
  if (*&v274 < 343.0)
  {
    v47 = 8.0;
  }

  v260 = v47;
  v48 = 9.0;
  if (*&v274 < 343.0)
  {
    v48 = 5.0;
  }

  v261 = v48;
  v269 = *(MEMORY[0x1E695EFF8] + 8);
  v272 = *MEMORY[0x1E695EFF8];
  UIRectCenteredXInRect();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  [(UIImageView *)self->_transitImageView setFrame:?];
  v251 = v262 + -20.0;
  [(UILabel *)self->_departureCityLabel textRectForBounds:1 limitedToNumberOfLines:v45, v46];
  v58.n128_u64[0] = v57.n128_u64[0];
  v60.n128_u64[0] = v59;
  PKSizeCeilToPixel(v58, v60, v57);
  v62 = v61;
  v64 = v63;
  v263 = *&v63;
  [(UILabel *)self->_departureAirportLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  PKSizeCeilToPixel(v65, v66, v67);
  v256 = v68;
  v70 = v69;
  [(UILabel *)self->_departureDateLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  PKSizeCeilToPixel(v71, v72, v73);
  v258 = v74;
  v253 = v75;
  v76 = v64 + v70 + v75 + -6.0;
  v284.origin.x = v50;
  v284.origin.y = v52;
  v284.size.width = v54;
  v284.size.height = v56;
  v77 = CGRectGetMinY(v284);
  v285.origin.x = v50;
  v285.origin.y = v52;
  v285.size.width = v54;
  v285.size.height = v56;
  v78 = CGRectGetHeight(v285);
  v79.n128_u64[0] = 0.5;
  v80.n128_f64[0] = v77 + (v78 - v76) * 0.5;
  PKFloatCeilToPixel(v80, v79);
  v82 = *&v81;
  v250 = *&v62;
  [(UILabel *)self->_departureCityLabel setFrame:MinX, v81, v62, *&v263];
  v83 = PKContentAlignmentMake();
  v84.n128_u64[0] = v256;
  v85.n128_f64[0] = v70;
  v86.n128_f64[0] = MinX;
  v87.n128_u64[0] = v82;
  v88.n128_f64[0] = v62;
  v89.n128_u64[0] = v263;
  PKSizeAlignedInRect(v83, v84, v85, v86, v87, v88, v89, v90);
  v92 = *&v91;
  v94 = v93;
  v96 = v95;
  v98 = v70 + -2.0 + v97;
  [(UILabel *)self->_departureAirportLabel setFrame:v91, v98];
  v99 = PKContentAlignmentMake();
  v100.n128_u64[0] = v258;
  v101.n128_f64[0] = v253;
  v102.n128_u64[0] = v92;
  v103.n128_f64[0] = v98;
  v104.n128_u64[0] = v94;
  v105.n128_u64[0] = v96;
  PKSizeAlignedInRect(v99, v100, v101, v102, v103, v104, v105, v106);
  v257 = v108;
  v259 = v107;
  v254 = v253 + -4.0 + v109;
  v255 = v110;
  [(UILabel *)self->_departureDateLabel setFrame:?];
  [(UILabel *)self->_destinationCityLabel textRectForBounds:1 limitedToNumberOfLines:v272, v269, v251, 1.79769313e308];
  v112.n128_u64[0] = v111.n128_u64[0];
  v114.n128_u64[0] = v113;
  PKSizeCeilToPixel(v112, v114, v111);
  v116 = v115;
  v118 = v117;
  [(UILabel *)self->_destinationAirportLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  PKSizeCeilToPixel(v119, v120, v121);
  v123 = v122;
  v125 = v124;
  [(UILabel *)self->_arrivalDateLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  PKSizeCeilToPixel(v126, v127, v128);
  v252 = v129;
  v131 = v130;
  v132 = PKContentAlignmentMake();
  v133.n128_f64[0] = v116;
  v134.n128_u64[0] = v118;
  v135.n128_f64[0] = MinX;
  v136.n128_u64[0] = v82;
  v137.n128_u64[0] = v250;
  v138.n128_u64[0] = v263;
  PKSizeAlignedInRect(v132, v133, v134, v135, v136, v137, v138, v139);
  v141 = v140.n128_u64[0];
  v143 = v142;
  v145 = v144;
  v146.n128_f64[0] = *&v274 - MinX - v116;
  PKFloatFloorToPixel(v146, v140);
  v148 = v147;
  [(UILabel *)self->_destinationCityLabel setFrame:?];
  v149 = PKContentAlignmentMake();
  v150.n128_u64[0] = v123;
  v151.n128_f64[0] = v125;
  v152.n128_u64[0] = v148;
  v153.n128_u64[0] = v141;
  v154.n128_u64[0] = v143;
  v155.n128_u64[0] = v145;
  PKSizeAlignedInRect(v149, v150, v151, v152, v153, v154, v155, v156);
  v158 = *&v157;
  v160 = v159;
  v162 = v161;
  v164 = v125 + -2.0 + v163;
  [(UILabel *)self->_destinationAirportLabel setFrame:v157, v164];
  v165 = PKContentAlignmentMake();
  v166.n128_u64[0] = v252;
  v167.n128_u64[0] = v131;
  v168.n128_u64[0] = v158;
  v169.n128_f64[0] = v164;
  v170.n128_u64[0] = v160;
  v171.n128_u64[0] = v162;
  PKSizeAlignedInRect(v165, v166, v167, v168, v169, v170, v171, v172);
  [(UILabel *)self->_arrivalDateLabel setFrame:?];
  [(UILabel *)self->_passengerNameLabel textRectForBounds:1 limitedToNumberOfLines:v272, v269];
  v174.n128_u64[0] = v173.n128_u64[0];
  v176.n128_u64[0] = v175;
  PKSizeCeilToPixel(v174, v176, v173);
  v178 = v177;
  v180 = v179;
  v286.size.width = v257;
  v286.origin.x = v259;
  v286.origin.y = v254;
  v286.size.height = v255;
  v181 = v260 + CGRectGetMaxY(v286);
  [(UILabel *)self->_passengerNameLabel setFrame:MinX, v181, v178, v180];
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView sizeForBoundingSize:2 limitedToNumberOfLines:v264 + 6.0, 1.79769313e308];
  v183 = v182;
  v185 = v184;
  v287.origin.x = MinX;
  v287.origin.y = v181;
  v287.size.width = v178;
  v287.size.height = v180;
  v186 = CGRectGetMinX(v287) + -3.0;
  v288.origin.x = MinX;
  v288.origin.y = v181;
  v288.size.width = v178;
  v288.size.height = v180;
  v187 = v261 + CGRectGetMaxY(v288);
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setFrame:v186, v187, v183, v185];
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView sizeForBoundingSize:1 limitedToNumberOfLines:v264 + 6.0, 1.79769313e308];
  if (*&v274 >= 343.0 && v185 <= v188)
  {
    v190 = 15.0;
  }

  else
  {
    v190 = 5.0;
  }

  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView fittedSizeFor:v264, 1.79769313e308, *&v274];
  v192 = v191;
  v194 = v193;
  v289.origin.x = v186;
  v289.origin.y = v187;
  v289.size.width = v183;
  v289.size.height = v185;
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setFrame:MinX, CGRectGetMaxY(v289) + v190, v192, v194];
  customBarcodeView = self->_customBarcodeView;
  if (customBarcodeView)
  {
    barcode = [(PKBarcodeStickerView *)customBarcodeView barcode];
    [barcode sizeForPassStyle:style];
    [(PKBarcodeStickerView *)self->_customBarcodeView sizeThatFits:?];
    v198 = v197;
    v200 = v199;
    v201 = PKContentAlignmentMake();
    v202.n128_u64[0] = v198;
    v203.n128_u64[0] = v200;
    v204 = *&v272;
    v205.n128_f64[0] = v272;
    v206.n128_f64[0] = v269;
    v207.n128_u64[0] = v274;
    v208.n128_u64[0] = v266;
    PKSizeAlignedInRect(v201, v202, v203, v205, v206, v207, v208, v209);
    v213 = v212;
    v214 = v211;
    v216 = v215;
    v217 = 24.0;
    if (*&v274 < 343.0)
    {
      v217 = 8.0;
    }

    v218 = v210 - v217;
    [(PKBarcodeStickerView *)self->_customBarcodeView setFrame:v213, v210 - v217, v211];

    v219 = *&v269;
  }

  else
  {
    v213 = *MEMORY[0x1E695F050];
    v218 = *(MEMORY[0x1E695F050] + 8);
    v214 = *(MEMORY[0x1E695F050] + 16);
    v216 = *(MEMORY[0x1E695F050] + 24);
    v219 = *&v269;
    v204 = *&v272;
  }

  footerImageView = self->_footerImageView;
  if (footerImageView)
  {
    [(UIImageView *)footerImageView bounds];
    v222 = v221;
    v223 = v218;
    v224 = v216;
    v225 = v214;
    v226 = v213;
    v228 = v227;
    v229 = PKContentAlignmentMake();
    v230.n128_u64[0] = v222;
    v267 = *&v228;
    v231.n128_u64[0] = v228;
    v232 = v226;
    v233 = v225;
    v234 = v224;
    v235 = v223;
    v236.n128_u64[0] = v204;
    v237.n128_u64[0] = v219;
    v238.n128_u64[0] = v274;
    v239.n128_u64[0] = v266;
    PKSizeAlignedInRect(v229, v230, v231, v236, v237, v238, v239, v240);
    v242 = v241;
    v244 = v243;
    v273 = v245;
    v247 = v246;
    v290.origin.x = v232;
    v290.origin.y = v235;
    v290.size.width = v233;
    v290.size.height = v234;
    if (CGRectIsNull(v290))
    {
      v248 = 24.0;
      if (*&v274 < 343.0)
      {
        v248 = 8.0;
      }

      v249 = v244 - v248;
    }

    else
    {
      v291.origin.x = v232;
      v291.origin.y = v235;
      v291.size.width = v233;
      v291.size.height = v234;
      v249 = CGRectGetMinY(v291) + -6.0 - v267;
    }

    [(UIImageView *)self->_footerImageView setFrame:v242, v249, v273, v247];
  }
}

- (id)_transitGlyphForTransitType:(int64_t)type
{
  if (type > 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E8019108[type];
    v4 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8] scale:1];
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3 withConfiguration:v4];
  }

  return v5;
}

- (id)_footerImageGlyphIfExists
{
  pass = [(PKPassFaceView *)self pass];
  v4 = [pass stringsForSemanticKey:*MEMORY[0x1E69BBF48]];
  if ([v4 count])
  {
    v5 = [pass stringsForSemanticKey:*MEMORY[0x1E69BBF28]];
    v6 = PKTransitSecurityProgramsFromStrings();
    v7 = PKTransitSecurityProgramsFromStrings();
    if ((v7 & v6 & 2) != 0)
    {
      v8 = @"TSAPreCheckTouchless";
    }

    else if (v7 & v6)
    {
      colorProfile = [(PKPassFaceView *)self colorProfile];
      backgroundColor = [colorProfile backgroundColor];
      [backgroundColor CGColor];
      PKColorGetLightness();
      v13 = v12;

      if (v13 < 0.85)
      {
        v14 = @"_Light";
      }

      else
      {
        v14 = @"_Dark";
      }

      v8 = [@"TSAPreCheck" stringByAppendingString:v14];
    }

    else
    {
      v8 = 0;
    }

    v9 = PKUIImageNamed(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setShowsBarcodeView:(BOOL)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  showsBarcodeView = [(PKPassFrontFaceView *)self showsBarcodeView];
  v13.receiver = self;
  v13.super_class = PKPassSemanticBoardingPassFaceView;
  [(PKPassFrontFaceView *)&v13 setShowsBarcodeView:viewCopy animated:animatedCopy];
  if (showsBarcodeView != viewCopy && self->_customBarcodeView)
  {
    if (viewCopy)
    {
      [PKPassFrontFaceView insertContentView:"insertContentView:ofType:" ofType:?];
      [(PKPassFrontFaceView *)self insertContentView:self->_footerImageView ofType:2];
    }

    v8 = 0.2;
    if (!animatedCopy)
    {
      v8 = 0.0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PKPassSemanticBoardingPassFaceView_setShowsBarcodeView_animated___block_invoke;
    v11[3] = &unk_1E8013F80;
    v11[4] = self;
    v12 = viewCopy;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__PKPassSemanticBoardingPassFaceView_setShowsBarcodeView_animated___block_invoke_2;
    v9[3] = &unk_1E8013E98;
    v10 = viewCopy;
    v9[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:v9 completion:v8];
  }
}

uint64_t __67__PKPassSemanticBoardingPassFaceView_setShowsBarcodeView_animated___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 1056) setAlpha:v1];
}

id *__67__PKPassSemanticBoardingPassFaceView_setShowsBarcodeView_animated___block_invoke_2(id *result)
{
  if ((result[5] & 1) == 0)
  {
    v2 = result;
    [result[4] removeContentView:*(result[4] + 132) ofType:2];
    v3 = v2[4];
    v4 = v3[133];

    return [v3 removeContentView:v4 ofType:2];
  }

  return result;
}

@end