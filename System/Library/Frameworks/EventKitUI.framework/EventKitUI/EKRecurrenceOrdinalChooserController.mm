@interface EKRecurrenceOrdinalChooserController
- (EKRecurrenceOrdinalChooserController)initWithDate:(id)date;
- (double)heightForRow:(int64_t)row;
- (id)cellForRow:(int64_t)row;
@end

@implementation EKRecurrenceOrdinalChooserController

- (EKRecurrenceOrdinalChooserController)initWithDate:(id)date
{
  v7.receiver = self;
  v7.super_class = EKRecurrenceOrdinalChooserController;
  v3 = [(EKRecurrenceChooserController *)&v7 initWithDate:date];
  if (v3)
  {
    v4 = objc_opt_new();
    [(EKRecurrenceOrdinalPickerViewController *)v4 setDelegate:v3];
    pickerViewController = v3->_pickerViewController;
    v3->_pickerViewController = v4;
  }

  return v3;
}

- (double)heightForRow:(int64_t)row
{
  view = [(EKRecurrenceOrdinalPickerViewController *)self->_pickerViewController view];
  [view systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v5 = v4;

  return v5;
}

- (id)cellForRow:(int64_t)row
{
  v29[2] = *MEMORY[0x1E69E9840];
  cell = self->_cell;
  if (!cell)
  {
    view = [(EKRecurrenceOrdinalPickerViewController *)self->_pickerViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    backgroundColor = [(EKRecurrenceChooserController *)self backgroundColor];

    if (backgroundColor)
    {
      backgroundColor2 = [(EKRecurrenceChooserController *)self backgroundColor];
      [view setBackgroundColor:backgroundColor2];
    }

    v8 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v9 = self->_cell;
    self->_cell = &v8->super;

    v10 = objc_msgSend_contentView(self->_cell);
    [v10 addSubview:view];

    v11 = objc_msgSend_contentView(self->_cell);
    v12 = MEMORY[0x1E696ACD8];
    v13 = objc_msgSend_contentView(self->_cell);
    v14 = [v12 constraintWithItem:v13 attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
    [v11 addConstraint:v14];

    v15 = objc_msgSend_contentView(self->_cell);
    v16 = MEMORY[0x1E696ACD8];
    v17 = objc_msgSend_contentView(self->_cell);
    v18 = [v16 constraintWithItem:view attribute:7 relatedBy:0 toItem:v17 attribute:7 multiplier:1.0 constant:1.0];
    [v15 addConstraint:v18];

    v19 = MEMORY[0x1E696ACD8];
    v20 = objc_msgSend_contentView(self->_cell);
    v21 = [v19 constraintWithItem:v20 attribute:8 relatedBy:1 toItem:view attribute:8 multiplier:1.0 constant:0.0];

    LODWORD(v22) = 1148829696;
    [v21 setPriority:v22];
    v23 = MEMORY[0x1E696ACD8];
    v24 = objc_msgSend_contentView(self->_cell);
    v25 = [v23 constraintWithItem:v24 attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:0.0];

    v26 = objc_msgSend_contentView(self->_cell);
    v29[0] = v21;
    v29[1] = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [v26 addConstraints:v27];

    cell = self->_cell;
  }

  return cell;
}

@end