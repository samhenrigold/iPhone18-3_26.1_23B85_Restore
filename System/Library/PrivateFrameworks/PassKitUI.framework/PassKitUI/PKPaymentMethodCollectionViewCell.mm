@interface PKPaymentMethodCollectionViewCell
- (void)configureWithItem:(id)item style:(unint64_t)style delegate:(id)delegate;
@end

@implementation PKPaymentMethodCollectionViewCell

- (void)configureWithItem:(id)item style:(unint64_t)style delegate:(id)delegate
{
  v65[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  delegateCopy = delegate;
  paymentPass = [itemCopy paymentPass];
  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  textProperties = [subtitleCellConfiguration textProperties];
  v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
  [textProperties setFont:v13];

  if (paymentPass)
  {
    [paymentPass localizedDescription];
  }

  else
  {
    textProperties2 = [subtitleCellConfiguration textProperties];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [textProperties2 setColor:secondaryLabelColor];

    [itemCopy paymentMethodName];
  }
  v16 = ;
  [subtitleCellConfiguration setText:v16];

  if (style)
  {
    if (style != 1)
    {
      goto LABEL_11;
    }

    [subtitleCellConfiguration setDirectionalLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
    v17 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v18 = MEMORY[0x1E69DC628];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __70__PKPaymentMethodCollectionViewCell_configureWithItem_style_delegate___block_invoke;
    v56[3] = &unk_1E8016230;
    v19 = itemCopy;
    v57 = v19;
    v58 = v17;
    v59 = delegateCopy;
    v20 = v17;
    v21 = [v18 actionWithHandler:v56];
    [v20 addAction:v21 forControlEvents:4096];

    [v20 setOn:{objc_msgSend(v19, "isSelected")}];
    v22 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v20 placement:1];
    [v22 setMaintainsFixedSize:1];
    v65[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
    [(PKPaymentMethodCollectionViewCell *)self setAccessories:v23];

    goto LABEL_9;
  }

  [subtitleCellConfiguration setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  if ([itemCopy isSelected])
  {
    v20 = objc_alloc_init(MEMORY[0x1E69DC788]);
    v64 = v20;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
    [(PKPaymentMethodCollectionViewCell *)self setAccessories:v24];

LABEL_9:
    goto LABEL_11;
  }

  [(PKPaymentMethodCollectionViewCell *)self setAccessories:MEMORY[0x1E695E0F0]];
LABEL_11:
  balance = [itemCopy balance];
  if (balance)
  {
    v26 = [objc_alloc(MEMORY[0x1E69655F0]) initWithShape:0];
    [v26 setScale:2];
    [v26 setStyle:1];
    tertiarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
    [v26 setColor:tertiarySystemGroupedBackgroundColor];

    v28 = *MEMORY[0x1E69655D0];
    v63[0] = v26;
    v29 = *MEMORY[0x1E69DB650];
    v62[0] = v28;
    v62[1] = v29;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v63[1] = secondaryLabelColor2;
    v62[2] = *MEMORY[0x1E69DB648];
    v31 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    v63[2] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];

    formattedStringValue = [balance formattedStringValue];
    v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:formattedStringValue attributes:v32];
    [subtitleCellConfiguration setSecondaryAttributedText:v34];
  }

  else
  {
    v60[0] = *MEMORY[0x1E69DB650];
    secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v60[1] = *MEMORY[0x1E69DB648];
    v61[0] = secondaryLabelColor3;
    v36 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    v61[1] = v36;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];

    v37 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (paymentPass)
    {
      v38 = PKSanitizedPrimaryAccountRepresentationForPass();
      v32 = [v37 initWithString:v38 attributes:v26];

      [subtitleCellConfiguration setSecondaryAttributedText:v32];
    }

    else
    {
      v39 = PKDeviceSpecificLocalizedStringKeyForKey(@"PASS_DETAILS_AUTO_RELOAD_PAYMENT_METHOD_NOT_ON_THIS_DEVICE", 0);
      v40 = PKLocalizedPaymentString(v39);
      v32 = [v37 initWithString:v40 attributes:v26];

      [subtitleCellConfiguration setSecondaryAttributedText:v32];
      [(PKPaymentMethodCollectionViewCell *)self setUserInteractionEnabled:0];
    }
  }

  PKPassFrontFaceContentSize();
  v43 = v41.n128_f64[0];
  v44 = v42.n128_f64[0];
  if (paymentPass)
  {
    v45 = [[PKPassView alloc] initWithPass:paymentPass content:4 suppressedContent:1911];
    [(PKPassView *)v45 setModallyPresented:1];
    [(PKPassView *)v45 setPaused:1];
    v46.n128_f64[0] = v44 / v43 * 60.0;
    PKFloatRoundToPixel(v46, v47);
    v49 = [(PKPassView *)v45 snapshotOfFrontFaceWithRequestedSize:60.0, v48];
    [subtitleCellConfiguration setImage:v49];
  }

  else
  {
    v50 = MEMORY[0x1E69B8950];
    v41.n128_f64[0] = v42.n128_f64[0] / v41.n128_f64[0] * 60.0;
    PKFloatRoundToPixel(v41, v42);
    v45 = [v50 constraintsWithMaxSize:{60.0, v51}];
    v52 = MEMORY[0x1E69B8948];
    v53 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v49 = [v52 imageNamed:@"PlaceholderCardArt_Large" inBundle:v53];

    v54 = [v49 resizedImageWithConstraints:v45];
    v55 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v54];
    [subtitleCellConfiguration setImage:v55];
  }

  [(PKPaymentMethodCollectionViewCell *)self setContentConfiguration:subtitleCellConfiguration];
}

uint64_t __70__PKPaymentMethodCollectionViewCell_configureWithItem_style_delegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSelected:{objc_msgSend(*(a1 + 40), "isOn")}];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 paymentMethodCellDidToggleItem:v3];
}

@end