@interface MFCardContainerView
- (void)layoutSubviews;
- (void)updateAppearanceForReduceTransparency:(id)transparency;
@end

@implementation MFCardContainerView

- (void)updateAppearanceForReduceTransparency:(id)transparency
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30, &qword_257EEBBA0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  v11 = &v15 - v10;
  if (transparency)
  {
    sub_257ECC7E0();
    v12 = sub_257ECC810();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_257ECC810();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  selfCopy = self;
  sub_257E89D88(v11);

  sub_257E8A550(v11);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_257E8A064();
}

@end