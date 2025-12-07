@interface PSSpecifier(ACUIGroupSpecifier)
+ (id)groupSpecifierWithFooterLinkButton:()ACUIGroupSpecifier;
+ (id)groupSpecifierWithFooterText:()ACUIGroupSpecifier linkButton:;
+ (id)groupSpecifierWithFooterText:()ACUIGroupSpecifier linkButtons:;
+ (id)groupSpecifierWithHeader:()ACUIGroupSpecifier footer:;
+ (id)groupSpecifierWithHeader:()ACUIGroupSpecifier footer:linkButtons:;
@end

@implementation PSSpecifier(ACUIGroupSpecifier)

+ (id)groupSpecifierWithFooterLinkButton:()ACUIGroupSpecifier
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v5 = emptyGroupSpecifier;
  v3 = objc_opt_class();
  v6 = NSStringFromClass(v3);
  [v5 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v6);
  [emptyGroupSpecifier setProperty:location[0] forKey:@"ACUILinkButtonHolder"];
  v7 = MEMORY[0x277D82BE0](emptyGroupSpecifier);
  objc_storeStrong(&emptyGroupSpecifier, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)groupSpecifierWithFooterText:()ACUIGroupSpecifier linkButton:
{
  v13[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v7 = selfCopy;
  v6 = location[0];
  v13[0] = v10;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v9 = [v7 groupSpecifierWithHeader:0 footer:v6 linkButtons:?];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v9;
}

+ (id)groupSpecifierWithFooterText:()ACUIGroupSpecifier linkButtons:
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [selfCopy groupSpecifierWithHeader:0 footer:location[0] linkButtons:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)groupSpecifierWithHeader:()ACUIGroupSpecifier footer:
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [selfCopy groupSpecifierWithHeader:location[0] footer:v7 linkButtons:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)groupSpecifierWithHeader:()ACUIGroupSpecifier footer:linkButtons:
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  if (location[0])
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] groupSpecifierWithName:location[0]];
  }

  else
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  }

  v6 = v13;
  v13 = emptyGroupSpecifier;
  MEMORY[0x277D82BD8](v6);
  v7 = objc_opt_class();
  v10 = NSStringFromClass(v7);
  [v13 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v10);
  [v13 setProperty:v15 forKey:@"ACUIFooterText"];
  if (v14)
  {
    [v13 setProperty:v14 forKey:@"ACUILinkButtonArray"];
  }

  v9 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v9;
}

@end