@interface ICASEditorCallOutData
- (ICASEditorCallOutData)initWithCollabActivityContextPath:(id)path startState:(id)state endState:(id)endState;
- (id)toDict;
@end

@implementation ICASEditorCallOutData

- (ICASEditorCallOutData)initWithCollabActivityContextPath:(id)path startState:(id)state endState:(id)endState
{
  pathCopy = path;
  stateCopy = state;
  endStateCopy = endState;
  v15.receiver = self;
  v15.super_class = ICASEditorCallOutData;
  v12 = [(ICASEditorCallOutData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collabActivityContextPath, path);
    objc_storeStrong(&v13->_startState, state);
    objc_storeStrong(&v13->_endState, endState);
  }

  return v13;
}

- (id)toDict
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"collabActivityContextPath";
  collabActivityContextPath = [(ICASEditorCallOutData *)self collabActivityContextPath];
  if (collabActivityContextPath)
  {
    collabActivityContextPath2 = [(ICASEditorCallOutData *)self collabActivityContextPath];
  }

  else
  {
    collabActivityContextPath2 = objc_opt_new();
  }

  v5 = collabActivityContextPath2;
  v15[0] = collabActivityContextPath2;
  v14[1] = @"startState";
  startState = [(ICASEditorCallOutData *)self startState];
  if (startState)
  {
    startState2 = [(ICASEditorCallOutData *)self startState];
  }

  else
  {
    startState2 = objc_opt_new();
  }

  v8 = startState2;
  v15[1] = startState2;
  v14[2] = @"endState";
  endState = [(ICASEditorCallOutData *)self endState];
  if (endState)
  {
    endState2 = [(ICASEditorCallOutData *)self endState];
  }

  else
  {
    endState2 = objc_opt_new();
  }

  v11 = endState2;
  v15[2] = endState2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end