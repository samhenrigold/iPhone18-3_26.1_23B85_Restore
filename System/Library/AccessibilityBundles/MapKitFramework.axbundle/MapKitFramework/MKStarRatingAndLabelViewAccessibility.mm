@interface MKStarRatingAndLabelViewAccessibility
+ (id)ratingAndReviewsAsAttributedString:(double)string style:(int64_t)style font:(id)font numberOfReviews:(unint64_t)reviews textColor:(id)color theme:(id)theme;
+ (id)starRatingAndProviderAsAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font showReviewsOrTips:(BOOL)tips showNumberOfReviews:(BOOL)reviews ratingStyle:(int64_t)style theme:(id)theme;
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation MKStarRatingAndLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKStarRatingAndLabelView" hasClassMethod:@"starRatingAndProviderAsAttributedStringForMapItem: textColor: font: showReviewsOrTips: showNumberOfReviews: ratingStyle: theme:" withFullSignature:{"@", "@", "@", "@", "B", "B", "q", "@", 0}];
  [validationsCopy validateClass:@"MKStarRatingAndLabelView" hasClassMethod:@"ratingAndReviewsAsAttributedString: style: font: numberOfReviews: textColor:theme:" withFullSignature:{"@", "d", "q", "@", "Q", "@", "@", 0}];
  [validationsCopy validateClass:@"MKStarRatingView"];
}

+ (id)ratingAndReviewsAsAttributedString:(double)string style:(int64_t)style font:(id)font numberOfReviews:(unint64_t)reviews textColor:(id)color theme:(id)theme
{
  v20[1] = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS___MKStarRatingAndLabelViewAccessibility;
  v9 = objc_msgSendSuper2(&v18, sel_ratingAndReviewsAsAttributedString_style_font_numberOfReviews_textColor_theme_, style, font, reviews, color, theme);
  v10 = [v9 mutableCopy];
  v11 = UIAXStarRatingStringForRating();
  v12 = MEMORY[0x29EDBA0F8];
  v13 = AXMapsLocString(@"REVIEWS_COUNT_FORMAT");
  reviews = [v12 localizedStringWithFormat:v13, reviews];
  v14 = __AXStringForVariables();

  v19 = *MEMORY[0x29EDBDA20];
  v20[0] = v14;
  v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v20 forKeys:&v19 count:{1, reviews, @"__AXStringForVariablesSentinel"}];
  [v10 addAttributes:v15 range:{0, objc_msgSend(v10, "length")}];

  return v10;
}

+ (id)starRatingAndProviderAsAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font showReviewsOrTips:(BOOL)tips showNumberOfReviews:(BOOL)reviews ratingStyle:(int64_t)style theme:(id)theme
{
  reviewsCopy = reviews;
  tipsCopy = tips;
  itemCopy = item;
  v28.receiver = self;
  v28.super_class = &OBJC_METACLASS___MKStarRatingAndLabelViewAccessibility;
  v16 = objc_msgSendSuper2(&v28, sel_starRatingAndProviderAsAttributedStringForMapItem_textColor_font_showReviewsOrTips_showNumberOfReviews_ratingStyle_theme_, itemCopy, color, font, tipsCopy, reviewsCopy, style, theme);
  if ([itemCopy _sampleSizeForUserRatingScore])
  {
    _reviewsDisplayName = [itemCopy _reviewsDisplayName];
    _sampleSizeForUserRatingScore = [itemCopy _sampleSizeForUserRatingScore];
    [itemCopy _normalizedUserRatingScore];
    v19 = UIAXStarRatingStringForRating();
    if (reviewsCopy)
    {
      v20 = [_reviewsDisplayName length];
      v21 = MEMORY[0x29EDBA0F8];
      if (v20)
      {
        v22 = AXMapsLocString(@"REVIEWS_COUNT_WITH_PROVIDER_FORMAT");
        [v21 localizedStringWithFormat:v22, _sampleSizeForUserRatingScore, _reviewsDisplayName];
      }

      else
      {
        v22 = AXMapsLocString(@"REVIEWS_COUNT_FORMAT");
        [v21 localizedStringWithFormat:v22, _sampleSizeForUserRatingScore, v27];
      }
      v23 = ;

      v26 = v23;
      v27 = @"__AXStringForVariablesSentinel";
      v24 = __AXStringForVariables();

      v19 = v24;
    }

    [v16 setAccessibilityLabel:{v19, v26, v27}];
  }

  return v16;
}

@end