@interface NanoCompassBaseRichView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)_applyFilters:(id)filters toViews:(id)views;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NanoCompassBaseRichView

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v6 = objc_msgSend_filterProvider(self, a2, v3);
  v21 = objc_msgSend_filtersForView_style_fraction_(v6, v7, self, 2, fraction);

  v10 = objc_msgSend_monochromeAccentViews(self, v8, v9);
  objc_msgSend__applyFilters_toViews_(self, v11, v21, v10);

  v14 = objc_msgSend_filterProvider(self, v12, v13);
  v16 = objc_msgSend_filtersForView_style_fraction_(v14, v15, self, 0, fraction);

  v19 = objc_msgSend_monochromeOtherViews(self, v17, v18);
  objc_msgSend__applyFilters_toViews_(self, v20, v16, v19);
}

- (void)updateMonochromeColor
{
  v4 = objc_msgSend_filterProvider(self, a2, v2);
  v19 = objc_msgSend_filtersForView_style_(v4, v5, self, 2);

  v8 = objc_msgSend_monochromeAccentViews(self, v6, v7);
  objc_msgSend__applyFilters_toViews_(self, v9, v19, v8);

  v12 = objc_msgSend_filterProvider(self, v10, v11);
  v14 = objc_msgSend_filtersForView_style_(v12, v13, self, 0);

  v17 = objc_msgSend_monochromeOtherViews(self, v15, v16);
  objc_msgSend__applyFilters_toViews_(self, v18, v14, v17);
}

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NanoCompassBaseRichView;
  v6 = [(NanoCompassBaseRichView *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    v10 = objc_msgSend_initWithUUIDString_(v8, v9, @"FE1BCD7B-63A2-4EB3-9EF5-D6A9E506101E");
    v12 = objc_msgSend_supportsCapability_(deviceCopy, v11, v10);

    v7->_supportsGossamer = v12;
  }

  return v7;
}

- (void)_applyFilters:(id)filters toViews:(id)views
{
  filtersCopy = filters;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BD3AC64;
  v8[3] = &unk_278B942B8;
  v9 = filtersCopy;
  v6 = filtersCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(views, v7, v8);
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end