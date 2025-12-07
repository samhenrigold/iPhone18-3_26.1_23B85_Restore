@interface SBHWidgetMetricsProvider
- (SBHWidgetMetricsProviderDelegate)delegate;
- (id)previewMetricsSpecificationForBundleIdentifier:(id)identifier;
- (id)previewMetricsSpecificationForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier;
- (id)systemDefaultMetricsSpecification;
- (id)systemDefaultMetricsSpecificationForFamilies:(unint64_t)families;
- (id)systemMetricsForFamily:(int64_t)family;
- (id)systemMetricsForWidget:(id)widget;
@end

@implementation SBHWidgetMetricsProvider

- (SBHWidgetMetricsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)systemDefaultMetricsSpecification
{
  delegate = [(SBHWidgetMetricsProvider *)self delegate];
  listLayoutProvider = [delegate listLayoutProvider];

  v6 = SBHScreenTypeForCurrentDevice(v4, v5);
  v7 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(listLayoutProvider, v6, 94);

  return v7;
}

- (id)systemDefaultMetricsSpecificationForFamilies:(unint64_t)families
{
  delegate = [(SBHWidgetMetricsProvider *)self delegate];
  listLayoutProvider = [delegate listLayoutProvider];

  v8 = SBHScreenTypeForCurrentDevice(v6, v7);
  v9 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(listLayoutProvider, v8, families);

  return v9;
}

- (id)systemMetricsForFamily:(int64_t)family
{
  delegate = [(SBHWidgetMetricsProvider *)self delegate];
  listLayoutProvider = [delegate listLayoutProvider];

  v8 = SBHScreenTypeForCurrentDevice(v6, v7);
  v9 = SBHWidgetMetricsForFamilyWithLayoutProviderAndScreenType(family, listLayoutProvider, v8);

  return v9;
}

- (id)systemMetricsForWidget:(id)widget
{
  family = [widget family];

  return [(SBHWidgetMetricsProvider *)self systemMetricsForFamily:family];
}

- (id)previewMetricsSpecificationForBundleIdentifier:(id)identifier
{
  delegate = [(SBHWidgetMetricsProvider *)self delegate];
  listLayoutProvider = [delegate listLayoutProvider];

  v7 = SBHScreenTypeForCurrentDevice(v5, v6);
  v8 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(listLayoutProvider, v7, 94);

  return v8;
}

- (id)previewMetricsSpecificationForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier
{
  v6 = SBHScreenTypeForDeviceAndDisplayContexts(context, displayContext);
  delegate = [(SBHWidgetMetricsProvider *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate widgetMetricsProvider:self listLayoutProviderForScreenType:v6], (listLayoutProvider = objc_claimAutoreleasedReturnValue()) == 0))
  {
    listLayoutProvider = [delegate listLayoutProvider];
  }

  v9 = SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(listLayoutProvider, v6, 94);

  return v9;
}

@end