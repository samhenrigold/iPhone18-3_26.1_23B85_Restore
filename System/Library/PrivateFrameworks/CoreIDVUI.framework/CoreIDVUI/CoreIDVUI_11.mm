_OWORD *sub_24588D5C0(_OWORD *a1, char *a2)
{
  v22[3] = &type metadata for IdentityProofingAuthCodeRetryViewConfiguration;
  v22[4] = &off_285884C80;
  v4 = swift_allocObject();
  v5 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v22[0] = v4;
  v12 = a1[5];
  v4[5] = a1[4];
  v4[6] = v12;
  *(v4 + 105) = *(a1 + 89);
  v13 = a1[1];
  v4[1] = *a1;
  v4[2] = v13;
  v15 = a1[2];
  v14 = a1[3];
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v4[3] = v15;
  v4[4] = v14;
  v16 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];

  *&a2[v16] = v17;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v22, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v21.receiver = a2;
  v21.super_class = type metadata accessor for IdentityProofingViewController();
  v19 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v19;
}

id sub_24588D8B4(uint64_t a1, char *a2)
{
  v18[3] = type metadata accessor for IdentityProofingProgressViewConfiguration(0);
  v18[4] = &off_28588AD08;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_245892D94(a1, boxed_opaque_existential_1, type metadata accessor for IdentityProofingProgressViewConfiguration);
  v5 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v12 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor_];

  *&a2[v12] = v13;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v18, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v17.receiver = a2;
  v17.super_class = type metadata accessor for IdentityProofingViewController();
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

id sub_24588DB98(uint64_t a1, char *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = a3(0);
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v21[3] = v7;
  v21[4] = a4;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v21[0] = a1;
  v15 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor_];

  *&a2[v15] = v16;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v21, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v20.receiver = a2;
  v20.super_class = type metadata accessor for IdentityProofingViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

id sub_24588DE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v24[3] = &type metadata for RGBCaptureViewConfiguration;
  v24[4] = &off_285889A70;
  v10 = swift_allocObject();
  v11 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v24[0] = v10;
  v10[2] = a1;
  v10[3] = a2;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v10[4] = a3;
  v10[5] = a4;
  v18 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor_];

  *&a5[v18] = v19;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v24, &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v23.receiver = a5;
  v23.super_class = type metadata accessor for IdentityProofingViewController();
  v21 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v21;
}

id sub_24588E13C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  v18[4] = &off_2858894C8;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v18[0] = a1;
  v18[1] = a2;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v18[2] = a3;
  v18[3] = &type metadata for IdentityProofingReviewSubmissionViewConfiguration;
  v12 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor_];

  *&a4[v12] = v13;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v18, &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v17.receiver = a4;
  v17.super_class = type metadata accessor for IdentityProofingViewController();
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

__int128 *sub_24588E3DC(__int128 *a1, char *a2)
{
  v21[3] = &type metadata for IdentityProofingAddedToWalletViewConfiguration;
  v21[4] = &off_285889E98;
  v4 = swift_allocObject();
  v5 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v21[0] = v4;
  v12 = a1[3];
  v4[3] = a1[2];
  v4[4] = v12;
  *(v4 + 76) = *(a1 + 60);
  v14 = *a1;
  v13 = a1[1];
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v4[1] = v14;
  v4[2] = v13;
  v15 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor_];

  *&a2[v15] = v16;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v21, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v20.receiver = a2;
  v20.super_class = type metadata accessor for IdentityProofingViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

id sub_24588E71C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v19[3] = a4;
  v19[4] = a5;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v19[0] = a1;
  v19[1] = a2;
  v13 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [objc_opt_self() clearColor];
  [v14 setBackgroundColor_];

  *&a3[v13] = v14;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v19, &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v18.receiver = a3;
  v18.super_class = type metadata accessor for IdentityProofingViewController();
  v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

id sub_24588EA00(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[3] = a3;
  v22[4] = a4;
  v7 = swift_allocObject();
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v22[0] = v7;
  v15 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v15;
  *(v7 + 48) = *(a1 + 32);
  v16 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];

  *&a2[v16] = v17;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v22, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v21.receiver = a2;
  v21.super_class = type metadata accessor for IdentityProofingViewController();
  v19 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v19;
}

char *sub_24588ECB0(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v15[3] = &type metadata for ProvideFeedbackViewConfiguration;
  v15[4] = &off_285885300;
  v9 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [objc_opt_self() clearColor];
  [v10 setBackgroundColor_];

  *&a1[v9] = v10;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v15, &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v14.receiver = a1;
  v14.super_class = type metadata accessor for IdentityProofingViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

__int128 *sub_24588EF48(__int128 *a1, char *a2)
{
  v21[3] = &type metadata for UsingYourIDViewConfiguration;
  v21[4] = &off_28588B730;
  v4 = swift_allocObject();
  v5 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v21[0] = v4;
  v12 = a1[3];
  v4[3] = a1[2];
  v4[4] = v12;
  v4[5] = a1[4];
  *(v4 + 92) = *(a1 + 76);
  v13 = *a1;
  v14 = a1[1];
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v4[1] = v13;
  v4[2] = v14;
  v15 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor_];

  *&a2[v15] = v16;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v21, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v20.receiver = a2;
  v20.super_class = type metadata accessor for IdentityProofingViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

void sub_24588F21C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v46[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46[-v14];
  v16 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager);
  if (v16)
  {
    v17 = a3;

    v18 = sub_2458AE30C();

    if (v18 || (type metadata accessor for IdentityProofingReviewSubmissionViewController(), swift_dynamicCastClass()) || *(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) == 1 && (*(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_selfieImageIsRequired) & 1) == 0 && (type metadata accessor for RGBCaptureViewController(0), swift_dynamicCastClass()))
    {
      v49 = v17;
      sub_24589E5E8(a1, v16, v49);

      v19 = v49;
    }

    else
    {
      v28 = sub_245910D64();
      (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
      sub_245910D34();
      v29 = v17;
      v30 = sub_245910D24();
      v31 = swift_allocObject();
      v32 = MEMORY[0x277D85700];
      v31[2] = v30;
      v31[3] = v32;
      v31[4] = v29;
      sub_2458B90EC(0, 0, v15, &unk_24591C038, v31);

      sub_24590C714();
      v33 = a1;
      v34 = sub_24590F344();
      v35 = sub_245910F54();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v50 = v48;
        *v36 = 136315138;
        v37 = v33;
        v38 = [v37 description];
        v47 = v35;
        v39 = v38;
        v40 = sub_245910A04();
        v49 = v29;
        v41 = v40;
        v43 = v42;

        v44 = sub_2458CC378(v41, v43, &v50);

        *(v36 + 4) = v44;
        _os_log_impl(&dword_245767000, v34, v47, "Terms and Conditions not in pagination, unable to show liveness video alert on %s", v36, 0xCu);
        v45 = v48;
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x245D77B40](v45, -1, -1);
        MEMORY[0x245D77B40](v36, -1, -1);

        (*(v7 + 8))(v9, v6);
      }

      else
      {

        (*(v7 + 8))(v9, v6);
      }
    }
  }

  else
  {
    v20 = sub_245910D64();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
    sub_245910D34();
    v21 = a3;
    v22 = sub_245910D24();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v21;
    sub_2458B90EC(0, 0, v15, &unk_24591B5D0, v23);

    sub_24590C714();
    v25 = sub_24590F344();
    v26 = sub_245910F64();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_245767000, v25, v26, "livenessVideoUploadsManager not instantiated, cannot show upload alert if necessary.", v27, 2u);
      MEMORY[0x245D77B40](v27, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
  }
}

void sub_24588F7AC(void *a1, uint64_t a2, char *a3)
{
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager);
  if (v13)
  {
    v14 = a3;

    v15 = sub_2458AE30C();

    if (v15 || (type metadata accessor for IdentityProofingReviewSubmissionViewController(), swift_dynamicCastClass()) || *(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) == 1 && (*(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_selfieImageIsRequired) & 1) == 0 && (type metadata accessor for RGBCaptureViewController(0), swift_dynamicCastClass()))
    {
      v38 = v14;
      sub_24589F0B8(a1, v13, v38);

      v16 = v38;
    }

    else
    {
      v22 = [v14 navigationController];

      sub_24586CA74(v22, 2, 0, 0);

      sub_24590C714();
      v23 = a1;
      v24 = sub_24590F344();
      v25 = sub_245910F54();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v36 = v26;
        v38 = swift_slowAlloc();
        v39 = v38;
        *v26 = 136315138;
        v27 = v23;
        v37 = v25;
        v28 = v27;
        v29 = [v27 description];
        v30 = sub_245910A04();
        v32 = v31;

        v33 = sub_2458CC378(v30, v32, &v39);

        v34 = v36;
        *(v36 + 1) = v33;
        _os_log_impl(&dword_245767000, v24, v37, "Terms and Conditions not in pagination, unable to show liveness video alert on %s", v34, 0xCu);
        v35 = v38;
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x245D77B40](v35, -1, -1);
        MEMORY[0x245D77B40](v34, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    v17 = a3;
    v18 = [v17 navigationController];

    sub_24586CA74(v18, 2, 0, 0);

    sub_24590C714();
    v19 = sub_24590F344();
    v20 = sub_245910F64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_245767000, v19, v20, "livenessVideoUploadsManager not instantiated, cannot show upload alert if necessary.", v21, 2u);
      MEMORY[0x245D77B40](v21, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
  }
}

void sub_24588FC0C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_24590F354();
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager);
  if (!v16)
  {
    v21 = a5;

    v22 = a4;
    sub_2458981C8(a3, v22, a5);
    sub_24590C714();
    v23 = sub_24590F344();
    v24 = sub_245910F64();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_245767000, v23, v24, "livenessVideoUploadsManager not instantiated, cannot show upload alert if necessary.", v25, 2u);
      MEMORY[0x245D77B40](v25, -1, -1);
    }

    v44[1](v15, v10);
    goto LABEL_16;
  }

  v43 = a5;

  v17 = a4;
  v18 = sub_2458AE30C();

  if (!v18)
  {
    type metadata accessor for IdentityProofingReviewSubmissionViewController();
    if (!swift_dynamicCastClass())
    {
      if (*(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) != 1 || (*(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_selfieImageIsRequired) & 1) != 0 || (type metadata accessor for RGBCaptureViewController(0), !swift_dynamicCastClass()))
      {
        sub_2458981C8(a3, v17, a5);
        sub_24590C714();
        v26 = a1;
        v27 = sub_24590F344();
        v28 = sub_245910F54();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v40 = v29;
          v42 = swift_slowAlloc();
          v45 = v42;
          *v29 = 136315138;
          v30 = v26;
          v41 = v28;
          v31 = v30;
          v32 = [v30 description];
          v33 = sub_245910A04();
          v35 = v34;

          v36 = sub_2458CC378(v33, v35, &v45);

          v37 = v40;
          *(v40 + 1) = v36;
          v38 = v37;
          _os_log_impl(&dword_245767000, v27, v41, "Terms and Conditions not in pagination, unable to show liveness video alert on %s", v37, 0xCu);
          v39 = v42;
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x245D77B40](v39, -1, -1);
          MEMORY[0x245D77B40](v38, -1, -1);
        }

        v44[1](v12, v10);

LABEL_16:

        return;
      }
    }
  }

  v19 = v17;
  v44 = v43;
  sub_24589FA84(a1, v16, a3, v19, a5);

  v20 = v44;
}

uint64_t sub_245890058(void *a1)
{
  v92 = a1;
  v93[1] = *MEMORY[0x277D85DE8];
  v1 = sub_24590F354();
  v91 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v90 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v80 - v4;
  MEMORY[0x28223BE20](v6);
  v88 = (&v80 - v7);
  v8 = sub_24590C094();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v89 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v80 - v12;
  MEMORY[0x28223BE20](v13);
  v82 = &v80 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  v23 = [v22 URLsForDirectory:9 inDomains:1];
  v24 = sub_245910C44();

  if (*(v24 + 16))
  {
    v84 = v9;
    v85 = v1;
    v25 = *(v9 + 16);
    v25(v20, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

    sub_24590C044();
    sub_24590C064();
    v26 = sub_2459109C4();

    v27 = [v22 fileExistsAtPath_];

    v28 = v17;
    v29 = v92;
    v86 = v20;
    v87 = v28;
    if (v27)
    {
      v30 = [v21 defaultManager];
      v31 = sub_24590C034();
      v93[0] = 0;
      v32 = [v30 removeItemAtURL:v31 error:v93];

      v33 = v93[0];
      if (!v32)
      {
LABEL_12:
        v61 = v33;
        v62 = sub_24590BFA4();

        swift_willThrow();
        v63 = v90;
        sub_24590C714();
        v64 = v89;
        v25(v89, v92, v8);
        v65 = v62;
        v66 = sub_24590F344();
        v67 = sub_245910F64();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v93[0] = v92;
          *v68 = 136315394;
          v69 = sub_24590C024();
          v71 = v70;
          v81 = v22;
          v72 = *(v84 + 8);
          v72(v64, v8);
          v73 = sub_2458CC378(v69, v71, v93);

          *(v68 + 4) = v73;
          *(v68 + 12) = 2112;
          v74 = v62;
          v75 = _swift_stdlib_bridgeErrorToNSError();
          *(v68 + 14) = v75;
          v76 = v88;
          *v88 = v75;
          _os_log_impl(&dword_245767000, v66, v67, "Error copying file at %s -> %@", v68, 0x16u);
          sub_245778F94(v76, &qword_27EE297C0, &unk_245916DE0);
          MEMORY[0x245D77B40](v76, -1, -1);
          v77 = v92;
          __swift_destroy_boxed_opaque_existential_1(v92);
          MEMORY[0x245D77B40](v77, -1, -1);
          MEMORY[0x245D77B40](v68, -1, -1);

          (*(v91 + 8))(v90, v85);
          v72(v87, v8);
          return (v72)(v86, v8);
        }

        else
        {

          v78 = *(v84 + 8);
          v78(v64, v8);
          (*(v91 + 8))(v63, v85);
          v78(v87, v8);
          return (v78)(v20, v8);
        }
      }

      v34 = v93[0];
      v28 = v87;
    }

    v35 = sub_24590C034();
    v36 = sub_24590C034();
    v93[0] = 0;
    v37 = v28;
    v38 = [v22 copyItemAtURL:v35 toURL:v36 error:v93];

    v33 = v93[0];
    if (v38)
    {
      v81 = v22;
      v39 = v93[0];
      v40 = v88;
      sub_24590C714();
      v41 = v82;
      v25(v82, v29, v8);
      v42 = v83;
      v25(v83, v37, v8);
      v43 = sub_24590F344();
      v44 = sub_245910F54();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v93[0] = v92;
        *v45 = 136315394;
        v46 = sub_24590C024();
        v48 = v47;
        v49 = *(v84 + 8);
        v49(v41, v8);
        v50 = sub_2458CC378(v46, v48, v93);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v51 = sub_24590C024();
        v53 = v52;
        v49(v42, v8);
        v54 = sub_2458CC378(v51, v53, v93);

        *(v45 + 14) = v54;
        _os_log_impl(&dword_245767000, v43, v44, "File with url %s copied to documents directory at %s", v45, 0x16u);
        v55 = v92;
        swift_arrayDestroy();
        MEMORY[0x245D77B40](v55, -1, -1);
        MEMORY[0x245D77B40](v45, -1, -1);

        (*(v91 + 8))(v88, v85);
        v49(v87, v8);
        return (v49)(v86, v8);
      }

      else
      {

        v79 = *(v84 + 8);
        v79(v42, v8);
        v79(v41, v8);
        (*(v91 + 8))(v40, v85);
        v79(v37, v8);
        return (v79)(v86, v8);
      }
    }

    v20 = v86;
    goto LABEL_12;
  }

  v57 = v1;

  sub_24590C714();
  v58 = sub_24590F344();
  v59 = sub_245910F64();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_245767000, v58, v59, "Unable to get the documents directory path to copy the liveness video", v60, 2u);
    MEMORY[0x245D77B40](v60, -1, -1);
  }

  return (*(v91 + 8))(v5, v57);
}

void *sub_2458909C8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_24590EA74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24590F354();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v16 = v3[36];
  if (v16)
  {
    v61 = v12;
    v55 = a1;
    v58 = v8;
    v17 = v3[35];
    v18 = v16;

    sub_24590C714();

    v19 = sub_24590F344();
    v20 = sub_245910F54();

    v21 = os_log_type_enabled(v19, v20);
    v62 = v17;
    v63 = v18;
    v54 = v2;
    v56 = v5;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = v6;
      v24 = swift_slowAlloc();
      v64 = v24;
      *v22 = 136315138;
      *(v22 + 4) = sub_2458CC378(v17, v18, &v64);
      _os_log_impl(&dword_245767000, v19, v20, "The state of the identity document is %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v25 = v24;
      v6 = v23;
      v5 = v56;
      MEMORY[0x245D77B40](v25, -1, -1);
      MEMORY[0x245D77B40](v22, -1, -1);
    }

    v26 = v61;
    v27 = *(v60 + 8);
    v27(v15, v61);
    v28 = v3[38];
    v29 = v58;
    if (v28)
    {
      v30 = v3[37];

      v31 = v57;
      sub_24590C714();

      v32 = sub_24590F344();
      v33 = sub_245910F54();

      v34 = os_log_type_enabled(v32, v33);
      v61 = v28;
      v59 = v30;
      v53 = v6;
      if (v34)
      {
        v35 = v27;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v64 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_2458CC378(v30, v28, &v64);
        _os_log_impl(&dword_245767000, v32, v33, "The Country of the identity document is %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x245D77B40](v37, -1, -1);
        MEMORY[0x245D77B40](v36, -1, -1);

        v35(v31, v26);
      }

      else
      {

        v27(v31, v26);
      }

      v39 = sub_24590D464();
      v40 = v39;
      if (v39 >> 62)
      {
        goto LABEL_33;
      }

      for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
      {
        v42 = 0;
        while (1)
        {
          if ((v40 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x245D76B30](v42, v40);
          }

          else
          {
            if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v44 = *(v40 + 8 * v42 + 32);
          }

          v38 = v44;
          v45 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          v46 = sub_24590DE74();
          if (v47)
          {
            if (v46 == v62 && v47 == v63)
            {
            }

            else
            {
              v48 = sub_245911714();

              if ((v48 & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            v49 = sub_24590DE84();
            if (v50)
            {
              if (v49 == v59 && v50 == v61)
              {

LABEL_30:

                return v38;
              }

              v43 = sub_245911714();

              if (v43)
              {

                goto LABEL_30;
              }
            }
          }

LABEL_14:

          ++v42;
          if (v45 == i)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        ;
      }

LABEL_34:

      (*(v53 + 104))(v58, *MEMORY[0x277CFFBE8], v56);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      v38 = sub_24590EA84();
      sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      swift_allocError();
    }

    else
    {

      (*(v6 + 104))(v29, *MEMORY[0x277CFF9F8], v5);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      v38 = sub_24590EA84();
      sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      swift_allocError();
    }
  }

  else
  {
    (*(v6 + 104))(v8, *MEMORY[0x277CFF9B8], v5, v13);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    v38 = sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    swift_allocError();
  }

  sub_24590EA94();
  swift_willThrow();
  return v38;
}

uint64_t sub_2458911C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  v2[4] = swift_task_alloc();
  v3 = sub_24590F354();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458912C4, 0, 0);
}

uint64_t sub_2458912C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    sub_245910D34();
    v0[10] = sub_245910D24();
    v3 = sub_245910CD4();

    return MEMORY[0x2822009F8](sub_24589147C, v3, v2);
  }

  else
  {
    sub_24590C714();
    v4 = sub_24590F344();
    v5 = sub_245910F54();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_245767000, v4, v5, "FetchAndUpdateLatestProofingViews: Will update the proofing views", v6, 2u);
      MEMORY[0x245D77B40](v6, -1, -1);
    }

    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];

    (*(v8 + 8))(v7, v9);
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_245891758;
    v11 = v0[2];

    return sub_245874CE8(v11);
  }
}

uint64_t sub_24589147C()
{
  v1 = *(v0 + 72);

  *(v0 + 88) = [v1 topViewController];

  return MEMORY[0x2822009F8](sub_245891504, 0, 0);
}

