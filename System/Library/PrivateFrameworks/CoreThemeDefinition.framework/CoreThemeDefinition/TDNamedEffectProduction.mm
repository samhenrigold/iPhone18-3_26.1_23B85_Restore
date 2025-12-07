@interface TDNamedEffectProduction
- (id)_nameAssociatedWithNameIdentifier:(unsigned int)identifier;
- (id)displayName;
@end

@implementation TDNamedEffectProduction

- (id)_nameAssociatedWithNameIdentifier:(unsigned int)identifier
{
  v3 = *&identifier;
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NamedElement"];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier = %@", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v3)];
  managedObjectContext = [(TDNamedEffectProduction *)self managedObjectContext];
  [v5 setPredicate:v6];
  v11 = 0;
  v8 = [managedObjectContext executeFetchRequest:v5 error:&v11];

  if (v11)
  {
    NSLog(&cfstr_UnableToLookup_2.isa, v3, [v11 localizedDescription]);
    return 0;
  }

  else
  {
    v10 = [v8 count];
    if (v10)
    {
      v10 = [v8 objectAtIndex:0];
    }

    return [v10 name];
  }
}

- (id)displayName
{
  if ([(TDNamedEffectProduction *)self name])
  {
    v3 = [-[TDNamedEffectProduction name](self "name")];
  }

  else
  {
    v3 = -[TDNamedEffectProduction _nameAssociatedWithNameIdentifier:](self, "_nameAssociatedWithNameIdentifier:", [-[TDNamedEffectProduction baseKeySpec](self "baseKeySpec")]);
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v3];
}

@end