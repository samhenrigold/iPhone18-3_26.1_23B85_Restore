@interface _CPLateSectionsAppendedFeedback
- (BOOL)isEqual:(id)equal;
- (_CPLateSectionsAppendedFeedback)init;
- (_CPLateSectionsAppendedFeedback)initWithFacade:(id)facade;
- (void)addSections:(id)sections;
- (void)setSections:(id)sections;
- (void)writeTo:(id)to;
@end

@implementation _CPLateSectionsAppendedFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      sections = [(_CPLateSectionsAppendedFeedback *)self sections];
      sections2 = [equalCopy sections];
      v8 = sections2;
      if ((sections != 0) != (sections2 == 0))
      {
        sections3 = [(_CPLateSectionsAppendedFeedback *)self sections];
        if (!sections3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = sections3;
        sections4 = [(_CPLateSectionsAppendedFeedback *)self sections];
        sections5 = [equalCopy sections];
        v13 = [sections4 isEqual:sections5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_CPLateSectionsAppendedFeedback *)self timestamp])
  {
    PBDataWriterWriteUint64Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_sections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addSections:(id)sections
{
  sectionsCopy = sections;
  sections = self->_sections;
  v8 = sectionsCopy;
  if (!sections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sections;
    self->_sections = array;

    sectionsCopy = v8;
    sections = self->_sections;
  }

  [(NSArray *)sections addObject:sectionsCopy];
}

- (void)setSections:(id)sections
{
  self->_sections = [sections mutableCopy];

  MEMORY[0x1EEE66BB8]();
}

- (_CPLateSectionsAppendedFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPLateSectionsAppendedFeedback;
  v2 = [(_CPLateSectionsAppendedFeedback *)&v5 init];
  if (v2)
  {
    [(_CPLateSectionsAppendedFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPLateSectionsAppendedFeedback)initWithFacade:(id)facade
{
  v22 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v20.receiver = self;
  v20.super_class = _CPLateSectionsAppendedFeedback;
  v5 = [(_CPLateSectionsAppendedFeedback *)&v20 init];
  if (v5)
  {
    -[_CPLateSectionsAppendedFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    sections = [facadeCopy sections];
    if (sections)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    sections2 = [facadeCopy sections];
    v9 = [sections2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(sections2);
          }

          v13 = [[_CPResultSectionForFeedback alloc] initWithFacade:*(*(&v16 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [sections2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    [(_CPLateSectionsAppendedFeedback *)v5 setSections:v7];
    v14 = v5;
  }

  return v5;
}

@end