uint64_t sub_245891504(uint64_t a1)
{
  v2 = v1[11];
  if (v2 && (type metadata accessor for IdentityProofingFedStatsOptinViewController(), v3 = swift_dynamicCastClass(), v2, v3))
  {
    sub_24590C714();
    v4 = sub_24590F344();
    v5 = sub_245910F54();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v1[8];
    v8 = v1[5];
    v9 = v1[6];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245767000, v4, v5, "FetchAndUpdateLatestProofingViews: We dont want to update the UI on fed stats optin view", v10, 2u);
      MEMORY[0x245D77B40](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);

    v11 = v1[1];

    return v11();
  }

  else
  {
    sub_24590C714();
    v13 = sub_24590F344();
    v14 = sub_245910F54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245767000, v13, v14, "FetchAndUpdateLatestProofingViews: Will update the proofing views", v15, 2u);
      MEMORY[0x245D77B40](v15, -1, -1);
    }

    v17 = v1[6];
    v16 = v1[7];
    v18 = v1[5];

    (*(v17 + 8))(v16, v18);
    v19 = swift_task_alloc();
    v1[12] = v19;
    *v19 = v1;
    v19[1] = sub_245891758;
    v20 = v1[2];

    return sub_245874CE8(v20);
  }
}

uint64_t sub_245891758()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2458918B0, 0, 0);
  }
}

uint64_t sub_2458918B0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_245910D64();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_245910D34();

  v4 = sub_245910D24();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v2;
  sub_2458B90EC(0, 0, v1, &unk_24591BF60, v5);

  v7 = v0[1];

  return v7();
}

void *sub_2458919E0()
{
  v1 = v0;

  sub_2458AD54C();
  v3 = v2;

  swift_unknownObjectWeakAssign();
  v4 = *(v0 + 192);
  if (v4)
  {
    v5 = *(v0 + 184);
    v6 = v3;

    sub_245877F78(v5, v4);

    *(v1 + 184) = 0;
    *(v1 + 192) = 0;
  }

  return v3;
}

uint64_t sub_245891A80()
{
  v1[22] = v0;
  v2 = sub_24590EA74();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = sub_24590F354();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245891BA8, 0, 0);
}

uint64_t sub_245891BA8()
{
  v23 = v0;
  v1 = v0[22];
  sub_2458836B4();
  v2 = *(v1 + 168);
  v0[30] = v2;
  if (v2)
  {
    v3 = v0[22];
    v4 = *(v3 + 112);
    v5 = *(v3 + 144);
    v0[2] = v0;
    v0[3] = sub_245891F8C;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0, &qword_2459170D0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24579D0B4;
    v0[13] = &block_descriptor_187;
    v0[14] = v6;
    [v4 proofingCancelledWithConfiguration:v2 proofingOptions:v5 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    (*(v0[24] + 104))(v0[25], *MEMORY[0x277CFFBE8], v0[23]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v7 = swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    sub_24590C714();
    v8 = v7;
    v9 = sub_24590F344();
    v10 = sub_245910F54();

    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_2459117D4();
      v19 = sub_2458CC378(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_245767000, v9, v10, "Error received while cancelling proofing session %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245D77B40](v16, -1, -1);
      MEMORY[0x245D77B40](v15, -1, -1);

      (*(v13 + 8))(v12, v14);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v20 = v0[1];

    return v20(0);
  }
}

uint64_t sub_245891F8C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_2458921D4;
  }

  else
  {
    v2 = sub_24589209C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24589209C(uint64_t a1)
{
  sub_24590C714();
  v2 = sub_24590F344();
  v3 = sub_245910F54();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[29];
  v6 = v1[30];
  v7 = v1[26];
  v8 = v1[27];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_245767000, v2, v3, "Proofing Session Cancellation Successful", v9, 2u);
    MEMORY[0x245D77B40](v9, -1, -1);
  }

  else
  {

    v2 = v6;
  }

  (*(v8 + 8))(v5, v7);

  v10 = v1[1];

  return v10(1);
}

uint64_t sub_2458921D4(uint64_t a1)
{
  v21 = v1;
  v2 = v1[30];
  swift_willThrow();

  v3 = v1[31];
  sub_24590C714();
  v4 = v3;
  v5 = sub_24590F344();
  v6 = sub_245910F54();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[27];
    v19 = v1[28];
    v8 = v1[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_2459117D4();
    v13 = sub_2458CC378(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_245767000, v5, v6, "Error received while cancelling proofing session %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D77B40](v10, -1, -1);
    MEMORY[0x245D77B40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = v1[27];
    v14 = v1[28];
    v16 = v1[26];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v1[1];

  return v17(0);
}

uint64_t objectdestroy_196Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2458924EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2457AA49C;

  return sub_245885C0C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2458925C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245883A34(a1, v4, v5, v6);
}

uint64_t sub_245892674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245881858(a1, v4, v5, v6);
}

uint64_t sub_245892728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_245880D34(a1, v4, v5, v7, v6);
}

uint64_t sub_2458927E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2458803C0(a1, v4, v5, v6);
}

uint64_t sub_24589289C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2457A18F4;

  return sub_24587F84C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_245892978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_24587E7E4(a1, v4, v5, v6);
}

double sub_245892A2C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;

  return result;
}

uint64_t objectdestroy_176Tm()
{

  return swift_deallocObject();
}

uint64_t sub_245892B00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_245889DB4(a1, v4, v5, v7, v6);
}

uint64_t sub_245892BDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_2458746E8(a1, v4, v5, v7, v6);
}

uint64_t sub_245892CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofingLivenessVideoData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245892D38(uint64_t a1)
{
  v2 = type metadata accessor for IdentityProofingLivenessVideoData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245892D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_193Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_245892EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_380Tm()
{

  return swift_deallocObject();
}

void sub_245892F48(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_24590EA74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v11 = [v10 aida_accountForPrimaryiCloudAccount];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11;
  v25 = a2;
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 altDSIDForAccount_];

  if (!v14)
  {

    a2 = v25;
LABEL_5:
    (*(v7 + 104))(v9, *MEMORY[0x277CFF9E0], v6);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v23 = swift_allocError();
    sub_24590EA94();
    a2(v23);

    goto LABEL_6;
  }

  v15 = objc_allocWithZone(MEMORY[0x277CF0170]);
  v16 = v14;
  v17 = [v15 init];
  [v17 setAltDSID_];

  v18 = *MEMORY[0x277CF0090];
  [v17 setSecurityUpgradeContext_];
  v19 = [objc_allocWithZone(MEMORY[0x277CFDAE8]) initWithAltDSID_];

  [v19 setPresentingViewController_];
  [v19 setDeviceToDeviceEncryptionUpgradeType_];
  [v19 setDeviceToDeviceEncryptionUpgradeUIStyle_];
  [v19 setSecurityUpgradeContext_];
  v20 = [objc_allocWithZone(MEMORY[0x277CFDAF0]) initWithContext_];
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = a3;
  aBlock[4] = sub_245893368;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245889D3C;
  aBlock[3] = &block_descriptor_396;
  v22 = _Block_copy(aBlock);

  [v20 performDeviceToDeviceEncryptionStateRepairWithCompletion_];
  _Block_release(v22);

  v10 = v20;
LABEL_6:
}

uint64_t objectdestroy_172Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t sub_2458933D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457A18F4;

  return sub_2458776F4(a1, v4, v5, v7, v6);
}

uint64_t sub_2458935F0()
{
  v1 = v0;
  v2 = sub_24590F2F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  if (v6)
  {

    v7 = v6;
    v8 = sub_24590D574();
    v28 = sub_24586AA40(v8);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    sub_245893A00();
    if (qword_27EE28718 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_27EE32CC0);
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_245911244();
    v17 = UIImagePNGRepresentation(v16);

    if (v17)
    {
      v18 = sub_24590C154();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xC000000000000000;
    }

    sub_24578FB6C(v12, v14);
    sub_245771C44(v12, v14);
    if (v10)
    {

      sub_24578FB6C(v12, v14);

      if (v14 >> 60 != 15)
      {
        v23 = *(v1 + 16);
        v24 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_cardArtData;
        swift_beginAccess();

        sub_24578FB6C(v12, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *(v23 + v24);
        sub_2458B7974(v12, v14, v28, v10, isUniquelyReferenced_nonNull_native);

        *(v23 + v24) = v29;
        swift_endAccess();
        sub_24578FC28(v18, v20);

        sub_245771C44(v12, v14);

        return v12;
      }

      sub_245771C44(v12, v14);
    }

    else
    {

      sub_245771C44(v12, v14);
    }
  }

  else
  {
    sub_245893A00();
    if (qword_27EE28718 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v2, qword_27EE32CC0);
    (*(v3 + 16))(v5, v21, v2);
    v22 = sub_245911244();
    v7 = UIImagePNGRepresentation(v22);

    if (!v7)
    {
      return 0;
    }

    v18 = sub_24590C154();
  }

  return v18;
}

uint64_t sub_245893994()
{

  return swift_deallocClassInstance();
}

unint64_t sub_245893A00()
{
  result = qword_27EE29638;
  if (!qword_27EE29638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE29638);
  }

  return result;
}

uint64_t type metadata accessor for IdentityProofingProgressViewConfiguration(uint64_t a1)
{
  result = qword_27EE2AD10;
  if (!qword_27EE2AD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_245893AC0(uint64_t a1)
{
  sub_245893BCC(319, &qword_27EE2AD20, MEMORY[0x277CFF588]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for IdentityProofingFlowManager(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for IdentityProofingCardArtResolutionHelper();
      if (v3 <= 0x3F)
      {
        type metadata accessor for IdentityProofingImageAssetProvider();
        if (v4 <= 0x3F)
        {
          sub_245893BCC(319, &qword_27EE2A9C0, MEMORY[0x277CFF660]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_245893BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2459112C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_245893C34()
{
  result = qword_27EE2AD28;
  if (!qword_27EE2AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2AD28);
  }

  return result;
}

uint64_t sub_245893C88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for IdentityProofingProgressViewConfiguration(0);
  sub_2457934F4(v1 + *(v5 + 36), v4);
  v6 = sub_24590E544();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_245778F94(v4, &qword_27EE28F30, &unk_245916C30);
LABEL_5:

    v11 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_6;
  }

  v8 = sub_24590E504();
  v10 = v9;
  (*(v7 + 8))(v4, v6);
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v8;
LABEL_6:
  v12 = sub_24586C880(v11, v10);

  return v12;
}

uint64_t sub_245893DFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for IdentityProofingProgressViewConfiguration(0);
  sub_2457934F4(v1 + *(v5 + 36), v4);
  v6 = sub_24590E544();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_245778F94(v4, &qword_27EE28F30, &unk_245916C30);
LABEL_7:
    v11 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_8;
  }

  v8 = sub_24590E534();
  (*(v7 + 8))(v4, v6);
  if (!v8)
  {
    goto LABEL_7;
  }

  if (!v8[2])
  {

    goto LABEL_7;
  }

  v9 = v8[4];
  v10 = v8[5];

  v11 = v9;
LABEL_8:
  v12 = sub_24586C880(v11, v10);

  return v12;
}

id sub_245893F88()
{
  v1 = sub_24590F2F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v72 - v16;
  if (*v0)
  {
    v18 = sub_2458935F0();
    v20 = v19;
    v21 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v22 = sub_24590C144();
    v23 = [v21 initWithData_];

    sub_24578FC28(v18, v20);
    return v23;
  }

  v75 = v2;
  v76 = v6;
  v77 = v5;
  v25 = type metadata accessor for IdentityProofingProgressViewConfiguration(0);
  sub_2457934F4(v0 + *(v25 + 36), v17);
  v26 = sub_24590E544();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v17, 1, v26) == 1)
  {
    sub_245778F94(v17, &qword_27EE28F30, &unk_245916C30);
LABEL_24:
    v30 = v77;
    goto LABEL_25;
  }

  v28 = v0;
  v29 = sub_24590E4E4();
  (*(v27 + 8))(v17, v26);
  v30 = v77;
  if (v29)
  {
    if (*(v29 + 16))
    {

      v31 = v28[1];

      v32 = sub_24590E634();
      v34 = v33;

      v72 = v31;
      if (v34)
      {
        v79 = v32;
        v80 = v34;
        MEMORY[0x245D76160](46, 0xE100000000000000);
        if (*(v31 + 288))
        {
          v35 = sub_245910A84();
          v37 = v36;
        }

        else
        {
          v35 = 0;
          v37 = 0xE000000000000000;
        }

        MEMORY[0x245D76160](v35, v37);

        v38 = v80;
        v74 = v79;
      }

      else
      {

        v74 = 0;
        v38 = 0xE000000000000000;
      }

      v39 = v77;
      sub_24590C714();

      v40 = sub_24590F344();
      v41 = sub_245910F54();

      v42 = os_log_type_enabled(v40, v41);
      v73 = v38;
      if (v42)
      {
        v43 = v38;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v79 = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_2458CC378(v74, v43, &v79);
        _os_log_impl(&dword_245767000, v40, v41, "IdentityProofingProgressViewConfiguration assetID for the header image is %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x245D77B40](v45, -1, -1);
        MEMORY[0x245D77B40](v44, -1, -1);

        v46 = *(v76 + 8);
        v46(v14, v77);
      }

      else
      {

        v46 = *(v76 + 8);
        v46(v14, v39);
      }

      v47 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_cardArtData;
      v48 = v72;
      swift_beginAccess();
      v49 = *(v48 + v47);
      if (*(v49 + 16))
      {

        v50 = v73;
        v51 = sub_24588C5BC(v74, v73);
        if (v52)
        {
          v53 = (*(v49 + 56) + 16 * v51);
          v54 = *v53;
          v55 = v53[1];
          sub_24578FB80(*v53, v55);

          sub_24590C714();

          v56 = sub_24590F344();
          v57 = sub_245910F54();

          v58 = os_log_type_enabled(v56, v57);
          v59 = v77;
          if (v58)
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v78 = v61;
            *v60 = 136315138;
            v62 = sub_2458CC378(v74, v50, &v78);

            *(v60 + 4) = v62;
            _os_log_impl(&dword_245767000, v56, v57, "IdentityProofingProgressViewConfiguration %s exists in the cardArtData map. Will assign it to the imageView", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v61);
            MEMORY[0x245D77B40](v61, -1, -1);
            MEMORY[0x245D77B40](v60, -1, -1);
          }

          else
          {
          }

          v46(v11, v59);
          v69 = objc_allocWithZone(MEMORY[0x277D755B8]);
          v70 = sub_24590C144();
          v71 = [v69 initWithData_];

          sub_24578FC28(v54, v55);
          return v71;
        }
      }

      goto LABEL_24;
    }
  }

LABEL_25:
  sub_24590C714();
  v63 = sub_24590F344();
  v64 = sub_245910F54();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v75;
  if (v65)
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_245767000, v63, v64, "IdentityProofingProgressViewConfiguration Image assets doesn't exist for the UI; using default", v67, 2u);
    MEMORY[0x245D77B40](v67, -1, -1);
  }

  (*(v76 + 8))(v8, v30);
  sub_245893A00();
  if (qword_27EE28718 != -1)
  {
    swift_once();
  }

  v68 = __swift_project_value_buffer(v1, qword_27EE32CC0);
  (*(v66 + 16))(v4, v68, v1);
  return sub_245911244();
}

uint64_t sub_245894740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_245910D34();
  v5[4] = sub_245910D24();
  v7 = sub_245910CD4();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_2458947D8, v7, v6);
}

uint64_t sub_2458947D8()
{
  if (*(v0[2] + 32))
  {
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_2458948E4;
    v2 = v0[3];

    return sub_245895100(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_2457F45C4;
    v5 = v0[3];

    return sub_245894A04(v5);
  }
}

uint64_t sub_2458948E4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_245895FA4, v3, v2);
}

uint64_t sub_245894A04(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_24590F354();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_245910D34();
  v2[13] = sub_245910D24();
  v5 = sub_245910CD4();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x2822009F8](sub_245894B10, v5, v4);
}

uint64_t sub_245894B10(uint64_t a1)
{
  sub_24590C714();
  v2 = sub_24590F344();
  v3 = sub_245910F54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_245767000, v2, v3, "IdentityProofingProgressViewConfiguration called proofIdentity", v4, 2u);
    MEMORY[0x245D77B40](v4, -1, -1);
  }

  v5 = v1[12];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[7];

  v9 = *(v7 + 8);
  v1[16] = v9;
  v9(v5, v6);
  v1[17] = *(v8 + 8);
  v10 = swift_task_alloc();
  v1[18] = v10;
  *v10 = v1;
  v10[1] = sub_245894C5C;

  return sub_245872958(0, 0);
}

uint64_t sub_245894C5C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_245894EE0;
  }

  else
  {
    v5 = sub_245894D98;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_245894D98()
{

  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "IdentityProofingProgressViewConfiguration finished proofIdentity", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[6];

  v4(v5, v6);
  sub_24586CA74(v7, 2, 0, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_245894EE0()
{
  v22 = v0;
  v1 = v0[19];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = v0[16];
    v5 = v0[10];
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_2459117D4();
    v11 = sub_2458CC378(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_245767000, v3, v4, "IdentityProofingProgressViewConfiguration: Error occured during inline proofing, %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);

    v20(v5, v6);
  }

  else
  {
    v12 = v0[16];
    v13 = v0[10];
    v14 = v0[8];

    v12(v13, v14);
  }

  v15 = v0[19];
  v16 = v0[6];
  v17 = v15;
  sub_2458866E0(v16, v15);

  v18 = v0[1];

  return v18();
}

uint64_t sub_245895100(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  type metadata accessor for IdentityProofingProgressViewConfiguration(0);
  v2[6] = swift_task_alloc();
  v3 = sub_2459115A4();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_24590F354();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_245910D34();
  v2[14] = sub_245910D24();
  v6 = sub_245910CD4();
  v2[15] = v6;
  v2[16] = v5;

  return MEMORY[0x2822009F8](sub_245895288, v6, v5);
}

uint64_t sub_245895288(uint64_t a1)
{
  sub_24590C714();
  v2 = sub_24590F344();
  v3 = sub_245910F54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_245767000, v2, v3, "IdentityProofingProgressViewConfiguration called proofIdentity", v4, 2u);
    MEMORY[0x245D77B40](v4, -1, -1);
  }

  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[5];

  v9 = *(v7 + 8);
  v1[17] = v9;
  v9(v5, v6);
  v1[18] = *(v8 + 8);
  sub_2458852A8();
  v10 = sub_245911894();
  v12 = v11;
  sub_2459117A4();
  v13 = swift_task_alloc();
  v1[19] = v13;
  *v13 = v1;
  v13[1] = sub_24589541C;

  return sub_2458959E4(v10, v12, 0, 0, 1);
}

uint64_t sub_24589541C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 128);
  v7 = *(v2 + 120);
  if (v0)
  {
    v8 = sub_245895704;
  }

  else
  {
    v8 = sub_2458955B4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2458955B4()
{

  v1 = v0[18];
  v2 = v0[4];
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingPendingViewController());
  *&v3[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_proofingFlowManager] = v1;
  type metadata accessor for IdentityProofingCardArtResolutionHelper();
  inited = swift_initStackObject();
  type metadata accessor for IdentityProofingPendingViewConfiguration();
  swift_allocObject();
  v5 = swift_retain_n();
  *&v3[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_configuration] = sub_24584D444(v5, inited);
  v3[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_isRetryProvisioningFlow] = 1;

  v7 = sub_24588E6A8(v6, v3);
  sub_24586D558(v7, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_245895704()
{
  v1 = v0[20];
  v3 = v0[5];
  v2 = v0[6];

  sub_24590C714();
  sub_245895E9C(v3, v2);
  v4 = v1;
  v5 = sub_24590F344();
  v6 = sub_245910F54();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[6];
  if (v7)
  {
    v27 = v0[17];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 134218242;
    v15 = *(*(v12 + 8) + 136);
    sub_245895F00(v12);
    *(v13 + 4) = v15;
    *(v13 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_245767000, v5, v6, "IdentityProofingProgressViewConfiguration Failed to sleep for %f seconds: %@", v13, 0x16u);
    sub_245778F94(v14, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v14, -1, -1);
    MEMORY[0x245D77B40](v13, -1, -1);

    v27(v10, v11);
  }

  else
  {

    v9(v10, v11);
    sub_245895F00(v12);
  }

  v18 = v0[18];
  v19 = v0[4];
  v20 = objc_allocWithZone(type metadata accessor for IdentityProofingPendingViewController());
  *&v20[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_proofingFlowManager] = v18;
  type metadata accessor for IdentityProofingCardArtResolutionHelper();
  inited = swift_initStackObject();
  type metadata accessor for IdentityProofingPendingViewConfiguration();
  swift_allocObject();
  v22 = swift_retain_n();
  *&v20[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_configuration] = sub_24584D444(v22, inited);
  v20[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_isRetryProvisioningFlow] = 1;

  v24 = sub_24588E6A8(v23, v20);
  sub_24586D558(v24, v19);

  v25 = v0[1];

  return v25();
}

uint64_t sub_2458959E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_245911594();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_245895AE4, 0, 0);
}

