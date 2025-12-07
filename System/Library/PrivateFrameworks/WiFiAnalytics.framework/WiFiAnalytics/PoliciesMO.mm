@interface PoliciesMO
- (BOOL)setRelationOn:(id)on to:(id)to withError:(id *)error;
@end

@implementation PoliciesMO

- (BOOL)setRelationOn:(id)on to:(id)to withError:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  onCopy = on;
  toCopy = to;
  entity = [(PoliciesMO *)self entity];
  relationshipsByName = [entity relationshipsByName];
  allKeys = [relationshipsByName allKeys];
  v13 = [allKeys containsObject:onCopy];

  if ((v13 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_4;
    }

    v21 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A588];
    v22 = MEMORY[0x1E696AEC0];
    entity2 = [(PoliciesMO *)self entity];
    name = [entity2 name];
    v25 = [v22 stringWithFormat:@"relationship %@ does not exist in entity %@", onCopy, name];
    v40[0] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    *error = [v21 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v26];

LABEL_9:
    LOBYTE(error) = 0;
    goto LABEL_4;
  }

  entity3 = [toCopy entity];
  entity4 = [(PoliciesMO *)self entity];
  relationshipsByName2 = [entity4 relationshipsByName];
  v17 = [relationshipsByName2 objectForKeyedSubscript:onCopy];
  destinationEntity = [v17 destinationEntity];
  v19 = [entity3 isEqual:destinationEntity];

  if ((v19 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_4;
    }

    v35 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A588];
    v27 = MEMORY[0x1E696AEC0];
    entity5 = [toCopy entity];
    name2 = [entity5 name];
    entity6 = [(PoliciesMO *)self entity];
    relationshipsByName3 = [entity6 relationshipsByName];
    v31 = [relationshipsByName3 objectForKeyedSubscript:onCopy];
    destinationEntity2 = [v31 destinationEntity];
    v33 = [v27 stringWithFormat:@"obj %@(%@) is not of expected entity (%@)", toCopy, name2, destinationEntity2];
    v38 = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *error = [v35 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v34];

    goto LABEL_9;
  }

  [(PoliciesMO *)self setValue:toCopy forKey:onCopy];
  LOBYTE(error) = 1;
LABEL_4:

  return error;
}

@end