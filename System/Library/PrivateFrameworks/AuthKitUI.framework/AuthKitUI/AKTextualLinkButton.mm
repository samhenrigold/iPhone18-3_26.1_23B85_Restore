@interface AKTextualLinkButton
+ (id)buttonWithText:(id)text fontSize:(double)size target:(id)target action:(SEL)action;
@end

@implementation AKTextualLinkButton

+ (id)buttonWithText:(id)text fontSize:(double)size target:(id)target action:(SEL)action
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  sizeCopy = size;
  v19 = 0;
  objc_storeStrong(&v19, target);
  actionCopy = action;
  v17 = [MEMORY[0x277D75220] buttonWithType:1];
  *&v6 = MEMORY[0x277D82BD8](0).n128_u64[0];
  if (location[0])
  {
    [v17 setTitle:location[0] forState:{0, v6}];
  }

  v7 = sizeCopy;
  if (sizeCopy > 0.0)
  {
    titleLabel = [v17 titleLabel];
    font = [titleLabel font];
    MEMORY[0x277D82BD8](titleLabel);
    v12 = [font fontWithSize:sizeCopy];
    titleLabel2 = [v17 titleLabel];
    [titleLabel2 setFont:v12];
    MEMORY[0x277D82BD8](titleLabel2);
    MEMORY[0x277D82BD8](v12);
    objc_storeStrong(&font, 0);
  }

  if (actionCopy)
  {
    [v17 addTarget:v19 action:actionCopy forControlEvents:{64, v7}];
  }

  [v17 sizeToFit];
  v9 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v9;
}

@end