uint64_t sub_245895AE4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2459115A4();
  v5 = sub_245895F5C(&qword_27EE29DD0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_245911784();
  sub_245895F5C(&qword_27EE29DD8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2459115B4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_245895C74;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_245895C74()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_245895E30, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_245895E30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245895E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofingProgressViewConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245895F00(uint64_t a1)
{
  v2 = type metadata accessor for IdentityProofingProgressViewConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245895F5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_245896004(char a1)
{
  v3 = type metadata accessor for IdentityProofingProgressViewConfiguration(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for IdentityProofingProgressViewController(0);
  v21.receiver = v1;
  v21.super_class = v10;
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1 & 1);
  v11 = [v1 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingProgressViewController_config;
    v14 = sub_245910D64();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_245895E9C(v1 + v13, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_245910D34();
    v15 = v12;
    v16 = sub_245910D24();
    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v16;
    *(v19 + 24) = v20;
    sub_2458963BC(v6, v19 + v17);
    *(v19 + v18) = v15;
    sub_2458B90EC(0, 0, v9, &unk_24591C1D0, v19);
  }
}

id sub_245896290()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingProgressViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for IdentityProofingProgressViewController(uint64_t a1)
{
  result = qword_27EE2AD38;
  if (!qword_27EE2AD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24589632C(uint64_t a1)
{
  result = type metadata accessor for IdentityProofingProgressViewConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2458963BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofingProgressViewConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245896420(uint64_t a1)
{
  v4 = *(type metadata accessor for IdentityProofingProgressViewConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457A18F4;

  return sub_245894740(a1, v6, v7, v1 + v5, v8);
}

id sub_245896564()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___primaryButton;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___primaryButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___primaryButton);
  }

  else
  {
    v4 = sub_2458965C8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2458965C8(uint64_t a1)
{
  type metadata accessor for CoreIDVUIButton();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setBackgroundColor_];

  [v2 addTarget:a1 action:sel_primaryButtonClicked forControlEvents:64];
  return v2;
}

id sub_2458966B0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_245896724(v2, a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_245896724(uint64_t a1, void *a2)
{
  type metadata accessor for CoreIDVUIButton();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_opt_self() systemBlueColor];
  [v4 setTitleColor:v5 forState:0];

  [v4 setHidden_];
  [v4 addTarget:a1 action:*a2 forControlEvents:64];

  return v4;
}

id sub_245896818()
{
  v0 = sub_24590F2F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245893A00();
  if (qword_27EE28718 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27EE32CC0);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_245911244();
  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v7 = v6;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v7 layer];
  [v8 setCornerRadius_];

  v9 = [v7 layer];
  v10 = [objc_opt_self() blackColor];
  v11 = [v10 colorWithAlphaComponent_];

  v12 = [v11 CGColor];
  [v9 setBorderColor_];

  v13 = [v7 layer];
  [v13 setBorderWidth_];

  [v7 setClipsToBounds_];
  [v7 setContentMode_];

  return v7;
}

void sub_245896A9C()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for IdentityProofingStatePendingViewController();
  objc_msgSendSuper2(&v41, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (!v1 || (v2 = v1, v3 = [v1 window], v2, !v3) || (objc_msgSend(v3, sel_safeAreaInsets), v5 = v4, v3, v5 <= 0.0))
  {
    v6 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_imageView] heightAnchor];
    v11 = [v0 view];
    if (!v11)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = v11;
    v9 = [v11 heightAnchor];

    v10 = [v6 constraintEqualToAnchor:v9 multiplier:0.178571429];
LABEL_8:
    v13 = v10;

    [v13 setActive_];
    v14 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_imageView;
    v15 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_imageView] widthAnchor];
    v16 = [*&v0[v14] heightAnchor];
    v17 = [*&v0[v14] image];
    if (v17)
    {
      v18 = v17;
      [v17 size];
      v20 = v19;
      v22 = v21;

      v23 = v20 / v22;
    }

    else
    {
      v23 = 1.0;
    }

    v24 = [v15 constraintEqualToAnchor:v16 multiplier:v23];

    [v24 setActive_];
    v25 = [objc_opt_self() di_mainScreen];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v42.origin.x = v27;
    v42.origin.y = v29;
    v42.size.width = v31;
    v42.size.height = v33;
    Height = CGRectGetHeight(v42);
    v35 = sub_245869D74();
    v36 = [v0 view];
    if (v36)
    {
      v37 = v36;
      v38 = Height * 0.09;
      [v36 safeAreaInsets];
      v40 = v39;

      [v35 contentInset];
      [v35 setContentInset_];

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v6 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_imageView] heightAnchor];
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 heightAnchor];

    v10 = [v6 constraintEqualToAnchor:v9 multiplier:0.151515152];
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
}

void sub_245896E58()
{
  v1 = sub_245896540();
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D76800];
  v4 = [v2 _preferredFontForTextStyle_maximumContentSizeCategory_];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v4 pointSize];
  v6 = [v2 systemFontOfSize_weight_];

  [v1 setFont_];
  [*(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___titleLabel) setAdjustsFontForContentSizeCategory_];
  v7 = sub_24589654C();
  v8 = *MEMORY[0x277D76918];
  v9 = [v2 _preferredFontForTextStyle_maximumContentSizeCategory_];
  [v7 setFont_];

  [*(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___primaryLabel) setAdjustsFontForContentSizeCategory_];
  v10 = sub_245896558();
  v11 = [v2 _preferredFontForTextStyle_maximumContentSizeCategory_];
  [v10 setFont_];

  [*(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___secondaryLabel) setAdjustsFontForContentSizeCategory_];
  v12 = sub_245896564();
  v13 = [v12 titleLabel];

  if (v13)
  {
    v14 = [v2 _preferredFontForTextStyle_maximumContentSizeCategory_];
    [v13 setFont_];
  }

  v15 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___primaryButton) titleLabel];
  [v15 setAdjustsFontSizeToFitWidth_];

  v16 = sub_24589669C();
  v17 = [v16 titleLabel];

  if (v17)
  {
    v18 = [v2 _preferredFontForTextStyle_maximumContentSizeCategory_];
    if (v18)
    {
      v19 = v18;
      [v18 pointSize];
      v20 = [v2 systemFontOfSize_weight_];

      [v17 _swift_FORCE_LOAD___swiftSpatial___CoreIDVUI];
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_7:
  v21 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___secondaryButton) titleLabel];
  [v21 setAdjustsFontSizeToFitWidth_];

  v22 = sub_245896710();
  v23 = [v22 titleLabel];

  if (v23)
  {
    v24 = [v2 _preferredFontForTextStyle_maximumContentSizeCategory_];
    if (v24)
    {
      v25 = v24;
      [v24 pointSize];
      v26 = [v2 systemFontOfSize_weight_];

      [v23 setFont_];
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_10:
  v27 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___tertiaryButton) titleLabel];
  [v27 setAdjustsFontSizeToFitWidth_];
}

id sub_2458972D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_primaryButtonClickedAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_secondaryButtonClickedAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_tertiaryButtonClickedAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___primaryLabel] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___secondaryLabel] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___primaryButton] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___secondaryButton] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___tertiaryButton] = 0;
  v9 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_imageView;
  *&v3[v9] = sub_245896818();
  if (a2)
  {
    v10 = sub_2459109C4();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for IdentityProofingStatePendingViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_24589744C(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_primaryButtonClickedAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_secondaryButtonClickedAction];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_tertiaryButtonClickedAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___primaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___secondaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___primaryButton] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___secondaryButton] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController____lazy_storage___tertiaryButton] = 0;
  v6 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_imageView;
  *&v1[v6] = sub_245896818();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for IdentityProofingStatePendingViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

void sub_245897564()
{
  sub_245771C34(*(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_primaryButtonClickedAction), *(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_primaryButtonClickedAction + 8));
  sub_245771C34(*(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_secondaryButtonClickedAction), *(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_secondaryButtonClickedAction + 8));
  sub_245771C34(*(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_tertiaryButtonClickedAction), *(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_tertiaryButtonClickedAction + 8));

  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingStatePendingViewController_imageView);
}

id sub_245897630(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IdentityProofingStatePendingViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2458977A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;

    sub_24590E204();
    if ((*(v5 + 144) & 3) == 2)
    {
      sub_24590E1C4();
    }

    else
    {
      sub_24590E1B4();
    }

    sub_24590E484();
  }

  return result;
}

void sub_2458978FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a1;
  v49 = sub_24590F354();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D46220]) init];
  [v13 setDelegate_];
  v14 = (v4 + OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_onAppearance);
  v15 = *(v4 + OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_onAppearance);
  v16 = *(v4 + OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_onAppearance + 8);
  *v14 = a2;
  v14[1] = a3;
  sub_245771C34(v15, v16);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_245771BB4(a2, a3);
    goto LABEL_8;
  }

  v18 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager__termsAndConditions);
  sub_245771BB4(a2, a3);
  os_unfair_lock_lock((v18 + 32));
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);

  os_unfair_lock_unlock((v18 + 32));

  if (!v19)
  {
LABEL_8:
    sub_24590C714();
    v44 = sub_24590F344();
    v45 = sub_245910F54();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_245767000, v44, v45, "IdentityProofingTCViewController Unable to fetch terms and conditions. Will show terminal error", v46, 2u);
      MEMORY[0x245D77B40](v46, -1, -1);
    }

    (*(v7 + 8))(v9, v49);
    goto LABEL_11;
  }

  v21 = [v50 topViewController];
  [v13 setHostViewController_];

  sub_24590C714();

  v22 = sub_24590F344();
  v23 = sub_245910F54();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v48 = v13;
    v25 = v24;
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2458CC378(v20, v19, &aBlock);
    _os_log_impl(&dword_245767000, v22, v23, "IdentityProofingTCViewController will load terms and conditions using %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x245D77B40](v26, -1, -1);
    v27 = v25;
    v13 = v48;
    MEMORY[0x245D77B40](v27, -1, -1);
  }

  (*(v7 + 8))(v12, v49);
  v28 = sub_24590C0F4();
  v30 = v29;

  if (v30 >> 60 != 15)
  {
    sub_24578FB6C(v28, v30);

    v31 = sub_2459109C4();

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v13;
    v34 = v50;
    v33[4] = v50;
    v55 = sub_24589A088;
    v56 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_2458989F8;
    v54 = &block_descriptor_27;
    v35 = _Block_copy(&aBlock);
    v36 = v13;
    v37 = v34;

    [v36 setHandlerForButtonName:v31 handler:v35];
    _Block_release(v35);

    v38 = sub_2459109C4();

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v36;
    v55 = sub_24589A0AC;
    v56 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_2458989F8;
    v54 = &block_descriptor_34_0;
    v41 = _Block_copy(&aBlock);
    v42 = v36;

    [v42 setHandlerForButtonName:v38 handler:v41];
    _Block_release(v41);

    v43 = sub_24590C144();
    [v42 loadData:v43 baseURL:0];

    sub_245771C44(v28, v30);
    sub_245771C44(v28, v30);
    goto LABEL_13;
  }

LABEL_11:
  if (swift_weakLoadStrong())
  {
    sub_2458866E0(v50, 0);
  }

LABEL_13:
}

void sub_245897EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v9 = sub_24590F354();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_24590C714();
    v15 = sub_24590F344();
    v16 = sub_245910F54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_245767000, v15, v16, "IdentityProofingTCViewController Agree button clicked in terms and conditions page", v17, 2u);
      MEMORY[0x245D77B40](v17, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v18 = sub_24590E3B4();
    sub_2458977A8(v18, v19, 0x6565726761, 0xE500000000000000);

    v20 = [a6 hostViewController];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 presentedViewController];

      if (v22)
      {
        v23 = swift_weakLoadStrong();
        if (v23)
        {
          v24 = v23;
          v25 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v26 = a7;

          v27 = a6;
          sub_24588FC0C(v22, v24, v25, v27, a7);
        }
      }

      else
      {

        if (swift_weakLoadStrong())
        {
          sub_2458866E0(a7, 0);
        }

        v22 = v14;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2458981C8(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager);
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_queue);

        v10 = v9;
        sub_245911044();

        if (v11)
        {
          sub_2458982F4(a2);
          sub_245898480(a2, a3);
LABEL_8:

          return;
        }
      }

      else
      {
      }
    }

    sub_24589874C(a2, a3);
    goto LABEL_8;
  }
}

void sub_2458982F4(void *a1)
{
  v1 = [a1 displayedPages];
  if (!v1)
  {
    goto LABEL_18;
  }

  v2 = v1;
  sub_24579D5E0(0, &qword_27EE2AE48, 0x277D461F0);
  v3 = sub_245910C44();

  if (v3 >> 62)
  {
    if (sub_245911424())
    {
      goto LABEL_4;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x245D76B30](0, v3);
LABEL_7:
      v5 = v4;

      sub_2458990E0(v5);
      v6 = [v5 leftToolbarItem];
      if (v6)
      {
        v7 = v6;
        [v6 setEnabled_];

        v8 = [v5 rightToolbarItem];
        if (v8)
        {
          v9 = v8;
          [v8 setEnabled_];

          return;
        }

LABEL_20:
        __break(1u);
        return;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v3 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_245898480(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_24590F354();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v13 = sub_24590F344();
  v14 = sub_245910F54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a2;
    v16 = v3;
    v17 = a1;
    v18 = v15;
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_2458CC378(0xD00000000000007FLL, 0x800000024592C460, &v30);
    _os_log_impl(&dword_245767000, v13, v14, "IdentityProofingTCViewController proofIdentity - %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245D77B40](v19, -1, -1);
    v20 = v18;
    a1 = v17;
    v3 = v16;
    a2 = v29;
    MEMORY[0x245D77B40](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v21 = sub_245910D64();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_245910D34();
  v22 = a2;
  v23 = v3;
  v24 = a1;
  v25 = sub_245910D24();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v23;
  v26[5] = v24;
  v26[6] = a2;
  sub_2458B90EC(0, 0, v8, &unk_24591C278, v26);
}

uint64_t sub_24589874C(void *a1, void *a2)
{
  v5 = sub_2459107E4();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_245910814();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24579D5E0(0, &qword_27EE2ABC0, 0x277D85C78);
  v11 = sub_245911034();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a2;
  v12[4] = a1;
  aBlock[4] = sub_24589A188;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_52_0;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a1;
  v16 = v2;

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_245780A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_245780AA8();
  sub_2459113A4();
  MEMORY[0x245D76690](0, v10, v7, v13);
  _Block_release(v13);

  (*(v19 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_2458989F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_245910A04();
    v9 = v8;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v9 = 0;
  if (a4)
  {
LABEL_3:
    v4 = sub_2459108F4();
  }

LABEL_4:

  v10 = a2;
  v6(a2, v7, v9, v4);
}

void sub_245898AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_24590F354();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_24590C714();
    v13 = sub_24590F344();
    v14 = sub_245910F54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245767000, v13, v14, "IdentityProofingTCViewController Disagree button clicked in terms and conditions page", v15, 2u);
      MEMORY[0x245D77B40](v15, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    v16 = sub_24590E3B4();
    sub_2458977A8(v16, v17, 0x6565726761736964, 0xE800000000000000);

    v18 = swift_weakLoadStrong();
    if (v18)
    {
      v19 = *(v18 + 152);

      v20 = *(v19 + 16);
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      if (v21)
      {
        __break(1u);
        return;
      }

      *(v19 + 16) = v22;
    }
  }
}

id sub_245898CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_agreeButtonName];
  *v6 = 0x6565726761;
  *(v6 + 1) = 0xE500000000000000;
  v7 = &v3[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_disagreeButtonName];
  *v7 = 0x6565726761736964;
  *(v7 + 1) = 0xE800000000000000;
  v8 = OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_activityIndicator;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  swift_weakInit();
  v9 = &v3[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_agreeClicked];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_uiConfigFactory] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_config] = 0;
  v10 = &v3[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_onAppearance];
  *v10 = 0;
  *(v10 + 1) = 0;
  if (a2)
  {
    v11 = sub_2459109C4();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for IdentityProofingTCViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id sub_245898E88(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_agreeButtonName];
  *v3 = 0x6565726761;
  *(v3 + 1) = 0xE500000000000000;
  v4 = &v1[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_disagreeButtonName];
  *v4 = 0x6565726761736964;
  *(v4 + 1) = 0xE800000000000000;
  v5 = OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_activityIndicator;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  swift_weakInit();
  v6 = &v1[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_agreeClicked];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_uiConfigFactory] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_config] = 0;
  v7 = &v1[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_onAppearance];
  v8 = type metadata accessor for IdentityProofingTCViewController();
  *v7 = 0;
  *(v7 + 1) = 0;
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_245898FCC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IdentityProofingTCViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2458990E0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_activityIndicator;
  v5 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_activityIndicator);
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_activityIndicator) = v3;
  v6 = v3;

  v7 = [objc_opt_self() grayColor];
  [v6 setColor_];

  v9 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  v8 = [a1 navigationItem];
  [v8 setRightBarButtonItem:v9 animated:1];

  [*(v1 + v4) startAnimating];
}

uint64_t sub_245899218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_24590F354();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  sub_245910D34();
  v6[19] = sub_245910D24();
  v9 = sub_245910CD4();
  v6[20] = v9;
  v6[21] = v8;

  return MEMORY[0x2822009F8](sub_24589931C, v9, v8);
}

uint64_t sub_24589931C()
{
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[23] = v2;
    *v2 = v0;
    v2[1] = sub_2458994E8;

    return sub_245872958(0, 0);
  }

  else
  {

    sub_24590C714();
    v4 = sub_24590F344();
    v5 = sub_245910F54();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_245767000, v4, v5, "IdentityProofingTCViewController Proofing request successful from terms and conditions", v6, 2u);
      MEMORY[0x245D77B40](v6, -1, -1);
    }

    v7 = v0[18];
    v8 = v0[15];
    v9 = v0[16];
    v11 = v0[13];
    v10 = v0[14];

    (*(v9 + 8))(v7, v8);
    sub_24589874C(v11, v10);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_2458994E8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_245899738;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_245899604;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_245899604()
{

  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "IdentityProofingTCViewController Proofing request successful from terms and conditions", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];

  (*(v6 + 8))(v4, v5);
  sub_24589874C(v8, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_245899738()
{
  v29 = v0;
  v1 = v0[24];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v28);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "IdentityProofingTCViewController Error occured during inline proofing, %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[15];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[24];
  v17 = v0[13];
  v18 = v0[14];
  v19 = v0[12];
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v18;
  v20[4] = v16;
  v0[6] = sub_24589A17C;
  v0[7] = v20;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2458935A8;
  v0[5] = &block_descriptor_45_0;
  v21 = _Block_copy(v0 + 2);
  v22 = v16;
  v23 = v18;
  v24 = v19;

  v25 = [v17 dismissObjectModelsAnimated:1 completion:v21];

  _Block_release(v21);

  v26 = v0[1];

  return v26();
}

uint64_t sub_2458999FC(uint64_t a1, void *a2, void *a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2458866E0(a2, a3);
  }

  return result;
}

void sub_245899A74(uint64_t a1, void *a2, void *a3)
{
  if (swift_weakLoadStrong())
  {
    sub_24586CA74(a2, 2, 0, 0);
  }

  v6 = a1 + OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_agreeClicked;
  v7 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_agreeClicked);
  if (v7)
  {
    v8 = *(v6 + 8);

    v7(v9);

    sub_245771C34(v7, v8);
  }
}

