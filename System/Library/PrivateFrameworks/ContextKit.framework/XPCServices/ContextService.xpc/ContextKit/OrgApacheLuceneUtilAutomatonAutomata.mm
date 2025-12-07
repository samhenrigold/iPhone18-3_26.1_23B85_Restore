@interface OrgApacheLuceneUtilAutomatonAutomata
+ (id)makeEmpty;
+ (id)makeEmptyString;
+ (int)appendAnyCharWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton withInt:(int)int;
+ (int)appendCharWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilAutomatonAutomata

+ (id)makeEmpty
{
  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 finishState];
  return v2;
}

+ (id)makeEmptyString
{
  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 createState];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 setAcceptWithInt:0 withBoolean:1];
  return v2;
}

+ (int)appendAnyCharWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton withInt:(int)int
{
  if (!automaton)
  {
    JreThrowNullPointerException();
  }

  v4 = *&int;
  createState = [automaton createState];
  v7 = createState;
  [automaton addTransitionWithInt:v4 withInt:createState withInt:0 withInt:1114111];
  return v7;
}

+ (int)appendCharWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton withInt:(int)int withInt:(int)withInt
{
  if (!automaton)
  {
    JreThrowNullPointerException();
  }

  v5 = *&withInt;
  v6 = *&int;
  createState = [automaton createState];
  v9 = createState;
  [automaton addTransitionWithInt:v6 withInt:createState withInt:v5 withInt:v5];
  return v9;
}

@end