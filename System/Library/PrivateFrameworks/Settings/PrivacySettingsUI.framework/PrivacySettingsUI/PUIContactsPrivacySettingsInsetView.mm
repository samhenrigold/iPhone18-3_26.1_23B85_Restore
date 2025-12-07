@interface PUIContactsPrivacySettingsInsetView
- (PUIContactsPrivacySettingsInsetView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation PUIContactsPrivacySettingsInsetView

- (PUIContactsPrivacySettingsInsetView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v38[4] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = PUIContactsPrivacySettingsInsetView;
  identifierCopy = identifier;
  specifierCopy = specifier;
  v30 = [(PSTableCell *)&v32 initWithStyle:style reuseIdentifier:identifierCopy specifier:?];
  if (v30)
  {
    contentView = [(PUIContactsPrivacySettingsInsetView *)v30 contentView];
    [(PUIContactsPrivacySettingsInsetView *)v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setAxis:1];
    [v7 setLayoutMargins:{0.0, 0.0, 0.0, 0.0}];
    [v7 setLayoutMarginsRelativeArrangement:1];
    [contentView addSubview:v7];
    v29 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v29 setAxis:1];
    [v29 setLayoutMargins:{15.0, 15.0, 10.0, 15.0}];
    [v29 setLayoutMarginsRelativeArrangement:1];
    v22 = MEMORY[0x277CCAAD0];
    topAnchor = [v7 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v38[0] = v24;
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v38[1] = v9;
    trailingAnchor = [v7 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v38[2] = v12;
    bottomAnchor = [v7 bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v38[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v22 activateConstraints:v16];

    if (objc_opt_class())
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2050000000;
      v17 = getCNContactGroupVisualizerClass_softClass;
      v37 = getCNContactGroupVisualizerClass_softClass;
      if (!getCNContactGroupVisualizerClass_softClass)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __getCNContactGroupVisualizerClass_block_invoke;
        v33[3] = &unk_279BA0D08;
        v33[4] = &v34;
        __getCNContactGroupVisualizerClass_block_invoke(v33);
        v17 = v35[3];
      }

      v18 = v17;
      _Block_object_dispose(&v34, 8);
      allContactsSettingsViewController = [v17 allContactsSettingsViewController];
      view = [allContactsSettingsViewController view];
      [v7 addArrangedSubview:view];
    }
  }

  return v30;
}

@end