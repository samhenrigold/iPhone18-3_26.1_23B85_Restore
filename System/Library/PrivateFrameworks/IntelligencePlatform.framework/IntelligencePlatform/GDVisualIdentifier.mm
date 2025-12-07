@interface GDVisualIdentifier
- (GDVisualIdentifier)initWithRelationshipIdTriplesIterator:(id)iterator;
- (id)description;
@end

@implementation GDVisualIdentifier

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  suggestedName = self->_suggestedName;
  if (!suggestedName)
  {
    suggestedName = @"nil";
  }

  suggestedName = [v3 initWithFormat:@"<GDVisualIdentifier id:%@ vid:%@ ar:%@ sn:%@>", *&self->_relationshipIdentifier, self->_associationReason, suggestedName];

  return suggestedName;
}

- (GDVisualIdentifier)initWithRelationshipIdTriplesIterator:(id)iterator
{
  v29 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  v27.receiver = self;
  v27.super_class = GDVisualIdentifier;
  v5 = [(GDVisualIdentifier *)&v27 init];
  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = iteratorCopy;
    obj = iteratorCopy;
    v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          if (!v5->_relationshipIdentifier)
          {
            v11 = [GDRelationshipIdentifier alloc];
            relationshipId = [v10 relationshipId];
            v13 = [(GDRelationshipIdentifier *)v11 initWithString:relationshipId];
            relationshipIdentifier = v5->_relationshipIdentifier;
            v5->_relationshipIdentifier = v13;
          }

          relationshipPredicate = [v10 relationshipPredicate];
          p_visualIdentifier = &v5->_visualIdentifier;
          if ([relationshipPredicate isEqual:@"nm_visualIdentifier"] & 1) != 0 || (p_visualIdentifier = &v5->_associationReason, (objc_msgSend(relationshipPredicate, "isEqual:", @"nm_associationReason")) || (p_visualIdentifier = &v5->_suggestedName, objc_msgSend(relationshipPredicate, "isEqual:", @"nm_suggestedName")))
          {
            object = [v10 object];
            v18 = *p_visualIdentifier;
            *p_visualIdentifier = object;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    if (!v5->_relationshipIdentifier || !v5->_visualIdentifier)
    {
      v19 = 0;
      iteratorCopy = v21;
      goto LABEL_20;
    }

    iteratorCopy = v21;
    if (!v5->_associationReason)
    {
      v19 = 0;
      goto LABEL_20;
    }
  }

  v19 = v5;
LABEL_20:

  return v19;
}

@end