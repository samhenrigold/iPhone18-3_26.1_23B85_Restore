@interface CPSInstrumentClusterCardLayout
+ (id)layoutWithLayoutType:(unint64_t)type;
- (CGRect)safeArea;
- (CGRect)viewArea;
- (CPSInstrumentClusterCardLayout)initWithCarScreenInfo:(id)info isRightHandDrive:(BOOL)drive;
- (CPSInstrumentClusterCardLayout)initWithLayout:(unint64_t)layout;
- (uint64_t)initWithSafeAreaFrame:(char)frame viewAreaFrame:(CGFloat)areaFrame displayFrame:(CGFloat)displayFrame physicalPixelWidth:(CGFloat)width isRightHandDrive:(CGFloat)drive;
@end

@implementation CPSInstrumentClusterCardLayout

+ (id)layoutWithLayoutType:(unint64_t)type
{
  v3 = [[CPSInstrumentClusterCardLayout alloc] initWithLayout:type];

  return v3;
}

- (CPSInstrumentClusterCardLayout)initWithLayout:(unint64_t)layout
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a2;
  layoutCopy = layout;
  v10 = 0;
  v7.receiver = self;
  v7.super_class = CPSInstrumentClusterCardLayout;
  v5 = [(CPSInstrumentClusterCardLayout *)&v7 init];
  v10 = v5;
  objc_storeStrong(&v10, v5);
  if (v5)
  {
    v10->_layoutForCard = layoutCopy;
    oslog = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v11, v10->_layoutForCard);
      _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_INFO, "Layout Calculation: Explicity using layout %lu", v11, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v4;
}

- (uint64_t)initWithSafeAreaFrame:(char)frame viewAreaFrame:(CGFloat)areaFrame displayFrame:(CGFloat)displayFrame physicalPixelWidth:(CGFloat)width isRightHandDrive:(CGFloat)drive
{
  v60 = *MEMORY[0x277D85DE8];
  v56.origin.x = areaFrame;
  v56.origin.y = displayFrame;
  v56.size.width = width;
  v56.size.height = drive;
  v55.origin.x = a8;
  v55.origin.y = a9;
  v55.size.width = a10;
  v55.size.height = a11;
  v54.origin.x = a12;
  v54.origin.y = a13;
  v54.size.width = a14;
  v54.size.height = a15;
  v52 = a2;
  v51 = a16;
  frameCopy = frame;
  v53 = 0;
  v49.receiver = self;
  v49.super_class = CPSInstrumentClusterCardLayout;
  v31 = objc_msgSendSuper2(&v49, sel_init);
  v53 = v31;
  objc_storeStrong(&v53, v31);
  if (v31)
  {
    oslog = CarPlaySupportGeneralLogging();
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      v26 = type;
      v30 = NSStringFromCGRect(v56);
      v22 = MEMORY[0x277D82BE0](v30);
      v46 = v22;
      v29 = NSStringFromCGRect(v55);
      v23 = MEMORY[0x277D82BE0](v29);
      v45 = v23;
      v28 = NSStringFromCGRect(v54);
      v24 = MEMORY[0x277D82BE0](v28);
      v44 = v24;
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:v51];
      __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v59, v22, v23, v24, v27);
      _os_log_impl(&dword_242FE8000, log, v26, "Layout Calculation: pixelSafeArea: %@, pixelViewArea: %@, pixelDisplayFrame: %@, pixelPhysicalWidth: %@", v59, 0x2Au);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v46, 0);
    }

    objc_storeStrong(&oslog, 0);
    v53[8] = 1;
    *(v53 + 24) = v56;
    *(v53 + 56) = v55;
    v43 = 0.153 / v51;
    if (v56.size.width < 660.0 * (0.153 / v51))
    {
      if (0.3 * v56.size.height <= 115.0 * v43)
      {
        *(v53 + 2) = 0;
        v35 = CarPlaySupportGeneralLogging();
        v34 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v18 = v35;
          v19 = v34;
          __os_log_helper_16_0_0(v33);
          _os_log_error_impl(&dword_242FE8000, v18, v19, "Layout Calculation: Using undefined layout", v33, 2u);
        }

        objc_storeStrong(&v35, 0);
      }

      else
      {
        *(v53 + 2) = 1;
        v38 = CarPlaySupportGeneralLogging();
        v37 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v20 = v38;
          v21 = v37;
          __os_log_helper_16_0_0(v36);
          _os_log_impl(&dword_242FE8000, v20, v21, "Layout Calculation: Using center layout", v36, 2u);
        }

        objc_storeStrong(&v38, 0);
      }
    }

    else
    {
      MidX = CGRectGetMidX(v56);
      v41 = CGRectGetMidX(v54);
      if (MidX >= v41)
      {
        if (MidX <= v41)
        {
          if (frameCopy)
          {
            *(v53 + 2) = 3;
          }

          else
          {
            *(v53 + 2) = 2;
          }
        }

        else
        {
          *(v53 + 2) = 3;
        }
      }

      else
      {
        *(v53 + 2) = 2;
      }

      v40 = CarPlaySupportGeneralLogging();
      v39 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_4_0_8_0(v58, *&v56.size.width, COERCE__INT64(660.0 * v43), *&MidX, *&v41, frameCopy & 1, *(v53 + 2));
        _os_log_impl(&dword_242FE8000, v40, v39, "Layout Calculation: Safe area width %f is greater than %f. Safe area mid: %f, Display mid: %f. is RHD: %d. using layout %lu", v58, 0x3Au);
      }

      objc_storeStrong(&v40, 0);
    }

    if (v56.size.height <= 202.0)
    {
      v32 = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_2_8_0_8_0(v57, *&v56.size.height, 0x4069400000000000);
        _os_log_impl(&dword_242FE8000, v32, OS_LOG_TYPE_INFO, "Layout Calculation: Safe area height %f is less/equal to %f. Not showing ETA with turn card", v57, 0x16u);
      }

      objc_storeStrong(&v32, 0);
      v53[8] = 0;
    }
  }

  v17 = MEMORY[0x277D82BE0](v53);
  objc_storeStrong(&v53, 0);
  return v17;
}

- (CPSInstrumentClusterCardLayout)initWithCarScreenInfo:(id)info isRightHandDrive:(BOOL)drive
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  currentViewArea = [location[0] currentViewArea];
  [currentViewArea safeFrame];
  v33 = v4;
  v34 = v5;
  v35 = v6;
  v36 = v7;
  MEMORY[0x277D82BD8](currentViewArea);
  currentViewArea2 = [location[0] currentViewArea];
  [currentViewArea2 visibleFrame];
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  MEMORY[0x277D82BD8](currentViewArea2);
  [location[0] pixelSize];
  [location[0] pixelSize];
  CGRectMake_4();
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  [location[0] physicalSize];
  v23 = v16;
  [location[0] pixelSize];
  v17 = selfCopy;
  selfCopy = 0;
  selfCopy = [(CPSInstrumentClusterCardLayout *)v17 initWithSafeAreaFrame:drive viewAreaFrame:v33 displayFrame:v34 physicalPixelWidth:v35 isRightHandDrive:v36, v29, v30, v31, v32, v25, v26, v27, v28, v23 / v18];
  v24 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v24;
}

- (CGRect)safeArea
{
  y = self->_safeArea.origin.y;
  x = self->_safeArea.origin.x;
  height = self->_safeArea.size.height;
  width = self->_safeArea.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)viewArea
{
  y = self->_viewArea.origin.y;
  x = self->_viewArea.origin.x;
  height = self->_viewArea.size.height;
  width = self->_viewArea.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end