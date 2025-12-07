@interface MKMapItem(MUOverallRatingPlatterViewModel)
- (id)attributionText;
@end

@implementation MKMapItem(MUOverallRatingPlatterViewModel)

- (id)attributionText
{
  v15[3] = *MEMORY[0x1E69E9840];
  _reviewsAttribution = [self _reviewsAttribution];
  v3 = +[MUInfoCardStyle attributionTintColor];
  v4 = [self _attributionFor:_reviewsAttribution sourceStringFormat:&stru_1F44CA030 moreSourceStringFormat:&stru_1F44CA030 imageTintColor:v3];

  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v4];
  v14[0] = *MEMORY[0x1E69DB650];
  v6 = +[MUInfoCardStyle tintColor];
  v7 = *MEMORY[0x1E69DB610];
  v15[0] = v6;
  v15[1] = &unk_1F450D958;
  v8 = *MEMORY[0x1E69DB648];
  v14[1] = v7;
  v14[2] = v8;
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  smallAttributionFont = [mEMORY[0x1E696F200] smallAttributionFont];
  v15[2] = smallAttributionFont;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  [v5 addAttributes:v11 range:{0, objc_msgSend(v5, "length")}];

  v12 = [v5 copy];

  return v12;
}

@end