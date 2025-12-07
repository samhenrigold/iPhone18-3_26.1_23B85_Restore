@interface CARSmallPageControl
- (_TtC15CarPlaySettings19CARSmallPageControl)init;
@end

@implementation CARSmallPageControl

- (_TtC15CarPlaySettings19CARSmallPageControl)init
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CARSmallPageControl();
  v2 = [(CARPageControl *)&v6 init];
  sub_100081B08();
  v4 = v3;
  [(CARSmallPageControl *)v2 setPreferredIndicatorImage:v3];

  return v2;
}

@end