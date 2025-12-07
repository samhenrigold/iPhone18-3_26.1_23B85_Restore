@interface _SWCollaborationOption
- (_SWCollaborationOption)initWithTitle:(id)title identifier:(id)identifier subtitle:(id)subtitle selected:(BOOL)selected requiredOptionsIdentifiers:(id)identifiers;
@end

@implementation _SWCollaborationOption

- (_SWCollaborationOption)initWithTitle:(id)title identifier:(id)identifier subtitle:(id)subtitle selected:(BOOL)selected requiredOptionsIdentifiers:(id)identifiers
{
  selectedCopy = selected;
  titleCopy = title;
  identifierCopy = identifier;
  subtitleCopy = subtitle;
  identifiersCopy = identifiers;
  v16 = identifiersCopy;
  if (subtitleCopy)
  {
    v17 = [subtitleCopy copy];
    if (v16)
    {
LABEL_3:
      v18 = [v16 copy];
      goto LABEL_6;
    }
  }

  else
  {
    v17 = &stru_1F4E16F00;
    if (identifiersCopy)
    {
      goto LABEL_3;
    }
  }

  v18 = MEMORY[0x1E695E0F0];
LABEL_6:
  v21.receiver = self;
  v21.super_class = _SWCollaborationOption;
  v19 = [(SWCollaborationOption *)&v21 initWithTitle:titleCopy identifier:identifierCopy subtitle:v17 selected:selectedCopy requiredOptionsIdentifiers:v18];
  if (v16)
  {
  }

  if (subtitleCopy)
  {
  }

  return v19;
}

@end