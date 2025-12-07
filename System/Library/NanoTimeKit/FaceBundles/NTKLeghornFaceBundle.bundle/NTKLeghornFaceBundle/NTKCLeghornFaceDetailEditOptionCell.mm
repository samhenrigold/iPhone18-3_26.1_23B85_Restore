@interface NTKCLeghornFaceDetailEditOptionCell
- (BOOL)isChecked;
- (NTKCLeghornFaceDetailEditOptionCell)initWithSection:(id)section category:(unint64_t)category name:(id)name all:(BOOL)all filter:(id)filter;
- (double)_reservedSizeForImage;
- (id)_checkmarkImage;
- (void)_setupSubviews;
- (void)setFilter:(id)filter;
- (void)setupDetails;
@end

@implementation NTKCLeghornFaceDetailEditOptionCell

- (NTKCLeghornFaceDetailEditOptionCell)initWithSection:(id)section category:(unint64_t)category name:(id)name all:(BOOL)all filter:(id)filter
{
  allCopy = all;
  sectionCopy = section;
  nameCopy = name;
  filterCopy = filter;
  v16 = objc_opt_class();
  v19 = objc_msgSend_reuseIdentifier(v16, v17, v18);
  v43.receiver = self;
  v43.super_class = NTKCLeghornFaceDetailEditOptionCell;
  v20 = [(NTKCDetailTableViewCell *)&v43 initWithStyle:0 reuseIdentifier:v19];

  if (v20)
  {
    objc_storeStrong(&v20->_section, section);
    v20->_category = category;
    objc_storeStrong(&v20->_name, name);
    v20->_all = allCopy;
    objc_storeStrong(&v20->_filter, filter);
    v21 = objc_opt_new();
    leadingAccessoryView = v20->_leadingAccessoryView;
    v20->_leadingAccessoryView = v21;

    v23 = objc_opt_new();
    titleLabel = v20->_titleLabel;
    v20->_titleLabel = v23;

    v25 = objc_opt_new();
    valueLabel = v20->_valueLabel;
    v20->_valueLabel = v25;

    v27 = objc_alloc(MEMORY[0x277D75A68]);
    v30 = objc_msgSend_initWithFrame_(v27, v28, v29, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
    alignmentView = v20->_alignmentView;
    v20->_alignmentView = v30;

    objc_msgSend_setSelectionStyle_(v20, v32, 3);
    objc_msgSend__setupSubviews(v20, v33, v34);
    objc_msgSend_setupDetails(v20, v35, v36);
    objc_msgSend_setFilter_(v20, v37, filterCopy);
    if (v20->_category || allCopy)
    {
      v40 = objc_msgSend_secondarySystemGroupedBackgroundColor(MEMORY[0x277D75348], v38, v39);
      objc_msgSend_setBackgroundColor_(v20, v41, v40);
    }
  }

  return v20;
}

- (void)setupDetails
{
  v3 = self->_name;
  v19 = v3;
  if (v3)
  {
    objc_msgSend_setText_(self->_titleLabel, v3, v3);
  }

  else
  {
    section = self->_section;
    if (self->_all)
    {
      v7 = objc_msgSend_showAllString(section, v4, v5);
      objc_msgSend_setText_(self->_titleLabel, v8, v7);
    }

    else
    {
      v9 = objc_msgSend_name(section, v4, v5);
      objc_msgSend_setText_(self->_titleLabel, v10, v9);

      v13 = objc_msgSend_action(self->_section, v11, v12);
      objc_msgSend_setText_(self->_valueLabel, v14, v13);

      v17 = objc_msgSend_detailsCount(self->_section, v15, v16) != 0;
      objc_msgSend_setAccessoryType_(self, v18, v17);
    }
  }
}

- (BOOL)isChecked
{
  v4 = self->_name;
  if (v4)
  {
    v5 = objc_msgSend_includesCategory_named_(self->_filter, v3, self->_category, v4);
  }

  else
  {
    all = self->_all;
    v7 = objc_msgSend_selectionForFilter_(self->_section, v3, self->_filter);
    if (all)
    {
      v5 = v7 == 2;
    }

    else
    {
      v5 = v7 != 0;
    }
  }

  return v5;
}

- (void)setFilter:(id)filter
{
  filterCopy = filter;
  objc_storeStrong(&self->_filter, filter);
  if (objc_msgSend_isChecked(self, v5, v6))
  {
    v9 = objc_msgSend__checkmarkImage(self, v7, v8);
    objc_msgSend_setImage_(self->_leadingAccessoryView, v10, v9);
  }

  else
  {
    objc_msgSend_setImage_(self->_leadingAccessoryView, v7, 0);
  }
}

- (id)_checkmarkImage
{
  v2 = objc_msgSend_configurationWithWeight_(MEMORY[0x277D755D0], a2, 6);
  v4 = objc_msgSend_configurationWithTextStyle_(MEMORY[0x277D755D0], v3, *MEMORY[0x277D76918]);
  v6 = objc_msgSend_configurationByApplyingConfiguration_(v2, v5, v4);
  v8 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v7, @"checkmark", v6);

  return v8;
}

