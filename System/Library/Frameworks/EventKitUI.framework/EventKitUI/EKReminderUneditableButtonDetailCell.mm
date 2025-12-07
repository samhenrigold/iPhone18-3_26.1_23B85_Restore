@interface EKReminderUneditableButtonDetailCell
- (EKReminderUneditableButtonDetailCell)initWithEvent:(id)event uneditableButtonCellDelegate:(id)delegate;
@end

@implementation EKReminderUneditableButtonDetailCell

- (EKReminderUneditableButtonDetailCell)initWithEvent:(id)event uneditableButtonCellDelegate:(id)delegate
{
  v77[3] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  delegateCopy = delegate;
  v72.receiver = self;
  v72.super_class = EKReminderUneditableButtonDetailCell;
  v6 = [(EKEventDetailCell *)&v72 initWithEvent:eventCopy editable:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uneditableButtonCellDelegate, delegate);
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    line = v7->_line;
    v7->_line = v8;

    [(UILabel *)v7->_line setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_line setNumberOfLines:0];
    v48 = *MEMORY[0x1E69DDD80];
    v10 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:? addingSymbolicTraits:?];
    [(UILabel *)v7->_line setFont:v10];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v7->_line setTextColor:secondaryLabelColor];

    v12 = EventKitUIBundle();
    v13 = [v12 localizedStringForKey:@"This is a future repeating reminder. You can only edit the current reminder." value:&stru_1F4EF6790 table:0];
    [(UILabel *)v7->_line setText:v13];

    v14 = objc_msgSend_contentView(v7);
    [v14 addSubview:v7->_line];

    v50 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v7->_line leadingAnchor];
    v67 = objc_msgSend_contentView(v7);
    layoutMarginsGuide = [v67 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
    v77[0] = v57;
    trailingAnchor = [(UILabel *)v7->_line trailingAnchor];
    v55 = objc_msgSend_contentView(v7);
    layoutMarginsGuide2 = [v55 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-6.0];
    v77[1] = v17;
    topAnchor = [(UILabel *)v7->_line topAnchor];
    v19 = objc_msgSend_contentView(v7);
    topAnchor2 = [v19 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    v77[2] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];
    [v50 activateConstraints:v22];

    if (v7->_uneditableButtonCellDelegate)
    {
      plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      v23 = EventKitUIBundle();
      v64 = [v23 localizedStringForKey:@"Show Current Reminder" value:&stru_1F4EF6790 table:0];

      bottomAnchor4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v48];
      v24 = objc_alloc(MEMORY[0x1E696AAB0]);
      v75 = *MEMORY[0x1E69DB648];
      v76 = bottomAnchor4;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v26 = [v24 initWithString:v64 attributes:v25];
      [plainButtonConfiguration setAttributedTitle:v26];

      [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
      objc_initWeak(&location, v7);
      v27 = MEMORY[0x1E69DC628];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __83__EKReminderUneditableButtonDetailCell_initWithEvent_uneditableButtonCellDelegate___block_invoke;
      v69[3] = &unk_1E8441A90;
      objc_copyWeak(&v70, &location);
      v44 = [v27 actionWithHandler:v69];
      v28 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:?];
      button = v7->_button;
      v7->_button = v28;

      [(UIButton *)v7->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      v30 = objc_msgSend_contentView(v7);
      [v30 addSubview:v7->_button];

      v45 = MEMORY[0x1E696ACD8];
      bottomAnchor = [(UILabel *)v7->_line bottomAnchor];
      topAnchor3 = [(UIButton *)v7->_button topAnchor];
      v56 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-10.0];
      v74[0] = v56;
      leadingAnchor3 = [(UIButton *)v7->_button leadingAnchor];
      v54 = objc_msgSend_contentView(v7);
      layoutMarginsGuide3 = [v54 layoutMarginsGuide];
      leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
      v47 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:6.0];
      v74[1] = v47;
      trailingAnchor3 = [(UIButton *)v7->_button trailingAnchor];
      v31 = objc_msgSend_contentView(v7);
      layoutMarginsGuide4 = [v31 layoutMarginsGuide];
      trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
      v34 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-6.0];
      v74[2] = v34;
      bottomAnchor2 = [(UIButton *)v7->_button bottomAnchor];
      v36 = objc_msgSend_contentView(v7);
      bottomAnchor3 = [v36 bottomAnchor];
      v38 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-16.0];
      v74[3] = v38;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
      [v45 activateConstraints:v39];

      objc_destroyWeak(&v70);
      objc_destroyWeak(&location);
    }

    else
    {
      v40 = MEMORY[0x1E696ACD8];
      plainButtonConfiguration = [(UILabel *)v7->_line bottomAnchor];
      v64 = objc_msgSend_contentView(v7);
      bottomAnchor4 = [v64 bottomAnchor];
      v41 = [plainButtonConfiguration constraintEqualToAnchor:bottomAnchor4 constant:-16.0];
      v73 = v41;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
      [v40 activateConstraints:v42];
    }
  }

  return v7;
}

void __83__EKReminderUneditableButtonDetailCell_initWithEvent_uneditableButtonCellDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 142);
    if (v3)
    {
      v4 = v2;
      [v3 uneditableButtonCellRequestedShowFirstUncompletedReminder:v2];
      v2 = v4;
    }
  }
}

@end