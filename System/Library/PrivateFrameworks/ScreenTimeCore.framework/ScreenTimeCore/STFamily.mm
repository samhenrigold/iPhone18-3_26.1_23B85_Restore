@interface STFamily
- (STFamily)initWithFamilyCircle:(id)circle;
- (STFamily)initWithMembers:(id)members;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
@end

@implementation STFamily

- (STFamily)initWithFamilyCircle:(id)circle
{
  v34 = *MEMORY[0x1E69E9840];
  circleCopy = circle;
  v32.receiver = self;
  v32.super_class = STFamily;
  v22 = [(STFamily *)&v32 init];
  if (v22)
  {
    v25 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = circleCopy;
    obj = [circleCopy members];
    v26 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v26)
    {
      v24 = *v29;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v28 + 1) + 8 * i);
          v7 = @"Child";
          if ([v6 memberType] != 2)
          {
            v7 = @"Teen";
            if ([v6 memberType] != 1)
            {
              if ([v6 memberType])
              {
                v7 = @"Unknown";
              }

              else
              {
                v7 = @"Adult";
              }
            }
          }

          v27 = [STFamilyMember alloc];
          dsid = [v6 dsid];
          altDSID = [v6 altDSID];
          appleID = [v6 appleID];
          firstName = [v6 firstName];
          lastName = [v6 lastName];
          isMe = [v6 isMe];
          isParent = [v6 isParent];
          BYTE2(v20) = [v6 isOrganizer];
          BYTE1(v20) = isParent;
          LOBYTE(v20) = isMe;
          v15 = [STFamilyMember initWithDSID:v27 altDSID:"initWithDSID:altDSID:appleID:memberType:firstName:lastName:isMe:isParent:isOrganizer:" appleID:dsid memberType:altDSID firstName:appleID lastName:v7 isMe:firstName isParent:lastName isOrganizer:v20];

          if ([v6 isMe])
          {
            objc_storeStrong(&v22->_me, v15);
          }

          [v25 addObject:v15];
        }

        v26 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v26);
    }

    dataSource = v22->_dataSource;
    v22->_dataSource = @"familyCircle";

    v17 = [v25 copy];
    members = v22->_members;
    v22->_members = v17;

    circleCopy = v21;
  }

  return v22;
}

- (STFamily)initWithMembers:(id)members
{
  membersCopy = members;
  v13.receiver = self;
  v13.super_class = STFamily;
  v6 = [(STFamily *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_members, members);
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", @"isMe"];
    v9 = [membersCopy filteredArrayUsingPredicate:v8];
    firstObject = [v9 firstObject];
    me = v7->_me;
    v7->_me = firstObject;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(STFamily *)self members];
  v4 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:8];
        dSID = [v8 DSID];
        [v9 setObject:dSID forKeyedSubscript:@"dsid"];

        appleID = [v8 appleID];
        [v9 setObject:appleID forKeyedSubscript:@"appleID"];

        memberType = [v8 memberType];
        [v9 setObject:memberType forKeyedSubscript:@"memberType"];

        firstName = [v8 firstName];
        [v9 setObject:firstName forKeyedSubscript:@"firstName"];

        lastName = [v8 lastName];
        [v9 setObject:lastName forKeyedSubscript:@"lastName"];

        v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isMe")}];
        [v9 setObject:v15 forKeyedSubscript:@"isMe"];

        v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isParent")}];
        [v9 setObject:v16 forKeyedSubscript:@"isParent"];

        v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isOrganizer")}];
        [v9 setObject:v17 forKeyedSubscript:@"isOrganizer"];

        v18 = [v9 copy];
        [v3 addObject:v18];
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v5);
  }

  v28[0] = @"dataSource";
  dataSource = [(STFamily *)self dataSource];
  v28[1] = @"members";
  v29[0] = dataSource;
  v20 = [v3 copy];
  v29[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NSArray *)self->_members copy];
  v6 = [v4 initWithMembers:v5];

  return v6;
}

@end