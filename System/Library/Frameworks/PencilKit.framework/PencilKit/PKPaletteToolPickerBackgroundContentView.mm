@interface PKPaletteToolPickerBackgroundContentView
- (PKPaletteToolPickerBackgroundContentView)init;
- (uint64_t)_updateUI;
@end

@implementation PKPaletteToolPickerBackgroundContentView

- (PKPaletteToolPickerBackgroundContentView)init
{
  v59[8] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = PKPaletteToolPickerBackgroundContentView;
  v2 = [(PKPaletteToolPickerBackgroundContentView *)&v57 init];
  if (v2)
  {
    if (_UISolariumEnabled())
    {
      v4 = objc_alloc_init(PKPaletteToolPickerEdgeView);
      topOrLeadingEdgeView = v2->_topOrLeadingEdgeView;
      v2->_topOrLeadingEdgeView = v4;

      [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPaletteToolPickerBackgroundContentView *)v2 addSubview:v2->_topOrLeadingEdgeView];
      v6 = objc_alloc_init(PKPaletteToolPickerEdgeView);
      bottomOrTrailingEdgeView = v2->_bottomOrTrailingEdgeView;
      v2->_bottomOrTrailingEdgeView = v6;

      [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPaletteToolPickerBackgroundContentView *)v2 addSubview:v2->_bottomOrTrailingEdgeView];
      topAnchor = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView topAnchor];
      topAnchor2 = [(PKPaletteToolPickerBackgroundContentView *)v2 topAnchor];
      v51 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v59[0] = v51;
      leadingAnchor = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView leadingAnchor];
      leadingAnchor2 = [(PKPaletteToolPickerBackgroundContentView *)v2 leadingAnchor];
      v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v59[1] = v45;
      bottomAnchor = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView bottomAnchor];
      bottomAnchor2 = [(PKPaletteToolPickerBackgroundContentView *)v2 bottomAnchor];
      v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v59[2] = v39;
      widthAnchor = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView widthAnchor];
      v35 = [widthAnchor constraintEqualToConstant:15.0];
      v59[3] = v35;
      topAnchor3 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView topAnchor];
      topAnchor4 = [(PKPaletteToolPickerBackgroundContentView *)v2 topAnchor];
      v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v59[4] = v29;
      bottomAnchor3 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView bottomAnchor];
      bottomAnchor4 = [(PKPaletteToolPickerBackgroundContentView *)v2 bottomAnchor];
      v9 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v59[5] = v9;
      trailingAnchor = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView trailingAnchor];
      trailingAnchor2 = [(PKPaletteToolPickerBackgroundContentView *)v2 trailingAnchor];
      v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v59[6] = v12;
      widthAnchor2 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView widthAnchor];
      v14 = [widthAnchor2 constraintEqualToConstant:15.0];
      v59[7] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:8];
      horizontalLayoutConstraints = v2->_horizontalLayoutConstraints;
      v2->_horizontalLayoutConstraints = v15;

      topAnchor5 = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView topAnchor];
      topAnchor6 = [(PKPaletteToolPickerBackgroundContentView *)v2 topAnchor];
      v52 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v58[0] = v52;
      leadingAnchor3 = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView leadingAnchor];
      leadingAnchor4 = [(PKPaletteToolPickerBackgroundContentView *)v2 leadingAnchor];
      v46 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v58[1] = v46;
      trailingAnchor3 = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView trailingAnchor];
      trailingAnchor4 = [(PKPaletteToolPickerBackgroundContentView *)v2 trailingAnchor];
      v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v58[2] = v40;
      heightAnchor = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView heightAnchor];
      v36 = [heightAnchor constraintEqualToConstant:15.0];
      v58[3] = v36;
      leadingAnchor5 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView leadingAnchor];
      leadingAnchor6 = [(PKPaletteToolPickerBackgroundContentView *)v2 leadingAnchor];
      v30 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v58[4] = v30;
      bottomAnchor5 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView bottomAnchor];
      bottomAnchor6 = [(PKPaletteToolPickerBackgroundContentView *)v2 bottomAnchor];
      v19 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v58[5] = v19;
      trailingAnchor5 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView trailingAnchor];
      trailingAnchor6 = [(PKPaletteToolPickerBackgroundContentView *)v2 trailingAnchor];
      v22 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v58[6] = v22;
      heightAnchor2 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView heightAnchor];
      v24 = [heightAnchor2 constraintEqualToConstant:15.0];
      v58[7] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:8];
      verticalLayoutConstraints = v2->_verticalLayoutConstraints;
      v2->_verticalLayoutConstraints = v25;
    }

    [(PKPaletteToolPickerBackgroundContentView *)v2 _updateUI];
  }

  return v2;
}

- (uint64_t)_updateUI
{
  if (result)
  {
    v2 = result;
    result = _UISolariumEnabled();
    if ((result & 1) == 0)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:*(v2 + 424)];
      [MEMORY[0x1E696ACD8] deactivateConstraints:*(v2 + 432)];
      v3 = *(v2 + 448);
      v4 = 3;
      if (!v3)
      {
        v4 = 2;
      }

      [MEMORY[0x1E696ACD8] activateConstraints:*(v2 + OBJC_IVAR___PKPaletteToolPickerBackgroundContentView__topOrLeadingEdgeView[v4])];
      v5 = *(v2 + 448);
      v6 = *(v2 + 408);
      if (v6 && *(v6 + 432) != v5)
      {
        *(v6 + 432) = v5;
        [(PKPaletteToolPickerEdgeView *)v6 _updateUI];
        v5 = *(v2 + 448);
      }

      v7 = *(v2 + 416);
      if (v7 && *(v7 + 432) != v5)
      {
        *(v7 + 432) = v5;
        [(PKPaletteToolPickerEdgeView *)v7 _updateUI];
        v5 = *(v2 + 448);
      }

      if (v5 == 1)
      {
        v8 = *(v2 + 440) ^ 1;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v2 + 408);
      v10 = v8 & 1;
      if (v9 && *(v9 + 424) != v10)
      {
        *(v9 + 424) = v10;
        [(PKPaletteToolPickerEdgeView *)v9 _updateUI];
      }

      if (v3)
      {
        v11 = v10;
      }

      else
      {
        v11 = 1;
      }

      v12 = *(v2 + 416);
      if (v12)
      {
        if (*(v12 + 424) == v11 || (*(v12 + 424) = v11, [(PKPaletteToolPickerEdgeView *)v12 _updateUI], (v12 = *(v2 + 416)) != 0))
        {
          v13 = v5 == 1;
          if (*(v12 + 425) != v13)
          {
            *(v12 + 425) = v13;
            [(PKPaletteToolPickerEdgeView *)v12 _updateUI];
          }
        }
      }

      [*(v2 + 408) setHidden:(*(v2 + 441) & 1) == 0];
      v14 = *(v2 + 416);
      v15 = (*(v2 + 442) & 1) == 0;

      return [v14 setHidden:v15];
    }
  }

  return result;
}

@end