- (double)_reservedSizeForImage
{
  v2 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], a2, *MEMORY[0x277D76918]);
  objc_msgSend_pointSize(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (void)_setupSubviews
{
  v92[4] = *MEMORY[0x277D85DE8];
  v91 = objc_opt_new();
  objc_msgSend_addArrangedSubview_(self->_alignmentView, v3, self->_leadingAccessoryView);
  objc_msgSend_addArrangedSubview_(self->_alignmentView, v4, self->_titleLabel);
  objc_msgSend_addArrangedSubview_(self->_alignmentView, v5, v91);
  objc_msgSend_addArrangedSubview_(self->_alignmentView, v6, self->_valueLabel);
  v9 = objc_msgSend_contentView(self, v7, v8);
  objc_msgSend_addSubview_(v9, v10, self->_alignmentView);

  LODWORD(v11) = 1132068864;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(self->_valueLabel, v12, 0, v11);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_alignmentView, v13, 0);
  objc_msgSend_setPreservesSuperviewLayoutMargins_(self->_alignmentView, v14, 1);
  v17 = objc_msgSend_contentView(self, v15, v16);
  v20 = objc_msgSend_layoutMarginsGuide(v17, v18, v19);

  v84 = MEMORY[0x277CCAAD0];
  v89 = objc_msgSend_leadingAnchor(self->_alignmentView, v21, v22);
  v88 = objc_msgSend_leadingAnchor(v20, v23, v24);
  v87 = objc_msgSend_constraintEqualToAnchor_(v89, v25, v88);
  v92[0] = v87;
  v86 = objc_msgSend_trailingAnchor(self->_alignmentView, v26, v27);
  v85 = objc_msgSend_trailingAnchor(v20, v28, v29);
  v31 = objc_msgSend_constraintEqualToAnchor_(v86, v30, v85);
  v92[1] = v31;
  v34 = objc_msgSend_topAnchor(self->_alignmentView, v32, v33);
  v90 = v20;
  v37 = objc_msgSend_topAnchor(v20, v35, v36);
  v39 = objc_msgSend_constraintEqualToAnchor_(v34, v38, v37);
  v92[2] = v39;
  v42 = objc_msgSend_bottomAnchor(self->_alignmentView, v40, v41);
  v45 = objc_msgSend_bottomAnchor(v20, v43, v44);
  v47 = objc_msgSend_constraintEqualToAnchor_(v42, v46, v45);
  v92[3] = v47;
  v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v92, 4);
  objc_msgSend_activateConstraints_(v84, v50, v49);

  objc_msgSend_setAxis_(self->_alignmentView, v51, 0);
  objc_msgSend_setAlignment_(self->_alignmentView, v52, 3);
  objc_msgSend_setSpacing_(self->_alignmentView, v53, v54, 8.0);
  v57 = objc_msgSend_widthAnchor(self->_leadingAccessoryView, v55, v56);
  objc_msgSend__reservedSizeForImage(self, v58, v59);
  v62 = objc_msgSend_constraintEqualToConstant_(v57, v60, v61);
  objc_msgSend_setActive_(v62, v63, 1);

  titleLabel = self->_titleLabel;
  v65 = *MEMORY[0x277D76918];
  v67 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], v66, *MEMORY[0x277D76918]);
  objc_msgSend_setFont_(titleLabel, v68, v67);

  v69 = self->_titleLabel;
  v72 = objc_msgSend_labelColor(MEMORY[0x277D75348], v70, v71);
  objc_msgSend_setTextColor_(v69, v73, v72);

  valueLabel = self->_valueLabel;
  v76 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], v75, v65);
  objc_msgSend_setFont_(valueLabel, v77, v76);

  v78 = self->_valueLabel;
  v81 = objc_msgSend_tintColor(MEMORY[0x277D75348], v79, v80);
  objc_msgSend_setTextColor_(v78, v82, v81);

  objc_msgSend_setShowsSeparator_(self, v83, 1);
}

@end