@interface ViewAccessAssertion
- (NSString)viewArtifactTableName;
- (NSString)viewName;
- (NSURL)viewArtifactURL;
@end

@implementation ViewAccessAssertion

- (NSString)viewName
{
  sub_1ABE41308();
  v2 = sub_1ABF23BD4();

  return v2;
}

- (NSURL)viewArtifactURL
{
  v2 = sub_1ABF21CF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABE41428(v5);
  v6 = sub_1ABF21C54();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (NSString)viewArtifactTableName
{
  sub_1ABE414F8();
  if (v2)
  {
    v3 = sub_1ABF23BD4();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end