@interface PKPaymentSetupInitialCardEducationIconsView
- (CGSize)sizeThatFits:(CGSize)result;
- (PKPaymentSetupInitialCardEducationIconsView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PKPaymentSetupInitialCardEducationIconsView

- (PKPaymentSetupInitialCardEducationIconsView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = PKPaymentSetupInitialCardEducationIconsView;
  v3 = [(PKPaymentSetupInitialCardEducationIconsView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = vdup_n_s32(PKUIGetMinScreenType() > 3);
    v5.i64[0] = v4.u32[0];
    v5.i64[1] = v4.u32[1];
    v6 = vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL));
    v3->_applePayIconSize = vbslq_s8(v6, xmmword_1BE115710, xmmword_1BE115700);
    v3->_contactlessIconSize = vbslq_s8(v6, xmmword_1BE115730, xmmword_1BE115720);
    v7 = PKPassKitUIBundle();
    v8 = PKUIScreenScale();
    v9 = [v7 URLForResource:@"ApplePayLogoBlackBorder" withExtension:@"pdf"];
    v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v11 = PKUIImageFromPDF(v9, v3->_applePayIconSize.width, v3->_applePayIconSize.height, v8);
    v12 = [v11 imageWithRenderingMode:2];
    v13 = [v10 initWithImage:v12];
    applePayIcon = v3->_applePayIcon;
    v3->_applePayIcon = v13;

    [(UIImageView *)v3->_applePayIcon setContentMode:1];
    v15 = v3->_applePayIcon;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v15 setTintColor:labelColor];

    [(PKPaymentSetupInitialCardEducationIconsView *)v3 addSubview:v3->_applePayIcon];
    v17 = [v7 URLForResource:@"ContactlessSymbol" withExtension:@"pdf"];

    v18 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v19 = PKUIImageFromPDF(v17, v3->_contactlessIconSize.width, v3->_contactlessIconSize.height, v8);
    v20 = [v19 imageWithRenderingMode:2];
    v21 = [v18 initWithImage:v20];
    contactlessIcon = v3->_contactlessIcon;
    v3->_contactlessIcon = v21;

    [(UIImageView *)v3->_contactlessIcon setContentMode:1];
    v23 = v3->_contactlessIcon;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v23 setTintColor:labelColor2];

    [(PKPaymentSetupInitialCardEducationIconsView *)v3 addSubview:v3->_contactlessIcon];
  }

  return v3;
}

- (void)layoutSubviews
{
  v67.receiver = self;
  v67.super_class = PKPaymentSetupInitialCardEducationIconsView;
  [(PKPaymentSetupInitialCardEducationIconsView *)&v67 layoutSubviews];
  [(PKPaymentSetupInitialCardEducationIconsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKPaymentSetupInitialCardEducationIconsView *)self _shouldReverseLayoutDirection];
  PKSizeAspectFit();
  v12 = v11;
  v65 = *&v11;
  v66 = v13;
  PKSizeAspectFit();
  v15 = *&v14;
  v17 = v16;
  v18.n128_f64[0] = fmax(v12 + v14 + 20.0, v8);
  v19.n128_u64[0] = v10;
  v20.n128_u64[0] = v4;
  v21.n128_u64[0] = v6;
  v22.n128_f64[0] = v8;
  v23.n128_u64[0] = v10;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v18, v19, v20, v21, v22, v23, v24);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = PKContentAlignmentMake();
  v34.n128_u64[0] = v15;
  v35.n128_u64[0] = v17;
  v36.n128_u64[0] = v26;
  v37.n128_u64[0] = v28;
  v38.n128_u64[0] = v30;
  v39.n128_u64[0] = v32;
  PKSizeAlignedInRect(v33, v34, v35, v36, v37, v38, v39, v40);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = PKContentAlignmentMake();
  v50.n128_u64[0] = v65;
  v51.n128_u64[0] = v66;
  v52.n128_u64[0] = v26;
  v53.n128_u64[0] = v28;
  v54.n128_u64[0] = v30;
  v55.n128_u64[0] = v32;
  PKSizeAlignedInRect(v49, v50, v51, v52, v53, v54, v55, v56);
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  [(UIImageView *)self->_applePayIcon setFrame:v42, v44, v46, v48];
  [(UIImageView *)self->_contactlessIcon setFrame:v58, v60, v62, v64];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  height = self->_applePayIconSize.height;
  if (height <= self->_contactlessIconSize.height)
  {
    height = self->_contactlessIconSize.height;
  }

  v4 = height + 20.0;
  result.height = v4;
  return result;
}

@end