void sub_245899C64(void *a1)
{
  if (!a1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v1 = [a1 defaultPages];
  if (!v1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v2 = v1;
  sub_24579D5E0(0, &qword_27EE2AE48, 0x277D461F0);
  v3 = sub_245910C44();

  if (v3 >> 62)
  {
    if (sub_245911424())
    {
      goto LABEL_5;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x245D76B30](0, v3);
LABEL_8:
      v5 = v4;

      if (swift_weakLoadStrong())
      {
        sub_24588520C();

        v33 = sub_2457929C8();
      }

      else
      {
        v33 = 0;
      }

      v6 = [v5 leftToolbarItem];
      if (v6)
      {
        v7 = v6;
        if (v33 && (v8 = v33, sub_24590D5A4(), v10 = v9, v8, v10))
        {
          v11 = sub_2459109C4();
        }

        else
        {
          v11 = 0;
        }

        [v7 setTitle_];

        v12 = [v5 rightToolbarItem];
        if (v12)
        {
          v13 = v12;
          if (v33 && (v14 = v33, sub_24590D584(), v16 = v15, v14, v16))
          {
            v17 = sub_2459109C4();
          }

          else
          {
            v17 = 0;
          }

          [v13 setTitle_];

          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v19 = *(Strong + 144);

            if ((v19 & 3) == 2)
            {
              v20 = [v5 leftToolbarItem];
              if (v20)
              {
                v21 = v20;
                v22 = objc_opt_self();
                v23 = [v22 systemOrangeColor];
                [v21 setTintColor_];

                v24 = [v5 rightToolbarItem];
                if (v24)
                {
                  v25 = v24;
                  v26 = [v22 systemOrangeColor];
LABEL_29:
                  v32 = v26;
                  [v25 setTintColor_];

                  return;
                }

LABEL_45:
                __break(1u);
                return;
              }

LABEL_44:
              __break(1u);
              goto LABEL_45;
            }
          }

          v27 = [v5 leftToolbarItem];
          if (v27)
          {
            v28 = v27;
            v29 = objc_opt_self();
            v30 = [v29 systemBlueColor];
            [v28 setTintColor_];

            v31 = [v5 rightToolbarItem];
            if (v31)
            {
              v25 = v31;
              v26 = [v29 systemBlueColor];
              goto LABEL_29;
            }

            goto LABEL_43;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v3 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_38;
  }
}

double block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24589A0B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457A18F4;

  return sub_245899218(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24589A1AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AA90, &qword_24591C030);
  MEMORY[0x28223BE20](v1 - 8);
  v141 = &v131 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v142 = &v131 - v4;
  v5 = type metadata accessor for IdentityProofingLivenessVideoData(0);
  v6 = *(v5 - 8);
  v145 = v5;
  v146 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v131 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v131 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v131 - v16;
  v18 = sub_24590F354();
  v144 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v131 - v22;
  MEMORY[0x28223BE20](v24);
  v143 = &v131 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v131 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v131 - v30;
  v147 = v0;
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v135 = v14;
  v136 = v23;
  v140 = v17;
  v134 = v8;
  v139 = v20;

  sub_2458ADF14();
  v33 = v32;

  v35 = *(v147 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_documentsRepository);
  MEMORY[0x28223BE20](v34);
  *(&v131 - 2) = v33;
  *(&v131 - 1) = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE297A0, &qword_24591BFD0);
  sub_245911044();

  v36 = v150[0];
  if (!v150[0])
  {
    return 0;
  }

  v37 = sub_24590D794();
  v137 = v11;
  v138 = v36;
  if (v37)
  {
    v38 = v37;
    v39 = sub_24590C8F4();
    v41 = v40;

    v42 = v143;
    if (v41 >> 60 == 15)
    {
      v43 = 0;
    }

    else
    {
      sub_24590C714();
      sub_24578FB80(v39, v41);
      v57 = sub_24590F344();
      v58 = sub_245910F54();
      sub_245771C44(v39, v41);
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v150[0] = v60;
        *v59 = 136315138;
        v61 = sub_24590C0C4();
        v133 = v18;
        v63 = sub_2458CC378(v61, v62, v150);
        v18 = v133;

        *(v59 + 4) = v63;
        _os_log_impl(&dword_245767000, v57, v58, "File size of Front of ID Document is %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        v64 = v60;
        v42 = v143;
        MEMORY[0x245D77B40](v64, -1, -1);
        MEMORY[0x245D77B40](v59, -1, -1);
      }

      (*(v144 + 8))(v31, v18);
      v65 = v41 >> 62;
      v11 = v137;
      if ((v41 >> 62) > 1)
      {
        if (v65 == 2)
        {
          v67 = *(v39 + 16);
          v66 = *(v39 + 24);
          sub_245771C44(v39, v41);
          v43 = v66 - v67;
          if (__OFSUB__(v66, v67))
          {
            __break(1u);
            goto LABEL_24;
          }
        }

        else
        {
          sub_245771C44(v39, v41);
          v43 = 0;
        }
      }

      else
      {
        if (v65)
        {
          goto LABEL_28;
        }

        sub_245771C44(v39, v41);
        v43 = BYTE6(v41);
      }
    }
  }

  else
  {
    v43 = 0;
    v42 = v143;
  }

  while (1)
  {
    v44 = sub_24590D764();
    if (!v44)
    {
      goto LABEL_35;
    }

    v45 = v44;
    v39 = sub_24590C8F4();
    v41 = v46;

    if (v41 >> 60 == 15)
    {
      goto LABEL_35;
    }

    sub_24590C714();
    sub_24578FB80(v39, v41);
    v47 = sub_24590F344();
    v48 = sub_245910F54();
    sub_245771C44(v39, v41);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v150[0] = v50;
      *v49 = 136315138;
      v51 = sub_24590C0C4();
      v133 = v18;
      v53 = sub_2458CC378(v51, v52, v150);
      v18 = v133;

      *(v49 + 4) = v53;
      v42 = v143;
      _os_log_impl(&dword_245767000, v47, v48, "File size of Back of ID Document is %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x245D77B40](v50, -1, -1);
      MEMORY[0x245D77B40](v49, -1, -1);
    }

    (*(v144 + 8))(v28, v18);
    v54 = v41 >> 62;
    v11 = v137;
    if ((v41 >> 62) <= 1)
    {
      if (!v54)
      {
        result = sub_245771C44(v39, v41);
        v56 = BYTE6(v41);
        goto LABEL_34;
      }

      result = sub_245771C44(v39, v41);
      LODWORD(v56) = HIDWORD(v39) - v39;
      if (!__OFSUB__(HIDWORD(v39), v39))
      {
        v56 = v56;
        goto LABEL_34;
      }

      goto LABEL_82;
    }

LABEL_24:
    if (v54 != 2)
    {
      break;
    }

    v69 = *(v39 + 16);
    v68 = *(v39 + 24);
    result = sub_245771C44(v39, v41);
    v56 = v68 - v69;
    if (!__OFSUB__(v68, v69))
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_28:
    result = sub_245771C44(v39, v41);
    if (__OFSUB__(HIDWORD(v39), v39))
    {
      goto LABEL_81;
    }

    v43 = HIDWORD(v39) - v39;
  }

  result = sub_245771C44(v39, v41);
  v56 = 0;
LABEL_34:
  v70 = __OFADD__(v43, v56);
  v43 += v56;
  if (v70)
  {
    goto LABEL_79;
  }

LABEL_35:
  v71 = sub_24590D774();
  if (!v71 || (v72 = v71, v73 = sub_24590C8F4(), v75 = v74, v72, v75 >> 60 == 15))
  {
    v76 = v146;
    goto LABEL_51;
  }

  sub_24590C714();
  sub_24578FB80(v73, v75);
  v77 = sub_24590F344();
  v78 = sub_245910F54();
  sub_245771C44(v73, v75);
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v150[0] = v132;
    *v79 = 136315138;
    v80 = sub_24590C0C4();
    v133 = v18;
    v82 = sub_2458CC378(v80, v81, v150);
    v18 = v133;

    *(v79 + 4) = v82;
    _os_log_impl(&dword_245767000, v77, v78, "File size of Selfie is %s", v79, 0xCu);
    v83 = v132;
    __swift_destroy_boxed_opaque_existential_1(v132);
    MEMORY[0x245D77B40](v83, -1, -1);
    MEMORY[0x245D77B40](v79, -1, -1);

    (*(v144 + 8))(v143, v18);
  }

  else
  {

    (*(v144 + 8))(v42, v18);
  }

  v84 = v75 >> 62;
  v76 = v146;
  if ((v75 >> 62) > 1)
  {
    if (v84 == 2)
    {
      v87 = *(v73 + 16);
      v86 = *(v73 + 24);
      result = sub_245771C44(v73, v75);
      v85 = v86 - v87;
      if (!__OFSUB__(v86, v87))
      {
        v76 = v146;
        goto LABEL_50;
      }

      goto LABEL_83;
    }

    result = sub_245771C44(v73, v75);
    v85 = 0;
LABEL_50:
    v70 = __OFADD__(v43, v85);
    v43 += v85;
    if (v70)
    {
      goto LABEL_80;
    }

LABEL_51:
    v88 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_livenessVideoData;
    v89 = v147;
    swift_beginAccess();
    v90 = v89 + v88;
    v91 = v142;
    sub_2458A1168(v90, v142);
    v94 = *(v76 + 48);
    v92 = v76 + 48;
    v93 = v94;
    if (v94(v91, 1, v145) == 1)
    {
      sub_245778F94(v91, &qword_27EE2AA90, &qword_24591C030);
    }

    else
    {
      v146 = v92;
      v95 = v91;
      v96 = v140;
      sub_2458A11D8(v95, v140);
      v97 = v136;
      sub_24590C714();
      v98 = v135;
      sub_245892CD4(v96, v135);
      v99 = sub_24590F344();
      v100 = sub_245910F54();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v133 = v18;
        v102 = v101;
        v103 = swift_slowAlloc();
        v149[0] = v103;
        *v102 = 136315138;
        v104 = sub_24590C014();
        if (v105)
        {
          v106 = v104;
        }

        else
        {
          v106 = 0;
        }

        if (v105)
        {
          v107 = v105;
        }

        else
        {
          v107 = 0xE000000000000000;
        }

        sub_245892D38(v98);
        v108 = sub_2458CC378(v106, v107, v149);

        *(v102 + 4) = v108;
        _os_log_impl(&dword_245767000, v99, v100, "File size of liveness video is %s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x245D77B40](v103, -1, -1);
        v109 = v102;
        v18 = v133;
        MEMORY[0x245D77B40](v109, -1, -1);
      }

      else
      {

        sub_245892D38(v98);
      }

      (*(v144 + 8))(v97, v18);
      v110 = v140;
      v111 = sub_24590C004();
      result = sub_245892D38(v110);
      v70 = __OFADD__(v43, v111);
      v43 += v111;
      v11 = v137;
      if (v70)
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v112 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_auxiliaryVideoData;
    v113 = v147;
    swift_beginAccess();
    v114 = v113 + v112;
    v115 = v141;
    sub_2458A1168(v114, v141);
    if (v93(v115, 1, v145) == 1)
    {

      sub_245778F94(v115, &qword_27EE2AA90, &qword_24591C030);
LABEL_75:
      v130 = v147 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes;
      *v130 = v43;
      *(v130 + 8) = 0;
      return v43;
    }

    sub_2458A11D8(v115, v11);
    v116 = v139;
    sub_24590C714();
    v117 = v134;
    sub_245892CD4(v11, v134);
    v118 = sub_24590F344();
    v119 = sub_245910F54();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = v18;
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v148 = v122;
      *v121 = 136315138;
      v123 = sub_24590C014();
      if (v124)
      {
        v125 = v123;
      }

      else
      {
        v125 = 0;
      }

      if (v124)
      {
        v126 = v124;
      }

      else
      {
        v126 = 0xE000000000000000;
      }

      sub_245892D38(v117);
      v127 = sub_2458CC378(v125, v126, &v148);

      *(v121 + 4) = v127;
      _os_log_impl(&dword_245767000, v118, v119, "File size of auxiliary video is %s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x245D77B40](v122, -1, -1);
      MEMORY[0x245D77B40](v121, -1, -1);

      (*(v144 + 8))(v139, v120);
    }

    else
    {

      sub_245892D38(v117);
      (*(v144 + 8))(v116, v18);
    }

    v128 = v138;
    v129 = sub_24590C004();

    result = sub_245892D38(v11);
    v70 = __OFADD__(v43, v129);
    v43 += v129;
    if (!v70)
    {
      goto LABEL_75;
    }

    goto LABEL_78;
  }

  if (!v84)
  {
    result = sub_245771C44(v73, v75);
    v85 = BYTE6(v75);
    goto LABEL_50;
  }

  result = sub_245771C44(v73, v75);
  LODWORD(v85) = HIDWORD(v73) - v73;
  if (!__OFSUB__(HIDWORD(v73), v73))
  {
    v85 = v85;
    goto LABEL_50;
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_24589AED8(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v87 = a3;
  v88 = a4;
  v82 = a1;
  v6 = sub_24590F354();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v83 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590E544();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v79 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v20 = *(v9 + 56);
  v89 = &v79 - v21;
  v20(v19);
  v86 = v4;
  v22 = *(v4 + 24);
  if ((a2 & 1) == 0)
  {
    if (v22)
    {
      v23 = v89;
      if (*(v22 + 16))
      {
        v24 = "alertUploadOnLowDataModeV2";
        goto LABEL_8;
      }

LABEL_11:
      v28 = 1;
      goto LABEL_14;
    }

LABEL_10:
    v28 = 1;
    v23 = v89;
    goto LABEL_14;
  }

  v17 = v14;
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = v89;
  if (!*(v22 + 16))
  {
    goto LABEL_11;
  }

  v24 = "alertUploadLivenessVideoV2";
LABEL_8:
  v25 = v24 - 32;

  v26 = sub_24588C5BC(0xD00000000000001ALL, v25 | 0x8000000000000000);
  if (v27)
  {
    (*(v9 + 16))(v17, *(v22 + 56) + *(v9 + 72) * v26, v8);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

LABEL_14:
  (v20)(v17, v28, 1, v8);
  sub_245869774(v17, v23);
  v29 = *(v9 + 48);
  if (!v29(v23, 1, v8))
  {
    (*(v9 + 16))(v11, v23, v8);
    v49 = sub_24590E504();
    v51 = v50;
    (*(v9 + 8))(v11, v8);
    if (v51)
    {
      if (swift_weakLoadStrong())
      {
        v81 = sub_24586C880(v49, v51);
        v30 = v52;

        goto LABEL_16;
      }
    }
  }

  v81 = 0;
  v30 = 0;
LABEL_16:
  if (v29(v23, 1, v8))
  {
    goto LABEL_17;
  }

  (*(v9 + 16))(v11, v23, v8);
  v53 = sub_24590E534();
  (*(v9 + 8))(v11, v8);
  if (!v53)
  {
    goto LABEL_17;
  }

  if (!v53[2])
  {

LABEL_17:
    v31 = 0;
    goto LABEL_18;
  }

  v80 = v30;
  if (!swift_weakLoadStrong())
  {

    goto LABEL_56;
  }

  v54 = v53[4];
  v55 = v53[5];

  v56 = sub_24586C880(v54, v55);
  v58 = v57;

  if (!v58)
  {
LABEL_56:

    v79 = 0;
    goto LABEL_57;
  }

  v79 = v56;
LABEL_57:
  v73 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29398, &unk_24591C360);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_245916930;
  if (*(v73 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes + 8))
  {
    sub_24589A1AC();
  }

  v75 = sub_245910ED4();
  v77 = v76;
  *(v74 + 56) = MEMORY[0x277D837D0];
  *(v74 + 64) = sub_2457BA078();
  *(v74 + 32) = v75;
  *(v74 + 40) = v77;
  sub_245910A24();
  v31 = v78;

  v30 = v80;
LABEL_18:
  if (v29(v23, 1, v8))
  {
    Strong = 0;
    v33 = 0;
    if (!v30)
    {
      goto LABEL_51;
    }

    goto LABEL_20;
  }

  v80 = v30;
  (*(v9 + 16))(v11, v23, v8);
  v59 = sub_24590E514();
  (*(v9 + 8))(v11, v8);
  if (!v59)
  {
    goto LABEL_48;
  }

  v60 = v59[2];
  if (!v60)
  {

LABEL_48:
    Strong = 0;
LABEL_49:
    v33 = 0;
    goto LABEL_50;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_49;
  }

  v61 = v59[4];
  v62 = v59[5];

  sub_24586C880(v61, v62);
  v33 = v63;

  if (!v33 || v60 == 1 || (result = swift_weakLoadStrong()) == 0)
  {

    Strong = 0;
LABEL_50:
    if (!v80)
    {
      goto LABEL_51;
    }

LABEL_20:
    if (v31 && v33 && Strong)
    {
      v34 = sub_2459109C4();

      v35 = sub_2459109C4();

      v85 = [objc_opt_self() alertControllerWithTitle:v34 message:v35 preferredStyle:1];

      v36 = swift_allocObject();
      v38 = v86;
      v37 = v87;
      v36[2] = v86;
      v36[3] = v37;
      v39 = v88;
      v36[4] = v88;

      v40 = sub_2459109C4();

      v94 = sub_2458A1390;
      v95 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v91 = 1107296256;
      v92 = sub_245823208;
      v93 = &block_descriptor_90;
      v41 = _Block_copy(&aBlock);

      v42 = objc_opt_self();
      v43 = [v42 actionWithTitle:v40 style:0 handler:v41];
      _Block_release(v41);

      v44 = swift_allocObject();
      v44[2] = v38;
      v44[3] = v37;
      v45 = v85;
      v44[4] = v39;

      v46 = sub_2459109C4();

      v94 = sub_2458A1394;
      v95 = v44;
      aBlock = MEMORY[0x277D85DD0];
      v91 = 1107296256;
      v92 = sub_245823208;
      v93 = &block_descriptor_97;
      v47 = _Block_copy(&aBlock);

      v48 = [v42 actionWithTitle:v46 style:0 handler:v47];
      _Block_release(v47);

      [v45 addAction_];
      [v45 addAction_];
      [v45 setPreferredAction_];
      [v82 presentViewController:v45 animated:1 completion:0];
      sub_24590E3D4();
      if (swift_weakLoadStrong())
      {

        sub_24590E0B4();
        sub_24590E484();
      }

      v23 = v89;
      return sub_245778F94(v23, &qword_27EE28F30, &unk_245916C30);
    }

LABEL_51:

    v68 = v83;
    sub_24590C714();
    v69 = sub_24590F344();
    v70 = sub_245910F54();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_245767000, v69, v70, "Unable to show the upload liveness video alert as the server doesn't have the related fields in the config", v71, 2u);
      MEMORY[0x245D77B40](v71, -1, -1);
    }

    v72 = (*(v84 + 8))(v68, v85);
    v87(v72);
    return sub_245778F94(v23, &qword_27EE28F30, &unk_245916C30);
  }

  if (v59[2] >= 2uLL)
  {
    v65 = v59[6];
    v66 = v59[7];

    sub_24586C880(v65, v66);
    Strong = v67;

    goto LABEL_50;
  }

  __break(1u);
  return result;
}

uint64_t sub_24589BA34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, const char *a5, char a6, char a7, uint64_t (*a8)(void))
{
  v27 = a4;
  v28 = a3;
  v13 = sub_24590F354();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v17 = sub_24590F344();
  v18 = sub_245910F54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = a5;
    v21 = a8;
    v22 = v19;
    *v19 = 0;
    _os_log_impl(&dword_245767000, v17, v18, v20, v19, 2u);
    v23 = v22;
    a8 = v21;
    MEMORY[0x245D77B40](v23, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  *(a2 + 40) = a6;
  *(a2 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_hasUserConsentToUploadOnExpensiveNetwork) = a7;
  sub_24589C650(0);
  v24 = sub_24590E3B4();
  a8(v24);
  if (swift_weakLoadStrong())
  {

    sub_24590E0B4();
    sub_24590E484();
  }

  return v28(v25);
}

uint64_t sub_24589BC94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AE98, &unk_24591C8C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = [objc_opt_self() standardUserDefaults];
  sub_24590D954();
  v14 = sub_245910F94();

  if (v14)
  {
    sub_24590C714();
    v15 = sub_24590F344();
    v16 = sub_245910F54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2458CC378(0xD00000000000001ALL, 0x800000024592C660, &v30);
      _os_log_impl(&dword_245767000, v15, v16, "%s CoreIDVUI setting on expensive network", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x245D77B40](v18, -1, -1);
      MEMORY[0x245D77B40](v17, -1, -1);
    }

    (*(v4 + 8))(v12, v3);
    return 1;
  }

  sub_24590C764();

  v20 = sub_24590F554();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v2, 1, v20) == 1)
  {
    sub_245778F94(v2, &qword_27EE2AE98, &unk_24591C8C0);
  }

  else
  {
    v22 = sub_24590F534();
    (*(v21 + 8))(v2, v20);
    if (v22)
    {
      sub_24590C714();
      v23 = sub_24590F344();
      v24 = sub_245910F54();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_245767000, v23, v24, "Device on expensive network", v25, 2u);
        MEMORY[0x245D77B40](v25, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
      return 1;
    }
  }

  sub_24590C714();
  v26 = sub_24590F344();
  v27 = sub_245910F54();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_245767000, v26, v27, "Device on inexpensive network", v28, 2u);
    MEMORY[0x245D77B40](v28, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

uint64_t sub_24589C0E8()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AE98, &unk_24591C8C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;

  sub_24590C764();

  v10 = sub_24590F554();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_245778F94(v9, &qword_27EE2AE98, &unk_24591C8C0);
  }

  else
  {
    v12 = sub_24590F544();
    (*(v11 + 8))(v9, v10);
    if (v12)
    {
      sub_24590C714();
      v13 = sub_24590F344();
      v14 = sub_245910F54();
      if (!os_log_type_enabled(v13, v14))
      {
        v16 = 1;
        goto LABEL_11;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245767000, v13, v14, "Device is on low data mode", v15, 2u);
      v16 = 1;
      goto LABEL_8;
    }
  }

  sub_24590C714();
  v13 = sub_24590F344();
  v17 = sub_245910F54();
  if (!os_log_type_enabled(v13, v17))
  {
    v16 = 0;
    v6 = v3;
    goto LABEL_11;
  }

  v15 = swift_slowAlloc();
  *v15 = 0;
  _os_log_impl(&dword_245767000, v13, v17, "Device is not on low data mode", v15, 2u);
  v16 = 0;
  v6 = v3;
