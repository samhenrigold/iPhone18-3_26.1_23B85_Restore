@interface NSLayoutXAxisAnchor(ITK)
- (id)itk_constraintEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:;
- (id)itk_constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:;
- (id)itk_constraintLessThanOrEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:;
@end

@implementation NSLayoutXAxisAnchor(ITK)

- (id)itk_constraintEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:
{
  v4 = [self constraintEqualToSystemSpacingAfterAnchor:a2 multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:
{
  v4 = [self constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:a2 multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintLessThanOrEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:
{
  v4 = [self constraintLessThanOrEqualToSystemSpacingAfterAnchor:a2 multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

@end