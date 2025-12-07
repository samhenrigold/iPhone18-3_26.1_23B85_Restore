@interface NSPredicate(CompoundConveniences)
- (id)rc_and:()CompoundConveniences;
- (id)rc_andNot:()CompoundConveniences;
- (id)rc_or:()CompoundConveniences;
@end

@implementation NSPredicate(CompoundConveniences)

- (id)rc_and:()CompoundConveniences
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  v9[0] = self;
  v9[1] = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v9 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];

  return v7;
}

- (id)rc_or:()CompoundConveniences
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  v9[0] = self;
  v9[1] = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v9 count:2];
  v7 = [v3 orPredicateWithSubpredicates:v6];

  return v7;
}

- (id)rc_andNot:()CompoundConveniences
{
  v2 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:?];
  v3 = [self rc_and:v2];

  return v3;
}

@end