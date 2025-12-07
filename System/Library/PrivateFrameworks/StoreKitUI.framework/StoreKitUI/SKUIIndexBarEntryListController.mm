@interface SKUIIndexBarEntryListController
+ (id)entryListControllerForEntryListViewElement:(id)element;
+ (id)entryListControllerForEntryViewElement:(id)element;
- (SKUIIndexBarEntryListControllerDelegate)delegate;
- (id)entryDescriptorAtIndex:(int64_t)index;
- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex;
- (void)_didInvalidate;
- (void)reloadViewElementData;
@end

@implementation SKUIIndexBarEntryListController

+ (id)entryListControllerForEntryViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIIndexBarEntryListController *)v4 entryListControllerForEntryViewElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [[SKUIIndexBarSingleEntryListController alloc] initWithEntryViewElement:elementCopy];

  return v12;
}

+ (id)entryListControllerForEntryListViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIIndexBarEntryListController *)v4 entryListControllerForEntryListViewElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  entryListElementType = [elementCopy entryListElementType];
  if (entryListElementType == 2)
  {
    v13 = [[SKUIIndexBarLocaleStandardEntryListController alloc] initWithSKUIIndexBarEntryListViewElement:elementCopy];
    goto LABEL_9;
  }

  if (entryListElementType == 1)
  {
    v13 = [[SKUIIndexBarDynamicElementEntryListController alloc] initWithEntryListViewElement:elementCopy];
LABEL_9:
    v14 = v13;
    goto LABEL_11;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)entryDescriptorAtIndex:(int64_t)index
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIIndexBarEntryListController *)v3 entryDescriptorAtIndex:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (void)reloadViewElementData
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIIndexBarEntryListController reloadViewElementData]";
}

- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIIndexBarEntryListController *)v4 targetIndexBarEntryIDForEntryDescriptorAtIndex:v5 returningRelativeSectionIndex:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  return 0;
}

- (void)_didInvalidate
{
  delegate = [(SKUIIndexBarEntryListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate indexBarEntryListControllerDidInvalidate:self];
  }
}

- (SKUIIndexBarEntryListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)entryListControllerForEntryViewElement:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIIndexBarEntryListController entryListControllerForEntryViewElement:]";
}

+ (void)entryListControllerForEntryListViewElement:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIIndexBarEntryListController entryListControllerForEntryListViewElement:]";
}

- (void)entryDescriptorAtIndex:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIIndexBarEntryListController entryDescriptorAtIndex:]";
}

- (void)targetIndexBarEntryIDForEntryDescriptorAtIndex:(uint64_t)a3 returningRelativeSectionIndex:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIIndexBarEntryListController targetIndexBarEntryIDForEntryDescriptorAtIndex:returningRelativeSectionIndex:]";
}

@end