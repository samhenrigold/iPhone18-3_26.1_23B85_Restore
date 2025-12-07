@interface StateOfMindChartViewController
- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithHealthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController initialXValue:(id)self0 currentCalendarOverride:(id)self1 options:(unint64_t)self2;
- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithStackedDisplayTypes:(id)types primaryDisplayTypeStackIndex:(id)index stackedDisplayTypeHeights:(id)heights healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)self0 sampleTypeDateRangeController:(id)self1 initialXValue:(id)self2 currentCalendarOverride:(id)self3 options:(unint64_t)self4 timeScopeRanges:(id)self5;
- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithTimeScopeRanges:(id)ranges healthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)self0 initialXValue:(id)self1 currentCalendarOverride:(id)self2 options:(unint64_t)self3;
- (void)didTapOnDateFromCurrentValueView:(id)view;
@end

@implementation StateOfMindChartViewController

- (void)didTapOnDateFromCurrentValueView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_258A3DC44();
}

- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithHealthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController initialXValue:(id)self0 currentCalendarOverride:(id)self1 options:(unint64_t)self2
{
  rangeControllerCopy = rangeController;
  selfCopy = self;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v37 - v19;
  sub_258A3F11C(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v37 - v22;
  if (value)
  {
    sub_258B00034();
    v24 = sub_258B00084();
    (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  }

  else
  {
    v25 = sub_258B00084();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  }

  optionsCopy = options;
  if (override)
  {
    sub_258B001A4();
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_258B00224();
  (*(*(v27 - 8) + 56))(v20, v26, 1, v27);
  storeCopy = store;
  typeCopy = type;
  controllerCopy = controller;
  cacheCopy = cache;
  cacheControllerCopy = cacheController;
  scopeControllerCopy = scopeController;
  v34 = rangeControllerCopy;
  v35 = sub_258A3E184(storeCopy, typeCopy, controllerCopy, cacheCopy, cacheControllerCopy, scopeControllerCopy, v34, v23, v20, optionsCopy);

  return v35;
}

- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithTimeScopeRanges:(id)ranges healthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)self0 initialXValue:(id)self1 currentCalendarOverride:(id)self2 options:(unint64_t)self3
{
  selfCopy = self;
  cacheControllerCopy = cacheController;
  rangeControllerCopy = rangeController;
  cacheCopy = cache;
  scopeControllerCopy = scopeController;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v35 - v17;
  sub_258A3F11C(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v35 - v20;
  sub_2589F4488(0, &qword_27F96F0B0, 0x277CCABB0);
  sub_2589F4488(0, &qword_27F96F0B8, 0x277D12B30);
  sub_258A3EFA0();
  v37 = sub_258B029F4();
  if (value)
  {
    sub_258B00034();
    v22 = sub_258B00084();
    (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  }

  else
  {
    v23 = sub_258B00084();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  }

  optionsCopy = options;
  if (override)
  {
    sub_258B001A4();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_258B00224();
  (*(*(v25 - 8) + 56))(v18, v24, 1, v25);
  storeCopy = store;
  typeCopy = type;
  controllerCopy = controller;
  v29 = cacheCopy;
  v30 = cacheControllerCopy;
  v31 = scopeControllerCopy;
  v32 = rangeControllerCopy;
  v33 = sub_258A3E484(v37, storeCopy, typeCopy, controllerCopy, v29, v30, v31, v32, v21, v18, optionsCopy);

  return v33;
}

- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithStackedDisplayTypes:(id)types primaryDisplayTypeStackIndex:(id)index stackedDisplayTypeHeights:(id)heights healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)self0 sampleTypeDateRangeController:(id)self1 initialXValue:(id)self2 currentCalendarOverride:(id)self3 options:(unint64_t)self4 timeScopeRanges:(id)self5
{
  selfCopy = self;
  cacheControllerCopy = cacheController;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v50 - v21;
  sub_258A3EF38(0);
  v52 = sub_258B02C74();
  if (heights)
  {
    sub_2589F4488(0, &qword_27F96F0C8, 0x277D12908);
    v51 = sub_258B02C74();
  }

  else
  {
    v51 = 0;
  }

  controllerCopy = controller;
  if (value)
  {
    indexCopy = index;
    storeCopy = store;
    controllerCopy2 = controller;
    cacheCopy = cache;
    v27 = cacheControllerCopy;
    scopeControllerCopy = scopeController;
    rangeControllerCopy = rangeController;
    swift_unknownObjectRetain();
    overrideCopy = override;
    rangesCopy = ranges;
    sub_258B03104();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v56, 0, sizeof(v56));
    indexCopy2 = index;
    storeCopy2 = store;
    controllerCopy3 = controller;
    cacheCopy2 = cache;
    v36 = cacheControllerCopy;
    scopeControllerCopy2 = scopeController;
    rangeControllerCopy2 = rangeController;
    overrideCopy2 = override;
    rangesCopy2 = ranges;
  }

  if (override)
  {
    sub_258B001A4();

    v41 = sub_258B00224();
    (*(*(v41 - 8) + 56))(v22, 0, 1, v41);
  }

  else
  {
    v42 = sub_258B00224();
    (*(*(v42 - 8) + 56))(v22, 1, 1, v42);
  }

  if (ranges)
  {
    sub_2589F4488(0, &qword_27F96F0B0, 0x277CCABB0);
    sub_2589F4488(0, &qword_27F96F0B8, 0x277D12B30);
    sub_258A3EFA0();
    v43 = sub_258B029F4();
  }

  else
  {
    v43 = 0;
  }

  v49 = v43;
  v48 = v22;
  v44 = controllerCopy;
  v45 = cacheControllerCopy;
  v46 = sub_258A3E7E8(v52, index, v51, store, controllerCopy, cache, cacheControllerCopy, scopeController, rangeController, v56, v48, options, v49);

  return v46;
}

@end