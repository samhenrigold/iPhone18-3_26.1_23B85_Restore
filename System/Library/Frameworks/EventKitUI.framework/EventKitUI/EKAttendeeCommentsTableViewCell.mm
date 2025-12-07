@interface EKAttendeeCommentsTableViewCell
- (EKAttendeeCommentsTableViewCell)initWithParticipant:(id)participant;
- (void)_updateConstraints;
@end

@implementation EKAttendeeCommentsTableViewCell

- (EKAttendeeCommentsTableViewCell)initWithParticipant:(id)participant
{
  v47[1] = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  v46.receiver = self;
  v46.super_class = EKAttendeeCommentsTableViewCell;
  v6 = [(EKAttendeeCommentsTableViewCell *)&v46 initWithStyle:0 reuseIdentifier:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_participant, participant);
    array = [MEMORY[0x1E695DF70] array];
    constraints = v7->_constraints;
    v7->_constraints = array;

    v10 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    textCenteringGuide = v7->_textCenteringGuide;
    v7->_textCenteringGuide = v10;

    v12 = objc_msgSend_contentView(v7);
    [v12 addLayoutGuide:v7->_textCenteringGuide];

    objc_initWeak(&location, v7);
    v47[0] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __55__EKAttendeeCommentsTableViewCell_initWithParticipant___block_invoke;
    v43[3] = &unk_1E843EBE8;
    objc_copyWeak(&v44, &location);
    v14 = [(EKAttendeeCommentsTableViewCell *)v7 registerForTraitChanges:v13 withHandler:v43];

    v15 = [[EKUILabeledAvatarView alloc] initWithIdentity:participantCopy placement:0 options:0];
    [(EKUILabeledAvatarView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKUILabeledAvatarView *)v15 setLoadContactsAsynchronously:1];
    v16 = objc_msgSend_contentView(v7);
    [v16 addSubview:v15];

    objc_storeStrong(&v7->_avatarView, v15);
    v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v18 = [MEMORY[0x1E6993390] displayNameForIdentity:participantCopy];
    [v17 setText:v18];

    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v17 setFont:v19];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v17 setTextColor:labelColor];

    [v17 setNumberOfLines:0];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = objc_msgSend_contentView(v7);
    [v21 addSubview:v17];

    objc_storeStrong(&v7->_titleView, v17);
    v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v23 = MEMORY[0x1E696AEC0];
    v24 = EventKitUIBundle();
    v25 = [v24 localizedStringForKey:@"“%@”" value:&stru_1F4EF6790 table:0];
    v26 = MEMORY[0x1E6993410];
    comment = [participantCopy comment];
    v28 = [v26 stringWithAutoCommentRemoved:comment];
    v29 = [v23 localizedStringWithFormat:v25, v28];

    [v22 setText:v29];
    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [v22 setFont:v30];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v22 setTextColor:secondaryLabelColor];

    [v22 setNumberOfLines:0];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = objc_msgSend_contentView(v7);
    [v32 addSubview:v22];

    objc_storeStrong(&v7->_commentView, v22);
    v33 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v34 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [v33 setFont:v34];

    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v33 setTextColor:secondaryLabelColor2];

    LODWORD(v36) = 1148846080;
    [v33 setContentCompressionResistancePriority:0 forAxis:v36];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = objc_msgSend_contentView(v7);
    [v37 addSubview:v33];

    objc_storeStrong(&v7->_timeView, v33);
    commentLastModifiedDate = [participantCopy commentLastModifiedDate];

    if (commentLastModifiedDate)
    {
      v39 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v39 setDateStyle:0];
      [v39 setTimeStyle:1];
      commentLastModifiedDate2 = [participantCopy commentLastModifiedDate];
      v41 = [v39 stringFromDate:commentLastModifiedDate2];
      [v33 setText:v41];
    }

    else
    {
      [v33 setText:&stru_1F4EF6790];
    }

    [(EKAttendeeCommentsTableViewCell *)v7 _updateConstraints];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __55__EKAttendeeCommentsTableViewCell_initWithParticipant___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateConstraints];
}

