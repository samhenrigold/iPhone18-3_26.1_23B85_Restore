@interface BCInvalidCertificatView
- (id)initWithHost:(id *)host;
@end

@implementation BCInvalidCertificatView

- (id)initWithHost:(id *)host
{
  v120[6] = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (host)
  {
    v116.receiver = host;
    v116.super_class = BCInvalidCertificatView;
    v5 = objc_msgSendSuper2(&v116, sel_init);
    host = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 51, a2);
      v110 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v115 = v4;
      v100 = [MEMORY[0x277D755B8] imageNamed:@"InsecureIcon" inBundle:v110 compatibleWithTraitCollection:0];
      v6 = [MEMORY[0x277D75348] colorNamed:@"InsecureTitleColor" inBundle:v110 compatibleWithTraitCollection:0];
      v96 = [MEMORY[0x277D75348] colorNamed:@"InsecureMessageColor" inBundle:v110 compatibleWithTraitCollection:0];
      v105 = [MEMORY[0x277D75348] colorNamed:@"InvalidCertificatColor" inBundle:v110 compatibleWithTraitCollection:0];
      v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
      fontDescriptor = [v7 fontDescriptor];

      v117[0] = *MEMORY[0x277D74380];
      v119[0] = *MEMORY[0x277D74430];
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74410]];
      v118[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v119 count:1];
      v120[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v117 count:1];
      v12 = [fontDescriptor fontDescriptorByAddingAttributes:v11];

      [host setBackgroundColor:v105];
      v13 = objc_opt_new();
      objc_storeStrong(host + 55, v13);

      v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v100];
      objc_storeStrong(host + 52, v14);

      v15 = objc_opt_new();
      objc_storeStrong(host + 53, v15);

      v16 = MEMORY[0x277D74300];
      [v12 pointSize];
      v17 = [v16 fontWithDescriptor:v12 size:?];
      [host[53] setFont:v17];

      [host[53] setTextColor:v6];
      v18 = +[BCShared classBundle];
      v19 = [v18 localizedStringForKey:@"CONNECTION_NOT_PRIVATE_TITLE" value:&stru_2849DDCD8 table:0];
      [host[53] setText:v19];

      [host[53] setTextAlignment:1];
      [host[53] setNumberOfLines:0];
      v20 = objc_opt_new();
      objc_storeStrong(host + 54, v20);

      v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      [host[54] setFont:v21];

      [host[54] setTextColor:v96];
      v22 = MEMORY[0x277CCACA8];
      v23 = +[BCShared classBundle];
      v24 = [v23 localizedStringForKey:@"CONNECTION_NOT_PRIVATE_MESSAGE" value:&stru_2849DDCD8 table:0];
      v25 = host[51];
      v26 = [v22 stringWithFormat:v24, v25];
      [host[54] setText:v26];

      [host[54] setTextAlignment:1];
      [host[54] setNumberOfLines:0];
      v27 = host[52];
      v28 = host[55];
      [v28 addSubview:v27];

      v29 = host[53];
      v30 = host[55];
      [v30 addSubview:v29];

      v31 = host[54];
      v32 = host[55];
      [v32 addSubview:v31];

      [host addSubview:host[55]];
      [host[55] setTranslatesAutoresizingMaskIntoConstraints:0];
      [host[52] setTranslatesAutoresizingMaskIntoConstraints:0];
      [host[53] setTranslatesAutoresizingMaskIntoConstraints:0];
      [host[54] setTranslatesAutoresizingMaskIntoConstraints:0];
      v82 = MEMORY[0x277CCAAD0];
      v111 = host[55];
      topAnchor = [v111 topAnchor];
      topAnchor2 = [host topAnchor];
      v97 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:20.0];
      v120[0] = v97;
      v93 = host[55];
      leftAnchor = [v93 leftAnchor];
      leftAnchor2 = [host leftAnchor];
      v84 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:20.0];
      v120[1] = v84;
      v80 = host[55];
      rightAnchor = [v80 rightAnchor];
      rightAnchor2 = [host rightAnchor];
      v74 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2 constant:-20.0];
      v120[2] = v74;
      v73 = host[55];
      bottomAnchor = [v73 bottomAnchor];
      bottomAnchor2 = [host bottomAnchor];
      v70 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-20.0];
      v120[3] = v70;
      v33 = host[55];
      centerXAnchor = [v33 centerXAnchor];
      centerXAnchor2 = [host centerXAnchor];
      v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v120[4] = v36;
      v37 = host[55];
      centerYAnchor = [v37 centerYAnchor];
      centerYAnchor2 = [host centerYAnchor];
      v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v120[5] = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:6];
      [v82 activateConstraints:v41];

      v102 = MEMORY[0x277CCAAD0];
      v112 = host[52];
      topAnchor3 = [v112 topAnchor];
      v42 = host[55];
      topAnchor4 = [v42 topAnchor];
      v44 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v119[0] = v44;
      v45 = host[52];
      centerXAnchor3 = [v45 centerXAnchor];
      v47 = host[55];
      centerXAnchor4 = [v47 centerXAnchor];
      v49 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      v119[1] = v49;
      v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:2];
      [v102 activateConstraints:v50];

      v91 = MEMORY[0x277CCAAD0];
      v113 = host[53];
      firstBaselineAnchor = [v113 firstBaselineAnchor];
      v103 = host[52];
      lastBaselineAnchor = [v103 lastBaselineAnchor];
      v94 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:40.0];
      v118[0] = v94;
      v88 = host[53];
      leadingAnchor = [v88 leadingAnchor];
      v51 = host[55];
      leadingAnchor2 = [v51 leadingAnchor];
      v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v118[1] = v53;
      v54 = host[53];
      trailingAnchor = [v54 trailingAnchor];
      v56 = host[55];
      trailingAnchor2 = [v56 trailingAnchor];
      v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v118[2] = v58;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:3];
      [v91 activateConstraints:v59];

      v86 = MEMORY[0x277CCAAD0];
      v114 = host[54];
      firstBaselineAnchor2 = [v114 firstBaselineAnchor];
      v104 = host[53];
      lastBaselineAnchor2 = [v104 lastBaselineAnchor];
      v95 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor2 constant:38.0];
      v117[0] = v95;
      v92 = host[54];
      leadingAnchor3 = [v92 leadingAnchor];
      v83 = host[55];
      leadingAnchor4 = [v83 leadingAnchor];
      v79 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v117[1] = v79;
      v77 = host[54];
      trailingAnchor3 = [v77 trailingAnchor];
      v60 = host[55];
      trailingAnchor4 = [v60 trailingAnchor];
      v62 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v117[2] = v62;
      v63 = host[54];
      bottomAnchor3 = [v63 bottomAnchor];
      v65 = host[55];
      bottomAnchor4 = [v65 bottomAnchor];
      v67 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v117[3] = v67;
      v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:4];
      [v86 activateConstraints:v68];

      v4 = v115;
    }
  }

  return host;
}

@end