@interface UIImage
@end

@implementation UIImage

void __42__UIImage_AuthKitUI__ak_copyScaledToSize___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  CGRectMake_1();
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v6 = [MEMORY[0x277D75348] clearColor];
  [v6 setFill];
  MEMORY[0x277D82BD8](v6);
  [location[0] fillRect:{v8, v9, v10, v11}];
  [a1[4] drawInRect:{v8, v9, v10, v11}];
  objc_storeStrong(location, 0);
}

@end