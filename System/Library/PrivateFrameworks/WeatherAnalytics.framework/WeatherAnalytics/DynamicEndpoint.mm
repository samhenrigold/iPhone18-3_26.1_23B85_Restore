@interface DynamicEndpoint
- (NSString)name;
- (NSString)sharedContainerIdentifier;
- (NSURL)url;
@end

@implementation DynamicEndpoint

- (NSString)name
{

  sub_220C02C24();

  v2 = sub_220CA0C14();

  return v2;
}

- (NSURL)url
{
  v2 = sub_220C9F754();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_220C44DAC();

  v6 = sub_220C9F744();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (NSString)sharedContainerIdentifier
{

  sub_220C44EFC();
  v3 = v2;

  if (v3)
  {
    v4 = sub_220CA0C14();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end