LABEL_8:
  MEMORY[0x245D77B40](v15, -1, -1);
LABEL_11:

  (*(v1 + 8))(v6, v0);
  return v16;
}

BOOL sub_24589C3F4(void *a1)
{
  v3 = v1;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes + 8))
  {
    v8 = sub_24589A1AC();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong + *a1;
      v11 = *v10;
      v12 = *(v10 + 8);

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }
    }

    else
    {
      v13 = 0;
    }

    return v13 < v8;
  }

  else
  {
    v14 = *(v3 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes);
    sub_24590C714();
    v15 = sub_24590F344();
    v16 = sub_245910F54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v17 = 136315138;
      v18 = sub_245910ED4();
      v20 = sub_2458CC378(v18, v19, &v37);
      v35 = v15;
      v21 = v14;
      v22 = a1;
      v23 = v20;

      *(v17 + 4) = v23;
      a1 = v22;
      v14 = v21;
      v24 = v16;
      v25 = v35;
      _os_log_impl(&dword_245767000, v35, v24, "The total upload data size is %s", v17, 0xCu);
      v26 = v36;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x245D77B40](v26, -1, -1);
      MEMORY[0x245D77B40](v17, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    v27 = swift_weakLoadStrong();
    if (v27)
    {
      v28 = v27 + *a1;
      v29 = *v28;
      v30 = *(v28 + 8);

      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29;
      }

      return v31 < v14;
    }

    else
    {
      return v14 > 0;
    }
  }
}

uint64_t sub_24589C650(char a1)
{
  v2 = v1;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  if (a1)
  {
    if ((sub_24589C0E8() & 1) != 0 && sub_24589C3E8())
    {
      sub_24590C714();
      v23 = sub_24590F344();
      v24 = sub_245910F54();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_245767000, v23, v24, "Cannot upload the video immediately after capture as the device is on low data mode.", v25, 2u);
        MEMORY[0x245D77B40](v25, -1, -1);
      }

      result = (*(v5 + 8))(v22, v4);
LABEL_16:
      *(v2 + 41) = 1;
      return result;
    }

    if ((sub_24589BC94() & 1) != 0 && !sub_24589C3DC())
    {
      sub_24590C714();
      v39 = sub_24590F344();
      v40 = sub_245910F54();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_245767000, v39, v40, "Device is on expensive network, source is onLivenessVideoCaptureComplete and data size is not greater than threshold. Will attempt to upload the data.", v41, 2u);
        MEMORY[0x245D77B40](v41, -1, -1);
      }

      (*(v5 + 8))(v19, v4);
      *(v2 + 40) = 0;
      return sub_24589DC38();
    }

    if (sub_24589BC94())
    {
      sub_24590C714();
      v31 = sub_24590F344();
      v32 = sub_245910F54();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_245767000, v31, v32, "Cannot upload the video immediately after capture as the device is on expensive network.", v33, 2u);
        MEMORY[0x245D77B40](v33, -1, -1);
      }

      result = (*(v5 + 8))(v16, v4);
      goto LABEL_16;
    }
  }

  else if ((*(v2 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_hasUserConsentToUploadOnExpensiveNetwork) & 1) == 0)
  {
    sub_24590C714();
    v27 = sub_24590F344();
    v28 = sub_245910F54();
    if (!os_log_type_enabled(v27, v28))
    {
      v30 = 1;
      goto LABEL_22;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_245767000, v27, v28, "Attempted to upload the video from the alert by scheduling the video", v29, 2u);
    v30 = 1;
    goto LABEL_19;
  }

  sub_24590C714();
  v27 = sub_24590F344();
  v34 = sub_245910F54();
  if (!os_log_type_enabled(v27, v34))
  {
    v30 = 0;
    v13 = v10;
    goto LABEL_22;
  }

  v29 = swift_slowAlloc();
  *v29 = 0;
  _os_log_impl(&dword_245767000, v27, v34, "Attempted to upload the video from the alert with user's consent", v29, 2u);
  v30 = 0;
  v13 = v10;
LABEL_19:
  MEMORY[0x245D77B40](v29, -1, -1);
LABEL_22:

  v35 = *(v5 + 8);
  v35(v13, v4);
  *(v2 + 40) = v30;
  *(v2 + 41) = 0;
  sub_24590C714();

  v36 = sub_24590F344();
  v37 = sub_245910F54();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109120;
    *(v38 + 4) = *(v2 + 40);

    _os_log_impl(&dword_245767000, v36, v37, "UploadLiveness called with shouldScheduleUploads %{BOOL}d", v38, 8u);
    MEMORY[0x245D77B40](v38, -1, -1);
  }

  else
  {
  }

  v35(v7, v4);
  return sub_24589DC38();
}

uint64_t sub_24589CB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[31] = a4;
  v7 = sub_24590F354();
  v6[34] = v7;
  v6[35] = *(v7 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v8 = type metadata accessor for IdentityProofingLivenessVideoData(0);
  v6[38] = v8;
  v6[39] = *(v8 - 8);
  v6[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AA90, &qword_24591C030);
  v6[41] = swift_task_alloc();
  v9 = sub_24590C094();
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24589CD90, 0, 0);
}

uint64_t sub_24589CD90()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = *(v1 + 48);
  v4 = *(v1 + 40);
  v0[2] = v0;
  v0[3] = sub_24589CEF0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0, &qword_2459170D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579D0B4;
  v0[13] = &block_descriptor_83_0;
  v0[14] = v5;
  [v3 uploadLivenessVideoWithLivenessVideoURL:v2 shouldScheduleUploads:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24589CEF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_24589D4A8;
  }

  else
  {
    v2 = sub_24589D02C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24589D02C()
{
  v47 = v0;
  v46[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  v3 = sub_24590C034();
  v0[28] = 0;
  v4 = [v2 removeItemAtURL:v3 error:v0 + 28];

  v5 = v0[28];
  if (v4)
  {
    v6 = v0[41];
    v7 = v0[38];
    v8 = v0[39];
    v9 = v0[31];
    v10 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_auxiliaryVideoData;
    swift_beginAccess();
    sub_2458A1168(v9 + v10, v6);
    if ((*(v8 + 48))(v6, 1, v7))
    {
      v11 = v0[41];
      v12 = v5;
      sub_245778F94(v11, &qword_27EE2AA90, &qword_24591C030);
LABEL_11:
      sub_24590C6C4();
      goto LABEL_12;
    }

    v27 = v0[44];
    v45 = v0[45];
    v29 = v0[42];
    v28 = v0[43];
    v31 = v0[40];
    v30 = v0[41];
    sub_245892CD4(v30, v31);
    v32 = v5;
    sub_245778F94(v30, &qword_27EE2AA90, &qword_24591C030);
    (*(v28 + 16))(v27, v31, v29);
    sub_245892D38(v31);
    (*(v28 + 32))(v45, v27, v29);
    v33 = [v1 defaultManager];
    v34 = sub_24590C034();
    v0[30] = 0;
    LODWORD(v28) = [v33 removeItemAtURL:v34 error:v0 + 30];

    v35 = v0[30];
    v36 = v0[45];
    v37 = v0[42];
    v38 = v0[43];
    if (v28)
    {
      v39 = *(v38 + 8);
      v40 = v35;
      v39(v36, v37);
      goto LABEL_11;
    }

    v43 = v35;
    v14 = sub_24590BFA4();

    swift_willThrow();
    (*(v38 + 8))(v36, v37);
  }

  else
  {
    v13 = v5;
    v14 = sub_24590BFA4();

    swift_willThrow();
  }

  sub_24590C714();
  v15 = v14;
  v16 = sub_24590F344();
  v17 = sub_245910F54();

  v18 = os_log_type_enabled(v16, v17);
  v20 = v0[35];
  v19 = v0[36];
  v21 = v0[34];
  if (v18)
  {
    v44 = v0[36];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46[0] = v23;
    *v22 = 136315138;
    swift_getErrorValue();
    v24 = sub_2459117D4();
    v26 = sub_2458CC378(v24, v25, v46);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_245767000, v16, v17, "received an error when attempting to delete the liveness video from filemanager. %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245D77B40](v23, -1, -1);
    MEMORY[0x245D77B40](v22, -1, -1);

    (*(v20 + 8))(v44, v21);
  }

  else
  {

    (*(v20 + 8))(v19, v21);
  }

LABEL_12:

  v41 = v0[1];

  return v41();
}

uint64_t sub_24589D4A8(uint64_t a1)
{
  v21 = v1;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 368);
  swift_willThrow();
  sub_24590C714();
  v3 = v2;
  v4 = sub_24590F344();
  v5 = sub_245910F64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 368);
    v19 = *(v1 + 296);
    v8 = *(v1 + 272);
    v7 = *(v1 + 280);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_2459117D4();
    v13 = sub_2458CC378(v11, v12, v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_245767000, v4, v5, "Error occurred uploading captured liveness video: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D77B40](v10, -1, -1);
    MEMORY[0x245D77B40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v14 = *(v1 + 296);
    v15 = *(v1 + 272);
    v16 = *(v1 + 280);

    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_24589D6E4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(result + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_24589D728()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  if (*(v1 + 41) == 1)
  {
    sub_24590C714();
    v9 = sub_24590F344();
    v10 = sub_245910F54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245767000, v9, v10, "Video upload method is unknown, so video isn't uploaded yet. Uploading it now.", v11, 2u);
      MEMORY[0x245D77B40](v11, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    return sub_24589DC38();
  }

  else
  {
    sub_24590C714();
    v13 = sub_24590F344();
    v14 = sub_245910F54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245767000, v13, v14, "Video upload method is known, nothing to do.", v15, 2u);
      MEMORY[0x245D77B40](v15, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_24589D930(uint64_t a1, void *a2, void (*a3)(uint64_t), void *a4)
{

  sub_2458A0454(a2, 1, a1, a3, a4);
}

uint64_t sub_24589D998()
{

  swift_unknownObjectRelease();
  swift_weakDestroy();
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_livenessVideoData, &qword_27EE2AA90, &qword_24591C030);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_auxiliaryVideoData, &qword_27EE2AA90, &qword_24591C030);

  return v0;
}

uint64_t sub_24589DA48()
{
  sub_24589D998();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingUploadsManager(uint64_t a1)
{
  result = qword_27EE2AE80;
  if (!qword_27EE2AE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24589DAF4(uint64_t a1)
{
  sub_24589DBE0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24589DBE0(uint64_t a1)
{
  if (!qword_27EE2AE90)
  {
    type metadata accessor for IdentityProofingLivenessVideoData(255);
    v1 = sub_2459112C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE2AE90);
    }
  }
}

uint64_t sub_24589DC38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v1 - 8);
  v71 = &v67 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470, &unk_245917350);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v67 - v4;
  v77 = sub_24590C094();
  v80 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v81 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590F354();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v67 - v10;
  MEMORY[0x28223BE20](v11);
  v74 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AA90, &qword_24591C030);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  v18 = type metadata accessor for IdentityProofingLivenessVideoData(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v72 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v67 - v28;
  v30 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_livenessVideoData;
  swift_beginAccess();
  v79 = v0;
  sub_2458A1168(v0 + v30, v17);
  v70 = v19;
  v31 = *(v19 + 48);
  v75 = v18;
  if (v31(v17, 1, v18) == 1)
  {
    sub_245778F94(v17, &qword_27EE2AA90, &qword_24591C030);
    sub_24590C714();
    v32 = sub_24590F344();
    v33 = sub_245910F54();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_245767000, v32, v33, "Invalid liveness video data, cannot start the upload", v34, 2u);
      MEMORY[0x245D77B40](v34, -1, -1);
    }

    return (*(v82 + 8))(v8, v83);
  }

  else
  {
    v68 = v31;
    sub_2458A11D8(v17, v29);
    v36 = v74;
    sub_24590C714();
    sub_245892CD4(v29, v26);
    v69 = v29;
    sub_245892CD4(v29, v23);
    v37 = sub_24590F344();
    v38 = sub_245910F54();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v84[0] = v67;
      *v39 = 136315394;
      v40 = sub_24590C064();
      v42 = v41;
      sub_245892D38(v26);
      v43 = sub_2458CC378(v40, v42, v84);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = sub_24590C014();
      if (v45)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0x6E776F6E6B6E75;
      }

      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0xE700000000000000;
      }

      sub_245892D38(v23);
      v48 = sub_2458CC378(v46, v47, v84);

      *(v39 + 14) = v48;
      _os_log_impl(&dword_245767000, v37, v38, "The liveness video url being uploaded is %s and the file size is %s", v39, 0x16u);
      v49 = v67;
      swift_arrayDestroy();
      MEMORY[0x245D77B40](v49, -1, -1);
      MEMORY[0x245D77B40](v39, -1, -1);
    }

    else
    {

      sub_245892D38(v23);
      sub_245892D38(v26);
    }

    (*(v82 + 8))(v36, v83);
    v50 = v76;
    v51 = v77;
    v52 = *(v80 + 16);
    v53 = v69;
    v52(v81, v69, v77);
    v54 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_auxiliaryVideoData;
    v55 = v79;
    swift_beginAccess();
    sub_2458A1168(v55 + v54, v50);
    if (v68(v50, 1, v75))
    {
      sub_245778F94(v50, &qword_27EE2AA90, &qword_24591C030);
      v56 = 1;
      v57 = v78;
    }

    else
    {
      v58 = v72;
      sub_245892CD4(v50, v72);
      sub_245778F94(v50, &qword_27EE2AA90, &qword_24591C030);
      v57 = v78;
      v52(v78, v58, v51);
      sub_245892D38(v58);
      v56 = 0;
    }

    (*(v80 + 56))(v57, v56, 1, v51);
    v59 = objc_allocWithZone(sub_24590E454());
    v60 = sub_24590E444();
    v61 = sub_245910D64();
    v62 = v71;
    (*(*(v61 - 8) + 56))(v71, 1, 1, v61);
    v63 = v72;
    sub_245892CD4(v53, v72);
    v64 = (*(v70 + 80) + 48) & ~*(v70 + 80);
    v65 = swift_allocObject();
    v65[2] = 0;
    v65[3] = 0;
    v65[4] = v55;
    v65[5] = v60;
    sub_2458A11D8(v63, v65 + v64);

    v66 = v60;
    sub_2458B90EC(0, 0, v62, &unk_24591C378, v65);

    return sub_245892D38(v53);
  }
}

uint64_t sub_24589E5E8(void *a1, uint64_t a2, void *a3)
{
  v79 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v75 - v6;
  v7 = sub_2459107E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v81 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245910814();
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x28223BE20](v10);
  v80 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_24590F354();
  v12 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v75 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  v84 = a3;
  if ((sub_24589C0E8() & 1) == 0 || !sub_24589C3E8())
  {
    if (sub_24589C3DC())
    {
      v78 = v8;
      sub_24590C714();

      v32 = sub_24590F344();
      v33 = sub_245910F54();

      if (os_log_type_enabled(v32, v33))
      {
        v76 = v7;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock = v35;
        *v34 = 136315394;
        v36 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes + 8);
        v77 = v24;
        if (v36)
        {
          sub_24589A1AC();
        }

        v42 = sub_245910ED4();
        v44 = sub_2458CC378(v42, v43, &aBlock);

        *(v34 + 4) = v44;
        *(v34 + 12) = 2080;
        if (swift_weakLoadStrong())
        {
        }

        v45 = sub_245910ED4();
        v47 = sub_2458CC378(v45, v46, &aBlock);

        *(v34 + 14) = v47;
        _os_log_impl(&dword_245767000, v32, v33, "the upload size %s is greater than the threshold %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D77B40](v35, -1, -1);
        MEMORY[0x245D77B40](v34, -1, -1);

        v41 = *(v12 + 8);
        v41(v20, v86);
        v7 = v76;
        v24 = v77;
      }

      else
      {

        v41 = *(v12 + 8);
        v41(v20, v86);
      }

      v48 = sub_24589BC94();
      v8 = v78;
      if (v48)
      {
        sub_24590C714();
        v49 = sub_24590F344();
        v50 = sub_245910F54();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_245767000, v49, v50, "Device on an EXPENSIVE NETWORK. Will present the alert", v51, 2u);
          MEMORY[0x245D77B40](v51, -1, -1);
        }

        v41(v14, v86);
        sub_2457809BC();
        v28 = sub_245911034();
        v52 = swift_allocObject();
        v30 = v79;
        v52[2] = a2;
        v52[3] = v30;
        v52[4] = sub_2458A1364;
        v52[5] = v24;
        v91 = sub_2458A13BC;
        v92 = v52;
        aBlock = MEMORY[0x277D85DD0];
        v88 = 1107296256;
        v31 = &block_descriptor_133;
        goto LABEL_22;
      }

      sub_24589D728();
      v57 = sub_245910D64();
      v58 = v85;
      (*(*(v57 - 8) + 56))(v85, 1, 1, v57);
      sub_245910D34();
      v59 = v84;
      v60 = sub_245910D24();
      v61 = swift_allocObject();
      v62 = MEMORY[0x277D85700];
      v61[2] = v60;
      v61[3] = v62;
      v61[4] = v59;
      v63 = &unk_24591C380;
    }

    else
    {
      sub_24590C714();

      v37 = sub_24590F344();
      v38 = sub_245910F54();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock = v40;
        *v39 = 136315394;
        if (*(a2 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes + 8))
        {
          sub_24589A1AC();
        }

        v64 = sub_245910ED4();
        v66 = sub_2458CC378(v64, v65, &aBlock);

        *(v39 + 4) = v66;
        *(v39 + 12) = 2080;
        if (swift_weakLoadStrong())
        {
        }

        v67 = sub_245910ED4();
        v69 = sub_2458CC378(v67, v68, &aBlock);

        *(v39 + 14) = v69;
        _os_log_impl(&dword_245767000, v37, v38, "the upload size %s is less than the threshold %s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D77B40](v40, -1, -1);
        MEMORY[0x245D77B40](v39, -1, -1);

        (*(v12 + 8))(v17, v86);
      }

      else
      {

        (*(v12 + 8))(v17, v86);
      }

      v70 = sub_245910D64();
      v58 = v85;
      (*(*(v70 - 8) + 56))(v85, 1, 1, v70);
      sub_245910D34();
      v71 = v84;
      v72 = sub_245910D24();
      v61 = swift_allocObject();
      v73 = MEMORY[0x277D85700];
      v61[2] = v72;
      v61[3] = v73;
      v61[4] = v71;
      v63 = &unk_24591B5D0;
    }

    sub_2458B90EC(0, 0, v58, v63, v61);
  }

  sub_24590C714();
  v25 = sub_24590F344();
  v26 = sub_245910F54();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_245767000, v25, v26, "Device on an Low data mode and greater than the isDataGreaterThanLowDataModeThreshold. Will present the alert", v27, 2u);
    MEMORY[0x245D77B40](v27, -1, -1);
  }

  (*(v12 + 8))(v23, v86);
  sub_2457809BC();
  v28 = sub_245911034();
  v29 = swift_allocObject();
  v30 = v79;
  v29[2] = a2;
  v29[3] = v30;
  v29[4] = sub_2458A1364;
  v29[5] = v24;
  v91 = sub_2458A13C0;
  v92 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v88 = 1107296256;
  v31 = &block_descriptor_140_0;