- (void)_updateConstraints
{
  v124[21] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  traitCollection = [(EKAttendeeCommentsTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  constraints = self->_constraints;
  widthAnchor = [(UIView *)self->_avatarView widthAnchor];
  v7 = [widthAnchor constraintEqualToConstant:37.0];
  v122 = v7;
  if (IsAccessibilityCategory)
  {
    v124[0] = v7;
    heightAnchor = [(UIView *)self->_avatarView heightAnchor];
    v120 = [heightAnchor constraintEqualToConstant:37.0];
    v124[1] = v120;
    leadingAnchor = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    [(UIView *)self->_timeView leadingAnchor];
    v118 = v119 = leadingAnchor;
    v117 = [leadingAnchor constraintEqualToAnchor:?];
    v124[2] = v117;
    leadingAnchor2 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    [(UIView *)self->_titleView leadingAnchor];
    v115 = v116 = leadingAnchor2;
    v114 = [leadingAnchor2 constraintEqualToAnchor:?];
    v124[3] = v114;
    leadingAnchor3 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_commentView leadingAnchor];
    v113 = leadingAnchor3;
    v111 = [leadingAnchor3 constraintEqualToAnchor:?];
    v124[4] = v111;
    trailingAnchor = [(UILayoutGuide *)self->_textCenteringGuide trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_timeView trailingAnchor];
    v110 = trailingAnchor;
    v108 = [trailingAnchor constraintEqualToAnchor:?];
    v124[5] = v108;
    trailingAnchor3 = [(UILayoutGuide *)self->_textCenteringGuide trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_titleView trailingAnchor];
    v107 = trailingAnchor3;
    layoutMarginsGuide9 = [trailingAnchor3 constraintEqualToAnchor:?];
    v124[6] = layoutMarginsGuide9;
    trailingAnchor5 = [(UILayoutGuide *)self->_textCenteringGuide trailingAnchor];
    trailingAnchor6 = [(UIView *)self->_commentView trailingAnchor];
    v104 = trailingAnchor5;
    v102 = [trailingAnchor5 constraintEqualToAnchor:?];
    v124[7] = v102;
    topAnchor = [(UILayoutGuide *)self->_textCenteringGuide topAnchor];
    topAnchor2 = [(UIView *)self->_timeView topAnchor];
    v101 = topAnchor;
    v99 = [topAnchor constraintEqualToAnchor:?];
    v124[8] = v99;
    bottomAnchor = [(UILayoutGuide *)self->_textCenteringGuide bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_commentView bottomAnchor];
    v98 = bottomAnchor;
    trailingAnchor10 = [bottomAnchor constraintEqualToAnchor:?];
    v124[9] = trailingAnchor10;
    trailingAnchor7 = [(UILayoutGuide *)self->_textCenteringGuide trailingAnchor];
    v93 = objc_msgSend_contentView(self);
    layoutMarginsGuide = [v93 layoutMarginsGuide];
    [layoutMarginsGuide trailingAnchor];
    v92LayoutMarginsGuide = v95 = trailingAnchor7;
    v90 = [trailingAnchor7 constraintEqualToAnchor:?];
    v124[10] = v90;
    centerYAnchor = [(UILayoutGuide *)self->_textCenteringGuide centerYAnchor];
    v88 = objc_msgSend_contentView(self);
    layoutMarginsGuide2 = [v88 layoutMarginsGuide];
    [layoutMarginsGuide2 centerYAnchor];
    v87LayoutMarginsGuide = v89 = centerYAnchor;
    v85 = [centerYAnchor constraintEqualToAnchor:?];
    v124[11] = v85;
    leadingAnchor5 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    trailingAnchor8 = [(UIView *)self->_avatarView trailingAnchor];
    v84 = leadingAnchor5;
    v82 = [leadingAnchor5 constraintEqualToAnchor:12.0 constant:?];
    v124[12] = v82;
    topAnchor3 = [(UILayoutGuide *)self->_textCenteringGuide topAnchor];
    v80 = objc_msgSend_contentView(self);
    layoutMarginsGuide3 = [v80 layoutMarginsGuide];
    [layoutMarginsGuide3 topAnchor];
    v78 = layoutMarginsGuide10 = topAnchor3;
    v77 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:?];
    v124[13] = v77;
    bottomAnchor3 = [(UILayoutGuide *)self->_textCenteringGuide bottomAnchor];
    v75 = objc_msgSend_contentView(self);
    layoutMarginsGuide4 = [v75 layoutMarginsGuide];
    [layoutMarginsGuide4 bottomAnchor];
    v73 = layoutMarginsGuide11 = bottomAnchor3;
    v72 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:?];
    v124[14] = v72;
    centerYAnchor2 = [(UIView *)self->_avatarView centerYAnchor];
    v70 = objc_msgSend_contentView(self);
    layoutMarginsGuide5 = [v70 layoutMarginsGuide];
    [layoutMarginsGuide5 centerYAnchor];
    v68 = layoutMarginsGuide12 = centerYAnchor2;
    v67 = [centerYAnchor2 constraintEqualToAnchor:?];
    v124[15] = v67;
    leadingAnchor6 = [(UIView *)self->_avatarView leadingAnchor];
    v65 = objc_msgSend_contentView(self);
    layoutMarginsGuide6 = [v65 layoutMarginsGuide];
    [layoutMarginsGuide6 leadingAnchor];
    v63 = layoutMarginsGuide13 = leadingAnchor6;
    firstBaselineAnchor2 = [leadingAnchor6 constraintEqualToAnchor:?];
    v124[16] = firstBaselineAnchor2;
    topAnchor4 = [(UIView *)self->_avatarView topAnchor];
    v60 = objc_msgSend_contentView(self);
    layoutMarginsGuide7 = [v60 layoutMarginsGuide];
    [layoutMarginsGuide7 topAnchor];
    v58 = v61 = topAnchor4;
    v57 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:?];
    v124[17] = v57;
    bottomAnchor4 = [(UIView *)self->_avatarView bottomAnchor];
    layoutMarginsGuide14 = objc_msgSend_contentView(self);
    layoutMarginsGuide8 = [layoutMarginsGuide14 layoutMarginsGuide];
    bottomAnchor5 = [layoutMarginsGuide8 bottomAnchor];
    v53 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:?];
    v124[18] = v53;
    topAnchor5 = [(UIView *)self->_commentView topAnchor];
    bottomAnchor6 = [(UIView *)self->_titleView bottomAnchor];
    v52 = [topAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:2.0];
    v124[19] = v52;
    topAnchor6 = [(UIView *)self->_titleView topAnchor];
    bottomAnchor7 = [(UIView *)self->_timeView bottomAnchor];
    v28BottomAnchor = [topAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:2.0];
    v124[20] = v28BottomAnchor;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:21];
    [(NSMutableArray *)constraints addObjectsFromArray:v30];
  }

  else
  {
    v123[0] = v7;
    heightAnchor = [(UIView *)self->_avatarView heightAnchor];
    v120 = [heightAnchor constraintEqualToConstant:37.0];
    v123[1] = v120;
    leadingAnchor7 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    [(UIView *)self->_titleView leadingAnchor];
    v118 = v119 = leadingAnchor7;
    v117 = [leadingAnchor7 constraintEqualToAnchor:?];
    v123[2] = v117;
    leadingAnchor8 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    [(UIView *)self->_commentView leadingAnchor];
    v115 = v116 = leadingAnchor8;
    v114 = [leadingAnchor8 constraintEqualToAnchor:?];
    v123[3] = v114;
    topAnchor7 = [(UILayoutGuide *)self->_textCenteringGuide topAnchor];
    leadingAnchor4 = [(UIView *)self->_titleView topAnchor];
    v113 = topAnchor7;
    v111 = [topAnchor7 constraintEqualToAnchor:?];
    v123[4] = v111;
    bottomAnchor8 = [(UILayoutGuide *)self->_textCenteringGuide bottomAnchor];
    trailingAnchor2 = [(UIView *)self->_commentView bottomAnchor];
    v110 = bottomAnchor8;
    v108 = [bottomAnchor8 constraintEqualToAnchor:?];
    v123[5] = v108;
    trailingAnchor9 = [(UILayoutGuide *)self->_textCenteringGuide trailingAnchor];
    trailingAnchor4 = objc_msgSend_contentView(self);
    layoutMarginsGuide9 = [trailingAnchor4 layoutMarginsGuide];
    [layoutMarginsGuide9 trailingAnchor];
    v104 = v107 = trailingAnchor9;
    trailingAnchor6 = [trailingAnchor9 constraintEqualToAnchor:?];
    v123[6] = trailingAnchor6;
    centerYAnchor3 = [(UILayoutGuide *)self->_textCenteringGuide centerYAnchor];
    v101 = objc_msgSend_contentView(self);
    topAnchor2 = [v101 layoutMarginsGuide];
    [topAnchor2 centerYAnchor];
    v99 = v102 = centerYAnchor3;
    v98 = [centerYAnchor3 constraintEqualToAnchor:?];
    v123[7] = v98;
    leadingAnchor9 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    trailingAnchor10 = [(UIView *)self->_avatarView trailingAnchor];
    bottomAnchor2 = leadingAnchor9;
    v95 = [leadingAnchor9 constraintEqualToAnchor:12.0 constant:?];
    v123[8] = v95;
    centerYAnchor4 = [(UIView *)self->_avatarView centerYAnchor];
    layoutMarginsGuide = objc_msgSend_contentView(self);
    v92LayoutMarginsGuide = [layoutMarginsGuide layoutMarginsGuide];
    [v92LayoutMarginsGuide centerYAnchor];
    v90 = v93 = centerYAnchor4;
    v89 = [centerYAnchor4 constraintEqualToAnchor:?];
    v123[9] = v89;
    leadingAnchor10 = [(UIView *)self->_avatarView leadingAnchor];
    layoutMarginsGuide2 = objc_msgSend_contentView(self);
    v87LayoutMarginsGuide = [layoutMarginsGuide2 layoutMarginsGuide];
    [v87LayoutMarginsGuide leadingAnchor];
    v85 = v88 = leadingAnchor10;
    v84 = [leadingAnchor10 constraintEqualToAnchor:?];
    v123[10] = v84;
    topAnchor8 = [(UIView *)self->_avatarView topAnchor];
    v82 = objc_msgSend_contentView(self);
    layoutMarginsGuide10 = [v82 layoutMarginsGuide];
    [layoutMarginsGuide10 topAnchor];
    v80 = trailingAnchor8 = topAnchor8;
    layoutMarginsGuide3 = [topAnchor8 constraintGreaterThanOrEqualToAnchor:?];
    v123[11] = layoutMarginsGuide3;
    bottomAnchor9 = [(UIView *)self->_avatarView bottomAnchor];
    v77 = objc_msgSend_contentView(self);
    layoutMarginsGuide11 = [v77 layoutMarginsGuide];
    [layoutMarginsGuide11 bottomAnchor];
    v75 = v78 = bottomAnchor9;
    layoutMarginsGuide4 = [bottomAnchor9 constraintLessThanOrEqualToAnchor:?];
    v123[12] = layoutMarginsGuide4;
    trailingAnchor11 = [(UIView *)self->_commentView trailingAnchor];
    v72 = objc_msgSend_contentView(self);
    layoutMarginsGuide12 = [v72 layoutMarginsGuide];
    [layoutMarginsGuide12 trailingAnchor];
    v70 = v73 = trailingAnchor11;
    layoutMarginsGuide5 = [trailingAnchor11 constraintEqualToAnchor:?];
    v123[13] = layoutMarginsGuide5;
    trailingAnchor12 = [(UIView *)self->_timeView trailingAnchor];
    v67 = objc_msgSend_contentView(self);
    layoutMarginsGuide13 = [v67 layoutMarginsGuide];
    [layoutMarginsGuide13 trailingAnchor];
    v65 = v68 = trailingAnchor12;
    layoutMarginsGuide6 = [trailingAnchor12 constraintEqualToAnchor:?];
    v123[14] = layoutMarginsGuide6;
    firstBaselineAnchor = [(UIView *)self->_timeView firstBaselineAnchor];
    firstBaselineAnchor2 = [(UIView *)self->_titleView firstBaselineAnchor];
    v63 = firstBaselineAnchor;
    v61 = [firstBaselineAnchor constraintEqualToAnchor:?];
    v123[15] = v61;
    trailingAnchor13 = [(UIView *)self->_titleView trailingAnchor];
    layoutMarginsGuide7 = [(UIView *)self->_timeView leadingAnchor];
    v60 = trailingAnchor13;
    v58 = [trailingAnchor13 constraintLessThanOrEqualToAnchor:-2.0 constant:?];
    v123[16] = v58;
    topAnchor9 = [(UIView *)self->_titleView topAnchor];
    v51 = objc_msgSend_contentView(self);
    layoutMarginsGuide14 = [v51 layoutMarginsGuide];
    [layoutMarginsGuide14 topAnchor];
    layoutMarginsGuide8 = v57 = topAnchor9;
    bottomAnchor5 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:?];
    v123[17] = bottomAnchor5;
    topAnchor10 = [(UIView *)self->_commentView topAnchor];
    topAnchor5 = [(UIView *)self->_titleView bottomAnchor];
    v53 = topAnchor10;
    v48 = [topAnchor10 constraintEqualToAnchor:topAnchor5 constant:2.0];
    v123[18] = v48;
    bottomAnchor10 = [(UIView *)self->_commentView bottomAnchor];
    topAnchor6 = objc_msgSend_contentView(self);
    bottomAnchor7 = [topAnchor6 layoutMarginsGuide];
    v28BottomAnchor = [bottomAnchor7 bottomAnchor];
    v52 = bottomAnchor10;
    v30 = [bottomAnchor10 constraintLessThanOrEqualToAnchor:v28BottomAnchor];
    v123[19] = v30;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:20];
    [(NSMutableArray *)constraints addObjectsFromArray:v50];

    bottomAnchor6 = v48;
    bottomAnchor4 = v51;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
}

@end