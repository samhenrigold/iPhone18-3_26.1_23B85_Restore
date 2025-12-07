@interface NTKLeghornPickerCollectionViewCell
- (NTKLeghornPickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation NTKLeghornPickerCollectionViewCell

- (NTKLeghornPickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v36.receiver = self;
  v36.super_class = NTKLeghornPickerCollectionViewCell;
  v7 = [(NTKLeghornPickerCollectionViewCell *)&v36 initWithFrame:?];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D756B8]);
    v11 = objc_msgSend_initWithFrame_(v8, v9, v10, x, y, width, height);
    label = v7->_label;
    v7->_label = v11;

    v15 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v13, v14);
    objc_msgSend_setTextColor_(v7->_label, v16, v15);

    objc_msgSend_setTextAlignment_(v7->_label, v17, 1);
    objc_msgSend_setNumberOfLines_(v7->_label, v18, 0);
    v21 = objc_msgSend_layer(v7->_label, v19, v20);
    objc_msgSend_setAnchorPoint_(v21, v22, v23, 0.5, 0.5);

    v26 = objc_msgSend_contentView(v7, v24, v25);
    objc_msgSend_addSubview_(v26, v27, v7->_label);

    v30 = objc_msgSend_layer(v7, v28, v29);
    v33 = objc_msgSend_layer(v7->_label, v31, v32);
    objc_msgSend_setLabelLayer_(v30, v34, v33);
  }

  return v7;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = NTKLeghornPickerCollectionViewCell;
  [(NTKLeghornPickerCollectionViewCell *)&v29 layoutSubviews];
  v5 = objc_msgSend_contentView(self, v3, v4);
  objc_msgSend_bounds(v5, v6, v7);
  v9 = v8;
  objc_msgSend_bounds(self, v10, v11);
  objc_msgSend_setBounds_(self->_label, v12, v13, 0.0, 0.0, v9);

  v16 = objc_msgSend_contentView(self, v14, v15);
  objc_msgSend_bounds(v16, v17, v18);
  v20 = v19 * 0.5;
  v23 = objc_msgSend_contentView(self, v21, v22);
  objc_msgSend_bounds(v23, v24, v25);
  objc_msgSend_setCenter_(self->_label, v27, v28, v20, v26 * 0.5);
}

@end