LABEL_22:
  v89 = sub_2458935A8;
  v90 = v31;
  v53 = _Block_copy(&aBlock);

  v54 = v30;

  v55 = v80;
  sub_245910804();
  aBlock = MEMORY[0x277D84F90];
  sub_245780A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_245780AA8();
  v56 = v81;
  sub_2459113A4();
  MEMORY[0x245D76690](0, v55, v56, v53);
  _Block_release(v53);

  (*(v8 + 8))(v56, v7);
  (*(v82 + 8))(v55, v83);
}

uint64_t sub_24589F0B8(void *a1, uint64_t a2, void *a3)
{
  v66 = a1;
  v5 = sub_2459107E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245910814();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v67 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24590F354();
  v10 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  v71 = a3;
  if ((sub_24589C0E8() & 1) == 0 || !sub_24589C3E8())
  {
    if (sub_24589C3DC())
    {
      sub_24590C714();

      v30 = sub_24590F344();
      v31 = sub_245910F54();

      if (os_log_type_enabled(v30, v31))
      {
        v64 = v5;
        v65 = v22;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        aBlock = v33;
        *v32 = 136315394;
        v34 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes + 8);
        v63 = v6;
        if (v34)
        {
          sub_24589A1AC();
        }

        v40 = sub_245910ED4();
        v42 = sub_2458CC378(v40, v41, &aBlock);

        *(v32 + 4) = v42;
        *(v32 + 12) = 2080;
        if (swift_weakLoadStrong())
        {
        }

        v43 = sub_245910ED4();
        v45 = sub_2458CC378(v43, v44, &aBlock);

        *(v32 + 14) = v45;
        _os_log_impl(&dword_245767000, v30, v31, "the upload size %s is greater than the threshold %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D77B40](v33, -1, -1);
        MEMORY[0x245D77B40](v32, -1, -1);

        v39 = *(v10 + 8);
        v39(v18, v72);
        v5 = v64;
        v22 = v65;
        v6 = v63;
      }

      else
      {

        v39 = *(v10 + 8);
        v39(v18, v72);
      }

      if (sub_24589BC94())
      {
        sub_24590C714();
        v46 = sub_24590F344();
        v47 = sub_245910F54();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_245767000, v46, v47, "Device on an EXPENSIVE NETWORK. Will present the alert", v48, 2u);
          MEMORY[0x245D77B40](v48, -1, -1);
        }

        v39(v12, v72);
        sub_2457809BC();
        v26 = sub_245911034();
        v49 = swift_allocObject();
        v28 = v66;
        v49[2] = a2;
        v49[3] = v28;
        v49[4] = sub_24589FA28;
        v49[5] = v22;
        v77 = sub_24589FA30;
        v78 = v49;
        aBlock = MEMORY[0x277D85DD0];
        v74 = 1107296256;
        v29 = &block_descriptor_28;
        goto LABEL_21;
      }

      sub_24589D728();
      v54 = [v71 navigationController];
    }

    else
    {
      sub_24590C714();

      v35 = sub_24590F344();
      v36 = sub_245910F54();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock = v38;
        *v37 = 136315394;
        if (*(a2 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes + 8))
        {
          sub_24589A1AC();
        }

        v55 = sub_245910ED4();
        v57 = sub_2458CC378(v55, v56, &aBlock);

        *(v37 + 4) = v57;
        *(v37 + 12) = 2080;
        if (swift_weakLoadStrong())
        {
        }

        v58 = sub_245910ED4();
        v60 = sub_2458CC378(v58, v59, &aBlock);

        *(v37 + 14) = v60;
        _os_log_impl(&dword_245767000, v35, v36, "the upload size %s is less than the threshold %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D77B40](v38, -1, -1);
        MEMORY[0x245D77B40](v37, -1, -1);
      }

      (*(v10 + 8))(v15, v72);
      v54 = [v71 navigationController];
    }

    v61 = v54;

    sub_24586CA74(v61, 2, 0, 0);
  }

  sub_24590C714();
  v23 = sub_24590F344();
  v24 = sub_245910F54();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_245767000, v23, v24, "Device on an Low data mode and greater than the isDataGreaterThanLowDataModeThreshold. Will present the alert", v25, 2u);
    MEMORY[0x245D77B40](v25, -1, -1);
  }

  (*(v10 + 8))(v21, v72);
  sub_2457809BC();
  v26 = sub_245911034();
  v27 = swift_allocObject();
  v28 = v66;
  v27[2] = a2;
  v27[3] = v28;
  v27[4] = sub_24589FA28;
  v27[5] = v22;
  v77 = sub_24589FA54;
  v78 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v29 = &block_descriptor_61_1;
LABEL_21:
  v75 = sub_2458935A8;
  v76 = v29;
  v50 = _Block_copy(&aBlock);

  v51 = v28;

  v52 = v67;
  sub_245910804();
  aBlock = MEMORY[0x277D84F90];
  sub_245780A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_245780AA8();
  v53 = v68;
  sub_2459113A4();
  MEMORY[0x245D76690](0, v52, v53, v50);
  _Block_release(v50);

  (*(v6 + 8))(v53, v5);
  (*(v69 + 8))(v52, v70);
}

double block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24589FA84(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v80 = a1;
  v86 = sub_2459107E4();
  v9 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245910814();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x28223BE20](v11);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24590F354();
  v87 = *(v13 - 8);
  v88 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v77 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v77 - v23;
  v25 = swift_allocObject();
  v25[2] = a3;
  v25[3] = a4;
  v25[4] = a5;
  v85 = a5;
  v26 = a5;

  v27 = a4;
  if ((sub_24589C0E8() & 1) == 0 || !sub_24589C3E8())
  {
    if (sub_24589C3DC())
    {
      v78 = v9;
      sub_24590C714();

      v39 = sub_24590F344();
      v40 = sub_245910F54();

      v41 = os_log_type_enabled(v39, v40);
      v79 = v27;
      if (v41)
      {
        v42 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        aBlock = v77;
        *v42 = 136315394;
        if (*(a2 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes + 8))
        {
          sub_24589A1AC();
        }

        v48 = sub_245910ED4();
        v50 = sub_2458CC378(v48, v49, &aBlock);

        *(v42 + 4) = v50;
        *(v42 + 12) = 2080;
        if (swift_weakLoadStrong())
        {
        }

        v51 = sub_245910ED4();
        v53 = sub_2458CC378(v51, v52, &aBlock);

        *(v42 + 14) = v53;
        _os_log_impl(&dword_245767000, v39, v40, "the upload size %s is greater than the threshold %s", v42, 0x16u);
        v54 = v77;
        swift_arrayDestroy();
        MEMORY[0x245D77B40](v54, -1, -1);
        MEMORY[0x245D77B40](v42, -1, -1);
      }

      v55 = *(v87 + 8);
      v55(v21, v88);
      v56 = v86;
      v57 = sub_24589BC94();
      v58 = v78;
      if (v57)
      {
        sub_24590C714();
        v59 = sub_24590F344();
        v60 = sub_245910F54();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_245767000, v59, v60, "Device on an EXPENSIVE NETWORK. Will present the alert", v61, 2u);
          MEMORY[0x245D77B40](v61, -1, -1);
        }

        v55(v15, v88);
        sub_2457809BC();
        v62 = sub_245911034();
        v63 = swift_allocObject();
        v64 = v80;
        v63[2] = a2;
        v63[3] = v64;
        v63[4] = sub_2458A1358;
        v63[5] = v25;
        v93 = sub_2458A13BC;
        v94 = v63;
        aBlock = MEMORY[0x277D85DD0];
        v90 = 1107296256;
        v91 = sub_2458935A8;
        v92 = &block_descriptor_107;
        v65 = _Block_copy(&aBlock);

        v66 = v64;

        v36 = v81;
        sub_245910804();
        aBlock = MEMORY[0x277D84F90];
        sub_245780A50();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
        sub_245780AA8();
        v67 = v82;
        sub_2459113A4();
        MEMORY[0x245D76690](0, v36, v67, v65);
        _Block_release(v65);

        (*(v58 + 8))(v67, v56);
        goto LABEL_20;
      }

      sub_24589D728();
      v68 = a3;
      v69 = v79;
    }

    else
    {
      sub_24590C714();

      v43 = sub_24590F344();
      v44 = sub_245910F54();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        aBlock = v46;
        *v45 = 136315394;
        v47 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes + 8);
        v79 = v27;
        if (v47)
        {
          sub_24589A1AC();
        }

        v70 = sub_245910ED4();
        v72 = sub_2458CC378(v70, v71, &aBlock);

        *(v45 + 4) = v72;
        *(v45 + 12) = 2080;
        if (swift_weakLoadStrong())
        {
        }

        v27 = v79;
        v73 = sub_245910ED4();
        v75 = sub_2458CC378(v73, v74, &aBlock);

        *(v45 + 14) = v75;
        _os_log_impl(&dword_245767000, v43, v44, "the upload size %s is less than the threshold %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D77B40](v46, -1, -1);
        MEMORY[0x245D77B40](v45, -1, -1);
      }

      (*(v87 + 8))(v18, v88);
      v68 = a3;
      v69 = v27;
    }

    sub_2458981C8(v68, v69, v85);
  }

  sub_24590C714();
  v28 = sub_24590F344();
  v29 = sub_245910F54();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_245767000, v28, v29, "Device on an Low data mode and greater than the isDataGreaterThanLowDataModeThreshold. Will present the alert", v30, 2u);
    MEMORY[0x245D77B40](v30, -1, -1);
  }

  (*(v87 + 8))(v24, v88);
  sub_2457809BC();
  v31 = sub_245911034();
  v32 = swift_allocObject();
  v33 = v80;
  v32[2] = a2;
  v32[3] = v33;
  v32[4] = sub_2458A1358;
  v32[5] = v25;
  v93 = sub_2458A13C0;
  v94 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v90 = 1107296256;
  v91 = sub_2458935A8;
  v92 = &block_descriptor_114;
  v34 = _Block_copy(&aBlock);

  v35 = v33;

  v36 = v81;
  sub_245910804();
  aBlock = MEMORY[0x277D84F90];
  sub_245780A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_245780AA8();
  v37 = v82;
  v38 = v86;
  sub_2459113A4();
  MEMORY[0x245D76690](0, v36, v37, v34);
  _Block_release(v34);

  (*(v9 + 8))(v37, v38);
LABEL_20:
  (*(v83 + 8))(v36, v84);
}

uint64_t sub_2458A0454(void *a1, char a2, uint64_t a3, void (*a4)(uint64_t), void *a5)
{
  v86 = a1;
  v9 = sub_24590F354();
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x28223BE20](v9);
  v87 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24590E544();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v85 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - v22;
  v24 = swift_allocObject();
  v90 = a4;
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  v93 = v24;
  v94 = v23;
  v95 = a5;
  v25 = *(v12 + 56);
  v25(v23, 1, 1, v11);
  v91 = a3;
  v26 = *(a3 + 24);
  if (a2)
  {
    if (v26 && *(v26 + 16))
    {

      v27 = sub_24588C5BC(0xD00000000000001ALL, 0x800000024592C5F0);
      if (v28)
      {
        (*(v12 + 16))(v17, *(v26 + 56) + *(v12 + 72) * v27, v11);

        v29 = v17;
        v30 = 0;
      }

      else
      {

        v29 = v17;
        v30 = 1;
      }

      v25(v29, v30, 1, v11);
      v20 = v17;
    }

    else
    {
      v25(v17, 1, 1, v11);

      v20 = v17;
    }
  }

  else if (v26 && *(v26 + 16))
  {

    v31 = sub_24588C5BC(0xD00000000000001ALL, 0x800000024592C610);
    if (v32)
    {
      (*(v12 + 16))(v20, *(v26 + 56) + *(v12 + 72) * v31, v11);

      v33 = v20;
      v34 = 0;
    }

    else
    {

      v33 = v20;
      v34 = 1;
    }

    v25(v33, v34, 1, v11);
  }

  else
  {
    v25(v20, 1, 1, v11);
  }

  v35 = v94;
  sub_245869774(v20, v94);
  v36 = *(v12 + 48);
  if (!v36(v35, 1, v11))
  {
    (*(v12 + 16))(v14, v35, v11);
    v40 = sub_24590E504();
    v42 = v41;
    (*(v12 + 8))(v14, v11);
    if (v42)
    {
      if (swift_weakLoadStrong())
      {
        v85 = sub_24586C880(v40, v42);
        v92 = v43;

        goto LABEL_18;
      }
    }
  }

  v85 = 0;
  v92 = 0;
LABEL_18:
  if (v36(v35, 1, v11))
  {
    goto LABEL_19;
  }

  (*(v12 + 16))(v14, v35, v11);
  v44 = sub_24590E534();
  (*(v12 + 8))(v14, v11);
  if (!v44)
  {
    goto LABEL_19;
  }

  if (!v44[2])
  {

LABEL_19:
    v37 = 0;
    goto LABEL_20;
  }

  if (!swift_weakLoadStrong())
  {

LABEL_57:

    goto LABEL_58;
  }

  v45 = v44[4];
  v46 = v44[5];

  sub_24586C880(v45, v46);
  v48 = v47;

  if (!v48)
  {
    goto LABEL_57;
  }

LABEL_58:
  v75 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29398, &unk_24591C360);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_245916930;
  if (*(v75 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes + 8))
  {
    sub_24589A1AC();
  }

  v77 = sub_245910ED4();
  v79 = v78;
  *(v76 + 56) = MEMORY[0x277D837D0];
  *(v76 + 64) = sub_2457BA078();
  *(v76 + 32) = v77;
  *(v76 + 40) = v79;
  sub_245910A24();
  v37 = v80;

  v35 = v94;
LABEL_20:
  if (v36(v35, 1, v11))
  {
    Strong = 0;
    v39 = 0;
LABEL_42:
    v54 = v92;
    goto LABEL_43;
  }

  (*(v12 + 16))(v14, v35, v11);
  v49 = sub_24590E514();
  (*(v12 + 8))(v14, v11);
  if (!v49)
  {
    goto LABEL_39;
  }

  v50 = v49[2];
  if (!v50)
  {

LABEL_39:
    Strong = 0;
LABEL_40:
    v39 = 0;
    goto LABEL_41;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_40;
  }

  v51 = v49[4];
  v52 = v49[5];

  sub_24586C880(v51, v52);
  v39 = v53;

  if (!v39 || v50 == 1)
  {

    Strong = 0;
LABEL_41:
    v35 = v94;
    goto LABEL_42;
  }

  result = swift_weakLoadStrong();
  v81 = v92;
  if (result)
  {
    if (v49[2] < 2uLL)
    {
      __break(1u);
      return result;
    }

    v82 = v49[6];
    v83 = v49[7];

    sub_24586C880(v82, v83);
    Strong = v84;

    v35 = v94;
    v54 = v81;
  }

  else
  {

    v54 = v81;
    Strong = 0;
    v35 = v94;
  }

LABEL_43:
  if (v54 && v37 && v39 && Strong)
  {
    v55 = sub_2459109C4();

    v56 = sub_2459109C4();

    v95 = [objc_opt_self() alertControllerWithTitle:v55 message:v56 preferredStyle:1];

    v57 = swift_allocObject();
    v58 = v91;
    v57[2] = v91;
    v57[3] = sub_2457C4B5C;
    v59 = v93;
    v57[4] = v93;

    v60 = sub_2459109C4();

    v100 = sub_2458A10E0;
    v101 = v57;
    aBlock = MEMORY[0x277D85DD0];
    v97 = 1107296256;
    v98 = sub_245823208;
    v99 = &block_descriptor_70;
    v61 = _Block_copy(&aBlock);

    v62 = objc_opt_self();
    v63 = [v62 actionWithTitle:v60 style:0 handler:v61];
    _Block_release(v61);

    v64 = swift_allocObject();
    v64[2] = v58;
    v64[3] = sub_2457C4B5C;
    v64[4] = v59;

    v65 = sub_2459109C4();

    v100 = sub_2458A1124;
    v101 = v64;
    aBlock = MEMORY[0x277D85DD0];
    v97 = 1107296256;
    v98 = sub_245823208;
    v99 = &block_descriptor_76;
    v66 = _Block_copy(&aBlock);

    v67 = [v62 actionWithTitle:v65 style:0 handler:v66];
    _Block_release(v66);

    v68 = v95;
    [v95 addAction_];
    [v68 addAction_];
    [v68 setPreferredAction_];
    [v86 presentViewController:v68 animated:1 completion:0];
    sub_24590E3D4();
    if (swift_weakLoadStrong())
    {

      sub_24590E0B4();
      sub_24590E484();
    }

    v35 = v94;
  }

  else
  {

    v69 = v87;
    sub_24590C714();
    v70 = sub_24590F344();
    v71 = sub_245910F54();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_245767000, v70, v71, "Unable to show the upload liveness video alert as the server doesn't have the related fields in the config", v72, 2u);
      MEMORY[0x245D77B40](v72, -1, -1);
    }

    v73 = (*(v88 + 8))(v69, v89);
    v90(v73);
  }

  sub_245778F94(v35, &qword_27EE28F30, &unk_245916C30);
}

uint64_t sub_2458A1168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AA90, &qword_24591C030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458A11D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofingLivenessVideoData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458A123C(uint64_t a1)
{
  v4 = *(type metadata accessor for IdentityProofingLivenessVideoData(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2457A18F4;

  return sub_24589CB98(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_2458A13F8()
{
  result = qword_27EE2AEA0;
  if (!qword_27EE2AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2AEA0);
  }

  return result;
}

uint64_t sub_2458A1454(uint64_t a1, uint64_t a2)
{
  nullsub_1();

  return sub_245771C34(a1, a2);
}

unint64_t sub_2458A14A8()
{
  result = qword_27EE2AEA8;
  if (!qword_27EE2AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2AEA8);
  }

  return result;
}

unint64_t sub_2458A1500()
{
  result = qword_27EE2AEB0;
  if (!qword_27EE2AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2AEB0);
  }

  return result;
}

uint64_t sub_2458A1560(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x245D76B30](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_245911424();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

id sub_2458A16C8(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setAxis_];
    [v5 setSpacing_];
    v7 = *(v2 + v3);
    *(v2 + v3) = v5;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_2458A1780()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel);
  }

  else
  {
    type metadata accessor for IDVTrailingAccessoryLabel();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_textView;
    [*&v4[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_textView] setTextAlignment_];
    v6 = v4;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = [*&v4[v5] textContainer];
    [v7 setMaximumNumberOfLines_];

    [v6 setUserInteractionEnabled_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_2458A1880()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 setTextAlignment_];
    [v3 setNumberOfLines_];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v5 = v2;
  return v3;
}

id sub_2458A1930()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2458A19B8()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAlignment_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2458A1A88(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

_BYTE *sub_2458A1B4C(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = v3;
    v10 = [objc_allocWithZone(type metadata accessor for CoreIDVUIButton()) initWithFrame_];
    v10[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_style] = a2;
    v11 = v10;
    sub_2458B51B8();
    v12 = v11;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    [v12 addTarget:v9 action:*a3 forControlEvents:0x2000];

    v13 = *(v9 + v4);
    *(v9 + v4) = v12;
    v6 = v12;

    v5 = 0;
  }

  v14 = v5;
  return v6;
}

id sub_2458A1C58()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
    [v4 setTextAlignment_];
    [v4 setEditable_];
    [v4 setScrollEnabled_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2458A1D28(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2458A1D88()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2458A1E14()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 setUserInteractionEnabled_];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v5 = v2;
  return v3;
}

id sub_2458A1EB0()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() secondarySystemBackgroundColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2458A1F80()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setContentMode_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2458A2028()
{
  result = [v0 navigationController];
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
    swift_beginAccess();
    sub_2457ACB24(v0 + v3, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(v5 + 208))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v10);
    if (v6)
    {

      return 0;
    }

    else
    {
      v7 = [v2 viewControllers];
      sub_24579D5E0(0, &qword_27EE28F28, 0x277D75D28);
      v8 = sub_245910C44();

      if (v8 >> 62)
      {
        v9 = sub_245911424();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return (v9 == 1);
    }
  }

  return result;
}

