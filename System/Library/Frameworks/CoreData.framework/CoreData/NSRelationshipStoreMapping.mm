@interface NSRelationshipStoreMapping
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
- (void)setDestinationEntityExternalName:(void *)result;
- (void)setForeignKeys:(void *)result;
- (void)setJoins:(void *)result;
@end

@implementation NSRelationshipStoreMapping

- (void)dealloc
{
  [(NSRelationshipStoreMapping *)self setDestinationEntityExternalName:?];
  [(NSRelationshipStoreMapping *)self setForeignKeys:?];
  [(NSRelationshipStoreMapping *)self setJoins:?];
  v3.receiver = self;
  v3.super_class = NSRelationshipStoreMapping;
  [(NSPropertyStoreMapping *)&v3 dealloc];
}

- (void)setDestinationEntityExternalName:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[3];
    if (v4 != a2)
    {

      result = [a2 copy];
      v3[3] = result;
    }
  }

  return result;
}

- (void)setForeignKeys:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[4];
    if (v4 != a2)
    {

      result = [a2 copy];
      v3[4] = result;
    }
  }

  return result;
}

- (void)setJoins:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[5];
    if (v4 != a2)
    {

      result = [a2 copy];
      v3[5] = result;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v11.receiver = self;
  v11.super_class = NSRelationshipStoreMapping;
  v5 = [(NSPropertyStoreMapping *)&v11 isEqual:?];
  if (v5)
  {
    destinationEntityExternalName = [(NSRelationshipStoreMapping *)self destinationEntityExternalName];
    if (destinationEntityExternalName == [equal destinationEntityExternalName] || (v5 = objc_msgSend(-[NSRelationshipStoreMapping destinationEntityExternalName](self, "destinationEntityExternalName"), "isEqual:", objc_msgSend(equal, "destinationEntityExternalName"))) != 0)
    {
      foreignKeys = [(NSRelationshipStoreMapping *)self foreignKeys];
      if (foreignKeys == [equal foreignKeys] || (v5 = objc_msgSend(-[NSRelationshipStoreMapping foreignKeys](self, "foreignKeys"), "isEqual:", objc_msgSend(equal, "foreignKeys"))) != 0)
      {
        joins = [(NSRelationshipStoreMapping *)self joins];
        if (joins == [equal joins] || (v5 = objc_msgSend(-[NSRelationshipStoreMapping joins](self, "joins"), "isEqual:", objc_msgSend(equal, "joins"))) != 0)
        {
          joinSemantic = [(NSRelationshipStoreMapping *)self joinSemantic];
          LOBYTE(v5) = joinSemantic == [equal joinSemantic];
        }
      }
    }
  }

  return v5;
}

@end