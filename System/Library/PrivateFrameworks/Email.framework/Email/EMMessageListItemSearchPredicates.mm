@interface EMMessageListItemSearchPredicates
+ (id)spotlightBodySearchPredicateForValue:(id)value;
+ (id)spotlightQueryPredicateForString:(id)string;
+ (id)spotlightRecipientSearchPredicateForValue:(id)value operator:(unint64_t)operator;
+ (id)spotlightSearchPredicateForValue:(id)value;
+ (id)spotlightSenderSearchPredicateForValue:(id)value operator:(unint64_t)operator;
+ (id)spotlightSubjectSearchPredicateForValue:(id)value operator:(unint64_t)operator;
+ (id)spotlightUserQueryStringPredicateForValue:(id)value;
@end

@implementation EMMessageListItemSearchPredicates

+ (id)spotlightSearchPredicateForValue:(id)value
{
  v14[5] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v5 = MEMORY[0x1E696AB28];
  v6 = [self spotlightRecipientSearchPredicateForValue:valueCopy operator:99];
  v7 = [self spotlightSenderSearchPredicateForValue:valueCopy operator:{99, v6}];
  v14[1] = v7;
  v8 = [self spotlightSubjectSearchPredicateForValue:valueCopy operator:99];
  v14[2] = v8;
  v9 = [self spotlightBodySearchPredicateForValue:valueCopy];
  v14[3] = v9;
  v10 = [self spotlightUserQueryStringPredicateForValue:valueCopy];
  v14[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];
  v12 = [v5 orPredicateWithSubpredicates:v11];

  return v12;
}

+ (id)spotlightRecipientSearchPredicateForValue:(id)value operator:(unint64_t)operator
{
  v35[6] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v6 = MEMORY[0x1E696AB18];
  v34 = valueCopy;
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"toList.emailAddressValue.simpleAddress"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:valueCopy];
  v9 = [v6 predicateWithLeftExpression:v7 rightExpression:v8 modifier:2 type:operator options:1];

  v10 = MEMORY[0x1E696AB18];
  v11 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"toList.emailAddressValue.displayName"];
  v12 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v34];
  v13 = [v10 predicateWithLeftExpression:v11 rightExpression:v12 modifier:2 type:operator options:1];

  v14 = MEMORY[0x1E696AB18];
  v15 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"ccList.emailAddressValue.simpleAddress"];
  v16 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v34];
  v17 = [v14 predicateWithLeftExpression:v15 rightExpression:v16 modifier:2 type:operator options:1];

  v18 = MEMORY[0x1E696AB18];
  v19 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"ccList.emailAddressValue.displayName"];
  v20 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v34];
  v21 = [v18 predicateWithLeftExpression:v19 rightExpression:v20 modifier:2 type:operator options:1];

  v22 = MEMORY[0x1E696AB18];
  v23 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"bccList.emailAddressValue.simpleAddress"];
  v24 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v34];
  v25 = [v22 predicateWithLeftExpression:v23 rightExpression:v24 modifier:2 type:operator options:1];

  v26 = MEMORY[0x1E696AB18];
  v27 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"bccList.emailAddressValue.displayName"];
  v28 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v34];
  v29 = [v26 predicateWithLeftExpression:v27 rightExpression:v28 modifier:2 type:operator options:1];

  v30 = MEMORY[0x1E696AB28];
  v35[0] = v9;
  v35[1] = v13;
  v35[2] = v17;
  v35[3] = v21;
  v35[4] = v25;
  v35[5] = v29;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:6];
  v32 = [v30 orPredicateWithSubpredicates:v31];

  return v32;
}

+ (id)spotlightSenderSearchPredicateForValue:(id)value operator:(unint64_t)operator
{
  v18[2] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v6 = MEMORY[0x1E696AB18];
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"senderList.emailAddressValue.simpleAddress"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:valueCopy];
  v9 = [v6 predicateWithLeftExpression:v7 rightExpression:v8 modifier:2 type:operator options:1];

  v10 = MEMORY[0x1E696AB18];
  v11 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"senderList.emailAddressValue.displayName"];
  v12 = [MEMORY[0x1E696ABC8] expressionForConstantValue:valueCopy];
  v13 = [v10 predicateWithLeftExpression:v11 rightExpression:v12 modifier:2 type:operator options:1];

  v14 = MEMORY[0x1E696AB28];
  v18[0] = v9;
  v18[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v16 = [v14 orPredicateWithSubpredicates:v15];

  return v16;
}

+ (id)spotlightSubjectSearchPredicateForValue:(id)value operator:(unint64_t)operator
{
  valueCopy = value;
  v6 = MEMORY[0x1E696AB18];
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"subject.subjectWithoutPrefix"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:valueCopy];
  v9 = [v6 predicateWithLeftExpression:v7 rightExpression:v8 modifier:0 type:operator options:1];

  return v9;
}

+ (id)spotlightBodySearchPredicateForValue:(id)value
{
  valueCopy = value;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"body"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:valueCopy];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:99 options:1];

  return v7;
}

+ (id)spotlightUserQueryStringPredicateForValue:(id)value
{
  valueCopy = value;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"Spotlight"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:valueCopy];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:99 options:0];

  return v7;
}

+ (id)spotlightQueryPredicateForString:(id)string
{
  stringCopy = string;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"SpotlightQuery"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:stringCopy];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:99 options:0];

  return v7;
}

@end