uint64_t sub_2458A216C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
  swift_beginAccess();
  sub_2457ACB24(&v1[v2], v23);
  v3 = v24;
  v4 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v5 = (*(v4 + 192))(v3, v4);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v8 = [v1 navigationItem];
      [v8 setHidesBackButton_];

      v7 = [v1 navigationItem];
      [v7 setLeftBarButtonItem_];
    }

    else
    {
      v15 = [v1 navigationItem];
      [v15 setHidesBackButton_];

      v16 = sub_2459109C4();
      v17 = [objc_opt_self() systemImageNamed_];

      v18 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v17 style:0 target:v1 action:sel_backButtonClicked];
      v19 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton;
      v20 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton];
      *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = v18;

      v7 = [v1 navigationItem];
      v21 = *&v1[v19];
      [v7 setLeftBarButtonItem_];
    }
  }

  else if (v5)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelButtonClicked];
    v10 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton;
    v11 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton];
    *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = v9;

    v12 = [v1 navigationItem];
    v13 = *&v1[v10];
    [v12 setLeftBarButtonItem_];

    v14 = [v1 navigationItem];
    [v14 setRightBarButtonItem_];

    v7 = [v1 navigationItem];
    [v7 setHidesBackButton_];
  }

  else
  {
    v6 = [v1 navigationItem];
    [v6 setHidesBackButton_];

    v7 = [v1 navigationItem];
    [v7 setRightBarButtonItem_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void sub_2458A24AC()
{
  v1 = v0;
  [v0 setOverrideUserInterfaceStyle_];
  v2 = sub_2458A1B04();
  v2[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme] = 1;
  sub_2458B51B8();

  v3 = sub_2458A1B1C();
  v3[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme] = 1;
  sub_2458B51B8();

  v4 = sub_2458A1B34();
  v4[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme] = 1;
  sub_2458B51B8();

  v5 = sub_2458A1A68();
  v5[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme] = 1;
  sub_2458B51B8();

  v6 = sub_2458A1AEC();
  v6[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme] = 1;
  sub_2458B51B8();

  v7 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton];
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 systemOrangeColor];
    [v9 setTintColor_];
  }

  v11 = [v1 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 navigationBar];

    v14 = [objc_opt_self() systemOrangeColor];
    [v13 setTintColor_];
  }
}

void sub_2458A2684()
{
  v1 = v0;
  v2 = sub_2459107D4();
  v142 = *(v2 - 8);
  v143 = v2;
  MEMORY[0x28223BE20](v2);
  v140 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_245910794();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v138 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v9 = sub_24590F344();
  v10 = sub_245910F54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_245767000, v9, v10, "IdentityProofingViewController updating contents", v11, 2u);
    MEMORY[0x245D77B40](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
  swift_beginAccess();
  sub_2457ACB24(v1 + v12, v144);
  v13 = v145;
  v14 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v15 = (*(v14 + 16))(v13, v14);
  sub_2458A67F0(v15, v16);

  __swift_destroy_boxed_opaque_existential_1(v144);
  v17 = sub_2458A1880();
  sub_2457ACB24(v1 + v12, v144);
  v18 = v145;
  v19 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  (*(v19 + 24))(v18, v19);
  if (v20)
  {
    v21 = sub_2459109C4();
  }

  else
  {
    v21 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  [v17 setText_];

  v22 = sub_2458A1B04();
  sub_2457ACB24(v1 + v12, v144);
  v23 = v145;
  v24 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  (*(v24 + 40))(v23, v24);
  if (v25)
  {
    v26 = sub_2459109C4();
  }

  else
  {
    v26 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  [v22 setTitle:v26 forState:0];

  v27 = sub_2458A1B1C();
  sub_2457ACB24(v1 + v12, v144);
  v28 = v145;
  v29 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  (*(v29 + 56))(v28, v29);
  if (v30)
  {
    v31 = sub_2459109C4();
  }

  else
  {
    v31 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  [v27 setTitle:v31 forState:0];

  v32 = sub_2458A1B34();
  sub_2457ACB24(v1 + v12, v144);
  v33 = v145;
  v34 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  (*(v34 + 224))(v33, v34);
  if (v35)
  {
    v36 = sub_2459109C4();
  }

  else
  {
    v36 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  [v32 setTitle:v36 forState:0];

  v37 = sub_2458A1A68();
  sub_2457ACB24(v1 + v12, v144);
  v38 = v145;
  v39 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  (*(v39 + 80))(v38, v39);
  if (v40)
  {
    v41 = sub_2459109C4();
  }

  else
  {
    v41 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  [v37 setTitle:v41 forState:0];

  v42 = sub_2458A1AEC();
  sub_2457ACB24(v1 + v12, v144);
  v43 = v145;
  v44 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  (*(v44 + 272))(v43, v44);
  if (v45)
  {
    v46 = sub_2459109C4();
  }

  else
  {
    v46 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  [v42 setTitle:v46 forState:0];

  v47 = sub_2458A1C38();
  sub_2457ACB24(v1 + v12, v144);
  v48 = v145;
  v49 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  (*(v49 + 96))(v48, v49);
  if (v50)
  {
    v51 = sub_2459109C4();
  }

  else
  {
    v51 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  [v47 setText_];

  v52 = sub_2458A1C58();
  sub_2457ACB24(v1 + v12, v144);
  v53 = v145;
  v54 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  (*(v54 + 96))(v53, v54);
  if (v55)
  {
    v56 = sub_2459109C4();
  }

  else
  {
    v56 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  [v52 setText_];

  sub_2457ACB24(v1 + v12, v144);
  v57 = v145;
  v58 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v59 = (*(v58 + 120))(v57, v58);
  __swift_destroy_boxed_opaque_existential_1(v144);
  if ((v59 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_2457ACB24(v1 + v12, v144);
  v60 = v145;
  v61 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  (*(v61 + 104))(v60, v61);
  if (!v62)
  {
    goto LABEL_35;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  sub_2457ACB24(v1 + v12, v144);
  v63 = v145;
  v64 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  (*(v64 + 112))(v63, v64);
  if (!v65)
  {
LABEL_34:

LABEL_35:
    __swift_destroy_boxed_opaque_existential_1(v144);
    goto LABEL_36;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  sub_2457ACB24(v1 + v12, v144);
  v66 = v145;
  v67 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  (*(v67 + 128))(v66, v67);
  if (!v68)
  {

    goto LABEL_34;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  v69 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v70 = sub_2459109C4();
  v71 = [v69 initWithString_];

  v72 = v71;
  v73 = [v72 string];
  if (!v73)
  {
    __break(1u);
    return;
  }

  v74 = v73;

  v75 = sub_2459109C4();

  v76 = [v74 rangeOfString_];
  v78 = v77;

  v79 = *MEMORY[0x277D740E8];
  v80 = sub_2459109C4();

  [v72 addAttribute:v79 value:v80 range:{v76, v78}];

  v81 = *MEMORY[0x277D740C0];
  v82 = [objc_opt_self() secondaryLabelColor];
  [v72 addAttribute:v81 value:v82 range:{0, objc_msgSend(v72, sel_length)}];

  v83 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink);
  [v83 setAttributedText_];

LABEL_36:
  sub_2458A216C();
  v84 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton);
  sub_2457ACB24(v1 + v12, v144);
  v85 = v145;
  v86 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v87 = *(v86 + 32);
  v88 = v84;
  v89 = v87(v85, v86);
  __swift_destroy_boxed_opaque_existential_1(v144);
  [v88 setHidden_];

  v90 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton);
  sub_2457ACB24(v1 + v12, v144);
  v91 = v145;
  v92 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v93 = *(v92 + 48);
  v94 = v90;
  v95 = v93(v91, v92);
  __swift_destroy_boxed_opaque_existential_1(v144);
  [v94 setHidden_];

  v96 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton);
  sub_2457ACB24(v1 + v12, v144);
  v97 = v145;
  v98 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v99 = *(v98 + 216);
  v100 = v96;
  v101 = v99(v97, v98);
  __swift_destroy_boxed_opaque_existential_1(v144);
  [v100 setHidden_];

  v102 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton);
  sub_2457ACB24(v1 + v12, v144);
  v103 = v145;
  v104 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v105 = *(v104 + 72);
  v106 = v102;
  v107 = v105(v103, v104);
  __swift_destroy_boxed_opaque_existential_1(v144);
  [v106 setHidden_];

  v108 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption);
  sub_2457ACB24(v1 + v12, v144);
  v109 = v145;
  v110 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v111 = *(v110 + 88);
  v112 = v108;
  v113 = v111(v109, v110);
  __swift_destroy_boxed_opaque_existential_1(v144);
  [v112 setHidden_];

  v114 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink);
  sub_2457ACB24(v1 + v12, v144);
  v115 = v145;
  v116 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v117 = *(v116 + 120);
  v118 = v114;
  v119 = v117(v115, v116);
  __swift_destroy_boxed_opaque_existential_1(v144);
  [v118 setHidden_];

  v120 = sub_2458A1D08();
  sub_2457ACB24(v1 + v12, v144);
  v121 = v145;
  v122 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v123 = (*(v122 + 72))(v121, v122);
  __swift_destroy_boxed_opaque_existential_1(v144);
  [v120 setHidden_];

  v124 = sub_2458A1F80();
  sub_2457ACB24(v1 + v12, v144);
  v125 = v145;
  v126 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v127 = (*(v126 + 152))(v125, v126);
  [v124 setImage_];

  __swift_destroy_boxed_opaque_existential_1(v144);
  sub_2457ACB24(v1 + v12, v144);
  v128 = v145;
  v129 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v130 = (*(v129 + 240))(v128, v129);
  if (v130 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1(v144);
  }

  else
  {
    v131 = v130;
    __swift_destroy_boxed_opaque_existential_1(v144);
    sub_2458A7218(v131 & 1);
    if (v131)
    {
      v132 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView);
      if (v132)
      {
        v133 = v132;
        v134 = v138;
        sub_245910784();
        v135 = v140;
        sub_2459107C4();
        sub_2458A953C(&qword_27EE2B060, MEMORY[0x277CE1580], MEMORY[0x277CE1578]);
        v136 = v141;
        sub_245910F34();

        (*(v142 + 8))(v135, v143);
        (*(v139 + 8))(v134, v136);
      }
    }

    else
    {
      v137 = sub_2458A1D88();
      [v137 startAnimating];
    }
  }

  sub_2458A38C0();
  sub_2458A3CDC();
}

void sub_2458A3560()
{
  v1 = sub_2458A1780();
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_attributedText];
  if (v3)
  {
    v4 = v3;

    v5 = [v4 string];
    v6 = sub_245910A04();
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0;
  }

  sub_2458A67F0(v6, v8);

  v9 = sub_2458A1880();
  v10 = objc_opt_self();
  v11 = *MEMORY[0x277D76800];
  v12 = [v10 _preferredFontForTextStyle_maximumContentSizeCategory_];
  [v9 setFont_];

  v13 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel;
  [*(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel) setAdjustsFontForContentSizeCategory_];
  v14 = *(v0 + v13);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondaryLabelColor];
  [v16 setTextColor_];

  v18 = sub_2458A1B04();
  v19 = [v18 titleLabel];

  if (v19)
  {
    v20 = [v10 _preferredFontForTextStyle_maximumContentSizeCategory_];
    [v19 setFont_];
  }

  v21 = sub_2458A1B1C();
  v22 = [v21 titleLabel];

  v23 = MEMORY[0x277D76918];
  if (v22)
  {
    v24 = [v10 _preferredFontForTextStyle_maximumContentSizeCategory_];
    [v22 setFont_];
  }

  v25 = sub_2458A1B34();
  v26 = [v25 titleLabel];

  if (v26)
  {
    v27 = [v10 _preferredFontForTextStyle_maximumContentSizeCategory_];
    [v26 setFont_];
  }

  v28 = sub_2458A1C38();
  v29 = *MEMORY[0x277D76940];
  v30 = [v10 _preferredFontForTextStyle_maximumContentSizeCategory_];
  [v28 setFont_];

  v31 = sub_2458A1C58();
  v32 = [v10 _preferredFontForTextStyle_maximumContentSizeCategory_];
  [v31 setFont_];
}

id sub_2458A38C0()
{
  v1 = sub_2458A16A8();
  v2 = [v1 subviews];

  sub_24579D5E0(0, &qword_27EE29630, 0x277D75D18);
  v3 = sub_245910C44();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245D76B30](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  [*(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray) removeFromSuperview];
  v9 = sub_2458A19B8();
  v10 = [v9 subviews];

  v11 = sub_245910C44();
  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_245911424())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x245D76B30](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 removeFromSuperview];

      ++v13;
      if (v16 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  [*(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView) removeFromSuperview];
  v17 = sub_2458A1930();
  v18 = [v17 subviews];

  v19 = sub_245910C44();
  if (v19 >> 62)
  {
    goto LABEL_39;
  }

  for (k = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_245911424())
  {
    v21 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x245D76B30](v21, v19);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      [v22 removeFromSuperview];

      ++v21;
      if (v24 == k)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_40:

  [*(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView) removeFromSuperview];
  v25 = sub_2458A16B8();
  v26 = [v25 subviews];

  v27 = sub_245910C44();
  if (v27 >> 62)
  {
    goto LABEL_52;
  }

  for (m = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); m; m = sub_245911424())
  {
    v29 = 0;
    while (1)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x245D76B30](v29, v27);
      }

      else
      {
        if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v30 = *(v27 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      [v30 removeFromSuperview];

      ++v29;
      if (v32 == m)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

LABEL_53:

  v33 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView);

  return [v33 removeFromSuperview];
}

void sub_2458A3CDC()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_29;
  }

  v3 = v2;
  v4 = sub_2458A1688();
  [v3 addSubview_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = v5;
  v7 = sub_2458A16A8();
  [v6 addSubview_];

  v8 = sub_2458A1E14();
  v9 = sub_2458A1EB0();
  [v8 addSubview_];

  v10 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView];
  [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] addSubview_];
  v11 = sub_2458A1F80();
  [v10 addSubview_];

  v12 = sub_2458A1930();
  v13 = sub_2458A19B8();
  [v12 addSubview_];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = v14;
  v123 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView;
  [v14 addSubview_];

  sub_2458A5CBC();
  v16 = sub_2458A16B8();
  v17 = sub_2458A1780();
  [v16 addArrangedSubview_];

  v18 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView;
  v19 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView];
  v20 = sub_2458A1880();
  [v19 addArrangedSubview_];

  v21 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
  swift_beginAccess();
  sub_2457ACB24(&v1[v21], v128);
  v22 = v129;
  v23 = v130;
  __swift_project_boxed_opaque_existential_1(v128, v129);
  LOBYTE(v20) = (*(v23 + 64))(v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v128);
  if (v20)
  {
    v24 = *&v1[v18];
    v25 = sub_2458A1A68();
    [v24 addArrangedSubview_];

    [*&v1[v18] setCustomSpacing:*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] afterView:20.0];
  }

  [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] addArrangedSubview_];
  sub_2457ACB24(&v1[v21], v128);
  v26 = v129;
  v27 = v130;
  __swift_project_boxed_opaque_existential_1(v128, v129);
  v28 = (*(v27 + 240))(v26, v27);
  if (v28 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_1(v128);
    if ((v29 & 1) == 0)
    {
      v30 = sub_2458A1D88();
      [v30 setActivityIndicatorViewStyle_];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2459176D0;
  v32 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray;
  v33 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] leadingAnchor];
  v34 = [v1 view];
  if (!v34)
  {
    goto LABEL_31;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor:v36 constant:38.0];
  *(v31 + 32) = v37;
  v38 = [*&v1[v32] trailingAnchor];
  v39 = [v1 view];
  if (!v39)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = [v38 constraintEqualToAnchor:v41 constant:-38.0];
  *(v31 + 40) = v42;
  v43 = [*&v1[v32] centerXAnchor];
  v44 = [v1 view];
  if (!v44)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v45 = v44;
  v46 = [v44 centerXAnchor];

  v47 = [v43 constraintEqualToAnchor_];
  *(v31 + 48) = v47;
  v48 = [*&v1[v123] leadingAnchor];
  v49 = [v1 view];
  if (!v49)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v50 = v49;
  v51 = [v49 leadingAnchor];

  v52 = [v48 constraintEqualToAnchor_];
  *(v31 + 56) = v52;
  v53 = [*&v1[v123] trailingAnchor];
  v54 = [v1 view];
  if (!v54)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v55 = v54;
  v56 = [v54 trailingAnchor];

  v57 = [v53 constraintEqualToAnchor_];
  *(v31 + 64) = v57;
  v58 = [*&v1[v123] bottomAnchor];
  v59 = [v1 view];
  if (!v59)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v60 = v59;
  v61 = [v59 bottomAnchor];

  v62 = [v58 constraintEqualToAnchor_];
  *(v31 + 72) = v62;
  v63 = [*&v1[v32] bottomAnchor];
  v64 = [v1 &selRef_bundleForClass_];
  if (!v64)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v65 = v64;
  v66 = [v64 bottomAnchor];

  v67 = [v63 constraintEqualToAnchor:v66 constant:-38.0];
  *(v31 + 80) = v67;
  v68 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground;
  v69 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] topAnchor];
  v70 = [*&v1[v32] topAnchor];
  v71 = [v69 &selRef:v70 setAlignment:-16.0 + 6];

  *(v31 + 88) = v71;
  v72 = [*&v1[v68] leadingAnchor];
  v73 = [v1 &selRef_bundleForClass_];
  if (!v73)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v74 = v73;
  v75 = [v73 leadingAnchor];

  v76 = [v72 constraintEqualToAnchor_];
  *(v31 + 96) = v76;
  v77 = [*&v1[v68] trailingAnchor];
  v78 = [v1 &selRef_bundleForClass_];
  if (!v78)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v79 = v78;
  v80 = [v78 trailingAnchor];

  v81 = [v77 constraintEqualToAnchor_];
  *(v31 + 104) = v81;
  v82 = [*&v1[v68] bottomAnchor];
  v83 = [v1 &selRef_bundleForClass_];
  if (!v83)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v84 = v83;
  v85 = objc_opt_self();
  v86 = [v84 bottomAnchor];

  v87 = [v82 constraintEqualToAnchor_];
  *(v31 + 112) = v87;
  v88 = sub_2458A5494();
  v127 = v31;
  sub_24581EA54(v88);
  v89 = sub_2458A593C();
  sub_24581EA54(v89);
  v90 = sub_2458A4B4C();
  sub_24581EA54(v90);
  v91 = sub_2458A57F8();
  sub_24581EA54(v91);
  sub_24579D5E0(0, &qword_27EE291F0, 0x277CCAAD0);
  v92 = sub_245910C34();

  [v85 activateConstraints_];

  sub_2457ACB24(&v1[v21], v128);
  v93 = v129;
  v94 = v130;
  __swift_project_boxed_opaque_existential_1(v128, v129);
  if ((*(v94 + 32))(v93, v94))
  {
    __swift_destroy_boxed_opaque_existential_1(v128);
    v95 = 20.0;
    v96 = &off_278E87000;
    v97 = &selRef_userInfo;
  }

  else
  {
    sub_2457ACB24(&v1[v21], v124);
    v98 = v125;
    v99 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    v100 = (*(v99 + 48))(v98, v99);
    __swift_destroy_boxed_opaque_existential_1(v124);
    __swift_destroy_boxed_opaque_existential_1(v128);
    v95 = 20.0;
    v96 = &off_278E87000;
    v97 = &selRef_userInfo;
    if ((v100 & 1) == 0)
    {
      sub_2457ACB24(&v1[v21], v128);
      v101 = v129;
      v102 = v130;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      v103 = (*(v102 + 216))(v101, v102);
      __swift_destroy_boxed_opaque_existential_1(v128);
      if (v103)
      {
        v95 = 20.0;
      }

      else
      {
        v95 = 0.0;
      }
    }
  }

  v104 = *&v1[v32];
  v105 = sub_2458A1C38();
  [v104 v97[56]];

  v106 = *&v1[v32];
  sub_2458A497C(v106);

  v107 = *&v1[v32];
  v108 = sub_2458A1C38();
  [v107 addArrangedSubview_];

  v109 = *&v1[v32];
  v110 = sub_2458A1C58();
  [v109 addArrangedSubview_];

  v111 = *&v1[v32];
  v112 = sub_2458A1AEC();
  [v111 addArrangedSubview_];

  v113 = *&v1[v32];
  v114 = sub_2458A1D08();
  [v113 addArrangedSubview_];

  v115 = *&v1[v32];
  v116 = sub_2458A1B04();
  [v115 addArrangedSubview_];

  v117 = *&v1[v32];
  v118 = sub_2458A1B1C();
  [v117 addArrangedSubview_];

  v119 = *&v1[v32];
  v120 = sub_2458A1B34();
  [v119 addArrangedSubview_];

  v121 = [v1 v96[433]];
  if (v121)
  {
    v122 = v121;
    [v121 bringSubviewToFront_];

    return;
  }

LABEL_41:
  __break(1u);
}

