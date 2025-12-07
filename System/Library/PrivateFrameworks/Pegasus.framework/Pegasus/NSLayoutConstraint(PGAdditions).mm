@interface NSLayoutConstraint(PGAdditions)
+ (id)PG_constraintWithItem:()PGAdditions attribute:relatedBy:toItem:attribute:multiplier:constant:priority:;
@end

@implementation NSLayoutConstraint(PGAdditions)

+ (id)PG_constraintWithItem:()PGAdditions attribute:relatedBy:toItem:attribute:multiplier:constant:priority:
{
  v5 = [self constraintWithItem:a2 attribute:a3 relatedBy:? toItem:? attribute:? multiplier:? constant:?];
  *&v6 = a4;
  [v5 setPriority:v6];

  return v5;
}

@end