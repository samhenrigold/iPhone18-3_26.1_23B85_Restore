@interface DKNotableUserDataCardView
- (DKNotableUserDataCardView)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon;
- (void)_toggleExpanded;
- (void)addCardCell:(id)cell;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation DKNotableUserDataCardView

- (DKNotableUserDataCardView)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon
{
  v48[4] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  subtitleCopy = subtitle;
  iconCopy = icon;
  v46.receiver = self;
  v46.super_class = DKNotableUserDataCardView;
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [(DKNotableUserDataCardView *)&v46 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
  if (v15)
  {
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(DKNotableUserDataCardView *)v15 setBackgroundColor:secondarySystemBackgroundColor];

    [(DKNotableUserDataCardView *)v15 _setContinuousCornerRadius:10.0];
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cells = v15->_cells;
    v15->_cells = v17;

    v19 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v11, v12, v13, v14}];
    stackView = v15->_stackView;
    v15->_stackView = v19;

    [(UIStackView *)v15->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v15->_stackView setAxis:1];
    [(UIStackView *)v15->_stackView setSpacing:16.0];
    [(DKNotableUserDataCardView *)v15 addSubview:v15->_stackView];
    bottomAnchor = [(DKNotableUserDataCardView *)v15 bottomAnchor];
    [(UIStackView *)v15->_stackView bottomAnchor];
    v22 = v45 = titleCopy;
    v23 = [bottomAnchor constraintEqualToAnchor:v22 constant:0.0];
    bottomStackViewConstraint = v15->_bottomStackViewConstraint;
    v15->_bottomStackViewConstraint = v23;

    topAnchor = [(UIStackView *)v15->_stackView topAnchor];
    topAnchor2 = [(DKNotableUserDataCardView *)v15 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v48[0] = v25;
    v48[1] = v15->_bottomStackViewConstraint;
    [(UIStackView *)v15->_stackView leadingAnchor];
    v26 = v44 = subtitleCopy;
    [(DKNotableUserDataCardView *)v15 leadingAnchor];
    v27 = v43 = iconCopy;
    v28 = [v26 constraintEqualToAnchor:v27];
    v48[2] = v28;
    trailingAnchor = [(DKNotableUserDataCardView *)v15 trailingAnchor];
    trailingAnchor2 = [(UIStackView *)v15->_stackView trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v48[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
    [(DKNotableUserDataCardView *)v15 addConstraints:v32];

    iconCopy = v43;
    subtitleCopy = v44;

    titleCopy = v45;
    v33 = [[DKNotableUserDataCardPrimaryCell alloc] initWithTitle:v45 subtitle:v44 icon:v43];
    primaryCell = v15->_primaryCell;
    v15->_primaryCell = v33;

    [(DKNotableUserDataCardPrimaryCell *)v15->_primaryCell setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DKNotableUserDataCardPrimaryCell *)v15->_primaryCell setDirectionalLayoutMargins:0.0, 16.0, 0.0, 16.0];
    [(DKNotableUserDataCardPrimaryCell *)v15->_primaryCell setHideChevron:1];
    [(UIStackView *)v15->_stackView addArrangedSubview:v15->_primaryCell];
    heightAnchor = [(DKNotableUserDataCardPrimaryCell *)v15->_primaryCell heightAnchor];
    v36 = [heightAnchor constraintGreaterThanOrEqualToConstant:60.0];
    v47 = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    [(DKNotableUserDataCardView *)v15 addConstraints:v37];

    v38 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v11, v12, v13, v14}];
    secondaryStackView = v15->_secondaryStackView;
    v15->_secondaryStackView = v38;

    [(UIStackView *)v15->_secondaryStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v15->_secondaryStackView setAxis:1];
    [(UIStackView *)v15->_secondaryStackView setSpacing:16.0];
    [(UIStackView *)v15->_secondaryStackView setLayoutMarginsRelativeArrangement:1];
    [(DKNotableUserDataCardPrimaryCell *)v15->_primaryCell directionalLayoutMargins];
    [(UIStackView *)v15->_secondaryStackView setDirectionalLayoutMargins:?];
  }

  return v15;
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v36 = *MEMORY[0x277D85DE8];
  self->_expanded = expanded;
  primaryCell = [(DKNotableUserDataCardView *)self primaryCell];
  [primaryCell setExpanded:expandedCopy];

  bottomStackViewConstraint = [(DKNotableUserDataCardView *)self bottomStackViewConstraint];
  v7 = bottomStackViewConstraint;
  if (expandedCopy)
  {
    [bottomStackViewConstraint setConstant:20.0];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    cells = [(DKNotableUserDataCardView *)self cells];
    v9 = [cells countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        v12 = 0;
        do
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(cells);
          }

          v13 = *(*(&v30 + 1) + 8 * v12);
          secondaryStackView = [(DKNotableUserDataCardView *)self secondaryStackView];
          [secondaryStackView addArrangedSubview:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [cells countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v10);
    }

    stackView = [(DKNotableUserDataCardView *)self stackView];
    secondaryStackView2 = [(DKNotableUserDataCardView *)self secondaryStackView];
    [stackView addArrangedSubview:secondaryStackView2];
  }

  else
  {
    [bottomStackViewConstraint setConstant:0.0];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    cells2 = [(DKNotableUserDataCardView *)self cells];
    v18 = [cells2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        v21 = 0;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(cells2);
          }

          v22 = *(*(&v26 + 1) + 8 * v21);
          secondaryStackView3 = [(DKNotableUserDataCardView *)self secondaryStackView];
          [secondaryStackView3 removeArrangedSubview:v22];

          [v22 removeFromSuperview];
          ++v21;
        }

        while (v19 != v21);
        v19 = [cells2 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }

    stackView2 = [(DKNotableUserDataCardView *)self stackView];
    secondaryStackView4 = [(DKNotableUserDataCardView *)self secondaryStackView];
    [stackView2 removeArrangedSubview:secondaryStackView4];

    stackView = [(DKNotableUserDataCardView *)self secondaryStackView];
    [stackView removeFromSuperview];
  }
}

- (void)addCardCell:(id)cell
{
  cellCopy = cell;
  cells = [(DKNotableUserDataCardView *)self cells];
  v6 = [cells count];

  if (!v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__toggleExpanded];
    [(DKNotableUserDataCardPrimaryCell *)self->_primaryCell addGestureRecognizer:v7];
  }

  [(DKNotableUserDataCardPrimaryCell *)self->_primaryCell setHideChevron:0];
  cells2 = [(DKNotableUserDataCardView *)self cells];
  [cells2 addObject:cellCopy];
}

- (void)_toggleExpanded
{
  v3 = [(DKNotableUserDataCardView *)self isExpanded]^ 1;

  [(DKNotableUserDataCardView *)self setExpanded:v3];
}

@end