void sub_2458A497C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
  swift_beginAccess();
  sub_2457ACB24(v1 + v4, v16);
  v5 = v17;
  v6 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v7 = (*(v6 + 136))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v7)
  {
    sub_2457ACB24(v2 + v4, v16);
    v8 = v17;
    v9 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v9 + 200))(v8, v9);
    if (v10)
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
      v11 = objc_opt_self();
      v12 = sub_2459109C4();
      v13 = [v11 linkWithBundleIdentifier_];

      if (v13)
      {
        v14 = v13;
        [v2 addChildViewController_];
        v15 = [v14 view];

        if (v15)
        {

          [a1 addArrangedSubview_];

          [v14 didMoveToParentViewController_];
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }
}

id sub_2458A4B4C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
  swift_beginAccess();
  sub_2457ACB24(&v0[v2], v89);
  v3 = v90;
  v4 = v91;
  __swift_project_boxed_opaque_existential_1(v89, v90);
  v5 = (*(v4 + 144))(v3, v4);
  if (v5 <= 1)
  {
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_24591C5B0;
      v73 = sub_2458A1F80();
      v74 = [v73 topAnchor];

      v75 = sub_2458A1E14();
      v76 = [v75 topAnchor];

      v77 = [v74 constraintEqualToAnchor_];
      *(v6 + 32) = v77;
      v78 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView;
      v79 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] centerXAnchor];
      v80 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView;
      v81 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] centerXAnchor];
      v82 = [v79 constraintEqualToAnchor_];

      *(v6 + 40) = v82;
      v83 = [*&v1[v78] bottomAnchor];
      v84 = [*&v1[v80] bottomAnchor];
      v85 = [v83 constraintEqualToAnchor_];

      *(v6 + 48) = v85;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_24591B440;
      v7 = sub_2458A1EB0();
      v8 = [v7 widthAnchor];

      v9 = sub_2458A1E14();
      v10 = [v9 &off_278E87570 + 6];

      v11 = [v8 constraintEqualToAnchor_];
      *(v6 + 32) = v11;
      v12 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView;
      v13 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] heightAnchor];
      v14 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView;
      v15 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] &off_278E875B8 + 2];
      v16 = [v13 constraintEqualToAnchor_];

      *(v6 + 40) = v16;
      v17 = [*&v1[v12] topAnchor];
      v18 = [*&v1[v14] &off_278E87950];
      v19 = [v17 constraintEqualToAnchor_];

      *(v6 + 48) = v19;
      v20 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView];
      v21 = [v20 leadingAnchor];
      v22 = [*&v1[v12] leadingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22 constant:38.0];

      *(v6 + 56) = v23;
      v24 = [v20 trailingAnchor];
      v25 = [*&v1[v12] trailingAnchor];
      v26 = [v24 constraintEqualToAnchor:v25 constant:-38.0];

      *(v6 + 64) = v26;
      v27 = [v20 centerYAnchor];
      v28 = [*&v1[v12] centerYAnchor];
      v29 = [v27 constraintEqualToAnchor_];

      *(v6 + 72) = v29;
      v30 = sub_2458A1F80();
      v31 = [v30 &off_278E87570 + 6];

      v32 = [v20 &off_278E87570 + 6];
      v33 = [v31 constraintEqualToAnchor_];

      *(v6 + 80) = v33;
      v34 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView;
      v35 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] heightAnchor];
      v36 = [v20 heightAnchor];
      v37 = [v35 constraintEqualToAnchor_];

      *(v6 + 88) = v37;
      v38 = [*&v1[v34] topAnchor];
      v39 = [v20 topAnchor];
      v40 = [v38 constraintEqualToAnchor_];

      *(v6 + 96) = v40;
      v41 = [v20 heightAnchor];
      v42 = [v20 &off_278E87570 + 6];
      v43 = [v41 constraintEqualToAnchor:v42 multiplier:0.630607477];

      *(v6 + 104) = v43;
    }

    goto LABEL_11;
  }

  if (v5 != 2)
  {
    goto LABEL_10;
  }

  sub_2457ACB24(&v0[v2], v86);
  v44 = v87;
  v45 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v46 = (*(v45 + 152))(v44, v45);
  if (!v46)
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
LABEL_10:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v47 = v46;
  [v46 size];
  v49 = v48;
  v51 = v50;

  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24591C5A0;
  v52 = sub_2458A1F80();
  v53 = [v52 widthAnchor];

  result = [v1 view];
  if (result)
  {
    v55 = result;
    v56 = [result widthAnchor];

    v57 = [v53 constraintEqualToAnchor:v56 multiplier:0.555555556];
    *(v6 + 32) = v57;
    v58 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView;
    v59 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] heightAnchor];
    v60 = [*&v1[v58] widthAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 multiplier:v51 / v49];

    *(v6 + 40) = v61;
    v62 = [*&v1[v58] centerXAnchor];
    v63 = sub_2458A1E14();
    v64 = [v63 centerXAnchor];

    v65 = [v62 constraintEqualToAnchor_];
    *(v6 + 48) = v65;
    v66 = [*&v1[v58] topAnchor];
    v67 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView;
    v68 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] topAnchor];
    v69 = [v66 constraintEqualToAnchor_];

    *(v6 + 56) = v69;
    v70 = [*&v1[v58] bottomAnchor];
    v71 = [*&v1[v67] bottomAnchor];
    v72 = [v70 constraintEqualToAnchor_];

    *(v6 + 64) = v72;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v89);
    return v6;
  }

  __break(1u);
  return result;
}

id sub_2458A5494()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
  swift_beginAccess();
  sub_2457ACB24(&v1[v2], v30);
  v3 = v31;
  v4 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  LOBYTE(v4) = (*(v4 + 184))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v5 = sub_2458A19B8();
  v6 = [v5 topAnchor];

  v7 = sub_2458A1930();
  v8 = [v7 topAnchor];

  if (v4)
  {
    v9 = [v6 constraintEqualToAnchor:v8 constant:32.0];
  }

  else
  {
    v9 = [v6 constraintEqualToAnchor_];
  }

  v10 = v9;

  [v10 setActive_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_245917DC0;
  v12 = sub_2458A19B8();
  v13 = [v12 bottomAnchor];

  v14 = sub_2458A1930();
  v15 = [v14 bottomAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v11 + 32) = v16;
  v17 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView;
  v18 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] widthAnchor];
  v19 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] widthAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v11 + 40) = v20;
  v21 = [*&v1[v17] leadingAnchor];
  result = [v1 view];
  if (result)
  {
    v23 = result;
    v24 = [result leadingAnchor];

    v25 = [v21 constraintEqualToAnchor_];
    *(v11 + 48) = v25;
    v26 = [*&v1[v17] trailingAnchor];
    result = [v1 view];
    if (result)
    {
      v27 = result;
      v28 = [result trailingAnchor];

      v29 = [v26 constraintEqualToAnchor_];
      *(v11 + 56) = v29;
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2458A57F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24591C5B0;
  v1 = sub_2458A1B04();
  v2 = [v1 heightAnchor];

  v3 = [v2 constraintEqualToConstant_];
  *(v0 + 32) = v3;
  v4 = sub_2458A1B1C();
  v5 = [v4 heightAnchor];

  v6 = [v5 constraintEqualToConstant_];
  *(v0 + 40) = v6;
  v7 = sub_2458A1B34();
  v8 = [v7 heightAnchor];

  v9 = [v8 constraintEqualToConstant_];
  *(v0 + 48) = v9;
  return v0;
}

id sub_2458A593C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2459186C0;
  v3 = sub_2458A16B8();
  v4 = [v3 widthAnchor];

  v5 = sub_2458A19B8();
  v6 = [v5 widthAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:-76.0];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView;
  v9 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] centerXAnchor];
  v10 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] centerXAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v2 + 40) = v11;
  v33 = v2;
  v12 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
  swift_beginAccess();
  sub_2457ACB24(&v1[v12], v30);
  v13 = v31;
  v14 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  LODWORD(v9) = (*(v14 + 144))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (v9 == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_245916860;
    v16 = sub_2458A1780();
    v17 = [v16 topAnchor];

    v18 = [*&v1[v8] topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:70.0];

    *(inited + 32) = v19;
    sub_24581EA54(inited);
  }

  sub_2457ACB24(&v1[v12], v30);
  v20 = v31;
  v21 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v22 = (*(v21 + 64))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if ((v22 & 1) == 0)
  {
    return v33;
  }

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_245916860;
  v24 = sub_2458A1A68();
  v25 = [v24 leadingAnchor];

  result = [v1 view];
  if (result)
  {
    v27 = result;
    v28 = [result leadingAnchor];

    v29 = [v25 constraintEqualToAnchor:v28 constant:45.0];
    *(v23 + 32) = v29;
    sub_24581EA54(v23);
    return v33;
  }

  __break(1u);
  return result;
}

void sub_2458A5CBC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
  swift_beginAccess();
  sub_2457ACB24(&v0[v2], v119);
  v3 = v120;
  v4 = v121;
  __swift_project_boxed_opaque_existential_1(v119, v120);
  v5 = (*(v4 + 184))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v119);
  if (v5)
  {
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      v8 = sub_2458A1E14();
      [v7 addSubview_];

      v9 = sub_2458A1930();
      v10 = [v9 topAnchor];

      v11 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] bottomAnchor];
      v12 = [v10 constraintEqualToAnchor_];

      [v12 setActive_];
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_33;
  }

  v13 = sub_2458A19B8();
  v14 = sub_2458A1E14();
  [v13 addArrangedSubview_];

  v15 = sub_2458A1930();
  v16 = [v15 topAnchor];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v18 = v17;
  v19 = [v17 safeAreaLayoutGuide];

  v20 = [v19 topAnchor];
  v21 = [v16 constraintEqualToAnchor_];

  [v21 setActive_];
  sub_2457ACB24(&v1[v2], v119);
  v22 = v120;
  v23 = v121;
  __swift_project_boxed_opaque_existential_1(v119, v120);
  LODWORD(v22) = (*(v23 + 144))(v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v119);
  v24 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] topAnchor];
  v25 = [v1 view];
  v26 = v25;
  if (v22)
  {
    if (!v25)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v27 = [v25 safeAreaLayoutGuide];

    v28 = [v27 topAnchor];
  }

  else
  {
    if (!v25)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v29 = [v25 topAnchor];

    v30 = [v24 constraintEqualToAnchor_];
    [v30 setActive_];

    v31 = sub_2458A1EB0();
    v24 = [v31 topAnchor];

    v32 = [v1 view];
    if (!v32)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v27 = v32;
    v28 = [v32 topAnchor];
  }

  v33 = v28;

  v34 = [v24 constraintEqualToAnchor_];
  [v34 setActive_];

  sub_2457ACB24(&v1[v2], v119);
  v35 = v120;
  v36 = v121;
  __swift_project_boxed_opaque_existential_1(v119, v120);
  v37 = (*(v36 + 144))(v35, v36);
  __swift_destroy_boxed_opaque_existential_1(v119);
  if (v37 == 2)
  {
    [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] setCustomSpacing:*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] afterView:24.0];
  }

LABEL_13:
  sub_2457ACB24(&v1[v2], v119);
  v38 = v120;
  v39 = v121;
  __swift_project_boxed_opaque_existential_1(v119, v120);
  v40 = (*(v39 + 144))(v38, v39);
  if ((v40 - 2) >= 2)
  {
    if (v40)
    {
      v88 = [objc_opt_self() di_mainScreen];
      [v88 bounds];
      v90 = v89;
      v92 = v91;
      v94 = v93;
      v96 = v95;

      v124.origin.x = v90;
      v124.origin.y = v92;
      v124.size.width = v94;
      v124.size.height = v96;
      Height = CGRectGetHeight(v124);
      sub_2457ACB24(&v1[v2], v116);
      v98 = v117;
      v99 = v118;
      __swift_project_boxed_opaque_existential_1(v116, v117);
      v100 = (*(v99 + 152))(v98, v99);
      if (v100)
      {
        v101 = v100;
        [v100 size];
        v103 = v102;
      }

      else
      {
        v103 = 0.0;
      }

      __swift_destroy_boxed_opaque_existential_1(v116);
      sub_2457ACB24(&v1[v2], v116);
      v104 = v117;
      v105 = v118;
      __swift_project_boxed_opaque_existential_1(v116, v117);
      v106 = (*(v105 + 184))(v104, v105);
      __swift_destroy_boxed_opaque_existential_1(v116);
      if (v106)
      {
        v107 = sub_2458A1E14();
        v108 = [v107 topAnchor];

        v109 = [v1 view];
        if (!v109)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v110 = v109;
        v111 = [v109 topAnchor];

        v112 = [v108 constraintEqualToAnchor:v111 constant:Height * 0.09];
        [v112 setActive_];
      }

      v113 = sub_2458A1E14();
      v114 = [v113 heightAnchor];

      v115 = [v114 constraintEqualToConstant_];
      [v115 setActive_];
    }

    else
    {
      sub_2457ACB24(&v1[v2], v116);
      v59 = v117;
      v60 = v118;
      __swift_project_boxed_opaque_existential_1(v116, v117);
      v61 = (*(v60 + 184))(v59, v60);
      __swift_destroy_boxed_opaque_existential_1(v116);
      if (v61)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_2459186C0;
        v63 = sub_2458A1E14();
        v64 = [v63 widthAnchor];

        v65 = [v1 view];
        if (!v65)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v66 = v65;
        v67 = [v65 widthAnchor];

        v68 = [v64 constraintEqualToAnchor_];
        *(v62 + 32) = v68;
        v69 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] topAnchor];
        v70 = [v1 view];
        if (!v70)
        {
LABEL_40:
          __break(1u);
          return;
        }

        v71 = v70;
        v72 = [v70 topAnchor];

        v73 = [v69 constraintEqualToAnchor_];
        *(v62 + 40) = v73;
        v74 = objc_opt_self();
        sub_24579D5E0(0, &qword_27EE291F0, 0x277CCAAD0);
        v75 = sub_245910C34();

        [v74 activateConstraints_];
      }

      v76 = sub_2458A1E14();
      v77 = [v76 heightAnchor];

      v78 = [objc_opt_self() di_mainScreen];
      [v78 bounds];
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v86 = v85;

      v123.origin.x = v80;
      v123.origin.y = v82;
      v123.size.width = v84;
      v123.size.height = v86;
      v87 = [v77 constraintEqualToConstant_];

      [v87 setActive_];
    }

    __swift_destroy_boxed_opaque_existential_1(v119);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v119);
    v41 = [objc_opt_self() di_mainScreen];
    [v41 bounds];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v122.origin.x = v43;
    v122.origin.y = v45;
    v122.size.width = v47;
    v122.size.height = v49;
    v50 = CGRectGetHeight(v122);
    sub_2457ACB24(&v1[v2], v119);
    v51 = v120;
    v52 = v121;
    __swift_project_boxed_opaque_existential_1(v119, v120);
    LOBYTE(v41) = (*(v52 + 184))(v51, v52);
    __swift_destroy_boxed_opaque_existential_1(v119);
    if (v41)
    {
      v53 = sub_2458A1E14();
      v54 = [v53 topAnchor];

      v55 = [v1 view];
      if (v55)
      {
        v56 = v55;
        v57 = [v55 topAnchor];

        v58 = [v54 constraintEqualToAnchor:v57 constant:v50 * 0.09];
        [v58 setActive_];

        return;
      }

      goto LABEL_35;
    }
  }
}

void sub_2458A67F0(uint64_t a1, unint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v3 setAlignment_];
  [v3 setLineBreakMode_];
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceStyle];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2B030, &qword_245916940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2459169B0;
  v7 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  v8 = sub_24579D5E0(0, &qword_27EE299F0, 0x277D74240);
  v9 = MEMORY[0x277D740A8];
  *(inited + 40) = v3;
  v10 = *v9;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  v11 = objc_opt_self();
  v12 = *MEMORY[0x277D76A20];
  v13 = *MEMORY[0x277D76800];
  v14 = v7;
  v15 = v3;
  v16 = v10;

  v17 = [v11 _preferredFontForTextStyle_maximumContentSizeCategory_];
  if (v17)
  {
    v18 = v17;
    [v17 pointSize];
    v19 = [v11 systemFontOfSize_weight_];

    v20 = sub_24579D5E0(0, &qword_27EE2B040, 0x277D74300);
    *(inited + 80) = v19;
    v21 = *MEMORY[0x277D740C0];
    *(inited + 104) = v20;
    *(inited + 112) = v21;
    v22 = objc_opt_self();
    v23 = v21;
    v24 = &selRef_whiteColor;
    if (v5 != 2)
    {
      v24 = &selRef_blackColor;
    }

    v25 = [v22 *v24];
    *(inited + 144) = sub_24579D5E0(0, &qword_27EE29668, 0x277D75348);
    *(inited + 120) = v25;
    sub_2458B8260(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2B050, &qword_24591C620);
    swift_arrayDestroy();
    v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v27 = sub_2459109C4();

    type metadata accessor for Key(0);
    sub_2458A953C(&qword_27EE28978, type metadata accessor for Key, &unk_245915AC8);
    v28 = sub_2459108E4();

    v29 = [v26 initWithString:v27 attributes:v28];

    v30 = sub_2458A1780();
    v31 = *&v30[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_attributedText];
    *&v30[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_attributedText] = v29;
    v32 = v29;

    sub_2458B5E24();
  }

  else
  {
    __break(1u);
  }
}

void sub_2458A6BA0(void *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v58 = a5;
  v57 = a4;
  HIDWORD(v56) = a3;
  v8 = sub_24590F354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2458A19B8();
  v13 = [v12 arrangedSubviews];

  sub_24579D5E0(0, &qword_27EE29630, 0x277D75D18);
  v14 = sub_245910C44();

  v59 = a1;
  v62 = a1;
  v61 = &v62;
  LOBYTE(v13) = sub_2458A1560(sub_2458A94D4, v60, v14);

  if (v13)
  {
    sub_24590C714();
    v15 = sub_24590F344();
    v16 = sub_245910F54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_245767000, v15, v16, "IdentityProofingViewController view is already configured in proofing view; aborting", v17, 2u);
      MEMORY[0x245D77B40](v17, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    return;
  }

  if ((v56 & 0x100000000) != 0)
  {
    v18 = 32.0;
  }

  else
  {
    v18 = *&a2;
  }

  if (v58)
  {
    v19 = 23.0;
  }

  else
  {
    v19 = *&v57;
  }

  v20 = [v5 traitCollection];
  v21 = [v20 preferredContentSizeCategory];

  LOBYTE(v20) = sub_2459110F4();
  if ((v20 & 1) == 0)
  {
    v31 = sub_2458A16B8();
    v32 = [v31 arrangedSubviews];

    v33 = sub_245910C44();
    v34 = sub_2458A1880();
    v35 = sub_2458A8B2C(v34, v33);
    v37 = v36;

    v38 = v59;
    if (v37)
    {
      v39 = 0;
    }

    else
    {
      v39 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
LABEL_33:
        __break(1u);
        return;
      }
    }

    v40 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView;
    [*&v5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] insertArrangedSubview:v59 atIndex:v39];
    [*&v5[v40] setCustomSpacing:*&v5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] afterView:v18];
    v41 = [v38 widthAnchor];
    v42 = [*&v5[v40] widthAnchor];
    v43 = [v41 constraintEqualToAnchor_];

    [v43 setActive_];
    v44 = [v38 leadingAnchor];
    v45 = [*&v5[v40] leadingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:v19];

    [v46 setActive_];
    v47 = [v38 trailingAnchor];
    v48 = [*&v5[v40] trailingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:-v19];

    [v49 setActive_];
    return;
  }

  v22 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView;
  v23 = [*&v5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] arrangedSubviews];
  v24 = sub_245910C44();

  v25 = v59;
  if (!(v24 >> 62))
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_14;
    }

LABEL_25:

    v30 = 0;
    goto LABEL_26;
  }

  v26 = sub_245911424();
  if (!v26)
  {
    goto LABEL_25;
  }

LABEL_14:
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
    goto LABEL_30;
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v29 = MEMORY[0x245D76B30](v28, v24);
    goto LABEL_19;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v28 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v29 = *(v24 + 8 * v28 + 32);
LABEL_19:
  v30 = v29;

LABEL_26:
  [*&v5[v22] addArrangedSubview_];
  if (v30)
  {
    [*&v5[v22] setCustomSpacing:v30 afterView:v18];
  }

  v50 = [v25 leadingAnchor];
  v51 = [*&v5[v22] leadingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:v19];

  [v52 setActive_];
  v53 = [v25 trailingAnchor];
  v54 = [*&v5[v22] trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-v19];

  [v55 setActive_];
}