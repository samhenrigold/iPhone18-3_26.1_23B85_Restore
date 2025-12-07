@interface GEOSearchCategory
- (GEOFeatureStyleAttributes)styleAttributes;
- (NSString)shortDisplayString;
@end

@implementation GEOSearchCategory

- (GEOFeatureStyleAttributes)styleAttributes
{
  autocompleteEntry = self->_autocompleteEntry;
  if (autocompleteEntry)
  {
    category = [(GEOPDAutocompleteEntry *)autocompleteEntry category];
    styleAttributes = [category styleAttributes];

    if (styleAttributes)
    {
LABEL_3:
      v6 = [[GEOFeatureStyleAttributes alloc] initWithPlaceDataStyleAttributes:styleAttributes];
      goto LABEL_6;
    }
  }

  else
  {
    styleAttributes = [(GEOPDBrowseCategory *)self->_browseCategory styleAttributes];
    if (styleAttributes)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (NSString)shortDisplayString
{
  browseCategory = self->_browseCategory;
  if (browseCategory && ([(GEOPDBrowseCategory *)self->_browseCategory _readShortDisplayString], browseCategory->_shortDisplayString))
  {
    shortDisplayString = [(GEOPDBrowseCategory *)&self->_browseCategory->super.super.isa shortDisplayString];
  }

  else
  {
    shortDisplayString = [(GEOSearchCategory *)self displayString];
  }

  return shortDisplayString;
}

@end