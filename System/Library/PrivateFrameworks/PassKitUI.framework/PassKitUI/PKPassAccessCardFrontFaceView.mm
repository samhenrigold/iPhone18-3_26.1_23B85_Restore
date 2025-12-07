@interface PKPassAccessCardFrontFaceView
- (id)templateForLayoutMode:(int64_t)mode;
@end

@implementation PKPassAccessCardFrontFaceView

- (id)templateForLayoutMode:(int64_t)mode
{
  PKPassFrontFaceContentSize();
  v6 = v5;
  pass = [(PKPassFaceView *)self pass];
  [pass thumbnailRect];
  x = v97.origin.x;
  y = v97.origin.y;
  width = v97.size.width;
  height = v97.size.height;
  if (CGRectIsEmpty(v97))
  {
    [pass stripRect];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v98.origin.x = x;
  v98.origin.y = y;
  v98.size.width = width;
  v98.size.height = height;
  if (CGRectIsEmpty(v98))
  {
    x = *MEMORY[0x1E695EFF8];
    y = *(MEMORY[0x1E695EFF8] + 8);
    height = 65.0;
    width = v6;
  }

  v16 = objc_alloc_init(PKPassFaceTemplate);
  defaultFieldTemplate = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  [defaultFieldTemplate setTextAlignment:0];

  defaultFieldTemplate2 = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  v19 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
  [defaultFieldTemplate2 setLabelFont:v19];

  defaultFieldTemplate3 = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  [defaultFieldTemplate3 setTextAlignment:0];

  v21 = [MEMORY[0x1E69DB878] systemFontOfSize:22.0 weight:*MEMORY[0x1E69DB980]];
  v22 = *MEMORY[0x1E69DDCF8];
  v23 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v23 size:17.0];

  [v21 leading];
  v26 = v25;
  [v24 leading];
  v28 = v27;
  [v21 lineHeight];
  v30.n128_f64[0] = v26 + v29;
  PKFloatCeilToPixel(v30, v31);
  v95 = v32;
  [v24 lineHeight];
  v34.n128_f64[0] = v28 + v33;
  PKFloatCeilToPixel(v34, v35);
  v94 = v36;
  [v21 ascender];
  v93 = v6;
  v38 = v37;
  [v21 capHeight];
  v40.n128_u64[0] = 15.0;
  v41.n128_f64[0] = v39 - v38 + 15.0;
  PKFloatFloorToPixel(v41, v40);
  v43 = v42;
  [v21 descender];
  v45 = v26 - v44;
  [v24 ascender];
  v46 = width;
  v47 = x;
  v49 = v48;
  [v24 capHeight];
  v51.n128_u64[0] = 12.0;
  v52.n128_f64[0] = 12.0 - (v45 + v49 - v50);
  PKFloatFloorToPixel(v52, v51);
  v54 = fmax(v53, 0.0);
  v55 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v55 setBucketAlignment:3];
  v99.origin.x = v47;
  v99.origin.y = y;
  v99.size.width = v46;
  v99.size.height = height;
  [(PKPassBucketTemplate *)v55 setBucketRect:15.0, v43 + CGRectGetMaxY(v99), v93 + -30.0, v94 + v95 + v54];
  [(PKPassBucketTemplate *)v55 setMaxFields:1];
  defaultFieldTemplate4 = [(PKPassBucketTemplate *)v55 defaultFieldTemplate];
  [defaultFieldTemplate4 setTextAlignment:1];
  [defaultFieldTemplate4 setValueSignificant:1];
  [defaultFieldTemplate4 setSuppressesEmptyLabel:1];
  [defaultFieldTemplate4 setLabelCaseStyle:3];
  v57.n128_f64[0] = v26 + v54;
  PKFloatRoundToPixel(v57, v58);
  [defaultFieldTemplate4 setVerticalPadding:?];
  [defaultFieldTemplate4 setValueFont:v21];
  [defaultFieldTemplate4 setLabelFont:v24];
  [(PKPassFaceTemplate *)v16 addBucketTemplate:v55];

  LODWORD(defaultFieldTemplate4) = mode == 0;
  v59 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];
  v60 = [v59 fontDescriptorWithSymbolicTraits:2];

  v61 = [MEMORY[0x1E69DB878] fontWithDescriptor:v60 size:11.0];
  v62 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v22];

  v63 = [MEMORY[0x1E69DB878] fontWithDescriptor:v62 size:17.0];

  [v61 leading];
  v65 = v64;
  [v63 leading];
  v67 = v66;
  [v61 lineHeight];
  v69.n128_f64[0] = v65 + v68;
  PKFloatCeilToPixel(v69, v70);
  v72 = v71;
  [v63 lineHeight];
  v74.n128_f64[0] = v67 + v73;
  PKFloatCeilToPixel(v74, v75);
  v77 = v76;
  v78 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v78 setBucketAlignment:3];
  v79 = v72 + -1.0 + v77;
  [(PKPassBucketTemplate *)v78 setBucketRect:15.0, dbl_1BE114B20[defaultFieldTemplate4], v93 + -30.0, v79];
  [(PKPassBucketTemplate *)v78 setMaxFields:1];
  defaultFieldTemplate5 = [(PKPassBucketTemplate *)v78 defaultFieldTemplate];
  [defaultFieldTemplate5 setLabelFont:v61];

  defaultFieldTemplate6 = [(PKPassBucketTemplate *)v78 defaultFieldTemplate];
  [defaultFieldTemplate6 setValueFont:v63];

  defaultFieldTemplate7 = [(PKPassBucketTemplate *)v78 defaultFieldTemplate];
  v83 = v65 + -1.0;
  v84.n128_f64[0] = v83;
  PKFloatRoundToPixel(v84, v85);
  [defaultFieldTemplate7 setVerticalPadding:?];

  [(PKPassFaceTemplate *)v16 addBucketTemplate:v78];
  v86 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v86 setBucketAlignment:3];
  [(PKPassBucketTemplate *)v86 setBucketRect:15.0, dbl_1BE114B30[defaultFieldTemplate4], v93 + -30.0, v79];
  [(PKPassBucketTemplate *)v86 setMinFieldPadding:12.0];
  [(PKPassBucketTemplate *)v86 setMaxFields:4];
  defaultFieldTemplate8 = [(PKPassBucketTemplate *)v86 defaultFieldTemplate];
  [defaultFieldTemplate8 setLabelFont:v61];

  defaultFieldTemplate9 = [(PKPassBucketTemplate *)v86 defaultFieldTemplate];
  [defaultFieldTemplate9 setValueFont:v63];

  defaultFieldTemplate10 = [(PKPassBucketTemplate *)v86 defaultFieldTemplate];
  v90.n128_f64[0] = v83;
  PKFloatRoundToPixel(v90, v91);
  [defaultFieldTemplate10 setVerticalPadding:?];

  [(PKPassFaceTemplate *)v16 addBucketTemplate:v86];

  return v16;
}

@end