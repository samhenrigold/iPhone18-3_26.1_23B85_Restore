@interface VABundleUtil
+ (id)bundePathFallbackWithResource:(id)resource type:(id)type;
+ (id)bundlePathFallbackWithPath:(id)path error:(id *)error;
- (VABundleUtil)init;
@end

@implementation VABundleUtil

+ (id)bundePathFallbackWithResource:(id)resource type:(id)type
{
  v4 = sub_27237782C();
  v6 = v5;
  v7 = sub_27237782C();
  v9 = v8;
  sub_272255F24(v4, v6, v7, v8);
  if (v10)
  {

LABEL_4:
    v13 = sub_2723777FC();

    goto LABEL_5;
  }

  sub_272256018(v4, v6, v7, v9);
  v12 = v11;

  if (v12)
  {
    goto LABEL_4;
  }

  v13 = 0;
LABEL_5:

  return v13;
}

+ (id)bundlePathFallbackWithPath:(id)path error:(id *)error
{
  v4 = sub_27237782C();
  sub_272258924(v4, v5);

  v6 = sub_2723777FC();

  return v6;
}

- (VABundleUtil)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VABundleUtil();
  return [(VABundleUtil *)&v3 init];
}

@end