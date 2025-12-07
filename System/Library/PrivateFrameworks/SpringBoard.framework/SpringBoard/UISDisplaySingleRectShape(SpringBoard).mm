@interface UISDisplaySingleRectShape(SpringBoard)
+ (id)sb_displayShapeForScreenType:()SpringBoard;
+ (id)sb_thisDeviceDisplayShape;
@end

@implementation UISDisplaySingleRectShape(SpringBoard)

+ (id)sb_thisDeviceDisplayShape
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__UISDisplaySingleRectShape_SpringBoard__sb_thisDeviceDisplayShape__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sb_thisDeviceDisplayShape_onceToken != -1)
  {
    dispatch_once(&sb_thisDeviceDisplayShape_onceToken, block);
  }

  v1 = sb_thisDeviceDisplayShape_sThisDeviceScreenType;

  return v1;
}

+ (id)sb_displayShapeForScreenType:()SpringBoard
{
  v5 = _SBHNativeScaleForScreenType(a4, a3, self);
  if (a4 <= 0x10 && ((1 << a4) & 0x18600) != 0)
  {
    v5 = v5 * 1.04166667;
  }

  v6 = 0.0;
  v7 = 90.0;
  v8 = 627.0;
  v9 = 249.0;
  switch(a4)
  {
    case 3uLL:
    case 4uLL:
      goto LABEL_18;
    case 5uLL:
    case 6uLL:
      v8 = 628.0;
      v9 = 307.0;
      goto LABEL_18;
    case 7uLL:
    case 8uLL:
      v7 = 64.0;
      v8 = 454.0;
      v9 = 187.0;
      goto LABEL_18;
    case 9uLL:
    case 0xAuLL:
      v7 = 103.0;
      v8 = 678.0;
      v9 = 223.5;
      goto LABEL_18;
    case 0xBuLL:
    case 0xCuLL:
      v7 = 96.0;
      v8 = 630.0;
      v9 = 270.0;
      goto LABEL_18;
    case 0xDuLL:
    case 0xEuLL:
      v7 = 96.0;
      v8 = 628.0;
      v9 = 328.0;
      goto LABEL_18;
    case 0xFuLL:
    case 0x10uLL:
      v7 = 112.0;
      v8 = 522.0;
      v9 = 301.5;
      goto LABEL_18;
    case 0x11uLL:
    case 0x12uLL:
      v7 = 101.0;
      v8 = 484.0;
      v9 = 343.0;
      goto LABEL_18;
    case 0x13uLL:
    case 0x14uLL:
      v7 = 101.0;
      v8 = 484.0;
      v9 = 400.0;
      goto LABEL_18;
    case 0x15uLL:
    case 0x16uLL:
      v7 = 110.0;
      v8 = 375.0;
      v6 = 34.0;
      v9 = 402.0;
      goto LABEL_18;
    case 0x17uLL:
    case 0x18uLL:
      v7 = 110.0;
      v8 = 376.0;
      v6 = 34.0;
      v9 = 457.0;
      goto LABEL_18;
    case 0x19uLL:
    case 0x1AuLL:
      v7 = 110.0;
      v8 = 375.0;
      v6 = 42.0;
      v9 = 415.0;
      goto LABEL_18;
    case 0x1BuLL:
    case 0x1CuLL:
      v7 = 110.0;
      v8 = 376.0;
      v6 = 42.0;
      v9 = 472.0;
      goto LABEL_18;
    case 0x1DuLL:
    case 0x1EuLL:
      v7 = 110.0;
      v8 = 376.0;
      v6 = 60.0;
      v9 = 442.0;
LABEL_18:
      v18.origin.x = v9;
      v18.origin.y = v6;
      v18.size.width = v8;
      v18.size.height = v7;
      v10 = CGRectGetMinX(v18) / v5;
      v19.origin.x = v9;
      v19.origin.y = v6;
      v19.size.width = v8;
      v19.size.height = v7;
      v11 = CGRectGetMinY(v19) / v5;
      v20.origin.x = v9;
      v20.origin.y = v6;
      v20.size.width = v8;
      v20.size.height = v7;
      v12 = CGRectGetWidth(v20) / v5;
      v21.origin.x = v9;
      v21.origin.y = v6;
      v21.size.width = v8;
      v21.size.height = v7;
      v13 = [objc_alloc(MEMORY[0x277D77780]) initWithRect:{v10, v11, v12, CGRectGetHeight(v21) / v5}];
      break;
    default:
      if (SBHScreenTypeIsPhone())
      {
        HasHomeButton = SBHScreenTypeHasHomeButton();
        if ((HasHomeButton & 1) == 0)
        {
          v16 = SBLogHomeAffordance(HasHomeButton);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(UISDisplaySingleRectShape(SpringBoard) *)a4 sb_displayShapeForScreenType:v16];
          }
        }
      }

      v13 = 0;
      break;
  }

  return v13;
}

+ (void)sb_displayShapeForScreenType:()SpringBoard .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = SBHStringForScreenType();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "We expect an exclusion rect for %@, but don't have one", &v4, 0xCu);
}

@end